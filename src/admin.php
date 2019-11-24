<?php

$conn = new mysqli('mysql', 'root', 'rootpass', 'beetroot');

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sqlAdmin = "SELECT password FROM admin";
$sqlUsers = "SELECT * FROM users";

$resultAdmin = $conn->query($sqlAdmin);
$resultUsers = $conn->query($sqlUsers);

$admin = $resultAdmin->fetch_all();
$users = $resultUsers->fetch_all(MYSQLI_ASSOC);
echo '<pre>';
//print_r($users);
foreach ($admin as $value) {
    if ($value[0] === $_POST['adminPassword']) {
        print_r($users);
        die;
    }
}
echo '</pre>';