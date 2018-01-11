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

		<div class="logo">
			<img src="img/login.jpg" alt="Stenden eHelp Logo">
		</div>
		<div class="fields">
			<form action="LoginProceduresF.php" method="post" name="login">
					<p><div class="fieldsText">Username </div><input class="fieldsInput" style="width: 100%;" type="text" name="username"></p>
					<p><div class="fieldsText">Password </div><input class="fieldsInput" style="width: 100%;" type="Password" name="password"></p>
					<p><input class="fieldsText button" style=" margin-top: 10px; float: left;" type="submit" name="submit" value="Login"></p>
			</form>

			<form action="index.php">
				<input class="fieldsText button" style="float: right; margin-top: 10px;" type="submit" name="submit" value="Home">
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

	</div>

	</body>
</html>
