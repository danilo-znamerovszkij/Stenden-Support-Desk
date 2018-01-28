<<<<<<< HEAD
<?php
    require "php/requirements.php";

    // Show different information based on the user type
    if(is_employee()){
        $sql = "SELECT * FROM incident
                    INNER JOIN users ON incident.client_id = users.id
                    INNER JOIN category ON incident.category_id = category.category_id
                    INNER JOIN status ON incident.status_id = status.status_id
                    WHERE operator_id = '{$_SESSION['id']}'
                    ORDER BY incident.status_id, start_date DESC";
    } else {
        $sql = "SELECT *, IFNULL(incident.operator_id, '0') FROM incident
                    LEFT OUTER JOIN users ON incident.operator_id = users.id
                    INNER JOIN category ON incident.category_id = category.category_id
                    INNER JOIN status ON incident.status_id = status.status_id
                    WHERE client_id = '{$_SESSION['id']}'
                    ORDER BY incident.status_id, start_date DESC";
    }

    $qry = mysqli_query($conn, $sql);
?>

<!DOCTYPE HTML>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/mainCSS.css">
        <link rel="icon" href="img/favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
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
                                    <td><?= escape($row['incident_id']) ?></td>
                                    <td><?php
                                    if(escape($row['name'])){
                                        echo escape($row['name']);
                                    }
                                    else{
                                        echo "Not assigned yet";
                                    }
                                        ?></td>
                                    <td><?= escape($row['start_date']) ?></td>
                                    <td><?= escape($row['category_name']) ?></td>
                                    <td><?= escape($row['status_name']) ?></td>
                                    <td><a href='ViewTicket.php?ticket=<?= $row['incident_id'] ?>'><img src='img/logo.png' alt='logo link' width='25px' height='25px'></a></td>
                                </tr>
                            <?php } ?>
                        </table>

                    <?php } ?>

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
=======
<?php

session_start();

//db connection
$DBconnection = mysqli_connect("localhost", "root", "", "ssd");
if (!$DBconnection){
    die("Connection failed: ".mysqli_connect_error());
}

$_sql = "SELECT * FROM incident WHERE client_id = $_SESSION[u_id] ORDER BY incident_id DESC";
$QueryResult = mysqli_query($DBconnection, $_sql);

//ticket displaying
if (mysqli_num_rows($QueryResult) == 0) {
    
    echo "<h1>You still don't have any ticket submitted</h1>";
    
} else {
    
    echo "<table>";
    
    echo "<tr>";
        
        echo "<td>ID</td>";
        echo "<td>Operator Name</td>";
        echo "<td>Date Submited</td>";
        echo "<td>Time Submited</td>";
        echo "<td>Incident Type</td>";
        echo "<td>View Ticket</td>";
        echo "<td>Status</td>";
        
    echo "</tr>";
        while ($Row = mysqli_fetch_assoc($QueryResult)){
        
        echo "<tr>";
        
            //Incident ID
            echo "<td>{$Row['incident_id']}</td>";
            
            //Operator
            $O_ID = $Row['operator_id'];
            $SQL = "SELECT * FROM operator WHERE operator_id = $O_ID";
            $Result = mysqli_query($DBconnection, $SQL);
            $ROW = mysqli_fetch_assoc($Result); 
                echo "<td>{$ROW['operator_name']}</td>";
            
            //Submitted Time
            echo "<td>{$Row['start_date']}Date Submited</td>";
            echo "<td>{$Row['start_time']}Time Submited</td>";
            
            //incident cathegory
            $C_ID = $Row['category_id'];
            $SQL = "SELECT * FROM category WHERE category_id = $C_ID";
            $Result = mysqli_query($DBconnection, $SQL);
            $ROW = mysqli_fetch_assoc($Result); 
                echo "<td>{$ROW['category_name']}</td>";
            
            //incident status
            $S_ID = $Row['status_id'];
            $SQL = "SELECT * FROM status WHERE status_id = $S_ID";
            $Result = mysqli_query($DBconnection, $SQL);
            $ROW = mysqli_fetch_assoc($Result); 
                echo "<td>{$ROW['status_name']}</td>";
            
            //View ticket
            echo "<td><a href='ViewTicket.php'><img src='img/logo.png' alt='logo link' width='25px' height='25px'></a></td>";
        
        echo "</tr>";
        
        }
    
}
>>>>>>> parent of 13fac04... “There are all kinds of courage,” said Dumbledore, smiling. “It takes a great deal of bravery to stand up to our enemies, but just as much to stand up to our friends.”  –The Philosopher’s Stone
