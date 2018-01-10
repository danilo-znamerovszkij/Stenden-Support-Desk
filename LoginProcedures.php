<?php

session_start();

if (isset($_POST['submit'])){
    //Checking if you pressed the submit button

    //include here DATABASE CONNECTION

    $UID = mysqli_real_escape_string($DBconnection, $_POST['username']);
    $PWD = mysqli_real_escape_string($DBconnection, $_POST['password']);




    //ERROR HANDLERS
    //CHECK if inputs are empty
    if (empty($UID) || empty ($PWD)){

    $_SESSION['loginError'] = "Please fill up all the fields.";
    header("Location: login.php?login=empty");
    exit(); //to be sure to end the code

    } else {

        $sql = "SELECT username, password FROM operator WHERE username='$UID'";
        $result =mysqli_query($DBconnection, $sql);
        $resultCheck = mysqli_num_rows($result);

        if ($resultCheck < 1){

          // user controll here

        $_SESSION['loginError'] = "Wrong username.";
        header("Location: login.php?login=error");
        exit(); //to be sure to end the code

        } else {

            if ($row = mysqli_fetch_assoc($result)){

                //De-hasing the password
                $hasedPwdCheck = password_verify($pwd, $row['password']);

                //Password check
                if ($hasedPwdCheck == false){

                    $_SESSION['loginError'] = "Wrong password.";
                    header("Location: login.php?login=error");
                    exit(); //to be sure to end the code

                } elseif ($hasedPwdCheck == true){
                    //IF we didn't hash the password skip to this part


                    //LOGIN the user happens here
                    $_SESSION['o_id'] = $row['operator_id'];
                    $_SESSION['o_name'] = $row['operator_name'];
                    $_SESSION['o_phone'] = $row['phone'];
                    $_SESSION['o_email'] = $row['email'];
                    $_SESSION['o_username'] = $row['username'];
                    $_SESSION['o_photo'] = $row['operator_photo'];

                    header("Location: index.php");
                    exit(); //to be sure to end the code

                }
            }
        }
    }
} else { //TODO do the error codes and implement them into login.php

    header("Location: homepage.php?login=error"); //CHECK the name of the page you want to go back
    exit(); //to be sure to end the code
}

?>
