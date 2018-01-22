<?php
    session_start();

require "php/conn.php";
require "php/permissions.php";
require "php/functions.php";

    if (isset($_POST['submit'])&&isset($_POST['assign'])) { //updating the db

      if ($_SESSION['userType'] == "Team Leader") {
        $id  = $_POST['id'];
        $assignQuery = "UPDATE incident SET operator_id = '{$_POST['assign']}', status_id = 2 WHERE incident.incident_id =  '$id'";
       // header("refresh:0");
      }else{

        $id  = $_POST['id'];
        $assignQuery = "UPDATE incident SET operator_id = '{$_SESSION['id']}', status_id = 2 WHERE incident.incident_id =  '$id'";
      }
      mysqli_query ($conn, $assignQuery);


    }

    // Show different information based on the user type
    if(is_employee()){
        $sql = "SELECT * FROM incident
                        INNER JOIN users ON incident.client_id = users.id
                        INNER JOIN category ON incident.category_id = category.category_id
                        INNER JOIN status ON incident.status_id = status.status_id
                        WHERE status_name = 'Not assigned'
                        ORDER BY incident_id DESC";

        $sql1 = "SELECT * FROM incident
                        INNER JOIN users ON incident.client_id = users.id
                        INNER JOIN category ON incident.category_id = category.category_id
                        INNER JOIN status ON incident.status_id = status.status_id
                        WHERE incident.status_id IN (2,3,4)
                        ORDER BY start_date ASC";

    } else {
        $sql = "SELECT * FROM incident
                        INNER JOIN users ON incident.operator_id = users.id
                        INNER JOIN category ON incident.category_id = category.category_id
                        INNER JOIN status ON incident.status_id = status.status_id
                        WHERE status_name = 'Not assigned'
                        ORDER BY incident_id DESC";
    }

    $tickets = mysqli_query($conn, $sql);
    $ticketsAll = mysqli_query($conn, $sql1);

    //check with mysqli_fetch_assoc amount of operators and make the thing dynamic on the page
    $userString = "SELECT * FROM users WHERE position_id = 2";
    $userQuery = mysqli_query($conn, $userString);



?>

<!DOCTYPE HTML>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/mainCSS.css">
        <link rel="icon" href="img/favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
        <title>All tickets</title>
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
                <div class="titleBox"><p>All (non closed) tickets</p></div>

                <?php if($tickets->num_rows == 0) { ?>
                    <p>Sorry. There are no tickets at this time.</p>
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
                            <th>Assign Ticket</th>
                        </tr>

                <?php while ($row = mysqli_fetch_assoc($tickets)){
                          $userQuery = mysqli_query($conn, $userString);
                           ?>
                            <tr>
                                <td><?= $row['incident_id'] ?></td>
                                <td><?= $row['name'] ?></td>
                                <td><?= $row['start_date'] ?></td>
                                <td><?= $row['category_name'] ?></td>
                                <td><?= $row['status_name'] ?></td>
                                <td><a href='ViewTicket.php?ticket=<?= $row['incident_id'] ?>'><img src='img/logo.png' alt='logo link' width='25' height='25'></a></td>
                                <td><form action="tickets.php" method="post">
                                    <input type="hidden" name="id" value="<?= $row['incident_id'] ?>">

                                    <?php
                                    if ($_SESSION['userType'] == "Team Leader"){?> <!-- team leader view -->
                        

                                      <select name='assign' id='input7'>
                                        <option value="NULL" disabled selected>Choose Operator</option>

                                        <?php
                                        echo "<option value=" . $_SESSION['id']. ">" . $_SESSION['name'] . "</option>";

                                        while($row = mysqli_fetch_assoc($userQuery)){

                                          echo "<option value=" . $row['id'] . ">" . $row['name'] . "</option>";
                                        }

                                        mysqli_free_result($userQuery);

                                      echo "</select>";
                                      echo "<input style='margin-left:10px;' type='submit' value='Assign' name='submit'>";

                                    }else{//operator view
                                        ?> <input type="submit" value="Assign to me" name="submit">
                                      <!-- <input type="submit" value="Assign to me" name="submit"> -->
                                    <?php } ?>

                                  </form></td>
                            </tr>
                        <?php } ?>
                <?php } ?>

                <!-- Secondary table Start -->

                  <?php if($tickets->num_rows != 0) { ?>

                            <table class="fancy-table">
                              <div class="titleBox"><p>All assigned tickets</p></div>
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
                                    <th>Operator name</th>
                                </tr>

                        <?php while ($row1 = mysqli_fetch_assoc($ticketsAll)){

                          $sqlOperator = "SELECT name FROM users WHERE id = '".$row1['operator_id']."'";

                                  $userQuery = mysqli_query($conn, $userString);
                                  $opName = mysqli_query($conn, $sqlOperator);
                                  $opName = mysqli_fetch_assoc($opName);
                                   ?>
                                    <tr>
                                        <td><?= $row1['incident_id'] ?></td>
                                        <td><?= $row1['name'] ?></td>
                                        <td><?= $row1['start_date'] ?></td>
                                        <td><?= $row1['category_name'] ?></td>
                                        <td><?= $row1['status_name'] ?></td>
                                        <td><a href='ViewTicket.php?ticket=<?= $row1['incident_id'] ?>'><img src='img/logo.png' alt='logo link' width='25px' height='25px'></a></td>
                                        <td> <?= $opName['name'] ?></td>
                                    </tr>
                            
                                <?php } ?>
                              <?php } ?>
                            </table>
        </div>
            

                                    
            </div>
            <div class="footer">
                <div class="terms">
                    
                    <p>Terms and conditions</p>
                </div>
                <div class="copyright"></div>
            </div>
        
              </body>
          </html>
