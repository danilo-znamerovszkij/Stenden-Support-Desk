<?php

 require "php/requirements.php";

    if (isset($_POST['submit']))
        {
 
            if (empty($_POST['uname']) || empty($_POST['phone']) || empty($_POST['email']) 
                || empty($_POST['username']) || empty($_POST['password']) || empty($_POST['has_maintenance_license'])
                || empty($_POST['position'])|| empty($_POST['contactId']))
            {
                echo "<p>You must enter all information. Click your
                browser's Back button to return to the Add record form and fill everything.</p>";
                echo                   
                    $name = stripslashes($_POST['name']);
                    $phone = stripslashes($_POST['phone']);
                    $email = stripslashes($_POST['email']);
                    $username = stripslashes($_POST['username']);
                    $password = stripslashes($_POST['password']);
                    $has_maintenance_license = stripslashes($_POST['has_maintenance_license']);
                    $position_id = stripslashes($_POST['position']);
                    $contact_id = stripslashes($_POST['contactId']);
            } else
            {
              
                    mysqli_select_db($conn, 'ssd');
                   // $isEmployee = stripslashes($_POST['is_Employee']);
                    $name = $_POST['uname'];
                    $phone = stripslashes($_POST['phone']);
                    $email = stripslashes($_POST['email']);
                    $username = stripslashes($_POST['username']);
                    $password = stripslashes($_POST['password']);
                    $has_maintenance_license = stripslashes($_POST['has_maintenance_license']);
                    $position_id = stripslashes($_POST['position']);
                    $contact_id = stripslashes($_POST['contactId']);
                    
                    $sqlString="INSERT INTO users(isEmployee, name, phone, email, username, password, has_maintenance_license, position_id, contact_id)"
                            . " VALUES (0,'$name' ,'$phone' ,'$email','$username','$password', '$has_maintenance_license', '$position_id','$contact_id' )";
         $QueryResult = mysqli_query($conn, $sqlString);
                    echo "The record successfully replaced";


                    mysqli_close($conn);
                }
            }

 ?>


<!DOCTYPE HTML>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/mainCSS.css">
        <link rel="icon" href="img/favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
        <title>FAQ</title>
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
                    <form method="post" action="#">
                        <input type="text" name="uname" placeholder="name">
                        <input type="text" name="phone" placeholder="phone">
                        <input type="text" name="email" placeholder="email">
                        <input type="text" name="username" placeholder="username">
                        <input type="text" name="password" placeholder="password">
                        <input type="text" name="has_maintenance_license" placeholder="has_maintenance_license">
                        <input type="text" name="position" placeholder="position">
                        <input type="text" name="contactId" placeholder="contactID">
                        <p><input type="submit" value="Submit" name="submit" /></p>
                     </form>
                </div>
                <div class="footer">
                    <div class="terms">
                         <a href="terms.php" class="linkS"><p>Terms and conditions</p></a>
                    </div>
                    <div class="copyright"></div>
                </div>
            </div>
        </div>
    </body>
</html>