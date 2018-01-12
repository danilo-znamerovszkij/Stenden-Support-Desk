<?php session_start();
if (isset($_SESSION['username'])) {
}else {
  echo "You are not logged in.";
  die;
}

require "php/permissions.php";


function has_license(){
    return isset($_SESSION['license']) && $_SESSION['license'] == 1;
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
                    <p><?php echo $_SESSION['name']; ?></p>
                </div>
                <div class="clientType">
                    <p><?php echo $_SESSION['userType']; ?></p>
                </div>
            </div>

            <div class="titleBox">
                <p>Frequently Asked Questions</p>
            </div>

            <div class="titleDivider">

            </div>

            <div class="navWrapper">

              <?php

              if ($_SESSION['license'] == 1) { ?>
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

              <?php } ?>

              

              

              <a href="logout.php">
                <div id="navItem">
                    <p>Log Out</p>
                </div>
              </a>

            </div>

            <div class="content">
                
                <?php if(has_license() || user_can('view', basename(__FILE__))){ ?>
                <div class="faq">

                  <article>
                      <h2>Q: What do I do when I can’t see my database?</h2>
                      <p>A: Log out of the system and then log back in. If the problem persists please send a ticket to us</p>
                  </article>

                  <article>
                      <h2>Q: There is no display after I log in?</h2>
                      <p>A: Make sure you monitor is connected to a power source. After refresh the page. If nothing changes log out of the system and log back in. If the problem persists reinstall the system</p>
                  </article>

                  <article>
                      <h2>Q: What if my problem is not in the available tickets?</h2>
                      <p>A:  (Only applies to those with a maintenance license): If you scroll to the bottom of the page you will see a section where you can add a ticket yourself with your own descriptions</p>
                  </article>

                  <article>
                      <h2>Q: What do I do if my ticket does not submit?</h2>
                      <p>A: (Only applies to those with a maintenance license): Refresh the page, if the problem persists then log out and log back into the system</p>
                  </article>

                  <article>
                      <h2>Q: What do I do if my backup is lost?</h2>
                      <p>A: Send us a ticket and we will re upload your backup into the system</p>
                  </article>

                  <article>
                      <h2>Q: I am unable to see the picture of the person working on my ticket</h2>
                      <p>A: (Only applies to those with a maintenance license): Refresh the page, if nothing changes log out of the system and log back in. If the problem persists send us a ticket</p>
                  </article>

                  <article>
                      <h2>Q: (Only applies to those with a maintenance license) No one has taken my ticket</h2>
                      <p>A: If this occurs it means our staff is overwhelmed please be patient and we will get to your ticket as soon as possible</p>
                  </article>

                  <article>
                      <h2>Q: What if my details are incorrect</h2>
                      <p>A: Send us a ticket within the correct information and we will update your details</p>
                  </article>

                </div>
                <?php } else { ?>
                <p>You are not supposed to see this page.</p>
                <?php } ?>
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
