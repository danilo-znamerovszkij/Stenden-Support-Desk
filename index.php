<?php

session_start();

require "php/conn.php";

if (isset($_SESSION['username'])) {
  echo $_SESSION['username'];
}

function do_query($sql, $bindArray = []){
    require "php/oopconn.php";

    if(!empty($bindArray)){
        $sth = $conn->prepare($sql);
        $sth->execute($bindArray);
        return $sth->fetchAll();
    }
    else {
        return $conn->query($sql)->fetchAll();
    }
}

function getField($arr, $name){
    if(isset($arr[$_SESSION['userType']."_". $name])){
        return $arr[$_SESSION['userType']."_". $name];

    } else
        {
        return NULL;
    }
}


$clientInfo = do_query("SELECT * FROM {$_SESSION['userType']} WHERE {$_SESSION['userType']}_id = ?", [$_SESSION['u_id']])[0];


//Important leave alone
echo getField($clientInfo, "id");

  var_dump($_SESSION['username']);
?>

<!DOCTYPE HTML>
<html>
    <head>
        <title>Welcome to Stenden eHelp</title>
    </head>
    <body>
        <a href="login.php">Login page</a>
        <a href="logout.php">Logout</a>
        <a href="submitTicket.php">Submit ticket</a>


    </body>
</html>
