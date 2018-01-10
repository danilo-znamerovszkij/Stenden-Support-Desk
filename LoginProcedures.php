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
		header("Location: login.php");
		exit(); //to be sure to end the code

    } else {

        $sql = "SELECT username, password FROM operator WHERE username='$UID'";
        $result =mysqli_query($DBconnection, $sql);
        $resultCheck = mysqli_num_rows($result);

        if ($resultCheck < 1){

			$sql2 = "SELECT username, password FROM client WHERE username='$UID'";
			$result2 =mysqli_query($DBconnection, $sql);
			$resultCheck2 = mysqli_num_rows($result);

			
			//user check
			if ($resultCheck2 < 1){
			
				$_SESSION['loginError'] = "Wrong username.";
				header("Location: login.php?login=error");
				exit(); //to be sure to end the code
		
			}else{
				
				if ($row = mysqli_fetch_assoc($result2)){

					//De-hasing the password
					$hasedPwdCheck = password_verify($pwd, $row['password']);

					//Password check
					//if ($hasedPwdCheck == false){

						$_SESSION['loginError'] = "Wrong password.";
						//header("Location: login.php?login=error");
						//exit(); //to be sure to end the code

					//} elseif ($hasedPwdCheck == true){
						//IF we didn't hash the password skip to this part


						//LOGIN the user happens here
						$_SESSION['u_id'] = $row['client_id'];
						$_SESSION['u_name'] = $row['client_name'];
						$_SESSION['u_phone'] = $row['client_phone_number'];
						$_SESSION['u_email'] = $row['client_email'];
						$_SESSION['u_license'] = $row['has_maintenance_license'];
						$_SESSION['u_username'] = $row['username'];
						$_SESSION['u_contact_id'] = $row['contact_id'];

						header("Location: index.php");
						exit(); //to be sure to end the code

					}
				}	
				
			}
			
		//operator login
        } else {

            if ($row = mysqli_fetch_assoc($result)){

                //De-hasing the password
                //$hasedPwdCheck = password_verify($pwd, $row['password']);

                //Password check
                //if ($hasedPwdCheck == false){

                    $_SESSION['loginError'] = "Wrong password.";
                    //header("Location: login.php?login=error");
                    //exit(); //to be sure to end the code

                //} elseif ($hasedPwdCheck == true){
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
