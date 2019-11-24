<?php

$conn = new mysqli('mysql', 'root', 'rootpass', 'beetroot');

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

if (!empty($_POST)) {
    $sqlUser = "INSERT INTO users (email, password, city, address) VALUE ('$_POST[email]', md5('$_POST[password]'), '$_POST[city]','$_POST[address]')";
    $result = $conn->query($sqlUser);

    if (!$result) {
        echo "<h5>user with such email already exists</h5>";
    } else {
        echo '<h5>user is registered</h5>';
    }
}