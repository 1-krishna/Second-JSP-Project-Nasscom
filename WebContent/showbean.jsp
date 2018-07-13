<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Bean</title>
</head>
<body>

	<jsp:useBean id="students" class="bean.Student" />
	<!-- students object is created for Student Class in bean package -->
	<jsp:setProperty property="*" name="students"/>
	
	<p>Student Name:t
		<jsp:getProperty property="name" name="students"/>
	</p>
	
	<p>Student Roll:
		<jsp:getProperty property="roll" name="students"/>
	</p>
	
	<% 
		out.println(students.getName() + " " + students.getRoll());
	%>

</body>
</html>