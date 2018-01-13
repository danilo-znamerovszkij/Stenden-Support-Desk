<?php
    session_start();

    require "php/conn.php";
    require "php/functions.php";

    if(isset($_POST['submit'])){

        $username = $_POST['username'];
        $password = $_POST['password'];

        $sql = "SELECT id, name, username, position_Role  FROM users
                INNER JOIN position ON users.position_id = position.position_id
                WHERE username = '$username' AND password = '$password'";
        $qry = mysqli_query($conn, $sql);

        // Check to see if there is a valid combination, which means that a user exists
        if($qry->num_rows > 0){

            $userInfo = mysqli_fetch_assoc($qry);

            $_SESSION['id'] = $userInfo['id'];
            $_SESSION['name'] = $userInfo['name'];
            $_SESSION['username'] = $userInfo['username'];
            $_SESSION['userType'] = $userInfo['position_Role'];

            if(is_employee()){
                redirect('tickets.php');
            } else {
                redirect('faq.php');
            }

        } else {
            // Nope, there is no users. Let's inform them.
            $error = "Username or login is not correct.";
        }

    }
?>

<!DOCTYPE html>
<html>
	<head>
		<title>Stenden eHelp Login</title>
		<link rel="stylesheet" type="text/css" href="css/mainCSS.css">
		<link rel="stylesheet" type="text/css" href="css/loginCSS.css">
	</head>
	<body>
        <div id="inputs_login">
            <div class="logo">
                <img src="img/login.jpg" alt="Stenden eHelp Logo">
            </div>
            <div class="fields">
                <form action="login.php" method="post" name="login">
                        <p><div class="fieldsText">Username </div><input class="fieldsInput" style="width: 100%;" type="text" name="username"></p>
                        <p><div class="fieldsText">Password </div><input class="fieldsInput" style="width: 100%;" type="Password" name="password"></p>
                        <p><input class="fieldsText button" style=" margin-top: 10px; float: left; margin-left:35%;" type="submit" name="submit" value="Login"></p>
                </form>
            </div>
            <?php if (isset($error)){ ?>
                <div class='response hovered'>
                    <p style='margin-left: 10px' id="error"><?= $error ?></p>
                </div>
            <?php } ?>
        </div>
	</body>
</html>
