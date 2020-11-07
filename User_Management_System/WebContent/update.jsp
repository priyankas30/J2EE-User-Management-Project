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
    <div  class="main-heading">
        <h1 style="color: black; font-family: cursive" >Update Profile</h1>
    </div>
    <!--EndofHeading-->

	  <!--Form-->
    
    <section class="main-form">
     <% 
	User usr = (User)session.getAttribute("user");

%>

	<spr:form action="update.umng" method="post" commandName="user" class="was-validated" >
            <div class="flex-container">
                <h5>Let us know you better*</h5><br>
                <spr:hidden path="userId" value="<%=user.getUserId()%>"/>
                
                <spr:hidden path="userPass" placeholder="Password" value="<%=user.getUserPass() %>" /><br>
                
                <spr:input path="userFname" placeholder="First Name*" value="<%=user.getUserFname()%>" class="form-control" minlength="3" required="true"/><br>
               
                <spr:input path="userLname" placeholder="Last Name" value="<%=user.getUserLname() %>" class="form-control" minlength="3" required="true" /><br>
              
              
                <spr:input path="userEmail" placeholder="Email.*" value="<%=user.getUserEmail() %>" type="email" class="form-control" minlength="3" required="true"/><br>
                
               <spr:input path="userMob" placeholder="Mobile No.*" value="<%=user.getUserMob() %>" class="form-control" minlength="10" required="true" /><br>  
               
               <table>
                 <tr>
					<td>Gender:</td>
					<td><spr:radiobutton  path="gender" value="male"/>Male</td>
					<td><spr:radiobutton path="gender" value="female"/>Female</td>
				</tr>
                </table> 
               <br>
                
                <select name="city" id="select-list" required>
                    <option value="mumbai">Mumbai</option>
                    <option value="Pune">Pune</option>
                    <option value="Nashik">Nashik</option>
                    <option value="Nagpur">Nagpur</option>
                    <option value="chennai">Chennai</option>
                </select>
               <br>
                <select name="state" id="select-list" required>
                    <option value="maharashtra">Maharashtra</option>
                    
            		
						<option value="goa">Goa</option>
						<option value="kerala">Kerala</option>
						<option value="uttar Pradesh">Uttar Pradesh</option>
						<option value="telangana">Telangana</option>
						<option value="andhra Pradesh">Andhra Pradesh</option>
						<option value="gujrat">Gujrat</option>
						<option value="haryana">Haryana</option>
						<option value="madhya Pradesh">Madhya Pradesh</option>
                </select>
                <br>
                  <spr:input path="productName" placeholder="ProductName*" value="<%=user.getProductName() %>" class="form-control" minlength="3" required="true"/><br>  
                    <spr:input path="requirement" placeholder="Mobile No.*" value="<%=user.getRequirement() %>" class="form-control" minlength="3" required="true" /><br>  
                      <spr:input path="productSummery" placeholder="Mobile No.*" value="<%=user.getProductSummery() %>" class="form-control" minlength="3" required="true"/><br>  
                        <spr:input path="duration" placeholder="Mobile No.*" value="<%=user.getDuration() %>" class="form-control" minlength="3" required="true"/><br>  
               
               <br><br>
              <button id="submit">Update</button>
            </div>
        </spr:form>
       
    </section>
    <!--EndOfForm-->
  

   <!--Footer-->
   <footer>
    

       
    
    <div  class="footer-copyright">
        <h6>FOR BUSINESS PURPOSES.</h6>
        <h6>&copy; 2020 Priyanka Suryavanshi & Sanket Gawade. All Rights Reserved.</h6>
    </div>
</footer>
<!--EndOfFooter-->
</body>

</html>