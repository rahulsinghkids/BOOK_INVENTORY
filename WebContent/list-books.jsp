


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
         <th  class='thf' style='color:magenta'>Action</th>
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
    	   <%
    	   String q = rst.getString(3);
    	   int qq = Integer.parseInt(q);
    	   if(qq>0)
    	   {%>
    		   <td class='tdf'><%= qq%></td>
    		   <%
    	   }
    	   else
    	   {
    		   %>
    		   <td class='tdf'><%= "Out of stock"%></td>
    		   <%
    	   }
    	   %>
    	   
    	   
    	  
    	   
    	   <td class='tdf'><%=rst.getString(4)%></td>
    	   <td>
    	    
    	    <a href='delete-icon.jsp?cid=<%=rst.getString(1)%>'  class='la'>OUT |</a>
    	    <a href='add-icon.jsp?cid=<%=rst.getString(1)%>'  class='la'>IN</a>
    	   </td>
    	   
    	   
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