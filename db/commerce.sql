-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Jun-2023 às 13:14
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
-- Banco de dados: `commerce`
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

--
-- Extraindo dados da tabela `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(1, 30, 1, 4),
(3, 30, 4, 6),
(4, 30, 12, 2),
(46, 41, 6, 1);

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
(12, 'Acessórios', 'acessorios'),
(14, 'Projetores ', ''),
(15, 'Câmeras de Segurança', ''),
(16, 'Câmaras Fotográficas', ''),
(17, 'Capas de Telemóveis', ''),
(18, 'Teclados', ''),
(20, 'Memórias RAM', '');

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
(95, 109, 7, 2),
(96, 110, 5, 1),
(97, 111, 7, 1),
(98, 112, 3, 2),
(99, 112, 8, 3),
(100, 113, 43, 3),
(101, 114, 43, 3),
(102, 115, 43, 3),
(103, 116, 43, 3),
(104, 117, 43, 5),
(105, 118, 43, 5),
(106, 119, 43, 5),
(107, 121, 43, 5),
(108, 123, 43, 5),
(109, 124, 43, 5),
(110, 125, 43, 5),
(111, 126, 43, 5),
(112, 127, 43, 2),
(113, 128, 43, 2),
(114, 129, 43, 2),
(115, 130, 43, 2),
(116, 131, 43, 2),
(117, 132, 43, 2),
(118, 133, 43, 2),
(119, 134, 43, 2),
(120, 135, 43, 5),
(121, 136, 43, 3),
(122, 137, 43, 2),
(123, 138, 6, 2),
(124, 139, 27, 2),
(125, 139, 28, 2),
(126, 140, 9, 2),
(127, 140, 11, 1),
(128, 140, 28, 2),
(129, 140, 19, 4),
(130, 141, 32, 3),
(131, 141, 18, 2),
(132, 142, 30, 3),
(133, 143, 4, 3),
(134, 145, 3, 1),
(135, 146, 1, 3),
(136, 147, 6, 1),
(137, 148, 44, 2),
(138, 148, 20, 2),
(139, 149, 5, 2),
(140, 150, 5, 1),
(141, 151, 11, 1),
(142, 152, 4, 2),
(143, 153, 45, 3),
(144, 153, 5, 2),
(145, 154, 6, 2),
(146, 154, 7, 3),
(147, 155, 10, 1),
(148, 156, 2, 2),
(149, 157, 48, 3),
(150, 158, 1, 2),
(151, 158, 2, 1),
(152, 160, 1, 1),
(153, 161, 1, 1);

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
  `counter` int(11) NOT NULL,
  `qnt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`, `qnt`) VALUES
(1, 1, 'DELL Inspiron 15 7000 15.6', '<p>Port&aacute;til de 15 polegadas ideal para jogadores. Com os mais recentes processadores Intel&reg; para um desempenho de jogo superior, gr&aacute;ficos NVIDIA&reg; GeForce&reg; realistas e um design avan&ccedil;ado de arrefecimento t&eacute;rmico.</p>\r\n', 'dell-inspiron-15-7000-15-6', 99900, 'dell-inspiron-15-7000-15-6.jpg', '2023-06-03', 4, 8),
(2, 1, 'MICROSOFT Surface Pro 4 & Typecover - 128 GB', '<p>O Surface Pro 4 permite tudo o que precisa de fazer, sendo mais leve do que nunca</p>\r\n\r\n<p>O ecr&atilde; PixelSense de 12,3 tem um contraste extremamente elevado e um brilho baixo para que possa trabalhar durante o dia sem for&ccedil;ar os olhos</p>\r\n\r\n<p>teclado n&atilde;o est&aacute; inclu&iacute;do e precisa ser comprado separadamente</p>\r\n\r\n<p>Apresenta um Intel Core i5 6th Gen (Skylake) Core, sem fio: 802.11ac Wi-Fi rede sem fio; IEEE 802.11a/b/g/n compat&iacute;vel com Bluetooth 4.0 tecnologia sem fio</p>\r\n\r\n<p>Envios em embalagens de consumo.</p>\r\n', 'microsoft-surface-pro-4-typecover-128-gb', 795000, 'microsoft-surface-pro-4-typecover-128-gb.jpg', '2023-06-03', 3, 9),
(3, 1, 'DELL Inspiron  14.0', '<p>O notebook intermedi&aacute;rio de 15,6 polegadas da Dell &eacute; um bloco sem gra&ccedil;a e volumoso. H&aacute; muito tempo que a linha Inspiron carece de qualquer tipo de musa est&eacute;tica, e o Inspiron 15 5000 segue essa tend&ecirc;ncia. &Eacute; uma laje de pl&aacute;stico prateada com o logotipo da Dell em um brilho de espelho.</p>\r\n\r\n<p>Levantar a tampa revela o ecr&atilde; de 15,6 polegadas e 1080p rodeado por uma luneta quase ofensivamente espessa e um deck de pl&aacute;stico com um aspeto falso de metal escovado. H&aacute; um leitor de impress&otilde;es digitais no bot&atilde;o liga/desliga e o teclado &eacute; uma cole&ccedil;&atilde;o preta de teclas estilo ilha.</p>\r\n', 'dell-inspiron-14-0', 156000, 'dell-inspiron-15-5000-15-6.jpg', '2023-06-03', 1, 0),
(4, 1, 'LENOVO Ideapad 320s-14IKB 14\" Laptop - Grey', '<p>- Concebido para portabilidade com um design de chassis fino e leve&nbsp;</p>\r\n\r\n<p>- Processamento poderoso ajuda voc&ecirc; a criar e produzir em qualquer lugar&nbsp;</p>\r\n\r\n<p>- Tela Full HD garante visuais n&iacute;tidos para filmes, p&aacute;ginas da web, fotos e muito mais&nbsp;</p>\r\n\r\n<p>- Desfrute de um som quente e cintilante, cortesia de dois alto-falantes Harman e Dolby Audio&nbsp;<br />\r\n- Transfer&ecirc;ncia r&aacute;pida de dados e conex&atilde;o de v&iacute;deo de alta qualidade com portas USB-C e HDMI&nbsp;</p>\r\n\r\n<p>O port&aacute;til Lenovo IdeaPad 320s-14IKB de 14&quot; faz parte da nossa gama Reach, que tem a mais recente tecnologia para o ajudar a desenvolver as suas ideias e trabalhar no seu melhor. &Eacute; &oacute;timo para editar documentos complexos, uso comercial, editar fotos e qualquer outra coisa que voc&ecirc; fa&ccedil;a ao longo do dia.</p>\r\n', 'lenovo-ideapad-320s-14ikb-14-laptop-grey', 208000, 'lenovo-ideapad-320s-14ikb-14-laptop-grey.jpg', '2023-05-05', 2, 4),
(5, 3, 'APPLE 9.7\" iPad - 32 GB, Gold', '<p>Ecr&atilde; Retina de 9,7 polegadas, resolu&ccedil;&atilde;o de 2048 x 1536, ecr&atilde; Wide Color e True Tone Display</p>\r\n\r\n<p>Apple iOS 9, chip A9X com arquitetura de 64 bits, coprocessador M9</p>\r\n\r\n<p>C&acirc;mara iSight de 12 MP, Flash True Tone, Panorama (at&eacute; 63MP), &Aacute;udio de quatro altifalantes</p>\r\n\r\n<p>At&eacute; 10 horas de autonomia da bateria</p>\r\n\r\n<p>iPad Pro suporta Apple Smart Keyboard e Apple Pencil</p>\r\n', 'apple-9-7-ipad-32-gb-gold', 58900, 'apple-9-7-ipad-32-gb-gold.jpg', '2023-05-05', 4, 7),
(6, 1, 'DELL Inspiron 15 5000 15', '<p>Port&aacute;til de 15 polegadas que proporciona uma experi&ecirc;ncia de visualiza&ccedil;&atilde;o excecional, um acabamento de viragem da cabe&ccedil;a e uma variedade de op&ccedil;&otilde;es concebidas para elevar o seu entretenimento, onde quer que v&aacute;.</p>\r\n', 'dell-inspiron-15-5000-15', 120700, 'dell-inspiron-15-5000-15.jpg', '2023-05-05', 3, 15),
(7, 3, 'APPLE 10.5\" iPad Pro - 64 GB, Space Grey (2017)', '<p>Grava&ccedil;&atilde;o de v&iacute;deo 4K a 30 fps</p>\r\n\r\n<p>C&acirc;mara de 12 megap&iacute;xeis</p>\r\n\r\n<p>Revestimento resistente a impress&otilde;es digitais</p>\r\n\r\n<p>Revestimento antirreflexo</p>\r\n\r\n<p>Videochamada Face Time</p>\r\n\r\n<p>g</p>\r\n', 'apple-10-5-ipad-pro-64-gb-space-grey-2017', 61500, 'apple-10-5-ipad-pro-64-gb-space-grey-2017.jpg', '2023-05-05', 1, 3),
(8, 1, 'ASUS Transformer Mini T102HA 10.1\" 2 in 1 - Silver', '<p>Vers&aacute;til dispositivo Windows 10 com teclado e caneta inclu&iacute;dos, funcionalidade 2 em 1: use como laptop e tablet. Atualize o Windows periodicamente para garantir que seus aplicativos tenham as configura&ccedil;&otilde;es de seguran&ccedil;a mais recentes.</p>\r\n\r\n<p>Autonomia da bateria durante todo o dia, com uma dura&ccedil;&atilde;o de at&eacute; 11 horas de reprodu&ccedil;&atilde;o de v&iacute;deo; 128GB de armazenamento em estado s&oacute;lido. Bateria de pol&iacute;mero.Com at&eacute; 11 horas entre as cargas, voc&ecirc; pode ter certeza de que o Transformer Mini T102HA estar&aacute; l&aacute; sempre que precisar. Pode carregar o T102HA atrav&eacute;s da sua porta micro USB, para que possa utilizar um carregador de telem&oacute;vel ou qualquer banco de energia com um conector micro USB.</p>\r\n', 'asus-transformer-mini-t102ha-10-1-2-1-silver', 110000, 'asus-transformer-mini-t102ha-10-1-2-1-silver.jpg', '2023-03-30', 5, 3),
(9, 2, 'PC SPECIALIST Vortex Core Lite Gaming PC', '<p>- Melhor desempenho para jogar eSports e muito mais&nbsp;</p>\r\n\r\n<p>- Os gr&aacute;ficos NVIDIA GeForce GTX proporcionam visuais suaves&nbsp;</p>\r\n\r\n<p>- GeForce Experience entrega atualiza&ccedil;&otilde;es diretamente para o seu PC&nbsp;</p>\r\n\r\n<p>O especialista em PC Vortex Core Lite faz parte da nossa gama de jogos, trazendo-lhe os PCs mais impressionantes dispon&iacute;veis atualmente. Tem gr&aacute;ficos espetaculares e desempenho de processamento r&aacute;pido para se adequar aos jogadores mais exigentes.</p>\r\n', 'pc-specialist-vortex-core-lite-gaming-pc', 387000, 'pc-specialist-vortex-core-lite-gaming-pc.jpg', '2023-03-30', 1, 10),
(10, 2, 'DELL Inspiron 5675 Gaming PC - Recon Blue', '<p>Novo desktop para jogos com poderosos processadores AMD Ryzen&trade;, gr&aacute;ficos prontos para VR, ilumina&ccedil;&atilde;o LED e um design meticuloso para resfriamento ideal.</p>\r\n', 'dell-inspiron-5675-gaming-pc-recon-blue', 490000, 'dell-inspiron-5675-gaming-pc-recon-blue.jpg', '2023-05-05', 1, 0),
(11, 2, 'HP Barebones OMEN X 900-099nn Gaming PC', '<p>O que est&aacute; dentro importa.</p>\r\n\r\n<p>Sem arrefecimento adequado, o desempenho de n&iacute;vel superior nunca atinge todo o seu potencial.</p>\r\n\r\n<p>Nove zonas de ilumina&ccedil;&atilde;o acentuam as linhas agressivas e o acabamento preto suave desta caixa de a&ccedil;o galvanizado &uacute;nica.</p>\r\n', 'hp-barebones-omen-x-900-099nn-gaming-pc', 489500, 'hp-barebones-omen-x-900-099nn-gaming-pc.jpg', '2023-05-05', 1, 2),
(12, 2, 'ACER Aspire GX-781 Gaming PC', '<p>- GTX 1050 placa gr&aacute;fica permite que voc&ecirc; jogue jogos enormes em grandes resolu&ccedil;&otilde;es&nbsp;</p>\r\n\r\n<p>- Processador Core i5&trade; de &uacute;ltima gera&ccedil;&atilde;o pode lidar com software de m&iacute;dia exigente&nbsp;</p>\r\n\r\n<p>- O armazenamento SSD super-r&aacute;pido permite carregar programas em pouco tempo&nbsp;</p>\r\n\r\n<p>O Acer Aspire GX-781 Gaming PC faz parte da nossa gama Gaming, que oferece os PCs mais potentes dispon&iacute;veis atualmente. Tem excelentes gr&aacute;ficos e desempenho de processamento para se adequar ao jogador mais exigente.</p>\r\n', 'acer-aspire-gx-781-gaming-pc', 549000, 'acer-aspire-gx-781-gaming-pc.jpg', '2023-04-25', 1, 18),
(13, 2, 'HP Pavilion Power 580-015na Gaming PC', '<p>Apresenta o mais recente processador quad core Intel i5 e gr&aacute;ficos discretos. Com esse poder, voc&ecirc; est&aacute; pronto para assumir qualquer atividade, desde fazer arte digital at&eacute; conquistar novos mundos em RV.</p>\r\n\r\n<p>Escolha o desempenho e o armazenamento de que precisa. Arranque em segundos com SSD de 128 GB.</p>\r\n\r\n<p>Abandone a caixa cinza sem brilho, esta &aacute;rea de trabalho vem infundida com estilo. Uma nova luneta angular e um design verde e preto arrojado d&atilde;o ao seu espa&ccedil;o de trabalho a dose certa de atitude.</p>\r\n\r\n<p>Desempenho at&eacute; 3 vezes mais r&aacute;pido - As placas gr&aacute;ficas GeForce GTX s&eacute;rie 10 s&atilde;o alimentadas pela Pascal para oferecer o dobro do desempenho das placas gr&aacute;ficas da gera&ccedil;&atilde;o anterior.</p>\r\n', 'hp-pavilion-power-580-015na-gaming-pc', 672000, 'hp-pavilion-power-580-015na-gaming-pc.jpg', '2018-05-12', 1, 11),
(14, 2, 'LENOVO Legion Y520 Gaming PC', '<p>- Multi-tarefa com facilidade gra&ccedil;as ao processador Intel&reg; i5&nbsp;</p>\r\n\r\n<p>- Prepare-se para a batalha com a placa gr&aacute;fica NVIDIA GeForce GTX&nbsp;</p>\r\n\r\n<p>- VR pronto para a pr&oacute;xima gera&ccedil;&atilde;o de jogos imersivos e entretenimento</p>\r\n\r\n<p>- Atualiza&ccedil;&atilde;o sem ferramentas ajuda voc&ecirc; a personalizar seu sistema de acordo com suas pr&oacute;prias demandas&nbsp;</p>\r\n\r\n<p>Parte da nossa gama Gaming, que apresenta os PCs mais poderosos dispon&iacute;veis atualmente, o Lenovo Legion Y520 Gaming PC tem gr&aacute;ficos e desempenho de processamento superiores para se adequar ao jogador mais exigente.</p>\r\n', 'lenovo-legion-y520-gaming-pc', 497000, 'lenovo-legion-y520-gaming-pc.jpg', '2018-05-10', 13, 8),
(15, 2, 'PC SPECIALIST Vortex Minerva XT-R Gaming PC', '<p>- Gr&aacute;ficos NVIDIA GeForce GTX para visuais de jogos impressionantes</p>\r\n\r\n<p>- Feito para eSports com um r&aacute;pido processador Intel Core i5 de&reg;&trade; 7&ordf; gera&ccedil;&atilde;o</p>\r\n\r\n<p>- A tecnologia GeForce permite que voc&ecirc; atualize diretamente os drivers, grave seus jogos e muito mais</p>\r\n\r\n<p>O PC Specialist Vortex Minerva XT-R Gaming PC faz parte da nossa gama Gaming, que oferece os PCs mais potentes dispon&iacute;veis. Seus gr&aacute;ficos e processamento de alto desempenho s&atilde;o feitos para atender &agrave;s necessidades de jogadores s&eacute;rios.</p>\r\n', 'pc-specialist-vortex-minerva-xt-r-gaming-pc', 366000, 'pc-specialist-vortex-minerva-xt-r-gaming-pc.jpg', '2018-05-10', 1, 19),
(16, 2, 'PC SPECIALIST Vortex Core II Gaming PC', '<p>Processador: Processador Intel&reg; CoreTM i3-6100- Dual-core- 3,7 GHz- 3 MB de cache</p>\r\n\r\n<p>Mem&oacute;ria RAM: 8 GB DDR4 HyperX, armazenamento: 1 TB HDD, 7200 rpm</p>\r\n\r\n<p>Placa gr&aacute;fica: NVIDIA GeForce GTX 950 (2 GB GDDR5), Placa-m&atilde;e: ASUS H110M-R<br />\r\nUSB: USB 3.0 x 3- USB 2.0 x 5, Interface de v&iacute;deo: HDMI x 1- DisplayPort x 1- DVI x 2, Interface de &aacute;udio: jack de 3,5 mm, Unidade de disco &oacute;tico: DVD/RW, Ranhura para placa de expans&atilde;o PCIe: (x1) x 2</p>\r\n\r\n<p>Som: 5.1 Suporte de som surround PSU Corsair: VS350, 350W, Cor: Preto-Verde destaques, Conte&uacute;do da caixa: PC Specialist Vortex Core- Cabo de alimenta&ccedil;&atilde;o AC</p>\r\n', 'pc-specialist-vortex-core-ii-gaming-pc', 649000, 'pc-specialist-vortex-core-ii-gaming-pc.jpg', '2018-05-10', 2, 16),
(17, 3, 'AMAZON Fire 7 Tablet with Alexa (2017) - 8 GB, Black', '<p>A pr&oacute;xima gera&ccedil;&atilde;o do nosso tablet Fire mais vendido de sempre - agora mais fino, mais leve e com maior autonomia da bateria e um ecr&atilde; melhorado. Mais dur&aacute;vel do que o iPad mais recente</p>\r\n\r\n<p>Belos ecr&atilde;s IPS de 7&quot; com maior contraste e texto mais n&iacute;tido, um processador quad-core de 1,3 GHz e at&eacute; 8 horas de autonomia da bateria. 8 ou 16 GB de armazenamento interno e uma ranhura microSD para at&eacute; 256 GB de armazenamento expans&iacute;vel.</p>\r\n', 'amazon-fire-7-tablet-alexa-2017-8-gb-black', 49900, 'amazon-fire-7-tablet-alexa-2017-8-gb-black.jpg', '2018-05-12', 1, 17),
(18, 3, 'AMAZON Fire HD 8 Tablet with Alexa (2017) - 16 GB, Black', '<p>Leve o seu assistente pessoal consigo para onde quer que v&aacute; com este tablet Amazon Fire HD 8 com o servi&ccedil;o na nuvem ativado por voz Alexa. O design fino do tablet &eacute; f&aacute;cil de manusear e o amplo ecr&atilde; de 8 polegadas &eacute; ideal para trabalho ou lazer. Este Amazon Fire HD 8 apresenta gr&aacute;ficos de alta defini&ccedil;&atilde;o super n&iacute;tidos para streaming imersivo.</p>\r\n', 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black', 71990, 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black.jpg', '2023-04-24', 1, 13),
(19, 3, 'AMAZON Fire HD 8 Tablet with Alexa (2017) - 32 GB, Black', '<p>A pr&oacute;xima gera&ccedil;&atilde;o do nosso tablet Fire mais bem avaliado, com at&eacute; 12 horas de autonomia da bateria, um vibrante ecr&atilde; HD de 8&quot;, um processador quad-core de 1,3 GHz, 1,5 GB de RAM e Dolby Audio. Mais dur&aacute;vel do que o iPad mais recente.</p>\r\n\r\n<p>16 ou 32 GB de armazenamento interno e uma ranhura microSD para at&eacute; 256 GB de armazenamento expans&iacute;vel.</p>\r\n', 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black', 78099, 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black.jpg', '2023-03-30', 3, 5),
(20, 3, 'APPLE 9.7\" iPad - 32 GB, Space Grey', '<p>Ecr&atilde; Retina de 9,7 polegadas, cor ampla e tom verdadeiro</p>\r\n\r\n<p>Chip A9 de terceira gera&ccedil;&atilde;o com arquitetura de 64 bits</p>\r\n\r\n<p>Coprocessador de movimento M9</p>\r\n\r\n<p>C&acirc;mara FaceTime HD de 1.2MP</p>\r\n\r\n<p>C&acirc;mara iSight de 8MP</p>\r\n\r\n<p>Toque no ID</p>\r\n\r\n<p>Apple Pay</p>\r\n', 'apple-9-7-ipad-32-gb-space-grey', 49000, 'apple-9-7-ipad-32-gb-space-grey.jpg', '2023-04-25', 1, 5),
(27, 12, 'Capa para Iphone 7', '<p>Capa apra Iphone 7 normal&nbsp;</p>\r\n\r\n<p>Cor: preta, cinza, branca, rosa, rocha, amarela</p>\r\n', 'capa-para-iphone-7', 5900, 'capa-para-iphone-7.jpg', '2023-04-25', 1, 12),
(28, 13, 'Amazon Smartphone', '<p>amazon-fire-7-Smartphone-alexa-201black7-8-gb-</p>\r\n', 'amazon-smartphone', 38000, 'amazon-smartphone.jpg', '2023-04-24', 1, 7),
(29, 13, 'Tecno Pop 2', '<p>Smartphone Tecno-POP2</p>\r\n\r\n<p>RAM 2GB</p>\r\n\r\n<p>ARMAZENAMENTO-gb-black</p>\r\n\r\n<p>5MPx</p>\r\n', 'tecno-pop-2', 46000, 'tecno-pop-2.jpg', '2023-04-24', 3, 8),
(30, 3, 'amazon-fire-hd-8-tablet-alexa', '<p>amazon-fire-hd-8-tablet-alexa-2017-32-gb-black</p>\r\n', 'amazon-fire-hd-8-tablet-alexa', 53000, 'amazon-fire-hd-8-tablet-alexa.jpg', '2023-04-24', 2, 17),
(31, 3, 'Apple-9-7-ipad', '<p>Apple-9-7-ipad-32-gb-gold</p>\r\n', 'apple-9-7-ipad', 59500, 'apple-9-7-ipad.jpg', '0000-00-00', 0, 20),
(32, 3, 'Apple-10-5-ipad-pro', '<p>Apple-10-5-ipad-pro-64-gb-space-grey-2017</p>\r\n', 'apple-10-5-ipad-pro', 72000, 'apple-10-5-ipad-pro.jpg', '2023-04-24', 1, 10),
(33, 15, 'Câmera de Segurança 360º', '<p>C&acirc;mera de seguran&ccedil;a de &uacute;ltima gera&ccedil;&atilde;o</p>\r\n\r\n<p>Filmagem 2160p</p>\r\n\r\n<p>Filma num &acirc;ngulo de 360&ordm;</p>\r\n', 'camera-de-seguranc-360o', 47000, 'camera-de-seguranc-360o.jpg', '0000-00-00', 0, 6),
(34, 15, 'Câmera de Segurança Ip', '<p>C&acirc;mera de seguran&ccedil;a de IP</p>\r\n\r\n<p>Filmagem 1080p</p>\r\n\r\n<p>Filma num &acirc;ngulo de 360&ordm;</p>\r\n', 'camera-de-seguranc-ip', 51000, 'camera-de-seguranc-ip.jpg', '0000-00-00', 0, 7),
(35, 15, 'Câmera panorâmica', '<p>C&acirc;mera de seguran&ccedil;a Panor&acirc;mica</p>\r\n\r\n<p>Filmagem 2160p</p>\r\n\r\n<p>Filma num &acirc;ngulo de 360&ordm;</p>\r\n', 'camera-panoramica', 44500, '', '0000-00-00', 0, 4),
(36, 16, 'Câmera Kanon', '<p>C&acirc;mera de Fotogr&aacute;fica&nbsp;de &uacute;ltima gera&ccedil;&atilde;o</p>\r\n\r\n<p>Grava&ccedil;&atilde;o de video&nbsp;4k</p>\r\n\r\n<p>50MPx</p>\r\n', 'camera-kanon', 78000, 'camera-kanon.jpg', '0000-00-00', 0, 2),
(37, 17, 'Capa para Samsung', '<p>Capas cor vermelha, preta e branca</p>\r\n', 'capa-para-samsung', 4500, 'capa-para-samsung.jpg', '0000-00-00', 0, 14),
(38, 17, 'Capa para Iphone 8', '<p>Capa para iphone 8 cor cinzenta</p>\r\n', 'capa-para-iphone-8', 7000, 'capa-para-iphone-8.png', '0000-00-00', 0, 14),
(39, 17, 'Capa para Iphone Xr', '<p>Capa para iphone Xr, cor azul e preta</p>\r\n', 'capa-para-iphone-xr', 8500, 'capa-para-iphone-xr.png', '0000-00-00', 0, 16),
(40, 17, 'Capa para Tecno spark 7', '<p>Capa para Tecno spark 7, cor vermelha</p>\r\n', 'capa-para-tecno-spark-7', 3600, 'capa-para-tecno-spark-7.jpg', '0000-00-00', 0, 15),
(41, 17, 'Capa para Iphone 11', '<p>Capa para iphone 11, cor azul,&nbsp;preta, vermelha, lil&aacute;s</p>\r\n', 'capa-para-iphone-11', 9000, 'capa-para-iphone-11.jpg', '0000-00-00', 0, 11),
(43, 14, 'Electro-projector', '<p>- Electro-projector;</p>\r\n\r\n<p>- Entradas VGA, HDMI;</p>\r\n\r\n<p>- CONEX&Atilde;O WIFI;</p>\r\n', 'electro-projector', 123000, 'aaaaaaaaaaaaaa_1680190842.png', '2023-05-05', 1, 7),
(44, 5, 'Impressora DeskJet 2070', '<p>Cartucho 123</p>\r\n\r\n<p>Wireless</p>\r\n\r\n<p>Scanner</p>\r\n\r\n<p>C&oacute;pia</p>\r\n\r\n<p>Printer</p>\r\n', 'impressora-deskjet-2070', 45000, 'impressora-deskjet-2070.jpg', '2023-04-25', 1, 16),
(45, 5, 'Imprensora Laser', '<p>Impressora Laser</p>\r\n\r\n<p>Wireless</p>\r\n\r\n<p>C&oacute;pia</p>\r\n\r\n<p>Impress&atilde;o</p>\r\n\r\n<p>Scanner</p>\r\n', 'imprensora-laser', 148000, 'imprensora-laser.jpg', '2023-05-05', 1, 10),
(46, 16, 'Câmera Epron', '<p>Filmagem 4k</p>\r\n\r\n<p>50MPx</p>\r\n\r\n<p>Zoom 10x</p>\r\n', 'camera-epron', 82000, 'camera-epron.jpg', '0000-00-00', 0, 11),
(47, 20, 'Memória RAM DDR3', '<p>Mem&oacute;ria RAM DDR3</p>\r\n\r\n<p>FREQU&Egrave;NCIA 1666MHz</p>\r\n\r\n<p>CAPACIDADE 16GB</p>\r\n', 'memoria-ram-ddr3', 8000, 'memoria-ram-ddr3.jpg', '0000-00-00', 0, 23),
(48, 2, 'computador gamer', '', 'computador-gamer', 1000000, 'computador-gamer.jpg', '2023-05-05', 1, 7),
(49, 1, 'computador portátil', '<p>pc potente</p>\r\n', 'computador-portatil', 500000, 'computador-portatil.png', '0000-00-00', 0, 9),
(50, 14, 'projetor', '<p>ihhkjsbjkbvsnmaass</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>swjajahajhjgjg</p>\r\n', 'projetor', 20000, '', '0000-00-00', 0, 5),
(51, 1, 'pc mini', '<p>nvknldnc&ccedil;xz</p>\r\n\r\n<p>dhsuhihqoaaoihx</p>\r\n', 'pc-mini', 25000000, 'pc-mini.jpg', '0000-00-00', 0, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(107, 31, 'PAYID-MQHTYLA6LA62886U62247611', '2023-03-12 23:00:00'),
(108, 32, 'PAYID-MQHUBKI94H00631LJ766171C', '2023-03-12 23:00:00'),
(109, 33, 'PAYID-MQHVIFI0PV01433N1572152R', '2023-03-12 23:00:00'),
(110, 31, 'PAYID-MQKDFSY1B97013199010430S', '2023-03-16 23:00:00'),
(111, 35, 'PAYID-MQKDLDQ0LD36935437355717', '2023-03-16 23:00:00'),
(112, 31, 'PAYID-MQKDQGI87Y58013982858642', '2023-03-17 11:47:43'),
(113, 31, 'PAYID-MQSZEKA9LN01966X2879931D', '2023-03-29 23:00:00'),
(114, 31, 'PAYID-MQSZEKA9LN01966X2879931D', '2023-03-29 23:00:00'),
(115, 31, 'PAYID-MQSZEKA9LN01966X2879931D', '2023-03-29 23:00:00'),
(116, 31, 'PAYID-MQSZEKA9LN01966X2879931D', '2023-03-29 23:00:00'),
(117, 31, 'PAYID-MQSZG5Y1J396584KT1613448', '2023-03-29 23:00:00'),
(118, 31, 'PAYID-MQSZINY9LX50800EL081972J', '2023-03-29 23:00:00'),
(119, 31, 'PAYID-MQSZINY9LX50800EL081972J', '2023-03-29 23:00:00'),
(120, 31, 'PAYID-MQSZINY9LX50800EL081972J', '2023-03-29 23:00:00'),
(121, 31, 'PAYID-MQSZJQA0LE042590L156514D', '2023-03-29 23:00:00'),
(122, 31, 'PAYID-MQSZINY9LX50800EL081972J', '2023-03-29 23:00:00'),
(123, 31, 'PAYID-MQSZKGA8LF30880WE1686534', '2023-03-29 23:00:00'),
(124, 31, 'PAYID-MQSZK7I2EE93414PB043482X', '2023-03-29 23:00:00'),
(125, 31, 'PAYID-MQSZK7I2EE93414PB043482X', '2023-03-29 23:00:00'),
(126, 31, 'PAYID-MQSZMFI9DS10831LY4652528', '2023-03-29 23:00:00'),
(127, 31, 'PAYID-MQSZOGY4LB28021P83312534', '2023-03-29 23:00:00'),
(128, 31, 'PAYID-MQSZOGY4LB28021P83312534', '2023-03-29 23:00:00'),
(129, 31, 'PAYID-MQSZOGY4LB28021P83312534', '2023-03-29 23:00:00'),
(130, 31, 'PAYID-MQSZOGY4LB28021P83312534', '2023-03-29 23:00:00'),
(131, 31, 'PAYID-MQSZOGY4LB28021P83312534', '2023-03-29 23:00:00'),
(132, 31, 'PAYID-MQSZOGY4LB28021P83312534', '2023-03-29 23:00:00'),
(133, 31, 'PAYID-MQSZOGY4LB28021P83312534', '2023-03-29 23:00:00'),
(134, 31, 'PAYID-MQSZOGY4LB28021P83312534', '2023-03-29 23:00:00'),
(135, 31, 'PAYID-MQSZQKA175647705U438544A', '2023-03-29 23:00:00'),
(136, 31, 'PAYID-MQSZQXI61V44825NC503382K', '2023-03-29 23:00:00'),
(137, 31, 'PAYID-MQSZWVI4J019612PB787104X', '2023-03-30 14:23:37'),
(138, 33, 'PAYID-MQS3LQA6SV709618L779092M', '2023-03-30 16:16:55'),
(139, 31, 'PAYID-MRDEWRQ4JX061435U3556329', '2023-04-24 09:27:07'),
(140, 33, 'PAYID-MRDE4AA6LY12466EM692663G', '2023-04-24 09:38:24'),
(141, 41, 'PAYID-MRDFEYY09W07015VJ6047215', '2023-04-24 09:57:15'),
(142, 33, 'PAYID-MRDGDZA1H292554DF821293S', '2023-04-24 11:03:18'),
(143, 36, 'PAYID-MRD3EMQ994210857E1850250', '2023-04-25 10:59:15'),
(144, 31, 'PAYID-MRD3NOI9NE09881EE3813842', '2023-04-25 11:23:04'),
(145, 31, 'PAYID-MRD3NOI9NE09881EE3813842', '2023-04-25 11:25:30'),
(146, 41, 'PAYID-MRD4MJQ4DK5837645893292R', '2023-04-25 12:23:30'),
(147, 41, 'PAYID-MRD4OTQ5LU57889LL043663V', '2023-04-25 12:28:10'),
(148, 39, 'PAYID-MRD6LPQ4V063599YK253533H', '2023-04-25 14:38:20'),
(149, 33, 'PAYID-MRKLESI8KK87533U2655922T', '2023-05-05 07:47:21'),
(150, 31, 'PAYID-MRKNTLQ2NB549989R022600D', '2023-05-05 11:26:15'),
(151, 31, 'PAYID-MRKPTWQ3DP51879FP4244506', '2023-05-05 13:43:26'),
(152, 37, 'PAYID-MRKPUGQ9TM33800FG154380J', '2023-05-05 13:44:17'),
(153, 37, 'PAYID-MRKPUVA1EM97383TD984384G', '2023-05-05 13:45:17'),
(154, 36, 'PAYID-MRKPWDY82H1135445499933C', '2023-05-05 13:48:22'),
(155, 35, 'PAYID-MRKPWVA5AJ84831TL299881D', '2023-05-05 13:49:34'),
(156, 31, 'PAYID-MRKQXMQ3SM949754U4199847', '2023-05-05 14:59:37'),
(157, 33, 'PAYID-MRKQ3JY82119122CH352825B', '2023-05-05 15:07:43'),
(158, 31, 'PAYID-MR5TKGI83510170DD2240520', '2023-06-03 13:42:20'),
(159, 31, 'ksdjfksj', '2023-06-03 13:02:35'),
(160, 31, 'PAYID-MR5TUDY91027490B7748521U', '2023-06-03 14:04:00'),
(161, 31, 'PAYID-MR5TWJA6J9747974U7154038', '2023-06-03 13:07:57');

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
(30, 'Osvaldo', '$2y$10$O7o5ysdVsYpfnF4.jH3UleqYta11QEedZD8tX5XjVu47of.LEZskG', 1, 'Osvaldo ', 'Jeremias', '', '', 'IMG_20210806_154937 (2).jpg', 1, 'zN9O2DUkvQLH', '', '2023-03-13'),
(31, 'Nilton', '$2y$10$wSkz92w.2.OEX5hZ5mvUEOI1DkVHwHPgM/i7LkSGWBJb50fYV17du', 0, 'Nilton', 'Tomé', '', '', '', 1, 'xbI4fpJGHloL', '', '2023-03-13'),
(32, 'Tino', '$2y$10$Ke9iTjQmTSEKZAgP4i8cMOFrxowErlasdKVwkiTRUJEv0IyST2dci', 0, 'Tino', 'Bobota', '', '', '', 1, 'cRbxPDIT8XQy', '', '2023-03-13'),
(33, 'Ernesto', '$2y$10$/L2ULiszz2pYD.u.JU9TqOgFFqm9rf51B6eVNnYUiFRgMp9zwxQ2W', 0, 'Ernesto', 'Sonjamba', '', '', '', 1, 'OclmKp2tdiF3', '', '2023-03-13'),
(35, 'Mateus', '$2y$10$GPFH7WUN2BCJC0ZMaySTYuVfJsVgG6EGAe4KN8z808SAagK3BXOFC', 0, 'Mateus', 'Francisco', '', '', '', 1, '6wFLH2kOjq3p', '', '2023-03-16'),
(36, 'Ariclene', '$2y$10$kBulPrVzbcoCRTYbA7THC.XZHsYWZJLNs82jHGmuXeNKnoPXpFLji', 0, 'Ariclene', 'Gaspar', '', '', '', 1, '83VhQeUmao4S', '', '2023-03-16'),
(37, 'Abel', '$2y$10$j5G7QslDfyUfuecjoKFSOuejZujxrcSjIQXZUTbGMb.4BpVV3AUpu', 0, 'Abel', 'Kanas', '', '', '', 1, 'DQXgY8HC2fuL', '', '2023-03-16'),
(38, 'Dalvia', '$2y$10$3MAorciE4DLdBnnYB7UESeL2ObU.kNylVQZ0K6lxd2JLY07UO6Fea', 0, 'Dalvia ', 'João', '', '', '', 1, 'NpIKP26DXTvZ', '', '2023-03-16'),
(39, 'Elizandra', '$2y$10$TC.DK6kLz1iU12Bw2/lE/e7llYtVGni8pdQqmbXPPRFxPJ1esx9v6', 0, 'Elizandra', 'Manuel', '', '', '', 1, 'XH94Ja2byAlg', '', '2023-03-16'),
(40, 'Erondina', '$2y$10$.upHywFn9IfCExJMN04QdOxKZTNN6bJdYrgRA7Hnd1BmtXEhawLZ.', 0, 'Erondina', 'Kiteculo', '', '', '', 1, 'cjTaD3d2hVwI', '', '2023-03-16'),
(41, 'Nsungu', '$2y$10$w1KNQlBDYxev.6/LML24Zej8gde2dc7bjUzt.aNo0MagDM/pxfjyS', 0, 'Nsungu', 'Pedro', '', '', '', 1, 'oD3uUJTSasHd', '', '2023-04-24'),
(42, 'osvaldofideljeremias2020@gmail.com', '$2y$10$IXx2rkSgRefKGG5wGTSyjeaE..Hqe3vr1Q9bOyOtrnauk/hHn/eZK', 0, 'Kiampava', 'Nzola', 'rua g, bakhita nkossi', '924598849', '1.png', 1, '', 'u8dWREIJCDoYULS', '2023-04-24'),
(43, 'Joel', '$2y$10$uYA.hnFHg.D8HV5Wxyynge9bO6MKsYrKYGKWzWevd6nPDNy7wB3ai', 0, 'Joel', 'Mbengui', '', '', '', 1, 'rda4pRnuf6m7', '', '2023-06-03');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de tabela `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de tabela `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
