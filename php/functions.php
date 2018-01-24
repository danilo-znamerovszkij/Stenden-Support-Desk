<?php

// Can the user see this page (based on permissions)
function user_can_see_page(){
    return user_can('view', basename($_SERVER['SCRIPT_FILENAME']))
        || user_can('edit', basename($_SERVER['SCRIPT_FILENAME']));
}

// Determines if a user is an employee
function is_employee(){
    return !($_SESSION['userType'] == "Client"||$_SESSION['userType']== "No license");
}

// Does the user have a valid license?
function has_license(){
    // TODO: Implement this function
    return true;
}

// Returns the possible ticket statuses
function get_ticket_statuses(){
    global $conn;
    $sql = "SELECT DISTINCT(status_name), status_id FROM status";
    $qry = mysqli_query($conn, $sql);
    $statuses = [];
    while($status = mysqli_fetch_assoc($qry)){
        $statuses[] = $status;
    }
    return $statuses;
}

// Returns the possible ticket statuses
function get_ticket_categories(){
    global $conn;
    $sql = "SELECT DISTINCT(category_name), category_id FROM category";
    $qry = mysqli_query($conn, $sql);
    $categories = [];
    while($status = mysqli_fetch_assoc($qry)){
        $categories[] = $status;
    }
    return $categories;
}

// Generates the menu based on what users can view in the permissions
function generateMenu(){

    global $permissionTable;

    // The user needs a license.
    if(!has_license()) return "";

    $html = "";

    foreach($permissionTable[strtolower($_SESSION['userType'])]['view'] AS $permission){


        $fileName = ucfirst(str_replace('_', ' ', $permission));
        $fileName = str_replace('.php', '', $fileName);

        if($permission == "MyTickets.php") $fileName = "My Tickets";
        if($permission == "submitTicket.php") $fileName = "Submit a Ticket";
        if($permission == "faq.php") $fileName = "FAQ";
        if ($permission == "terms.php" || $permission == "statistics2.php") $fileName = "NULL";

        $img = str_replace("php", "png", $permission);

        if ($fileName != "NULL"){
        $html .= "<a href='$permission'>
                <div class='navItem'>
                    <img src='img/menu/$img' alt='$fileName'>
                    <p>$fileName</p>
                </div>
              </a>";
    }
    }

    $html .= "<a href=\"logout.php\">
                    <div class=\"navItem\">
                        <img src='img/menu/logout.png' alt='Logout'>
                        <p>Log Out</p>
                    </div>
                </a>";
    
    return $html;
}

function redirect($url){
    header("Location: $url");
    exit;
}

function escape($row) {
    return htmlspecialchars($row, ENT_QUOTES, 'UTF-8');
}
