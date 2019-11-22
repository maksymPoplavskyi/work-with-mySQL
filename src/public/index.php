<?php

require_once '../category/controllerCategory.php';
//require_once '../item/controllerItem.php';

//print_r(categoryPrint());
function setNameOption($arrayName)
{
    foreach (categoryPrint() as $names) {
        foreach ($names as $key => $name) {
            if ($key == "$arrayName") {
                echo $name;
            }
        }
    }
}

$uri = explode('?', $_SERVER['REQUEST_URI'])[0];

mysqli_connect('mysql', 'root', 'rootpass', 'beetroot');

switch ($uri) {
    case '/category/addCategory':
    {
        require_once '../category/addCategory.php';
//        require_once '../public/category.phtml';
        break;
    }
    case '/item/addItem':
    {
        require_once '../item/addItem.php';
        break;
    }
    default:
    {
        require_once '../public/index.phtml';
        break;
    }
}