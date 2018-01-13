<?php
    require "php/requirements.php";

    // Show different information based on the user type
    if(is_employee()){
        $sql = "SELECT * FROM incident 
                    INNER JOIN users ON incident.client_id = users.id
                    INNER JOIN category ON incident.category_id = category.category_id
                    INNER JOIN status ON incident.status_id = status.status_id
                    WHERE operator_id = {$_SESSION['id']}
                    ORDER BY incident_id DESC";
    } else {
        $sql = "SELECT * FROM incident 
                    INNER JOIN users ON incident.operator_id = users.id
                    INNER JOIN category ON incident.category_id = category.category_id
                    INNER JOIN status ON incident.status_id = status.status_id
                    WHERE client_id = {$_SESSION['id']}
                    ORDER BY incident_id DESC";
    }

    $qry = mysqli_query($conn, $sql);
?>

<!DOCTYPE HTML>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/mainCSS.css">
        <title>My tickets</title>
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
                    <div class="titleBox"><p>My Tickets</p></div>

                    <?php if (mysqli_num_rows($qry) == 0) { ?>
                        <h1>You still don't have any ticket submitted</h1>
                    <?php } else { ?>

                        <table class="fancy-table">
                            <tr>
                                <th>ID</th>
                                <?php if(is_employee()){ ?>
                                    <th>Client Name</th>
                                <?php } else { ?>
                                    <th>Operator Name</th>
                                <?php } ?>
                                <th>Date Submitted</th>
                                <th>Incident Type</th>
                                <th>Status</th>
                                <th>View Ticket</th>
                            </tr>

                            <?php while ($row = mysqli_fetch_assoc($qry)){ ?>
                                <tr>
                                    <td><?= $row['incident_id'] ?></td>
                                    <td><?= $row['name'] ?></td>
                                    <td><?= $row['start_date'] ?></td>
                                    <td><?= $row['category_name'] ?></td>
                                    <td><?= $row['status_name'] ?></td>
                                    <td><a href='ViewTicket.php'><img src='img/logo.png' alt='logo link' width='25px' height='25px'></a></td>
                                </tr>
                            <?php } ?>
                        </table>

                    <?php } ?>

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