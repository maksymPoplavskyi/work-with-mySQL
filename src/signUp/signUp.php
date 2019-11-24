<?php

$conn = new mysqli('mysql', 'root', 'rootpass', 'beetroot');

$email = $_POST['email'];
$password = md5($_POST['password']);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
// (email, password) VALUE ('$_POST[email]', md5('$_POST[password]')
if (!empty($_POST)) {
    $sqlLogin = 'SELECT email, password FROM users';
    $result = $conn->query($sqlLogin);
}
$users = $result->fetch_all();

foreach ($users as $user) {
    if ($user[0] === $email && $user[1] === $password) {
        header('Location: /index');
        $conn->close();
        die;
    } else {
        header('Location: /');
    }
}

$conn->close();