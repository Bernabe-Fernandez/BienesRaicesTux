<?php

function conectarDB(): mysqli
{
    $db = mysqli_connect('localhost', 'id17898574_root', 'G{fQ_iuP^eE$A6KX', 'id17898574_bienesraicestux');

    if (!$db) {
        echo 'Error no se Conecto';
        exit;
    }

    return $db;
}
