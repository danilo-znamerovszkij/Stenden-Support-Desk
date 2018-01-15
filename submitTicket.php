<?php

require "php/requirements.php";
include 'php/conn.php';


                
 if(isset($_POST['submit'])){
     if((isset($_POST['problem']))&&(!empty($_POST['description']))){
        
        $problem = $_POST['problem'];
        $description = $_POST['description'];
        
        }
        
        else{
            echo "You have to complete both the type of problem and the description!";
            }

 }
 /*
 $name = $_SESSION['name'];
 $sql = "SELECT id FROM users WHERE username = '$username'";
 $qry = mysqli_query($conn, $sql);
 $userInfo = mysqli_fetch_assoc($qry);

 $id= $userInfo['id'];
 
 $sql = "SELECT category_id FROM category WHERE category_name = '$problem'";
 $qry = mysqli_query($conn, $sql);
 $userInfo = mysqli_fetch_assoc($qry);

 $idp= $userInfo['category_id'];
 
 $sql = "INSERT INTO incident(client_id, status_id, description) VALUES ($id, $idp, $description);";
 $qry = mysqli_query($conn, $sql);*/
?>

<!DOCTYPE HTML>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/mainCSS.css">
        <link rel="stylesheet" href="css/submitCSS.css">
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
                        <div class="titleDivider"></div>
                        <div class="content1">
                            <div id="softwareName">Software Name </div>
                                <div class="line1"></div>
                                    <div class="mainselection">
                                        <select name="software" id="input7">
                                            <option>Financial software</option>    
                                        </select>
                                    </div>

                        
                    
                        
                            <div id="problemType"> Problem Type
                                <div class="line2"></div>
                                <div class="mainselection">
                                    <form method="POST" action="">
                                        <select name="problem" id="input7">
                                            <option value="" disabled selected>Choose the type</option>
                                            <option value="wish">Wish</option>
                                            <option value="query">Query</option>
                                            <option value="cash">Crash</option>
                                            <option value="functional">Functional problem</option>
                                            <option value="technical">Technical problem</option>
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

                </form>
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