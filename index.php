<?php session_start();
if (isset($_SESSION['o_username'])) {
  echo $_SESSION['o_username'];
}
?>

<!DOCTYPE HTML>
<html>
    <head>
        <title>Welcome to Stenden eHelp</title>
    </head>
    <body>
        <a href="login.php">Login page</a>

    </body>
</html>
