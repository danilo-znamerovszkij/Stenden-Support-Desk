<?php
    require "php/requirements.php";
    include 'php/conn.php';
    
     
?>

<!DOCTYPE HTML>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/mainCSS.css">
        <link rel="icon" href="img/favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
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
                        
                        
                      
                       
                        
                                $currentId = $_SESSION['id'];
                       
                               
                                  if(is_employee())
                                    {
                                        $sql = "SELECT * FROM messages";
                                               
                                    } 
                                    else 
                                    {
                                        $sql = "SELECT * FROM incident";
                                                
                                    }
                                         
                               // $messages = "SELECT messages.message_id, messages.message FROM messages JOIN incident ON messages.incident_id;";
                                $QueryResult2 = mysqli_query($conn, $messages);       
                                $row2 = mysqli_fetch_assoc(mysqli_query($conn, $messages));
                                
                                
                                $user_id = $row2['user_id'];
                                $message_id = $row2['message_id'];

                                while ($row2 = mysqli_fetch_assoc($QueryResult2))
                                {
                              

                                   echo"<article>";
                        
                       
                                    echo "<p>{$row2['user_id']}</p>";
                                    echo "<p>{$row2['message']}</p>";
                                    echo "<p>{$row2['sent_dateTime']}</p>";

                                    echo"</article>";
                                    
                                    if($messages == NULL) die('You have no messages');
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
