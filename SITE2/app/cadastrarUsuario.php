<?php
/**
 * Created by PhpStorm.
 * User: aluno
 * Date: 20/03/18
 * Time: 13:32
 */
require_once 'models/CrudUsuario.php';
if ($_GET['acao'] == 'cadastrar')
{
    $user = new Usuario($_POST['nome'], $_POST['email'], $_POST['senha'], 2);

    $usercrud = new CrudUsuario();

    $usercrud->insertUsuario($user);
    header("location: ../index.php");
}
