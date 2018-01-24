<?php

require "php/requirements.php";
include 'php/conn.php';


?>

<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/mainCSS.css">
    <link rel="stylesheet" href="css/submitCSS.css">
    <link rel="icon" href="img/favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
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
           
            <div class="navWrapper">
                <?= generateMenu() ?>
            </div>
        </div>

        <div class="content">
            <div class="titleBox"><p>Submit Ticket</p></div>
           
            <div class="content1">
                <div id="softwareName">Software Name</div>
                <div class="line1"></div>
                <div class="mainselection">
                    <select name="software" id="input7">
                        <option>Financial software</option>
                    </select>
                </div>

                <form method="POST" action="submitTicket.php">
                    <div id="problemType"> Problem Type
                        <div class="line2"></div>
                        <div class="mainselection">
                            <select name="problem" id="input7">
                                <option value="NULL" disabled selected>Choose the type</option>
                                <option value="1">Wish</option>
                                <option value="2">Query</option>
                                <option value="3">Crash</option>
                                <option value="4">Functional problem</option>
                                <option value="5">Technical problem</option>
                            </select>
                        </div>
                    </div>
                    <input type="submit" id="submit" name="submit">
            </div>


            <div class="content2">
                <div id="pbd">Problem Description
                    <div class="line3"></div>
                    <div class="textWrap">
                        <textarea name="description"></textarea>
                    </div>
                </div>
            </div>

            <?php
            if (isset($_POST['submit'])) {
                if ((isset($_POST['problem'])) && (!empty($_POST['description']))) {

                    $problem = $_POST['problem'];
                    $description = $_POST['description'];
/*        PREPARED STATEMENTS FOR ADDING TICKETS*/
                    $sql = "INSERT INTO incident(client_id, category_id, description) VALUES (?, ?, ?);";
                    $stmt = mysqli_stmt_init($conn);
                    mysqli_stmt_prepare($stmt, $sql);
                    mysqli_stmt_bind_param($stmt, "sss", $_SESSION['id'], $problem, $_POST['description']);
                    mysqli_stmt_execute($stmt);
                    mysqli_stmt_close($stmt);

                    echo "You successfully added a ticket";
                } else {
                    echo "You have to complete both the type of problem and the description!";
                }

            }
            ?>

            </form>
        </div>

    </div>
    <div class="footer">
        <div class="terms">
            <a href="terms.php" class="linkS"><p>Terms and conditions</p></a>
        </div>
        <div class="copyright"></div>
    </div>
</div>
</body>
</html>
