<?php 
    mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
    $con = mysqli_connect('localhost','root', '','carrentalproject');
    // Change the 4th parameter to the name of the database in your XAMPP where you import the database scheme file.
    if(!$con)
    {
        echo 'please check your Database connection';
    }
?>