<?php

 require "php/requirements.php";

    if (isset($_POST['submit']))
        {
 
            if (empty($_POST['uname']) || empty($_POST['phone']) || empty($_POST['email']) 
                || empty($_POST['username']) || empty($_POST['password']) || empty($_POST['has_maintenance_license'])
                || empty($_POST['position'])|| empty($_POST['contactId']))
            {
                echo "<p>You must enter all information. Click your
                browser's Back button to return to the Add record form and fill everything.</p>";
                echo                   
                    $name = stripslashes($_POST['name']);
                    $phone = stripslashes($_POST['phone']);
                    $email = stripslashes($_POST['email']);
                    $username = stripslashes($_POST['username']);
                    $password = stripslashes($_POST['password']);
                    $has_maintenance_license = stripslashes($_POST['has_maintenance_license']);
                    $position_id = stripslashes($_POST['position']);
                    $contact_id = stripslashes($_POST['contactId']);
            } else
            {
              
                    mysqli_select_db($conn, 'ssd');
                   // $isEmployee = stripslashes($_POST['is_Employee']);
                    $name = $_POST['uname'];
                    $phone = stripslashes($_POST['phone']);
                    $email = stripslashes($_POST['email']);
                    $username = stripslashes($_POST['username']);
                    $password = stripslashes($_POST['password']);
                    $has_maintenance_license = stripslashes($_POST['has_maintenance_license']);
                    $position_id = stripslashes($_POST['position']);
                    $contact_id = stripslashes($_POST['contactId']);
                    
                    $sqlString="INSERT INTO 
                        users( 'isEmployee',
                        'name', 'phone',
                        'email', 'username', 'password', 
             'has_maintenance_license', 'position_id', 'contact_id') 
             VALUES (0,$name ,$phone ,$email,$username,$password, $has_maintenance_license, $position_id,$contact_id )";
         $QueryResult = mysqli_query($conn, $sqlString);
                    echo "The record successfully replaced";


                    mysqli_close($DBConnect);
                }
            }
        
 ?>

<!DOCTYPE html>
<html>
<head>
	<title>Signup</title>
</head>
<body>
  <form method="post" action="#">
    <input type="text" name="uname" placeholder="name">
    <input type="text" name="phone" placeholder="phone">
    <input type="text" name="email" placeholder="email">
    <input type="text" name="username" placeholder="username">
    <input type="text" name="password" placeholder="password">
    <input type="text" name="has_maintenance_license" placeholder="has_maintenance_license">
    <input type="text" name="position" placeholder="position">
    <input type="text" name="contactId" placeholder="contactID">
    <p><input type="submit" value="Submit" name="submit" /></p>
  </form>
</body>
</html>
