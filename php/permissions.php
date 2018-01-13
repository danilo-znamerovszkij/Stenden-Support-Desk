<?php

// Howdy!

// This is my idea of a simple and easy to use permission system
// Basically, it uses a lookup 'table', to determine if a user can do a certain action on a resource (page)
// With action I mean something like 'view' and with a resource I mean a page like 'tickets.php'.

// Let's start off with creating the lookup table for each user type
// Note that this will have to be changed, since at this time I don't quite know how much pages you are going to have

$permissionTable = [
    "client" => [
        "view" => ['faq.php', 'submitTicket.php', 'MyTickets.php'],
        "edit" => ['viewTicket.php'],
        "delete" => []
    ],
    "employee" => [
        "view" => ['dashboard.php', 'my_tickets.php', 'open_tickets.php', 'my_account.php'],
        "edit" => [],
    ],
    "team leader" => [
        "view" => ['tickets.php', 'MyTickets.php', 'messages.php', 'statistics.php', 'faq.php'],
        "edit" => ['viewTicket.php'],
    ]
    // ... and much more of those beautiful account types
];

// So now that we have the lookup table in place,
// Let's make a function that checks whether a user can do an action on a resource (page)

// So now that we have all the required variables, we can create the function.
// The function takes two parameters:
// The first one is for the action, for example 'view' and the second parameter is for the resource, which is the page name
function user_can($action, $resource){
    // Use (require) the lookup table.
    global $permissionTable;

    // First, we need the permissions associated with the user
    $permissions = $permissionTable[strtolower($_SESSION['userType'])];

    // Now, Let's check if the user is to do the action on the resource.

    // First step is checking whether the action even exists in the lookup table
    // If it doesn't, the user cannot do this action on the resource and therefor we return false.
    if(!isset($permissions[$action])) return false;

    // Okay, so the action exists. But is the action allowed on the resource?
    if(in_array($resource, $permissions[$action])){
        // It appears so. Nice!
        // The user can do this action on the resource.
        return true;
    } else {
        // Ah shucks! Nice try tho.
        return false;
    }
}
