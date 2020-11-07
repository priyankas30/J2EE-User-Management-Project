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
    <link rel="stylesheet" href="./references/feedback.css">
    <link rel="stylesheet" href="./references/footer.css">
 
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
  
    <!--EndofHeading-->

	  <!--Form-->
    
    <section class="main-form">
      
	<spr:form action="sign.umng" method="post" commandName="user" class="was-validated">
            <div class="flex-container">
                <h5>Let us know you better*</h5><br>
                
                <spr:input path="userFname" placeholder="First Name*" class="form-control" minlength="3" required="true"/><br>
               
                <spr:input path="userLname" placeholder="Last Name" class="form-control" minlength="3" required="true"/><br>
                <spr:password path="userPass" placeholder="Password*" class="form-control" minlength="3" required="true" />
                <br>
              
                <spr:input path="userEmail" placeholder="Email.*" type="email" class="form-control" minlength="3" required="true"/><br>
                
               <spr:input path="userMob" placeholder="Mobile No.*" class="form-control" minlength="10" required="true"/><br>  
               
               <table>
                 <tr>
					
					<td><spr:radiobutton path="gender" value="male"/>Male</td>
					<td><spr:radiobutton path="gender" value="female"/>Female</td>
				</tr>
                </table> 
               <br>
                
                <select name="city" id="select-list" required>
                    <option value="-"> Mumbai</option>
                    <option value="Pune">Pune</option>
                    <option value="Nashik">Nashik</option>
                    <option value="Nagpur">Nagpur</option>
                    <option value="ahmadnagar">Ahmadnagar</option>
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
                  <spr:input path="productName" placeholder="Product Name*" class="form-control" minlength="3" required="true"/><br>  
                    <spr:input path="requirement" placeholder="Requirement*" class="form-control" minlength="10" required="true"/><br>  
                      <spr:input path="productSummery" placeholder="Product Summery*" class="form-control" minlength="10" required="true" /><br>  
                        <spr:input path="duration" placeholder="Duration.*" class="form-control" minlength="3" required="true"/><br>  
               
               <br><br>
              <button id="submit">Register</button>
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