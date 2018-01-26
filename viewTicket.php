<?php
require "php/requirements.php";

if (!isset($_GET['ticket']))
    die('Invalid Request. Please try again.');

// Show different information based on the user type
if (is_employee())
{
    $sql = "SELECT * FROM incident
                INNER JOIN users AS client ON incident.client_id = client.id
                INNER JOIN category ON incident.category_id = category.category_id
                INNER JOIN status ON incident.status_id = status.status_id
                WHERE incident.incident_id = '{$_GET['ticket']}'
                ORDER BY incident_id DESC";
} else
{
    $sql = "SELECT *, IFNULL(incident.operator_id, '0') FROM incident
                LEFT OUTER JOIN users ON incident.operator_id = users.id
                INNER JOIN category ON incident.category_id = category.category_id
                INNER JOIN status ON incident.status_id = status.status_id
                WHERE incident.incident_id = '{$_GET['ticket']}'
                ORDER BY incident_id DESC";
}
$ticket = mysqli_fetch_assoc(mysqli_query($conn, $sql));

//if($ticket == NULL) die('There is no ticket associated with the given ID.');
if (is_employee() == TRUE)
{

    if (isset($_POST['submit']))
    {
        echo'<meta http-equiv="refresh"content="0";url="http://localhost/PhpProject3/Stenden-Support-Desk/MyTickets.php">';

        //if ((isset($_POST['solution'])) && (!empty($_POST['category_id']))) {

        $problem = $_POST['solution'];
        $description = $_POST['category_id'];
        $status = $_POST['status_id'];
        /* PREPARED STATEMENTS FOR ADDING TICKETS */
        $sql = "UPDATE incident set solution = ?, status_id = ?, category_id = ? where incident_id = '{$_GET['ticket']}'";
//                                $sql = "INSERT INTO incident(status_id, solution, description) VALUES (?, ?, ?) WHERE incident_id = '{$ticket['incident_id']}';";
        $stmt = mysqli_stmt_init($conn);
        mysqli_stmt_prepare($stmt, $sql);
        mysqli_stmt_bind_param($stmt, "sss", $problem, $status, $description);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_close($stmt);
    }
} else
{
    if (isset($_POST['submit']))
    {
        echo'<meta http-equiv="refresh"content="0";url="http://localhost/PhpProject3/Stenden-Support-Desk/MyTickets.php">';

        //if ((isset($_POST['solution'])) && (!empty($_POST['category_id']))) {

        $problem = $_POST['description'];
        /* PREPARED STATEMENTS FOR ADDING TICKETS */
        $sql = "UPDATE incident set description = ? where incident_id = '{$_GET['ticket']}'";
//                                $sql = "INSERT INTO incident(status_id, solution, description) VALUES (?, ?, ?) WHERE incident_id = '{$ticket['incident_id']}';";
        $stmt = mysqli_stmt_init($conn);
        mysqli_stmt_prepare($stmt, $sql);
        mysqli_stmt_bind_param($stmt, "s", $problem);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_close($stmt);
    }
}


if (isset($_POST['message']))
{

    $message = $_POST['message'];

    $incident_id = $_GET['ticket'];
    $user_id = $_SESSION['id'];
    /* PREPARED STATEMENTS FOR ADDING TICKETS */
    $sql = "INSERT INTO messages (message, incident_id, user_id) VALUES  (?,?,?)";
//                                $sql = "INSERT INTO incident(status_id, solution, description) VALUES (?, ?, ?) WHERE incident_id = '{$ticket['incident_id']}';";
    $stmt = mysqli_stmt_init($conn);
    mysqli_stmt_prepare($stmt, $sql);
    mysqli_stmt_bind_param($stmt, "sii", $message, $incident_id, $user_id);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_close($stmt);
}
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

                    <form action="viewTicket.php?ticket=<?= $_GET['ticket'] ?>" method="POST">
                        <input type="hidden" name="id" value="<?= $ticket['incident_id'] ?>">


                        <div class="viewTicketData">
                            <p><b>Start date: </b><?= $ticket['start_date'] ?></p>
                            <p><b>End date: </b><?= $ticket['end_date'] != NULL ? $ticket['end_date'] : "N/A" ?></p>
                            <p><b>Status: </b><?= $ticket['status_name'] ?></p>
                            <p><b>Category: </b><?= $ticket['category_name'] ?></p>
                        </div>


                        <?php if (is_employee())
                        { ?>
                            <p>Client name</p>
                            <p class="isValue"><?= $ticket['name'] ?></p>

                            <p>Status</p>
                            <select name="status_id">
                                <?php
                                foreach (get_ticket_statuses() as $status)
                                {
                                    $checked = $status['status_name'] == $ticket['status_name'] ? "selected" : "";
                                    ?>
                                    <option value="<?= $status['status_id'] ?>"<?= $checked ?>><?= $status['status_name'] ?></option>
                    <?php } ?>
                            </select>

                            <p>Category</p>
                            <select name="category_id">
                                <?php
                                foreach (get_ticket_categories() as $category)
                                {
                                    $checked = $category['category_name'] == $ticket['category_name'] ? "selected" : "";
                                    ?>
                                    <option value="<?= $category['category_id'] ?>"<?= $checked ?> > <?= $category['category_name'] ?></option>
                     <?php } ?>
                            </select>

                            <p>Description</p>
                            <p class="isValue"><?= $ticket['description'] ?></p>

                            <p >Solution</p>
                            <textarea class="viewTicketText" name="solution"><?= $ticket['solution'] ?></textarea>
                            <p class="client_view2">
                            <input type="submit"  name="submit" value ='Submit solution'>
                            </p>

                     <?php if ($ticket['solution'])
                            { ?>
                            <div class="client_view">
                                    <p><b>Message</b></p>
                                    <form action="viewTicket.php?ticket=<?= $_GET['ticket'] ?>" method="POST">
                                        <textarea class="viewTicketText" name="message"></textarea>
                                        <p>
                                        <input type="submit"  name="messageSubmit" value ='Send'>
                                        </p>
                                    </form>
                                <?php } ?>
                            </div>
                                <?php } else
                                { ?> <!-- If not an employee -->

                            <div class="viewTicketEmployee">
                         <?php if (isset($ticket['operator_id']))
                         { //if there is already an operator ?>
                                    <div style="float:right;">

                                    <?php if ($ticket['operator_id'] != NULL)
                                    { ?>
                                            <p><img src="PICTURES\<?= $ticket['operator_id']; ?>.jpg" alt="operator's photo" width='150' height='200'/></p>
                         <?php } ?>
                                        <p><b>Employee name: </b></p>
                                        <p><?= $ticket['name'] ?></p>

                                    </div>
                     <?php } ?>
                            </div>

                            <div class="client_view">
                                <p><b>Description</b></p>
                                <!-- Can the user change this after he/she has submitted a ticket? -- No -->
                                <p class="viewTicketText" name="description"><?= $ticket['description'] ?></p>

                                <p><b>Solution</b></p>
                                <p class="isValue"><?php if ($ticket['solution']) echo $ticket['solution'];
                             else echo "There is no solution yet" ?></p>

                            <?php if ($ticket['solution'])
                            { ?>
                                    <p><b>Message</b></p>
                                    <form action="viewTicket.php?ticket=<?= $_GET['ticket'] ?>" method="POST">
                                        <textarea class="viewTicketText" name="message"></textarea>

                                        <input type="submit"  name="messageSubmit" value ='Send'>
                                    </form>
                            <?php } ?>
                            </div>

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
