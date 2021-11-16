<?php
require 'app.php';

function incluirTemplate(string $nombre)
{
    include TEMPLATES_URL . "${nombre}.php";
}


function estaAutenticado(): bool
{
    $auth = $_SESSION['login'];
    if ($auth) {
        return true;
    }
    return false;
}

function esComprador(): bool
{
    $comprador = $_SESSION[''];
    if ($comprador) {
        return true;
    }
    return false;
}


function esAdmin(): bool
{
    $admin = $_SESSION['admin'];
    if ($admin) {
        return true;
    }else{
        return false;
    }
}
