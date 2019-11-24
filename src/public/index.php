<?php

require_once '../category/controllerCategory.php';
//require_once '../item/controllerItem.php';


$uri = explode('?', $_SERVER['REQUEST_URI'])[0];

mysqli_connect('mysql', 'root', 'rootpass', 'beetroot');

switch ($uri) {
    case '/category/addCategory':
    {
        require_once '../category/addCategory.php';
        break;
    }
    case '/item/addItem':
    {
        require_once '../item/addItem.php';
        break;
    }
    case '/registration':
    {
        require_once '../public/registration.phtml';
        require_once '../registration/registration.php';
        break;
    }
    case '/index':
    {
        require_once '../public/index.phtml';

        break;
    }
    case '/sign-up':
    {
        require_once '../public/signUp.phtml';
        require_once '../registration/registration.php';
        break;
    }
    case '/verification':
    {
        require_once '../signUp/signUp.php';
        break;
    }
    case '/admin':
    {
        require_once '../public/admin.phtml';
        require_once '../admin.php';
        break;
    }
    default:
    {
        require_once '../public/signUp.phtml';
        break;
    }
}