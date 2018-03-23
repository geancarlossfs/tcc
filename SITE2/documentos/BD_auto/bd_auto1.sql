-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Mar-2018 às 02:18
-- Versão do servidor: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_auto1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `id_ano` int(11) NOT NULL,
  `ano` varchar(45) DEFAULT NULL,
  `versao_id_versao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentario`
--

CREATE TABLE `comentario` (
  `idcomentario` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `texto` text,
  `idcarro` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comparacao`
--

CREATE TABLE `comparacao` (
  `idcomparacao` int(11) NOT NULL,
  `idcarro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `favoritos`
--

CREATE TABLE `favoritos` (
  `idfavoritos` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `id_user` varchar(45) DEFAULT NULL,
  `idcomparacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `idmodelo` int(11) NOT NULL,
  `nomemodelo` varchar(45) DEFAULT NULL,
  `ano_id_ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `montadora`
--

CREATE TABLE `montadora` (
  `idmontadora` int(11) NOT NULL,
  `nome_montadora` varchar(45) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tip_user`
--

CREATE TABLE `tip_user` (
  `id_user` int(11) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tip_user`
--

INSERT INTO `tip_user` (`id_user`, `tipo`) VALUES
(1, 'admin'),
(2, 'normal');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tip_veiculo`
--

CREATE TABLE `tip_veiculo` (
  `id_tip_veiculo` int(11) NOT NULL,
  `tip_veiculo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_user` int(11) NOT NULL,
  `senha` varchar(10) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `tip_user_id_user` int(11) NOT NULL,
  `idcarro` int(11) DEFAULT NULL,
  `idfavoritos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_user`, `senha`, `email`, `nome`, `tip_user_id_user`, `idcarro`, `idfavoritos`) VALUES
(1, '12345', 'admin@gmail.com', 'admin', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `idcarro` int(11) NOT NULL,
  `carro` varchar(45) DEFAULT NULL,
  `idmontadora` int(11) NOT NULL,
  `potencia` varchar(45) DEFAULT NULL,
  `portas` varchar(45) DEFAULT NULL,
  `preco` varchar(45) DEFAULT NULL,
  `altura` varchar(45) DEFAULT NULL,
  `comprimento` varchar(45) DEFAULT NULL,
  `cambio` varchar(45) DEFAULT NULL,
  `velocidade` varchar(45) DEFAULT NULL,
  `tanque_combustivel` varchar(45) DEFAULT NULL,
  `tip_combustivel` varchar(45) DEFAULT NULL,
  `porta_malas` varchar(45) DEFAULT NULL,
  `tip_direcao` varchar(45) DEFAULT NULL,
  `consumo_urb` varchar(45) DEFAULT NULL,
  `consumo_rod` varchar(45) DEFAULT NULL,
  `marcha` varchar(45) DEFAULT NULL,
  `tip_tracao` varchar(45) DEFAULT NULL,
  `porte` varchar(45) DEFAULT NULL,
  `ocupantes` varchar(45) DEFAULT NULL,
  `tip_freio` varchar(45) DEFAULT NULL,
  `id_tip_veiculo` int(11) NOT NULL,
  `idmodelo` int(11) NOT NULL,
  `veiculocol` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `versao`
--

CREATE TABLE `versao` (
  `id_versao` int(11) NOT NULL,
  `versao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`id_ano`),
  ADD KEY `fk_ano_versao1_idx` (`versao_id_versao`);

--
-- Indexes for table `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`idcomentario`),
  ADD KEY `fk_comentario_carro1_idx` (`idcarro`),
  ADD KEY `fk_comentario_usuario1_idx` (`id_user`);

--
-- Indexes for table `comparacao`
--
ALTER TABLE `comparacao`
  ADD PRIMARY KEY (`idcomparacao`),
  ADD KEY `fk_comparacao_carro1_idx` (`idcarro`);

--
-- Indexes for table `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`idfavoritos`),
  ADD KEY `fk_favoritos_comparacao1_idx` (`idcomparacao`);

--
-- Indexes for table `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`idmodelo`),
  ADD KEY `fk_modelo_ano1_idx` (`ano_id_ano`);

--
-- Indexes for table `montadora`
--
ALTER TABLE `montadora`
  ADD PRIMARY KEY (`idmontadora`);

--
-- Indexes for table `tip_user`
--
ALTER TABLE `tip_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tip_veiculo`
--
ALTER TABLE `tip_veiculo`
  ADD PRIMARY KEY (`id_tip_veiculo`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `fk_usuario_tip_user1_idx` (`tip_user_id_user`),
  ADD KEY `fk_usuario_carro1_idx` (`idcarro`),
  ADD KEY `fk_usuario_favoritos1_idx` (`idfavoritos`);

--
-- Indexes for table `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`idcarro`),
  ADD KEY `fk_carro_MONTADORA_idx` (`idmontadora`),
  ADD KEY `fk_veiculo_tip_veiculo1_idx` (`id_tip_veiculo`),
  ADD KEY `fk_veiculo_modelo1_idx` (`idmodelo`);

--
-- Indexes for table `versao`
--
ALTER TABLE `versao`
  ADD PRIMARY KEY (`id_versao`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ano`
--
ALTER TABLE `ano`
  MODIFY `id_ano` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comentario`
--
ALTER TABLE `comentario`
  MODIFY `idcomentario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comparacao`
--
ALTER TABLE `comparacao`
  MODIFY `idcomparacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `idfavoritos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modelo`
--
ALTER TABLE `modelo`
  MODIFY `idmodelo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tip_user`
--
ALTER TABLE `tip_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `versao`
--
ALTER TABLE `versao`
  MODIFY `id_versao` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `ano`
--
ALTER TABLE `ano`
  ADD CONSTRAINT `fk_ano_versao1` FOREIGN KEY (`versao_id_versao`) REFERENCES `versao` (`id_versao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `fk_comentario_carro1` FOREIGN KEY (`idcarro`) REFERENCES `veiculo` (`idcarro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comentario_usuario1` FOREIGN KEY (`id_user`) REFERENCES `usuario` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `comparacao`
--
ALTER TABLE `comparacao`
  ADD CONSTRAINT `fk_comparacao_carro1` FOREIGN KEY (`idcarro`) REFERENCES `veiculo` (`idcarro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `fk_favoritos_comparacao1` FOREIGN KEY (`idcomparacao`) REFERENCES `comparacao` (`idcomparacao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `fk_modelo_ano1` FOREIGN KEY (`ano_id_ano`) REFERENCES `ano` (`id_ano`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_carro1` FOREIGN KEY (`idcarro`) REFERENCES `veiculo` (`idcarro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_favoritos1` FOREIGN KEY (`idfavoritos`) REFERENCES `favoritos` (`idfavoritos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_tip_user1` FOREIGN KEY (`tip_user_id_user`) REFERENCES `tip_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `fk_carro_MONTADORA` FOREIGN KEY (`idmontadora`) REFERENCES `montadora` (`idmontadora`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_veiculo_modelo1` FOREIGN KEY (`idmodelo`) REFERENCES `modelo` (`idmodelo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_veiculo_tip_veiculo1` FOREIGN KEY (`id_tip_veiculo`) REFERENCES `tip_veiculo` (`id_tip_veiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
