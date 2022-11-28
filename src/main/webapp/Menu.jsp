<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--begin of menu-->
<style type="text/css">
    .container:hover {
    opacity: 1 !important;
    }
    
</style>
<nav class="navbar navbar-expand-md" style="position: fixed; top: 0; width:100%;  z-index: 100000; background-color: #fff; opacity: 0.8; color: #ccc;">
    <div class="container">
        <a class="navbar-brand" href="home">King Shoes</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto" style="margin: 10px 0 !important;">
            <li class="nav-item">
                        <a class="nav-link" style="color: black !important;" href="home">Home</a>
                    </li> 
            <li class="nav-item">
                        <a class="nav-link"  style="color: black !important;" href="shop">Shop</a>
                    </li> 
                
               <%--  <c:if test="${sessionScope.acc.isSell == 1}">
                    <li class="nav-item">
                        <a class="nav-link" style="color: black !important;" href="manager">Manager Product</a>
                    </li>
                </c:if> --%>
                <c:if test="${sessionScope.acc != null}">
                	<c:if test="${sessionScope.acc.isAdmin == 0}">
                		<li class="nav-item">
                        	<a class="nav-link" style="color: red !important; font-weight: Bold;" href="#">Hello ${sessionScope.acc.name}</a>
                    	</li>
                	</c:if>
                	<c:if test="${sessionScope.acc.isAdmin == 1}">
                		<li class="nav-item">
                        	<a class="nav-link" style="color: red !important; font-weight: Bold;" href="admin">ADMIN ${sessionScope.acc.name}</a>
                    	</li>
                	</c:if>
                    <li class="nav-item">
                        <a class="nav-link" style="color: red !important; font-weight: Bold;" href="logout">Logout</a>
                    </li> 
                </c:if>
                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item">
                        <a class="nav-link" style="color: red !important;" href="login">Login</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item">
                        <a class="nav-link" style="color: black !important;"  href="forgotPassword">Forgot Password</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc != null}">
                    <li class="nav-item">
                        <a class="nav-link" style="color: black !important;" href="EditProfile.jsp">Edit Profile</a>
                    </li>
                </c:if>
               <%--  <c:if test="${sessionScope.acc.isAdmin == 1}">
                    <li class="nav-item">
                        <a class="nav-link" href="statistic">Statistic</a>
                    </li>
                </c:if> --%>
            </ul>

            <form action="search" method="post" class="form-inline my-2 my-lg-0">
                
                <a class="btn btn-success btn-sm ml-3" href="managerCart" style="background-color: black !important;">
                    <i class="fa fa-shopping-cart"></i> <span style="font-size: 14px;">Cart</span>
                    <b><span id="amountCart" class="badge badge-light" style="color:black; font-size: 12px; border-radius: 50% !important;"></span></b>
                  
                </a>
            </form>
        </div>
    </div>
</nav>






<!--end of menu-->