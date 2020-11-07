<!DOCTYPE html>
<html lang="en">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Management System</title>
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

    <!--Header-->
    <div class="header-container">
       <!--  <div class="image-container">
            <a href="./index.html"><img src="./images/logo/lph-logo-gray.png"></a>
        </div> -->
        <br>
        <section class="login-container">
            <div class="login-left-panel">
                <spr:form action="admin_in.umng" method="post" commandName="admin" >
                    <h1>Admin Login</h1><br>
                    <div class="social-container">
                        <a href="#"><i class="fab fa-facebook"></i></a>
                        <a href="#">  <i class="fab fa-google-plus"></i></a>
                        <a href="#"> <i class="fab fa-twitter"></i></a>
                    </div><br>
                    <p style="font-size: 14px; color: #5a5a5a;">or use your email address</p>
                    <input type="text" name="userName" placeholder="Enter Email-ID"/> 
                    <input type="password" placeholder="Enter Password" name="userPass" /> 
                    <p><a href="./forgot.html" style="font-size: 14px; color: #252525; text-decoration: underline;">Forgot Pasword?</a></p>
                    <input type="submit" value="Login">
                </spr:form>
            </div>
            
        </section>
      </div>
    
    

  <!--Footer-->
   <footer>
    
    <div  style="position: fixed;left: 0 ;bottom: 0;width: 100%;" class="footer-copyright">
        <h6>FOR BUSINESS PURPOSES.</h6>
        <h6>&copy; 2020 Priyanka Suryavanshi & Sanket Gawade. All Rights Reserved.</h6>
    </div>
</footer>
<!--EndOfFooter-->
</body>

</html>