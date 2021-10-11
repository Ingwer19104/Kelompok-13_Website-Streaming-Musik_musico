-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2021 at 03:41 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `geet`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Justice (Triple Chucks Deluxe)', 1, 2, 'assets/images/artwork/Justice.jpg'),
(2, 'Changes', 1, 5, 'assets/images/artwork/Changes.jpg'),
(3, 'Purpose (Deluxe)', 1, 2, 'assets/images/artwork/purpose.jpg'),
(4, 'Believe (Deluxe Edition)', 1, 2, 'assets/images/artwork/Believe.jpg'),
(5, 'My World 2.0', 1, 2, 'assets/images/artwork/myworld2.jpg'),
(6, 'My World', 1, 2, 'assets/images/artwork/myworlds.jpg'),
(7, 'No. 6 Collaboration Project', 2, 3, 'assets/images/artwork/no6.jpg'),
(8, '÷ (Deluxe)', 2, 2, 'assets/images/artwork/divide.jpg'),
(9, 'X (Wembley Edition)', 2, 2, 'assets/images/artwork/x.jpg'),
(10, '+', 2, 2, 'assets/images/artwork/+.jpg'),
(11, 'Joytime III', 3, 2, 'assets/images/artwork/JoytimeIII.jpg'),
(12, 'Joytime II', 3, 2, 'assets/images/artwork/JoytimeII.jpg'),
(13, 'Joytime', 3, 2, 'assets/images/artwork/Joytime.jpg'),
(14, '24K Magic', 4, 2, 'assets/images/artwork/24k.jpg'),
(15, 'Unorthodox JukeBox', 4, 2, 'assets/images/artwork/unje.jpg'),
(16, 'Do-Woops & Hooligans', 4, 2, 'assets/images/artwork/dowo.jpg'),
(17, 'TIM', 5, 2, 'assets/images/artwork/Tim.png'),
(18, 'Stories', 5, 2, 'assets/images/artwork/stories.png'),
(19, 'True', 5, 2, 'assets/images/artwork/true.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Justin Bieber'),
(2, 'Ed Sheeran'),
(3, 'Marshmello'),
(4, 'Bruno Mars'),
(5, 'Avicii'),
(6, 'Taylor Swift'),
(7, 'Zedd');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Classical'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, '2 Much', 1, 1, 8, '2:32', 'assets/music/Justin Bieber/justice/01 - 2 Much.flac', 1, 5),
(2, 'Deserve You', 1, 1, 8, '3:07', 'assets/music/Justin Bieber/justice/02 - Deserve You.flac', 1, 6),
(3, 'As  I Am (feat. Khalid)', 1, 1, 8, '2:54', 'assets/music/Justin Bieber/justice/03 - As I Am (feat. Khalid).flac', 1, 7),
(4, 'Off My Face', 1, 1, 8, '2:36', 'assets/music/Justin Bieber/justice/04 - Off My Face.flac\r\n', 1, 10),
(5, 'Holy (feat. Chance the Rapper)', 1, 1, 8, '3:32', 'assets/music/Justin Bieber/justice/05 - Holy (feat. Chance the Rapper).flac', 1, 1),
(6, 'Unstable (feat. The Kid LAROI.)', 1, 1, 8, '2:38', 'assets/music/Justin Bieber/justice/06 - Unstable (feat. The Kid LAROI.).flac', 1, 2),
(7, 'MLK Interlude', 1, 1, 8, '1:44', 'assets/music/Justin Bieber/justice/07 - MLK Interlude.flac', 1, 2),
(8, 'Die For You (feat. Dominic Fike)', 1, 1, 8, '3:18', 'assets/music/Justin Bieber/justice/08 - Die For You (feat. Dominic Fike).flac', 1, 2),
(9, 'Hold On', 1, 1, 8, '2:50', 'assets/music/Justin Bieber/justice/09 - Hold On.flac', 1, 3),
(10, 'Somebody', 1, 1, 8, '2:59', 'assets/music/Justin Bieber/justice/10 - Somebody.flac', 1, 2),
(11, 'Ghost', 1, 1, 8, '2:33', 'assets/music/Justin Bieber/justice/11 - Ghost.flac', 1, 2),
(12, 'Peaches (feat. Daniel Caesar and Giveon)', 1, 1, 8, '3:18', 'assets/music/Justin Bieber/justice/12 - Peaches (feat. Daniel Caesar and Giveon).flac', 1, 4),
(13, 'Love You Different (feat. BEAM)', 1, 1, 8, '3:06', 'assets/music/Justin Bieber/justice/13 - Love You Different (feat. BEAM).flac', 1, 5),
(14, 'Loved By You (feat. Burna Boy)', 1, 1, 8, '2:39', 'assets/music/Justin Bieber/justice/14 - Loved By You (feat. Burna Boy).flac', 1, 5),
(15, 'Anyone', 1, 1, 8, '3:10', 'assets/music/Justin Bieber/justice/15 - Anyone.flac', 1, 6),
(16, 'Lonely', 1, 1, 8, '2:29', 'assets/music/Justin Bieber/justice/16 - Lonely.flac', 1, 5),
(17, 'There She Go (feat. Lil Uzi Vert)', 1, 1, 8, '3:35', 'assets/music/Justin Bieber/justice/17 - There She Go (feat. Lil Uzi Vert).flac', 1, 6),
(18, 'I Can\'t Be Myself (feat. Jaden)', 1, 1, 8, '3:13', 'assets/music/Justin Bieber/justice/18 - I Can_t Be Myself (feat. Jaden).flac', 1, 6),
(19, 'Lifetime', 1, 1, 8, '3:27', 'assets/music/Justin Bieber/justice/19 - Lifetime.flac', 1, 6),
(20, 'Wish You Would (feat. Quavo)', 1, 1, 8, '4:01', 'assets/music/Justin Bieber/justice/20 - Wish You Would (feat. Quavo).flac', 1, 6),
(21, 'Know No Better (feat. DaBaby)', 1, 1, 8, '2:41', 'assets/music/Justin Bieber/justice/21 - Know No Better (feat. DaBaby).flac', 1, 7),
(22, 'Name (feat. Tori Kelly)', 1, 1, 8, '2:29', 'assets/music/Justin Bieber/justice/22 - Name (feat. Tori Kelly).flac', 1, 7),
(23, 'Mark My Words', 1, 3, 10, '2:14', 'assets/music/Justin Bieber/Purpose/01 - Mark My Words.flac', 1, 13),
(24, 'I\'ll Show You', 1, 3, 10, '3:19', 'assets/music/Justin Bieber/Purpose/02 - I_ll Show You.flac', 1, 10),
(25, 'What Do You Mean', 1, 3, 10, '3:25', 'assets/music/Justin Bieber/Purpose/03 - What Do You Mean.flac', 1, 11),
(26, 'Sorry', 1, 3, 10, '3:20', 'assets/music/Justin Bieber/Purpose/04 - Sorry.flac', 1, 11),
(27, 'Love Yourself', 1, 3, 10, '3:53', 'assets/music/Justin Bieber/Purpose/05 - Love Yourself.flac', 1, 12),
(28, 'Company', 1, 3, 10, '3:28', 'assets/music/Justin Bieber/Purpose/06 - Company.flac', 1, 14),
(29, 'No Pressure (feat. Big Sean)', 1, 3, 10, '4:46', 'assets/music/Justin Bieber/Purpose/07 - No Pressure (feat. Big Sean).flac', 1, 11),
(30, 'No Sense (feat. Travis Scott)', 1, 3, 10, '4:35', 'assets/music/Justin Bieber/Purpose/08 - No Sense (feat. Travis Scott).flac', 1, 11),
(31, 'The Feeling (feat. Halsey)', 1, 3, 10, '4:04', 'assets/music/Justin Bieber/Purpose/09 - The Feeling (feat. Halsey).flac', 1, 11),
(32, 'Life Is Worth Living', 1, 3, 10, '3:54', 'assets/music/Justin Bieber/Purpose/10 - Life Is Worth Living.flac', 1, 11),
(33, 'Children', 1, 3, 10, '3:43', 'assets/music/Justin Bieber/Purpose/12 - Children.flac', 1, 11),
(34, 'Purpose', 1, 3, 10, '3:30', 'assets/music/Justin Bieber/Purpose/13 - Purpose.flac', 1, 11),
(35, 'Been You', 1, 3, 10, '3:19', 'assets/music/Justin Bieber/Purpose/14 - Been You.flac', 1, 11),
(36, 'Get Used To It', 1, 3, 10, '3:58', 'assets/music/Justin Bieber/Purpose/15 - Get Used To It.flac', 1, 11),
(37, 'We Are (feat. Nas)', 1, 3, 10, '3:22', 'assets/music/Justin Bieber/Purpose/16 - We Are (feat. Nas).flac', 1, 11),
(38, 'Trust', 1, 3, 10, '3:23', 'assets/music/Justin Bieber/Purpose/17 - Trust.flac', 1, 11),
(39, 'All In It', 1, 3, 10, '3:51', 'assets/music/Justin Bieber/Purpose/18 - All In It.flac', 1, 12),
(40, 'All Around Me', 1, 2, 10, '2:16', 'assets/music/Justin Bieber/Changes/01 - All Around Me.flac', 1, 12),
(41, 'Habitual', 1, 2, 10, '2:48', 'assets/music/Justin Bieber/Changes/02 - Habitual.flac', 1, 12),
(42, 'Come Around Me', 1, 2, 10, '3:20', 'assets/music/Justin Bieber/Changes/03 - Come Around Me.flac', 1, 12),
(43, 'Intentions (feat. Quavo)', 1, 2, 10, '3:32', 'assets/music/Justin Bieber/Changes/04 - Intentions (feat. Quavo).flac', 1, 12),
(44, 'Yummy', 1, 2, 10, '3:28', 'assets/music/Justin Bieber/Changes/05 - Yummy.flac', 1, 13),
(45, 'Available', 1, 2, 10, '3:15', 'assets/music/Justin Bieber/Changes/06 - Available.flac', 1, 12),
(46, 'Forever (feat. Post Malone and Clever)', 1, 2, 10, '3:39', 'assets/music/Justin Bieber/Changes/07 - Forever (feat. Post Malone and Clever).flac', 1, 12),
(47, 'Running Over (feat. Lil Dicky)', 1, 2, 10, '2:59', 'assets/music/Justin Bieber/Changes/08 - Running Over (feat. Lil Dicky).flac', 1, 12),
(48, 'Take It Out On Me', 1, 2, 10, '2:58', 'assets/music/Justin Bieber/Changes/09 - Take It Out On Me.flac', 1, 12),
(49, 'Second Emotion (feat. Travis Scott)', 1, 2, 10, '3:22', 'assets/music/Justin Bieber/Changes/10 - Second Emotion (feat. Travis Scott).flac', 1, 12),
(50, 'Get Me (feat. Kehlani)', 1, 2, 10, '3:05', 'assets/music/Justin Bieber/Changes/11 - Get Me (feat. Kehlani).flac', 1, 12),
(51, 'E.T.A', 1, 2, 10, '2:56', 'assets/music/Justin Bieber/Changes/12 - E.T.A.flac', 1, 12),
(52, 'Changes', 1, 2, 10, '2:15', 'assets/music/Justin Bieber/Changes/13 - Changes.flac', 1, 12),
(53, 'Confirmation', 1, 2, 10, '2:50', 'assets/music/Justin Bieber/Changes/14 - Confirmation.flac', 1, 12),
(54, 'That\'s What Love Is', 1, 2, 10, '2:45', 'assets/music/Justin Bieber/Changes/15 - That_s What Love Is.flac', 1, 13),
(55, 'At Least For Now', 1, 2, 10, '2:29', 'assets/music/Justin Bieber/Changes/16 - At Least For Now.flac', 1, 12),
(56, 'Yummy (Summer Walker Remix)', 1, 2, 10, '3:29', 'assets/music/Justin Bieber/Changes/17 - Yummy (Summer Walker Remix).flac', 1, 12),
(57, 'All Around The World (feat. Ludacris)', 1, 4, 10, '4:04', 'assets/music/Justin Bieber/Believe/01 - All Around The World (feat. Ludacris).flac', 1, 12),
(58, 'Boyfriend', 1, 4, 10, '2:51', 'assets/music/Justin Bieber/Believe/02 - Boyfriend.flac', 1, 12),
(59, 'As Long As You Love Me (feat. Big Sean)', 1, 4, 10, '3:49', 'assets/music/Justin Bieber/Believe/03 - As Long As You Love Me (feat. Big Sean).flac', 1, 12),
(60, 'Catching Feelings', 1, 4, 10, '3:54', 'assets/music/Justin Bieber/Believe/04 - Catching Feelings.flac', 1, 12),
(61, 'Take You (Album Version)', 1, 4, 10, '3:40', 'assets/music/Justin Bieber/Believe/05 - Take You (Album Version).flac', 1, 12),
(62, 'Right Here (feat. Drake) (Album Version)', 1, 4, 10, '3:24', 'assets/music/Justin Bieber/Believe/06 - Right Here (feat. Drake) (Album Version).flac', 1, 12),
(63, 'Fall (Album Version)', 1, 4, 10, '4:08', 'assets/music/Justin Bieber/Believe/07 - Fall (Album Version).flac', 1, 12),
(64, 'Die In Your Arms', 1, 4, 10, '3:57', 'assets/music/Justin Bieber/Believe/08 - Die In Your Arms.flac', 1, 12),
(65, 'Thought Of You (Album Version)', 1, 4, 10, '3:50', 'assets/music/Justin Bieber/Believe/09 - Thought Of You (Album Version).flac', 1, 13),
(66, 'Beauty And A Beat (feat. Nicki Minaj)', 1, 4, 10, '3:47', 'assets/music/Justin Bieber/Believe/10 - Beauty And A Beat (feat. Nicki Minaj).flac', 1, 13),
(67, 'One Love', 1, 4, 10, '3:54', 'assets/music/Justin Bieber/Believe/11 - One Love.flac', 1, 12),
(68, 'Be Alright', 1, 4, 10, '3:09', 'assets/music/Justin Bieber/Believe/12 - Be Alright.flac', 1, 12),
(69, 'Believe ', 1, 4, 10, '3:42', 'assets/music/Justin Bieber/Believe/13 - Believe (Album Version).flac', 1, 13),
(70, 'Out Of Town Girl', 1, 4, 10, '3:33', 'assets/music/Justin Bieber/Believe/14 - Out Of Town Girl (Album Version).flac', 1, 12),
(71, 'She Don\'t Like The Lights', 1, 4, 10, '3:59', 'assets/music/Justin Bieber/Believe/15 - She Don_t Like The Lights (Album Version).flac', 1, 12),
(72, 'Maria', 1, 4, 10, '4:08', 'assets/music/Justin Bieber/Believe/16 - Maria (Album Version).flac', 1, 12),
(74, 'Baby (feat. Ludacris)', 1, 5, 1, '3:34', 'assets/music/Justin Bieber/My World 2.0/01 - Baby (feat. Ludacris).flac', 1, 16),
(75, 'Somebody To Love', 1, 5, 1, '3:40', 'assets/music/Justin Bieber/My World 2.0/02 - Somebody To Love.flac', 1, 15),
(76, 'Stuck In The Moment ', 1, 5, 1, '3:42', 'assets/music/Justin Bieber/My World 2.0/03 - Stuck In The Moment (Album Version).flac', 1, 16),
(77, 'U Smile ', 1, 5, 1, '3:16', 'assets/music/Justin Bieber/My World 2.0/04 - U Smile (Album Version).flac', 1, 15),
(78, 'Runaway Love', 1, 5, 1, '3:32', 'assets/music/Justin Bieber/My World 2.0/05 - Runaway Love (Album Version).flac', 1, 15),
(79, 'Never Let You Go', 1, 5, 1, '4:24', 'assets/music/Justin Bieber/My World 2.0/06 - Never Let You Go.flac', 1, 15),
(80, 'Overboard (feat. Jessica Jarrell) ', 1, 5, 1, '4:11', 'assets/music/Justin Bieber/My World 2.0/07 - Overboard (feat. Jessica Jarrell) (Album Version).flac', 1, 15),
(81, 'Up', 1, 5, 1, '3:54', 'assets/music/Justin Bieber/My World 2.0/09 - Up (Album Version).flac', 1, 15),
(82, 'That Should Be Me', 1, 5, 1, '3:54', 'assets/music/Justin Bieber/My World 2.0/10 - That Should Be Me.flac', 1, 15),
(83, 'One Time', 1, 6, 1, '3:35', 'assets/music/Justin Bieber/My Worlds/01 - One Time.flac', 1, 15),
(84, 'Favorite Girl', 1, 6, 1, '4:16', 'assets/music/Justin Bieber/My Worlds/02 - Favorite Girl.flac', 1, 15),
(85, 'Down To Earth', 1, 6, 1, '4:05', 'assets/music/Justin Bieber/My Worlds/03 - Down To Earth (Album Version).flac', 1, 15),
(86, 'Bigger ', 1, 6, 1, '3:17', 'assets/music/Justin Bieber/My Worlds/04 - Bigger (Album Version).flac', 1, 15),
(87, 'One Less Lonely Girl', 1, 6, 1, '3:49', 'assets/music/Justin Bieber/My Worlds/05 - One Less Lonely Girl.flac', 1, 15),
(88, 'First Dance (feat. Usher)', 1, 6, 1, '3:42', 'assets/music/Justin Bieber/My Worlds/05 - 06 - First Dance (feat. Usher) (Album Version).flac', 1, 15),
(89, 'Love Me', 1, 6, 1, '3:11', 'assets/music/Justin Bieber/My Worlds/07 - Love Me.flac', 1, 15),
(90, 'Common Denominator (iTunes Bonus)', 1, 6, 1, '4:08', 'assets/music/Justin Bieber/My Worlds/08 - Common Denominator (iTunes Bonus).flac', 1, 15),
(91, 'Beautiful People (feat. Khalid)', 2, 7, 1, '3:17', 'assets/music/Ed Sheeran/No.6 Collaborations Project /01 - Ed Sheeran - Beautiful People (feat. Khalid).flac', 1, 18),
(92, 'South of the Border (feat. Camila Cabello & Cardi B)', 2, 7, 1, '3:24', 'assets/music/Ed Sheeran/No.6 Collaborations Project /02 - Ed Sheeran - South of the Border (feat. Camila Cabello _ Cardi B).flac', 1, 19),
(93, 'Cross Me (feat. Chance the Rapper & PnB Rock)(Explicit)', 2, 7, 1, '3:26', 'assets/music/Ed Sheeran/No.6 Collaborations Project /03 - Ed Sheeran - Cross Me (feat. Chance the Rapper _ PnB Rock)(Explicit).flac', 1, 19),
(94, 'Take Me Back to London (feat. Stormzy)', 2, 7, 1, '3:09', 'assets/music/Ed Sheeran/No.6 Collaborations Project /04 - Ed Sheeran - Take Me Back to London (feat. Stormzy).flac', 1, 17),
(95, 'Best Part of Me (feat. YEBBA)', 2, 7, 1, '4:03', 'assets/music/Ed Sheeran/No.6 Collaborations Project /05 - Ed Sheeran - Best Part of Me (feat. YEBBA).flac', 1, 17),
(96, 'I Don\'t Care', 2, 7, 1, '3:39', 'assets/music/Ed Sheeran/No.6 Collaborations Project /06 - Ed Sheeran - I Don_t Care.flac', 1, 18),
(97, 'Antisocial', 2, 7, 1, '2:41', 'assets/music/Ed Sheeran/No.6 Collaborations Project /07 - Ed Sheeran - Antisocial.flac', 1, 18),
(98, 'Remember The Name (feat. Eminem & 50 Cent)(Explicit)', 2, 7, 1, '3:27', 'assets/music/Ed Sheeran/No.6 Collaborations Project /08 - Ed Sheeran - Remember The Name (feat. Eminem _ 50 Cent)(Explicit).flac', 1, 18),
(99, 'Feels (feat. Young Thug & J Hus)', 2, 7, 1, '2:30', 'assets/music/Ed Sheeran/No.6 Collaborations Project /09 - Ed Sheeran - Feels (feat. Young Thug _ J Hus).flac', 1, 18),
(100, 'Put It All on Me (feat. Ella Mai)', 2, 7, 1, '3:17', 'assets/music/Ed Sheeran/No.6 Collaborations Project /10 - Ed Sheeran - Put It All on Me (feat. Ella Mai).flac', 1, 18),
(101, 'Nothing On You (feat. Paulo Londra & Dave)', 2, 7, 1, '3:20', 'assets/music/Ed Sheeran/No.6 Collaborations Project /11 - Ed Sheeran - Nothing On You (feat. Paulo Londra _ Dave).flac', 1, 18),
(102, 'I Don\'t Want Your Money (feat. H.E.R.)', 2, 7, 1, '3:24', 'assets/music/Ed Sheeran/No.6 Collaborations Project /12 - Ed Sheeran - I Don_t Want Your Money (feat. H.E.R.).flac', 1, 18),
(103, '1000 Nights (feat. Meek Mill & A Boogie Wit da Hoodie)', 2, 7, 1, '3:32', 'assets/music/Ed Sheeran/No.6 Collaborations Project /13 - Ed Sheeran - 1000 Nights (feat. Meek Mill _ A Boogie Wit da Hoodie).flac', 1, 18),
(104, 'Way To Break My Heart (feat. Skrillex)', 2, 7, 1, '3:10', 'assets/music/Ed Sheeran/No.6 Collaborations Project /14 - Ed Sheeran - Way To Break My Heart (feat. Skrillex).flac', 1, 18),
(105, 'BLOW', 2, 7, 1, '3:29', 'assets/music/Ed Sheeran/No.6 Collaborations Project /15 - Ed Sheeran - BLOW.flac', 1, 18),
(106, 'Eraser', 2, 8, 1, '3:47', 'assets/music/Ed Sheeran/÷/01 - Eraser.flac', 1, 19),
(107, 'Castle on the Hill', 2, 8, 1, '4:21', 'assets/music/Ed Sheeran/÷/02 - Castle on the Hill.flac', 1, 18),
(108, 'Dive', 2, 8, 1, '3:58', 'assets/music/Ed Sheeran/÷/03 - Dive.flac', 1, 19),
(109, 'Shape of You', 2, 8, 1, '3:53', 'assets/music/Ed Sheeran/÷/04 - Shape of You.flac', 1, 18),
(110, 'Perfect', 2, 8, 1, '4:23', 'assets/music/Ed Sheeran/÷/05 - Perfect.flac', 1, 18),
(111, 'Galway Girl', 2, 8, 1, '2:50', 'assets/music/Ed Sheeran/÷/06 - Galway Girl.flac', 1, 18),
(112, 'Happier', 2, 8, 1, '3:27', 'assets/music/Ed Sheeran/÷/07 - Happier.flac', 1, 19),
(113, 'New Man', 2, 8, 1, '3:09', 'assets/music/Ed Sheeran/÷/08 - New Man.flac', 1, 19),
(114, 'Hearts Don\'t Break Around Here', 2, 8, 1, '4:08', 'assets/music/Ed Sheeran/÷/09 - Hearts Don_t Break Around Here.flac', 1, 18),
(115, 'What Do I Know', 2, 8, 1, '3:57', 'assets/music/Ed Sheeran/÷/10 - What Do I Know.flac', 1, 19),
(116, 'How Would You Feel (Paean)', 2, 8, 1, '4:40', 'assets/music/Ed Sheeran/÷/11 - How Would You Feel (Paean).flac', 1, 19),
(117, 'Supermarket Flowers', 2, 8, 1, '3:41', 'assets/music/Ed Sheeran/÷/12 - Supermarket Flowers.flac', 1, 19),
(118, 'Barcelona', 2, 8, 1, '3:11', 'assets/music/Ed Sheeran/÷/13 - Barcelona.flac', 1, 18),
(119, 'Bibia Be Ye Ye', 2, 8, 1, '2:56', 'assets/music/Ed Sheeran/÷/14 - Bibia Be Ye Ye.flac', 1, 18),
(120, 'Nancy Mulligan', 2, 8, 1, '2:59', 'assets/music/Ed Sheeran/÷/15 - Nancy Mulligan.flac', 1, 18),
(121, 'Save Myself', 2, 8, 1, '4:07', 'assets/music/Ed Sheeran/÷/16 - Save Myself.flac', 1, 18),
(122, 'One', 2, 9, 1, '4:12', 'assets/music/Ed Sheeran/x/01 - Ed Sheeran - One.flac', 1, 18),
(123, 'I\'m a Mess', 2, 9, 1, '4:04', 'assets/music/Ed Sheeran/x/02 - Ed Sheeran - I_m a Mess.flac', 1, 18),
(124, 'Sing', 2, 9, 1, '3:55', 'assets/music/Ed Sheeran/x/03 - Ed Sheeran - Sing.flac', 1, 18),
(125, 'Don\'t', 2, 9, 1, '3:39', 'assets/music/Ed Sheeran/x/04 - Ed Sheeran - Don_t.flac', 1, 18),
(126, 'Nina', 2, 9, 1, '3:45', 'assets/music/Ed Sheeran/x/05 - Ed Sheeran - Nina.flac', 1, 18),
(127, 'Photograph', 2, 9, 1, '4:18', 'assets/music/Ed Sheeran/x/06 - Ed Sheeran - Photograph.flac', 1, 18),
(128, 'Bloodstream', 2, 9, 1, '5:00', 'assets/music/Ed Sheeran/x/07 - Ed Sheeran - Bloodstream.flac', 1, 18),
(129, 'Tenerife Sea', 2, 9, 1, '4:01', 'assets/music/Ed Sheeran/x/08 - Ed Sheeran - Tenerife Sea.flac', 1, 18),
(130, 'Runaway', 2, 9, 1, '3:25', 'assets/music/Ed Sheeran/x/09 - Ed Sheeran - Runaway.flac', 1, 18),
(131, 'The Man', 2, 9, 1, '4:10', 'assets/music/Ed Sheeran/x/10 - Ed Sheeran - The Man.flac', 1, 18),
(132, 'Thinking out Loud', 2, 9, 1, '4:41', 'assets/music/Ed Sheeran/x/11 - Ed Sheeran - Thinking out Loud.flac', 1, 19),
(133, 'Afire Love', 2, 9, 1, '5:14', 'assets/music/Ed Sheeran/x/12 - Ed Sheeran - Afire Love.flac', 1, 18),
(134, 'Take It Back', 2, 9, 1, '3:28', 'assets/music/Ed Sheeran/x/13 - Ed Sheeran - Take It Back.flac', 1, 18),
(135, 'Shirtsleeves', 2, 9, 1, '3:10', 'assets/music/Ed Sheeran/x/14 - Ed Sheeran - Shirtsleeves.flac', 1, 18),
(136, 'Even My Dad Does Sometimes', 2, 9, 1, '3:48', 'assets/music/Ed Sheeran/x/15 - Ed Sheeran - Even My Dad Does Sometimes.flac', 1, 18),
(137, 'I See Fire', 2, 9, 1, '5:00', 'assets/music/Ed Sheeran/x/16 - Ed Sheeran - I See Fire.flac', 1, 18),
(138, 'All of the Stars', 2, 9, 1, '3:57', 'assets/music/Ed Sheeran/x/17 - Ed Sheeran - All of the Stars.flac', 1, 18),
(139, 'English Rose', 2, 9, 1, '3:04', 'assets/music/Ed Sheeran/x/18 - Ed Sheeran - English Rose.flac', 1, 18),
(140, 'Touch and Go', 2, 9, 1, '4:00', 'assets/music/Ed Sheeran/x/19 - Ed Sheeran - Touch and Go.flac', 1, 18),
(141, 'New York', 2, 9, 1, '3:55', 'assets/music/Ed Sheeran/x/20 - Ed Sheeran - New York.flac', 1, 18),
(142, 'Make It Rain', 2, 9, 1, '6:44', 'assets/music/Ed Sheeran/x/21 - Ed Sheeran - Make It Rain.flac', 1, 18),
(143, 'Parting Glass (Live at Wembley Stadium)', 2, 9, 1, '3:15', 'assets/music/Ed Sheeran/x/22 - Ed Sheeran - Parting Glass (Live at Wembley Stadium).flac', 1, 18),
(144, 'Small Bump (Live at Wembley Stadium)', 2, 9, 1, '5:02', 'assets/music/Ed Sheeran/x/23 - Ed Sheeran - Small Bump (Live at Wembley Stadium).flac', 1, 19),
(145, 'Lay It All on Me (feat. Ed Sheeran)', 2, 9, 1, '4:02', 'assets/music/Ed Sheeran/x/24 - Rudimental - Lay It All on Me (feat. Ed Sheeran).flac', 1, 18),
(146, 'The A Team', 2, 10, 1, '4:18', 'assets/music/Ed Sheeran/+/01 - Ed Sheeran - The A Team.flac', 1, 18),
(147, 'Drunk', 2, 10, 1, '3:20', 'assets/music/Ed Sheeran/+/02 - Ed Sheeran - Drunk.flac', 1, 18),
(148, 'U.N.I', 2, 10, 1, '3:48', 'assets/music/Ed Sheeran/+/03 - Ed Sheeran - U.N.I-.flac', 1, 18),
(149, 'Grade 8', 2, 10, 1, '2:59', 'assets/music/Ed Sheeran/+/04 - Ed Sheeran - Grade 8.flac', 1, 18),
(150, 'Wake Me Up', 2, 10, 1, '3:49', 'assets/music/Ed Sheeran/+/05 - Ed Sheeran - Wake Me Up.flac', 1, 18),
(151, 'Small Bump', 2, 10, 1, '4:19', 'assets/music/Ed Sheeran/+/06 - Ed Sheeran - Small Bump.flac', 1, 18),
(152, 'This', 2, 10, 1, '3:15', 'assets/music/Ed Sheeran/+/07 - Ed Sheeran - This.flac', 1, 18),
(153, 'The City', 2, 10, 1, '3:54', 'assets/music/Ed Sheeran/+/08 - Ed Sheeran - The City.flac', 1, 18),
(154, 'Lego House', 2, 10, 1, '3:05', 'assets/music/Ed Sheeran/+/09 - Ed Sheeran - Lego House.flac', 1, 18),
(155, 'You Need Me, I Don\'t Need You(Explicit)', 2, 10, 1, '3:40', 'assets/music/Ed Sheeran/+/10 - Ed Sheeran - You Need Me, I Don_t Need You(Explicit).flac', 1, 18),
(156, 'Kiss Me', 2, 10, 1, '4:40', 'assets/music/Ed Sheeran/+/11 - Ed Sheeran - Kiss Me.flac', 1, 18),
(157, 'Give Me Love', 2, 10, 1, '8:46', 'assets/music/Ed Sheeran/+/12 - Ed Sheeran - Give Me Love.flac', 1, 18),
(158, 'Autumn Leaves (Deluxe Edition)', 2, 10, 1, '3:20', 'assets/music/Ed Sheeran/+/13 - Ed Sheeran - Autumn Leaves (Deluxe Edition).flac', 1, 18),
(159, 'Little Bird (Deluxe Edition)', 2, 10, 1, '3:44', 'assets/music/Ed Sheeran/+/14 - Ed Sheeran - Little Bird (Deluxe Edition).flac', 1, 18),
(160, 'Gold Rush (Deluxe Edition)', 2, 10, 1, '4:03', 'assets/music/Ed Sheeran/+/15 - Ed Sheeran - Gold Rush (Deluxe Edition).flac', 1, 18),
(161, 'Sunburn (Deluxe Edition)', 2, 10, 1, '4:35', 'assets/music/Ed Sheeran/+/16 - Ed Sheeran - Sunburn (Deluxe Edition).flac', 1, 19),
(162, 'Know Me', 3, 11, 1, '3:26', 'assets/music/Marshmello/Joytime/01 - Know Me.flac', 1, 13),
(163, 'Summer', 3, 11, 1, '3:53', 'assets/music/Marshmello/Joytime/02 - Summer.flac', 1, 13),
(164, 'Find Me', 3, 11, 1, '3:00', 'assets/music/Marshmello/Joytime/03 - Find Me.flac', 1, 13),
(165, 'Take It Back', 3, 11, 1, '3:53', 'assets/music/Marshmello/Joytime/04 - Take It Back.flac', 1, 13),
(166, 'Bounce', 3, 11, 1, '3:32', 'assets/music/Marshmello/Joytime/05 - Bounce.flac', 1, 13),
(167, 'Blocks', 3, 11, 1, '3:29', 'assets/music/Marshmello/Joytime/06 - Blocks.flac', 1, 13),
(168, 'Show You', 3, 11, 1, '2:57', 'assets/music/Marshmello/Joytime/07 - Show You.flac', 1, 13),
(169, 'Want U 2', 3, 11, 1, '3:02', 'assets/music/Marshmello/Joytime/08 - Want U 2.flac', 1, 13),
(170, 'Home', 3, 11, 1, '3:48', 'assets/music/Marshmello/Joytime/09 - Home.flac', 1, 13),
(171, 'Keep It Mello (feat. Omar LinX)', 3, 11, 1, '4:03', 'assets/music/Marshmello/Joytime/10 - Keep It Mello (feat. Omar LinX).flac', 1, 13),
(172, 'Stars', 3, 12, 1, '4:06', 'assets/music/Marshmello/Joytime II/01 - Stars.flac', 1, 14),
(173, 'Together', 3, 12, 1, '4:06', 'assets/music/Marshmello/Joytime II/02 - Together.flac', 1, 14),
(174, 'Rooftops', 3, 12, 1, '2:57', 'assets/music/Marshmello/Joytime II/03 - Rooftops.flac', 1, 14),
(175, 'Check This Out', 3, 12, 1, '3:39', 'assets/music/Marshmello/Joytime II/04 - Check This Out.flac', 1, 14),
(176, 'Flashbacks', 3, 12, 1, '2:45', 'assets/music/Marshmello/Joytime II/05 - Flashbacks.flac', 1, 14),
(177, 'Tell Me', 3, 12, 1, '2:38', 'assets/music/Marshmello/Joytime II/06 - Tell Me.flac', 1, 15),
(178, 'Paralyzed', 3, 12, 1, '3:39', 'assets/music/Marshmello/Joytime II/07 - Paralyzed.flac', 1, 14),
(179, 'Power', 3, 12, 1, '3:39', 'assets/music/Marshmello/Joytime II/08 - Power.flac', 1, 14),
(180, 'Imagine', 3, 12, 1, '3:51', 'assets/music/Marshmello/Joytime II/09 - Imagine.flac', 1, 14),
(181, 'Down', 3, 13, 1, '2:33', 'assets/music/Marshmello/Joytime III/01 - Down.flac', 1, 15),
(182, 'Run it Up', 3, 13, 1, '2:22', 'assets/music/Marshmello/Joytime III/02 - Run it Up.flac', 1, 16),
(183, 'Put Yo Hands Up', 3, 13, 1, '3:16', 'assets/music/Marshmello/Joytime III/03 - Put Yo Hands Up.flac', 1, 15),
(184, 'Let\'s Get Down', 3, 13, 1, '3:16', 'assets/music/Marshmello/Joytime III/04 - Let_s Get Down.flac', 1, 15),
(185, 'Sad Songs', 3, 13, 1, '3:15', 'assets/music/Marshmello/Joytime III/05 - Sad Songs.flac', 1, 15),
(186, 'Set Me Free', 3, 13, 1, '3:02', 'assets/music/Marshmello/Joytime III/06 - Set Me Free.flac', 1, 15),
(187, 'Room to Fall', 3, 13, 1, '3:00', 'assets/music/Marshmello/Joytime III/07 - Room to Fall.flac', 1, 15),
(188, 'Angklung Life', 3, 13, 1, '3:09', 'assets/music/Marshmello/Joytime III/08 - Angklung Life.flac', 1, 15),
(189, 'Earthquake', 3, 13, 1, '2:28', 'assets/music/Marshmello/Joytime III/09 - Earthquake.flac', 1, 15),
(190, 'Falling To Pieces', 3, 13, 1, '2:46', 'assets/music/Marshmello/Joytime III/10 - Falling To Pieces.flac', 1, 15),
(191, 'Here We Go Again', 3, 13, 1, '3:06', 'assets/music/Marshmello/Joytime III/11 - Here We Go Again.flac', 1, 15),
(192, 'Rescue Me', 3, 13, 1, '3:57', 'assets/music/Marshmello/Joytime III/12 - Rescue Me.flac', 1, 15),
(193, 'Proud', 3, 13, 1, '3:11', 'assets/music/Marshmello/Joytime III/13 - Proud.flac', 1, 15),
(194, '24K Magic', 4, 14, 1, '3:45', 'assets/music/Bruno Mars/24K Magic/01 - Bruno Mars - 24K Magic.flac', 1, 17),
(195, 'Chuncky', 4, 14, 1, '3:06', 'assets/music/Bruno Mars/24K Magic/02 - Bruno Mars - Chunky.flac', 1, 17),
(196, 'Perm', 4, 14, 1, '3:30', 'assets/music/Bruno Mars/24K Magic/03 - Bruno Mars - Perm.flac', 1, 17),
(197, 'That\'s What I Like', 4, 14, 1, '3:26', 'assets/music/Bruno Mars/24K Magic/04 - Bruno Mars - That_s What I Like.flac', 1, 17),
(198, 'Versace on the Floor', 4, 14, 1, '4:21', 'assets/music/Bruno Mars/24K Magic/05 - Bruno Mars - Versace on the Floor.flac', 1, 18),
(199, 'Straight Up & Down', 4, 14, 1, '3:18', 'assets/music/Bruno Mars/24K Magic/06 - Bruno Mars - Straight up _ Down.flac', 1, 17),
(200, 'Calling All My Lovelies', 4, 14, 1, '4:10', 'assets/music/Bruno Mars/24K Magic/07 - Bruno Mars - Calling All My Lovelies.flac', 1, 17),
(201, 'Finesse', 4, 14, 1, '3:11', 'assets/music/Bruno Mars/24K Magic/08 - Bruno Mars - Finesse.flac', 1, 17),
(202, 'Too Good to Say Goodbye', 4, 14, 1, '4:41', 'assets/music/Bruno Mars/24K Magic/09 - Bruno Mars - Too Good to Say Goodbye.flac', 1, 17),
(203, 'Young Girls', 4, 15, 1, '3:48', 'assets/music/Bruno Mars/Unorthodox Jukebox/01 - Bruno Mars - Young Girls.flac', 1, 18),
(204, 'Locked out of Heaven', 4, 15, 1, '3:53', 'assets/music/Bruno Mars/Unorthodox Jukebox/02 - Bruno Mars - Locked out of Heaven.flac', 1, 18),
(205, 'Gorilla (Explicit)', 4, 15, 1, '4:04', 'assets/music/Bruno Mars/Unorthodox Jukebox/03 - Bruno Mars - Gorilla(Explicit).flac', 1, 18),
(206, 'Treasure (Explicit)', 4, 15, 1, '2:58', 'assets/music/Bruno Mars/Unorthodox Jukebox/04 - Bruno Mars - Treasure(Explicit).flac', 1, 18),
(207, 'Moonshine', 4, 15, 1, '3:48', 'assets/music/Bruno Mars/Unorthodox Jukebox/05 - Bruno Mars - Moonshine.flac', 1, 18),
(208, 'When I Was Your Man', 4, 15, 1, '3:33', 'assets/music/Bruno Mars/Unorthodox Jukebox/06 - Bruno Mars - When I Was Your Man.flac', 1, 18),
(209, 'Natalie', 4, 15, 1, '3:45', 'assets/music/Bruno Mars/Unorthodox Jukebox/07 - Bruno Mars - Natalie.flac', 1, 18),
(210, 'Show Me', 4, 15, 1, '3:27', 'assets/music/Bruno Mars/Unorthodox Jukebox/08 - Bruno Mars - Show Me.flac', 1, 18),
(211, 'Money Make Her Smile', 4, 15, 1, '3:23', 'assets/music/Bruno Mars/Unorthodox Jukebox/09 - Bruno Mars - Money Make Her Smile.flac', 1, 18),
(212, 'If I Knew', 4, 15, 1, '2:12', 'assets/music/Bruno Mars/Unorthodox Jukebox/10 - Bruno Mars - If I Knew.flac', 1, 18),
(213, 'Grenade', 4, 16, 1, '3:43', 'assets/music/Bruno Mars/Doo-Wops _ Hooligans/01 - Bruno Mars - Grenade.flac', 1, 19),
(214, 'Just the Way You Are', 4, 16, 1, '3:40', 'assets/music/Bruno Mars/Doo-Wops _ Hooligans/02 - Bruno Mars - Just the Way You Are.flac', 1, 19),
(215, 'Our First Time', 4, 16, 1, '4:03', 'assets/music/Bruno Mars/Doo-Wops _ Hooligans/03 - Bruno Mars - Our First Time.flac', 1, 19),
(216, 'Runaway Baby', 4, 16, 1, '2:27', 'assets/music/Bruno Mars/Doo-Wops _ Hooligans/04 - Bruno Mars - Runaway Baby.flac', 1, 19),
(217, 'The Lazy Song', 4, 16, 1, '3:10', 'assets/music/Bruno Mars/Doo-Wops _ Hooligans/05 - Bruno Mars - The Lazy Song.flac', 1, 19),
(218, 'Marry You', 4, 16, 1, '3:50', 'assets/music/Bruno Mars/Doo-Wops _ Hooligans/06 - Bruno Mars - Marry You.flac', 1, 19),
(219, 'Talking to the Moon', 4, 16, 1, '3:37', 'assets/music/Bruno Mars/Doo-Wops _ Hooligans/07 - Bruno Mars - Talking to the Moon.flac', 1, 19),
(220, 'Liquor Store Blues (feat. Damian Marley)', 4, 16, 1, '3:49', 'assets/music/Bruno Mars/Doo-Wops _ Hooligans/08 - Bruno Mars - Liquor Store Blues (feat. Damian Marley).flac', 1, 19),
(221, 'Count on Me', 4, 16, 1, '3:17', 'assets/music/Bruno Mars/Doo-Wops _ Hooligans/09 - Bruno Mars - Count on Me.flac', 1, 19),
(222, 'The Other Side (feat. CeeLo Green and B.o.B)', 4, 16, 1, '3:47', 'assets/music/Bruno Mars/Doo-Wops _ Hooligans/10 - Bruno Mars - The Other Side (feat. CeeLo Green and B.o.B).flac', 1, 19),
(223, 'Peace Of Mind', 5, 17, 1, '3:00', 'assets/music/Avicii/tim/01 - Avicii - Peace Of Mind.flac', 1, 20),
(224, 'Heaven', 5, 17, 1, '4:37', 'assets/music/Avicii/tim/02 - Avicii - Heaven.flac', 1, 20),
(225, 'SOS', 5, 17, 1, '2:37', 'assets/music/Avicii/tim/03 - Avicii - SOS.flac', 1, 20),
(226, 'Tough Love', 5, 17, 1, '3:11', 'assets/music/Avicii/tim/04 - Avicii - Tough Love.flac', 1, 20),
(227, 'Bad Reputation', 5, 17, 1, '3:25', 'assets/music/Avicii/tim/05 - Avicii - Bad Reputation.flac', 1, 21),
(228, 'Ain\'t A Thing (Explicit)', 5, 17, 1, '3:03', 'assets/music/Avicii/tim/06 - Avicii - Ain_t A Thing(Explicit).flac', 1, 20),
(229, 'Hold The Line', 5, 17, 1, '2:51', 'assets/music/Avicii/tim/07 - Avicii - Hold The Line.flac', 1, 20),
(230, 'Freak (Explicit)', 5, 17, 1, '2:59', 'assets/music/Avicii/tim/08 - Avicii - Freak(Explicit).flac', 1, 20),
(231, 'Excuse Me Mr Sir (Explicit)', 5, 17, 1, '3:07', 'assets/music/Avicii/tim/09 - Avicii - Excuse Me Mr Sir(Explicit).flac', 1, 20),
(232, 'Heart Upon My Sleeve', 5, 17, 1, '4:14', 'assets/music/Avicii/tim/10 - Avicii - Heart Upon My Sleeve.flac', 1, 20),
(233, 'Never Leave Me', 5, 17, 1, '2:51', 'assets/music/Avicii/tim/11 - Avicii - Never Leave Me.flac', 1, 20),
(234, 'Fades Away', 5, 17, 1, '2:58', 'assets/music/Avicii/tim/12 - Avicii - Fades Away.flac', 1, 20),
(235, 'Friend Of Mine', 5, 17, 1, '2:39', 'assets/music/Avicii/tim/13 - Avicii - Friend Of Mine.flac', 1, 20),
(236, 'Lonely Together', 5, 17, 1, '3:01', 'assets/music/Avicii/tim/14 - Avicii - Lonely Together.flac', 1, 20),
(237, 'You Be Love', 5, 17, 1, '3:27', 'assets/music/Avicii/tim/15 - Avicii - You Be Love.flac', 1, 20),
(238, 'Without You (Explicit)', 5, 17, 1, '3:01', 'assets/music/Avicii/tim/16 - Avicii - Without You(Explicit).flac', 1, 20),
(239, 'What Would I Change It To', 5, 17, 1, '3:05', 'assets/music/Avicii/tim/17 - Avicii - What Would I Change It To.flac', 1, 20),
(240, 'So Much Better (Avicii Remix)', 5, 17, 1, '2:37', 'assets/music/Avicii/tim/18 - Avicii - So Much Better (Avicii Remix).flac', 1, 20),
(241, 'Waiting For Love', 5, 18, 1, '3:50', 'assets/music/Avicii/stories/01. Waiting For Love.flac', 1, 22),
(242, 'Talk To Myself', 5, 18, 1, '3:55', 'assets/music/Avicii/stories/02. Talk To Myself.flac', 1, 22),
(243, 'Touch Me', 5, 18, 1, '3:06', 'assets/music/Avicii/stories/03. Touch Me.flac', 1, 23),
(244, 'Ten More Days', 5, 18, 1, '4:05', 'assets/music/Avicii/stories/04. Ten More Days.flac', 1, 22),
(245, 'For A Better Day', 5, 18, 1, '3:26', 'assets/music/Avicii/stories/05. For A Better Day.flac', 1, 23),
(246, 'Broken Arrows', 5, 18, 1, '3:52', 'assets/music/Avicii/stories/06. Broken Arrows.flac', 1, 23),
(247, 'True Believer', 5, 18, 1, '3:52', 'assets/music/Avicii/stories/07. True Believer.flac', 1, 23),
(248, 'City Lights', 5, 18, 1, '6:28', 'assets/music/Avicii/stories/08. City Lights.flac', 1, 23),
(249, 'Pure Grinding', 5, 18, 1, '2:21', 'assets/music/Avicii/stories/09. Pure Grinding.flac', 1, 22),
(250, 'Sunset Jesus', 5, 18, 1, '4:24', 'assets/music/Avicii/stories/10. Sunset Jesus.flac', 1, 22),
(251, 'Can\'t Catch Me', 5, 18, 1, '3:59', 'assets/music/Avicii/stories/11. Can_t Catch Me.flac', 1, 22),
(252, 'Somewhere In Stockholm', 5, 18, 1, '3:22', 'assets/music/Avicii/stories/12. Somewhere In Stockholm.flac', 1, 23),
(253, 'Trouble', 5, 18, 1, '3:22', 'assets/music/Avicii/stories/13. Trouble.flac', 1, 23),
(254, 'Gonna Love Ya', 5, 18, 1, '3:22', 'assets/music/Avicii/stories/14. Gonna Love Ya.flac', 1, 22),
(255, 'Wake Me Up', 5, 19, 1, '4:07', 'assets/music/Avicii/true/1. Wake Me Up.flac', 1, 23),
(256, 'You Make Me', 5, 19, 1, '3:53', 'assets/music/Avicii/true/2. You Make Me.flac', 1, 23),
(257, 'Hey Brother', 5, 19, 1, '4:15', 'assets/music/Avicii/true/3. Hey Brother.flac', 1, 24),
(258, 'Addicted To You', 5, 19, 1, '2:28', 'assets/music/Avicii/true/4. Addicted To You.flac', 1, 24),
(259, 'Dear Boy', 5, 19, 1, '7:59', 'assets/music/Avicii/true/5. Dear Boy.flac', 1, 24),
(260, 'Liar Liar', 5, 19, 1, '3:58', 'assets/music/Avicii/true/6. Liar Liar.flac', 1, 24),
(261, 'Shame On Me', 5, 19, 1, '4:13', 'assets/music/Avicii/true/7. Shame On Me.flac', 1, 24),
(262, 'Lay Me Down', 5, 19, 1, '5:00', 'assets/music/Avicii/true/8. Lay Me Down.flac', 1, 24),
(263, 'Hope There\'s Someone', 5, 19, 1, '5:00', 'assets/music/Avicii/true/9. Hope There_s Someone.flac', 1, 23),
(264, 'Heart Upon My Sleeve', 5, 19, 1, '4:43', 'assets/music/Avicii/true/10. Heart Upon My Sleeve.flac', 1, 24),
(265, 'Long Road To Hell', 5, 19, 1, '3:42', 'assets/music/Avicii/true/11. Long Road To Hell', 1, 24),
(266, 'Always On The Run', 5, 19, 1, '3:42', 'assets/music/Avicii/true/12. Always On The Run.flac', 1, 24),
(267, 'All You Need Is Love', 5, 19, 1, '3:42', 'assets/music/Avicii/true/13. All You Need Is Love.flac', 1, 24),
(268, 'Canyons', 5, 19, 1, '7:29', 'assets/music/Avicii/true/14. Canyons.flac', 1, 24),
(269, 'EDOM', 5, 19, 1, '8:15', 'assets/music/Avicii/true/15. EDOM.flac', 1, 23);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(3, 'ingwerb1', 'Ingwer', 'Ludwig', 'Ingwerb1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2021-09-30 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
