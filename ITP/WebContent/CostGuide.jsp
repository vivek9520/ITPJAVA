<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!DOCTYPE html>
<html lang="en">
<head>
<title>CostGuide</title>

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>

<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

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
<body>

<div class="w3-top">
  <div class="w3-bar w3-black w3-wide w3-padding w3-card">
    <a href="#home" class="w3-bar-item w3-button"><b>AG</b> Agro</a>
    <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="#products" class="w3-bar-item w3-button">Products</a>
      <a href="#about" class="w3-bar-item w3-button">About</a>
      <a href="#slideshow" class="w3-bar-item w3-button">Contact</a>
      
    </div>
  </div>
</div>

<br><br><br>


<div class ="container">

<h1><center>Cost Guide</center></h1>
  
  <div class="column middle">
<div class="container">  
<form action="CostGuideServ" method="post">


    <label for="province">Enter the province which product is produced:</label>
    <select class=form-control id="province" name="province">
   <option value="western">Western Province</option>
  <option value="southern">Southern Province</option>
  <option value="eastern">Eastern Province</option>
  <option value="northern">Northern Province</option>
  <option value="central">Central Province</option>
  <option value="northCentral">North Central Province</option>
  <option value="northWestern">North Western</option>
  <option value="uva">Uva Province </option>
  <option value="sabaragamuwa"> Sabaragamuwa Province </option>
    </select>

</br>

<label for="pname">Enter the product :</label>
<input class=form-control type="text" id="product" name="product" placeholder="eg:Banana,Brinjal" required>

<label for="cost">Enter the cost:</label>
<input class=form-control type="text" id="cost" name="cost" placeholder="eg:Wages,Weed management cost" required>

<label for="cost">Enter the amount(In Rs):</label>
<input class=form-control type="number" id="amount" name="amount" placeholder="eg:4500.00,345.90" required>

 <br><br>
   <center><button type="submit" class="btn btn-primary" value="submit">Submit</button></center>

</form>
</div>
</div>

</body>

</html>