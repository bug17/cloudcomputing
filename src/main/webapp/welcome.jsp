<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
    <%
  //i don't want to cache these secure page
  response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
     if(session.getAttribute("username")==null){
    	 response.sendRedirect("login.jsp");
     }
    %>
    You are Welcome ${username}
    
    <a href="video.jsp">Videos</a>
    <a href="about.jsp">About</a>
    
    <form action="Logout">
      <input type="submit" value="Logout">
    </form>
</body>
</html>