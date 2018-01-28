<?php
session_start();
	  //please use $result to display error messages, the html part is adapted to print out errors (currently lines 35-46 have to code on them)
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

<<<<<<< HEAD
        $sql = "SELECT id, name, username, position_Role, password  FROM users
                INNER JOIN position ON users.position_id = position.position_id
                WHERE username = '$username' ";
        $qry = mysqli_query($conn, $sql);
        $hashed_password="";   
        // Check to see if there is a valid combination, which means that a user exists
        if($qry->num_rows > 0){
			
			$userInfo = mysqli_fetch_assoc($qry);
			$hashed_password=$userInfo['password'];
			$hashedPwdCheck = password_verify($password,$hashed_password);

            if ($hashedPwdCheck == true){
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
				// Nope, the pwd doesn't match. Let's inform them.
				$error = "Username or login is not correct.";
			}
        } else {
            // Nope, there is no users. Let's inform them.
            $error = "Username or login is not correct.";
        }
=======
		<div class="logo">
			<img src="img/login.jpg" alt="Stenden eHelp Logo">
		</div>
		<div class="fields">
			<form action="LoginProceduresF.php" method="post" name="login">
					<p><div class="fieldsText">Username </div><input class="fieldsInput" style="width: 100%;" type="text" name="username"></p>
					<p><div class="fieldsText">Password </div><input class="fieldsInput" style="width: 100%;" type="Password" name="password"></p>
					<p><input class="fieldsText button" style=" margin-top: 10px; float: left; margin-left:35%;" type="submit" name="submit" value="Login"></p>
			</form>

		</div>

		<?php
		if (isset($_POST['submit'])){

			echo "
			<div class='response'>
                                
				<p style='margin-left: 10px'>".$_SESSION['loginError']." </p>


			</div>";
		}
		?>
>>>>>>> parent of 13fac04... “There are all kinds of courage,” said Dumbledore, smiling. “It takes a great deal of bravery to stand up to our enemies, but just as much to stand up to our friends.”  –The Philosopher’s Stone

	</div>

<<<<<<< HEAD
<!DOCTYPE html>
<html>
	<head>
		<title>Stenden eHelp Login</title>
		<link rel="stylesheet" type="text/css" href="css/mainCSS.css">
		<link rel="stylesheet" type="text/css" href="css/loginCSS.css">
    <link rel="icon" href="img/favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
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
=======
>>>>>>> parent of 13fac04... “There are all kinds of courage,” said Dumbledore, smiling. “It takes a great deal of bravery to stand up to our enemies, but just as much to stand up to our friends.”  –The Philosopher’s Stone
	</body>
</html>
