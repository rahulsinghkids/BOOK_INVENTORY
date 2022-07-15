<%@ page import="java.sql.*" %>
<html>
<body>
<%
String email=request.getParameter("email");
String name = request.getParameter("name");
String pass = request.getParameter("password");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul_singh","root","12345");
	System.out.println("Connected...");
	PreparedStatement ps = cn.prepareStatement("insert into gkoify_user values(?,?,?)");
	ps.setString(1,email);
	ps.setString(2,name);
	ps.setString(3,pass);
	ps.executeUpdate();
			
}
catch(Exception ec)
{
	System.out.println(ec);
}
%>
<jsp:include page="index.jsp" />
<h1>USER CREATED</h1>
</body>
</html>