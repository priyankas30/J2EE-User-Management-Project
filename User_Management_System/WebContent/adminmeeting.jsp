<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import="com.usermng.dto.User"%>   
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
	User user = (User)session.getAttribute("user");

%>

<spr:form action="send_request.umng" method="post" commandName="MeetingRequest" >
<table>
		<tr>
			<td>
				
			</td>
			<td>
				<spr:hidden path="userId" value="<%=user.getUserId()%>"/>
			</td>
		</tr>
		
		
		<tr>
			<td>
				Date
			</td>
			<td>
				<spr:input path="date"/>
			</td>
		</tr>
		
		
		
		<tr>
			<td>
				Time
			</td>
			<td>
				<spr:input path="time"/>
			</td>
		</tr>
		
		
		
		<tr>
			<td>
				Location
			</td>
			<td>
				<spr:input path="location"/>
			</td>
		</tr>
		
		<tr>
			<td>
				MeetingReason
			</td>
			<td>
				<spr:input path="meetingReason"/>
			</td>
		</tr>
		<tr>
			<td>
				<a href="adminhome.jsp">Back</a>
				</td>
				
			<td>
				<input type="submit" value="Send Meeting">
				</td>
		</tr>

</table>
</spr:form>
</body>
</html>