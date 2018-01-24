<?php
require "php/requirements.php";
require "php/conn.php";

$query = mysqli_query($conn, "SELECT count(*) AS amount, category.category_name  FROM incident INNER JOIN category on "
        . "category.category_id = incident.category_id GROUP BY category.category_name");
$QueryResult = mysqli_fetch_all($query);
$jsVAR = "";
foreach ($QueryResult as $row) {
    $jsVAR .= "{\"category_id\":\"{$row[1]}\", \"category_name\": \"{$row[0]}\"},";
}
?>

<!DOCTYPE HTML>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/mainCSS.css">
        <link rel="icon" href="img/favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
        <title>Statistics</title>
        <script src="js/amcharts.js" type="text/javascript"></script>
        <script src="js/serial.js" type="text/javascript"></script>
        <script src="js/themes/dark.js" type="text/javascript"></script>
        <script src="js/themes/black.js" type="text/javascript"></script>
        <script>
            var chart1;
            makeCharts("black", "#ffffff");
            function makeCharts(theme, bgColor, bgImage) {
                chart1 = AmCharts.makeChart("chartdiv1", {
                    type: "serial",
                    theme: "black",
                    dataProvider: [<?= $jsVAR ?>],
                    categoryField: "category_id",
                    startDuration: 1,

                    categoryAxis: {
                        gridPosition: "start"
                    },
                    valueAxes: [{
                            title: "Times occured"
                        }],
                    graphs: [{
                            type: "column",
                            title: "Incidents",
                            valueField: "category_name",
                            lineAlpha: 0,
                            fillAlphas: 0.8,
                            balloonText: "[[title]] in [[category]]:<b>[[value]]</b>"
                        }]
                });
            }
        </script>
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
                   
                    <div class="navWrapper">
                        <?= generateMenu() ?>
                    </div>
                </div>
                <div class="content" style="background-color:#282828;">
                    <div class="titleBox"><p style="margin: -10px 0px 10px 0px">Statistics</p>
                        <div class="tabOpen" style="float: right;"><p>Overall Statistics</p></div>
                        <div class="tab"><p><a href="statistics.php" class="linkS">Detailed Statistics</a></p></div></div>
                    <!-- Beautiful content here -->
                    <div id="chartdiv1" style="width: 600px; height: 400px;"></div>
                </div>
            </div>
            <div class="footer">
                <div class="terms">
                    <a href="terms.php" class="linkS"><p>Terms and conditions</p>
                </div>
                <div class="copyright"></div>
            </div>
        </div>
    </body>
</html>
