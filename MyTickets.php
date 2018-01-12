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