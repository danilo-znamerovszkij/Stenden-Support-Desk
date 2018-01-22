<?php
echo "open";
$conn = mysqli_connect("localhost", "root", "", "ssd") or die('We\'re sorry. The database connection could not be established.');
$sql= "SELECT id,password FROM users";
$result =mysqli_query($conn,$sql);

echo "lol";
while ($row = mysqli_fetch_assoc($result)){
	
	$PWD = $row['password'];
	$ID = $row['id'];
	echo $ID;
	$hashedpwd = password_hash($PWD, PASSWORD_DEFAULT);
	$sqlU = "UPDATE password SET password='$hashedpwd' WHERE id='$ID'";
	mysqli_query($conn, $sqlU);
}
echo "close";
?>