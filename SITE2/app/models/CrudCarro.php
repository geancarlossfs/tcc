<?php

    require_once "Carro.php";
    require_once "DBConexao.php";

    class CrudCarro
    {
        private $conexao;
        public function __construct()
        {
            $this->conexao = DBConexao::getConexao();
        }
    }