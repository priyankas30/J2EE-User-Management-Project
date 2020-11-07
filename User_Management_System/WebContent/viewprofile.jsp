<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.usermng.dto.User"  %>
 
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>    
    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h1>Welcome Home</h1>
<% 
	User user = (User)request.getAttribute("user");

%>
<spr:form  method="post" commandName="user" >
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
				First Name:
			</td>
			<td>
				<%=user.getUserFname() %>
			</td>
		</tr>
		
		
		<tr>
			<td>
				Last Name
			</td>
			<td>
				<%=user.getUserLname() %>
			</td>
		</tr>
		
		
		
		<tr>
			<td>
				Password
			</td>
			<td>
				<%=user.getUserPass() %>
			</td>
		</tr>
		
		
		
		<tr>
			<td>
				Email
			</td>
			<td>
				<%=user.getUserEmail() %>
			</td>
		</tr>
		
		
		
		
		<tr>
			<td>
				Mobile
			</td>
			<td>
				<%=user.getUserMob() %>
			</td>
		</tr>
		
		
		
		<tr>
			<td>
				Gender
			</td>
			<td>
				<%=user.getGender() %>
			</td>
		</tr>
		
		
		<tr>
			<td>
				City
			</td>
			<td>
				<%=user.getCity() %>
			</td>
		</tr>
		
		<tr>
			<td>
				State
			</td>
			<td>
				<%=user.getState() %>
			</td>
		</tr>
		
		<tr>
			<td>
				State
			</td>
			<td>
				<%=user.getState() %>
			</td>
		</tr>
		
		
		<tr>
			<td>
				ProductName
			</td>
			<td>
				<%=user.getProductName()%>
			</td>
		</tr>
		
		
		<tr>
			<td>
				Requirement
			</td>
			<td>
				<%=user.getRequirement() %>
			</td>
		</tr>
		
			<tr>
			<td>
				ProductSummery
			</td>
			<td>
				<%=user.getProductSummery()%>
			</td>
		</tr>
		
		</tr>
		
			<tr>
			<td>
				Duration
			</td>
			<td>
				<%=user.getDuration()%>
			</td>
		</tr>
		
		
		<tr>
			<td>
				<a href="home.jsp">Back</a>
				</td>
				
			
		</tr>

</table>
</spr:form>

</body>
</html>