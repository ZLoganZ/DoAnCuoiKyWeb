package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DAO;

import entity.Account;
import entity.Email;
import entity.EmailUtils;
import entity.Cart;
import entity.Product;
import entity.SoLuongDaBan;
import entity.TongChiTieuBanHang;

/**
 * Servlet implementation class ForgotPasswordControl
 */
@WebServlet(name = "OrderControl", urlPatterns = {"/order"})
public class OrderControl extends HttpServlet {


	/**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		HttpSession session = request.getSession();
	        Account a = (Account) session.getAttribute("acc");
	        if(a == null) {
	        	response.sendRedirect("login");
	        	return;
	        }
	        int accountID = a.getId();
	        DAO dao = new DAO();
	        List<Cart> list = dao.getCartByAccountID(accountID);
	        List<Product> list2 = dao.getAllProduct();
			if(list.size()==0) {
				request.setAttribute("error", "There are no products in the cart!");
        		request.getRequestDispatcher("managerCart").forward(request, response);
				return;
			}
			request.getRequestDispatcher("DatHang.jsp").forward(request, response);
	        double totalMoney=0;
	        for(Cart c : list) {
				for(Product p : list2) {
					if(c.getProductID()==p.getId()) {
						totalMoney=totalMoney+(p.getPrice()*c.getAmount());
					}
				}
			}
	        double totalMoneyVAT=totalMoney+totalMoney*0.1;

	        double tongTienBanHangThem=0;
	        int sell_ID;
	        for(Cart c : list) {
				for(Product p : list2) {
					if(c.getProductID()==p.getId()) {
						tongTienBanHangThem=0;
						sell_ID=dao.getSellIDByProductID(p.getId());
						tongTienBanHangThem=tongTienBanHangThem+(p.getPrice()*c.getAmount());
						TongChiTieuBanHang t2 = dao.checkTongChiTieuBanHangExist(accountID);
						if(t2==null) {
							dao.insertTongChiTieuBanHang(accountID,0,tongTienBanHangThem);
						}
						else {
							dao.editTongBanHang(sell_ID, tongTienBanHangThem);
						}	
					}
				}
			}
	        
	        
	        for(Cart c : list) {
				for(Product p : list2) {
					if(c.getProductID()==p.getId()) {
						SoLuongDaBan s = dao.checkSoLuongDaBanExist(p.getId());
						if(s == null) {
							dao.insertSoLuongDaBan(p.getId(), c.getAmount());
						}
						else {
							dao.editSoLuongDaBan(p.getId(), c.getAmount());
						}	
					}
				}
			}
	        
	        dao.insertInvoice(accountID, totalMoneyVAT);
	        TongChiTieuBanHang t = dao.checkTongChiTieuBanHangExist(accountID);
	        if(t==null) {
	        	dao.insertTongChiTieuBanHang(accountID,totalMoneyVAT,0);
	        }
	        else {
	        	dao.editTongChiTieu(accountID, totalMoneyVAT);
	        }
	        
	        
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setContentType("text/html;charset=UTF-8");
        	request.setCharacterEncoding("UTF-8");
			String emailAddress = request.getParameter("email");
			String name = request.getParameter("name");
			String phoneNumber = request.getParameter("phoneNumber");
			String deliveryAddress = request.getParameter("deliveryAddress");
			
			 HttpSession session = request.getSession();
		        Account a = (Account) session.getAttribute("acc");
		        if(a == null) {
		        	response.sendRedirect("login");
		        	return;
		        }
		        int accountID = a.getId();
		        DAO dao = new DAO();
		        List<Cart> list = dao.getCartByAccountID(accountID);
		        List<Product> list2 = dao.getAllProduct();
					
		        double totalMoney=0;
		        for(Cart c : list) {
					for(Product p : list2) {
						if(c.getProductID()==p.getId()) {
							totalMoney=totalMoney+(p.getPrice()*c.getAmount());
						}
					}
				}
		        double totalMoneyVAT=totalMoney+totalMoney*0.1;
		        
		        
		        //old code
				Email email =new Email();
				email.setFrom("vandatdinh2@gmail.com"); //chinh lai email quan tri tai day [chu y dung email con hoat dong]
				email.setFromPassword("abrclpizcdzhfpva"); //mat khau email tren
				email.setTo(emailAddress);
				email.setSubject("Dat hang thanh cong tu Shoes Family");
				StringBuilder sb = new StringBuilder();
				sb.append("Dear ").append(name).append("<br>");
				sb.append("Ban vua dat dang tu Shoes Family. <br> ");
				sb.append("Dia chi nhan hang cua ban la: <b>").append(deliveryAddress).append(" </b> <br>");
				sb.append("So dien thoai khi nhan hang cua ban la: <b>").append(phoneNumber).append(" </b> <br>");
				sb.append("Cac san pham ban dat la: <br>");
				for(Cart c : list) {
					for(Product p : list2) {
						if(c.getProductID()==p.getId()) {
							sb.append(p.getName()).append(" | ").append("Price:").append(p.getPrice()).append("$").append(" | ").append("Amount:").append(c.getAmount()).append(" | ").append("Size:").append(c.getSize()).append("<br>");
						}
					}
				}
				sb.append("Tong Tien: ").append(String.format("%.02f",totalMoneyVAT)).append("$").append("<br>");
				sb.append("Cam on ban da dat hang tai Shoes Family<br>");
				sb.append("Chu cua hang");
				
				email.setContent(sb.toString());
				EmailUtils.send(email);
				request.setAttribute("mess", "Order successfully!");
				
				dao.deleteCartByAccountID(accountID);
				
				request.getRequestDispatcher("managerCart").forward(request, response);
				//new code
//				request.setAttribute("email", emailAddress);
//				request.getRequestDispatcher("ThongTinDatHang.jsp").forward(request, response);
				
			
		} catch (Exception e) {
			response.setContentType("text/html;charset=UTF-8");
        	request.setCharacterEncoding("UTF-8");
			request.setAttribute("error", "Order failed!");
			e.printStackTrace();
			request.getRequestDispatcher("managerCart").forward(request, response);
		}
	}

}
