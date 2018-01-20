<?php
    require "php/requirements.php";
?>

<!DOCTYPE HTML>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/mainCSS.css">
        <link rel="icon" href="img/favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
        <title>Statistics</title>
    </head>
    <body>
        <div class="wrapper">
            <div class="header">
                <div class="logo">
                    <img src="img/logo.png" alt="Stenden eHelp">
                </div>
                <p>Stenden eHelp</p>
            </div>
            <div id="content-wrapper">
                <div id="sidebar">
                    <div class="userDetails">
                        <div class="clientName"><p><?php echo $_SESSION['name']; ?></p></div>
                        <div class="clientType"><p><?php echo $_SESSION['userType']; ?></p></div>
                    </div>
                    <div class="titleDivider"></div>
                    <div class="navWrapper">
                        <?= generateMenu() ?>
                    </div>
                </div>
                <div class="content">
                    <div class="titleBox"><p style="margin: -10px 0px 10px 0px">Statistics</p>
					<div class="tab"><p><a href="statistics2.php" class="linkS">Overall Statistics</a></div>
					<div class="tabOpen"><p>Detailed Statistics</p></div></div>
                    <!-- Beautiful content here -->
                    <?php
                    $sql= "select * from category" ;
                    $result= mysqli_query($conn,$sql);
                    echo "
                    <table class='fancy-table'>
                    <tr>
                        <th>Incident type</th>
                        <th>Times it accoured</th>
                    </tr>";

                    while($row=mysqli_fetch_assoc($result)){

                        $incident=$row['category_id'];
                        $sql2 = "select count(category_id) from incident where category_id=$incident";
                            $result2=mysqli_query($conn,$sql2);
                            $row2=mysqli_fetch_assoc($result2);

                        echo "
                        <tr>
                        <td>{$row['category_name']} </td>
                        <td>{$row2['count(category_id)']}</td>
                        </tr>";
                    }



                    echo "</table>";

                    ?>
                </div>
            </div>
            <div class="footer">
                <div class="terms">
                    <a href="terms.php" class="linkS"><p>Terms and conditions</p></a>
                </div>
                <div class="copyright"></div>
            </div>
        </div>
    </body>
</html>
