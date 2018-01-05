<?php

session_start();

if (isset($_POST['submit'])){ //Name might be changed
    //Checking if you pressed the submit button
    
    //include here DATABASE CONNECTION
    
    $UID = mysqli_real_escape_string($DBconnection, $_POST['uid']);
    $PWD = mysqli_real_escape_string($DBconnection, $_POST['pwd']);
    //REMEMBER to check the names
    //DBconnection is the connection to the database; UID is the user ID/name; PWD is password
    
    
    //ERROR HANDLERS
    //CHECK if inputs are empty
    if (empty($UID) || empty ($PWD)){ //REMEMBER to check the names
        
    header("Location: homepage.php?login=empty"); //CHECK the name of the page you want to go back
    exit(); //to be sure to end the code
    
    } else {
        
        $sql = "SELECT * FROM users WHERE user_uid='$UID'";//CHECK the names for TABLE AND COLUMN
        $result =mysqli_query($DBconnection, $sql);
        $resultCheck = mysqli_num_rows($result);
        
        if ($resultCheck < 1){
            
        header("Location: homepage.php?login=error"); //CHECK the name of the page you want to go back
        exit(); //to be sure to end the code    
        
        } else {
            
            if ($row = mysqli_fetch_assoc($result)){
                
                //De-hasing the password
                $hasedPwdCheck = password_verify($pwd, $row['user_pwd']); //CHECK the names for the password COLUMN
                
                if ($hasedPwdCheck == false){
                    
                    header("Location: homepage.php?login=error"); //CHECK the name of the page you want to go back
                    exit(); //to be sure to end the code    
                    
                } elseif ($hasedPwdCheck == true){
                    //IF we didn't hash the password
                    
                    
                    //LOGIN the user happens here
                    
                    $_SESSION['u_id'] = $row['user_id']; //CHECK the names for the user name COLUMN
                    $_SESSION['u_first'] = $row['user_first']; //CHECK the names for the first name COLUMN
                    $_SESSION['u_last'] = $row['user_last']; //CHECK the names for the last name COLUMN
                    $_SESSION['u_email'] = $row['user_email']; //CHECK the names for the email COLUMN
                    $_SESSION['u_uid'] = $row['user_uid']; //CHECK the names for the user ID COLUMN
                    
                    header("Location: homepage.php?login=success"); //CHECK the name of the page you want to go back
                    exit(); //to be sure to end the code    
                    
                }                
            }            
        }        
    }    
} else {
    
    header("Location: homepage.php?login=error"); //CHECK the name of the page you want to go back
    exit(); //to be sure to end the code    
}

?>