<?php

session_start();

//DATABASE CONNECTION
$conn = mysqli_connect("localhost", "root", "", "ssd");

$UID = mysqli_real_escape_string($conn, $_POST['username']);
$PWD = mysqli_real_escape_string($conn, $_POST['password']);

//ERROR HANDLERS
//CHECK if inputs are empty
if (empty($UID) || empty($PWD)) {

    $_SESSION['loginError'] = "Please fill up all the fields.";
    header('Location: login.php');
    exit(); //to be sure to end the code
	
} else {
    $sql = "SELECT * FROM operator WHERE username='$UID'";

    $query = mysqli_query($conn, $sql);

    $sql = mysqli_fetch_assoc($query);
    if ($_POST['username'] == $sql['username']) {

        if ($_POST['password'] == $sql['password']) {
			
            $_SESSION['userType'] = "operator";
            $_SESSION['username'] = $sql['username'];
            $_SESSION['u_id'] = $sql['operator_id'];
			
            header('Location: index.php');
            exit;
			
        } else {
            echo "Please enter a correct combination";
        }
    } else {

        $sql = "SELECT * FROM client WHERE username='$UID'";

        $query = mysqli_query($conn, $sql);

        $sql = mysqli_fetch_assoc($query);

        if ($_POST['username'] == $sql['username'] && $_POST['password'] == $sql['password']) {
			
            $_SESSION['username'] = $sql['username'];
            $_SESSION['userType'] = "client";
            $_SESSION['u_id'] = $sql['client_id'];
			
            header('Location: index.php');
            exit;
			
        } else {
            echo "Please enter a correct combination";
        }
    }
}
?>
