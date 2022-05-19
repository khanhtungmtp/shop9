-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 18, 2022 lúc 04:24 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop9`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `price`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 1050000, 1, NULL, NULL),
(2, 2, 6, 455000, 1, NULL, NULL),
(3, 3, 6, 455000, 1, NULL, NULL),
(4, 4, 7, 1290000, 1, NULL, NULL),
(5, 5, 6, 455000, 1, NULL, NULL),
(6, 6, 6, 455000, 1, NULL, NULL),
(7, 7, 5, 1190000, 1, NULL, NULL),
(8, 8, 8, 1050000, 1, NULL, NULL),
(9, 9, 6, 455000, 1, NULL, NULL),
(10, 10, 9, 10000, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `note`, `created_at`, `updated_at`) VALUES
(1, 'tung', '0338719085', 'tung', 'tungcui09@gmail.com', 'ok', '2022-05-17 03:50:58', '2022-05-17 03:50:58'),
(2, 'tung', '0338719085', 'tung', 'tungcui09@gmail.com', 'ok', '2022-05-17 03:53:52', '2022-05-17 03:53:52'),
(3, 'tung', '0338719085', 'tung', 'tungcui09@gmail.com', 'ok', '2022-05-17 03:55:10', '2022-05-17 03:55:10'),
(4, 'tung', '0338719085', 'tung', 'tungcui09@gmail.com', 'ok', '2022-05-17 03:58:24', '2022-05-17 03:58:24'),
(5, 'tung', '0338719085', 'tung', 'tungcui09@gmail.com', 'ok', '2022-05-17 04:00:59', '2022-05-17 04:00:59'),
(6, 'Nguyễn Khanh Tùng', '0338716085', 'Ấp 4 xã tân lập', 'nguyenkhanhtung580@gmail.com', 'ok', '2022-05-17 04:03:19', '2022-05-17 04:03:19'),
(7, 'Nguyễn Khanh Tùng', '0338716085', 'Ấp 4 xã tân lập', 'nguyenkhanhtung580@gmail.com', 'oooo', '2022-05-17 04:07:09', '2022-05-17 04:07:09'),
(8, 'Áo Sơ Mi In Họa Tiết ASM083 Màu Đen', '0338716085', 'Ấp 4 xã tân lập', 'nguyenkhanhtung580@gmail.com', 'ok', '2022-05-17 04:10:23', '2022-05-17 04:10:23'),
(9, 'Nguyễn Khanh Tùng', '0338716085', 'Ấp 4 xã tân lập', 'nguyenkhanhtung580@gmail.com', 'ok', '2022-05-17 04:12:23', '2022-05-17 04:12:23'),
(10, 'Áo khoác nam edited', '0338716085', 'Ấp 4 xã tân lập', 'nguyenkhanhtung580@gmail.com', 'g', '2022-05-17 04:14:08', '2022-05-17 04:14:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '2128f23f-1869-4194-9009-a69155ed82cf', 'database', 'default', '{\"uuid\":\"2128f23f-1869-4194-9009-a69155ed82cf\",\"displayName\":\"App\\\\Jobs\\\\sendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\sendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\sendMail\\\":11:{s:9:\\\"\\u0000*\\u0000_email\\\";s:28:\\\"nguyenkhanhtung580@gmail.com\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2022-05-17 11:03:21.780042\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Trying to access array offset on value of type null in D:\\xampp\\htdocs\\shop9\\app\\Jobs\\sendMail.php:44\nStack trace:\n#0 D:\\xampp\\htdocs\\shop9\\app\\Jobs\\sendMail.php(44): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Trying to acces...\', \'D:\\\\xampp\\\\htdocs...\', 44, Array)\n#1 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\sendMail->handle()\n#2 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\sendMail))\n#8 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\sendMail))\n#9 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\sendMail), false)\n#11 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\sendMail))\n#12 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\sendMail))\n#13 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\sendMail))\n#15 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#27 D:\\xampp\\htdocs\\shop9\\vendor\\symfony\\console\\Command\\Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 D:\\xampp\\htdocs\\shop9\\vendor\\symfony\\console\\Application.php(1015): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 D:\\xampp\\htdocs\\shop9\\vendor\\symfony\\console\\Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 D:\\xampp\\htdocs\\shop9\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 D:\\xampp\\htdocs\\shop9\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2022-05-17 04:03:23'),
(2, 'e4e704b8-0230-49b7-9732-c5c0e085ce24', 'database', 'default', '{\"uuid\":\"e4e704b8-0230-49b7-9732-c5c0e085ce24\",\"displayName\":\"App\\\\Jobs\\\\sendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\sendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\sendMail\\\":11:{s:9:\\\"\\u0000*\\u0000_email\\\";s:28:\\\"nguyenkhanhtung580@gmail.com\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2022-05-17 11:10:26.006992\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Undefined variable: a in D:\\xampp\\htdocs\\shop9\\storage\\framework\\views\\2092d7ab5b093630d42e25470a795b662f197c03.php:1\nStack trace:\n#0 D:\\xampp\\htdocs\\shop9\\storage\\framework\\views\\2092d7ab5b093630d42e25470a795b662f197c03.php(1): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'D:\\\\xampp\\\\htdocs...\', 1, Array)\n#1 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(107): require(\'D:\\\\xampp\\\\htdocs...\')\n#2 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(108): Illuminate\\Filesystem\\Filesystem::Illuminate\\Filesystem\\{closure}()\n#3 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\PhpEngine.php(58): Illuminate\\Filesystem\\Filesystem->getRequire(\'D:\\\\xampp\\\\htdocs...\', Array)\n#4 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(61): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'D:\\\\xampp\\\\htdocs...\', Array)\n#5 D:\\xampp\\htdocs\\shop9\\vendor\\facade\\ignition\\src\\Views\\Engines\\CompilerEngine.php(37): Illuminate\\View\\Engines\\CompilerEngine->get(\'D:\\\\xampp\\\\htdocs...\', Array)\n#6 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(139): Facade\\Ignition\\Views\\Engines\\CompilerEngine->get(\'D:\\\\xampp\\\\htdocs...\', Array)\n#7 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(122): Illuminate\\View\\View->getContents()\n#8 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(91): Illuminate\\View\\View->renderContents()\n#9 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(382): Illuminate\\View\\View->render()\n#10 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(355): Illuminate\\Mail\\Mailer->renderView(\'mail.content\', Array)\n#11 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(273): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'mail.content\', NULL, NULL, Array)\n#12 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailer->send(\'mail.content\', Array, Object(Closure))\n#13 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#14 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(188): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#15 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(304): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#16 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(258): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\OrderShipped))\n#17 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\OrderShipped))\n#18 D:\\xampp\\htdocs\\shop9\\app\\Jobs\\sendMail.php(35): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\OrderShipped))\n#19 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\sendMail->handle()\n#20 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#21 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#22 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#23 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#24 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#25 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\sendMail))\n#26 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\sendMail))\n#27 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\sendMail), false)\n#29 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\sendMail))\n#30 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\sendMail))\n#31 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#32 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\sendMail))\n#33 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#34 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#35 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#36 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#37 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#38 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#39 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#40 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#41 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#42 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#43 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#44 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#45 D:\\xampp\\htdocs\\shop9\\vendor\\symfony\\console\\Command\\Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#46 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#47 D:\\xampp\\htdocs\\shop9\\vendor\\symfony\\console\\Application.php(1015): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 D:\\xampp\\htdocs\\shop9\\vendor\\symfony\\console\\Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 D:\\xampp\\htdocs\\shop9\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#50 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#51 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#52 D:\\xampp\\htdocs\\shop9\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#53 {main}\n\nNext Facade\\Ignition\\Exceptions\\ViewException: Undefined variable: a (View: D:\\xampp\\htdocs\\shop9\\resources\\views\\mail\\content.blade.php) in D:\\xampp\\htdocs\\shop9\\resources\\views/mail/content.blade.php:1\nStack trace:\n#0 D:\\xampp\\htdocs\\shop9\\resources\\views/mail/content.blade.php(1): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'D:\\\\xampp\\\\htdocs...\', 1, Array)\n#1 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(107): require(\'D:\\\\xampp\\\\htdocs...\')\n#2 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(108): Illuminate\\Filesystem\\Filesystem::Illuminate\\Filesystem\\{closure}()\n#3 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\PhpEngine.php(58): Illuminate\\Filesystem\\Filesystem->getRequire(\'D:\\\\xampp\\\\htdocs...\', Array)\n#4 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(61): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'D:\\\\xampp\\\\htdocs...\', Array)\n#5 D:\\xampp\\htdocs\\shop9\\vendor\\facade\\ignition\\src\\Views\\Engines\\CompilerEngine.php(37): Illuminate\\View\\Engines\\CompilerEngine->get(\'D:\\\\xampp\\\\htdocs...\', Array)\n#6 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(139): Facade\\Ignition\\Views\\Engines\\CompilerEngine->get(\'D:\\\\xampp\\\\htdocs...\', Array)\n#7 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(122): Illuminate\\View\\View->getContents()\n#8 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(91): Illuminate\\View\\View->renderContents()\n#9 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(382): Illuminate\\View\\View->render()\n#10 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(355): Illuminate\\Mail\\Mailer->renderView(\'mail.content\', Array)\n#11 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(273): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'mail.content\', NULL, NULL, Array)\n#12 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailer->send(\'mail.content\', Array, Object(Closure))\n#13 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#14 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(188): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#15 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(304): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#16 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(258): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\OrderShipped))\n#17 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\OrderShipped))\n#18 D:\\xampp\\htdocs\\shop9\\app\\Jobs\\sendMail.php(35): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\OrderShipped))\n#19 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\sendMail->handle()\n#20 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#21 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#22 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#23 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#24 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#25 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\sendMail))\n#26 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\sendMail))\n#27 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\sendMail), false)\n#29 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\sendMail))\n#30 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\sendMail))\n#31 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#32 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\sendMail))\n#33 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#34 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#35 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#36 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#37 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#38 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#39 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#40 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#41 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#42 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#43 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#44 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#45 D:\\xampp\\htdocs\\shop9\\vendor\\symfony\\console\\Command\\Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#46 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#47 D:\\xampp\\htdocs\\shop9\\vendor\\symfony\\console\\Application.php(1015): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 D:\\xampp\\htdocs\\shop9\\vendor\\symfony\\console\\Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 D:\\xampp\\htdocs\\shop9\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#50 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#51 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#52 D:\\xampp\\htdocs\\shop9\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#53 {main}', '2022-05-17 04:10:27');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(3, '0fe06080-dc6a-4844-9fc7-ab5c16d2325a', 'database', 'default', '{\"uuid\":\"0fe06080-dc6a-4844-9fc7-ab5c16d2325a\",\"displayName\":\"App\\\\Jobs\\\\sendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\sendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\sendMail\\\":11:{s:9:\\\"\\u0000*\\u0000_email\\\";s:28:\\\"nguyenkhanhtung580@gmail.com\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2022-05-17 11:12:25.114624\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Error: Using $this when not in object context in D:\\xampp\\htdocs\\shop9\\storage\\framework\\views\\2092d7ab5b093630d42e25470a795b662f197c03.php:1\nStack trace:\n#0 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(107): require()\n#1 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(108): Illuminate\\Filesystem\\Filesystem::Illuminate\\Filesystem\\{closure}()\n#2 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\PhpEngine.php(58): Illuminate\\Filesystem\\Filesystem->getRequire(\'D:\\\\xampp\\\\htdocs...\', Array)\n#3 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(61): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'D:\\\\xampp\\\\htdocs...\', Array)\n#4 D:\\xampp\\htdocs\\shop9\\vendor\\facade\\ignition\\src\\Views\\Engines\\CompilerEngine.php(37): Illuminate\\View\\Engines\\CompilerEngine->get(\'D:\\\\xampp\\\\htdocs...\', Array)\n#5 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(139): Facade\\Ignition\\Views\\Engines\\CompilerEngine->get(\'D:\\\\xampp\\\\htdocs...\', Array)\n#6 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(122): Illuminate\\View\\View->getContents()\n#7 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(91): Illuminate\\View\\View->renderContents()\n#8 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(382): Illuminate\\View\\View->render()\n#9 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(355): Illuminate\\Mail\\Mailer->renderView(\'mail.content\', Array)\n#10 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(273): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'mail.content\', NULL, NULL, Array)\n#11 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailer->send(\'mail.content\', Array, Object(Closure))\n#12 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#13 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(188): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#14 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(304): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#15 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(258): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\OrderShipped))\n#16 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\OrderShipped))\n#17 D:\\xampp\\htdocs\\shop9\\app\\Jobs\\sendMail.php(35): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\OrderShipped))\n#18 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\sendMail->handle()\n#19 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#20 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#21 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#22 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#23 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#24 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\sendMail))\n#25 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\sendMail))\n#26 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#27 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\sendMail), false)\n#28 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\sendMail))\n#29 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\sendMail))\n#30 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\sendMail))\n#32 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#33 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#34 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#35 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#36 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#37 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#38 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#39 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#40 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#41 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#42 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#43 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#44 D:\\xampp\\htdocs\\shop9\\vendor\\symfony\\console\\Command\\Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#45 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#46 D:\\xampp\\htdocs\\shop9\\vendor\\symfony\\console\\Application.php(1015): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 D:\\xampp\\htdocs\\shop9\\vendor\\symfony\\console\\Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 D:\\xampp\\htdocs\\shop9\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#50 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#51 D:\\xampp\\htdocs\\shop9\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#52 {main}\n\nNext Facade\\Ignition\\Exceptions\\ViewException: Using $this when not in object context (View: D:\\xampp\\htdocs\\shop9\\resources\\views\\mail\\content.blade.php) in D:\\xampp\\htdocs\\shop9\\resources\\views/mail/content.blade.php:1\nStack trace:\n#0 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(107): require()\n#1 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(108): Illuminate\\Filesystem\\Filesystem::Illuminate\\Filesystem\\{closure}()\n#2 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\PhpEngine.php(58): Illuminate\\Filesystem\\Filesystem->getRequire(\'D:\\\\xampp\\\\htdocs...\', Array)\n#3 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(61): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'D:\\\\xampp\\\\htdocs...\', Array)\n#4 D:\\xampp\\htdocs\\shop9\\vendor\\facade\\ignition\\src\\Views\\Engines\\CompilerEngine.php(37): Illuminate\\View\\Engines\\CompilerEngine->get(\'D:\\\\xampp\\\\htdocs...\', Array)\n#5 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(139): Facade\\Ignition\\Views\\Engines\\CompilerEngine->get(\'D:\\\\xampp\\\\htdocs...\', Array)\n#6 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(122): Illuminate\\View\\View->getContents()\n#7 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(91): Illuminate\\View\\View->renderContents()\n#8 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(382): Illuminate\\View\\View->render()\n#9 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(355): Illuminate\\Mail\\Mailer->renderView(\'mail.content\', Array)\n#10 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(273): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'mail.content\', NULL, NULL, Array)\n#11 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailer->send(\'mail.content\', Array, Object(Closure))\n#12 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#13 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(188): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#14 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(304): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#15 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(258): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\OrderShipped))\n#16 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\OrderShipped))\n#17 D:\\xampp\\htdocs\\shop9\\app\\Jobs\\sendMail.php(35): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\OrderShipped))\n#18 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\sendMail->handle()\n#19 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#20 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#21 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#22 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#23 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#24 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\sendMail))\n#25 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\sendMail))\n#26 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#27 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\sendMail), false)\n#28 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\sendMail))\n#29 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\sendMail))\n#30 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\sendMail))\n#32 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#33 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#34 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#35 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#36 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#37 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#38 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#39 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#40 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#41 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#42 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#43 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#44 D:\\xampp\\htdocs\\shop9\\vendor\\symfony\\console\\Command\\Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#45 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#46 D:\\xampp\\htdocs\\shop9\\vendor\\symfony\\console\\Application.php(1015): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 D:\\xampp\\htdocs\\shop9\\vendor\\symfony\\console\\Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 D:\\xampp\\htdocs\\shop9\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#50 D:\\xampp\\htdocs\\shop9\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#51 D:\\xampp\\htdocs\\shop9\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#52 {main}', '2022-05-17 04:12:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Loa kéo', 0, 'Loa kéo', '<p>Loa k&eacute;o</p>', 1, '2022-05-04 01:38:02', '2022-05-15 09:24:16'),
(2, 'Thiết Bị Học Online', 0, 'Thiết Bị Học Online', '<p>Thiết Bị Học Online</p>', 1, '2022-05-04 01:38:31', '2022-05-15 09:25:23'),
(3, 'ANDROID TV BOX', 0, 'ANDROID TV BOX', '<p>ANDROID TV BOX</p>', 1, '2022-05-07 08:48:57', '2022-05-15 09:25:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(143, '2014_10_12_000000_create_users_table', 1),
(144, '2014_10_12_100000_create_password_resets_table', 1),
(145, '2019_08_19_000000_create_failed_jobs_table', 1),
(146, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(147, '2022_05_01_141337_create_menus_table', 1),
(148, '2022_05_02_074430_create_products_table', 1),
(149, '2022_05_05_140155_slider', 1),
(150, '2022_05_16_031316_create_customers_table', 1),
(151, '2022_05_16_043737_create_carts_table', 1),
(152, '2022_05_16_122339_create_jobs_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` int(11) DEFAULT 0,
  `price_sale` int(11) DEFAULT NULL,
  `thumb` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `thumb`, `active`, `created_at`, `updated_at`) VALUES
