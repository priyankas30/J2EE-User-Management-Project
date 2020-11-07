<!DOCTYPE html>
<%@page import="com.usermng.dto.AdminRequest"%>
<html lang="en">
<%@page import="com.usermng.dto.MeetingRequest"%>

    <%@ page import="com.usermng.dto.User"%>  
   <%@page import="java.util.List"%>
   <%@page import="java.util.Date"%>
   <%@page import="java.time.*"%>

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
   	<h1 style="margin-left:1em; font-family:'Montserrat'; font-weight:800">Meeting Request From Admin</h1>
        <hr><br>
    <% 
    		List <AdminRequest> mr3 =(List<AdminRequest>)request.getAttribute("meeting");
    		if(!mr3.isEmpty()){
    			
    %>  
      
        
  <table>
	 <tr>
   		<h4 style="text-align: center;">Todays Meetings</h4>
   		<br>
  	</tr>
	<tr>
    <th>Date</th>
    <th>Time</th>
    <th>Location</th>
    <th>Meeting Reason</th>
     <th>Status</th>
  </tr>
			  
		<%
  	 		 	List <AdminRequest> mr2 =(List<AdminRequest>)request.getAttribute("meeting");
  				for(AdminRequest mt : mr2) {
  			   LocalDate localD = LocalDate.parse(mt.getDate()); 
  		            	 
  				Integer i =	java.time.LocalDate.now().compareTo(localD);
  				if(i==0){
           %>
           
         
    <tr>
	 <td><%=mt.getDate() %></td>
    <td><%=mt.getTime() %></td>
    <td><%=mt.getLocation() %></td>
    <td><%=mt.getMeetingReason() %></td>
    <td><i style="color: green;" class="fa fa-arrow-down" aria-hidden="true"></i></td>
   </tr>
	
			  
<% }}

%>
 
			  
			</table>
        <br>
        
	 <table>
	 <tr>
   		<h4 style="text-align: center;">Upcoming Meetings</h4>
   		<br>
  	</tr>
	<tr>
    <th>Date</th>
    <th>Time</th>
    <th>Location</th>
    <th>Meeting Reason</th>
     <th>Status</th>
  </tr>
			  
		<%
  	 		 	List <AdminRequest> mr5 =(List<AdminRequest>)request.getAttribute("meeting");
  				for(AdminRequest mt : mr5) {
  					 LocalDate localD = LocalDate.parse(mt.getDate()); 
  		            	 
  				Integer i =	java.time.LocalDate.now().compareTo(localD);
  				if(i<0){
        %>
           
         
    <tr>
	 <td><%=mt.getDate() %></td>
    <td><%=mt.getTime() %></td>
    <td><%=mt.getLocation() %></td>
    <td><%=mt.getMeetingReason() %></td>
    <td><i style="color: green;" class="fa fa-exclamation" aria-hidden="true"></i></td>
   </tr>
	
			  
<% }}

%>
 
			  
			</table>
			
			
			
			<br>
			
			<table>
	<tr>
	
   		<h4 style="text-align: center;">Completed Meetings</h4>
   		<br>
  	</tr>
  	
  	<tr>
  		<th>Date</th>
    <th>Time</th>
    <th>Location</th>
    <th>Meeting Reason</th>
     <th>Status</th>
  	</tr>
			  
		<%
  	 		 	List <AdminRequest> mr1 =(List<AdminRequest>)request.getAttribute("meeting");
  				for(AdminRequest mt : mr1) {
  					 LocalDate localD = LocalDate.parse(mt.getDate()); 
  		            	 
  				Integer i =	java.time.LocalDate.now().compareTo(localD);
  				if(i>0){
           %>
           
         
    <tr>
	 <td><%=mt.getDate() %></td>
    <td><%=mt.getTime() %></td>
    <td><%=mt.getLocation() %></td>
    <td><%=mt.getMeetingReason() %></td>
    <td><i style="color: green;" class="fa fa-check" aria-hidden="true"></i></td>
   </tr>
	
			  
<% }}

%>
 
	
			  
			</table>
		<%}else{ %>	
			
		<h4 style="text-align: center; color:red">No Meeting Request by admin</h4>	
		<%} %>
			<% 
	User user = (User)session.getAttribute("user");

%>
			
			<div style="align-self:flex-end; margin-top:1em; margin-bottom:10px; margin-right: 1em">
				<a href="back_to_home.umng?id=<%=user.getUserId()%>"><button class="btn btn-success"  style="font-family:'Montserrat'; color:#fff;">Back</button></a>
			</div>
   	</section>


    <!--Footer-->
    <footer>
        
       
    </footer>
    <!--EndOfFooter-->
</body>

</html>