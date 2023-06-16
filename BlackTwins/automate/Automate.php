<?php
require '../confi.php';
$stmt = $conn->prepare("SELECT * FROM Live");
$stmt->execute();
$variable = $stmt;
foreach ($variable as $key) {
    echo $arrayName = json_encode(
        array(
                    'W' => $key['In_width'], 'H' => $key['In_height'], 'X' => $key['In_mouseX'], 'Y' => $key['In_mouseY'], 'CL' => $key['In_click'], 'ID' => $key['In_click'])
    );
}
