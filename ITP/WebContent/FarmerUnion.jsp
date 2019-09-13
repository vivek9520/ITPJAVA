<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<style>

* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
input[type=number], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}


/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
  
}

.btn{
  height: 50px;
  width: 150px;
  background: green;
 
}

@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>

<script> 
function onvalidate()
{ 
 var name = document.form.name.value;
 var noOfFarmers = document.form.NoofFarmers.value; 
 var district = document.form.district.value;
 var province = document.form.province.value;
 
 if (name==null || name=="")
 { 
 alert("Name can't be blank"); 
 return false; 
 }
 else if (noOfFarmers==null || noOfFarmers=="")
 { 
 alert("Farmers can't be blank"); 
 return false; 
 }
 else if (district==null || district=="")
 {
 alert("district can't be blank"); 
 return false; 
 } 
 else if (province==null || province=="")
 {
 alert("province can't be blank"); 
 return false; 
 } 
 } 
</script> 
</head>
<body>






<h1><center>CREATE FARMER UNION</center></h1>
<form action="UmaiFarmerAddServlet" method="post" onsubmit="return onvalidate()">


<div class="container">

  <div class="row">
  <div class="col-25">
      <label for="fname">Name</label>
    </div>
    <div class="col-75">
      <input type="text" id="fname" name="name" placeholder="Enter Farmer Union name.." required>
    </div>
    </div>
    
  <div class="row">
    <div class="col-25">
      <label for="lname">Number of Farmers</label>
    </div>
    <div class="col-75">
      <input type="number" id="lname" name="noOfFarmers" placeholder="Enter Number of Farmers.." min=1 max=1000 required>
    </div>
  </div>
    
    
  <div class="row">
  <div class="col-25">
      <label for="country">District</label>
    </div>
    
    
    
    <div class="col-75">
      <select name="district" required>
        <option value="colombo">Jaffna</option>
        <option value="batticalo">Klinochi</option>
        <option value="jaffna">Mannar</option>
        <option value="colombo">Mullaituvu</option>
        <option value="batticalo">Vavuniya</option>
        <option value="jaffna">Puttalam</option>
        <option value="colombo">Kurunagala</option>
        <option value="batticalo">Gampaha</option>
        <option value="jaffna">Jafffna</option>
        <option value="colombo">Colombo</option>
        <option value="batticalo">Kalutara</option>
        <option value="jaffna">Anuradhapura</option>
        <option value="colombo">Polannaruwa</option>
        <option value="batticalo">Matale</option>
        <option value="jaffna">Kandy</option>
        <option value="colombo">Nuwara Eliya</option>
        <option value="batticalo">Kegalle</option>
        <option value="jaffna">Ratnapura</option>
        <option value="colombo">Trincomalee</option>
        <option value="batticalo">Batticaloa</option>
        <option value="jaffna">Ampara</option>
        <option value="colombo">Badhula</option>
        <option value="batticalo">Monaragala</option>
        <option value="jaffna">Hampantota</option>
        <option value="colombo">Matara</option>
        <option value="batticalo">Galle</option>
       
      </select>
    </div>
  </div>
  
  <div class="row">
    <div class="col-25">
      <label for="country">Province</label>
    </div>
    <div class="col-75">
      <select id="country" name="province" required>
        <option value="western">Northern</option>
        <option value="northern">North Western</option>
        <option value="eastern">Western</option>
         <option value="western">North Central</option>
        <option value="northern">Central</option>
        <option value="eastern">Sabragamuwa</option>
         <option value="western">Eastern</option>
        <option value="northern">Uva</option>
        <option value="eastern">Southern</option>
      </select>
    </div>
  </div></br></br>
  
 
 <center><button type="submit" class="btn btn-primary" value="submit">Submit</button></center>
  </div>
 
</div>
 </form>
</body>
</html>
