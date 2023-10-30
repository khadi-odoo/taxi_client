<?php
$server = "localhost";
$db = "taxi_bokko";
$pwd = "";
$user = "root";

try {
    $pdost = new PDO("mysql:host = $server; dbname=$db", $user, $pwd);
    $pdost->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Yaa ngi thi TAXI_BOKKO <br><br>";
} catch (PDOException $e) {
    die("Nekko si base de données bi  " . $e->getMessage());
}
