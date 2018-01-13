<?php
    require "php/requirements.php";

    // Let's get those juicy FAQ's (Questions that are closed)
    $sql = "SELECT description, solution, category_name FROM incident 
                INNER JOIN category ON incident.category_id = category.category_id
                INNER JOIN status ON incident.status_id = status.status_id
                WHERE status_name = 'Closed'";
    $faqs = mysqli_query($conn, $sql);
?>

<!DOCTYPE HTML>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/mainCSS.css">
        <title>FAQ</title>
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
                    <div class="titleBox"><p>Frequently Asked Questions</p></div>

                    <?php if(has_license()){ ?>
                        <div class="faq">

                            <?php if($faqs->num_rows == 0){ ?>
                                <p>Sorry. Right now there are no FAQ's yet.</p>
                            <?php } ?>
                            <?php while($row = mysqli_fetch_assoc($faqs)){ ?>
                                <article>
                                    <h2>Q: <?= $row['description'] ?> (<?= $row['category_name'] ?>)</h2>
                                    <p>A: <?= $row['solution'] ?></p>
                                </article>
                            <?php } ?>


                            <!--                  <article>-->
                            <!--                      <h2>Q: There is no display after I log in?</h2>-->
                            <!--                      <p>A: Make sure you monitor is connected to a power source. After refresh the page. If nothing changes log out of the system and log back in. If the problem persists reinstall the system</p>-->
                            <!--                  </article>-->
                            <!---->
                            <!--                  <article>-->
                            <!--                      <h2>Q: What if my problem is not in the available tickets?</h2>-->
                            <!--                      <p>A:  (Only applies to those with a maintenance license): If you scroll to the bottom of the page you will see a section where you can add a ticket yourself with your own descriptions</p>-->
                            <!--                  </article>-->
                            <!---->
                            <!--                  <article>-->
                            <!--                      <h2>Q: What do I do if my ticket does not submit?</h2>-->
                            <!--                      <p>A: (Only applies to those with a maintenance license): Refresh the page, if the problem persists then log out and log back into the system</p>-->
                            <!--                  </article>-->
                            <!---->
                            <!--                  <article>-->
                            <!--                      <h2>Q: What do I do if my backup is lost?</h2>-->
                            <!--                      <p>A: Send us a ticket and we will re upload your backup into the system</p>-->
                            <!--                  </article>-->
                            <!---->
                            <!--                  <article>-->
                            <!--                      <h2>Q: I am unable to see the picture of the person working on my ticket</h2>-->
                            <!--                      <p>A: (Only applies to those with a maintenance license): Refresh the page, if nothing changes log out of the system and log back in. If the problem persists send us a ticket</p>-->
                            <!--                  </article>-->
                            <!---->
                            <!--                  <article>-->
                            <!--                      <h2>Q: (Only applies to those with a maintenance license) No one has taken my ticket</h2>-->
                            <!--                      <p>A: If this occurs it means our staff is overwhelmed please be patient and we will get to your ticket as soon as possible</p>-->
                            <!--                  </article>-->
                            <!---->
                            <!--                  <article>-->
                            <!--                      <h2>Q: What if my details are incorrect</h2>-->
                            <!--                      <p>A: Send us a ticket within the correct information and we will update your details</p>-->
                            <!--                  </article>-->

                        </div>
                    <?php } else { ?>
                        <p>You are not supposed to see this page.</p>
                    <?php } ?>
                </div>
                <div class="footer">
                    <div class="terms">
                        <p>Terms and conditions</p>
                    </div>
                    <div class="copyright"></div>
                </div>
            </div>
        </div>
    </body>
</html>