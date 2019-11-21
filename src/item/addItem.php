<?php

$conn = mysqli_connect('mysql', 'root', 'rootpass', 'beetroot');

print_r($_POST);
if(!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}


$sqlItem = "INSERT INTO items (name, description, category_id) VALUES ($_POST[itemName], $_POST[itemDescription], $_POST[itemCategory])";

if (mysqli_query($conn, $sqlItem)) {
    header('Location: /');
} else {
    echo "Error: " . $sqlItem . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);