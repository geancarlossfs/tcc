<?php

	class Carro {
		private $potencia;
		private $portas;
		private $preco;
		private $altura;
		private $largura;
		private $comprimento;
		private $cambio;
		private $velocidade;
		private $tanqueDeCombustivel;
		private $tipoCombustivel;
		private $portaMalas;
		private $tipoDirecao;
		private $consumoUrbano;
		private $consumoRodoviario;
		private $marcha;
		private $tracao;
		private $configuracao;
		private $porte;
		private $ocupantes;
		private $tipoDeFreio;

	public function __construct($potencia, $portas, $preco, $altura, $largura, $comprimento, $cambio, $velocidade, $tanqueDeCombustivel, $tipoCombustivel, $portaMalas, $tipoDirecao, $consumoUrbano, $consumoRodoviario, $marcha, $tracao, $configuracao, $porte, $ocupantes, $tipoDeFreio) 
	{
		$this->potencia = $potencia;
		$this->portas = $portas;
		$this->preco = $preco;
		$this->altura = $altura;
		$this->largura = $largura;
		$this->comprimento = $comprimento;
		$this->cambio = $cambio;
		$this->velocidade = $velocidade;
		$this->tanqueDeCombustivel = $tanqueDeCombustivel;
		$this->tipoCombustivel = $tipoCombustivel;
		$this->portaMalas = $portaMalas;
		$this->tipoDirecao = $tipoDirecao;
		$this->consumoUrbano = $consumoUrbano;
		$this->consumoRodoviario = $consumoRodoviario;
		$this->marcha = $marcha;
		$this->tracao = $tracao;
		$this->configuracao = $configuracao;
		$this->porte = $porte;
		$this->ocupantes = $ocupantes;
		$this->tipoDeFreio = $tipoDeFreio;

	}

        /**
         * @return mixed
         */
        public function getPotencia()
        {
            return $this->potencia;
        }

        /**
         * @param mixed $potencia
         */
        public function setPotencia($potencia)
        {
            $this->potencia = $potencia;
        }

        /**
         * @return mixed
         */
        public function getPortas()
        {
            return $this->portas;
        }

        /**
         * @param mixed $portas
         */
        public function setPortas($portas)
        {
            $this->portas = $portas;
        }

        /**
         * @return mixed
         */
        public function getPreco()
        {
            return $this->preco;
        }

        /**
         * @param mixed $preco
         */
        public function setPreco($preco)
        {
            $this->preco = $preco;
        }

        /**
         * @return mixed
         */
        public function getAltura()
        {
            return $this->altura;
        }

        /**
         * @param mixed $altura
         */
        public function setAltura($altura)
        {
            $this->altura = $altura;
        }

        /**
         * @return mixed
         */
        public function getLargura()
        {
            return $this->largura;
        }

        /**
         * @param mixed $largura
         */
        public function setLargura($largura)
        {
            $this->largura = $largura;
        }

        /**
         * @return mixed
         */
        public function getComprimento()
        {
            return $this->comprimento;
        }

        /**
         * @param mixed $comprimento
         */
        public function setComprimento($comprimento)
        {
            $this->comprimento = $comprimento;
        }

        /**
         * @return mixed
         */
        public function getCambio()
        {
            return $this->cambio;
        }

        /**
         * @param mixed $cambio
         */
        public function setCambio($cambio)
        {
            $this->cambio = $cambio;
        }

        /**
         * @return mixed
         */
        public function getVelocidade()
        {
            return $this->velocidade;
        }

        /**
         * @param mixed $velocidade
         */
        public function setVelocidade($velocidade)
        {
            $this->velocidade = $velocidade;
        }

        /**
         * @return mixed
         */
        public function getTanqueDeCombustivel()
        {
            return $this->tanqueDeCombustivel;
        }

        /**
         * @param mixed $tanqueDeCombustivel
         */
        public function setTanqueDeCombustivel($tanqueDeCombustivel)
        {
            $this->tanqueDeCombustivel = $tanqueDeCombustivel;
        }

        /**
         * @return mixed
         */
        public function getTipoCombustivel()
        {
            return $this->tipoCombustivel;
        }

        /**
         * @param mixed $tipoCombustivel
         */
        public function setTipoCombustivel($tipoCombustivel)
        {
            $this->tipoCombustivel = $tipoCombustivel;
        }

        /**
         * @return mixed
         */
        public function getPortaMalas()
        {
            return $this->portaMalas;
        }

        /**
         * @param mixed $portaMalas
         */
        public function setPortaMalas($portaMalas)
        {
            $this->portaMalas = $portaMalas;
        }

        /**
         * @return mixed
         */
        public function getTipoDirecao()
        {
            return $this->tipoDirecao;
        }

        /**
         * @param mixed $tipoDirecao
         */
        public function setTipoDirecao($tipoDirecao)
        {
            $this->tipoDirecao = $tipoDirecao;
        }

        /**
         * @return mixed
         */
        public function getConsumoUrbano()
        {
            return $this->consumoUrbano;
        }

        /**
         * @param mixed $consumoUrbano
         */
        public function setConsumoUrbano($consumoUrbano)
        {
            $this->consumoUrbano = $consumoUrbano;
        }

        /**
         * @return mixed
         */
        public function getConsumoRodoviario()
        {
            return $this->consumoRodoviario;
        }

        /**
         * @param mixed $consumoRodoviario
         */
        public function setConsumoRodoviario($consumoRodoviario)
        {
            $this->consumoRodoviario = $consumoRodoviario;
        }

        /**
         * @return mixed
         */
        public function getMarcha()
        {
            return $this->marcha;
        }

        /**
         * @param mixed $marcha
         */
        public function setMarcha($marcha)
        {
            $this->marcha = $marcha;
        }

        /**
         * @return mixed
         */
        public function getTracao()
        {
            return $this->tracao;
        }

        /**
         * @param mixed $tracao
         */
        public function setTracao($tracao)
        {
            $this->tracao = $tracao;
        }

        /**
         * @return mixed
         */
        public function getConfiguracao()
        {
            return $this->configuracao;
        }

        /**
         * @param mixed $configuracao
         */
        public function setConfiguracao($configuracao)
        {
            $this->configuracao = $configuracao;
        }

        /**
         * @return mixed
         */
        public function getPorte()
        {
            return $this->porte;
        }

        /**
         * @param mixed $porte
         */
        public function setPorte($porte)
        {
            $this->porte = $porte;
        }

        /**
         * @return mixed
         */
        public function getOcupantes()
        {
            return $this->ocupantes;
        }

        /**
         * @param mixed $ocupantes
         */
        public function setOcupantes($ocupantes)
        {
            $this->ocupantes = $ocupantes;
        }

        /**
         * @return mixed
         */
        public function getTipoDeFreio()
        {
            return $this->tipoDeFreio;
        }

        /**
         * @param mixed $tipoDeFreio
         */
        public function setTipoDeFreio($tipoDeFreio)
        {
            $this->tipoDeFreio = $tipoDeFreio;
        }
}