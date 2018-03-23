<?php
/**
 * Created by PhpStorm.
 * User: Henrique Hartmann
 * Date: 19/03/2018
 * Time: 18:38
 */
session_start();
require_once "app/models/CrudUsuario.php";
if (!isset($_SESSION['logado']))
{
    header("location: index.php");

}elseif (isset($_SESSION['logado'])) {
    echo "voce conseguiu \n";
}