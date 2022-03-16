<%@ page import= "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Password</title>
</head>
<body>
     <% 
		String url="jdbc:mysql://localhost:3306/login";
		String username ="root";
		String password ="Placement@2023";
		String query="select username,age from user where age>=?;";
		String count=(String) session.getAttribute("count");
		//String count="21";
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =DriverManager.getConnection(url,username,password);
			
			PreparedStatement st= con.prepareStatement(query);
			st.setString(1, count);
			ResultSet rs =st.executeQuery();
			
			if(!rs.next())
			{	out.println("No value exists.\n");}
			
			else
			{%>
				<Table border=1>
				<tr> <TH>ID</TH> <TH>Users</TH></tr>
				<% while(rs.next())
					{%>
					<tr> 
						<td> <%=rs.getString(1) %></td> <td><%=rs.getString(2) %> </td>
					</tr>
					<%} %>
				</Table>
			
		<%} }
		
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	%>
</body>
</html>