


<%@ page import="java.sql.*" %>
<%@ include file="admin.jsp" %>
<%
try
{
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul_singh","root","12345");
	System.out.println("Connected...");
	PreparedStatement ps = cn.prepareStatement("select * from gloify");
	ResultSet rst = ps.executeQuery();


%>
<body onload="makeActive('list')">
 <div class='container my-2'>
  <div class='card'>
    <div class='card-body'>
     <table class='table table-hover'>
      <thead>
       <tr>
        <th class='thf'>Book Id</th><th class='thf'>Book Title</th><th class='thf'>Quantity</th>
        <th class='thf'>Price</th>
       </tr>
      </thead>
      <tbody>
      <%
      while(rst.next())
      {
    	  %>
    	  <tr>
    	   <td class='tdf'><%=rst.getString(1)%></td>
    	   <td class='tdf'><%=rst.getString(2)%></td>
    	   <td class='tdf'><%=rst.getString(3)%></td>
    	   <td class='tdf'><%=rst.getString(4)%></td>
    	   
    	   
    	  </tr>
    	  <%
      }
}
catch(Exception ec)
{
	System.out.println(ec);
}
      %>
      </tbody>
     </table>
    </div>
  </div>
 </div>
</body>