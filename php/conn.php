<?php

	$DBconnection = mysqli_connect("localhost", "root", "", "ssd");
if (!$DBconnection){
    die("Connection failed: ".mysqli_connect_error());
}

?>