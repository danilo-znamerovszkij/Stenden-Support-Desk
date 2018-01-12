<?php

$conn = mysqli_connect("localhost", "root", "", "ssd") or die('We\'re sorry. The database connection could not be established.');

// Shows database errors in the browser, instead of in PHPMyAdmin
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);