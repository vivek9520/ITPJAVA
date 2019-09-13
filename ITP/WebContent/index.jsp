
<!DOCTYPE html>
<html>
<title>Homepage</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<!-- Navbar (sit on top) -->
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

<!-- Header -->
<header class="w3-display-container w3-content w3-wide" style="max-width:1500px;" id="home">
  <img class="w3-image" src="img/22.jpg" alt="bowl" width="1500 !important" height="500">
  <div class="w3-display-middle w3-margin-top w3-center">
    <h1 class="w3-xxlarge w3-text-white"><span class="w3-padding w3-black w3-opacity-min"><b>AG</b></span> <span class="w3-hide-small w3-text-black">Agro</span></h1>
  </div>
</header>

<!-- Page content -->
<div class="w3-content w3-padding" style="max-width:1564px">

 

  <!-- About Section 
  <div class="w3-container w3-padding-32" id="about">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-16">About Us</h3>
    <p> This is website created to help the farmers in  </p>
  </div>
-->

<div class="w3-row w3-padding-64" id="about">
    <div class="w3-col m6 w3-padding-large w3-hide-small">
     <img src="img/heart.jpg" class="w3-round w3-image w3-opacity-min" alt="heart" width="600" height="750">
    </div>

    <div class="w3-col m6 w3-padding-large">
      <h1 class="w3-center">About Us</h1><br>
      <p class="w3-large"> </p>
      <p class="w3-large w3-text-grey w3-hide-medium">This website was created in order to help the farmers who are hardworking for our 
      survival but still underated due to lack of popularity and identity.We people must learn to appreciate their work. so inorder
      help them we have created this website.through our website everybody can get information about crops, the ways of cultivating, 
      the ways of maintaining it and the time of harvesting the plant. In our website viewers can view the product details, farmers details,
      details of farmers union, and daily price details. 
       </p>
    </div>
  </div>
  
  <hr>
 
  
<div class="w3-center w3-padding-64" id="products">
      <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">El-contenido</span>
    </div>

 <div class="w3-container w3-padding-32" id="services">
  <div class="w3-row-padding ">
    <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="img/bell.png" alt="vegetebles" style="width:100%">
      <h3>Products</h3>
      <p>Variety of products with divided according to the nature of the products for a clear view. </p>
      <p><button class="w3-button w3-light-grey w3-block"><a href="UserProductUI.jsp">View</a></button></p>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="img/ava.jpg" alt="farmer" style="width:100%">
      <h3>Farmers Products</h3>
      <p>FArmers product are kept</p>
      <p><button class="w3-button w3-light-grey w3-block"><a href="home.jsp">View</a></button></p>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="img/farmer.jpg" alt="Mike" style="width:100%">
      <h3>Farmers Guide</h3>
      <p>Guiding viewer with proper details about harvest and planting. This page will give clear detail about each plant from the begining to the end</p>
      <p><button class="w3-button w3-light-grey w3-block"><a href="search.jsp">View</a></button></p>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="img/price.jpg" alt="Dan" style="width:100%">
      <h3>Daily Price</h3>
      <p>Updating the daily price according to the daily market6 price. This page will update every morning based on the market prices.</p>
      <p><button class="w3-button w3-light-grey w3-block"><a href="UserDailyPriceHome.jsp">View</a></button></p>
    </div>
    
     <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="img/water.jpg" alt="John" style="width:100%">
      <h3>Cost Guide</h3>
      <p>This page provides the details about the amount of money spent for cultivating, harvesting and price of seeds for a plant. </p>
      <p><button class="w3-button w3-light-grey w3-block"><a href="userCostGuide.jsp">View</a></button></p>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="img/uni.png" alt="Jane" style="width:100%">
      <h3>Farmers Union</h3>
      <p>This section contains details about the farmers union and their functions and also the union leaders details.</p>
      <p><button class="w3-button w3-light-grey w3-block"><a href="unionuser.jsp">View</a></button></p>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="img/hat.jpg" alt="Mike" style="width:100%">
      <h3>farmer Profile</h3>
      <p>The farmers details are visible and the the crop grown by them are stored in this page.</p>
      <p><button class="w3-button w3-light-grey w3-block">View</button></p>
    </div>
    <div class="w3-col l3 m6 w3-margin-bottom">
      <img src="img/mark.jpeg" alt="Dan" style="width:100%">
      <h3>Market</h3>
      <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
      <p><button class="w3-button w3-light-grey w3-block"><a href="MarketUserUI.jsp">View</a></button></p>
    </div>
  </div>
</div>
</div>

 
  <div class="mySlides w3-display-container w3-center" id="slideshow">
    <img src="img/oni.jpg" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
     
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="img/app.jpg" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="img/carr.jpg" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
     
    </div>
  </div>
<br>
<br>
<br>


<!-- Footer -->
<footer class="w3-center w3-black w3-padding-16">
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-text-green">Agro web</a></p>
</footer>

<script>
// Automatic Slideshow - change image every 4 seconds
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel,2000 );    
}

// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}

// When the user clicks anywhere outside of the modal, close it
var modal = document.getElementById('ticketModal');
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

</body>
</html>
