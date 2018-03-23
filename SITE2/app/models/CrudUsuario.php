<?php

    require_once "Usuario.php";
    require_once "DBConexao.php";

    class CrudUsuario
    {
        private $conexao;

        public function __construct()
        {
            $this->conexao = DBConexao::getConexao();
        }

        public function getUsuario($id)
        {
            $sql = "SELECT * FROM usuario WHERE id_user =" . $id;
            $resultado = $this->conexao->query($sql);
            $user = $resultado->fetch(PDO::FETCH_ASSOC);

            $objUser = new Usuario($user['id_user'], $user['nome'], $user['email'], $user['senha'], $user['tip_user_id_user']);
            var_dump($objUser);
            return $objUser;
        }

        public function insertUsuario(Usuario $user)
        {
            $this->conexao = DBConexao::getConexao();

            $sql = "INSERT INTO usuario (nome, email, senha, tip_user_id_user) VALUES ('{$user->getNome()}','{$user->getEmail()}','{$user->getSenha()}','{$user->getTipuser()}')";
            try {
                $this->conexao->exec($sql);
                header('location: ../index.php?acao=login');
            } catch (PDOException $e) {
                return $e->getMessage();
            }
        }

        public function loginUser(Usuario $user)
        {

            $sql = $this->conexao->prepare("SELECT id_user, email, nome, tip_user_id_user FROM usuario WHERE nome = '{$user->getNome()}' AND '{$user->getSenha()}'");
            $sql->execute();
            $count = $sql->rowCount();
            try {
                if ($count == 1) {
                    session_start();
                    $_SESSION['logado'] = 'sim';
                    header('location: ../teste.php');
                } else {
                    header('location: ../index.php?acao=login');
                }
            } catch (PDOException $e) {
                return $e->getMessage();
            }
        }
    }