<?php
require "php/requirements.php";

$sql= "SELECT id,password FROM users"
$result =mysqli_query($conn,$sql);

while ($row = mysqli_fetch_assoc($result)){
	
	$PWD = $row['password'];
	$ID = $row['id'];
	
	$hashedpwd = password_hash($PWD, PASSWORD_DEFAULT);
	$sqlU = "UPDATE password SET password='$hashedpwd' WHERE id='$ID'";
	mysqli_query($conn, $sqlU);
}

?>