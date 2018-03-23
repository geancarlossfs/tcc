<?php
/**
 * Created by PhpStorm.
 * User: Henrique Hartmann
 * Date: 19/03/2018
 * Time: 21:18
 */
require_once 'models/CrudUsuario.php';
if ($_GET['acao'] == 'login' and isset($_POST['nome']) and isset($_POST['senha']))
{
    $user = new Usuario($_POST['nome'],'@gmail.com', $_POST['senha'], 2);

    $usercrud = new CrudUsuario();

    $usercrud->loginUser($user);
}
