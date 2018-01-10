<?php session_start();
if (isset($_SESSION['o_username'])) {
  echo $_SESSION['o_username'];
}elseif(isset($_SESSION['u_username'])){
  echo $_SESSION['u_username'];
}
?>

<!DOCTYPE HTML>
<html>
    <head>
        <title>Welcome to Stenden eHelp</title>
    </head>
    <body>
        <a href="login.php">Login page</a>
        <a href="logout.php">Logout</a>

    </body>
</html>
