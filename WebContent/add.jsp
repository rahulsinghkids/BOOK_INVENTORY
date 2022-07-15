<%@page import="java.sql.*" %>
<html>
<body>
<%
String id = request.getParameter("idd");
String title = request.getParameter("title");

String quantity = request.getParameter("quan");

String amount = request.getParameter("amount");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul_singh","root","12345");
	System.out.println("Connected...");
	PreparedStatement ps = cn.prepareStatement("insert into gloify values(?,?,?,?)");
	ps.setString(1,id);
	ps.setString(2,title);
	ps.setString(3,quantity);
	ps.setString(4,amount);
    ps.executeUpdate();
    System.out.println("inserted");
}
catch(Exception ec)
{
	System.out.println(ec);
}

%>
<jsp:include page="add-books.jsp" />
<h3>BOOK ADDED</h3>
</body>
</html>