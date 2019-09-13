<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Baumans' rel='stylesheet'>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <title>Homepage</title>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<style>
body {
    font-family: 'Baumans';font-size: 22px;
  
}

* {
  box-sizing: border-box;
}

form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background: #ffffff;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
    }
    
/*image side by side style */
    
* {
  box-sizing: border-box;
}

.column {
  float: left;
  width: 33.33%;
  padding: 5px;
}

.column2{
 float: left;
  width: 63.33%;
  padding: 20px;

}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}
</style>
    

</head>
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
<div class ="container">
<h1   >Farming Guide</h1>
<form class="example" action="/action_page.php">
  <input type="text" placeholder="Search.." name="search">
  <button type="submit"><i class="fa fa-search"></i></button>
</form>
 
 
 

    <br><br>
<h2>We provide...</h2>
<p>Popular analyzed steps to grow vegetables and fruits. 
    </p>
<section>
<div class ="row">
  <div class="column2">
  <p>Today, we live in a fast paced world. Inorder to be
      fast, our food is poisoned. So we should 
      learn to make our own food , by growing plants.
      This page helps you to do that . You can
      search for fruits or vegetables you like and get its
      steps to grow.</p>
  </div>
  <div class="column">
  	<img src="fguide.gif" alt="plant Growing gif" style="width:70%">
   </div>
   </div>
   
  </section>
    <br><br><br>


<section >
<div class="row">
  <div class="column">
    <img src="fguide1.jpg" alt="Snow" style="width:100%" >
  </div>
  <div class="column">
    <img src="fguide2.jpg" alt="Forest" style="width:100%">
  </div>
  <div class="column">
    <img src="fguide3.jpg" alt="Mountains" style="width:100%">
  </div>
</div>
</section>
</div>


</body>
</html> 
