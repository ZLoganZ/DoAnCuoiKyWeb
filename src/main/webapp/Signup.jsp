<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <style><%@include file="/css/signup.css"%></style>
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/bootstrap.min.css">
        <title>Sign Up Form</title>
    </head>
    <body>
    <jsp:include page="Menu.jsp"></jsp:include>
    
        <div class="box">
            <form action="signup" method="post">
                <h2>Sign up</h2>
                <c:if test="${error!=null }">
                <style>
                    .inputBox{
                        margin-top: 20px !important;
                    }
                </style>
                 <div class="alert alert-danger" role="alert" style="margin-top:10px !important;">
						 ${error}
				</div>
				</c:if>
				<c:if test="${mess!=null }">
                    <style>
                        .inputBox{
                            margin-top: 20px !important;
                        }
                    </style>
                <div class="alert alert-success" role="alert" style="margin-top:10px !important;">
				  	${mess}
				</div>
				</c:if>
                <div class="inputBox">
                    <input name="user" type="text" required="required">
                    <span>
                        Username
                    </span>
                    <i class="bg"></i>
                </div>
                <div class="inputBox">
                    <input name="name" type="text" required="required">
                    <span>
                        Name
                    </span>
                    <i class="bg"></i>
                </div>
                <div class="inputBox">
                    <input name="pass" type="password" required="required">
                    <span>
                        Password
                    </span>
                    <i class="bg"></i>
                    <i name="check" class="fas fa-eye"></i>
                </div>
                <div class="inputBox">
                    <input name="repass" type="password" required="required">
                    <span>
                        Re-Password
                    </span>
                    <i class="bg"></i>
                    <i name="checkRe" class="fas fa-eye"></i>
                </div>
				<div class="inputBox">
                    <input name="email" type="email" required="required">
                    <span>
                        Email
                    </span>
                    <i class="bg"></i>
                </div>
                <div class="links">
                    <a href="login"><i class="fas fa-angle-left"></i> Back to Sign in</a>
                </div>
                <input type="submit" value="Sign up"></input>
            </form>

        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script>
            function toggleSeePassword(e) {
                e.preventDefault();
                var input = $(".box .inputBox input[name='pass']");
                var icon = $(".box .inputBox i[name='check']");
                if (input.attr("type") == "password") {
                  input.attr("type", "text");
                  icon.attr("class", "fas fa-eye-slash");
                } else {
                  input.attr("type", "password");
                  icon.attr("class", "fas fa-eye");
                }
              }
        
              function toggleSeeRePassword(e) {
                e.preventDefault();
                var input = $(".box .inputBox input[name='repass']");
                var icon = $(".box .inputBox i[name='checkRe']");
                if (input.attr("type") == "password") {
                  input.attr("type", "text");
                  icon.attr("class", "fas fa-eye-slash");
                } else {
                  input.attr("type", "password");
                  icon.attr("class", "fas fa-eye");
                }
              }

              $(() => {
                $(".box .inputBox i[name='check']").click(toggleSeePassword);
                $(".box .inputBox i[name='checkRe']").click(toggleSeeRePassword);
              });
            window.addEventListener("load",function loadAmountCart(){
                        	 $.ajax({
                                 url: "/WebsiteBanGiay/loadAllAmountCart",
                                 type: "get", //send it through get method
                                 data: {
                                     
                                 },
                                 success: function (responseData) {
                                     document.getElementById("amountCart").innerHTML = responseData;
                                 }
                             });
                        },false);       
        </script>
    </body>
</html>