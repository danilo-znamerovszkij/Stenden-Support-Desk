<?php
session_start();
//DATABASE CONNECTION
$conn = mysqli_connect("localhost", "root", "", "ssd");
if (!$conn){
    die("Connection failed: ".mysqli_connect_error());
}
$UID = mysqli_real_escape_string($conn, $_POST['username']);
$PWD = mysqli_real_escape_string($conn, $_POST['password']);
//ERROR HANDLERS
//CHECK if inputs are empty
if (empty($UID) || empty ($PWD)){
    echo "empty / ";
    $_SESSION['loginError'] = "Please fill up all the fields.";
    header("Location: login.php");
    exit(); //to be sure to end the code
} else {
    echo "operator check p1 / ";
    $sql = "SELECT * FROM operator WHERE username = '$UID'";
    $result = mysqli_query($conn, $sql);
    $resultCheck = mysqli_num_rows($result);
    //operator check p1
    if ($resultCheck < 1){
        echo "user check / ";
        $sql2 = "SELECT * FROM client WHERE username = '$UID'";
        $result2 = mysqli_query($conn, $sql2);
        $resultCheck2 = mysqli_num_rows($result2);
        //user check
        if ($resultCheck2 < 1){
            echo "wrong username / ";
            $_SESSION['loginError'] = "Wrong username.";
            header("Location: login.php");
            exit(); //to be sure to end the code
        }else{
            echo "row assignment / ";
            if ($row = mysqli_fetch_assoc($result2)){
                echo "user password check / ";
                //Password check
                if ($PWD == $row['password']){
                    echo "user login / ";
                    //LOGIN the user happens here
                    $_SESSION['userType'] = "";
                    $_SESSION['id'] = $row['client_id'];
                    $_SESSION['name'] = $row['client_name'];
                    $_SESSION['phone'] = $row['client_phone_number'];
                    $_SESSION['email'] = $row['client_email'];
                    $_SESSION['license'] = $row['has_maintenance_license'];
                    $_SESSION['username'] = $row['username'];
                    $_SESSION['contact_id'] = $row['contact_id'];
                    header("Location: index.php");
                    exit(); //to be sure to end the code
                } else{
                    echo "user wrong password / ";
                    $_SESSION['loginError'] = "Wrong password.";
                    header("Location: login.php?login=error");
                    exit(); //to be sure to end the code
                }
            } else {
                echo "user difficulties / ";
                $_SESSION['loginError'] = "Login Error";
                header("Location: login.php?login=error");
                exit(); //to be sure to end the code
            }
        }
        //operator login
    } else {
        echo "operator row assignment / ";
        if ($row = mysqli_fetch_assoc($result)){
            echo "operator password check /";
            //Password check
            if ($PWD == $row['password']){
                //LOGIN the user happens here
                $_SESSION['userType'] = "operator";
                $_SESSION['id'] = $row['operator_id'];
                $_SESSION['name'] = $row['operator_name'];
                $_SESSION['phone'] = $row['phone'];
                $_SESSION['email'] = $row['email'];
                $_SESSION['username'] = $row['username'];
                $_SESSION['photo'] = $row['operator_photo'];
                $_SESSION['position_id'] = $row['position_id'];
                header("Location: index.php");
                exit(); //to be sure to end the code
                echo "stopping";
                die;
            }else{
                $_SESSION['loginError'] = "Wrong password.";
                header("Location: login.php?login=error");
                exit(); //to be sure to end the code
            }
        } else {
            echo "operator difficulties / ";
            $_SESSION['loginError'] = "Login Error";
            header("Location: login.php?login=error");
            exit(); //to be sure to end the code
        }
    }
}
?>