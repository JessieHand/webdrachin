-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2026 at 07:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdrachin`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `judul` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `isi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `gambar` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `judul`, `isi`, `gambar`, `tanggal`, `username`) VALUES
(1, 'Love in The Cloud', 'Ming Yi (Lu Yu Xiao) bukanlah lawan biasa. Ia adalah seorang dewi prajurit yang dikenal karena ketangguhannya. Tak hanya itu, ia juga telah mendominasi arena selama 7 tahun berturut-turut tanpa ada yang dapat menandinginya. Kemenangan Ji Bo Zai atas Ming Yi yang mengejutkan tersebut membuat dirinya diperbincangkan di Jurang Jixing. Statusnya sebagai seorang mantan terpidana berubah menjadi bintang yang paling bersinar terang di dunia persilatan. Sementara itu, Ming Yi tentunya tidak dapat menerima kekalahannya begitu saja. Ia memutuskan untuk menyembunyikan identitasnya dengan menyamar sebagai seorang penari untuk mendekati Ji Bo Zai tanpa menimbulkan kecurigaan. Di balik kedok yang diciptakan dengan hati-hati, keduanya pun terjerat dalam sebuah permainan sangat berbahaya yang dipenuhi intrik, tipu daya dan ketertarikan yang tak terelakkan. Bagaimana kelanjutan aksi balas dendam Ming Yi kepada Ji Bo Zai?', 'LITC.jpg', '2025-12-17 14:42:35', 'admin'),
(2, 'Blood River', 'Blood River adalah guild pembunuh paling ditakuti di kerajaan, yang dijalankan bersama oleh klan Su, Mu, dan Xie. Mereka dapat menyerang para bangsawan \r\n            di istana dan menghancurkan sekte-sekte besar di alam liar. Ketika sang patriark diracuni dalam sebuah misi, ketiga klan bersaing untuk memperebutkan posisi teratas. Su Muyu\r\n            memimpin unit Spider-Shadow dan melindungi pemimpin yang sekarat dalam perjalanan menuju penyembuhan. Ia berselisih dengan tetua Su Zhe dan teman lamanya, Su Changhe,\r\n            dan bertemu dengan tabib Bai Hehuai. Setelah perebutan kekuasaan yang brutal, Su Chang He menjadi patriark baru, dan Su Muyu memimpin klan Su. Mereka meluncurkan\r\n            \"Rencana Other Shore\" untuk menyeret Blood River keluar dari bayang-bayang dan menempa takdir baru, bebas dari cengkeraman siapa pun.</p>\r\n      ', 'BR.jpg', '2025-12-17 14:46:56', 'admin'),
(3, 'Whisper of Fate', 'Tang Li Ci yang secara moral sulit dipahami dijebak oleh mantan temannya dan dipaksa memasuki dunia persilatan untuk membersihkan namanya. Selama perjalanannya\r\n            melintasi berbagai negeri, sikap acuh tak acuhnya yang awalnya melunak seiring ia perlahan dipengaruhi oleh kode etik kesatria dan semangat keberanian komunitas yang mendalam.\r\n            Saat transformasi ini terjadi, ia mengungkap sebuah rencana jahat: di bawah manipulasi Rumah Kenikmatan, seluruh komunitas seni bela diri menghadapi pemusnahan. Tang Li Ci menyadari\r\n            bahwa ia tidak hanya harus menanggung nasib dunia tetapi juga menghadapi identitas dan tujuan hidupnya yang sebenarnya, yang membawanya pada akhirnya menghadapi takdirnya.</p>\r\n', 'WOF.jpg', '2025-12-17 14:46:56', 'admin'),
(4, 'Sword and Beloved', 'Wangquan Fu Gui adalah putra Wangquan Hong Ye dan Dongfang Huai Zhu, dan anggota keluarga Wangquan yang paling berkuasa. Dilatih sebagai prajurit Tao, Fu Gui\r\n            menjalani hidup tanpa kebebasan. Qing Tong, yang awalnya adalah mata-mata yang ditanam oleh Poison Lady untuk mengumpulkan informasi tentang keluarga Wangquan, mendapatkan kembali\r\n            kebebasannya dengan bantuan Fu Gui. Seiring ikatan mereka semakin erat, kerinduan Fu Gui akan kebebasan dan visinya akan dunia yang damai kembali berkobar.</p>\r\n', 'SAB.jpg', '2025-12-17 14:49:47', 'admin'),
(5, 'Fight For Love', 'Di masa lalunya, Chu Yu melarikan diri dari pernikahan kerajaan demi Gu Chu Sheng, namun meninggal jauh dari rumah. Terlahir kembali di usia lima belas tahun dan\r\n            menghadapi pilihan yang sama, ia justru menikah dengan keluarga Wei yang malang, bertekad untuk mengubah nasib tragis mereka. Mengetahui Wei Yun muda suatu hari nanti akan bangkit\r\n            sebagai \"Yama Hidup\" yang ditakuti, ia bersumpah untuk mendampinginya dan melindungi warisan keluarga. Tanpa diduga, ia benar-benar menjadi \"wanita tertua\" keluarga Wei. </p>\r\n', 'FFL.jpg', '2025-12-17 14:49:47', 'admin'),
(7, 'Speed and Love', 'Serial ini berkisah tentang kakak beradik Jiang Mu, adik perempuan yang terlindungi dan dimanjakan, dan Jin Zhao, kakak laki-laki yang sangat berbakat. Ketika Mu berusia sembilan tahun, orang tua mereka bercerai dan ayah serta Zhao pindah ke Thailand. Dengan demikian, kehidupan Mu dan Zhao menjadi dua jalan yang tidak pernah bersinggungan. Setelah mengetahui bahwa kakaknya diadopsi, Mu terbang ke Thailand sendirian. Ketika mereka bertemu kembali, bocah yang dulunya elegan telah berubah menjadi pemuda tangguh yang ditempa oleh jalanan. Zhao kini menekuni tinju dan balap, menjalani kehidupan yang penuh dengan sensasi dan bahaya liar yang sama sekali asing bagi Mu. Tanpa gentar, Mu berusaha untuk beradaptasi dengan kehidupan Zhao dan keluarga ayahnya. Sejalan dengan bakatnya, studi dan kehidupannya di Thailand sama cemerlangnya, dan antusiasme serta empatinya mencerahkan hidup Zhao. Sebagai kopilot Zhao, dia adalah navigator yang sempurna. Melihat Zhao terjebak dalam kesulitan, dia memutuskan untuk menariknya keluar dan membawanya pulang. Ketika sebuah kecelakaan memisahkan mereka berdua lagi, Mu mengambil tanggung jawab untuk mengurus keluarga sambil mewujudkan ambisi dan impian kedirgantaraan mereka bersama. Bertahun-tahun kemudian, Mu kembali ke Tiongkok setelah lulus. Mu dan Zhao bertemu kembali di Nanjing, mengungkapkan kasih sayang mereka satu sama lain dengan cara mereka sendiri. Sejak saat itu, seperti matahari yang gemilang di siang hari dan bulan yang terang di malam hari, cinta mereka bersinar dan bercahaya selamanya, tidak akan pernah terpisah lagi.', '20251230222739.jpg', '2025-12-30 22:27:39', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `deskripsi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `gambar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `deskripsi`, `gambar`, `tanggal`, `username`) VALUES
(1, 'Fangs Of Fortune', 'FOF.jpeg', '2026-01-08 14:24:32', 'admin'),
(2, 'Love Ambition', 'LoveAmb.jpeg', '2026-01-08 14:24:32', 'admin'),
(3, 'Moonlight Mystique', 'MoonMys.jpeg', '2026-01-08 14:26:32', 'admin'),
(4, 'Yummy Yummy Yummy', 'YYY.jpeg', '2026-01-08 14:27:32', 'admin'),
(5, 'Legend Of The Female General', 'LOTFG.jpeg', '2026-01-08 14:30:32', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `foto` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`username`, `password`, `foto`) VALUES
('Jessie', 'jessie', '20260114131514.jpg'),
('april', 'april', '20260114125143.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `foto`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', ''),
(2, 'april', '37d153a06c79e99e4de5889dbe2e7c57', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
