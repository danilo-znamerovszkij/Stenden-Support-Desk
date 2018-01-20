<?php
    require "php/requirements.php";
    include 'php/conn.php';
    
     
        $sql = "SELECT * FROM MESSAGES";
    
        $QueryResult = mysqli_query($conn, $sql);       
        $row = mysqli_fetch_assoc(mysqli_query($conn, $sql));

         while ($row = mysqli_fetch_assoc($QueryResult))
            {
               
                $user_id = $row['user_id'];
                $message_id = $row['message_id'];
                $messages = "SELECT * FROM messages where user_id='$user_id';";
                
                $message = $row['message'];
                $incident_id = $row['incident_id'];
                
                

             
            }

if($messages == NULL) die('You have no messages');
?>

<!DOCTYPE HTML>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/mainCSS.css">
        <title>Messages</title>
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
                    <div class="titleBox"><p>Messages</p></div>
                    <!-- Beautiful content here -->
                    
                    <?php
                   
                    foreach($messages as $messages)
                    {
                        echo "<p>$message</p>";
                        echo "<p>$incident_id</p>";
                        echo "<p>$user_id</p>";
                        
                    }
                    ?>

                    
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

