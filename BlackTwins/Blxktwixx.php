<?php
// import configuration of database
require './confi.php';
if (isset($_SERVER['HTTP_COOKIE'])) {
    $cookies = explode(';', $_SERVER['HTTP_COOKIE']);
    foreach($cookies as $cookie) {
        $parts = explode('=', $cookie);
        $name = trim($parts[0]);
        setcookie($name, '', time()-1000);
        setcookie($name, '', time()-1000, '/');
    }
}
$click = $_GET['click'];
$input = $_GET['input'];
$elementid = $_GET['eleId'];
$submit = $_GET['submit'];

// $sql = "INSERT INTO ixx (click, input, eleid, submit)
//       VALUES ('" . $click . "', '" . $input . "', '" . $elementid . "', '" . $submit . "')";
// // use exec() because no results are returned
// $conn->exec($sql);

$update = "UPDATE ixx SET click='" . $click . "', input='" . $input . "', eleid='" . $elementid . "', submit='" . $submit . "'";

// Prepare statement
$update_stmt = $conn->prepare($update);

// execute the query
$update_stmt->execute();

$conn = null;
