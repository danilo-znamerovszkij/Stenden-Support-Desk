<?php
require "php/requirements.php";

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


//ticket displaying
if (mysqli_num_rows($qry) == 0) {
    echo "<h1>You still don't have any ticket submitted</h1>";
} else {
    
    echo "<table border='2'>";
    
    echo "<tr>";
        echo "<td>ID</td>";
        if(is_employee()){
            echo "<td>Client Name</td>";
        } else {
            echo "<td>Operator Name</td>";
        }
        echo "<td>Date Submitted</td>";
        echo "<td>Incident Type</td>";
        echo "<td>Status</td>";
        echo "<td>View Ticket</td>";
    echo "</tr>";

    while ($row = mysqli_fetch_assoc($qry)){
        echo "<tr>";
            echo "<td>{$row['incident_id']}</td>";
            echo "<td>{$row['name']}</td>";
            
            //Submitted Time
            echo "<td>{$row['start_date']}</td>";
            echo "<td>{$row['category_name']}</td>";
            
            //incident status
            echo "<td>{$row['status_name']}</td>";
            
            //View ticket
            echo "<td><a href='ViewTicket.php'><img src='img/logo.png' alt='logo link' width='25px' height='25px'></a></td>";
        
        echo "</tr>";
    }
    echo "</table>";
}