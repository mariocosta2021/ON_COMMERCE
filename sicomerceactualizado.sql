-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Jun-2022 às 08:47
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

--
-- Extraindo dados da tabela `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(1, 9, 1, 4),
(3, 9, 4, 6),
(4, 9, 12, 2),
(5, 17, 10, 3),
(6, 17, 11, 4);

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
(14, 10, 11, 2),
(15, 20, 13, 5),
(16, 30, 3, 2),
(17, 40, 1, 3),
(18, 15, 13, 3),
(19, 30, 2, 4),
(20, 63, 2, 4),
(21, 56, 2, 4),
(22, 77, 2, 4),
(23, 59, 2, 4),
(24, 20, 2, 4),
(25, 10, 2, 4),
(26, 53, 2, 4),
(27, 90, 2, 4),
(28, 15, 2, 4),
(29, 81, 2, 4),
(30, 57, 2, 4),
(31, 64, 2, 4),
(32, 56, 2, 4),
(33, 33, 2, 4),
(34, 30, 2, 4),
(35, 16, 2, 4),
(36, 85, 2, 4),
(37, 59, 2, 4),
(38, 32, 2, 4),
(39, 57, 2, 4),
(40, 43, 2, 4),
(41, 87, 2, 4),
(42, 68, 2, 4),
(43, 89, 2, 4),
(44, 66, 2, 4),
(45, 69, 2, 4),
(46, 57, 2, 4),
(47, 58, 2, 4),
(48, 54, 2, 4),
(49, 48, 2, 4),
(50, 46, 2, 4),
(51, 55, 2, 4),
(52, 58, 2, 4),
(53, 52, 2, 4),
(54, 20, 2, 4),
(55, 53, 2, 4),
(56, 61, 2, 4),
(57, 50, 2, 4),
(58, 45, 2, 4),
(59, 57, 2, 4),
(60, 43, 2, 4),
(61, 58, 2, 4),
(62, 68, 2, 4),
(63, 61, 2, 4),
(64, 18, 2, 4),
(65, 59, 2, 4),
(66, 63, 2, 4),
(67, 25, 2, 4),
(68, 26, 2, 4),
(69, 28, 2, 4),
(70, 41, 2, 4),
(71, 49, 2, 4),
(72, 64, 2, 4),
(73, 17, 2, 4),
(74, 21, 2, 4),
(75, 16, 2, 4),
(76, 91, 0, 4),
(77, 30, 2, 4),
(78, 86, 2, 4),
(79, 48, 2, 4),
(80, 76, 2, 4),
(81, 90, 2, 4),
(82, 14, 2, 4),
(83, 78, 2, 4),
(84, 79, 2, 4),
(85, 47, 2, 4),
(86, 45, 2, 4),
(87, 88, 2, 4),
(88, 75, 2, 4),
(89, 25, 2, 4),
(90, 82, 2, 4);

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
(1, 1, 'DELL Inspiron 15 7000 15.6', '<p>15-inch laptop ideal for gamers. Featuring the latest Intel&reg; processors for superior gaming performance, and life-like NVIDIA&reg; GeForce&reg; graphics and an advanced thermal cooling design.</p>\r\n', 'dell-inspiron-15-7000-15-6', 899, 'dell-inspiron-15-7000-15-6.jpg', '2022-06-06', 1),
(2, 1, 'MICROSOFT Surface Pro 4 & Typecover - 128 GB', '<p>Surface Pro 4 powers through everything you need to do, while being lighter than ever before</p>\r\n\r\n<p>The 12.3 PixelSense screen has extremely high contrast and low glare so you can work through the day without straining your eyes</p>\r\n\r\n<p>keyboard is not included and needed to be purchased separately</p>\r\n\r\n<p>Features an Intel Core i5 6th Gen (Skylake) Core,Wireless: 802.11ac Wi-Fi wireless networking; IEEE 802.11a/b/g/n compatible Bluetooth 4.0 wireless technology</p>\r\n\r\n<p>Ships in Consumer packaging.</p>\r\n', 'microsoft-surface-pro-4-typecover-128-gb', 799, 'microsoft-surface-pro-4-typecover-128-gb.jpg', '2018-05-10', 3),
(3, 1, 'DELL Inspiron 15 5000 15.6', '<p>Dell&#39;s 15.6-inch, midrange notebook is a bland, chunky block. It has long been the case that the Inspiron lineup lacks any sort of aesthetic muse, and the Inspiron 15 5000 follows this trend. It&#39;s a plastic, silver slab bearing Dell&#39;s logo in a mirror sheen.</p>\r\n\r\n<p>Lifting the lid reveals the 15.6-inch, 1080p screen surrounded by an almost offensively thick bezel and a plastic deck with a faux brushed-metal look. There&#39;s a fingerprint reader on the power button, and the keyboard is a black collection of island-style keys.</p>\r\n', 'dell-inspiron-15-5000-15-6', 599, 'dell-inspiron-15-5000-15-6.jpg', '2018-05-12', 1),
(4, 1, 'LENOVO Ideapad 320s-14IKB 14\" Laptop - Grey', '<p>- Made for portability with a slim, lightweight chassis design&nbsp;<br />\r\n<br />\r\n- Powerful processing helps you create and produce on the go&nbsp;<br />\r\n<br />\r\n- Full HD screen ensures crisp visuals for movies, web pages, photos and more&nbsp;<br />\r\n<br />\r\n- Enjoy warm, sparkling sound courtesy of two Harman speakers and Dolby Audio&nbsp;<br />\r\n<br />\r\n- Fast data transfer and high-quality video connection with USB-C and HDMI ports&nbsp;<br />\r\n<br />\r\nThe Lenovo&nbsp;<strong>IdeaPad 320s-14IKB 14&quot; Laptop</strong>&nbsp;is part of our Achieve range, which has the latest tech to help you develop your ideas and work at your best. It&#39;s great for editing complex documents, business use, editing photos, and anything else you do throughout the day.</p>\r\n', 'lenovo-ideapad-320s-14ikb-14-laptop-grey', 399, 'lenovo-ideapad-320s-14ikb-14-laptop-grey.jpg', '2018-05-10', 3),
(5, 3, 'APPLE 9.7\" iPad - 32 GB, Gold', '<p>9.7 inch Retina Display, 2048 x 1536 Resolution, Wide Color and True Tone Display</p>\r\n\r\n<p>Apple iOS 9, A9X chip with 64bit architecture, M9 coprocessor</p>\r\n\r\n<p>12 MP iSight Camera, True Tone Flash, Panorama (up to 63MP), Four-Speaker Audio</p>\r\n\r\n<p>Up to 10 Hours of Battery Life</p>\r\n\r\n<p>iPad Pro Supports Apple Smart Keyboard and Apple Pencil</p>\r\n', 'apple-9-7-ipad-32-gb-gold', 339, 'apple-9-7-ipad-32-gb-gold.jpg', '2018-05-10', 3),
(6, 1, 'DELL Inspiron 15 5000 15', '<p>15-inch laptop delivering an exceptional viewing experience, a head-turning finish and an array of options designed to elevate your entertainment, wherever you go.</p>\r\n', 'dell-inspiron-15-5000-15', 449.99, 'dell-inspiron-15-5000-15.jpg', '0000-00-00', 0),
(7, 3, 'APPLE 10.5\" iPad Pro - 64 GB, Space Grey (2017)', '<p>4K video recording at 30 fps</p>\r\n\r\n<p>12-megapixel camera</p>\r\n\r\n<p>Fingerprint resistant coating</p>\r\n\r\n<p>Antireflective coating</p>\r\n\r\n<p>Face Time video calling</p>\r\n', 'apple-10-5-ipad-pro-64-gb-space-grey-2017', 619, 'apple-10-5-ipad-pro-64-gb-space-grey-2017.jpg', '0000-00-00', 0),
(8, 1, 'ASUS Transformer Mini T102HA 10.1\" 2 in 1 - Silver', '<p>Versatile Windows 10 device with keyboard and pen included, 2-in-1 functionality: use as both laptop and tablet.Update Windows periodically to ensure that your applications have the latest security settings.</p>\r\n\r\n<p>All day battery life, rated up to 11 hours of video playback; 128GB Solid State storage. Polymer Battery.With up to 11 hours between charges, you can be sure that Transformer Mini T102HA will be right there whenever you need it. You can charge T102HA via its micro USB port, so you can use a mobile charger or any power bank with a micro USB connector.</p>\r\n', 'asus-transformer-mini-t102ha-10-1-2-1-silver', 549.99, 'asus-transformer-mini-t102ha-10-1-2-1-silver.jpg', '0000-00-00', 0),
(9, 2, 'PC SPECIALIST Vortex Core Lite Gaming PC', '<p>- Top performance for playing eSports and more&nbsp;<br />\r\n<br />\r\n- NVIDIA GeForce GTX graphics deliver smooth visuals&nbsp;<br />\r\n<br />\r\n- GeForce Experience delivers updates straight to your PC&nbsp;<br />\r\n<br />\r\nThe PC Specialist&nbsp;<strong>Vortex Core Lite&nbsp;</strong>is part of our Gaming range, bringing you the most impressive PCs available today. It has spectacular graphics and fast processing performance to suit the most exacting players.</p>\r\n', 'pc-specialist-vortex-core-lite-gaming-pc', 599.99, 'pc-specialist-vortex-core-lite-gaming-pc.jpg', '0000-00-00', 0),
(10, 2, 'DELL Inspiron 5675 Gaming PC - Recon Blue', '<p>All-new gaming desktop featuring powerful AMD Ryzen&trade; processors, graphics ready for VR, LED lighting and a meticulous design for optimal cooling.</p>\r\n', 'dell-inspiron-5675-gaming-pc-recon-blue', 599.99, 'dell-inspiron-5675-gaming-pc-recon-blue.jpg', '2022-06-05', 1),
(11, 2, 'HP Barebones OMEN X 900-099nn Gaming PC', '<p>What&#39;s inside matters.</p>\r\n\r\n<p>Without proper cooling, top tierperformance never reaches its fullpotential.</p>\r\n\r\n<p>Nine lighting zones accentuate theaggressive lines and smooth blackfinish of this unique galvanized steelcase.</p>\r\n', 'hp-barebones-omen-x-900-099nn-gaming-pc', 489.98, 'hp-barebones-omen-x-900-099nn-gaming-pc.jpg', '2022-06-05', 1),
(12, 2, 'ACER Aspire GX-781 Gaming PC', '<p>- GTX 1050 graphics card lets you play huge games in great resolutions&nbsp;<br />\r\n<br />\r\n- Latest generation Core&trade; i5 processor can handle demanding media software&nbsp;<br />\r\n<br />\r\n- Superfast SSD storage lets you load programs in no time&nbsp;<br />\r\n<br />\r\nThe Acer&nbsp;<strong>Aspire&nbsp;GX-781 Gaming PC&nbsp;</strong>is part of our Gaming range, which offers the most powerful PCs available today. It has outstanding graphics and processing performance to suit the most demanding gamer.</p>\r\n', 'acer-aspire-gx-781-gaming-pc', 749.99, 'acer-aspire-gx-781-gaming-pc.jpg', '2018-05-12', 3),
(13, 2, 'HP Pavilion Power 580-015na Gaming PC', '<p>Features the latest quad core Intel i5 processor and discrete graphics. With this power, you&rsquo;re ready to take on any activity from making digital art to conquering new worlds in VR.</p>\r\n\r\n<p>Choose the performance and storage you need. Boot up in seconds with to 128 GB SSD.</p>\r\n\r\n<p>Ditch the dull grey box, this desktop comes infused with style. A new angular bezel and bold green and black design give your workspace just the right amount of attitude.</p>\r\n\r\n<p>Up to 3 times faster performance - GeForce GTX 10-series graphics cards are powered by Pascal to deliver twice the performance of previous-generation graphics cards.</p>\r\n', 'hp-pavilion-power-580-015na-gaming-pc', 672000, 'hp-pavilion-power-580-015na-gaming-pc.jpg', '2018-05-12', 1),
(14, 2, 'LENOVO Legion Y520 Gaming PC', '<p>- Multi-task with ease thanks to Intel&reg; i5 processor&nbsp;<br />\r\n<br />\r\n- Prepare for battle with NVIDIA GeForce GTX graphics card&nbsp;<br />\r\n<br />\r\n- VR ready for the next-generation of immersive gaming and entertainment<br />\r\n<br />\r\n- Tool-less upgrade helps you personalise your system to your own demands&nbsp;<br />\r\n<br />\r\nPart of our Gaming range, which features the most powerful PCs available today, the Lenovo&nbsp;<strong>Legion Y520 Gaming PC</strong>&nbsp;has superior graphics and processing performance to suit the most demanding gamer.</p>\r\n', 'lenovo-legion-y520-gaming-pc', 899.99, 'lenovo-legion-y520-gaming-pc.jpg', '2018-05-10', 13),
(15, 2, 'PC SPECIALIST Vortex Minerva XT-R Gaming PC', '<p>- NVIDIA GeForce GTX graphics for stunning gaming visuals<br />\r\n<br />\r\n- Made for eSports with a speedy 7th generation Intel&reg; Core&trade; i5 processor<br />\r\n<br />\r\n- GeForce technology lets you directly update drivers, record your gaming and more<br />\r\n<br />\r\nThe PC Specialist&nbsp;<strong>Vortex Minerva XT-R Gaming PC</strong>&nbsp;is part of our Gaming range, which offers the most powerful PCs available. Its high-performance graphics and processing are made to meet the needs of serious gamers.</p>\r\n', 'pc-specialist-vortex-minerva-xt-r-gaming-pc', 999.99, 'pc-specialist-vortex-minerva-xt-r-gaming-pc.jpg', '2018-05-10', 1),
(16, 2, 'PC SPECIALIST Vortex Core II Gaming PC', '<p>Processor: Intel&reg; CoreTM i3-6100 Processor- Dual-core- 3.7 GHz- 3 MB cache</p>\r\n\r\n<p>Memory (RAM): 8 GB DDR4 HyperX, Storage: 1 TB HDD, 7200 rpm</p>\r\n\r\n<p>Graphics card: NVIDIA GeForce GTX 950 (2 GB GDDR5), Motherboard: ASUS H110M-R</p>\r\n\r\n<p>USB: USB 3.0 x 3- USB 2.0 x 5, Video interface: HDMI x 1- DisplayPort x 1- DVI x 2, Audio interface: 3.5 mm jack, Optical disc drive: DVD/RW, Expansion card slot PCIe: (x1) x 2</p>\r\n\r\n<p>Sound: 5.1 Surround Sound support PSU Corsair: VS350, 350W, Colour: Black- Green highlights, Box contents: PC Specialist Vortex Core- AC power cable</p>\r\n', 'pc-specialist-vortex-core-ii-gaming-pc', 649.99, 'pc-specialist-vortex-core-ii-gaming-pc.jpg', '2018-05-10', 2),
(17, 3, 'AMAZON Fire 7 Tablet with Alexa (2017) - 8 GB, Black', '<p>The next generation of our best-selling Fire tablet ever - now thinner, lighter, and with longer battery life and an improved display. More durable than the latest iPad</p>\r\n\r\n<p>Beautiful 7&quot; IPS display with higher contrast and sharper text, a 1.3 GHz quad-core processor, and up to 8 hours of battery life. 8 or 16 GB of internal storage and a microSD slot for up to 256 GB of expandable storage.</p>\r\n', 'amazon-fire-7-tablet-alexa-2017-8-gb-black', 49.99, 'amazon-fire-7-tablet-alexa-2017-8-gb-black.jpg', '2018-05-12', 1),
(18, 3, 'AMAZON Fire HD 8 Tablet with Alexa (2017) - 16 GB, Black', '<p>Take your personal assistant with you wherever you go with this Amazon Fire HD 8 tablet featuring Alexa voice-activated cloud service. The slim design of the tablet is easy to handle, and the ample 8-inch screen is ideal for work or play. This Amazon Fire HD 8 features super-sharp high-definition graphics for immersive streaming.</p>\r\n', 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black', 79.99, 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black.jpg', '2018-05-12', 2),
(19, 3, 'AMAZON Fire HD 8 Tablet with Alexa (2017) - 32 GB, Black', '<p>The next generation of our best-reviewed Fire tablet, with up to 12 hours of battery life, a vibrant 8&quot; HD display, a 1.3 GHz quad-core processor, 1.5 GB of RAM, and Dolby Audio. More durable than the latest iPad.</p>\r\n\r\n<p>16 or 32 GB of internal storage and a microSD slot for up to 256 GB of expandable storage.</p>\r\n', 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black', 990.99, 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black.jpg', '2018-05-10', 1),
(20, 3, 'APPLE 9.7\" iPad - 32 GB, Space Grey', '<p>9.7-inch Retina display, wide color and true tone</p>\r\n\r\n<p>A9 third-generation chip with 64-bit architecture</p>\r\n\r\n<p>M9 motion coprocessor</p>\r\n\r\n<p>1.2MP FaceTime HD camera</p>\r\n\r\n<p>8MP iSight camera</p>\r\n\r\n<p>Touch ID</p>\r\n\r\n<p>Apple Pay</p>\r\n', 'apple-9-7-ipad-32-gb-space-grey', 339, 'apple-9-7-ipad-32-gb-space-grey.jpg', '2018-05-12', 1),
(27, 12, 'Capa para Iphone 7', '<p>Capa apra Iphone 7 normal&nbsp;</p>\r\n\r\n<p>Cor: preta, cinza, branca, rosa, rocha, amarela</p>\r\n', 'capa-para-iphone-7', 3900, 'capa-para-iphone-7.jpg', '2022-06-06', 2);

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
(10, 10, '001-EXP-RTT-ANG', '2022-05-01'),
(11, 11, '002-EXP-RTT-ANG', '2022-05-01'),
(12, 15, '003-EXP-RTT-ANG', '2022-05-01'),
(13, 16, '004-EXP-RTT-ANG', '2022-05-01'),
(14, 11, '005-EXP-RTT-ANG', '2022-05-01'),
(15, 11, '006-EXP-RTT-ANG', '2022-05-01'),
(16, 13, '007-EXP-RTT-ANG', '2022-05-01'),
(17, 12, '008-EXP-RTT-ANG', '2022-05-01'),
(18, 10, '009-EXP-RTT-ANG', '2022-05-01'),
(19, 11, '0010-EXP-RTT-ANG', '2022-05-01'),
(20, 13, '0011-EXP-RTT-ANG', '2022-05-01'),
(21, 15, '0012-EXP-RTT-ANG', '2022-05-01'),
(22, 16, '0013-EXP-RTT-ANG', '2022-05-01'),
(23, 16, '0014-EXP-RTT-ANG', '2022-05-01'),
(24, 12, '0015-EXP-RTT-ANG', '2022-05-01'),
(25, 13, '0016-EXP-RTT-ANG', '2022-05-01'),
(26, 13, '0017-EXP-RTT-ANG', '2022-05-01'),
(27, 13, '0018-EXP-RTT-ANG', '2022-05-01'),
(28, 10, '0019-EXP-RTT-ANG', '2022-05-02'),
(29, 10, '0020-EXP-RTT-ANG', '2022-05-02'),
(30, 14, '0021-EXP-RTT-ANG', '2022-05-02'),
(31, 14, '0022-EXP-RTT-ANG', '2022-05-02'),
(32, 14, '0023-EXP-RTT-ANG', '2022-05-02'),
(33, 15, '0024-EXP-RTT-ANG', '2022-05-02'),
(34, 15, '0025-EXP-RTT-ANG', '2022-05-02'),
(35, 10, '0026-EXP-RTT-ANG', '2022-05-03'),
(36, 14, '0027-EXP-RTT-ANG', '2022-05-03'),
(37, 10, '0028-EXP-RTT-ANG', '2022-05-03'),
(38, 16, '0029-EXP-RTT-ANG', '2022-05-03'),
(39, 18, '0031-EXP-RTT-ANG', '2022-05-03'),
(40, 20, '0032-EXP-RTT-ANG', '2022-05-04'),
(41, 15, '0033-EXP-RTT-ANG', '2022-05-04'),
(42, 13, '0034-EXP-RTT-ANG', '2022-05-04'),
(43, 13, '0035-EXP-RTT-ANG', '2022-05-04'),
(44, 13, '0036-EXP-RTT-ANG', '2022-05-04'),
(45, 13, '0037-EXP-RTT-ANG', '2022-05-04'),
(46, 20, '0038-EXP-RTT-ANG', '2022-05-04'),
(47, 20, '0039-EXP-RTT-ANG', '2022-05-04'),
(48, 20, '0040-EXP-RTT-ANG', '2022-05-04'),
(49, 19, '0041-EXP-RTT-ANG', '2022-05-04'),
(50, 19, '0042-EXP-RTT-ANG', '2022-05-04'),
(51, 11, '0043-EXP-RTT-ANG', '2022-05-04'),
(52, 19, '0044-EXP-RTT-ANG', '2022-05-04'),
(53, 20, '0045-EXP-RTT-ANG', '2022-05-04'),
(54, 10, '0046-EXP-RTT-ANG', '2022-05-06'),
(55, 10, '0047-EXP-RTT-ANG', '2022-05-06'),
(56, 16, '0048-EXP-RTT-ANG', '2022-05-06'),
(57, 13, '0049-EXP-RTT-ANG', '2022-05-06'),
(58, 14, '0050-EXP-RTT-ANG', '2022-05-06'),
(59, 20, '0052-EXP-RTT-ANG', '2022-05-06'),
(60, 10, '0053-EXP-RTT-ANG', '2022-05-06'),
(61, 20, '0055-EXP-RTT-ANG', '2022-05-06'),
(62, 22, '0056-EXP-RTT-ANG', '2022-05-06'),
(63, 20, '0057-EXP-RTT-ANG', '2022-05-07'),
(64, 10, '0058-EXP-RTT-ANG', '2022-05-07'),
(65, 14, '0059-EXP-RTT-ANG', '2022-05-07'),
(66, 14, '0060-EXP-RTT-ANG', '2022-05-07'),
(67, 16, '0061-EXP-RTT-ANG', '2022-05-07'),
(68, 19, '0062-EXP-RTT-ANG', '2022-05-07'),
(69, 18, '0063-EXP-RTT-ANG', '2022-05-08'),
(70, 13, '0064-EXP-RTT-ANG', '2022-05-08'),
(71, 12, '0065-EXP-RTT-ANG', '2022-05-08'),
(72, 12, '0066-EXP-RTT-ANG', '2022-05-08'),
(73, 15, '0067-EXP-RTT-ANG', '2022-05-08'),
(74, 16, '0068-EXP-RTT-ANG', '2022-05-08'),
(75, 21, '0069-EXP-RTT-ANG', '2022-05-09'),
(76, 16, '0070-EXP-RTT-ANG', '2022-05-09'),
(77, 15, '0071-EXP-RTT-ANG', '2022-05-09'),
(78, 20, '0072-EXP-RTT-ANG', '2022-05-09'),
(79, 15, '0073-EXP-RTT-ANG', '2022-05-09'),
(80, 22, '0074-EXP-RTT-ANG', '2022-05-09'),
(81, 20, '0075-EXP-RTT-ANG', '2022-05-09'),
(82, 14, '0076-EXP-RTT-ANG', '2022-05-09'),
(83, 23, '0077-EXP-RTT-ANG', '2022-05-09'),
(84, 23, '0078-EXP-RTT-ANG', '2022-05-09'),
(85, 29, '0079-EXP-RTT-ANG', '2022-05-10'),
(86, 17, '0080-EXP-RTT-ANG', '2022-05-10'),
(87, 22, '0081-EXP-RTT-ANG', '2022-05-10'),
(88, 13, '0082-EXP-RTT-ANG', '2022-05-10'),
(89, 12, '0083-EXP-RTT-ANG', '2022-05-10'),
(90, 16, '0084-EXP-RTT-ANG', '2022-05-10');

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
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'mariobobota23@gmail.com', '$2y$10$P0SSwGwUS.TC6EVQSPCa..YkkmOPObUtGWFCSpoGSdJz4zANMkyfC', 1, 'Mario', 'Costa', 'Cazenga', '944631142', 'IMG_20211130_163409_674.jpg', 1, '', '', '2022-04-30'),
(2, 'nilton.tome07@gmail.com', '$2y$10$P0SSwGwUS.TC6EVQSPCa..YkkmOPObUtGWFCSpoGSdJz4zANMkyfC', 1, 'Nilton', 'Tomé', 'Sambizanga', '999999999', 'IMG_0709.JPG', 1, '', '', '2022-04-30'),
(3, 'ariclenegaspar23@gmail.com', '$2y$10$P0SSwGwUS.TC6EVQSPCa..YkkmOPObUtGWFCSpoGSdJz4zANMkyfC', 1, 'Ariclene', 'Gaspar', 'Cazenga', '945621114', 'IMG_0709.JPG', 1, '', '', '2022-04-30'),
(10, 'adi@gmail.com', '$2y$10$Oto4EGqRnbAu0eazl5zhz.EPx1nD4aVuGQ0BfTnjWw./7iBR/E8p2', 0, 'Adilson', 'Costa', 'Cazenga', '925577069', '', 1, 'meap4Wz3uQg2', '', '2022-06-05'),
(11, 'alexandre@gmail.com', '$2y$10$qTnWbk7k/oP.vCYcm4pjf.faktoDASmrcAVvMQqMMCtm//hXhNeGW', 0, 'Alexandre', 'Araújo', 'Kikolo', '900000000', '', 1, '', '', '2022-06-05'),
(12, 'antonio@gmail.com', '$2y$10$HCbnPFJSgRRjGdKX9qgBjezwpdlJyns4LzRfa6J6ewpr4AsUiqjde', 0, 'António', 'Ngola', 'Kikolo', '910000000', '', 1, '', '', '2022-06-05'),
(13, 'mateus@gmail.com', '$2y$10$INF365cQIClEFlQdpABs9Ofo6MpzePNXs8mZIWHPM.EHPfmHbKOf6', 0, 'Mateus', 'Francisco', 'Viana', '992686892', '', 1, '', '', '2022-06-05'),
(14, 'osvaldo@gmail.com', '$2y$10$bUTEDFli4IQxmWVre7duk.aV57R1EBNRIZrQAqZm9xPQ8X7dJy0X.', 0, 'Osvaldo', 'Fidel ', 'Ngoma', '934587400', '', 1, '', '', '2022-06-05'),
(15, 'nilton@gmail.com', '$2y$10$kBeKNMZNbPpCe8r69YIgReQZunnBWjLy6oW0Bq2sf0mS3c1hJfiM2', 0, 'Nilton', 'Carneiro', 'Sambizanga', '992686800', '', 1, '', '', '2022-06-05'),
(16, 'fini@gmail.com', '$2y$10$IkwmpdTF94r72c6CI3cUAeJkw.IOrPSWXWFxLZxhjgEyI.APFkm5G', 0, 'Paulo', 'Severino', 'Sambizanga', '940505060', '', 1, '', '', '2022-06-05'),
(17, 'edson@gmail.com', '$2y$10$h9n2NS71nmr44XZh0h034eyCyic2yhN2XiacH99d./6GWLNmOv2Hu', 0, 'Edson', 'Costa', 'Viana', '926547519', '', 1, '', '', '2022-06-06'),
(18, 'velasco@gmail.com', '$2y$10$ih1/C2Ts20fbAaZL0f9Ak.iN88AVIRyqeC3raRQqN57EFriFId0Sy', 0, 'Luisa', 'Correia', 'Talatona', '936795833', '', 1, '', '', '2022-06-06'),
(19, 'maura@gmail.com', '$2y$10$Lnw00i8M05rmghA61rYq.e6yHIVxgBGRpD65stc801.2omS8oU5VW', 0, 'Maura', 'de Fátma', 'Talatona', '926521317', '', 1, '', '', '2022-06-06'),
(20, 'albertina@gmail.com', '$2y$10$MxNN7jrFyXojBDtAJw2vjeN0MTR2g/46scvEo92f494QlqzD258vm', 0, 'Albertina', 'Costa', 'Talatona', '926521323', '', 0, '', '', '2022-06-06'),
(21, 'dalvia@gmail.com', '$2y$10$XR9gPV.zmo3RraIVeWTLLOD1G3w/aOxiFKktCLiEBlHMWN5baz7Le', 0, 'Dálvia', 'João', 'Viana', '999888777', '', 1, '', '', '2022-06-06'),
(22, 'esmeralda@gmail.com', '$2y$10$SCBAzea323Tx6wEoujgN.emu6IFM.UnKtG6rueBf/3UpD4WWP.YBC', 0, 'Esmeralda', 'Da Fonseca', 'Rangel', '996655887', '', 0, '', '', '2022-06-06'),
(23, 'sonjamba@gmail.com', '$2y$10$ro5NTQl9oqpDo1Z4mCWXTuYEomcry/lxI8dDY1gmtnbukjhUutWsq', 0, 'Ernesto', 'Sonjamba', 'Zango 8 mil', '923456789', '', 0, '', '', '2022-06-06'),
(24, 'marcelina@gmail.com', '$2y$10$R.xu1W9cSCPqNjjHTf.mhuwqA0mbHfBv0S0IomMKTZOHNxjNiCClm', 0, 'Marcelina', 'João', 'Mato', '924426440', '', 1, '', '', '2022-06-06'),
(29, 'nsungu@gmail.com', '$2y$10$/jmgdKG47UhxZ0d4YqDav.WWtTcEik.q7h5fN.sVnQCRLK42uBdwG', 0, 'Nsungu', 'Pedro', 'Kikolo', '992233440', '', 0, '', '', '2022-06-06');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
