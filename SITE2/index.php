<?php
/**
 * Created by PhpStorm.
 * User: aluno
 * Date: 19/03/18
 * Time: 16:00
 */
?>
<!DOCTYPE html>
<html>
<head>
    <title>Página Inicial</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width-device-width, initial scale=1">
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/exe.css">
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/js/bootstrap.min.js">
</head>
<body>
<div class="container-fluid">
    <div class="row menu">
        <ul class="nav nav-tabs container-fluid">
            <li class="col-md-1 col-lg-1"><img alt="Brand" src="assets/images/uberselect.webp" width="100"></li>
            <li class="col-md-2 col-lg-2 link" id="spot"><a href="?acao=login">Logar</a></li>
            <li class="col-md-2 col-lg-2 link" id="spot"><a href="?acao=cadas">Registrar</a></li>
            <li class="col-md-2 col-lg-2 link" id="spot"><a href="#">Sobre</a></li>
            <li class="col-md-2 col-lg-2 link" id="spot"><a href="#">Contatos</a></li>
            <li class="col-md-3 col-lg-3" id="spot">
                <form method="post" action="#">
                    <input class="danger" type="search" name="busca">
                    <input class="btn-danger" type="submit" name="butao" value="Buscar">
                </form></li>
        </ul>
    </div>
    <br>
    <br>
<?php
if (!isset($_SESSION['user']) and isset($_GET['acao']) and $_GET['acao'] == 'login') {
    require_once "include/login.php";
}elseif (!isset($_SESSION['user']) and isset($_GET['acao']) and $_GET['acao'] == 'cadas'){
    require_once "include/cadastro.php";
}
