<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post">
Enter Name: <input type="text" name="fname"/><br/>
Enter Age: <input type="text" name="age"/><br/>
Enter Email: <input type="text" name="email"/><br/>
Enter Password: <input type="password" name="password"/><br/>
Gender: <input type="radio" name="gender" value="female"/>Female
		&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="gender" value="male"/>MAle<br/>
Hobbies:<input type="checkbox" name="hobby" value="reading"/> Reading
		&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="checkbox" name="hobby" value="browsing"/> Browsing
		&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="checkbox" name="hobby" value="gaming"/> Gaming
		&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="checkbox" name="hobby" value="cooking"/> Cooking <br/>
Country: <select name="country">
			<option value="select"> Select Country </option>
			<option value="India"> India </option>
			<option value="USA"> USA </option>
			<option value="UK"> UK </option>
			<option value="Others"> Others </option>
		</select> <br/> <br/>
		<input type="submit" name="register" value="Register Details"/>
		



</form>

<% if (request.getParameter("register")!=null){%>
	<jsp:useBean id="user" class="com.to.User" scope="request"></jsp:useBean>
	<jsp:setProperty property="*" name="user"/>
	<jsp:forward page="RegisterServlet"></jsp:forward>
	
<%}%>
</body>
</html>