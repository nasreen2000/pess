<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {box-sizing: border-box}
body {font-family: Arial, Helvetica, sans-serif;}

.navbar {
  width: 100%;
  background-color: #010EB9;
  overflow: auto;
}

.navbar a {
  float: left;
  padding: 12px;
  color: white;
  text-decoration: none;
  font-size: 17px;
  width: 25%; /* Four links of equal widths */
  text-align: center;
}

.navbar a:hover {
  background-color: #0B0B0B;
}

.navbar a.active {
  background-color: #010EB9;
}

@media screen and (max-width: 500px) {
  .navbar a {
    float: none;
    display: block;
    width: 100%;
    text-align: left;
  }
}
</style>
<body>

<h2><center>POLICE EMERGENCY SERVICE SYSTEM</center></h2>


<div class="navbar">
  
  <a href="logcall.php"> Log Call</a> 
  <a href="update.php"> Update</a> 
  <a href="signin.php"> Sign In</a> 
  <a href="signout.php"></i> Sign Out</a>
</div>

</body>
</html> 
