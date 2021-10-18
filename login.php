<!--1902710-->
<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
  <head>
     <meta charset="utf-8">
	   <meta name="catalogue" content="games catalogue">
	     <title>Zentona - Game Store </title>
	   <link rel="stylesheet" type="text/css" href="login.css">
    </head>
	



  <!--main body of the website-->
<body>
<div class="background" style="background-image: url('background.jpg');">
  
  <!--navigation -->
<nav>
  <div class="nav" align="center"> 
  <h1 class="title"> Zentona - Game Store </h1> 
    <a href="index.html">Store</a>
	  <a href="wishlist.html">Wishlist</a>
	  <a href="contact1.html">Contact Us</a>
	  <a href="login.html">Login/Signup</a>
	  <a href="search.html">Search</a>
  </div>
</nav>
<br>


<div class="login">
  <div class="form">
      <form class="login-form" action="phppages/login.method.php" method="post">
	  <h1>login</h1>
      <input type="text" name="user" placeholder="Username..."/>
      <input type="password" name="pass" placeholder="Password..."/>
      <button type="submit" name="login">Login</button>
	  
	  
    </form><br>
    <form class="register-form" action="phppages/signup.method.php" method="post">
	<h1>Sign Up</h1>
      <input type="text" name="uname" placeholder="Username..."/>
      <input type="password" name="pass" placeholder="Password..."/>
	  <input type="password" name="pass-repeat" placeholder="Repeat Password..."/>
      <button type="submit" name="signup-submit">create</button>
	  
    </form>
  </div>
</div>



<footer>
<div class="footer" align="center">
    <br>
    &copy;&nbsp Copyright 2020 M.M 
</div>	

</body>
<footer>
</html>