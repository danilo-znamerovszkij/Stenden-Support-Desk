<<<<<<< HEAD
<?php

require "php/requirements.php";
include 'php/conn.php';
$errorFlag = "";

=======
<?php session_start();
if (isset($_SESSION['u_username'])) {
}else {
  echo "You are not logged in.";
  die;
}

if ($_SESSION['u_license'] == 0) {
  header('Location: faq.php');
}
>>>>>>> parent of 13fac04... “There are all kinds of courage,” said Dumbledore, smiling. “It takes a great deal of bravery to stand up to our enemies, but just as much to stand up to our friends.”  –The Philosopher’s Stone
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

                    $errorFlag = "You successfully added a ticket";

                } else {
                    $errorFlag = "Please fill in all the required fields";

                }

            }

            ?>
    <div id="content-wrapper">
        <div id="sidebar">
            <div class="userDetails">
<<<<<<< HEAD
                <div class="clientName"><p><?php echo $_SESSION['name']; ?></p></div>
                <div class="clientType"><p><?php echo $_SESSION['userType']; ?></p></div>
=======

                <div class="clientName">
                    <p><?php echo $_SESSION['u_name']; ?></p>
                </div>
                <div class="clientType">
                    <p><?php echo "ID " . $_SESSION['u_id']; ?></p>
                </div>
>>>>>>> parent of 13fac04... “There are all kinds of courage,” said Dumbledore, smiling. “It takes a great deal of bravery to stand up to our enemies, but just as much to stand up to our friends.”  –The Philosopher’s Stone
            </div>

            <div class="navWrapper">
                <?= generateMenu() ?>
            </div>
<<<<<<< HEAD
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
                    <input class="hover" type="submit" id="submit" name="submit" value="Submit Ticket">
            </div>


            <div class="content2">
                <div id="pbd">Problem Description
                    <div class="line3"></div>
                    <div class="textWrap">
                        <textarea name="description"></textarea>
                        <div style="float:left; margin-left:90px;"><p><?= $errorFlag; ?></p></div>
                    </div>
=======

            <div class="titleDivider">

            </div>
            <div class="content">
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
            <div class="navWrapper">

              <a href="faq.php">
                <div id="navItem">
                    <p>F.A.Q.</p>
                </div>
              </a>

              <a href="myTickets.php">
                <div id="navItem">
                    <p>My Tickets</p>
                </div>
              </a>

              <a href="messages.php">
                <div id="navItem">
                    <p>Messages</p>
                </div>
              </a>

              <a href="logout.php">
                <div id="navItem">
                    <p>Log Out</p>
                </div>
              </a>

            </div>
            <div class="footer">
>>>>>>> parent of 13fac04... “There are all kinds of courage,” said Dumbledore, smiling. “It takes a great deal of bravery to stand up to our enemies, but just as much to stand up to our friends.”  –The Philosopher’s Stone



                </div>
            </div>


<<<<<<< HEAD
=======

                <div class="copyright">
>>>>>>> parent of 13fac04... “There are all kinds of courage,” said Dumbledore, smiling. “It takes a great deal of bravery to stand up to our enemies, but just as much to stand up to our friends.”  –The Philosopher’s Stone

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
