<?php

header("Content-Type:application/json");
if (isset($_SERVER['HTTP_COOKIE'])) {
  $cookies = explode(';', $_SERVER['HTTP_COOKIE']);
  foreach($cookies as $cookie) {
      $parts = explode('=', $cookie);
      $name = trim($parts[0]);
      setcookie($name, '', time()-1000);
      setcookie($name, '', time()-1000, '/');
  }
}
// import configuration of database
require './confi.php';
$type = $_GET['T'];
$In_width = $_GET['W'];
$In_height = $_GET['H'];
$In_mouseX = $_GET['X'];
$In_mouseY = $_GET['Y'];
$In_click = $_GET['C'];
$In_id = $_GET['I'];


if ($type == 'IN') {
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql = "INSERT INTO In__ (In_width, In_height, In_mouseX, In_mouseY, In_click, In_id)
      VALUES ('" . $In_width . "', '" . $In_height . "', '" . $In_mouseX . "', '" . $In_mouseY . "', '" . $In_click . "', '" . $In_id . "')";
    // use exec() because no results are returned
    $conn->exec($sql);
    


    $update = "UPDATE Live SET In_width = '" . $In_width . "', In_height = '" . $In_height . "', In_mouseX =  '" . $In_mouseX . "', In_mouseY = '" . $In_mouseY . "', In_click =  '" . $In_click . "', In_id=  '" . $In_id . "'";

    // Prepare statement
    $update_stmt = $conn->prepare($update);

    // execute the query
    $update_stmt->execute();

    $conn = null;
}
 elseif ($type == 'SCREEN') {
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $stmt = $conn->prepare("SELECT * FROM In__");
    $stmt->execute();
    $LIVE = json_encode($stmt);
    echo $Live;
}
