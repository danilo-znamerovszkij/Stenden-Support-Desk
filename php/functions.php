<?php

function user_can_see_page(){
    return user_can('view', basename($_SERVER['SCRIPT_FILENAME']));
}

function is_employee(){
    return !($_SESSION['userType'] == "Client");
}

function has_license(){
    // TODO: Implement this function
    return true;
}

function generateMenu(){

    global $permissionTable;

    // The user needs a license.
    if(!has_license()) return "";

    $html = "";

    foreach($permissionTable[strtolower($_SESSION['userType'])]['view'] AS $permission){

        if(strtolower(basename($_SERVER['SCRIPT_FILENAME'])) == strtolower($permission)) continue;

        $fileName = ucfirst(str_replace('_', ' ', $permission));
        $fileName = str_replace('.php', '', $fileName);

        if($permission == "MyTickets.php") $fileName = "My Tickets";

        $html .= "<a href='$permission'>
                <div id='navItem'>
                    <p>$fileName</p>
                </div>
              </a>";
    }

    $html .= "<a href=\"logout.php\">
                    <div id=\"navItem\">
                        <p>Log Out</p>
                    </div>
                </a>";

    return $html;
}

function redirect($url){
    header("Location: $url");
    exit;
}
