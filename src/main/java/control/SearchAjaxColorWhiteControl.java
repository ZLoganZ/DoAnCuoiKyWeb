/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.DAO;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "SearchAjaxColorWhiteControl", urlPatterns = {"/searchAjaxColorWhite"})
public class SearchAjaxColorWhiteControl extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        
        request.setCharacterEncoding("UTF-8");
      
        DAO dao = new DAO();
        List<Product> list = dao.searchColorWhite();
        PrintWriter out = response.getWriter();
        for (Product o : list) {
        	out.println("  <!-- Grid column -->\r\n"
        			+ "              <div class=\"col-md-4 mb-5\">\r\n"
        			+ "\r\n"
        			+ "                <!-- Card -->\r\n"
        			+ "                <div class=\"\">\r\n"
        			+ "\r\n"
        			+ "                  <div class=\"view zoom overlay rounded z-depth-2\">\r\n"
        			+ "                    <img class=\"img-fluid w-100\"\r\n"
        			+ "                      src=\""+o.getImage()+"\" alt=\"Sample\">\r\n"
        			+ "                    <a href=\"detail?pid=${o.id}\">\r\n"
        			+ "                      <div class=\"mask\">\r\n"
        			+ "                        <img class=\"img-fluid w-100\"\r\n"
        			+ "                          src=\""+o.getImage()+"\">\r\n"
        			+ "                        <div class=\"mask rgba-black-slight\"></div>\r\n"
        			+ "                      </div>\r\n"
        			+ "                    </a>\r\n"
        			+ "                  </div>\r\n"
        			+ "\r\n"
        			+ "                  <div class=\"text-center pt-4\">\r\n"
        			+ "\r\n"
        			+ "                    <h5>"+o.getName()+"</h5>\r\n"
        			+ "                    <p><span class=\"mr-1\"><strong>"+o.getPrice()+"$</strong></span></p>\r\n"
        			+ "\r\n"
        			+ "                  </div>\r\n"
        			+ "\r\n"
        			+ "                </div>\r\n"
        			+ "                <!-- Card -->\r\n"
        			+ "\r\n"
        			+ "              </div>\r\n"
        			+ "              <!-- Grid column -->");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
