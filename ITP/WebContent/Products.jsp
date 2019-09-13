<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}


body{
	background-image:url('img/a8.jpg');
	background-position: center;
	background-size:cover;
	
}



input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: white;
  padding: 20px;
}


    * Create three unequal columns that floats next to each other */
.column {
  float: left;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}

.left, .right {
  width: 30%;
}

.middle {
  width: 70%;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}
</style>
<script> 
function onvalidate()
{ 
 var name = document.form.name.value;
 var season = document.form.season.value;
 var category = document.form.category.value; 
 var place = document.form.place.value;
 var details = document.form.details.value;
 
 if (name==null || name=="")
 { 
 alert("Product Name can't be blank"); 
 return false; 
 }
 else if (season==null || season=="")
 { 
 alert("Season can't be blank"); 
 return false; 
 }
 else if (category==null || category=="")
 { 
 alert("Category can't be blank"); 
 return false; 
 }
 else if (place==null || place=="")
 {
 alert("Place can't be blank"); 
 return false; 
 } 
 
 } 
</script> 
</head>
<body>

<h1><center>Add Products</center></h1>

<form action="ProductsServlet" method="post">
  <div class="column middle">
<div class="container">

    <label for="fname">Product Name</label>
    <input type="text" id="name" name="product" placeholder="Product name.." required>

    <label for="lname">Product season</label>
    <input type="text" id="season" name="season" placeholder="Season of that product" required>

    <label for="country">Category</label>
    <select id="category" name="category" required>
      <option value="Vegetable">Vegetable</option>
      <option value="Fruit">Fruit</option>
      <option value="Others">Other product</option>
    </select>

    
    <label for="lname">Major Growing Places</label>
    <input type="text" id="place" name="places" placeholder="Major growing places" required>
	
	<label for="subject">More Details</label>
    <textarea id="details" name="details" placeholder="If you want,you can write more information about product" style="height:200px" ></textarea>

    <input type="submit" value="Submit">
  
</div>
</form>

</body>
</html>