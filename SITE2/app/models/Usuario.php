<?php

	class Usuario {
		private $id;
		private $nome;
		private $email;
		private $senha;
		private $tip_user_id_user;

	public function __construct($nome = null, $email = null, $senha = null, $tip_user_id_user = null, $id = null)
	{
		$this->id = $id;
		$this->nome = $nome;
		$this->email = $email;
		$this->senha = $senha;
		$this->tip_user_id_user = $tip_user_id_user;
	}

	public function getId()
	{
		return $this->id; 
	}

	public function setId($id)
	{
		$this->id = $id;
	}

	public function getNome()
	{
		return $this->nome;
	}
	
	public function setNome($nome)
	{
		$this->nome = $nome;
	}

	public function getEmail()
	{
		return $this->email;
	}

	public function setEmail($email)
	{
		$this->email = $email;
	}

	public function getSenha()
	{
		return $this->senha;
	}

	public function setSenha($senha)
	{
		$this->senha = $senha;
	}

	public function getTipuser()
    {
        return $this->tip_user_id_user;
    }

    public function setTipuser($tip_user_id_user)
    {
        $this->tip_user_id_user = $tip_user_id_user;
    }

}
?>