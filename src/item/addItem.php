<?php

$conn = mysqli_connect('mysql', 'root', 'rootpass', 'beetroot');

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sqlItem = "INSERT INTO items (name, description, count, category_id) VALUES ('$_POST[itemName]', '$_POST[itemDescription]', '$_POST[itemCount]', '$_POST[itemCategory]')";

if (mysqli_query($conn, $sqlItem)) {
    header('Location: /index');
} else {
    echo "Error: " . $sqlItem . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);