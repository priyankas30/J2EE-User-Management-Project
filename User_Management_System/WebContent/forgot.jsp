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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
</head>

<body>

    <!--Header-->
    <div class="header-container">
       <!--  <div class="image-container">
            <a href="./index.html"><img src="./images/logo/lph-logo-gray.png"></a>
        </div> -->
        <br>
        <section class="login-container">
            <div class="login-left-panel">
               <spr:form class="was-validated" action="forgot.umng" method="post" commandName="user" >
               
                    <h1>Forgot Password</h1><br>
                    
                    <p style="font-size: 14px; color: #5a5a5a;">Enter your registered Email Id</p>
                    
                    <input type="text" name="userEmail" placeholder="Enter Email address"/> 
                    
                   	<input type="submit" value="Forgot Password">
                </spr:form>
            </div>
          
        </section>

        
        
    </div>

  <!--Footer-->
   <footer>
  
    <div style="position: fixed;left: 0 ;bottom: 0;width: 100%;" class="footer-copyright">
        <h6>FOR BUSINESS PURPOSES.</h6>
        <h6>&copy; Priyanka Suryavanshi & Sanket Gawade. All Rights Reserved.</h6>
    </div>
</footer>
<!--EndOfFooter-->
</body>

</html>