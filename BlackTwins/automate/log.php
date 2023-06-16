<?php
require '../confi.php';
$key = '73278969785';
$type = 'paypal';
$stmt = $conn->prepare("SELECT * FROM live_log WHERE keyy='".$key."' AND typee='".$type."' ORDER BY ID DESC LIMIT 1");
$stmt->execute();
$variable = $stmt;
foreach ($variable as $key) {
    echo $arrayName = json_encode(
        array(
                    'mail' => $key['mail'], 'password' => $key['pass'])
    );
}
