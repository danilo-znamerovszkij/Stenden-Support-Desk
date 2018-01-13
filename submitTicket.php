<?php
require "php/requirements.php";
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
            <div id="content-wrapper">
                <div id="sidebar">
                    <div class="userDetails">
                        <div class="clientName"><p><?php echo $_SESSION['name']; ?></p></div>
                        <div class="clientType"><p><?php echo $_SESSION['userType']; ?></p></div>
                    </div>
                    <div class="titleDivider"></div>
                    <div class="navWrapper">
                        <?= generateMenu() ?>
                    </div>
                </div>
                <div class="content">
                    <div class="titleBox"><p>Submit Ticket</p></div>

                    <div class="content1">
                        <div id="softwareName">Software Name
                            <div class="line1"></div>
                            <div class="mainselection">
                                <select name="software" id="input7">
                                    <option>Financial software</option>
                                    <!--                            <option value="Alabama">Alabama</option>

                                                                <option value="Wisconsin">Wisconsin</option>
                                                                <option value="Wyoming">Wyoming</option>    -->
                                </select>
                            </div>
                        </div>
                        <div id="problemType"> Problem Type
                            <div class="line2"></div>
                            <div class="mainselection">
                                <select name="problem" id="input7">
                                    <option>Choose the type</option>
                                    <option value="Alabama">Crash</option>

                                    <option value="Wisconsin">Crash</option>
                                    <option value="Wyoming">Crash</option>
                                </select>
                            </div>

                        </div>
                        <input type="submit" id="submit">
                    </div>


                    <div class="content2">
                        <div id="pbd">Problem Description
                            <div class="line3"></div>
                            <textarea></textarea>
                        </div>
                    </div>


                </div>
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