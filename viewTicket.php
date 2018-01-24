<?php
    require "php/requirements.php";

    if(!isset($_GET['ticket'])) die('Invalid Request. Please try again.');

    // Show different information based on the user type
    if(is_employee()){
        $sql = "SELECT * FROM incident
                INNER JOIN users AS client ON incident.client_id = client.id
                INNER JOIN category ON incident.category_id = category.category_id
                INNER JOIN status ON incident.status_id = status.status_id
                WHERE incident.incident_id = '{$_GET['ticket']}'
                ORDER BY incident_id DESC";
    } else {
        $sql = "SELECT * FROM incident
                INNER JOIN users ON incident.operator_id = users.id
                INNER JOIN category ON incident.category_id = category.category_id
                INNER JOIN status ON incident.status_id = status.status_id
                WHERE incident.incident_id = '{$_GET['ticket']}'
                ORDER BY incident_id DESC";
    }

$ticket = mysqli_fetch_assoc(mysqli_query($conn, $sql));

if($ticket == NULL) die('There is no ticket associated with the given ID.');

?>
<!DOCTYPE HTML>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/mainCSS.css">
        <link rel="icon" href="img/favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
        <title>View Ticket</title>
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
                <div class="content viewTicket">
                    <div class="titleBox"><p>Viewing Ticket with ID: <?= $ticket['incident_id'] ?></p></div>

                    <form action="viewTicket.php" method="POST">
                        <input type="hidden" name="id" value="<?= $ticket['incident_id'] ?>">

                        <p>Start date</p>
                        <p class="isValue"><?= $ticket['start_date'] ?></p>

                        <p>End date</p>
                        <p class="isValue"><?= $ticket['end_date'] != NULL ? $ticket['end_date'] : "N/A" ?></p>

                        <?php if(is_employee()){ ?>
                            <p>Client name</p>
                            <p class="isValue"><?= $ticket['name'] ?></p>

                            <p>Status</p>
                            <select name="status_id">
                                <?php foreach(get_ticket_statuses() as $status){
                                    $checked = $status['status_name'] == $ticket['status_name'] ? "selected": "";
                                    ?>
                                    <option value="<?= $status['status_id'] ?>"<?= $checked ?>><?= $status['status_name'] ?></option>
                                <?php } ?>
                            </select>

                            <p>Category</p>
                            <select name="category_id">
                                <?php foreach(get_ticket_categories() as $category){
                                    $checked = $category['category_name'] == $ticket['category_name'] ? "selected": "";
                                    ?>
                                    <option value="<?= $category['category_id'] ?>"<?= $checked ?> > <?= $category['category_name'] ?></option>
                                <?php } ?>
                            </select>

                            <p>Description</p>
                            <p class="isValue"><?= $ticket['description'] ?></p>

                            <p>Solution</p>
                            <textarea name="solution"><?= $ticket['solution'] ?></textarea>

                        <?php } else { ?>

                            <p>Employee name</p>
                            <p class="isValue"><?= $ticket['name'] ?></p>

                            <p>Status</p>
                            <p class="isValue"><?= $ticket['status_name'] ?></p>

                            <!-- Does the customer need to see this? -->
                            <p>Category</p>
                            <p class="isValue"><?= $ticket['category_name'] ?></p>

                            <p>Description</p>
                            <!-- Can the user change this after he/she has submitted a ticket? -->
                            <textarea name="description"><?= $ticket['description'] ?></textarea>

                            <p>Solution</p>
                            <p class="isValue"><?= $ticket['solution'] ?></p>
                        <?php } ?>
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
