<!DOCTYPE html>
<html lang="en">
<%@page import="com.usermng.dto.User"%>

   <%@page import="java.util.List"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Management System</title>
    <link rel="icon" href="./images/logo/title-logo.png">
    <link href="https://fonts.googleapis.com/css2?family=Chelsea+Market&family=Montserrat:wght@400;800;900&family=Bubblegum+Sans&family=Mali&family=Flamenco&family=Aclonica&family=Carter+One&family=Luckiest+Guy&family=Lato&family=Montserrat+Subrayada&family=Sarabun&family=Viga&family=Wellfleet&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="./references/training.css">
    <link rel="stylesheet" href="./references/footer.css">
    <link rel="stylesheet" href="./references/navigationBar.css">
    <link rel="stylesheet" href="./references/animation.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
     <style>
		table {
		  font-family: 'Montserrat';
		  border-collapse: collapse;
		  width: 100%;
		}
		
		td, th {
		  border: 1px solid black;
		  text-align: left;
		  padding: 8px;
		}
		
		tr:nth-child(even) {
		  background-color: white;
		}
		th{
			color: black;
			font-weight: 600 !important;
			font-size: 19px !important;
		}
		.cart-head{
			
			
		}
	</style>
</head>

<body>
 	<section style="min-height: 450px; display:flex; flex-direction:column;" >
   	<br>
   	<h1 style="margin-left:1em; font-family:'Montserrat'; font-weight:800">Our Client's</h1>
        <hr><br>
	   		<table>
			  <tr>
			    
    <th>userFname</th>
    <th>userLname</th>
  
    
   <th>productName</th>

     <th>Meeting Request</th> 
      <th>Add Log</th> 
       <th>See Log</th> 
       <th>Action</th>  
      <th>Client Details</th>    
			  </tr>
			  
			  <%
  	  List <User> mr =(List<User>)request.getAttribute("client");
  for(User mt : mr) {
  
  %>
    <tr>
			     <td><%=mt.getUserFname() %></td>
    <td><%=mt.getUserLname() %></td>
   
    
    <td><%=mt.getProductName() %></td>
    <td><a href="send_meeting_client.umng?id=<%=mt.getUserId()%>">Send Meeting</a></td>
    <td><a href="add_log.umng?id=<%=mt.getUserId()%>"><i class="fas fa-edit text-primary"></i></a></td>
    <td><a href="see_log.umng?id=<%=mt.getUserId()%>">See Log</a></td>
    <td><a href="delete.umng?id=<%=mt.getUserId()%>"><i class="fas fa-trash-alt text-danger"></i></a></td>
     <td><a href="view_client.umng?id=<%=mt.getUserId() %>">Show Client</a></td>
     
     
    
			  
			  </tr>
			  
			  <%}
 
 
 
 %>
			  
			</table>
			
			<div style="align-self:flex-end; margin-top:1em; margin-bottom:10px; margin-right: 1em">
					<a href="adminhome.jsp"><button class="btn btn-success"  style="font-family:'Montserrat'; color:#fff;">Back</button></a>
			</div>
   	</section>


    <!--Footer-->
    <footer>
       
        <div  style="position: fixed;left: 0 ;bottom: 0;width: 100%;"  class="footer-copyright">
            <h6>FOR BUSINESS PURPOSES.</h6>
            <h6>&copy; 2020 Priyanka Suryavanshi & Sanket Gawade. All Rights Reserved.</h6>
        </div>
    </footer>
    <!--EndOfFooter-->
</body>

</html>