(3, 'Loa Karaoke Bluetooth W-King T9II – Kèm 2 Micro Không Dây', 'Loa Karaoke Bluetooth W-King T9II – Kèm 2 Micro Không Dây', '<p>Loa Karaoke Bluetooth W-King T9II &ndash; K&egrave;m 2 Micro Kh&ocirc;ng D&acirc;y</p>', 1, 3900000, NULL, '/storage/uploads/2022/05/15/loa-karaoke-bluetooth-w-king-t9ii-010-600x600.jpg', 1, '2022-05-11 07:38:28', '2022-05-15 09:32:31'),
(4, 'KCBOX KC350 – Loa Xách Tay Karaoke Di Động Hay Nhất 2022', 'KCBOX KC350 – Loa Xách Tay Karaoke Di Động Hay Nhất 2022', '<p>KCBOX KC350 &ndash; Loa X&aacute;ch Tay Karaoke Di Động Hay Nhất 2022</p>', 1, 0, NULL, '/storage/uploads/2022/05/15/loa-xach-tay-karaoke-kcbox-kc350-2022-01-300x300.jpg', 1, '2022-05-11 07:39:10', '2022-05-15 09:31:36'),
(5, 'Fifine K669B – Micro thu âm chuyên nghiệp dành cho máy tính', 'Fifine K669B – Micro thu âm chuyên nghiệp dành cho máy tính', '<p>Fifine K669B &ndash; Micro thu &acirc;m chuy&ecirc;n nghiệp d&agrave;nh cho m&aacute;y t&iacute;nh</p>', 2, 1190000, NULL, '/storage/uploads/2022/05/15/micro-thu-am-danh-cho-may-tinh-fifine-k669b-02.jpg', 1, '2022-05-11 07:39:42', '2022-05-15 09:30:48'),
(6, 'Webcam Genius FaceCam 1000X độ phân giải 720p HD', 'Webcam Genius FaceCam 1000X độ phân giải 720p HD', '<h3>Webcam Genius FaceCam 1000X độ ph&acirc;n giải 720p HD</h3>', 2, 690000, 455000, '/storage/uploads/2022/05/15/genius-facecam-1000x-webcam-do-phan-giai-720p-hd-02.jpg', 1, '2022-05-11 07:40:40', '2022-05-15 09:29:46'),
(7, 'Vinabox X20 4GB/32GB Android 10 TV Box', 'Vinabox X20 4GB/32GB Android 10 TV Box', '<h3><a href=\"https://www.hieuhien.vn/vinabox-x20-4gb-32gb/\">Vinabox X20 4GB/32GB Android 10 TV Box</a></h3>', 3, 1490000, 1290000, '/storage/uploads/2022/05/15/android-tv-box-vinabox-x20-ram-4gb-11.jpg', 1, '2022-05-11 07:41:03', '2022-05-15 09:29:56'),
(8, 'FPT Play Box+ Android TV 10 – Điều khiển giọng nói tiếng Việt', 'FPT Play Box+ Android TV 10 – Điều khiển giọng nói tiếng Việt', '<h3><a href=\"https://www.hieuhien.vn/fpt-play-box-2020/\">FPT Play Box+ Android TV 10 &ndash; Điều khiển giọng n&oacute;i tiếng Việt</a></h3>', 3, 1590000, 1050000, '/storage/uploads/2022/05/15/fpt-box-2020-600x600.png', 1, '2022-05-11 07:41:27', '2022-05-15 09:27:49'),
(9, 'Loa Di Động ACNOS KSNet445 – Tích hợp đầu Android Karaoke 4K', 'Loa Di Động ACNOS KSNet445 – Tích hợp đầu Android Karaoke 4K', '<p>&nbsp;</p>\r\n\r\n<p>Loa Di Động ACNOS KSNet445 &ndash; T&iacute;ch hợp đầu Android Karaoke 4K</p>', 1, 50000, 10000, '/storage/uploads/2022/05/16/dan-am-thanh-di-dong-acnos-ksnet445-1.jpg', 1, '2022-05-16 03:02:43', '2022-05-16 03:02:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `url`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(4, 'Siêu sale tới  42%', 'http://127.0.0.1:8000/admin/slider/2', '/storage/uploads/2022/05/16/1997643_BANNER_DESKTOP_IMAGE_1_106506_auto_x2.jpg', '2', '1', '2022-05-09 19:28:09', '2022-05-15 19:27:52'),
(5, 'Loa kéo karaoke giá tốt nhất', 'http://127.0.0.1:8000/admin/slider/3', '/storage/uploads/2022/05/16/2845254_BANNER_DESKTOP_IMAGE_1_106542_auto_x2.jpg', '3', '1', '2022-05-09 19:28:30', '2022-05-15 19:28:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$94v36HMLxQMB06Yxh.lKpOMhtKlHlVehRPgJ/dPvjKBngJJv.VqGi', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
