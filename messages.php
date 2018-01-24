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
                <div class="content" id="messages">
                    <div class="titleBox"><p>Messages</p></div>
                    <!-- Beautiful content here -->
                    <div id="message-wrapper">
                        <?php
                        $sql = "SELECT 
                                        incident.*,
                                        messages.user_id,
                                        client.name as client_name,
                                        client.id as client_id,
                                        operator.name as operator_name,
                                        operator.id as operator_id,
                                        sent_dateTime,
                                        message    
                                    FROM `messages` 
                                    INNER JOIN incident ON messages.incident_id = incident.incident_id
                                    INNER JOIN users as client ON incident.client_id = client.id
                                    INNER JOIN users as operator ON incident.operator_id = operator.id
                                    WHERE incident.status_id != '1' AND 
                                      (incident.client_id = {$_SESSION['id']} OR incident.operator_id = {$_SESSION['id']})";

                        $query = mysqli_query($conn, $sql);

                        $messagesPerIncident = [];
                        while($row = mysqli_fetch_assoc($query)){
                            if(!isset($messagesPerIncident[$row['incident_id']])){
                                $messagesPerIncident[$row['incident_id']] = array();
                            }
                            $messagesPerIncident[$row['incident_id']][] = $row;
                        }

                        foreach($messagesPerIncident as $ticketID => $messages){ ?>

                            <article>
                                <h2>Ticket (<a href="viewTicket.php?ticket=<?= $ticketID ?>"><?= $ticketID ?></a>)</h2>

                                <?php foreach($messages as $message){

                                    $userType = $message['user_id'] == $_SESSION['id'] ? $_SESSION['userType'] : ($_SESSION['userType'] == "Client" ? "operator" : "client");
                                    $userType = ($userType == "client") ? "client" : "operator";
                                    $message[$userType . "_name"] = $message[$userType . "_name"] == $_SESSION['name'] ? "You" : $message[$userType . "_name"];
                                    $extraClass = $message[$userType . "_name"] == "You" ? "isMe" : "";
                                    ?>

                                    <div class="message <?= $extraClass ?>">
                                        <p class="name"><?= $message[$userType . "_name"] ?></p>
                                        <p class="message-content"><?= $message['message'] ?></p>
                                        <p class="timeSent"><?= $message['sent_dateTime'] ?></p>
                                    </div>

                                <?php }?>

                            </article>


                        <?php } ?>
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
