<%@page import="java.sql.*" %>
<html>
<body>
<%
String idd = request.getParameter("uid");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul_singh","root","12345");
	System.out.println("Connected...");
	PreparedStatement ps = cn.prepareStatement("update gloify set quantity=quantity-1 where id=?");
	ps.setString(1,idd);
	ps.executeUpdate();
	System.out.println("deleted");
}
catch(Exception ec)
{
	System.out.println(ec);
}
%>
<jsp:include page="list-books.jsp"></jsp:include>

</body>
</html>