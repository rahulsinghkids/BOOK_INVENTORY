<%@ page import="java.sql.*" %>

<%
String id=request.getParameter("cid");

try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul_singh","root","12345");
	System.out.println("Connected...");
	PreparedStatement ps = cn.prepareStatement("update gloify set quantity=quantity+1 where id=?");
	ps.setString(1,id);
	
    ps.executeUpdate();
    System.out.println("inserted");
    response.sendRedirect("list-books.jsp");
}
catch(Exception ec)
{
	System.out.println(ec);
}
%>
