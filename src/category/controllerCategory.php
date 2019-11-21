<?php

function categoryCount () {
    $conn = mysqli_connect('mysql', 'root', 'rootpass','beetroot');
    mysqli_select_db($conn, 'beetroot');
    $count = mysqli_query($conn, "SELECT * FROM categories");
    $num_rows = mysqli_num_rows($count);
    mysqli_close($conn);
    return $num_rows;
}

function categoryPrint () {
    $conn = mysqli_connect('mysql', 'root', 'rootpass','beetroot');
    mysqli_select_db($conn, 'beetroot');
    $categoryNames = [];
    for ($i = 1; $i <= categoryCount(); $i++) {
         $categoryId = mysqli_query($conn, "SELECT name FROM categories WHERE id=$i");
         $names = mysqli_fetch_row($categoryId);
            foreach ($names as $name) {
                $categoryNames[] = $name;
            }
    }
    mysqli_close($conn);
    return $categoryNames;
}

