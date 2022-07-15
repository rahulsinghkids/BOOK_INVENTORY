


<%@ page import="java.sql.*" %>
<%@ include file="admin.jsp" %>
<html>
<body>
<%
String email = request.getParameter("email");
String password = request.getParameter("password");
try
{
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul_singh","root","12345");
	System.out.println("Connected...");
	PreparedStatement ps = cn.prepareStatement("select * from gloify where email=? , password=?");
	ps.setString(1,email);
	ps.setString(2,password);
	ResultSet rst = ps.executeQuery();
	while(rst.next())
	{
		%>
		<jsp:include page="admin.jsp" />
		
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