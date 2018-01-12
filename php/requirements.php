<?php
session_start();

require "conn.php";
require "permissions.php";
require "functions.php";

// Is the user even logged in?
if(!isset($_SESSION['username'])){
    redirect('login.php?fail');
}

// Can the user see this page?
if(!user_can_see_page()) {
    if($_SESSION['userType'] == "operator"){
        redirect('tickets.php');
    }

    redirect('faq.php');
}