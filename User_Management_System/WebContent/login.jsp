<!DOCTYPE html>
<html lang="en">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Managemnt System</title>
    <link rel="icon" href="./images/logo/title-logo.png">
    <link href="https://fonts.googleapis.com/css2?family=Chelsea+Market&family=Montserrat:wght@400;800;900&family=Bubblegum+Sans&family=Mali&family=Flamenco&family=Aclonica&family=Carter+One&family=Luckiest+Guy&family=Lato&family=Montserrat+Subrayada&family=Sarabun&family=Viga&family=Wellfleet&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="./references/login.css">
    <link rel="stylesheet" href="./references/main.css">
    <link rel="stylesheet" href="./references/footer.css">
    <link rel="stylesheet" href="./references/navigationBar.css">
    <link rel="stylesheet" href="./references/animation.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
</head>

<body>

		<!--NavigationBar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary sticky-top">

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul style="font-family: cursive;" class="navbar-nav">
                <li class="nav-item">
                    <a style="color: white;" class="nav-link " href="admin_login.umng">Admin Login</a>
                </li>
                <li class="nav-item">
                    <a style="color: white;" class="nav-link" href="log_in.umng">Client Login</a>
                </li>
                
                
            </ul>

        </div>
    </nav>
    <!--EndofNavigationBar-->
	
	<% 
		if(request.getAttribute("success")!=null){
		
	%>
	
	<h3 style="color: green;text-align: center;font-size: 20px;margin-top: 20px;"><%=request.getAttribute("success") %></h3>
	 
	<%}  %>

    <!--Header-->
    <div class="header-container">
       
        <br>
        <section class="login-container">
            <div class="login-left-panel">
               <spr:form  action="login.umng" method="post" commandName="user" class="was-validated">
               
                    <h1>User Login</h1><br>
                    <div class="social-container">
                        <a href="#"><i class="fab fa-facebook"></i></a>
                        <a href="#">  <i class="fab fa-google-plus"></i></a>
                        <a href="#"> <i class="fab fa-twitter"></i></a>
                    </div><br>
                    <p style="font-size: 14px; color: #5a5a5a;">or use your email address</p>
                    
                    <input style="width:80%; margin-left:10%" type="text" name="userEmail" placeholder="Enter Email address" class="form-control" minlength="3" required="true"/> 
                    
                    <input style="width:80%; margin-left:10%" type="password" placeholder="Enter Password" name="userPass" class="form-control" minlength="3" required="true"/> 
                    
                    <br>
                    <% if(request.getAttribute("error") != null){ %>
                    
                    <p style="color: red; font-size: 20px;"><%=request.getAttribute("error") %></p>
                    
                    <%} %>
                    
                    <p><a href="forgot_pass.umng" style="font-size: 14px; color: #252525; text-decoration: underline;">Forgot Pasword?</a></p>
                   	   <input type="submit" value="Login">
                </spr:form>
            </div>
          
        </section>

        
        
    </div>

  <!--Footer-->
   <footer>
  
    <div   style="position: fixed;left: 0 ;bottom: 0;width: 100%;" class="footer-copyright">
        <h6>FOR BUSINESS PURPOSES.</h6>
        <h6>&copy; Priyanka Suryavanshi & Sanket Gawade. All Rights Reserved.</h6>
    </div>
</footer>
<!--EndOfFooter-->
</body>

</html>