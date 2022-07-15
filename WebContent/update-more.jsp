<%@ page import="java.sql.*" %>
<html>
<body>
<%
String id = request.getParameter("idd");
String title = request.getParameter("title");
String quantity = request.getParameter("quan");
String price=request.getParameter("price");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul_singh","root","12345");
	System.out.println("Connected...");
	PreparedStatement ps = cn.prepareStatement("update gloify set name=? , quantity=? , price=? where id=?");
	ps.setString(1,title);
	ps.setString(2,quantity);
	ps.setString(3,price);
	ps.setString(4,id);
	ps.executeUpdate();
	%>
	<jsp:include page="update-books.jsp" />
	<h1>RECORD UPDATED</h1>
	
	<%
	
}
catch(Exception ec)
{
	System.out.println(ec);
}
%>
</body>
</html>