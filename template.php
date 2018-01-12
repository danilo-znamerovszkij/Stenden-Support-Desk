<?php
    require "php/requirements.php";
?>

<!DOCTYPE HTML>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/mainCSS.css">
        <title>{{ Your page title }}</title>
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
                <p>{{Your page name}}</p>
            </div>
            <div class="titleDivider"></div>
            <div class="navWrapper">
                <?= generateMenu() ?>
            </div>

            <div class="content">
                <!-- Beautiful content here -->
            </div>

            <div class="footer">
                <div class="terms">
                    <p>Terms and conditions</p>
                </div>
                <div class="copyright"></div>
            </div>
        </div>
    </body>
</html>

