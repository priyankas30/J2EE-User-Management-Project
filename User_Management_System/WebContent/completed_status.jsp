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
   	<h1 style="margin-left:1em; font-family:'Montserrat'; font-weight:800">My Meetings</h1>
        <hr><br>
    <% 
    		List <MeetingRequest> mr3 =(List<MeetingRequest>)request.getAttribute("meeting");
    		if(!mr3.isEmpty()){
    			
    %>  
      
        
 


 <table>
	 <tr>
   		<h4 style="text-align: center;">Today's Meetings</h4>
   		<br>
  	</tr>
  <tr>
    <th>Date</th>
    <th>Time</th>
    <th>Location</th>
    <th>Meeting Reason</th>
   <th>Action</th>
   
  </tr>
  <%
  	  List <MeetingRequest> mr =(List<MeetingRequest>)request.getAttribute("meeting");
 int m = mr.get(0).getUserId();
  		for(MeetingRequest mt : mr) {
  		 LocalDate localD = LocalDate.parse(mt.getDate()); 
          Integer i =	java.time.LocalDate.now().compareTo(localD);
			if(i == 0 && mt.getCancleReason() == null){
  %>
  
  
  <tr>
    <td><%=mt.getDate() %></td>
    <td><%=mt.getTime() %></td>
    <td><%=mt.getLocation() %></td>
    <td><%=mt.getMeetingReason() %></td>
    <td><a href="cancle_meeting.umng?id=<%=mt.getMeetingId()%>&date=<%=mt.getDate() %>&userId=<%=mt.getUserId()%>"><button class="btn btn-danger"  style="font-family:'Montserrat'; color:#fff;">Cancle</button></a></td>
  </tr>
  
 <% }
    }
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
    <th>Action</th>
   
  </tr>
  <%
  	  List <MeetingRequest> mr1 =(List<MeetingRequest>)request.getAttribute("meeting");
 int m2 = mr1.get(0).getUserId();
  		for(MeetingRequest mt : mr1) {
  		 LocalDate localD = LocalDate.parse(mt.getDate()); 
          Integer i =	java.time.LocalDate.now().compareTo(localD);
			if(i<0 && mt.getCancleReason() == null){
  %>
  
  
  <tr>
    <td><%=mt.getDate() %></td>
    <td><%=mt.getTime() %></td>
    <td><%=mt.getLocation() %></td>
    <td><%=mt.getMeetingReason() %></td>
   <td><a href="cancle_meeting.umng?id=<%=mt.getMeetingId()%>&date=<%=mt.getDate()%>&userId=<%=mt.getUserId()%>"><button class="btn btn-danger"  style="font-family:'Montserrat'; color:#fff;">Cancle</button></a></td>
  </tr>
  
 <% }
    }
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
    <th>Action</th>
   
  </tr>
  <%
  	  List <MeetingRequest> mr10 =(List<MeetingRequest>)request.getAttribute("meeting");
 		
  		for(MeetingRequest mt : mr10) {
  		 LocalDate localD = LocalDate.parse(mt.getDate()); 
          Integer i =	java.time.LocalDate.now().compareTo(localD);
			if(i>0 && mt.getCancleReason() == null){
  %>
  
  
  <tr>
    <td><%=mt.getDate() %></td>
    <td><%=mt.getTime() %></td>
    <td><%=mt.getLocation() %></td>
    <td><%=mt.getMeetingReason() %></td>
    <td><a href="cancle_meeting.umng?id=<%=mt.getMeetingId()%>&date=<%=mt.getDate()%>&date=<%=mt.getDate()%>"><button class="btn btn-success"  style="font-family:'Montserrat'; color:#fff;">Delete</button></a></td>
  </tr>
  
 <% }
    }
  %>
 
  
</table>

        <br>
        

		<%}else{ %>	
			
		<h4 style="text-align: center; color:red">No Meeting send by you</h4>	
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
        
        <div  class="footer-copyright">
            <h6>FOR BUISNESS PURPOSES.</h6>
            <h6>&copy; Priyanka Suryavanshi & Sanket Gawade. All Rights Reserved.</h6>
        </div>
    </footer>
    <!--EndOfFooter-->
</body>

</html>