-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13-Mar-2023 às 17:52
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sicomerce`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Laptops', 'laptops'),
(2, 'Desktop PC', 'desktop-pc'),
(3, 'Tablets', 'tablets'),
(5, 'Impressora', 'tablet'),
(6, 'Monitor', 'monitor'),
(7, 'Mouse', 'mouse'),
(8, 'Roteador', 'roteador'),
(9, 'Modem', 'modem'),
(10, 'Switch', 'switch'),
(11, 'Servidor', 'servidor'),
(12, 'Acessórios', 'acessorios');

-- --------------------------------------------------------

--
-- Estrutura da tabela `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(91, 107, 1, 1),
(92, 107, 10, 1),
(93, 108, 1, 3),
(94, 109, 3, 1),
(95, 109, 7, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'DELL Inspiron 15 7000 15.6', '<p>Port&aacute;til de 15 polegadas ideal para jogadores. Com os mais recentes processadores Intel&reg; para um desempenho de jogo superior, gr&aacute;ficos NVIDIA&reg; GeForce&reg; realistas e um design avan&ccedil;ado de arrefecimento t&eacute;rmico.</p>\r\n', 'dell-inspiron-15-7000-15-6', 99900, 'dell-inspiron-15-7000-15-6.jpg', '2023-03-13', 2),
(2, 1, 'MICROSOFT Surface Pro 4 & Typecover - 128 GB', '<p>O Surface Pro 4 permite tudo o que precisa de fazer, sendo mais leve do que nunca</p>\r\n\r\n<p>O ecr&atilde; PixelSense de 12,3 tem um contraste extremamente elevado e um brilho baixo para que possa trabalhar durante o dia sem for&ccedil;ar os olhos</p>\r\n\r\n<p>teclado n&atilde;o est&aacute; inclu&iacute;do e precisa ser comprado separadamente</p>\r\n\r\n<p>Apresenta um Intel Core i5 6th Gen (Skylake) Core, sem fio: 802.11ac Wi-Fi rede sem fio; IEEE 802.11a/b/g/n compat&iacute;vel com Bluetooth 4.0 tecnologia sem fio</p>\r\n\r\n<p>Envios em embalagens de consumo.</p>\r\n', 'microsoft-surface-pro-4-typecover-128-gb', 795000, 'microsoft-surface-pro-4-typecover-128-gb.jpg', '2018-05-10', 3),
(3, 1, 'DELL Inspiron 15 5000 15.6', '<p>O notebook intermedi&aacute;rio de 15,6 polegadas da Dell &eacute; um bloco sem gra&ccedil;a e volumoso. H&aacute; muito tempo que a linha Inspiron carece de qualquer tipo de musa est&eacute;tica, e o Inspiron 15 5000 segue essa tend&ecirc;ncia. &Eacute; uma laje de pl&aacute;stico prateada com o logotipo da Dell em um brilho de espelho.</p>\r\n\r\n<p>Levantar a tampa revela o ecr&atilde; de 15,6 polegadas e 1080p rodeado por uma luneta quase ofensivamente espessa e um deck de pl&aacute;stico com um aspeto falso de metal escovado. H&aacute; um leitor de impress&otilde;es digitais no bot&atilde;o liga/desliga e o teclado &eacute; uma cole&ccedil;&atilde;o preta de teclas estilo ilha.</p>\r\n', 'dell-inspiron-15-5000-15-6', 156000, 'dell-inspiron-15-5000-15-6.jpg', '2023-03-13', 1),
(4, 1, 'LENOVO Ideapad 320s-14IKB 14\" Laptop - Grey', '<p>- Concebido para portabilidade com um design de chassis fino e leve&nbsp;</p>\r\n\r\n<p>- Processamento poderoso ajuda voc&ecirc; a criar e produzir em qualquer lugar&nbsp;</p>\r\n\r\n<p>- Tela Full HD garante visuais n&iacute;tidos para filmes, p&aacute;ginas da web, fotos e muito mais&nbsp;</p>\r\n\r\n<p>- Desfrute de um som quente e cintilante, cortesia de dois alto-falantes Harman e Dolby Audio&nbsp;<br />\r\n- Transfer&ecirc;ncia r&aacute;pida de dados e conex&atilde;o de v&iacute;deo de alta qualidade com portas USB-C e HDMI&nbsp;</p>\r\n\r\n<p>O port&aacute;til Lenovo IdeaPad 320s-14IKB de 14&quot; faz parte da nossa gama Reach, que tem a mais recente tecnologia para o ajudar a desenvolver as suas ideias e trabalhar no seu melhor. &Eacute; &oacute;timo para editar documentos complexos, uso comercial, editar fotos e qualquer outra coisa que voc&ecirc; fa&ccedil;a ao longo do dia.</p>\r\n', 'lenovo-ideapad-320s-14ikb-14-laptop-grey', 208000, 'lenovo-ideapad-320s-14ikb-14-laptop-grey.jpg', '2018-05-10', 3),
(5, 3, 'APPLE 9.7\" iPad - 32 GB, Gold', '<p>Ecr&atilde; Retina de 9,7 polegadas, resolu&ccedil;&atilde;o de 2048 x 1536, ecr&atilde; Wide Color e True Tone Display</p>\r\n\r\n<p>Apple iOS 9, chip A9X com arquitetura de 64 bits, coprocessador M9</p>\r\n\r\n<p>C&acirc;mara iSight de 12 MP, Flash True Tone, Panorama (at&eacute; 63MP), &Aacute;udio de quatro altifalantes</p>\r\n\r\n<p>At&eacute; 10 horas de autonomia da bateria</p>\r\n\r\n<p>iPad Pro suporta Apple Smart Keyboard e Apple Pencil</p>\r\n', 'apple-9-7-ipad-32-gb-gold', 58900, 'apple-9-7-ipad-32-gb-gold.jpg', '2018-05-10', 3),
(6, 1, 'DELL Inspiron 15 5000 15', '<p>Port&aacute;til de 15 polegadas que proporciona uma experi&ecirc;ncia de visualiza&ccedil;&atilde;o excecional, um acabamento de viragem da cabe&ccedil;a e uma variedade de op&ccedil;&otilde;es concebidas para elevar o seu entretenimento, onde quer que v&aacute;.</p>\r\n', 'dell-inspiron-15-5000-15', 120700, 'dell-inspiron-15-5000-15.jpg', '0000-00-00', 0),
(7, 3, 'APPLE 10.5\" iPad Pro - 64 GB, Space Grey (2017)', '<p>Grava&ccedil;&atilde;o de v&iacute;deo 4K a 30 fps</p>\r\n\r\n<p>C&acirc;mara de 12 megap&iacute;xeis</p>\r\n\r\n<p>Revestimento resistente a impress&otilde;es digitais</p>\r\n\r\n<p>Revestimento antirreflexo</p>\r\n\r\n<p>Videochamada Face Time</p>\r\n\r\n<p>g</p>\r\n', 'apple-10-5-ipad-pro-64-gb-space-grey-2017', 61500, 'apple-10-5-ipad-pro-64-gb-space-grey-2017.jpg', '2023-03-13', 1),
(8, 1, 'ASUS Transformer Mini T102HA 10.1\" 2 in 1 - Silver', '<p>Vers&aacute;til dispositivo Windows 10 com teclado e caneta inclu&iacute;dos, funcionalidade 2 em 1: use como laptop e tablet. Atualize o Windows periodicamente para garantir que seus aplicativos tenham as configura&ccedil;&otilde;es de seguran&ccedil;a mais recentes.</p>\r\n\r\n<p>Autonomia da bateria durante todo o dia, com uma dura&ccedil;&atilde;o de at&eacute; 11 horas de reprodu&ccedil;&atilde;o de v&iacute;deo; 128GB de armazenamento em estado s&oacute;lido. Bateria de pol&iacute;mero.Com at&eacute; 11 horas entre as cargas, voc&ecirc; pode ter certeza de que o Transformer Mini T102HA estar&aacute; l&aacute; sempre que precisar. Pode carregar o T102HA atrav&eacute;s da sua porta micro USB, para que possa utilizar um carregador de telem&oacute;vel ou qualquer banco de energia com um conector micro USB.</p>\r\n', 'asus-transformer-mini-t102ha-10-1-2-1-silver', 110000, 'asus-transformer-mini-t102ha-10-1-2-1-silver.jpg', '0000-00-00', 0),
(9, 2, 'PC SPECIALIST Vortex Core Lite Gaming PC', '<p>- Melhor desempenho para jogar eSports e muito mais&nbsp;</p>\r\n\r\n<p>- Os gr&aacute;ficos NVIDIA GeForce GTX proporcionam visuais suaves&nbsp;</p>\r\n\r\n<p>- GeForce Experience entrega atualiza&ccedil;&otilde;es diretamente para o seu PC&nbsp;</p>\r\n\r\n<p>O especialista em PC Vortex Core Lite faz parte da nossa gama de jogos, trazendo-lhe os PCs mais impressionantes dispon&iacute;veis atualmente. Tem gr&aacute;ficos espetaculares e desempenho de processamento r&aacute;pido para se adequar aos jogadores mais exigentes.</p>\r\n', 'pc-specialist-vortex-core-lite-gaming-pc', 387000, 'pc-specialist-vortex-core-lite-gaming-pc.jpg', '0000-00-00', 0),
(10, 2, 'DELL Inspiron 5675 Gaming PC - Recon Blue', '<p>Novo desktop para jogos com poderosos processadores AMD Ryzen&trade;, gr&aacute;ficos prontos para VR, ilumina&ccedil;&atilde;o LED e um design meticuloso para resfriamento ideal.</p>\r\n', 'dell-inspiron-5675-gaming-pc-recon-blue', 490000, 'dell-inspiron-5675-gaming-pc-recon-blue.jpg', '2023-03-13', 2),
(11, 2, 'HP Barebones OMEN X 900-099nn Gaming PC', '<p>O que est&aacute; dentro importa.</p>\r\n\r\n<p>Sem arrefecimento adequado, o desempenho de n&iacute;vel superior nunca atinge todo o seu potencial.</p>\r\n\r\n<p>Nove zonas de ilumina&ccedil;&atilde;o acentuam as linhas agressivas e o acabamento preto suave desta caixa de a&ccedil;o galvanizado &uacute;nica.</p>\r\n', 'hp-barebones-omen-x-900-099nn-gaming-pc', 489500, 'hp-barebones-omen-x-900-099nn-gaming-pc.jpg', '2023-03-13', 1),
(12, 2, 'ACER Aspire GX-781 Gaming PC', '<p>- GTX 1050 placa gr&aacute;fica permite que voc&ecirc; jogue jogos enormes em grandes resolu&ccedil;&otilde;es&nbsp;</p>\r\n\r\n<p>- Processador Core i5&trade; de &uacute;ltima gera&ccedil;&atilde;o pode lidar com software de m&iacute;dia exigente&nbsp;</p>\r\n\r\n<p>- O armazenamento SSD super-r&aacute;pido permite carregar programas em pouco tempo&nbsp;</p>\r\n\r\n<p>O Acer Aspire GX-781 Gaming PC faz parte da nossa gama Gaming, que oferece os PCs mais potentes dispon&iacute;veis atualmente. Tem excelentes gr&aacute;ficos e desempenho de processamento para se adequar ao jogador mais exigente.</p>\r\n', 'acer-aspire-gx-781-gaming-pc', 549000, 'acer-aspire-gx-781-gaming-pc.jpg', '2018-05-12', 3),
(13, 2, 'HP Pavilion Power 580-015na Gaming PC', '<p>Apresenta o mais recente processador quad core Intel i5 e gr&aacute;ficos discretos. Com esse poder, voc&ecirc; est&aacute; pronto para assumir qualquer atividade, desde fazer arte digital at&eacute; conquistar novos mundos em RV.</p>\r\n\r\n<p>Escolha o desempenho e o armazenamento de que precisa. Arranque em segundos com SSD de 128 GB.</p>\r\n\r\n<p>Abandone a caixa cinza sem brilho, esta &aacute;rea de trabalho vem infundida com estilo. Uma nova luneta angular e um design verde e preto arrojado d&atilde;o ao seu espa&ccedil;o de trabalho a dose certa de atitude.</p>\r\n\r\n<p>Desempenho at&eacute; 3 vezes mais r&aacute;pido - As placas gr&aacute;ficas GeForce GTX s&eacute;rie 10 s&atilde;o alimentadas pela Pascal para oferecer o dobro do desempenho das placas gr&aacute;ficas da gera&ccedil;&atilde;o anterior.</p>\r\n', 'hp-pavilion-power-580-015na-gaming-pc', 672000, 'hp-pavilion-power-580-015na-gaming-pc.jpg', '2018-05-12', 1),
(14, 2, 'LENOVO Legion Y520 Gaming PC', '<p>- Multi-tarefa com facilidade gra&ccedil;as ao processador Intel&reg; i5&nbsp;</p>\r\n\r\n<p>- Prepare-se para a batalha com a placa gr&aacute;fica NVIDIA GeForce GTX&nbsp;</p>\r\n\r\n<p>- VR pronto para a pr&oacute;xima gera&ccedil;&atilde;o de jogos imersivos e entretenimento</p>\r\n\r\n<p>- Atualiza&ccedil;&atilde;o sem ferramentas ajuda voc&ecirc; a personalizar seu sistema de acordo com suas pr&oacute;prias demandas&nbsp;</p>\r\n\r\n<p>Parte da nossa gama Gaming, que apresenta os PCs mais poderosos dispon&iacute;veis atualmente, o Lenovo Legion Y520 Gaming PC tem gr&aacute;ficos e desempenho de processamento superiores para se adequar ao jogador mais exigente.</p>\r\n', 'lenovo-legion-y520-gaming-pc', 497000, 'lenovo-legion-y520-gaming-pc.jpg', '2018-05-10', 13),
(15, 2, 'PC SPECIALIST Vortex Minerva XT-R Gaming PC', '<p>- Gr&aacute;ficos NVIDIA GeForce GTX para visuais de jogos impressionantes</p>\r\n\r\n<p>- Feito para eSports com um r&aacute;pido processador Intel Core i5 de&reg;&trade; 7&ordf; gera&ccedil;&atilde;o</p>\r\n\r\n<p>- A tecnologia GeForce permite que voc&ecirc; atualize diretamente os drivers, grave seus jogos e muito mais</p>\r\n\r\n<p>O PC Specialist Vortex Minerva XT-R Gaming PC faz parte da nossa gama Gaming, que oferece os PCs mais potentes dispon&iacute;veis. Seus gr&aacute;ficos e processamento de alto desempenho s&atilde;o feitos para atender &agrave;s necessidades de jogadores s&eacute;rios.</p>\r\n', 'pc-specialist-vortex-minerva-xt-r-gaming-pc', 366000, 'pc-specialist-vortex-minerva-xt-r-gaming-pc.jpg', '2018-05-10', 1),
(16, 2, 'PC SPECIALIST Vortex Core II Gaming PC', '<p>Processador: Processador Intel&reg; CoreTM i3-6100- Dual-core- 3,7 GHz- 3 MB de cache</p>\r\n\r\n<p>Mem&oacute;ria RAM: 8 GB DDR4 HyperX, armazenamento: 1 TB HDD, 7200 rpm</p>\r\n\r\n<p>Placa gr&aacute;fica: NVIDIA GeForce GTX 950 (2 GB GDDR5), Placa-m&atilde;e: ASUS H110M-R<br />\r\nUSB: USB 3.0 x 3- USB 2.0 x 5, Interface de v&iacute;deo: HDMI x 1- DisplayPort x 1- DVI x 2, Interface de &aacute;udio: jack de 3,5 mm, Unidade de disco &oacute;tico: DVD/RW, Ranhura para placa de expans&atilde;o PCIe: (x1) x 2</p>\r\n\r\n<p>Som: 5.1 Suporte de som surround PSU Corsair: VS350, 350W, Cor: Preto-Verde destaques, Conte&uacute;do da caixa: PC Specialist Vortex Core- Cabo de alimenta&ccedil;&atilde;o AC</p>\r\n', 'pc-specialist-vortex-core-ii-gaming-pc', 649000, 'pc-specialist-vortex-core-ii-gaming-pc.jpg', '2018-05-10', 2),
(17, 3, 'AMAZON Fire 7 Tablet with Alexa (2017) - 8 GB, Black', '<p>A pr&oacute;xima gera&ccedil;&atilde;o do nosso tablet Fire mais vendido de sempre - agora mais fino, mais leve e com maior autonomia da bateria e um ecr&atilde; melhorado. Mais dur&aacute;vel do que o iPad mais recente</p>\r\n\r\n<p>Belos ecr&atilde;s IPS de 7&quot; com maior contraste e texto mais n&iacute;tido, um processador quad-core de 1,3 GHz e at&eacute; 8 horas de autonomia da bateria. 8 ou 16 GB de armazenamento interno e uma ranhura microSD para at&eacute; 256 GB de armazenamento expans&iacute;vel.</p>\r\n', 'amazon-fire-7-tablet-alexa-2017-8-gb-black', 49900, 'amazon-fire-7-tablet-alexa-2017-8-gb-black.jpg', '2018-05-12', 1),
(18, 3, 'AMAZON Fire HD 8 Tablet with Alexa (2017) - 16 GB, Black', '<p>Leve o seu assistente pessoal consigo para onde quer que v&aacute; com este tablet Amazon Fire HD 8 com o servi&ccedil;o na nuvem ativado por voz Alexa. O design fino do tablet &eacute; f&aacute;cil de manusear e o amplo ecr&atilde; de 8 polegadas &eacute; ideal para trabalho ou lazer. Este Amazon Fire HD 8 apresenta gr&aacute;ficos de alta defini&ccedil;&atilde;o super n&iacute;tidos para streaming imersivo.</p>\r\n', 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black', 71990, 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black.jpg', '2018-05-12', 2),
(19, 3, 'AMAZON Fire HD 8 Tablet with Alexa (2017) - 32 GB, Black', '<p>A pr&oacute;xima gera&ccedil;&atilde;o do nosso tablet Fire mais bem avaliado, com at&eacute; 12 horas de autonomia da bateria, um vibrante ecr&atilde; HD de 8&quot;, um processador quad-core de 1,3 GHz, 1,5 GB de RAM e Dolby Audio. Mais dur&aacute;vel do que o iPad mais recente.</p>\r\n\r\n<p>16 ou 32 GB de armazenamento interno e uma ranhura microSD para at&eacute; 256 GB de armazenamento expans&iacute;vel.</p>\r\n', 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black', 78099, 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black.jpg', '2018-05-10', 1),
(20, 3, 'APPLE 9.7\" iPad - 32 GB, Space Grey', '<p>Ecr&atilde; Retina de 9,7 polegadas, cor ampla e tom verdadeiro</p>\r\n\r\n<p>Chip A9 de terceira gera&ccedil;&atilde;o com arquitetura de 64 bits</p>\r\n\r\n<p>Coprocessador de movimento M9</p>\r\n\r\n<p>C&acirc;mara FaceTime HD de 1.2MP</p>\r\n\r\n<p>C&acirc;mara iSight de 8MP</p>\r\n\r\n<p>Toque no ID</p>\r\n\r\n<p>Apple Pay</p>\r\n', 'apple-9-7-ipad-32-gb-space-grey', 49000, 'apple-9-7-ipad-32-gb-space-grey.jpg', '2018-05-12', 1),
(27, 12, 'Capa para Iphone 7', '<p>Capa apra Iphone 7 normal&nbsp;</p>\r\n\r\n<p>Cor: preta, cinza, branca, rosa, rocha, amarela</p>\r\n', 'capa-para-iphone-7', 5900, 'capa-para-iphone-7.jpg', '2022-06-06', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(107, 31, 'PAYID-MQHTYLA6LA62886U62247611', '2023-03-13'),
(108, 32, 'PAYID-MQHUBKI94H00631LJ766171C', '2023-03-13'),
(109, 33, 'PAYID-MQHVIFI0PV01433N1572152R', '2023-03-13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(30, 'Osvaldo', '$2y$10$J29bziqWs2CQ9Aui48.3RuwcJLwY4uX84v8whc55jIMEQD7QwJXuK', 1, 'Osvaldo ', 'Jeremias', '', '', '', 1, 'zN9O2DUkvQLH', '', '2023-03-13'),
(31, 'Nilton', '$2y$10$wSkz92w.2.OEX5hZ5mvUEOI1DkVHwHPgM/i7LkSGWBJb50fYV17du', 0, 'Nilton', 'Tomé', '', '', '', 1, 'xbI4fpJGHloL', '', '2023-03-13'),
(32, 'Tino', '$2y$10$Ke9iTjQmTSEKZAgP4i8cMOFrxowErlasdKVwkiTRUJEv0IyST2dci', 0, 'Tino', 'Bobota', '', '', '', 1, 'cRbxPDIT8XQy', '', '2023-03-13'),
(33, 'Ernesto', '$2y$10$/L2ULiszz2pYD.u.JU9TqOgFFqm9rf51B6eVNnYUiFRgMp9zwxQ2W', 0, 'Ernesto', 'Sonjamba', '', '', '', 1, 'OclmKp2tdiF3', '', '2023-03-13');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
