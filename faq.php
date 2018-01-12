<?php session_start();
if (isset($_SESSION['u_username'])) {
}else {
  echo "You are not logged in.";
  die;
}
?>

<!DOCTYPE HTML>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/mainCSS.css">
        <title>Submit Ticket</title>
    </head>
    <body>
        <div class="wrapper">
            <div class="header">
                <div class="logo">
                    <img src="img/logo.png" alt="Stenden eHelp">
                </div>
                <p>Stenden eHelp</p>
            </div>

            <div class="userDetails">

                <div class="clientName">
                    <p><?php echo $_SESSION['u_name']; ?></p>
                </div>
                <div class="clientType">
                    <p><?php echo "ID " . $_SESSION['u_id']; ?></p>
                </div>
            </div>

            <div class="titleBox">
                <p>Frequently Asked Questions</p>
            </div>

            <div class="titleDivider">

            </div>

            <div class="navWrapper">

              <?php

              if ($_SESSION['u_license'] == 1) {

                echo "
              <a href='submitTicket.php'>
                <div id='navItem'>
                    <p>Submit Ticket</p>
                </div>
              </a>

              <a href='myTickets.php'>
                <div id='navItem'>
                    <p>My Tickets</p>
                </div>
              </a>

              <a href='messages.php'>
                <div id='navItem'>
                    <p>Messages</p>
                </div>
              </a>

              ";

              }

              ?>

              <a href="logout.php">
                <div id="navItem">
                    <p>Log Out</p>
                </div>
              </a>

            </div>
            <div class="footer">


                <div class="terms">
                    <p>Terms and conditions</p>
                </div>



                <div class="copyright">

                </div>

            </div>
        </div>
    </body>
</html>
