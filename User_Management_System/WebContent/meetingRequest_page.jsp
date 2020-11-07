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
	User user = (User)session.getAttribute("user");

%>

<!--NavigationBar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary sticky-top">

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div  class="collapse navbar-collapse" id="navbarNav">
            <ul style="font-family: cursive ; font-size: 20px; color:black;" class="navbar-nav">
                <li  class="nav-item">
                    <a style="color: white;" class="nav-link " href="back_to_home.umng?id=<%=user.getUserId() %>">HOME</a>
                </li>
                 <li class="nav-item">
                    <a  style="color: white;" class="nav-link " href="update_data.umng?id=<%=user.getUserId() %>">Profile Update</a>
                </li>
                
                 <li class="nav-item">
                    <a style="color: white;" class="nav-link " href="send_meeting_Req.umng">Send Meeting Request</a>
                </li>
                
                 <li class="nav-item">
                    <a style="color: white;" class="nav-link " href="seemeeting.umng?id=<%=user.getUserId() %>">View Meetings</a>
                </li>
                
                <li class="nav-item">
                    <a style="color: white;" class="nav-link" href="see_log2.umng?id=<%=user.getUserId() %>">Product Status</a>
                </li>
                
                  <li class="nav-item">
                    <a style="color: white;" class="nav-link" href="show_clients_meetings.umng?id=<%=user.getUserId() %>">My Meetings</a>
                </li>
                
            </ul>

        </div>
       <a href="logout.umng"> <button class="btn btn-danger" >Logout</button></a>
        
        
    </nav>
    <!--EndofNavigationBar-->


    <!--Heading-->
    <div class="main-heading">
    
    <% 
    	if(request.getAttribute("msg") != null) {
     %>
        <h1 style="color: black; font-family: cursive" >Send Meeting to Admin</h1>
        <%}
    	
    	else{
        	
        %>
        
         <h1 style="color: red;font-family: cursive;"> Sorry!! for this day Admin is already busy with another client</h1>
         
        <%} %>
    </div>
    <!--EndofHeading-->

	  <!--Form-->
    
    <section class="main-form">
     <% 
	User usr = (User)session.getAttribute("user");

%>

	<spr:form action="send_request.umng" method="post" commandName="MeetingRequest" >
            <div class="flex-container">
                <h5>We will meet soon*</h5><br>
                
                <spr:hidden path="userId" value="<%=usr.getUserId()%>"/>
                
                <spr:input type="date" path="date" placeholder=" Enter Meeting Date*" /><br>
               
                <spr:input path="time" placeholder="Enter Meeting Time" /><br>
                <spr:input path="location" placeholder="Enter Meeting Location*" />
                <br>
              
                <spr:input path="meetingReason" placeholder="Enter Reason of Meeting.*" /><br>
                
             
               <br><br>
              <button id="submit">Send Meeting</button>
            </div>
        </spr:form>
     
    </section>
    <!--EndOfForm-->
  

   <!--Footer-->
   <footer>
 
    <div   class="footer-copyright">
        <h6>FOR BUSINESS PURPOSES.</h6>
        <h6>&copy; Priyanka Suryavanshi & Sanket Gawade. All Rights Reserved.</h6>
    </div>
</footer>
<!--EndOfFooter-->
</body>

</html>