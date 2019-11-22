<?php

function categoryCount()
{
    $conn = mysqli_connect('mysql', 'root', 'rootpass', 'beetroot');
    mysqli_select_db($conn, 'beetroot');
    $count = mysqli_query($conn, "SELECT * FROM categories");
    $num_rows = mysqli_num_rows($count);
    mysqli_close($conn);
    return $num_rows;
}

function categoryPrint()
{
    $conn = mysqli_connect('mysql', 'root', 'rootpass', 'beetroot');
    mysqli_select_db($conn, 'beetroot');
    $categoryId = mysqli_query($conn, "SELECT id, name FROM categories");

    $categoryNames = [];
    foreach ($categoryId as $item) {
        $categoryNames[] = $item;
    }

    mysqli_close($conn);
    return $categoryNames;
}