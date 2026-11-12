-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 12/11/2026 às 12:13
-- Versão do servidor: 8.0.42-0ubuntu0.24.04.2
-- Versão do PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `IMOBILIARIA`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `imoveis`
--

CREATE TABLE `imoveis` (
  `id` int NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `id_proprietario` int DEFAULT NULL,
  `tipo_imovel` varchar(40) DEFAULT NULL,
  `tipo_negocio` varchar(40) DEFAULT NULL,
  `valor` float DEFAULT NULL
) ;

--
-- Despejando dados para a tabela `imoveis`
--

INSERT INTO `imoveis` (`id`, `endereco`, `estado`, `cidade`, `bairro`, `id_proprietario`, `tipo_imovel`, `tipo_negocio`, `valor`) VALUES
(1, 'Rua Das Samambaias, 1234', 'PR', 'Maringa', 'Centro', NULL, 'Casa', 'Venda', 123000);

-- --------------------------------------------------------

--
-- Estrutura para tabela `negocios`
--

CREATE TABLE `negocios` (
  `id` int NOT NULL,
  `id_cliente` int DEFAULT NULL,
  `id_imovel` int DEFAULT NULL,
  `contrato` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `id` int NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `senha` varchar(300) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `fone` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `pessoas`
--

INSERT INTO `pessoas` (`id`, `nome`, `cpf`, `email`, `senha`, `endereco`, `fone`) VALUES
(1, 'gabrielle', '12345678912', 'gabrielle@email', '1234', 'hrino', NULL),
(2, 'ariela', '123485096234', 'ariela@email', '4567', 'banana verde', NULL),
(3, 'zara', '1093847560192', 'zara@email', '9876', 'jabuticabeiras', NULL),
(4, 'morgan', '12345612345', 'morgan@email', '18#68W', 'Rua Banana Verde, 1200', '44787878787');

-- --------------------------------------------------------

--
-- Estrutura para tabela `relacao_pessoa`
--

CREATE TABLE `relacao_pessoa` (
  `id_pessoa` int NOT NULL,
  `id_tipo_pessoa` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `relacao_pessoa`
--

INSERT INTO `relacao_pessoa` (`id_pessoa`, `id_tipo_pessoa`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipos_pessoa`
--

CREATE TABLE `tipos_pessoa` (
  `id` int NOT NULL,
  `tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `tipos_pessoa`
--

INSERT INTO `tipos_pessoa` (`id`, `tipo`) VALUES
(1, 'Cliente'),
(2, 'Usuario'),
(3, 'Proprietario');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `imoveis`
--
ALTER TABLE `imoveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `negocios`
--
ALTER TABLE `negocios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `relacao_pessoa`
--
ALTER TABLE `relacao_pessoa`
  ADD PRIMARY KEY (`id_pessoa`,`id_tipo_pessoa`);

--
-- Índices de tabela `tipos_pessoa`
--
ALTER TABLE `tipos_pessoa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `imoveis`
--
ALTER TABLE `imoveis`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `negocios`
--
ALTER TABLE `negocios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tipos_pessoa`
--
ALTER TABLE `tipos_pessoa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
