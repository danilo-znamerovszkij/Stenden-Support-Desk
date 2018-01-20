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
                    <div class="titleBox"><p>Terms and conditions</p></div>
                    <!-- Beautiful content here -->
                    <h1>Privacy statement</h1>
                    <p>
                    Stenden eHelp  is committed to protecting your privacy, and we handle all sensitive information (including personal data) with care. This means, among other things, that:
                    <ul>
                        <li>We clearly state the purposes for which we process personal data in this Privacy Statement;</li>
                        <li>We first ask for your express permission to process your personal data, in those cases where your permission is required;</li>
                        <li>We take appropriate security measures to protect your personal data, and we demand the same from any third parties that process personal data on our behalf;</li>
                        <li>We respect your right to inspect and correct your personal data and have it deleted if required.</li>
                    </ul>
                    This Privacy Statement explains for what purposes we use your personal data and whom you can contact with any questions you may have. We therefore recommend that you carefully review this Privacy Statement.
                    We regularly update this Privacy Statement, which means it is subject to change. The Privacy Statement was most recently updated on 19th  October 2017.
                    <h2>What types of personal data do we process?</h2>
                    Stenden eHelp processes your personal data because you are using our services and/or because you have shared this data with our institution. Below is a list of the types of personal data we process.
                    <ul>
                        <li>First name and surname</li>
                        <li>Sex</li>
                        <li>Address</li>
                        <li>Telephone number</li>
                        <li>Email address</li>
                    </ul>
                    Any other personal details you actively share in various correspondence or by telephone, for example
                    <ul>
                        <li>Location details</li>
                        <li>Details about your activities on our website</li>
                        <li>Your IP address</li>
                        <li>Type of internet browser and type of device used</li>
                    </ul>
                    <h2>How long do we store data?</h2>
                    Vinlerd will not keep your personal data any longer than is strictly necessary in order to achieve the purposes for which your data is being collected. We retain the data for a period of four years.
                    <h2>Sharing data with third parties</h2>
                    Vinlerd will share your personal data with various third parties if this is necessary for the performance of the agreement and in order to satisfy any statutory obligation. We enter into third-party data processing agreements with companies that process your data on our behalf in order to ensure a consistent level of security and confidentiality for your data. Vinlerd will remain responsible for these data processing operations. In addition, Vinlerd  also shares your personal data with third parties, but only with your express permission.
                    <h2>Tracking website visits</h2>
                    Vinlerd uses functional, analytical and tracking cookies to monitor the use of its website. A cookie is a small text file that is stored in the browser of your computer, tablet or smartphone during your first visit to this website. The first type of cookies we use is called ‘permanent cookies’, which we use for strictly technical purposes: we use these to improve the website’s functionality and ensure it operates properly. These cookies allow our website to remember your preferred settings, for example, and help us to improve the quality of the website.
                    The second type of cookies allows us to track your browsing activity across the website, thereby allowing us to offer you personalised content and advertisements. During your first visit to our website, we already informed you of these cookies and asked for your permission to use them. You can disable cookies by changing your browser settings; this will prevent cookies from being stored on your computer. In addition, you can also delete any previously stored information in your browser settings.
                    Third parties – including advertisers and/or social media companies – also store cookies on this website.
                    <h2>Custom Audiences</h2>
                    If you have given us permission to do so, Vinlerd  will also use your email address for Custom Audience targeting on Facebook. For this purpose, we code your email address by hashing it. Hashing is a technique whereby your email address is converted into a unique code; a technique which is also used to be able to securely check passwords. We only share the hash value with Facebook and not your unencrypted email address. Additional information about Facebook's policy is available regarding the collection, processing, use, purpose, and scope of data. This also includes privacy settings.
                    If you would like to block not only Facebook adverts by Vinlerd  but also content by third parties, you can get more information about how to block third-party advertising.
                    Please note: If you have used one of the options above to block targeted Facebook advertising, you may still see Vinlerd advertising on Facebook. This is the case, for example, if Facebook links your profile to a general advertising campaign launched by Vinlerd. Unfortunately, this is a process over which we have no control.
                    <h2>Security</h2>
                    Vinlerd  is committed to protecting your data and has taken appropriate measures to prevent misuse, loss, unauthorised access, unwanted disclosure and unauthorised modification.

                     </div>
            </div>
            <div class="footer">
                <div class="terms">
                    <p>Terms and conditions</p>
                </div>
                <div class="copyright"></div>
            </div>
        </div>
    </body>
</html>
