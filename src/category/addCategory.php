<?php

$conn = mysqli_connect('mysql', 'root', 'rootpass','beetroot');

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sqlCategory = "INSERT INTO categories (name) VALUE ('$_POST[categoryName]')";

if (mysqli_query($conn, $sqlCategory)) {
    header('Location: /index');
} else {
    echo "Error: " . $sqlCategory . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);