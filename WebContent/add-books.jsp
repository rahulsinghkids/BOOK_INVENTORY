<



<%@ include file="admin.jsp" %>
<html>
 <body onload="makeActive('save')">
 <div class='container my-2'>
  <div class='card col-md-10 mx-auto'>
    <div class='card-body'>
     <form action='add.jsp'>
      <div class='row'>
       <div class='form-group col-md-10'>
        <label for='cid' class='la'>Enter Book id</label><span> *</span>
        <input type='text' id='cid' name='idd' class='form-control' required>
       </div>
       <div class='form-group col-md-5'>
        <label for='fname' class='la'>Enter Book name</label><span> *</span>
        <input type='text' id='fname' name='title' class='form-control' required>
       </div>
       <div class='form-group col-md-5'>
        <label for='lname' class='la'>Enter Quantity</label><span> *</span>
        <input type='text' id='lname' name='quan' class='form-control' required>
       </div>
       <div class='form-group col-md-5'>
        <label for='add' class='la'>Enter Price</label><span> *</span>
        <input type='text' id='add' name='amount' class='form-control' required>
       </div>
       
       <div class='form-group col-md-10'>
         <button class='btr'>Save Record</button>
       </div>
      </div>
     </form>
     <div>
      <span>*</span> Mandatory field 
     </div>
    </div>
  </div>
  </div>
 </body>
</html>