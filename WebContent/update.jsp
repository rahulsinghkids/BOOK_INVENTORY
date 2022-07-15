<%@page import="java.sql.*" %>
<%@ include file="admin.jsp" %>
<html>
<body>
	<form action="update-more.jsp">
<table border="2" style="background-color:cyan; margin-left:300">

<%
String idd = request.getParameter("id");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul_singh","root","12345");
	System.out.println("Connected...");
	PreparedStatement ps = cn.prepareStatement("select * from gloify where id=?");
	ps.setString(1,idd);
	ResultSet rst = ps.executeQuery();
	if(rst.next())
	{
		%>
	
<tr>
<th>BOOK ID:</th>
<td><input type="text" value="<%=rst.getString(1) %>" name="idd"></td>
</tr>
<tr>
<th>BOOK TITLE:</th>
<td><input type="text" value="<%=rst.getString(2) %>" name="title"></td>
</tr>
<tr>
<th>BOOK QUANTITY:</th>
<td><input type="text" value="<%=rst.getString(3) %>" name="quan"></td>
</tr>
<tr>
<th>BOOK PRICE:</th>
<td><input type="text" value="<%=rst.getString(4) %>" name="price"></td>
</tr>
<tr>
<td><button>UPDATE</button></td>
</tr>
</table>
</form>

		
		<%
		
		
	}
}
catch(Exception ec)
{
	System.out.println(ec);
}
%>


</body>
</html>