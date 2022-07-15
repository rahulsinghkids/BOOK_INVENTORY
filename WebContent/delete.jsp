<%@page import="java.sql.*" %>

<html>
<body>


<%
String idd = request.getParameter("id");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul_singh","root","12345");
	System.out.println("Connected...");
	PreparedStatement ps = cn.prepareStatement("delete from gloify where id=?");
	ps.setString(1,idd);
	ps.executeUpdate();
}
catch(Exception ec)
{
	System.out.println(ec);
}
%>
<jsp:include page="admin.jsp" />
<h1>RECORD DELETED</h1>


</body>
</html>