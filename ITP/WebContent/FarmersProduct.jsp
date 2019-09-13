<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>


<title> Agro </title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body{
background-image: url("img/itp2.png");
}
h1{
           color: black;
           text-align: center;
        }
         h2{
           color: black;
           text-align: center;
        }
        label{
             color:white;
             font-family: "Times New Roman", Times, serif;
             font-size: 25px;
             font-style: normal;
        }
        form{
            background:lightblue;
            width: 350px;
            color:white;
            font-size: 18px;
            padding: 20px;
            border-radius: 10px;
            margin-left: 500px;
            float: center;
        }
        
        
         .hh input[type="text"]{
            width: 300px;
            border:0;
            border-radius: 3px;
            padding:7px;
        }
        .hh input[type="password"] {
            width: 300px;
            padding:7px;
            border: 0;
            border-radius: 3px;
        }
        .hh input[type="submit"]{
            width: 300px;
            padding: 7px;
            border:0;
            border-radius: 3px;
            background-color: black;
            color:white;
            font-weight: 600;
            font-size: 16px;
            font-family: sans-serif;
            font-style: normal;
            outline:0;
        }
        .hh input[type="submit"]:hover{
            color: white;
        }
        </style>
        <script> 
        
        
       
        function isNumberKey(evt)
        {
           var charCode = (evt.which) ? evt.which : event.keyCode;
           if (charCode != 46 && charCode > 31 
             && (charCode < 48 || charCode > 57))
              return false;

           return true;
        }
        
function onvalidate()
{ 
 var fname = document.form.fname.value;
 var fproduct = document.form.fproduct.value; 
 var amountOfSeeds = document.form.amountOfSeeds.value;
 var harvestTime = document.form.harvestTime.value;
 var harvestLand = document.form.harvestLand.value;
 
 if (fname==null || fname=="")
 { 
 alert("Name can't be blank"); 
 return false; 
 }
 else if (fproduct ==null || fproduct =="")
 { 
 alert("Products can't be blank"); 
 return false; 
 }
 else if (amountOfSeeds ==null || amountOfSeeds=="")
 {
 alert("amountofseeds can't be blank"); 
 return false; 
 } 
 else if (harvestTime ==null || harvestTime =="")
 {
 alert("harvesttime can't be blank"); 
 return false; 
 }
 else if (harvestLand ==null || harvestLand =="")
 {
 alert("harvestland can't be blank"); 
 return false; 
 } 
 } 
</script> 
</head>
<body>

<h1>Farmer's Product</h1>
<div class="hh">

<form action="HaariniFarmerAdd" method="post">


<h2>Farmer's Product</h2>
<label>Enter the farmer's name:</label><br>
 <input type="text" name="fname" placeholder="Enter farmer's name..." required><br> <br>

<label>Enter the name of the product that the farmer produces:</label><br>
 <input type="text" name="fproduct" placeholder="Enter product name..." required><br> <br>

<label>Enter the amount of seeds:</label><br>
  <input type="text" name="amountOfSeeds" placeholder="Enter amount of seeds..." onkeypress="return isNumberKey(event)"  required> <br><br>

<label>Enter the estimated harvest time of products (in months):</label><br>
  <input type="text" name="harvestTime" placeholder="Enter harvest time..." onkeypress="return isNumberKey(event)"  required><br> <br>

<label>Enter the area of harvesting land (in acres): </label><br>
  <input type="text" name="harvestLand" placeholder="Enter harvest land..." onkeypress="return isNumberKey(event)"  required > <br><br>



  <input type="submit" value="Submit">
<br>





</form>

</div>
</body>
</html>
