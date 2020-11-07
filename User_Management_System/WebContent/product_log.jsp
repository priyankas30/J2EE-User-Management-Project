<!DOCTYPE html>
<html lang="en">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
     <%@ page import="com.usermng.dto.User"%>   
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Management System</title>
    <link rel="icon" href="./images/logo/title-logo.png">
    <link href="https://fonts.googleapis.com/css2?family=Chelsea+Market&family=Montserrat:wght@400;800;900&family=Bubblegum+Sans&family=Mali&family=Flamenco&family=Aclonica&family=Carter+One&family=Luckiest+Guy&family=Lato&family=Montserrat+Subrayada&family=Sarabun&family=Viga&family=Wellfleet&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="./references/feedback.css">
    <link rel="stylesheet" href="./references/footer.css">
   
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
</head>

<body>

<% 
	int i =(Integer)request.getAttribute("id");

%>

<!--NavigationBar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary sticky-top">

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul style="font-family: cursive ;" class="navbar-nav">
                <li class="nav-item">
                    <a style="color: white;" class="nav-link " href="sign_in.umng">Register Client</a>
                </li>
                <li class="nav-item">
                    <a style="color: white;" class="nav-link" href="client_show.umng">View Clients</a>
                </li>
                
                <li class="nav-item">
                    <a style="color: white;" class="nav-link" href="see_all_meeting.umng">Client's Meeting Request</a>
                </li>
                
                  <li class="nav-item">
                    <a style="color: white;" class="nav-link" href="all_cancled_meetings.umng">Cancled Meetings</a>
                </li>
            </ul>

        </div>
        <a href="logout1.umng"> <button class="btn btn-danger" >Logout</button></a>
    </nav>
    <!--EndofNavigationBar-->

    <!--Heading-->
    <div class="main-heading">
        <h1 style="color: black; font-family: cursive" >Edit Log</h1>
    </div>
    <!--EndofHeading-->

	  <!--Form-->
    
    <section class="main-form">

<spr:form action="addlog.umng" method="post" commandName="prod" >
            <div class="flex-container">
                <h5>Enter new Status of Product</h5><br>
                <spr:hidden path="userId" value="<%=i%>"/>
                <spr:input type="date" path="date" placeholder="Date"/><br>
                <spr:input path="productStatus" placeholder="Enter Status of the product*"/><br>
               
              
               
               <br><br>
              <button id="submit">Enter Product Status</button>
            </div>
        </spr:form>
        
    </section>
    <!--EndOfForm-->
  

   <!--Footer-->
   <footer>
 
    <div  class="footer-copyright">
        <h6>FOR BUSINESS PURPOSES.</h6>
        <h6>&copy; Priyanka Suryavanshi & Sanket Gawade. All Rights Reserved.</h6>
    </div>
</footer>
<!--EndOfFooter-->
</body>

</html>