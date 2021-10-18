<?php
session_start();
if (isset($_POST['signup-submit'])) {
	
	require 'database.php';
	
	$user = $_POST['uname'];
	$pass = $_POST['pass'];
	$passrepeat = $_POST['pass-repeat'];
	
	if (empty($user) || empty($pass) || empty($passrepeat))  {
		header("Location : ../login.php?error=emptyfields&uname=".$user);
		exit();
		
	}
	
	
}

?>