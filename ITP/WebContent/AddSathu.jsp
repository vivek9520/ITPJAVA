<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Add Guide</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  
  <style>
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
function validateForm() {
  var x = document.forms["myForm"]["name"].value;
  if (x == "") {
    alert("Name must be filled out");
    return false;
  }
}

function validateForm() {
  var x = document.forms["myForm"]["steps"].value;
  if (x == "") {
    alert("Steps must be filled out");
    return false;
  }
}
</script>
  
  
</head>
<body background="a1.jpg">




<br>
<br>

<div class="row">
  <div class="column left">
  <br>
  <br>
  <br>
    <img src="img/b5.jpg" alt="Girl in a jacket">
  </div>
  
  
  <div class="column middle">
    <div class="container">
	<br>
  <h2><center><b><u>Add Your Guide</u></b></center></h2>
  <br>
<form name="myForm" action="AddSathu" onsubmit="return validateForm()" method="post">
    <div class="form-group">
      <label for="name">Vegetable Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter name" name="name" required>
    </div>
	
	   <div class="form-group">
      <label for="noofdays">Days Taken:</label>
      <input type="number" class="form-control" id="noofdays" placeholder="Enter days" name="days" required>
    </div>
	
	   <div class="form-group">
      <label for="tools">Tools Name:</label>
      <input type="text" class="form-control" id="tools" placeholder="Enter tools name" name="tools"required>
    </div>
	
<div class="form-group">
  <label for="steps">Steps</label>
  <textarea class="form-control" id="steps" rows="7" name="steps"></textarea>
</div>
	
	<br>
	<br>
	<br>
    <center><button type="submit" class="btn btn-primary">Submit</button></center>
  </form>
</div>

  </div>
  
</div>


</body>
</html>