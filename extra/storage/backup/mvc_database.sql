-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 08:36 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer_datatable`
--

CREATE TABLE `answer_datatable` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `right_answer` int(11) NOT NULL DEFAULT 0,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer_datatable`
--

INSERT INTO `answer_datatable` (`id`, `unique_id`, `right_answer`, `answer`) VALUES
(53, '8927285850', 1, 'প্রাতিপদিক'),
(54, '8927285850', 0, 'নাম-পদ'),
(55, '8927285850', 0, 'মৌলিক শব্দ'),
(56, '8927285850', 0, 'কৃদন্ত শব্দ'),
(57, '7516462013', 1, 'আনন'),
(58, '7516462013', 0, 'আষাঢ়'),
(59, '7516462013', 0, 'আঘাটা'),
(60, '7516462013', 0, 'আয়না'),
(61, '9266510527', 0, '৯০°'),
(62, '9266510527', 0, '৯৫°'),
(63, '9266510527', 0, '১০৫°'),
(64, '9266510527', 1, '120°'),
(69, '3395902824', 1, 'হিত্তিক ও তুখারিক'),
(70, '3395902824', 0, 'তামিল ও দ্রাবিড় '),
(71, '3395902824', 0, 'মাগধী ও গৌড়'),
(72, '3395902824', 0, 'আর্য ও অনার্য'),
(73, '1856224727', 0, 'তুর্কি জনতা'),
(74, '1856224727', 1, 'তুর্কি জনতার পিতা'),
(75, '1856224727', 0, 'পূর্ণতাপ্রাপ্ত '),
(76, '1856224727', 0, 'নিখুঁত '),
(77, '3854908968', 0, 'ড.সুনীতি কুমার চট্টোপাধ্যায়'),
(78, '3854908968', 0, 'ড.মুহাম্মদ শহীদুল্লাহ্ '),
(79, '3854908968', 0, 'ড.হুমায়ুন আজাদ'),
(80, '3854908968', 0, 'শহীদুল্লাহ্ কায়সার'),
(81, '4625922157', 0, 'কাব্য'),
(82, '4625922157', 0, 'প্রবন্ধ '),
(83, '4625922157', 0, 'পত্রিকা '),
(84, '4625922157', 0, 'রচনা'),
(85, '6255343603', 0, '২০'),
(86, '6255343603', 0, '২১'),
(87, '6255343603', 1, '২৩'),
(88, '6255343603', 0, '২৪'),
(89, '8881831923', 0, '১৪৯০'),
(90, '8881831923', 1, '১৪৯৮'),
(91, '8881831923', 0, '১৪৯৫'),
(92, '8881831923', 0, '১৪৯২'),
(93, '8173956203', 1, 'নীল দংশন'),
(94, '8173956203', 0, 'আরেক ফাল্গুন'),
(95, '8173956203', 0, 'সংশপ্তক '),
(96, '8173956203', 0, 'শীত বিকেল'),
(97, '3411124732', 0, 'সারদামঙ্গল '),
(98, '3411124732', 1, 'সঙ্গীতশতক'),
(99, '3411124732', 0, 'বঙ্গসুন্দরী'),
(100, '3411124732', 0, 'নিসর্গ সন্দর্শন'),
(105, '5904675712', 0, 'বঙ্কিমচন্দ্র '),
(106, '5904675712', 0, 'সত্যেন্দ্রনাথ দত্ত'),
(107, '5904675712', 0, 'শরৎচন্দ্র চট্টোপাধ্যায় '),
(108, '5904675712', 0, 'মধুসূদন দত্ত'),
(109, '2372700982', 0, 'রবীন্দ্রনাথ ঠাকুর '),
(110, '2372700982', 0, 'হুমায়ুন আযাদ'),
(111, '2372700982', 0, 'শরৎচন্দ্র চট্টোপাধ্যায় '),
(112, '2372700982', 0, 'হুমায়ুন আহমেদ '),
(117, '3188155520', 0, 'লাল-সবুজ-হলুদ-লাল-সবুজ'),
(118, '3188155520', 0, 'লাল-হলুদ-সবুজ-লাল-হলুদ'),
(119, '3188155520', 1, 'লাল-হলুদ-সবুজ-হলুদ-লাল'),
(120, '3188155520', 0, 'লাল-হলুদ-সবুজ-লাম-হলুদ'),
(121, '1802310821', 1, '১০১'),
(122, '1802310821', 0, '১০২'),
(123, '1802310821', 0, '৭৫'),
(124, '1802310821', 0, '৫৯'),
(125, '2475654908', 0, '৪৫'),
(126, '2475654908', 1, '৪৮'),
(127, '2475654908', 0, '৭৫'),
(128, '2475654908', 0, '২৪'),
(129, '2765144727', 1, 'মুহুর্মুহু'),
(130, '2765144727', 0, 'মূহুর্মুহু'),
(131, '2765144727', 0, 'মুহুর্মূহু'),
(132, '2765144727', 0, 'মুর্হুর্মুহু'),
(133, '4239643680', 1, '৫৮৫'),
(134, '4239643680', 0, '৫৮০'),
(135, '4239643680', 0, '৫৭৫'),
(136, '4239643680', 0, '৫৭০'),
(137, '4817763261', 0, '২১'),
(138, '4817763261', 0, '২৩'),
(139, '4817763261', 0, '২৪'),
(140, '4817763261', 1, '২২'),
(145, '8428394182', 0, '10'),
(146, '8428394182', 0, '11'),
(147, '8428394182', 0, '18'),
(148, '8428394182', 1, '20'),
(149, '6814412771', 0, 'Sunday '),
(150, '6814412771', 0, 'Tuesday '),
(151, '6814412771', 0, 'Wednesday '),
(152, '6814412771', 0, 'Monday '),
(153, '7037543561', 0, '15 years'),
(154, '7037543561', 1, '16 years'),
(155, '7037543561', 0, '18 years'),
(156, '7037543561', 0, '17 years'),
(157, '8237115811', 1, 'সূক্ষ্মকোণ'),
(158, '8237115811', 0, 'সমকোণ'),
(159, '8237115811', 0, 'স্থূলকোণ'),
(160, '8237115811', 0, 'প্রবৃদ্ধকোণ'),
(161, '5394704349', 0, '৪৫.৫'),
(162, '5394704349', 0, '৫১.৫'),
(163, '5394704349', 1, '৫৫.৫'),
(164, '5394704349', 0, '৬৫.৫'),
(169, '8959801140', 0, '১ টি'),
(170, '8959801140', 0, '২ টি'),
(171, '8959801140', 0, '৩ টি'),
(172, '8959801140', 1, '৪ টি'),
(173, '8058999294', 0, '০'),
(174, '8058999294', 0, '১'),
(175, '8058999294', 1, '২'),
(176, '8058999294', 0, '৩'),
(177, '7442273564', 0, 'অমূলদ সংখ্যা'),
(178, '7442273564', 1, 'মূলদ সংখ্যা'),
(179, '7442273564', 0, 'ঋণাত্মক সংখ্যা'),
(180, '7442273564', 0, 'অঋণাত্মক সংখ্যা'),
(181, '3061558692', 0, '২'),
(182, '3061558692', 1, '১'),
(183, '3061558692', 0, '০'),
(184, '3061558692', 0, 'অসংখ্য '),
(185, '3396301752', 1, '1/55'),
(186, '3396301752', 0, '55'),
(187, '3396301752', 0, '3/11'),
(188, '3396301752', 0, '1/11'),
(189, '2578477608', 0, '52'),
(190, '2578477608', 0, '520'),
(191, '2578477608', 1, '502'),
(192, '2578477608', 0, '5002'),
(193, '5293280976', 0, '2004'),
(194, '5293280976', 1, '2400'),
(195, '5293280976', 0, '1904'),
(196, '5293280976', 0, '1906'),
(197, '2637078137', 0, '১৮৫০.১২ মিটার'),
(198, '2637078137', 0, '১২৫৮.১৮ মিটার'),
(199, '2637078137', 1, '১৮৫৩.১৮ মিটার'),
(200, '2637078137', 0, '১৫৭০.১৬ মিটার'),
(201, '3863741405', 0, 'ab/b'),
(202, '3863741405', 0, 'ac/b'),
(203, '3863741405', 1, 'ab/c'),
(204, '3863741405', 0, 'Ab/c'),
(205, '6713653310', 0, '২০%'),
(206, '6713653310', 0, '২২%'),
(207, '6713653310', 1, '২৫%'),
(208, '6713653310', 0, '৩০%'),
(209, '2197464285', 0, '৫.২০'),
(210, '2197464285', 0, '৩.১০'),
(211, '2197464285', 0, '৫'),
(212, '2197464285', 1, '৫.৫০'),
(213, '7836563209', 1, '3√3 বর্গ একক'),
(214, '7836563209', 0, '3√2 বর্গ একক'),
(215, '7836563209', 0, '3√7 বর্গ একক'),
(216, '7836563209', 0, '3√5 বর্গ একক'),
(217, '7004461178', 0, '৭ঃ৬'),
(218, '7004461178', 0, '৭ঃ৩'),
(219, '7004461178', 1, '৭ঃ২'),
(220, '7004461178', 0, '৭ঃ৫'),
(221, '6789705273', 0, '৪.৭ কি.মি.'),
(222, '6789705273', 1, '৪.৮ কি.মি.'),
(223, '6789705273', 0, '৪.৬ কি.মি.'),
(224, '6789705273', 0, '৪.৫ কি.মি.'),
(225, '4794390487', 0, '৭০০ কি.মি.'),
(226, '4794390487', 0, '৭০৫ কি.মি.'),
(227, '4794390487', 0, '৭১০ কি.মি.'),
(228, '4794390487', 1, '৭১১ কি.মি.'),
(229, '2246231801', 1, '১ জুলাই ১৯৯১'),
(230, '2246231801', 0, '২ জুন ১৯৯০'),
(231, '2246231801', 0, '২ জুলাই ১৯৯১'),
(232, '2246231801', 0, '৫ জুন ১৯৯১'),
(233, '1687401481', 0, '১৯৭০ সালে'),
(234, '1687401481', 0, '১৯৮০ সালে'),
(235, '1687401481', 0, '১৯৭৩ সালে'),
(236, '1687401481', 1, '১৯৭৭ সালে'),
(249, '2819826107', 0, 'আসাম'),
(250, '2819826107', 0, 'মিজোরাম'),
(251, '2819826107', 0, 'ত্রিপুরা'),
(252, '2819826107', 1, 'নাগাল্যান্ড'),
(253, '5964176534', 0, '১৭ টি'),
(254, '5964176534', 0, '১২ টি'),
(255, '5964176534', 0, '১৬ টি'),
(256, '5964176534', 1, '১৯ টি'),
(265, '8041379658', 0, '১৮২১ সালে'),
(266, '8041379658', 1, '১৮৪৬ সালে'),
(267, '8041379658', 0, '১৮০১ সালে'),
(268, '8041379658', 0, '১৮৮০ সালে'),
(269, '5069638311', 1, 'চীন'),
(270, '5069638311', 0, 'রাশিয়া'),
(271, '5069638311', 0, 'জাপান'),
(272, '5069638311', 0, 'ভারত'),
(273, '7609651235', 1, '৪৭১৯ কি.মি.'),
(274, '7609651235', 0, '৪৩২০ কি.মি.'),
(275, '7609651235', 0, '৪৫৫০ কি.মি.'),
(276, '7609651235', 0, '৪৫৬৭ কি.মি.'),
(277, '3701066387', 0, 'ত্রিপুরা '),
(278, '3701066387', 0, 'নাগাল্যান্ড'),
(279, '3701066387', 0, 'মিজোরাম'),
(280, '3701066387', 1, 'আসাম'),
(281, '3412012446', 0, 'ফ্যালকন-৫'),
(282, '3412012446', 0, 'নভোতরী-১০'),
(283, '3412012446', 1, 'ফ্যালকন-৯'),
(284, '3412012446', 0, 'কোনটিই নয়'),
(285, '4997303485', 1, '৩০ জুন ২০১৫'),
(286, '4997303485', 0, '৫ জুলাই ২০১৫'),
(287, '4997303485', 0, '.২৫ জুন ২০১৫'),
(288, '4997303485', 0, '৩ জুলাই ২০১৫'),
(289, '9012856730', 0, 'এলিজা শারমিন'),
(290, '9012856730', 0, 'ফারজানা ইসলাম'),
(291, '9012856730', 1, 'কামরুন নাহার'),
(292, '9012856730', 0, 'বেগম কবিতা খানম'),
(293, '2119093258', 0, 'জানুয়ারি-মার্চ ১৯৭৩'),
(294, '2119093258', 0, 'মে-জুন ১৯৭৩'),
(295, '2119093258', 1, 'মার্চ-এপ্রিল ১৯৭৩'),
(296, '2119093258', 0, 'জুন-জুলাই ১৯৭৩'),
(297, '6421429681', 0, '৪৫০ মাইল'),
(298, '6421429681', 1, '৪৪৫ মাইল'),
(299, '6421429681', 0, '৪৬০ মাইল'),
(300, '6421429681', 0, '৪৩৫ মাইল'),
(301, '1985251249', 1, 'মিয়ানমার'),
(302, '1985251249', 0, 'থাইল্যান্ড'),
(303, '1985251249', 0, 'নেপাল'),
(304, '1985251249', 0, 'দক্ষিণ কোরিয়া'),
(305, '2141353315', 0, 'নেপাল ও ভুটান'),
(306, '2141353315', 0, 'পশ্চিমবঙ্গ ও কুচবিহার'),
(307, '2141353315', 1, 'পশ্চিমবঙ্গ, মেঘালয় ও আসাম'),
(308, '2141353315', 0, 'পশ্চিমবঙ্গ ও আসাম'),
(309, '6691989581', 0, 'যশোর'),
(310, '6691989581', 1, 'কক্সবাজার'),
(311, '6691989581', 0, 'চাঁপাই নবাবগঞ্জ'),
(312, '6691989581', 0, 'দিনাজপুর'),
(313, '2468385201', 0, '১ জুলাই ২০১৪'),
(314, '2468385201', 0, '১ জুন ২০১৫'),
(315, '2468385201', 1, '১ জুলাই ২০১৫'),
(316, '2468385201', 0, '২৫ জুন ২০১৫'),
(317, '9959585769', 1, 'সিলেট'),
(318, '9959585769', 0, 'খুলনা'),
(319, '9959585769', 0, 'মৌলভীবাজার'),
(320, '9959585769', 0, 'চট্টগ্রাম'),
(321, '1854597791', 0, '৮৫ বর্গ কিমি'),
(322, '1854597791', 1, '১০০ বর্গ কিমি'),
(323, '1854597791', 0, '১১০ বর্গ কিমি'),
(324, '1854597791', 0, '৯০ বর্গ কি.মি.'),
(325, '7882180818', 0, 'বাংলাদেশের দক্ষিণ সীমান্ত দিয়ে গিয়েছে'),
(326, '7882180818', 0, 'বাংলাদেশ হতে অনেক দূরে অবস্থিত'),
(327, '7882180818', 0, 'বাংলাদেশের উত্তর সীমান্ত দিয়ে গিয়েছে'),
(328, '7882180818', 1, 'বাংলাদেশের মধ্যখান দিয়ে গিয়েছে'),
(329, '3987858709', 0, '১২.২ কিমি'),
(330, '3987858709', 1, '১১.৮ কিমি'),
(331, '3987858709', 0, '১২.৮ কিমি'),
(332, '3987858709', 0, '১১.২ কিমি'),
(337, '5334911836', 0, 'ইন্দোনেশিয়া '),
(338, '5334911836', 1, 'মালয়েশিয়া'),
(339, '5334911836', 0, 'তাইওয়ান '),
(340, '5334911836', 0, 'ফিলিপাইন '),
(341, '4296528849', 0, 'নেপাল'),
(342, '4296528849', 0, 'মালদ্বীপ '),
(343, '4296528849', 0, 'ভুটান'),
(344, '4296528849', 0, 'শ্রীলংকা '),
(345, '4184987775', 1, '১৯৪৭ সালে'),
(346, '4184987775', 0, '১৯৯৯ সালে'),
(347, '4184987775', 0, '২০১৮ সালে'),
(348, '4184987775', 0, '২০১৯ সালে'),
(349, '6072790987', 0, 'ভারতে'),
(350, '6072790987', 1, 'পাকিস্তানে'),
(351, '6072790987', 0, 'আফগানিস্তানে'),
(352, '6072790987', 0, 'শ্রীলংকায়'),
(353, '1288261370', 1, 'পাকিস্তান'),
(354, '1288261370', 0, 'আফগানিস্তান'),
(355, '1288261370', 0, 'ভারত'),
(356, '1288261370', 0, 'ইরান'),
(357, '8843383487', 0, 'জানুয়ারি ২০০৮'),
(358, '8843383487', 0, 'এপ্রিল ২০০৭'),
(359, '8843383487', 0, 'জুন ২০০৬'),
(360, '8843383487', 1, 'মে ২০০৮'),
(361, '1629695388', 0, '১৯৯৭ সালে'),
(362, '1629695388', 1, '১৯৯৮ সালে'),
(363, '1629695388', 0, '২০০০ সালে'),
(364, '1629695388', 0, '১৯৯৯ সালে'),
(365, '4009679672', 0, 'মুসোলিনী'),
(366, '4009679672', 0, 'হিটলার'),
(367, '4009679672', 0, 'বিসমার্ক'),
(368, '4009679672', 1, 'নিতসে'),
(369, '6259222745', 0, 'ভুটান'),
(370, '6259222745', 0, 'বাংলাদেশ'),
(371, '6259222745', 0, 'ভারত'),
(372, '6259222745', 1, 'শ্রীলংকা'),
(373, '5735362386', 0, 'নাইজেরিয়া'),
(374, '5735362386', 0, 'লিবিয়া'),
(375, '5735362386', 0, 'ভেনিজুয়েলা'),
(376, '5735362386', 1, 'কাতার'),
(377, '7757623570', 0, 'হ্যানয়'),
(378, '7757623570', 1, 'কলম্বো'),
(379, '7757623570', 0, 'রেঙ্গুন'),
(380, '7757623570', 0, 'সায়গন'),
(381, '2687779853', 0, '২৩৫ বছর'),
(382, '2687779853', 1, '২৪০ বছর'),
(383, '2687779853', 0, '২৪৬ বছর'),
(384, '2687779853', 0, '২৩৮ বছর'),
(385, '3046221798', 0, 'তুর্কেমেনিস্তান'),
(386, '3046221798', 0, 'উজবেকিস্তান'),
(387, '3046221798', 0, 'তাজিকিস্তান'),
(388, '3046221798', 1, 'কাজাকিস্তান'),
(389, '7374822169', 0, 'কাজাকিস্তান'),
(390, '7374822169', 0, 'কিরগিস্তান'),
(391, '7374822169', 1, 'আফগানিস্তান'),
(392, '7374822169', 0, 'ইরান'),
(393, '8423406205', 0, 'সিংহল'),
(394, '8423406205', 0, 'তিব্বত'),
(395, '8423406205', 0, 'জাপান'),
(396, '8423406205', 1, 'আফগানিস্তান'),
(397, '5398287723', 0, 'বৃহৎ স্মৃতির আধার'),
(398, '5398287723', 0, 'দ্রুত গতিতে প্রশ্ন সমাধান'),
(399, '5398287723', 0, 'ভ্রমশূন্য ফলাফল'),
(400, '5398287723', 0, 'উপরের সবগুলো '),
(401, '2241567538', 1, 'লুপিং'),
(402, '2241567538', 0, 'ওভারল্যাপ'),
(403, '2241567538', 0, 'ওভারলুপিং'),
(404, '2241567538', 0, 'ওপরের কোনটিই নয়'),
(413, '7604643213', 0, 'প্রিন্টার'),
(414, '7604643213', 1, 'স্ক্যানার'),
(415, '7604643213', 0, 'মনিটর'),
(416, '7604643213', 0, 'ওপরের কোনটিই নয়'),
(417, '5033497971', 0, '12'),
(418, '5033497971', 1, '21'),
(419, '5033497971', 0, '121'),
(420, '5033497971', 0, '212'),
(421, '6942851968', 0, 'অ্যালটেয়ার ৮৮৮৮'),
(422, '6942851968', 0, 'অ্যালটেয়ার ৮৭৮৭'),
(423, '6942851968', 1, 'অ্যালটেয়ার ৮৮০০'),
(424, '6942851968', 0, 'অ্যালটেয়ার ৮০৮০'),
(425, '9063601895', 1, 'ইনপুট'),
(426, '9063601895', 0, 'পাওয়ার সাপ্লাই'),
(427, '9063601895', 0, 'আউটপুট'),
(428, '9063601895', 0, 'উপরের সবগুলো '),
(429, '8946063767', 0, 'Basic Input Output Software'),
(430, '8946063767', 1, 'Basic Input Output System'),
(431, '8946063767', 0, 'British International Olimpic Socity'),
(432, '8946063767', 0, 'Bangladesh International Olimpic Socity'),
(433, '2968475894', 0, 'এটি একটি বিজনেস অরিয়েন্টেড সোশ্যাল নেটওয়ার্কিং সার্ভিস'),
(434, '2968475894', 0, '২০০৬ সালে এটির সদস্যসংখ্যা ২০ মিলিয়নের অধিক হয়'),
(435, '2968475894', 0, 'এটি ২০০২ সালে প্রতিষ্ঠিত'),
(436, '2968475894', 0, 'উপরের সবগুলো '),
(437, '1411363777', 0, 'WAN'),
(438, '1411363777', 0, 'Satellite Communication'),
(439, '1411363777', 0, 'MAN'),
(440, '1411363777', 1, 'TV রিমোর্ট কন্ট্রোল'),
(441, '8087254948', 0, 'জ্যাক কিলবি'),
(442, '8087254948', 0, 'রবার্ট নয়েস'),
(443, '8087254948', 1, 'ক ও খ উভয়ই'),
(444, '8087254948', 0, 'ওপরের কেউ নয়'),
(445, '4948199582', 0, 'প্রস্বেদন'),
(446, '4948199582', 0, 'ব্যাপন'),
(447, '4948199582', 0, 'তাপ'),
(448, '4948199582', 1, 'শ্বসন'),
(449, '3708027801', 0, 'খনিজ লবণের'),
(450, '3708027801', 0, 'প্রোটিনের অভাবে'),
(451, '3708027801', 1, 'ভিটামিন ‘C’ এর অভাবে'),
(452, '3708027801', 0, 'ভিটামিন ‘K’ এর অভাবে'),
(453, '2949549307', 0, 'নিয়াসিন'),
(454, '2949549307', 1, 'রিবোফ্ল্যাভিন'),
(455, '2949549307', 0, 'পাইরিডক্সিন'),
(456, '2949549307', 0, 'কোবালামিন'),
(457, '2526644815', 1, 'চাল,গুড়, গম'),
(458, '2526644815', 0, 'চাল, মাংস, ডিম'),
(459, '2526644815', 0, 'দুধ, মাংস, ডিম'),
(460, '2526644815', 0, 'মাংস, ডিম, আলু'),
(461, '7996737802', 0, '১.৪-২.০ মিলিগ্রাম'),
(462, '7996737802', 1, '১২-১৮ মিলিগ্রাম'),
(463, '7996737802', 0, '৪-৮ মিলিগ্রাম'),
(464, '7996737802', 0, ' ২-৪ মিলিগ্রাম'),
(465, '1139830451', 1, 'নেপাল-ভারত'),
(466, '1139830451', 0, 'ভুটান-ভারত'),
(467, '1139830451', 0, 'পাকিস্তান-ভুটান'),
(468, '1139830451', 0, 'নেপাল-ভুটান'),
(469, '2013124395', 0, 'বেলজিয়াম ও রাশিয়ার মধ্যে '),
(470, '2013124395', 0, 'চীন ও বেলজিয়ামের মধ্যে '),
(471, '2013124395', 0, 'রাশিয়া ও ইউরোপের মধ্যে '),
(472, '2013124395', 0, 'চীন ও রাশিয়ার মধ্যে '),
(473, '5586714508', 0, 'ব্যাবিলনীয় সভ্যতায়'),
(474, '5586714508', 1, 'সুমেরীয় সভ্যতায়'),
(475, '5586714508', 0, 'হিব্রু সভ্যতায়'),
(476, '5586714508', 0, 'অ্যাশেরীয় সভ্যতায়'),
(477, '8882164230', 0, 'হংকং এ'),
(478, '8882164230', 0, 'রাশিয়ায়'),
(479, '8882164230', 0, 'নেপালে '),
(480, '8882164230', 1, 'ব্রিটেন'),
(481, '7727389951', 0, '১৯৭০ সালে'),
(482, '7727389951', 0, '১৯৭২ সালে'),
(483, '7727389951', 0, '১৯৭৪ সালে'),
(484, '7727389951', 1, '১৯৭৩ সালে'),
(485, '8996861608', 0, 'অংশগ্রহণ'),
(486, '8996861608', 1, 'স্বচ্ছতা'),
(487, '8996861608', 0, 'জবাবদিহিতা'),
(488, '8996861608', 0, 'সমতা'),
(489, '4123049389', 0, 'Interective Voice Technology '),
(490, '4123049389', 0, 'Internet'),
(491, '4123049389', 0, 'Outsourcing '),
(492, '4123049389', 0, 'SMS'),
(493, '6792008821', 0, 'a)Dr Anisul Haque '),
(494, '6792008821', 0, 'b)Dr Iqbal Kadir'),
(495, '6792008821', 0, 'c)Dr Jahangir kabir'),
(496, '6792008821', 0, 'd)Dr Isfat Ali'),
(497, '6166923939', 0, 'a) Treatment '),
(498, '6166923939', 0, 'b) Editing '),
(499, '6166923939', 0, 'c) Entertainment '),
(500, '6166923939', 0, 'd) Banking '),
(501, '4147682919', 0, 'a)Morning'),
(502, '4147682919', 0, 'b) Evening '),
(503, '4147682919', 0, 'c)Night'),
(504, '4147682919', 0, 'd)Anytime'),
(505, '1489904614', 0, 'a) picture viewing'),
(506, '1489904614', 0, 'b) newspaper reading and viewing'),
(507, '1489904614', 0, 'c) social communication'),
(508, '1489904614', 0, 'd) song downloading');

-- --------------------------------------------------------

--
-- Table structure for table `biograph_datatable`
--

CREATE TABLE `biograph_datatable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blog_datatable`
--

CREATE TABLE `blog_datatable` (
  `id` int(11) NOT NULL,
  `admin_id` varchar(255) NOT NULL,
  `name` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `keywords` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `video` mediumtext NOT NULL,
  `file` mediumtext NOT NULL,
  `anchor` mediumtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `expare` mediumtext NOT NULL,
  `total_like` int(11) NOT NULL,
  `total_unlike` int(11) NOT NULL,
  `total_watch` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `level` int(11) NOT NULL DEFAULT 0,
  `complain` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `certificate_datatable`
--

CREATE TABLE `certificate_datatable` (
  `id` int(11) NOT NULL,
  `doctor_uid` text NOT NULL,
  `post_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `certificate_datatable`
--

INSERT INTO `certificate_datatable` (`id`, `doctor_uid`, `post_id`, `image`, `status`) VALUES
(1, '123456789', 1, 'extra/resources/uploads/belle/img/f0c238033d26055.jpg', 1),
(2, '123456789', 3, 'extra/resources/uploads/belle/img/f0c238033d26055.jpg', 1),
(3, '123456789', 15, 'extra/resources/uploads/belle/img/f0c238033d26055.jpg', 1),
(4, '123456789', 16, 'extra/resources/uploads/belle/img/6022199c9189f01.png', 1),
(5, '123456789', 16, 'extra/resources/uploads/belle/img/f179a93791c5ee2.png', 1),
(6, 'exa308616', 5, 'extra/resources/uploads/sumtech/img/26547060be25908.png', 1),
(7, 'exa308616', 5, 'extra/resources/uploads/sumtech/img/13629d3aca91338.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `datatables`
--

CREATE TABLE `datatables` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sql_command` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_datatable`
--

CREATE TABLE `doctor_datatable` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `name` text NOT NULL,
  `designation` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `desctiption` text NOT NULL,
  `photo` text NOT NULL,
  `division` text NOT NULL,
  `district` text NOT NULL,
  `police_station` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor_datatable`
--

INSERT INTO `doctor_datatable` (`id`, `unique_id`, `title`, `name`, `designation`, `mobile`, `email`, `desctiption`, `photo`, `division`, `district`, `police_station`, `date`, `status`) VALUES
(6, '136400', 'meat title', 'Enter Your Name', 'Enter your designation', '01724955164', 'israt@gmail.com', '&lt;p&gt;text in herecvxcvxcvx&lt;/p&gt;', 'extra/resources/uploads/sumtech/file/79dd74b8d0dc90a.jpg', 'ঢাকা', 'শরীয়তপুর', 'শরিয়তপুর সদর', '2022-09-27 05:15:11', 1),
(7, '582450', 'qwrqrqrr', 'Enter Your Namqrqwrqwrqwe', 'Enter your desrqwrqwrqignation', '01712742881', 'exarqwrqrqrmple@gmail.com', '&lt;p&gt;text in hererqrqrqr&lt;/p&gt;', 'extra/resources/uploads/sumtech/file/f4fbe4b1fe0fb38.jpg', 'ঢাকা', 'শরীয়তপুর', 'শরিয়তপুর সদর', '2022-09-27 05:20:42', 0),
(8, 'exa308616', 'meat titleweqweqw', 'Enter Your Nameeqweqfsdfsd', 'Enter your designationfsdfsdfsdf', '01724568759', 'examfsdvvcxvxgrgple@gmail.com', '&lt;p&gt;text in heregsdgsgs&lt;/p&gt;', 'extra/resources/uploads/sumtech/file/0b602730808df6e.jpg', 'ঢাকা', 'শরীয়তপুর', 'শরিয়তপুর সদর', '2022-09-27 05:24:46', 1),
(9, 'exa185110', 'meat titlerwre', 'Enter Your Namewerwerwe', 'Enter your designationrwerwer', '01537520225', 'exarwerwmple@gmail.com', '&lt;p&gt;text in hereerwerw&lt;/p&gt;', 'extra/resources/uploads/sumtech/file/bf5ad377e2d3e12.jpg', 'ঢাকা', 'শরীয়তপুর', 'শরিয়তপুর সদর', '2022-09-27 05:27:15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `example`
--

CREATE TABLE `example` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL,
  `description` text NOT NULL,
  `address` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `example_datatable`
--

CREATE TABLE `example_datatable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `icon` text NOT NULL,
  `thumbnail` text NOT NULL,
  `note` text NOT NULL,
  `email` text NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `instagram` text NOT NULL,
  `linkedin` text NOT NULL,
  `youtube` text NOT NULL,
  `address` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `example_datatable`
--

INSERT INTO `example_datatable` (`id`, `name`, `author`, `title`, `keywords`, `description`, `icon`, `thumbnail`, `note`, `email`, `facebook`, `twitter`, `instagram`, `linkedin`, `youtube`, `address`, `date`, `status`) VALUES
(1, 'samojugc', 'Israt Ahamed Sabbir', 'news paper', 'news, current news', 'samojugc online news portel', 'icon.png', '', 'Username: sumtechi\r\nPassword: soV94H@8#1hEeP\r\nhost: www.sumtechit.com\r\nDB: sumtechi_database\r\nControl Panel URL: http://116.202.236.60:2082/\r\nhttp://www.samojug.com:2082/', 'samojug.com@gmail.com', 'https://www.facebook.com/samojugnews/', 'https://twitter.com/AhamedIsrat', 'https://www.instagram.com/ahirtausif/', 'https://www.linkedin.com/in/israt-ahamed-sabbir-35401713b/', 'https://www.youtube.com/@samojug', 'SAMOJUG 72 Mohakhali, Wireless gate, Rupayan Center, Level-3. Dhaka-1212.', '2023-02-07 07:05:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `example_post_datatable`
--

CREATE TABLE `example_post_datatable` (
  `id` int(11) NOT NULL,
  `admin` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `title` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `thumbnail` text NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `liked` varchar(255) NOT NULL,
  `unliked` varchar(255) NOT NULL,
  `watched` varchar(255) NOT NULL,
  `commented` int(11) NOT NULL,
  `replied` int(11) NOT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `example_post_datatable`
--

INSERT INTO `example_post_datatable` (`id`, `admin`, `user`, `category`, `title`, `keywords`, `description`, `thumbnail`, `price`, `discount`, `quantity`, `liked`, `unliked`, `watched`, `commented`, `replied`, `level`, `status`, `created`, `updated`) VALUES
(13, 1, 0, 36, 'Your title xzxzxZxZXInput Here.f3423423sdfsdfs', 'Your keywords Input Here.dfsdf2342342sd', '&lt;p&gt;your description write here.&lt;/p&gt;', 'extra/resources/uploads/example/img/0504232fbeb0ae940e3ac.png', 32123, 312321, 231342, '0', '0', '1', 0, 0, 0, 1, '2023-04-05 10:20:54', '2023-04-05 10:20:54'),
(14, 1, 0, 36, 'Your title Inxczxczxput Here.', 'Your keczxczxcywords Input Here.', '&lt;p&gt;your description write hxczxczxcere.&lt;/p&gt;', 'extra/resources/uploads/example/img/05042370be4f4d26dff4b.png', 434, 3423, 234, '0', '0', '3', 0, 0, 0, 0, '2023-04-05 10:46:00', '2023-04-05 10:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `example_project_datatable`
--

CREATE TABLE `example_project_datatable` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `keywords` text NOT NULL,
  `desctiption` text NOT NULL,
  `thumbnail` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `framework_access_datatable`
--

CREATE TABLE `framework_access_datatable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unique_id` text NOT NULL,
  `email` text NOT NULL,
  `mobile` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_access_datatable`
--

INSERT INTO `framework_access_datatable` (`id`, `name`, `unique_id`, `email`, `mobile`, `status`) VALUES
(1, 'Tanima Hasan', 'tan15243', 'tanima24x7@gmail.com', '01719651644', 1),
(2, 'israt ahamed sabbir', 'isr221979', 'isratahamedsabbir@gmail.com', '01775567493', 1),
(3, 'junayed', 'isr597080', 'saleehin.bd@gmail.com', '01886823313', 1),
(6, 'mahir', 'mah792072', 'mahiralbasheradib@gmail.com', '01872029484', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_account_datatable`
--

CREATE TABLE `framework_account_datatable` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `mobile` text NOT NULL,
  `password` text NOT NULL,
  `note` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_account_datatable`
--

INSERT INTO `framework_account_datatable` (`id`, `name`, `email`, `mobile`, `password`, `note`, `status`) VALUES
(1, 'www.gmail.com', 'isratahamedoni@gmail.com', '+8801775567493', '#', '#', 1),
(2, 'www.gmail.com', 'isratahamedsabbir@gmail.com', '+8801775567493', '#', '#', 1),
(3, 'www.gmail.com', 'fgcadb38@gmail.com', '+8801775567493', '#', '#', 1),
(4, 'www.gmail.com', 'sabbirbarguna@gmail.com', '+8801775567493', '#', '#', 1),
(5, 'www.gmail.com', 'superbehaviour@gmail.com', '+8801775567493', '#', '#', 1),
(6, 'www.gmail.com', 'tonimaamua@gmail.com', '+8801775567493', '#', '241', 1),
(7, 'www.gmail.com', 'aynafrank@gmail.com', '+8801775567493', '#', 'awa', 1),
(8, 'www.gmail.com', 'ahirtonima@gmail.com', '+8801775567493', '#', 'fsafadf', 1),
(9, 'www.gmail.com', 'rahatkhan0974@gmail.com', '+8801775567493', '#', 'dweq', 1),
(10, 'www.gmail.com', 'aag82044@gmail.com', '+8801775567493', '#', 'weqweqw', 1),
(11, 'www.yahoo.com', 'isratahamedsabbir@yahoo.com', '+8801775567493', '#', 'zczxcz', 1),
(12, 'www.gmail.com', 'tnusaiba887@gmail.com', '+8801775567493', '#', 'afasfaf', 1),
(13, 'www.gmail.com', 'sajalal493@gmail.com', '+8801775567493', '#', 'dwrqrwq', 1),
(14, 'www.gmail.com', 'amksudaakther@gmail.com', '+8801775567493', '#', 'adasda', 1),
(15, 'www.gmail.com', 'ahirrahmantausif@gmail.com', '+8801775567493', '#', 'fasfa', 1),
(16, 'www.gmail.com', 'unemployedghost@gmail.com', '+8801775567493', '#', '2312', 1),
(17, 'www.gmail.com', 'wheremydestination@gmail.com', '+8801775567493', '#', '3', 1),
(18, 'www.gmail.com', 'rafiyathayra@gmail.com', '+8801775567493', '#', '#', 1),
(19, 'www.gmail.com', 'sumiyakhan0974@gmail.com', '+8801775567493', '#', '431', 1),
(20, 'www.gmail.com', 'rahmannidhi96@gmail.com', '+8801775567493', '#', '414', 1),
(21, 'www.gmail.com', 'amayraaradhya7@gmail.com', '+8801775567493', '#', '231', 1),
(22, 'www.gmail.com', 'pritamamajumdar96@gmail.com', '+8801775567493', '#', '24sad', 1),
(23, 'www.gmail.com', 'rnilasha81@gmail.com', '+8801775567493', '#', '3', 1),
(24, 'www.gmail.com', 'nishizaman25@gmail.com', '+8801775567493', '#', 'sadasd', 1),
(25, 'www.gmail.com', 'moumiakter6@gmail.com', '+8801775567493', '#', '3', 1),
(26, 'www.gmail.com', 'pronitapriya1@gmail.com', '+8801775567493', '#', '23', 1),
(27, 'www.gmail.com', 'mishumishmi7@gmail.com', '+8801775567493', '#', '21312', 1),
(28, 'www.gmail.com', 'ridiariyan@gmail.com', '+8801775567493', '#', '241sd', 1),
(29, 'www.gmail.com', 'islamanita120@gmail.com', '+8801775567493', '2124', 'sdasd', 1),
(30, 'www.gmail.com', 'anwesarahman@gmail.com', '+8801775567493', '#', 'aasdads', 1),
(31, 'www.gmail.com', 'mohonaa853@gmail.com', '+8801775567493', '#', 'asds', 1),
(32, 'www.gmail.com', 'protikiislam@gmail.com', '+8801775567493', '#', 'sfasfa', 1),
(33, 'www.gmail.com', 'nadirajubaida@gmail.com', '+8801775567493', '#', 'sadas', 1),
(34, 'www.gmail.com', 'mirzafarhana32@gmail.com', '+8801775567493', '#', 'adA', 1),
(35, 'www.gmail.com', 'miliafsana40@gmail.com', '+8801775567493', '#', 'SDAS', 1),
(36, 'www.gmail.com', 'ayrarafiyath38@gmail.com', '+8801775567493', '#', 'DASD', 1),
(37, 'www.gmail.com', 'ayrarafiyath@gmail.com', '+8801775567493', '#', 'zxZX', 1),
(38, 'www.gmail.com', 'tanimaamua@gmail.com', '+8801775567493', '#', 'dAD', 1),
(39, 'www.gmail.com', 'oniktanima@gmail.com', '+8801775567493', '#', 'awdsa', 1),
(40, 'www.gmail.com', 'tonima24x7@gmail.com', '+8801775567493', '#', 'sasfsdf', 1),
(41, 'www.gmail.com', 'extrabd24x7@gmail.com', '+8801775567493', '#', 'sdasd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_admin_datatable`
--

CREATE TABLE `framework_admin_datatable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'not set',
  `deshboard` text NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `keywords` mediumtext NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `question` mediumtext NOT NULL,
  `answer` mediumtext NOT NULL,
  `ip` varchar(255) NOT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `code` varchar(30) NOT NULL,
  `level` int(11) NOT NULL DEFAULT 3,
  `roll` int(11) NOT NULL,
  `address` mediumtext NOT NULL,
  `token` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0,
  `block` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_admin_datatable`
--

INSERT INTO `framework_admin_datatable` (`id`, `name`, `deshboard`, `unique_id`, `description`, `keywords`, `email`, `mobile`, `password`, `photo`, `question`, `answer`, `ip`, `country`, `city`, `zip_code`, `code`, `level`, `roll`, `address`, `token`, `date`, `status`, `block`) VALUES
(1, 'Israt Ahamed Sabbir', 'backend_example_dashboard_class/index_page_function/index', 'admin_2354525', 'new registration', 'new', 'isratahamedsabbir@gmail.com', '01775567493', 'b8c8dab33dfbae8d4d784b10ca5bb275', 'extra/resources/uploads/admin/img/210223ffcd31f506f39c9.jpg', 'not set', 'not set', 'not', 'not set', 'not', '0000', '7797986876785', 1, 0, 'not submit', '', '2022-07-23 16:59:23', 1, 0),
(2, 'Sabbir Ahamed', 'backend_samojugc_dashboard_class/index_page_function/index', 'admin_3256356', 'new registration', 'new', 'sabbir6406@gmail.com', '01719651644', 'b8c8dab33dfbae8d4d784b10ca5bb275', 'extra/resources/uploads/admin/img/210223ea8b73f5ed0032a.jpeg', 'not set', 'not set', 'not set', 'not set', 'not set', '0000', '73635682', 3, 0, 'not submit', '', '2022-07-23 17:09:48', 1, 0),
(5, 'Rafikul Ayon', 'backend_samojugc_dashboard_class/index_page_function/index', 'admin_344746858', 'new registration', 'new', 'samojug.com@gmail.com', '01963819454', 'a898fcb70123d18c9f2a02f738718c03', 'extra/resources/uploads/admin/img/2102238c0b5d59798f6d7.jpg', 'not set', 'not set', 'not set', 'not set', 'not set', '0000', 'not set', 3, 0, 'not submit', '', '2022-08-25 07:08:55', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `framework_advertise_datatable`
--

CREATE TABLE `framework_advertise_datatable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `desctiption` text NOT NULL,
  `link` text NOT NULL,
  `click` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_advertise_datatable`
--

INSERT INTO `framework_advertise_datatable` (`id`, `name`, `title`, `desctiption`, `link`, `click`, `date`, `status`) VALUES
(9, 'google', 'this is example', '&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &amp;#39;Content here, content here&amp;#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &amp;#39;lorem ipsum&amp;#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by&amp;nbsp;&lt;/p&gt;', 'http://www.google.com', 1, '2023-03-17 08:47:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_author_datatable`
--

CREATE TABLE `framework_author_datatable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `mobile` int(11) NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_author_datatable`
--

INSERT INTO `framework_author_datatable` (`id`, `name`, `email`, `mobile`, `address`, `status`) VALUES
(1, 'Israt Ahamed Sabbir', 'isratahamedsabbir@gmail.com', 1775567493, 'Bangladesh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_block_datatable`
--

CREATE TABLE `framework_block_datatable` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `block` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `framework_block_datatable`
--

INSERT INTO `framework_block_datatable` (`id`, `ip`, `block`, `date`, `status`) VALUES
(5, '::1', 0, '2023-03-01 15:09:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_brand_datatable`
--

CREATE TABLE `framework_brand_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(50) NOT NULL,
  `sn` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` int(11) NOT NULL,
  `icon` int(11) NOT NULL,
  `font_icon` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `framework_cart_datatable`
--

CREATE TABLE `framework_cart_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `cookie_id` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_cart_datatable`
--

INSERT INTO `framework_cart_datatable` (`id`, `datatable`, `user_id`, `post_id`, `cookie_id`, `quantity`, `created`) VALUES
(2, 'example_datatable', 0, 9, 'o9BVPUaFbBz8CLE8Ub7k534EzVoShp', 1, '2023-03-28 11:12:35'),
(3, 'example_datatable', 0, 1, 'SfT9If6c5XmGkpw2XiyNLSIXPtzHe8', 1, '2023-03-28 16:15:20'),
(4, 'example_datatable', 0, 9, 'SfT9If6c5XmGkpw2XiyNLSIXPtzHe8', 1, '2023-03-28 16:15:37');

-- --------------------------------------------------------

--
-- Table structure for table `framework_category_datatable`
--

CREATE TABLE `framework_category_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(255) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `sn` int(11) NOT NULL DEFAULT 1,
  `name` text NOT NULL,
  `title` text NOT NULL,
  `icon` text NOT NULL,
  `font_icon` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_category_datatable`
--

INSERT INTO `framework_category_datatable` (`id`, `datatable`, `admin_id`, `sn`, `name`, `title`, `icon`, `font_icon`, `status`) VALUES
(3, 'question_datatable', 1, 0, 'বাংলা ভাষা ও সাহিত্য', 'বাংলা ভাষা ও সাহিত্য', 'extra/resources/uploads/category/9442cbbc4630021.jpg', 'Empty', 1),
(4, 'question_datatable', 1, 1, 'ইংরেজি ভাষা ও সাহিত্য', 'ইংরেজি ভাষা ও সাহিত্য', 'extra/resources/uploads/category/4baf0487cdc3a81.jpg', 'Empty', 1),
(5, 'question_datatable', 1, 2, 'বাংলাদেশ বিষয়াবলি', 'বাংলাদেশ বিষয়াবলি', 'extra/resources/uploads/category/9a224250c5de571.jpg', '', 1),
(6, 'question_datatable', 1, 3, 'আন্তর্জাতিক বিষয়াবলি', 'আন্তর্জাতিক বিষয়াবলি', 'extra/resources/uploads/category/5b34c1e2878e8dc.jpg', 'Empty', 1),
(7, 'question_datatable', 1, 4, 'ভূগোল পরিবেশ ও দূর্যোগ ব্যবস্থাপনা', 'ভূগোল পরিবেশ ও দূর্যোগ ব্যবস্থাপনা', 'extra/resources/uploads/category/8c037155ec88384.jpg', 'Empty', 1),
(8, 'question_datatable', 1, 5, 'কম্পিউটার ও তথ্য প্রযুক্তি', 'কম্পিউটার ও তথ্য প্রযুক্তি', 'extra/resources/uploads/category/5cdad37e89a7bf5.jpg', 'Empty', 1),
(9, 'question_datatable', 1, 6, 'সাধারণ বিজ্ঞান', 'সাধারণ বিজ্ঞান', 'extra/resources/uploads/category/84b457e750c1bc7.jpg', 'Empty', 1),
(10, 'question_datatable', 1, 7, 'গানিতিক যুক্তি', 'গানিতিক যুক্তি', 'extra/resources/uploads/category/02c64c58c95060e.jpg', 'Empty', 1),
(11, 'question_datatable', 1, 8, 'মানসিক দক্ষতা', 'মানসিক দক্ষতা', 'extra/resources/uploads/category/5e1645260ed830a.jpg', 'Empty', 1),
(12, 'question_datatable', 1, 9, 'নৈতিকতা,মূল্যবোধ ও সুশাসন', 'নৈতিকতা,মূল্যবোধ ও সুশাসন', 'extra/resources/uploads/category/acccf47c348974a.jpg', 'Empty', 1),
(24, 'interior_datatable', 1, 0, 'ক্যাবিনেট', 'ক্যাবিনেট', 'extra/resources/uploads/category/074a2d70072a85a.png', 'fa-brands fa-intercom', 1),
(25, 'interior_datatable', 1, 1, 'সিলিং', 'সিলিং', 'extra/resources/uploads/category/d9ae88a226079f5.png', 'fa-brands fa-intercom', 1),
(26, 'interior_datatable', 1, 2, 'টেবিল', 'টেবিল', 'extra/resources/uploads/category/21fa5265d95adaf.png', 'fa-solid fa-plug', 1),
(27, 'interior_datatable', 1, 3, 'দরজা', 'দরজা', 'extra/resources/uploads/category/c31b3bbd7d28ab9.png', 'fa-solid fa-plug', 1),
(28, 'interior_datatable', 1, 4, 'ফার্নিচার', 'ফার্নিচার', 'extra/resources/uploads/category/ebe4c82b78153de.png', 'fa-solid fa-plug', 1),
(29, 'interior_datatable', 1, 5, 'হ্যান্ড পলিশ', 'হ্যান্ড পলিশ', 'extra/resources/uploads/category/0d6bcca5ab409ba.png', 'fa-solid fa-plug', 1),
(30, 'interior_datatable', 1, 6, 'লেকার পেইন্ট', 'লেকার পেইন্ট', 'extra/resources/uploads/category/75249d304401800.png', 'fa-solid fa-plug', 1),
(31, 'interior_datatable', 1, 7, 'ডোকু পেইন্ট', 'ডোকু পেইন্ট', 'extra/resources/uploads/category/8ff15f027ae2c27.png', 'fa-solid fa-plug', 1),
(32, 'interior_datatable', 1, 8, 'প্লাস্টিক পেইন্ট', 'প্লাস্টিক পেইন্ট', 'extra/resources/uploads/category/788606157586ff4.png', 'fa-solid fa-plug', 1),
(33, 'sumtech_datatable', 1, 0, 'হাড় ছাড়া মাংস', 'হাড় ছাড়া মাংস', 'extra/resources/uploads/category/8631f6943fda708.jpg', 'fa-solid fa-skull-cow', 1),
(34, 'sumtech_datatable', 1, 1, 'হাড় সহ গরুর মাংস', 'হাড় সহ গরুর মাংস', 'extra/resources/uploads/category/abdcb619c1fa157.jpg', 'fa-solid fa-skull-cow', 1),
(35, 'sumtech_datatable', 1, 2, 'গরুর কলিজা', 'গরুর কলিজা', 'extra/resources/uploads/category/bc860761afe62ac.jpg', 'fa-solid fa-skull-cow', 1),
(37, 'sumtech_datatable', 1, 4, 'গরুর পায়া', 'গরুর পায়া', 'extra/resources/uploads/category/1aa6395a56733c8.jpg', 'fa-solid fa-skull-cow', 1),
(38, 'sumtech_datatable', 1, 5, 'গরুর ভূরি', 'গরুর ভূরি', 'extra/resources/uploads/category/58b234eb786a775.jpg', 'fa-solid fa-skull-cow', 1),
(39, 'sumtech_datatable', 1, 6, 'গরুর চাপ', 'গরুর চাপ', 'extra/resources/uploads/category/cbfba3966eb0e92.jpg', 'fa-solid fa-skull-cow', 1),
(40, 'sumtech_datatable', 1, 7, 'গরুর মাথার মাংস', 'গরুর মাথার মাংস', 'extra/resources/uploads/category/0c1e736dcedd952.jpg', 'fa-solid fa-skull-cow', 1),
(41, 'sumtech_datatable', 1, 8, 'গরুর কুরলের মাংস', 'গরুর কুরলের মাংস', 'extra/resources/uploads/category/8f4696d22ea2690.jpg', 'fa-solid fa-skull-cow', 1),
(42, 'portfolio_datatable', 1, 1, 'name', 'israt', 'extra/resources/uploads/category/img/fef20d92cf652e0.png', 'fa-solid fa-blog', 1),
(48, 'sumtechit_datatable', 1, 1, 'web design', 'web design', 'extra/resources/uploads/category/img/150123afc7851fc78ecf9.jpg', 'fa-brands fa-themeisle', 1),
(49, 'sumtechit_datatable', 1, 2, 'web development', 'web development', 'extra/resources/uploads/category/img/15012378a3e928aafa238.jpg', 'fa-solid fa-user', 1),
(50, 'sumtechit_datatable', 1, 3, 'graphics design', 'graphics design', 'extra/resources/uploads/category/img/150123c7ecc2f7d464548.jpg', 'fa-solid fa-user', 1),
(51, 'sumtechit_datatable', 1, 4, 'digital marketing', 'digital marketing', 'extra/resources/uploads/category/img/1501238bbfd50670b8f6a.jpg', 'fa-solid fa-user', 1),
(52, 'sumtechit_datatable', 1, 5, 'auto cad', 'auto cad', 'extra/resources/uploads/category/img/1501238a61bf9ccae0de0.jpg', 'fa-solid fa-user', 1),
(53, 'sumtechit_datatable', 1, 6, 'net working', 'net working', 'extra/resources/uploads/category/img/150123e959caf48ce15b1.jpg', 'fa-solid fa-user', 1),
(54, 'sumtechit_datatable', 1, 7, 'video editing', 'video editing', 'extra/resources/uploads/category/img/1501233a61b96c026c0bd.jpg', 'fa-solid fa-user', 1),
(55, 'sumtechit_datatable', 1, 8, 'office programe', 'office programe', 'extra/resources/uploads/category/img/1501231a9abeaabbd3665.jpg', 'fa-solid fa-user', 1),
(56, 'samojugc_datatable', 0, 1, 'রাজনীতি', 'game', 'game', 'game', 1),
(58, 'samojugc_datatable', 1, 1, 'বাংলাদেশ', 'বাংলাদেশ', 'extra/resources/uploads/category/img/11022384a2b1bf78e3034.png', 'fa-solid fa-icons', 1),
(59, 'samojugc_datatable', 1, 1, 'বিশ্ব', 'বিশ্ব', 'extra/resources/uploads/category/img/11022372b6ac6b93d280c.png', 'fa-solid fa-icons', 1),
(60, 'samojugc_datatable', 1, 1, 'বাণিজ্য', 'বাণিজ্য', 'extra/resources/uploads/category/img/1102232281e0e6c590674.png', 'fa-solid fa-icons', 1),
(61, 'samojugc_datatable', 1, 1, 'খেলা', 'খেলা', 'extra/resources/uploads/category/img/1102239b1c75d9d3d01b2.png', 'fa-solid fa-icons', 1),
(62, 'samojugc_datatable', 1, 1, 'বিনোদন', 'বিনোদন', 'extra/resources/uploads/category/img/1102231e20344a826a44a.png', 'fa-solid fa-icons', 1),
(63, 'samojugc_datatable', 1, 1, 'জীবনযাপন', 'জীবনযাপন', 'extra/resources/uploads/category/img/110223a89a5979ac060dd.png', 'fa-solid fa-icons', 1),
(64, 'samojugc_datatable', 1, 1, 'প্রযুক্তি', 'প্রযুক্তি', 'extra/resources/uploads/category/img/110223e5bc82832fc7618.png', 'fa-solid fa-icons', 1),
(65, 'samojugc_datatable', 1, 1, 'শিক্ষা', 'শিক্ষা', 'extra/resources/uploads/category/img/1102232544abc4c6e7c45.png', 'fa-solid fa-icons', 1),
(66, 'samojugc_datatable', 1, 1, 'ধর্ম', 'ধর্ম', 'extra/resources/uploads/category/img/110223a4d84a6489fd3ad.png', 'fa-solid fa-icons', 1),
(67, 'samojugc_datatable', 1, 1, 'চাকরি', 'চাকরি', 'extra/resources/uploads/category/img/1102231e2564febb97684.png', 'fa-solid fa-icons', 1),
(69, 'redweb_datatable', 1, 1, 'Anal', 'Anal', 'extra/resources/uploads/category/img/090423deee2d10d41940f.png', 'fa-solid fa-blog', 1),
(70, 'example_datatable', 1, 1, 'blog', 'blog', 'extra/resources/uploads/category/img/09042343ef6d62f169429.png', 'fa-solid fa-blog', 1),
(71, 'example_datatable', 1, 2, 'Portfolio', 'Portfolio', 'extra/resources/uploads/category/img/090423517177d68184cf5.png', 'fa-solid fa-blog', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_chat_datatable`
--

CREATE TABLE `framework_chat_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(50) NOT NULL,
  `pc_user` varchar(50) NOT NULL,
  `visitor_id` int(11) NOT NULL,
  `chat` mediumtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_chat_datatable`
--

INSERT INTO `framework_chat_datatable` (`id`, `datatable`, `pc_user`, `visitor_id`, `chat`, `date`, `status`) VALUES
(1, 'portfolio_datatable', 'visitor', 1773, 'hello', '2022-10-07 04:37:44', 1),
(2, 'portfolio_datatable', 'admin', 1773, 'kmon achen', '2022-10-07 04:38:01', 1),
(3, 'portfolio_datatable', 'visitor', 1773, 'hello', '2022-10-07 04:44:38', 1),
(4, 'portfolio_datatable', 'admin', 1773, 'kmon achen?', '2022-10-07 04:44:54', 1),
(5, 'portfolio_datatable', 'visitor', 1856, 'hello kmon achen', '2022-10-07 09:36:36', 1),
(6, 'portfolio_datatable', 'admin', 1856, 'tai naki', '2022-10-07 09:36:50', 1),
(7, 'portfolio_datatable', 'visitor', 1856, 'hmmmm', '2022-10-07 09:37:12', 1),
(8, 'portfolio_datatable', 'admin', 1856, 'o accha', '2022-10-07 09:37:30', 1),
(9, 'portfolio_datatable', 'admin', 1856, 'extra/resources/uploads/chat/file/d0acdb398e10617.jpg', '2022-10-07 09:38:08', 1),
(10, 'portfolio_datatable', 'visitor', 1856, 'extra/resources/uploads/chat/file/8053cbb69058f2f.jpg', '2022-10-07 09:38:38', 1),
(11, 'example_datatable', 'ofline', 12613, 'hello', '2023-02-25 10:11:30', 1),
(12, 'example_datatable', 'visitor', 16, 'tgdfgdgd', '2023-03-09 05:45:09', 1),
(13, 'example_datatable', 'admin', 16, 'tai', '2023-03-09 05:47:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_checkout_datatable`
--

CREATE TABLE `framework_checkout_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `address` text NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `framework_comment_datatable`
--

CREATE TABLE `framework_comment_datatable` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `datatable` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` mediumtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_comment_datatable`
--

INSERT INTO `framework_comment_datatable` (`id`, `post_id`, `datatable`, `user_id`, `comment`, `date`, `status`) VALUES
(27, 0, 'example_datatable', 1, 'sdasdda', '2023-03-18 16:38:30', 1),
(28, 1, 'example_datatable', 1, 'xZxZxZx', '2023-03-18 16:40:33', 1),
(29, 0, 'example_datatable', 1, 'If the height of a modal changes while it is open, you should call', '2023-03-18 16:43:33', 1),
(30, 0, 'example_datatable', 1, 'Loram uses cookies to keep our sites reliable, improve performance, and to analyze how our sites are used.Loram does not implement any ad tracking and no', '2023-03-18 16:45:01', 1),
(31, 0, 'example_datatable', 1, 'zczxczxczxc', '2023-03-18 16:49:04', 1),
(32, 1, 'example_datatable', 1, 'zxZxZ', '2023-03-18 16:51:15', 1),
(33, 1, 'example_datatable', 1, 'zxZxZ', '2023-03-18 16:51:46', 1),
(34, 1, 'example_datatable', 1, 'If the height of a modal changes while it is open, you should call', '2023-03-18 16:52:02', 1),
(35, 1, 'example_datatable', 1, 'If the height of a modal changes while it is open, you should call', '2023-03-18 16:52:13', 1),
(36, 1, 'example_datatable', 1, 'dsfsdfsdf', '2023-03-18 20:54:29', 1),
(37, 1, 'example_datatable', 1, 'xzczxc', '2023-03-18 20:55:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_compared_datatable`
--

CREATE TABLE `framework_compared_datatable` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `framework_complain_datatable`
--

CREATE TABLE `framework_complain_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(255) NOT NULL,
  `visitor_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `complain` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_complain_datatable`
--

INSERT INTO `framework_complain_datatable` (`id`, `datatable`, `visitor_id`, `post_id`, `complain`, `date`, `status`) VALUES
(1, 'redweb_datatable', 55, 4, 'adAD', '2023-04-15 07:37:11', 1),
(2, 'redweb_datatable', 55, 4, '', '2023-04-15 07:37:12', 1),
(3, 'redweb_datatable', 55, 4, '', '2023-04-15 07:37:13', 1),
(4, 'redweb_datatable', 55, 4, '', '2023-04-15 07:37:14', 1),
(5, 'redweb_datatable', 55, 4, '', '2023-04-15 07:37:15', 1),
(6, 'redweb_datatable', 55, 4, '', '2023-04-15 07:37:16', 1),
(7, 'redweb_datatable', 55, 4, '', '2023-04-15 07:37:16', 1),
(8, 'redweb_datatable', 55, 4, '', '2023-04-15 07:37:17', 1),
(9, 'redweb_datatable', 55, 4, '', '2023-04-15 07:37:18', 1),
(10, 'redweb_datatable', 55, 4, '', '2023-04-15 07:37:19', 1),
(11, 'redweb_datatable', 55, 4, '', '2023-04-15 07:37:19', 1),
(12, 'redweb_datatable', 55, 4, '', '2023-04-15 07:37:20', 1),
(13, 'redweb_datatable', 55, 4, '', '2023-04-15 07:37:21', 1),
(14, 'redweb_datatable', 55, 4, '', '2023-04-15 07:37:22', 1),
(15, 'redweb_datatable', 55, 4, '', '2023-04-15 07:37:23', 1),
(16, 'redweb_datatable', 55, 4, '', '2023-04-15 07:37:24', 1),
(17, 'redweb_datatable', 55, 4, '', '2023-04-15 07:37:25', 1),
(18, 'redweb_datatable', 55, 4, '', '2023-04-15 07:37:26', 1),
(19, 'redweb_datatable', 55, 4, '', '2023-04-15 07:37:27', 1),
(20, 'redweb_datatable', 55, 4, '', '2023-04-15 07:37:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_contacts_datatable`
--

CREATE TABLE `framework_contacts_datatable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `note` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `framework_contact_datatable`
--

CREATE TABLE `framework_contact_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` mediumtext NOT NULL,
  `message` mediumtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_contact_datatable`
--

INSERT INTO `framework_contact_datatable` (`id`, `datatable`, `name`, `email`, `subject`, `message`, `date`, `status`) VALUES
(30, 'example_datatable', 'Content Edit', 'isratahamedsabbir@gmail.com', 'sadasdasd', 'asasfagfad', '2023-02-25 21:16:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_content_datatable`
--

CREATE TABLE `framework_content_datatable` (
  `id` int(11) NOT NULL,
  `heading` text NOT NULL,
  `title` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `framework_country_datatable`
--

CREATE TABLE `framework_country_datatable` (
  `id` int(11) NOT NULL,
  `phone_code` int(5) NOT NULL,
  `country_code` char(2) NOT NULL,
  `en_name` varchar(80) NOT NULL,
  `bn_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_country_datatable`
--

INSERT INTO `framework_country_datatable` (`id`, `phone_code`, `country_code`, `en_name`, `bn_name`, `status`) VALUES
(1, 93, 'AF', 'Afghanistan', '', 1),
(2, 358, 'AX', 'Aland Islands', '', 1),
(3, 355, 'AL', 'Albania', '', 1),
(4, 213, 'DZ', 'Algeria', '', 1),
(5, 1684, 'AS', 'American Samoa', '', 1),
(6, 376, 'AD', 'Andorra', '', 1),
(7, 244, 'AO', 'Angola', '', 1),
(8, 1264, 'AI', 'Anguilla', '', 1),
(9, 672, 'AQ', 'Antarctica', '', 1),
(10, 1268, 'AG', 'Antigua and Barbuda', '', 1),
(11, 54, 'AR', 'Argentina', '', 1),
(12, 374, 'AM', 'Armenia', '', 1),
(13, 297, 'AW', 'Aruba', '', 1),
(14, 61, 'AU', 'Australia', '', 1),
(15, 43, 'AT', 'Austria', '', 1),
(16, 994, 'AZ', 'Azerbaijan', '', 1),
(17, 1242, 'BS', 'Bahamas', '', 1),
(18, 973, 'BH', 'Bahrain', '', 1),
(19, 880, 'BD', 'Bangladesh', 'বাংলাদেশ', 1),
(20, 1246, 'BB', 'Barbados', '', 1),
(21, 375, 'BY', 'Belarus', '', 1),
(22, 32, 'BE', 'Belgium', '', 1),
(23, 501, 'BZ', 'Belize', '', 1),
(24, 229, 'BJ', 'Benin', '', 1),
(25, 1441, 'BM', 'Bermuda', '', 1),
(26, 975, 'BT', 'Bhutan', '', 1),
(27, 591, 'BO', 'Bolivia', '', 1),
(28, 599, 'BQ', 'Bonaire, Sint Eustatius and Saba', '', 1),
(29, 387, 'BA', 'Bosnia and Herzegovina', '', 1),
(30, 267, 'BW', 'Botswana', '', 1),
(31, 55, 'BV', 'Bouvet Island', '', 1),
(32, 55, 'BR', 'Brazil', '', 1),
(33, 246, 'IO', 'British Indian Ocean Territory', '', 1),
(34, 673, 'BN', 'Brunei Darussalam', '', 1),
(35, 359, 'BG', 'Bulgaria', '', 1),
(36, 226, 'BF', 'Burkina Faso', '', 1),
(37, 257, 'BI', 'Burundi', '', 1),
(38, 855, 'KH', 'Cambodia', '', 1),
(39, 237, 'CM', 'Cameroon', '', 1),
(40, 1, 'CA', 'Canada', '', 1),
(41, 238, 'CV', 'Cape Verde', '', 1),
(42, 1345, 'KY', 'Cayman Islands', '', 1),
(43, 236, 'CF', 'Central African Republic', '', 1),
(44, 235, 'TD', 'Chad', '', 1),
(45, 56, 'CL', 'Chile', '', 1),
(46, 86, 'CN', 'China', '', 1),
(47, 61, 'CX', 'Christmas Island', '', 1),
(48, 672, 'CC', 'Cocos (Keeling) Islands', '', 1),
(49, 57, 'CO', 'Colombia', '', 1),
(50, 269, 'KM', 'Comoros', '', 1),
(51, 242, 'CG', 'Congo', '', 1),
(52, 242, 'CD', 'Congo, Democratic Republic of the Congo', '', 1),
(53, 682, 'CK', 'Cook Islands', '', 1),
(54, 506, 'CR', 'Costa Rica', '', 1),
(55, 225, 'CI', 'Cote D\'Ivoire', '', 1),
(56, 385, 'HR', 'Croatia', '', 1),
(57, 53, 'CU', 'Cuba', '', 1),
(58, 599, 'CW', 'Curacao', '', 1),
(59, 357, 'CY', 'Cyprus', '', 1),
(60, 420, 'CZ', 'Czech Republic', '', 1),
(61, 45, 'DK', 'Denmark', '', 1),
(62, 253, 'DJ', 'Djibouti', '', 1),
(63, 1767, 'DM', 'Dominica', '', 1),
(64, 1809, 'DO', 'Dominican Republic', '', 1),
(65, 593, 'EC', 'Ecuador', '', 1),
(66, 20, 'EG', 'Egypt', '', 1),
(67, 503, 'SV', 'El Salvador', '', 1),
(68, 240, 'GQ', 'Equatorial Guinea', '', 1),
(69, 291, 'ER', 'Eritrea', '', 1),
(70, 372, 'EE', 'Estonia', '', 1),
(71, 251, 'ET', 'Ethiopia', '', 1),
(72, 500, 'FK', 'Falkland Islands (Malvinas)', '', 1),
(73, 298, 'FO', 'Faroe Islands', '', 1),
(74, 679, 'FJ', 'Fiji', '', 1),
(75, 358, 'FI', 'Finland', '', 1),
(76, 33, 'FR', 'France', '', 1),
(77, 594, 'GF', 'French Guiana', '', 1),
(78, 689, 'PF', 'French Polynesia', '', 1),
(79, 262, 'TF', 'French Southern Territories', '', 1),
(80, 241, 'GA', 'Gabon', '', 1),
(81, 220, 'GM', 'Gambia', '', 1),
(82, 995, 'GE', 'Georgia', '', 1),
(83, 49, 'DE', 'Germany', '', 1),
(84, 233, 'GH', 'Ghana', '', 1),
(85, 350, 'GI', 'Gibraltar', '', 1),
(86, 30, 'GR', 'Greece', '', 1),
(87, 299, 'GL', 'Greenland', '', 1),
(88, 1473, 'GD', 'Grenada', '', 1),
(89, 590, 'GP', 'Guadeloupe', '', 1),
(90, 1671, 'GU', 'Guam', '', 1),
(91, 502, 'GT', 'Guatemala', '', 1),
(92, 44, 'GG', 'Guernsey', '', 1),
(93, 224, 'GN', 'Guinea', '', 1),
(94, 245, 'GW', 'Guinea-Bissau', '', 1),
(95, 592, 'GY', 'Guyana', '', 1),
(96, 509, 'HT', 'Haiti', '', 1),
(97, 0, 'HM', 'Heard Island and Mcdonald Islands', '', 1),
(98, 39, 'VA', 'Holy See (Vatican City State)', '', 1),
(99, 504, 'HN', 'Honduras', '', 1),
(100, 852, 'HK', 'Hong Kong', '', 1),
(101, 36, 'HU', 'Hungary', '', 1),
(102, 354, 'IS', 'Iceland', '', 1),
(103, 91, 'IN', 'India', '', 1),
(104, 62, 'ID', 'Indonesia', '', 1),
(105, 98, 'IR', 'Iran, Islamic Republic of', '', 1),
(106, 964, 'IQ', 'Iraq', '', 1),
(107, 353, 'IE', 'Ireland', '', 1),
(108, 44, 'IM', 'Isle of Man', '', 1),
(109, 972, 'IL', 'Israel', '', 1),
(110, 39, 'IT', 'Italy', '', 1),
(111, 1876, 'JM', 'Jamaica', '', 1),
(112, 81, 'JP', 'Japan', '', 1),
(113, 44, 'JE', 'Jersey', '', 1),
(114, 962, 'JO', 'Jordan', '', 1),
(115, 7, 'KZ', 'Kazakhstan', '', 1),
(116, 254, 'KE', 'Kenya', '', 1),
(117, 686, 'KI', 'Kiribati', '', 1),
(118, 850, 'KP', 'Korea, Democratic People\'s Republic of', '', 1),
(119, 82, 'KR', 'Korea, Republic of', '', 1),
(120, 381, 'XK', 'Kosovo', '', 1),
(121, 965, 'KW', 'Kuwait', '', 1),
(122, 996, 'KG', 'Kyrgyzstan', '', 1),
(123, 856, 'LA', 'Lao People\'s Democratic Republic', '', 1),
(124, 371, 'LV', 'Latvia', '', 1),
(125, 961, 'LB', 'Lebanon', '', 1),
(126, 266, 'LS', 'Lesotho', '', 1),
(127, 231, 'LR', 'Liberia', '', 1),
(128, 218, 'LY', 'Libyan Arab Jamahiriya', '', 1),
(129, 423, 'LI', 'Liechtenstein', '', 1),
(130, 370, 'LT', 'Lithuania', '', 1),
(131, 352, 'LU', 'Luxembourg', '', 1),
(132, 853, 'MO', 'Macao', '', 1),
(133, 389, 'MK', 'Macedonia, the Former Yugoslav Republic of', '', 1),
(134, 261, 'MG', 'Madagascar', '', 1),
(135, 265, 'MW', 'Malawi', '', 1),
(136, 60, 'MY', 'Malaysia', '', 1),
(137, 960, 'MV', 'Maldives', '', 1),
(138, 223, 'ML', 'Mali', '', 1),
(139, 356, 'MT', 'Malta', '', 1),
(140, 692, 'MH', 'Marshall Islands', '', 1),
(141, 596, 'MQ', 'Martinique', '', 1),
(142, 222, 'MR', 'Mauritania', '', 1),
(143, 230, 'MU', 'Mauritius', '', 1),
(144, 269, 'YT', 'Mayotte', '', 1),
(145, 52, 'MX', 'Mexico', '', 1),
(146, 691, 'FM', 'Micronesia, Federated States of', '', 1),
(147, 373, 'MD', 'Moldova, Republic of', '', 1),
(148, 377, 'MC', 'Monaco', '', 1),
(149, 976, 'MN', 'Mongolia', '', 1),
(150, 382, 'ME', 'Montenegro', '', 1),
(151, 1664, 'MS', 'Montserrat', '', 1),
(152, 212, 'MA', 'Morocco', '', 1),
(153, 258, 'MZ', 'Mozambique', '', 1),
(154, 95, 'MM', 'Myanmar', '', 1),
(155, 264, 'NA', 'Namibia', '', 1),
(156, 674, 'NR', 'Nauru', '', 1),
(157, 977, 'NP', 'Nepal', '', 1),
(158, 31, 'NL', 'Netherlands', '', 1),
(159, 599, 'AN', 'Netherlands Antilles', '', 1),
(160, 687, 'NC', 'New Caledonia', '', 1),
(161, 64, 'NZ', 'New Zealand', '', 1),
(162, 505, 'NI', 'Nicaragua', '', 1),
(163, 227, 'NE', 'Niger', '', 1),
(164, 234, 'NG', 'Nigeria', '', 1),
(165, 683, 'NU', 'Niue', '', 1),
(166, 672, 'NF', 'Norfolk Island', '', 1),
(167, 1670, 'MP', 'Northern Mariana Islands', '', 1),
(168, 47, 'NO', 'Norway', '', 1),
(169, 968, 'OM', 'Oman', '', 1),
(170, 92, 'PK', 'Pakistan', '', 1),
(171, 680, 'PW', 'Palau', '', 1),
(172, 970, 'PS', 'Palestinian Territory, Occupied', '', 1),
(173, 507, 'PA', 'Panama', '', 1),
(174, 675, 'PG', 'Papua New Guinea', '', 1),
(175, 595, 'PY', 'Paraguay', '', 1),
(176, 51, 'PE', 'Peru', '', 1),
(177, 63, 'PH', 'Philippines', '', 1),
(178, 64, 'PN', 'Pitcairn', '', 1),
(179, 48, 'PL', 'Poland', '', 1),
(180, 351, 'PT', 'Portugal', '', 1),
(181, 1787, 'PR', 'Puerto Rico', '', 1),
(182, 974, 'QA', 'Qatar', '', 1),
(183, 262, 'RE', 'Reunion', '', 1),
(184, 40, 'RO', 'Romania', '', 1),
(185, 70, 'RU', 'Russian Federation', '', 1),
(186, 250, 'RW', 'Rwanda', '', 1),
(187, 590, 'BL', 'Saint Barthelemy', '', 1),
(188, 290, 'SH', 'Saint Helena', '', 1),
(189, 1869, 'KN', 'Saint Kitts and Nevis', '', 1),
(190, 1758, 'LC', 'Saint Lucia', '', 1),
(191, 590, 'MF', 'Saint Martin', '', 1),
(192, 508, 'PM', 'Saint Pierre and Miquelon', '', 1),
(193, 1784, 'VC', 'Saint Vincent and the Grenadines', '', 1),
(194, 684, 'WS', 'Samoa', '', 1),
(195, 378, 'SM', 'San Marino', '', 1),
(196, 239, 'ST', 'Sao Tome and Principe', '', 1),
(197, 966, 'SA', 'Saudi Arabia', '', 1),
(198, 221, 'SN', 'Senegal', '', 1),
(199, 381, 'RS', 'Serbia', '', 1),
(200, 381, 'CS', 'Serbia and Montenegro', '', 1),
(201, 248, 'SC', 'Seychelles', '', 1),
(202, 232, 'SL', 'Sierra Leone', '', 1),
(203, 65, 'SG', 'Singapore', '', 1),
(204, 1, 'SX', 'Sint Maarten', '', 1),
(205, 421, 'SK', 'Slovakia', '', 1),
(206, 386, 'SI', 'Slovenia', '', 1),
(207, 677, 'SB', 'Solomon Islands', '', 1),
(208, 252, 'SO', 'Somalia', '', 1),
(209, 27, 'ZA', 'South Africa', '', 1),
(210, 500, 'GS', 'South Georgia and the South Sandwich Islands', '', 1),
(211, 211, 'SS', 'South Sudan', '', 1),
(212, 34, 'ES', 'Spain', '', 1),
(213, 94, 'LK', 'Sri Lanka', '', 1),
(214, 249, 'SD', 'Sudan', '', 1),
(215, 597, 'SR', 'Suriname', '', 1),
(216, 47, 'SJ', 'Svalbard and Jan Mayen', '', 1),
(217, 268, 'SZ', 'Swaziland', '', 1),
(218, 46, 'SE', 'Sweden', '', 1),
(219, 41, 'CH', 'Switzerland', '', 1),
(220, 963, 'SY', 'Syrian Arab Republic', '', 1),
(221, 886, 'TW', 'Taiwan, Province of China', '', 1),
(222, 992, 'TJ', 'Tajikistan', '', 1),
(223, 255, 'TZ', 'Tanzania, United Republic of', '', 1),
(224, 66, 'TH', 'Thailand', '', 1),
(225, 670, 'TL', 'Timor-Leste', '', 1),
(226, 228, 'TG', 'Togo', '', 1),
(227, 690, 'TK', 'Tokelau', '', 1),
(228, 676, 'TO', 'Tonga', '', 1),
(229, 1868, 'TT', 'Trinidad and Tobago', '', 1),
(230, 216, 'TN', 'Tunisia', '', 1),
(231, 90, 'TR', 'Turkey', '', 1),
(232, 7370, 'TM', 'Turkmenistan', '', 1),
(233, 1649, 'TC', 'Turks and Caicos Islands', '', 1),
(234, 688, 'TV', 'Tuvalu', '', 1),
(235, 256, 'UG', 'Uganda', '', 1),
(236, 380, 'UA', 'Ukraine', '', 1),
(237, 971, 'AE', 'United Arab Emirates', '', 1),
(238, 44, 'GB', 'United Kingdom', '', 1),
(239, 1, 'US', 'United States', '', 1),
(240, 1, 'UM', 'United States Minor Outlying Islands', '', 1),
(241, 598, 'UY', 'Uruguay', '', 1),
(242, 998, 'UZ', 'Uzbekistan', '', 1),
(243, 678, 'VU', 'Vanuatu', '', 1),
(244, 58, 'VE', 'Venezuela', '', 1),
(245, 84, 'VN', 'Viet Nam', '', 1),
(246, 1284, 'VG', 'Virgin Islands, British', '', 1),
(247, 1340, 'VI', 'Virgin Islands, U.s.', '', 1),
(248, 681, 'WF', 'Wallis and Futuna', '', 1),
(249, 212, 'EH', 'Western Sahara', '', 1),
(250, 967, 'YE', 'Yemen', '', 1),
(251, 260, 'ZM', 'Zambia', '', 1),
(252, 263, 'ZW', 'Zimbabwe', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_coupon_datatable`
--

CREATE TABLE `framework_coupon_datatable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `framework_district_datatable`
--

CREATE TABLE `framework_district_datatable` (
  `id` int(11) NOT NULL,
  `division_id` int(11) NOT NULL,
  `en_name` varchar(255) NOT NULL,
  `bn_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_district_datatable`
--

INSERT INTO `framework_district_datatable` (`id`, `division_id`, `en_name`, `bn_name`, `status`) VALUES
(1, 1, 'kumilla', 'কুমিল্লা', 1),
(2, 1, '', 'ফেনী', 1),
(3, 1, '', 'ব্রাহ্মণবাড়িয়া', 1),
(4, 1, '', 'রাঙ্গামাটি', 1),
(5, 1, '', 'নোয়াখালী', 1),
(6, 1, '', 'চাঁদপুর', 1),
(7, 1, '', 'লক্ষ্মীপুর', 1),
(8, 1, '', 'চট্টগ্রাম', 1),
(9, 1, '', 'কক্সবাজার', 1),
(10, 1, '', 'খাগড়াছড়ি', 1),
(11, 1, '', 'বান্দরবান', 1),
(12, 2, '', 'সিরাজগঞ্জ', 1),
(13, 2, '', 'পাবনা', 1),
(14, 2, '', 'বগুড়া', 1),
(15, 2, '', 'রাজশাহী', 1),
(16, 2, '', 'নাটোর', 1),
(17, 2, '', 'জয়পুরহাট', 1),
(18, 2, '', 'চাঁপাইনবাবগঞ্জ', 1),
(19, 2, '', 'নওগাঁ', 1),
(20, 3, '', 'যশোর', 1),
(21, 3, '', 'সাতক্ষীরা', 1),
(22, 3, '', 'মেহেরপুর', 1),
(23, 3, '', 'নড়াইল', 1),
(24, 3, '', 'চুয়াডাঙ্গা', 1),
(25, 3, '', 'কুষ্টিয়া', 1),
(26, 3, '', 'মাগুরা', 1),
(27, 3, '', 'খুলনা', 1),
(28, 3, '', 'বাগেরহাট', 1),
(29, 3, '', 'ঝিনাইদহ', 1),
(30, 4, '', 'ঝালকাঠি', 1),
(31, 4, '', 'পটুয়াখালী', 1),
(32, 4, '', 'পিরোজপুর', 1),
(33, 4, '', 'বরিশাল', 1),
(34, 4, '', 'ভোলা', 1),
(35, 4, '', 'বরগুনা', 1),
(36, 5, '', 'সিলেট', 1),
(37, 5, '', 'মৌলভীবাজার', 1),
(38, 5, '', 'হবিগঞ্জ', 1),
(39, 5, '', 'সুনামগঞ্জ', 1),
(40, 6, '', 'নরসিংদী', 1),
(41, 6, '', 'গাজীপুর', 1),
(42, 6, '', 'শরীয়তপুর', 1),
(43, 6, '', 'নারায়ণগঞ্জ', 1),
(44, 6, '', 'টাঙ্গাইল', 1),
(45, 6, '', 'কিশোরগঞ্জ', 1),
(46, 6, '', 'মানিকগঞ্জ', 1),
(47, 6, '', 'ঢাকা', 1),
(48, 6, '', 'মুন্সিগঞ্জ', 1),
(49, 6, '', 'রাজবাড়ী', 1),
(50, 6, '', 'মাদারীপুর', 1),
(51, 6, '', 'গোপালগঞ্জ', 1),
(52, 6, '', 'ফরিদপুর', 1),
(53, 7, '', 'পঞ্চগড়', 1),
(54, 7, '', 'দিনাজপুর', 1),
(55, 7, '', 'লালমনিরহাট', 1),
(56, 7, '', 'নীলফামারী', 1),
(57, 7, '', 'গাইবান্ধা', 1),
(58, 7, '', 'ঠাকুরগাঁও', 1),
(59, 7, '', 'রংপুর', 1),
(60, 7, '', 'কুড়িগ্রাম', 1),
(61, 8, '', 'শেরপুর', 1),
(62, 8, '', 'ময়মনসিংহ', 1),
(63, 8, '', 'জামালপুর', 1),
(64, 8, '', 'নেত্রকোণা', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_division_datatable`
--

CREATE TABLE `framework_division_datatable` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `en_name` varchar(255) NOT NULL,
  `bn_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_division_datatable`
--

INSERT INTO `framework_division_datatable` (`id`, `country_id`, `en_name`, `bn_name`, `status`) VALUES
(1, 19, '', 'চট্টগ্রাম', 1),
(2, 19, '', 'রাজশাহী', 1),
(3, 19, '', 'খুলনা', 1),
(4, 19, '', 'বরিশাল', 1),
(5, 19, '', 'সিলেট', 1),
(6, 19, '', 'ঢাকা', 1),
(7, 19, '', 'রংপুর', 1),
(8, 19, '', 'ময়মনসিংহ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_favorite_datatable`
--

CREATE TABLE `framework_favorite_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cookie_id` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_favorite_datatable`
--

INSERT INTO `framework_favorite_datatable` (`id`, `datatable`, `user_id`, `cookie_id`, `post_id`, `created`) VALUES
(8, 'example_datatable', 0, 'L4qXIsTI0CKcI8epLa6qd3XFr0MiPr', 1, '2023-03-28 10:51:06'),
(9, 'example_datatable', 0, 'L4qXIsTI0CKcI8epLa6qd3XFr0MiPr', 9, '2023-03-28 11:07:58'),
(10, 'example_datatable', 0, 'o9BVPUaFbBz8CLE8Ub7k534EzVoShp', 1, '2023-03-28 11:26:42'),
(11, 'example_datatable', 0, '', 1, '2023-03-28 16:09:19'),
(13, 'example_datatable', 0, 'cUBXcqyCe7GCg7YSkVSCdimXJitN23', 1, '2023-03-28 16:13:32'),
(14, 'example_datatable', 0, 'cUBXcqyCe7GCg7YSkVSCdimXJitN23', 9, '2023-03-28 16:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `framework_files_datatable`
--

CREATE TABLE `framework_files_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `path` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `framework_group_datatable`
--

CREATE TABLE `framework_group_datatable` (
  `id` int(11) NOT NULL,
  `sn` int(11) NOT NULL,
  `datatable` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `font_icon` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_group_datatable`
--

INSERT INTO `framework_group_datatable` (`id`, `sn`, `datatable`, `category_id`, `name`, `title`, `icon`, `font_icon`, `status`) VALUES
(1, 1, 'portfolio_datatable', 42, 'alll group', 'afadsfadf', 'extra/resources/uploads/group/img/a213d41ae92303a.png', 'efsdfafaf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_help_datatable`
--

CREATE TABLE `framework_help_datatable` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `desctiption` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `framework_history_datatable`
--

CREATE TABLE `framework_history_datatable` (
  `id` int(11) NOT NULL,
  `visitor_id` int(11) NOT NULL DEFAULT 0,
  `admin` int(11) NOT NULL DEFAULT 0,
  `address` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `framework_history_datatable`
--

INSERT INTO `framework_history_datatable` (`id`, `visitor_id`, `admin`, `address`, `created`) VALUES
(1, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_site_class/index_page_function/insert/', '2023-04-15 06:00:07'),
(2, 0, 1, 'https://localhost/project/index.php?url=backend_example_dashboard_class/index_page_function/index', '2023-04-15 06:00:38'),
(3, 0, 1, 'https://localhost/project/index.php?url=backend_example_dashboard_class/page_function/index/', '2023-04-15 06:00:38'),
(4, 0, 1, 'https://localhost/project/index.php?url=backend_example_dashboard_class/page_function/index/', '2023-04-15 06:02:23'),
(5, 0, 1, 'https://localhost/project/index.php?url=plugnis_example_dashboard_class/index_page_function/reach', '2023-04-15 06:02:28'),
(6, 0, 1, 'https://localhost/project/index.php?url=backend_example_dashboard_class/page_function/index/', '2023-04-15 06:02:31'),
(7, 0, 1, 'https://localhost/project/index.php?url=backend_example_dashboard_class/page_function/index/', '2023-04-15 06:03:46'),
(8, 0, 1, 'https://localhost/project/index.php?url=backend_example_dashboard_class/page_function/index/', '2023-04-15 06:04:43'),
(9, 0, 1, 'https://localhost/project/index.php?url=backend_example_dashboard_class/page_function/index/', '2023-04-15 06:06:18'),
(10, 0, 1, 'https://localhost/project/index.php?url=backend_example_dashboard_class/page_function/index/', '2023-04-15 06:07:08'),
(11, 0, 1, 'https://localhost/project/index.php?url=backend_example_dashboard_class/page_function/index/', '2023-04-15 06:08:10'),
(12, 0, 1, 'https://localhost/project/index.php?url=backend_example_dashboard_class/page_function/index/', '2023-04-15 06:09:04'),
(13, 0, 1, 'https://localhost/project/index.php?url=backend_example_dashboard_class/page_function/index/', '2023-04-15 06:09:23'),
(14, 0, 1, 'https://localhost/project/index.php?url=backend_example_dashboard_class/page_function/index/', '2023-04-15 06:10:29'),
(15, 0, 1, 'https://localhost/project/index.php?url=backend_example_dashboard_class/page_function/index/', '2023-04-15 06:10:39'),
(16, 0, 1, 'https://localhost/project/index.php?url=backend_example_dashboard_class/page_function/index/', '2023-04-15 06:10:44'),
(17, 0, 1, 'https://localhost/project/index.php?url=backend_example_dashboard_class/page_function/index/', '2023-04-15 06:13:00'),
(18, 0, 1, 'https://localhost/project/index.php?url=backend_example_dashboard_class/page_function/index/', '2023-04-15 06:15:40'),
(19, 0, 1, 'https://localhost/project/index.php?url=backend', '2023-04-15 06:15:43'),
(20, 0, 1, 'https://localhost/project/index.php?url=backend_example_dashboard_class/page_function/index/', '2023-04-15 06:15:45'),
(21, 0, 1, 'https://localhost/project/index.php?url=backend_example_dashboard_class/index_page_function/index', '2023-04-15 06:15:47'),
(22, 0, 1, 'https://localhost/project/index.php?url=backend_example_dashboard_class/page_function/index/', '2023-04-15 06:15:47'),
(23, 0, 1, 'https://localhost/project/index.php?url=backend', '2023-04-15 06:16:22'),
(24, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_site_class/index_page_function/insert/', '2023-04-15 06:16:38'),
(25, 0, 1, 'https://localhost/project/index.php?url=backend', '2023-04-15 06:26:07'),
(26, 55, 0, 'https://localhost/project/index.php?url=frontend/index_page_function/index/', '2023-04-15 06:26:56'),
(27, 0, 1, 'https://localhost/project/index.php?url=backend', '2023-04-15 06:27:14'),
(28, 0, 1, 'https://localhost/project/index.php?url=dashboard_redweb_insert_class/index_page_function/insert/', '2023-04-15 06:27:49'),
(29, 0, 1, 'https://localhost/project/index.php?url=dashboard_redweb_insert_class/post_insert_function/loop/', '2023-04-15 06:28:14'),
(30, 0, 1, 'https://localhost/project/index.php?url=dashboard_redweb_loop_class/author_loop_page/loop/', '2023-04-15 06:28:15'),
(31, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 06:28:23'),
(32, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 06:28:56'),
(33, 0, 1, 'https://localhost/project/index.php?url=dashboard_redweb_loop_class/author_loop_page/loop/', '2023-04-15 06:29:30'),
(34, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=3', '2023-04-15 06:29:34'),
(35, 0, 1, 'https://localhost/project/index.php?url=dashboard_redweb_loop_class/author_loop_page/loop/', '2023-04-15 06:29:41'),
(36, 0, 1, 'https://localhost/project/index.php?url=dashboard_redweb_delete_class/post_delete_function/loop/&post_id=3', '2023-04-15 06:29:44'),
(37, 0, 1, 'https://localhost/project/index.php?url=dashboard_redweb_delete_class/index_page_function/loop/', '2023-04-15 06:29:45'),
(38, 0, 1, 'https://localhost/project/index.php?url=dashboard_redweb_loop_class/index_page_function/loop/', '2023-04-15 06:29:46'),
(39, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 06:30:30'),
(40, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 06:32:12'),
(41, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 06:32:18'),
(42, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 06:32:38'),
(43, 54, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 06:33:48'),
(44, 56, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 06:33:50'),
(45, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 06:34:21'),
(46, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 06:34:33'),
(47, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 06:34:46'),
(48, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 06:36:35'),
(49, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 06:37:17'),
(50, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 06:37:59'),
(51, 0, 1, 'https://localhost/project/index.php?url=dashboard_redweb_loop_class/index_page_function/loop/', '2023-04-15 06:42:16'),
(52, 0, 1, 'https://localhost/project/index.php?url=dashboard_redweb_loop_class/author_loop_page/loop/', '2023-04-15 06:42:20'),
(53, 0, 1, 'https://localhost/project/index.php?url=dashboard_redweb_insert_class/index_page_function/insert/', '2023-04-15 06:42:23'),
(54, 0, 1, 'https://localhost/project/index.php?url=backend', '2023-04-15 06:42:26'),
(55, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_site_class/index_page_function/insert/', '2023-04-15 06:42:31'),
(56, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_site_class/insert_post_function/insert/Y2xhc3MsIGZ1bmN0aW9uLCBwYWdl/dGhlbWVfcmVkd2ViX3NpdGVfY2xhc3MsIGxvb3BfcGFnZV9mdW5jdGlvbiwgbG9vcA==/&id=1', '2023-04-15 06:48:55'),
(57, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_site_class/loop_page_function/loop/&msg=UG9zdCBJRCBOb3QgRm91bmQuLi4uLi4=', '2023-04-15 06:48:59'),
(58, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_site_class/loop_page_function/loop/&msg=UG9zdCBJRCBOb3QgRm91bmQuLi4uLi4=', '2023-04-15 07:29:15'),
(59, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_site_class/index_page_function/insert/', '2023-04-15 07:29:16'),
(60, 0, 0, 'https://localhost/project/index.php?url=admin_crowd_class/index_page_function/sign-out/', '2023-04-15 07:29:17'),
(61, 0, 0, 'https://localhost/project/index.php?url=admin_crowd_class/index_page_function/sign-out/', '2023-04-15 07:29:19'),
(62, 0, 0, 'https://localhost/project/index.php?url=admin_crowd_class/index_page_function/sign-out/', '2023-04-15 07:29:21'),
(63, 55, 0, 'https://localhost/project/index.php?url=theme_redweb', '2023-04-15 07:29:37'),
(64, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 07:29:44'),
(65, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 07:29:57'),
(66, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 07:31:39'),
(67, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 07:31:54'),
(68, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 07:32:00'),
(69, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 07:32:28'),
(70, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 07:33:14'),
(71, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 07:33:37'),
(72, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 07:33:45'),
(73, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 07:36:27'),
(74, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 07:36:59'),
(75, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_complain_class/insert_complain_function/index/&post_id=4', '2023-04-15 07:37:11'),
(76, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_complain_class/insert_complain_function/index/&post_id=4', '2023-04-15 07:37:12'),
(77, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_complain_class/insert_complain_function/index/&post_id=4', '2023-04-15 07:37:13'),
(78, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_complain_class/insert_complain_function/index/&post_id=4', '2023-04-15 07:37:14'),
(79, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_complain_class/insert_complain_function/index/&post_id=4', '2023-04-15 07:37:15'),
(80, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_complain_class/insert_complain_function/index/&post_id=4', '2023-04-15 07:37:15'),
(81, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_complain_class/insert_complain_function/index/&post_id=4', '2023-04-15 07:37:16'),
(82, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_complain_class/insert_complain_function/index/&post_id=4', '2023-04-15 07:37:17'),
(83, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_complain_class/insert_complain_function/index/&post_id=4', '2023-04-15 07:37:18'),
(84, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_complain_class/insert_complain_function/index/&post_id=4', '2023-04-15 07:37:19'),
(85, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_complain_class/insert_complain_function/index/&post_id=4', '2023-04-15 07:37:19'),
(86, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_complain_class/insert_complain_function/index/&post_id=4', '2023-04-15 07:37:20'),
(87, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_complain_class/insert_complain_function/index/&post_id=4', '2023-04-15 07:37:21'),
(88, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_complain_class/insert_complain_function/index/&post_id=4', '2023-04-15 07:37:22'),
(89, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_complain_class/insert_complain_function/index/&post_id=4', '2023-04-15 07:37:23'),
(90, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_complain_class/insert_complain_function/index/&post_id=4', '2023-04-15 07:37:24'),
(91, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_complain_class/insert_complain_function/index/&post_id=4', '2023-04-15 07:37:24'),
(92, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_complain_class/insert_complain_function/index/&post_id=4', '2023-04-15 07:37:25'),
(93, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_complain_class/insert_complain_function/index/&post_id=4', '2023-04-15 07:37:27'),
(94, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_complain_class/insert_complain_function/index/&post_id=4', '2023-04-15 07:37:28'),
(95, 55, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 07:37:35'),
(96, 55, 0, 'https://localhost/project/', '2023-04-15 13:06:31'),
(97, 58, 0, 'https://localhost/project/', '2023-04-15 13:06:37'),
(98, 0, 0, 'https://localhost/project/index.php?url=admin_crowd_class/index_page_function/sign-out/', '2023-04-15 13:06:55'),
(99, 0, 0, 'https://localhost/project/index.php?url=admin_crowd_class/index_page_function/sign-in/', '2023-04-15 13:06:58'),
(100, 0, 0, 'https://localhost/project/index.php?url=admin_crowd_class/signin_function/profile/', '2023-04-15 13:07:07'),
(101, 0, 1, 'https://localhost/project/index.php?url=admin_profile_class/index_page_function/profile/', '2023-04-15 13:07:08'),
(102, 0, 1, 'https://localhost/project/index.php?url=backend', '2023-04-15 13:07:13'),
(103, 0, 1, 'https://localhost/project/index.php?url=backend', '2023-04-15 13:10:58'),
(104, 0, 1, 'https://localhost/project/index.php?url=plugins_contact_class/index_page_function/inbox/', '2023-04-15 13:11:51'),
(105, 0, 1, 'https://localhost/project/index.php?url=backend', '2023-04-15 13:11:58'),
(106, 58, 0, 'https://localhost/project/index.php?url=frontend/index_page_function/404', '2023-04-15 13:13:44'),
(107, 58, 0, 'https://localhost/project/index.php?url=theme_redweb', '2023-04-15 13:14:05'),
(108, 0, 1, 'https://localhost/project/index.php?url=backend', '2023-04-15 13:14:30'),
(109, 58, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 13:14:53'),
(110, 58, 0, 'https://localhost/project/index.php?url=theme_redweb', '2023-04-15 13:15:17'),
(111, 58, 0, 'https://localhost/project/index.php?url=frontend/index_page_function/index/', '2023-04-15 13:18:29'),
(112, 58, 0, 'https://localhost/project/index.php?url=frontend/index_page_function/index/', '2023-04-15 13:25:15'),
(113, 58, 0, 'https://localhost/project/index.php?url=frontend/index_page_function/index/', '2023-04-15 13:25:47'),
(114, 58, 0, 'https://localhost/project/index.php?url=frontend/index_page_function/index/', '2023-04-15 13:26:36'),
(115, 0, 1, 'https://localhost/project/index.php?url=backend', '2023-04-15 13:27:29'),
(116, 58, 0, 'https://localhost/project/index.php?url=frontend/index_page_function/404', '2023-04-15 13:29:13'),
(117, 0, 1, 'https://localhost/project/index.php?url=backend', '2023-04-15 13:29:15'),
(118, 0, 1, 'https://localhost/project/index.php?url=dashboard_redweb_loop_class/index_page_function/loop/', '2023-04-15 13:29:27'),
(119, 0, 1, 'https://localhost/project/index.php?url=dashboard_redweb_update_class/index_page_function/update/&post_id=4', '2023-04-15 13:29:32'),
(120, 0, 1, 'https://localhost/project/index.php?url=dashboard_redweb_update_class/post_update_function/update/&post_id=4', '2023-04-15 13:29:39'),
(121, 0, 1, 'https://localhost/project/index.php?url=dashboard_redweb_update_class/index_page_function/update/&post_id=4', '2023-04-15 13:29:40'),
(122, 58, 0, 'https://localhost/project/index.php?url=theme_redweb', '2023-04-15 13:30:02'),
(123, 58, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 13:30:06'),
(124, 58, 0, 'https://localhost/project/', '2023-04-15 17:40:49'),
(125, 59, 0, 'https://localhost/project/', '2023-04-15 17:40:51'),
(126, 59, 0, 'https://localhost/project/index.php?url=theme_example/single_page_function/single/cG9zdF9pZA==/MTM=/&post_id=13', '2023-04-15 17:41:21'),
(127, 59, 0, 'https://localhost/project/index.php?url=theme_rubi', '2023-04-15 17:48:40'),
(128, 59, 0, 'https://localhost/project/index.php?url=theme_redweb', '2023-04-15 17:49:00'),
(129, 59, 0, 'https://localhost/project/index.php?url=theme_redweb_single_class/single_page_function/single/&post_id=4', '2023-04-15 17:49:36');

-- --------------------------------------------------------

--
-- Table structure for table `framework_layerfive_datatable`
--

CREATE TABLE `framework_layerfive_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(255) NOT NULL,
  `layerFour` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `desctiption` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_layerfive_datatable`
--

INSERT INTO `framework_layerfive_datatable` (`id`, `datatable`, `layerFour`, `name`, `icon`, `title`, `desctiption`, `status`) VALUES
(1, 'portfolio_datatable', '1', 'cvxvx', 'extra/resources/uploads/layerFive/img/06533eef268062c.png', 'vxcvxcvxv', 'ffsdfsdfs', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_layerfour_datatable`
--

CREATE TABLE `framework_layerfour_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(255) NOT NULL,
  `layerThree` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `desctiption` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_layerfour_datatable`
--

INSERT INTO `framework_layerfour_datatable` (`id`, `datatable`, `layerThree`, `name`, `icon`, `title`, `desctiption`, `status`) VALUES
(1, 'portfolio_datatable', '1', 'dssfsdffs', 'extra/resources/uploads/layerFour/img/d1fe1ffba906308.png', 'fsdfsdfsdfs', 'fsdfsdfsdfs', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_layerone_datatable`
--

CREATE TABLE `framework_layerone_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `desctiption` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_layerone_datatable`
--

INSERT INTO `framework_layerone_datatable` (`id`, `datatable`, `icon`, `name`, `title`, `desctiption`, `status`) VALUES
(1, 'portfolio_datatable', 'extra/resources/uploads/layerOne/img/9a16e21180eda3f.png', 'layer one', 'sdfsdfsdf', '', 1),
(2, 'portfolio_datatable', 'extra/resources/uploads/layerOne/img/d0c368899fddb32.png', 'kamal', 'sdasdasdasdasdasdads', 'it', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_layerthree_datatable`
--

CREATE TABLE `framework_layerthree_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(255) NOT NULL,
  `layerTwo` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `desctiption` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_layerthree_datatable`
--

INSERT INTO `framework_layerthree_datatable` (`id`, `datatable`, `layerTwo`, `name`, `icon`, `title`, `desctiption`, `status`) VALUES
(1, 'portfolio_datatable', '2', 'three', 'extra/resources/uploads/layerThree/img/ded6261b554fe9d.png', 'sadsd', 'dfgdfgdg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_layertwo_datatable`
--

CREATE TABLE `framework_layertwo_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(255) NOT NULL,
  `layerOne` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `desctiption` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_layertwo_datatable`
--

INSERT INTO `framework_layertwo_datatable` (`id`, `datatable`, `layerOne`, `name`, `icon`, `title`, `desctiption`, `status`) VALUES
(2, 'portfolio_datatable', '2', 'dfdgfdf', 'extra/resources/uploads/layerTwo/img/cda9638869312df.png', 'gdfgdfgd', 'fsdfsdfs', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_level_datatable`
--

CREATE TABLE `framework_level_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(255) NOT NULL,
  `sn` int(11) NOT NULL,
  `level` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_level_datatable`
--

INSERT INTO `framework_level_datatable` (`id`, `datatable`, `sn`, `level`, `created`, `status`) VALUES
(1, 'framework_admin_datatable', 1, 'devloper', '2023-04-09 18:47:35', 1),
(2, 'framework_admin_datatable', 2, 'admin', '2023-04-09 18:48:42', 1),
(3, 'framework_admin_datatable', 3, 'co-admin', '2023-04-09 18:48:42', 1),
(6, 'framework_admin_datatable', 4, 'employ', '2023-04-09 18:51:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_list_datatable`
--

CREATE TABLE `framework_list_datatable` (
  `id` int(11) NOT NULL,
  `sn` int(11) NOT NULL,
  `datatable` varchar(50) NOT NULL,
  `group_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `font_icon` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `framework_menu_datatable`
--

CREATE TABLE `framework_menu_datatable` (
  `id` int(11) NOT NULL,
  `sn` int(11) NOT NULL,
  `datatable` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `links` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `font_icon` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `framework_notification_datatable`
--

CREATE TABLE `framework_notification_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(50) NOT NULL,
  `type` varchar(255) NOT NULL,
  `user` int(11) NOT NULL DEFAULT 0,
  `admin` int(11) NOT NULL DEFAULT 0,
  `subject` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `link` text NOT NULL,
  `icon` text NOT NULL,
  `font_icon` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_notification_datatable`
--

INSERT INTO `framework_notification_datatable` (`id`, `datatable`, `type`, `user`, `admin`, `subject`, `title`, `description`, `link`, `icon`, `font_icon`, `date`, `status`) VALUES
(3, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-02-21 06:26:24', 1),
(4, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- sabbir And id:- 2', '#', 'empty', 'fa-solid fa-user', '2023-02-21 11:51:14', 1),
(5, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Rafikul Ayon And id:- 5', '#', 'empty', 'fa-solid fa-user', '2023-02-21 11:59:08', 1),
(6, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-02-21 12:03:02', 1),
(7, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-02-21 13:43:16', 1),
(8, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-02-21 18:53:43', 1),
(9, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-02-22 03:56:53', 1),
(10, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-02-22 13:34:08', 1),
(11, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-02-24 07:35:49', 1),
(12, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-02-24 07:45:12', 1),
(13, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-02-24 15:32:12', 1),
(14, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-02-24 17:12:59', 1),
(15, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-02-24 17:56:23', 1),
(16, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-02-24 18:00:23', 1),
(17, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-02-25 09:38:25', 1),
(18, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-02-25 12:30:00', 1),
(19, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-02-25 15:12:06', 1),
(20, 'framework_admin_datatable', 'method And praneter', 0, 0, 'title', 'some one enter wrong method And praneter.', 'IP = 37.111.219.153; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-02-25 20:42:45', 1),
(21, 'framework_admin_datatable', 'method And praneter', 0, 0, 'title', 'some one enter wrong method And praneter.', 'IP = 37.111.219.153; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-02-25 20:42:59', 1),
(22, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-02-26 17:14:55', 1),
(23, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-02-26 17:15:32', 1),
(24, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-02-26 17:29:12', 1),
(25, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-02-26 18:48:40', 1),
(26, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-02-27 06:16:06', 1),
(27, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-02-27 07:18:57', 1),
(28, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-02-28 07:53:03', 1),
(29, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-01 14:46:16', 1),
(30, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-02 05:02:21', 1),
(31, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-02 06:07:37', 1),
(32, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-02 08:02:23', 1),
(33, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-02 12:56:16', 1),
(34, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-03 06:57:06', 1),
(35, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-03 07:00:46', 1),
(36, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-03 08:30:52', 1),
(37, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-09 05:46:58', 1),
(38, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-10 06:59:04', 1),
(39, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-12 08:09:09', 1),
(40, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-13 05:44:55', 1),
(41, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-13 05:57:06', 1),
(42, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-14 16:08:25', 1),
(43, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-16 14:12:06', 1),
(44, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-17 05:15:38', 1),
(45, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-17 08:33:35', 1),
(46, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-18 08:58:05', 1),
(47, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = ofline; Country = ofline; City = ofline;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 16:28:26', 1),
(48, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = ofline; Country = ofline; City = ofline;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 16:33:16', 1),
(49, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = ofline; Country = ofline; City = ofline;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 16:33:40', 1),
(50, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = ofline; Country = ofline; City = ofline;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 16:34:32', 1),
(51, 'framework_admin_datatable', 'method And praneter', 0, 0, 'title', 'some one enter wrong method And praneter.', 'IP = ::1; Browser = ofline; Country = ofline; City = ofline;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 16:35:02', 1),
(52, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:05', 1),
(53, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:08', 1),
(54, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:10', 1),
(55, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:12', 1),
(56, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:14', 1),
(57, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:16', 1),
(58, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:17', 1),
(59, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:20', 1),
(60, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:21', 1),
(61, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:23', 1),
(62, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:25', 1),
(63, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:27', 1),
(64, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:29', 1),
(65, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:32', 1),
(66, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:33', 1),
(67, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:35', 1),
(68, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:36', 1),
(69, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:38', 1),
(70, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:40', 1),
(71, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:41', 1),
(72, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:45', 1),
(73, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:47', 1),
(74, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:48', 1),
(75, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:49', 1),
(76, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:50', 1),
(77, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:51', 1),
(78, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:54', 1),
(79, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:55', 1),
(80, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:56', 1),
(81, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:57', 1),
(82, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:02:59', 1),
(83, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:00', 1),
(84, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:01', 1),
(85, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:03', 1),
(86, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:04', 1),
(87, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:06', 1),
(88, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:08', 1),
(89, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:09', 1),
(90, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:11', 1),
(91, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:12', 1),
(92, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:21', 1),
(93, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:22', 1),
(94, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:24', 1),
(95, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:26', 1),
(96, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:27', 1),
(97, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:29', 1),
(98, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:30', 1),
(99, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:31', 1),
(100, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:33', 1),
(101, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:34', 1),
(102, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:36', 1),
(103, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:37', 1),
(104, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:38', 1),
(105, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:40', 1),
(106, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:42', 1),
(107, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:44', 1),
(108, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:45', 1),
(109, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:46', 1),
(110, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:48', 1),
(111, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:03:49', 1),
(112, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:04:24', 1),
(113, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:04:26', 1),
(114, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:04:28', 1),
(115, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:04:30', 1),
(116, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:04:33', 1),
(117, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:04:34', 1),
(118, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:04:35', 1),
(119, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:04:38', 1),
(120, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:04:40', 1),
(121, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:04:42', 1),
(122, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:05:41', 1),
(123, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:09:33', 1),
(124, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:10:15', 1),
(125, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:11:31', 1),
(126, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = new; Country = Bangladesh; City = Dhaka;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-20 17:40:53', 1),
(127, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-21 17:43:16', 1),
(128, 'framework_admin_datatable', 'property', 0, 0, 'title', 'some one enter wrong property.', 'IP = ::1; Browser = ofline; Country = ofline; City = ofline;', '#', 'empty', 'fa-solid fa-circle-exclamation', '2023-03-22 05:23:18', 1),
(129, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-23 13:32:26', 1),
(130, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-25 09:56:10', 1),
(131, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-27 12:07:02', 1),
(132, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-27 12:07:21', 1),
(133, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-27 12:08:09', 1),
(134, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-27 12:12:01', 1),
(135, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-27 12:15:03', 1),
(136, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-27 12:46:30', 1),
(137, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-27 12:54:36', 1),
(138, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-28 15:46:53', 1),
(139, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-29 06:11:22', 1),
(140, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-29 06:51:14', 1),
(141, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-30 08:47:33', 1),
(142, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-30 11:56:29', 1),
(143, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-03-31 03:30:16', 1),
(144, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-04-03 06:37:42', 1),
(145, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-04-03 10:56:51', 1),
(146, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-04-03 17:12:20', 1),
(147, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-04-03 17:39:47', 1),
(148, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-04-04 07:32:46', 1),
(149, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-04-05 05:37:18', 1),
(150, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-04-06 02:57:52', 1),
(151, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-04-06 04:06:37', 1),
(152, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-04-07 04:10:21', 1),
(153, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-04-07 04:52:30', 1),
(154, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-04-07 08:13:52', 1),
(155, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-04-08 04:59:07', 1),
(156, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-04-09 05:56:37', 1),
(157, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-04-09 18:01:34', 1),
(158, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-04-10 13:30:39', 1),
(159, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-04-11 07:27:21', 1),
(160, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-04-11 11:59:59', 1),
(161, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-04-11 12:44:14', 1),
(162, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-04-14 14:40:01', 1),
(163, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-04-14 15:58:56', 1),
(164, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-04-15 05:55:36', 1),
(165, 'framework_admin_datatable', 'admin', 0, 0, 'login', 'sign in', 'name:- Israt Ahamed Sabbir And id:- 1', '#', 'empty', 'fa-solid fa-user', '2023-04-15 13:07:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_order_datatable`
--

CREATE TABLE `framework_order_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `framework_page_datatable`
--

CREATE TABLE `framework_page_datatable` (
  `id` int(11) NOT NULL,
  `admin` int(11) NOT NULL,
  `datatable` varchar(50) NOT NULL,
  `sn` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `icon` varchar(255) NOT NULL,
  `font_icon` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_page_datatable`
--

INSERT INTO `framework_page_datatable` (`id`, `admin`, `datatable`, `sn`, `name`, `title`, `keywords`, `description`, `content`, `icon`, `font_icon`, `status`) VALUES
(1, 1, 'textdvxcv', 32, 'textdfsdfgsdg', 'textsdgsgsdg', 'textgsgsgsgsgs', '&lt;p&gt;gsgsgsdgs&lt;/p&gt;', '&lt;p&gt;sgsdgsgsgs&lt;/p&gt;', 'extra/resources/uploads/page/fc04a993d3215bd.png', 'textfsdfs', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_payment_datatable`
--

CREATE TABLE `framework_payment_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `framework_policestation_datatable`
--

CREATE TABLE `framework_policestation_datatable` (
  `id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `en_name` varchar(255) NOT NULL,
  `bn_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_policestation_datatable`
--

INSERT INTO `framework_policestation_datatable` (`id`, `district_id`, `en_name`, `bn_name`, `status`) VALUES
(2, 42, 'shariatpur sadar', 'শরিয়তপুর সদর', 1),
(3, 42, 'bhedorgonj', 'ভেদরগঞ্জ', 1),
(4, 1, 'Comilla Adarsha Sada', 'আদর্শ সদর', 1),
(5, 1, 'Comilla Sadar Dakshin', 'কুমিল্লা সদর দক্ষিণ', 1),
(6, 1, 'Chauddagram', 'চৌদ্দগ্রাম', 1),
(7, 1, 'Laksam', 'লাকসাম', 1),
(8, 1, 'Barura', 'বরুডা', 1),
(9, 1, 'Nangalkot', 'নাংগলকোট', 1),
(10, 1, 'Manoharganj', 'মনোহরগঞ্জ', 1),
(11, 1, 'Chandina', 'চান্দিনা', 1),
(12, 1, 'Titas', 'তিতাস', 1),
(13, 1, 'Daudkandi', 'দাউদকান্দি', 1),
(14, 1, 'Homna', 'হোমনা', 1),
(15, 1, 'Meghna', 'মেঘনা', 1),
(16, 1, 'Muradnagar', 'মুরাদনগর', 1),
(17, 1, 'Debidwar', 'দেবিদ্বার', 1),
(18, 1, 'Burichang', 'বুডিচং', 1),
(19, 1, 'Brahmanpara', 'ব্রাক্ষণপাড়া', 1),
(20, 1, 'Dakshin bangra', 'দক্ষিণ বাঙ্গরা', 1),
(21, 1, 'lalmai', 'লালমাই', 1),
(22, 42, 'Zanjira', 'জাজিরা', 1),
(23, 42, 'Naria', 'নড়িয়া', 1),
(24, 42, 'Bhedarganj', 'ভেদর‌‌গঞ্জ', 1),
(25, 42, 'Damudya', 'ডামুড্যা', 1),
(26, 42, 'Gosairhat', 'গোসাইরহাট', 1),
(27, 42, 'sokhipur', 'সখিপুর', 1),
(28, 45, 'Katiadi', 'কটিয়াদি', 1),
(29, 45, 'Itna', 'ইটনা', 1),
(30, 45, 'Bhairab', 'ভৈরব', 1),
(31, 45, 'Pakundia', 'পাকুন্দিয়া', 1),
(32, 45, 'Tarail', 'তাড়াইল', 1),
(33, 45, 'Hossainpur', 'হোসেনপুর', 1),
(34, 45, 'Kuliarchar', 'কুলিয়ারচর', 1),
(35, 45, 'Kishoreganj Sadar', 'কিশোরগন্জ সদর', 1),
(36, 45, 'Karimganj', 'করিমগঞ্জ', 1),
(37, 45, 'Bajitpur', 'বাজিদপুর', 1),
(38, 1, 'Name', 'নাম', 1),
(39, 45, 'Austagram', 'অষ্টগ্রাম', 1),
(40, 45, 'Nikli', 'মিটামইন', 1),
(41, 45, 'Mithamain', 'মিটামইন', 1),
(42, 41, 'joydebpur', 'জয়দেবপুর', 1),
(43, 41, 'tangi', 'টংগী', 1),
(44, 41, 'Kapasia', 'কাপাসিয়া', 1),
(45, 41, 'Kaliakair', 'কালিয়াকৈর', 1),
(46, 41, 'Sreepur', 'শ্রীপুর', 1),
(47, 41, 'Kaliganj', 'কালীগঞ্জ', 1),
(48, 62, 'Tara Khanda', 'তারাকান্দা', 1),
(49, 62, 'Muktagachha', 'মুক্তাগাছা', 1),
(50, 62, 'Trishal', 'ত্রিশাল', 1),
(51, 62, 'Fulbaria', 'ফুলবাড়ীয়া', 1),
(52, 62, 'Bhaluka', 'ভালুকা', 1),
(53, 62, 'Mymensingh sadar', 'ময়মনসিংহ সদর', 1),
(54, 62, 'Phulpur', 'ফুলপুর', 1),
(55, 62, 'Dhobaura', 'ধোবাউড়া', 1),
(56, 62, 'Haluaghat', 'হালুয়াঘাট', 1),
(57, 62, 'Nandail', 'নান্দাইল', 1),
(58, 62, 'Gauripur', 'গৌরীপুর', 1),
(59, 62, 'Gaffargaon', 'গফরগাঁও', 1),
(60, 62, 'Ishwarganj', 'ঈশ্বরগঞ্জ', 1),
(61, 46, 'Manikgonj Sadar', 'মানিকগঞ্জ সদর', 1),
(62, 46, 'Daulatpur', 'দৈালতপুর', 1),
(63, 46, 'Saturia', 'সাটুরিয়া', 1),
(64, 46, 'Shivalaya', 'সিবালয়', 1),
(65, 46, 'Ghior', 'ঘিওর', 1),
(66, 46, 'Singair', 'সিঙ্গাইর', 1),
(67, 46, 'Harirampur', 'হরিরামপুর', 1),
(68, 44, 'Tangail Sadar', 'টাঙ্গাইল সদর', 1),
(69, 44, 'Kalihati', 'কালিহাতি', 1),
(70, 44, 'Ghatail', 'ঘাটাইল', 1),
(71, 44, 'Basail', 'বাসাইল', 1),
(72, 44, 'Sakhipur', 'সখিপুর', 1),
(73, 44, 'Madhupur', 'মধুপুর', 1),
(74, 44, 'Delduar', 'দেলদুয়ার', 1),
(75, 44, 'Nagarpur', 'নাগরপুর', 1),
(76, 44, 'Mirzapur', 'মির্জাপুর', 1),
(77, 44, 'Bhuapur', 'ভুয়াপুর', 1),
(78, 44, 'Gopalpur', 'গোপালপুর', 1),
(79, 44, 'Dhanbari', 'ধনবাড়ি', 1),
(80, 64, 'Atpara', 'আটপাড়া', 1),
(81, 64, 'Kendua', 'কেন্দুয়া', 1),
(82, 64, 'Kalmakanda', 'কলমাকান্দা', 1),
(83, 64, 'Durgapur', 'দুর্গাপুর', 1),
(84, 64, 'Khaliajuri', 'খালিয়াজুড়ি', 1),
(85, 64, 'Netrokona Sadar', 'নেত্রকোণা সদর', 1),
(86, 64, 'Barhatta', 'বারহাট্টা', 1),
(87, 64, 'Purbadhala', 'পূর্বধলা', 1),
(88, 64, 'Madan', 'মদন', 1),
(89, 64, 'Mohanganj', 'মোহনগঞ্জ', 1),
(90, 61, 'Jhenaigati', 'ঝিনাইগাতী', 1),
(91, 61, 'Nakla', 'নকলা', 1),
(92, 61, 'Sherpur Sadar', 'শেরপুর সদর', 1),
(93, 61, 'Sreebardi', 'শ্রীবরদী', 1),
(94, 61, 'Nalitabari', 'নালিতাবাড়ী', 1),
(95, 63, 'Islampur', 'ইসলামপুর', 1),
(96, 63, 'Jamalpur Sadar', 'জামালপুর সদর', 1),
(97, 63, 'Dewanganj', 'দেওয়ানগঞ্জ', 1),
(98, 63, 'Baksiganj', 'বকশীগঞ্জ', 1),
(99, 63, 'Madarganj', 'মাদারগঞ্জ', 1),
(100, 63, 'Sarishabari', 'সরিষাবাড়ি', 1),
(101, 63, 'Melandaha', 'মেলান্দাহ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_post_datatable`
--

CREATE TABLE `framework_post_datatable` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `keywords` text NOT NULL,
  `desctiption` text NOT NULL,
  `thumbnail` text NOT NULL,
  `file` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `framework_pricing_datatable`
--

CREATE TABLE `framework_pricing_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(50) NOT NULL,
  `title` text NOT NULL,
  `level` int(11) DEFAULT 1,
  `price` int(11) NOT NULL,
  `delevery` int(11) NOT NULL,
  `features` text NOT NULL,
  `source` varchar(11) NOT NULL,
  `service` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `framework_project_datatable`
--

CREATE TABLE `framework_project_datatable` (
  `id` int(11) NOT NULL,
  `sn` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `desctiption` text NOT NULL,
  `link` text NOT NULL,
  `image` text NOT NULL,
  `note` text NOT NULL,
  `font_icon` varchar(255) NOT NULL,
  `button` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_project_datatable`
--

INSERT INTO `framework_project_datatable` (`id`, `sn`, `name`, `title`, `desctiption`, `link`, `image`, `note`, `font_icon`, `button`, `date`, `status`) VALUES
(1, 1, 'Devblog', 'Exam Site', '', 'index.php?url=theme_devblog/index_page_function/index/&amp;theme_name=devblog&amp;post_datatable=question_datatable', 'extra/resources/uploads/project/35bc20fb49d6e47.jpg', 'notegghgfh', 'fa-solid fa-satellite-dish', 'btn-info', '2022-09-14 15:26:41', 1),
(2, 2, 'Portfolio', 'Portfolio', '', 'index.php?url=theme_portfolio/index_page_function/index/&amp;theme_name=portfolio&amp;post_datatable=portfolio_datatable', 'extra/resources/uploads/project/fc3583e6ddb875c.jpeg', 'Portfolio', 'fa-solid fa-user', 'btn-info', '2022-09-14 15:48:34', 1),
(3, 3, 'Blog', 'blog', '', 'index.php?url=frontend/index_page_function/index/&amp;theme_name=blog&amp;post_datatable=blog_datatable', 'extra/resources/uploads/banner-1.jpg, extra/resources/uploads/banner-1.jpg', 'note', 'fa-brands fa-blogger', 'btn-info', '2022-09-14 15:56:01', 1),
(4, 1, 'Eshopper', 'shop', '', 'index.php?url=frontend/index_page_function/index/&amp;theme_name=eshopper&amp;post_datatable=product_datatable', 'extra/resources/uploads/banner-1.jpg', 'note', 'fa-brands fa-shopify', 'btn-info', '2022-09-14 15:58:44', 1),
(5, 1, 'School', 'school', '', 'index.php?url=theme_school/index_page_function/index/&amp;theme_name=school&amp;post_datatable=school_datatable', 'extra/resources/uploads/banner-1.jpg', 'note', 'fa-solid fa-building-columns', 'btn-info', '2022-09-14 16:12:56', 1),
(6, 1, 'Registration', 'Registration', '', 'index.php?url=theme_registration/index_page_function/index/&amp;theme_name=registration&amp;post_datatable=framework_access_datatable', 'extra/resources/uploads/banner-1.jpg', 'note', 'fa-solid fa-table-list', 'btn-info', '2022-09-14 16:20:29', 1),
(7, 4, '5454r', 'gdfgdfgdfgd', 'gdf', 'fgdfgfdgdfgdf', 'extra/resources/uploads/project/file/271022dow6b3cdf084b.png, extra/resources/uploads/project/file/271022Untf46ac12bca.jpg', 'noteertytryrt', 'yrtyrtyrtyr', 'btn-info', '2022-10-27 01:25:12', 1),
(8, 453, '545345', '3453453', '4534534', '5345345345', 'extra/resources/uploads/project/file/271022log1cf68e8c5c.png, extra/resources/uploads/project/file/271022aut1693d881f8.jpg', 'noterterter', 'terterte', 'btn-dark', '2022-10-27 01:43:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_reach_datatable`
--

CREATE TABLE `framework_reach_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(50) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_reach_datatable`
--

INSERT INTO `framework_reach_datatable` (`id`, `datatable`, `post_id`, `user_id`, `status`) VALUES
(6, 'redweb_datatable', 9, 1, 1),
(7, 'redweb_datatable', 10, 1, 1),
(10, 'example_datatable', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_reply_datatable`
--

CREATE TABLE `framework_reply_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(50) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `reply` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_reply_datatable`
--

INSERT INTO `framework_reply_datatable` (`id`, `datatable`, `post_id`, `user_id`, `comment_id`, `reply`, `date`, `status`) VALUES
(9, 'example_datatable', 1, 1, 34, 'saASas', '2023-03-18 17:48:33', 1),
(10, 'example_datatable', 1, 1, 34, 'czxczxczxcz', '2023-03-18 18:43:47', 1),
(11, 'example_datatable', 1, 1, 35, 'fsfsdfsdf', '2023-03-18 19:59:16', 1),
(12, 'example_datatable', 1, 1, 35, 'fsfsdfsdf', '2023-03-18 20:22:42', 1),
(13, 'example_datatable', 1, 1, 33, 'xczxcz', '2023-03-18 20:34:27', 1),
(14, 'example_datatable', 1, 1, 37, 'zxzxZxZx', '2023-03-18 21:00:52', 1),
(15, 'example_datatable', 1, 1, 37, 'cxzczxc', '2023-03-18 21:01:41', 1),
(16, 'example_datatable', 1, 1, 37, 'ssxczxcz', '2023-03-18 21:01:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_services_datatable`
--

CREATE TABLE `framework_services_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `font_icon` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `framework_status_datatable`
--

CREATE TABLE `framework_status_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(255) NOT NULL,
  `sn` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `framework_subdistrict_datatable`
--

CREATE TABLE `framework_subdistrict_datatable` (
  `id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `en_name` varchar(255) NOT NULL,
  `bn_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_subdistrict_datatable`
--

INSERT INTO `framework_subdistrict_datatable` (`id`, `district_id`, `en_name`, `bn_name`, `status`) VALUES
(1, 35, 'Barguna sodhor', 'বরগুনা সদর', 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_subscribe_datatable`
--

CREATE TABLE `framework_subscribe_datatable` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_subscribe_datatable`
--

INSERT INTO `framework_subscribe_datatable` (`id`, `email`, `status`, `date`) VALUES
(11, 'isratahamedsabbir@gmail.com', 1, '2023-02-25 20:56:21');

-- --------------------------------------------------------

--
-- Table structure for table `framework_theme_datatable`
--

CREATE TABLE `framework_theme_datatable` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `framework_type_datatable`
--

CREATE TABLE `framework_type_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(255) NOT NULL,
  `sn` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `framework_user_datatable`
--

CREATE TABLE `framework_user_datatable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `keywords` mediumtext NOT NULL,
  `email` text NOT NULL,
  `mobile` int(11) NOT NULL,
  `password` text NOT NULL,
  `photo` mediumtext NOT NULL,
  `ip` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `browser` mediumtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `address` mediumtext NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `code` varchar(255) NOT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `roll` int(11) NOT NULL,
  `survey` mediumtext NOT NULL,
  `token` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `block` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_user_datatable`
--

INSERT INTO `framework_user_datatable` (`id`, `name`, `unique_id`, `description`, `keywords`, `email`, `mobile`, `password`, `photo`, `ip`, `country`, `browser`, `city`, `zip_code`, `address`, `question`, `answer`, `code`, `level`, `roll`, `survey`, `token`, `status`, `block`, `date`) VALUES
(1, 'israt ahamed sabbir', 'user_3342342', '', '', 'isratahamedsabbir@gmail.com', 1775567493, 'b8c8dab33dfbae8d4d784b10ca5bb275', 'extra/resources/uploads/user/img/e17a6ab51aeef42.png', '', '', '', '', 0, '', '', '', '635636363653', 1, 0, 'teen, threesome, indian', '', 1, 0, '2022-07-21 09:59:16'),
(4, 'tonima', 'user_34234234', 'empty', 'empty', 'tonima@gmail.com', 1712742881, 'e19d5cd5af0378da05f63f891c7467af', 'empty', '198.91.81.11', 'United States', 'Mozilla/5.0 (Linux; Android 11; 21121119SG) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', 'Chicago', 8700, 'Empty', 'Which is your favorite movie?', 'Pk', 'c245aa8cfd781e28c78400b9764e5535', 1, 0, 'new', '', 1, 0, '2022-07-30 15:08:43'),
(5, 'Mahir', 'user_334234234', 'empty', 'empty', 'mahiralbasheradib@gmail.com', 1872029484, 'e2fc714c4727ee9395f324cd2e7f331f', 'empty', '198.91.81.11', 'United States', 'Mozilla/5.0 (Linux; Android 11; 21121119SG) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', 'Chicago', 8700, 'Empty', 'Which is your favorite movie?', 'avengers', '26b60e8683b8e6cba6a06cf77dccab76', 3, 0, 'anal', '', 1, 0, '2022-08-01 09:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `framework_visitor_datatable`
--

CREATE TABLE `framework_visitor_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(50) NOT NULL,
  `env_user` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `chat` int(11) NOT NULL DEFAULT 0,
  `block` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_visitor_datatable`
--

INSERT INTO `framework_visitor_datatable` (`id`, `datatable`, `env_user`, `ip`, `session`, `browser`, `country`, `city`, `date`, `chat`, `block`, `status`) VALUES
(1, 'example_datatable', 'visitor', '::1', '5faucclh0qul791e8q6i5ve1vd', 'new', 'Bangladesh', 'Dhaka', '2023-03-18 21:16:06', 0, 0, 1),
(2, 'example_datatable', 'ofline', '::1', 'o6fc2fo4cuihnpmqq7jii3pkb1', 'ofline', 'ofline', 'ofline', '2023-03-20 15:15:09', 0, 0, 1),
(3, 'example_datatable', 'visitor', '::1', 'b8oqprjl311b05ja400fnsne7p', 'new', 'Bangladesh', 'Dhaka', '2023-03-20 18:10:30', 0, 0, 1),
(4, 'example_datatable', 'ofline', '::1', 'tqmu8jp6ho6ug6rhvuvgvlag80', 'ofline', 'ofline', 'ofline', '2023-03-21 14:11:00', 0, 0, 1),
(5, 'example_datatable', 'ofline', '::1', 's4t5kklftu8t8ru7olb3v27s7c', 'ofline', 'ofline', 'ofline', '2023-03-21 17:43:35', 0, 0, 1),
(6, 'example_datatable', 'ofline', '::1', '2eaufg8hqqbgm24itljdtvo9hq', 'ofline', 'ofline', 'ofline', '2023-03-22 05:13:46', 0, 0, 1),
(7, 'example_datatable', 'visitor', '::1', 'sctjpq9ha6d1bkn8n4oh90fk1b', 'new', 'Bangladesh', 'Rajshahi', '2023-03-23 13:28:14', 0, 0, 1),
(8, 'example_datatable', 'ofline', '::1', 'ahda0uomeg7006n6vc9o631d7i', 'ofline', 'ofline', 'ofline', '2023-03-24 08:47:47', 0, 0, 1),
(9, 'example_datatable', 'visitor', '::1', 'o9348jr98qc4oitrc1fqc155ed', 'new', 'Bangladesh', 'Dhaka', '2023-03-24 21:02:50', 0, 0, 1),
(10, 'example_datatable', 'visitor', '::1', 'q2hk9dmgv1td95ktqdfugv95hv', 'new', 'Bangladesh', 'Dhaka', '2023-03-24 21:02:50', 0, 0, 1),
(11, 'example_datatable', 'visitor', '::1', 'p7g6vcjg0srb2t7a55ocq67p2v', 'new', 'Bangladesh', 'Dhaka', '2023-03-24 21:03:06', 0, 0, 1),
(12, 'example_datatable', 'ofline', '::1', 'fstc9eorse2j8nv769086hkcpl', 'ofline', 'ofline', 'ofline', '2023-03-25 08:53:17', 0, 0, 1),
(13, 'example_datatable', 'visitor', '::1', 'p3370q5lekhi379pru1t3mc5f1', 'new', 'Bangladesh', 'Dhaka', '2023-03-26 08:50:07', 0, 0, 1),
(14, 'example_datatable', 'ofline', '::1', '32iv1eevuqfividrujoflj90p5', 'ofline', 'ofline', 'ofline', '2023-03-26 18:17:02', 0, 0, 1),
(15, 'example_datatable', 'visitor', '::1', '3m4l6bbon80ggj3vd6v74m16b5', 'new', 'Bangladesh', 'Rajshahi', '2023-03-26 18:48:48', 0, 0, 1),
(16, 'example_datatable', 'visitor', '::1', '0me8cfa7sq2ed76q0t6a90ppbl', 'new', 'Bangladesh', 'Dhaka', '2023-03-27 10:55:45', 0, 0, 1),
(17, 'example_datatable', 'ofline', '::1', '66i0hv9ir4ojagdqp7oif530eq', 'ofline', 'ofline', 'ofline', '2023-03-27 12:14:32', 0, 0, 1),
(18, 'example_datatable', 'visitor', '::1', '92fi0fd439g61oiv39cvabmeg1', 'new', 'Bangladesh', 'Dhaka', '2023-03-27 12:46:02', 0, 0, 1),
(19, 'example_datatable', 'visitor', '::1', '4qkd2s02u01jb82sllhddu4g4r', 'new', 'Bangladesh', 'Dhaka', '2023-03-27 12:54:16', 0, 0, 1),
(20, 'example_datatable', 'ofline', '::1', 'pfhsi206713skti85s3opam0ol', 'ofline', 'ofline', 'ofline', '2023-03-28 06:44:52', 0, 0, 1),
(21, 'example_datatable', 'visitor', '::1', 'l16pi8mh8t7gmadqdt8didbima', 'new', 'Bangladesh', 'Dhaka', '2023-03-28 10:35:53', 0, 0, 1),
(22, 'example_datatable', 'visitor', '::1', 'h7gvq2dt4fg8lqq3jlr2l9dk5p', 'new', 'Bangladesh', 'Dhaka', '2023-03-28 12:44:12', 0, 0, 1),
(23, 'example_datatable', 'ofline', '::1', '84jd82bhbu2e83b36gbqj4c2im', 'ofline', 'ofline', 'ofline', '2023-03-28 15:35:35', 0, 0, 1),
(24, 'example_datatable', 'ofline', '::1', 'oms2otr4mt205j9cls1bsfct3b', 'ofline', 'ofline', 'ofline', '2023-03-28 15:41:17', 0, 0, 1),
(25, 'example_datatable', 'ofline', '::1', 'o23cthv4sv2o8ludodof3qm3bk', 'ofline', 'ofline', 'ofline', '2023-03-28 15:58:54', 0, 0, 1),
(26, 'example_datatable', 'ofline', '::1', 'r8bsrs866qmodj8nlhjg8ibgmc', 'ofline', 'ofline', 'ofline', '2023-03-28 15:59:48', 0, 0, 1),
(27, 'example_datatable', 'ofline', '::1', 'm75i83nbe1mvj0aqj4te9pf2a4', 'ofline', 'ofline', 'ofline', '2023-03-28 16:00:14', 0, 0, 1),
(28, 'example_datatable', 'ofline', '::1', '1dsl5l9fhgehnag109t4tjcbrj', 'ofline', 'ofline', 'ofline', '2023-03-28 16:04:32', 0, 0, 1),
(29, 'example_datatable', 'ofline', '::1', 'mkgincp9n1np7b4lm69su0ei0t', 'ofline', 'ofline', 'ofline', '2023-03-28 16:04:50', 0, 0, 1),
(30, 'example_datatable', 'ofline', '::1', 'sctnmkisrljhuh5pteb1pmqgsl', 'ofline', 'ofline', 'ofline', '2023-03-28 16:05:02', 0, 0, 1),
(31, 'example_datatable', 'ofline', '::1', '11me4ree80fop8hhptpotkm9kt', 'ofline', 'ofline', 'ofline', '2023-03-28 16:06:18', 0, 0, 1),
(32, 'example_datatable', 'ofline', '::1', 'dv9s925a1li72f8n1vjjfi81mi', 'ofline', 'ofline', 'ofline', '2023-03-28 16:09:19', 0, 0, 1),
(33, 'example_datatable', 'ofline', '::1', 'pm6td9ntpr168j8vdusgjh146q', 'ofline', 'ofline', 'ofline', '2023-03-29 06:07:47', 0, 0, 1),
(34, 'example_datatable', 'visitor', '::1', 'ns43elcftq2gc6fb4ktfp4dku6', 'new', 'Bangladesh', 'Dhaka', '2023-03-29 06:50:51', 0, 0, 1),
(35, 'example_datatable', 'ofline', '::1', 'r8jtp4cgjfpkjrg2540t5c16dg', 'ofline', 'ofline', 'ofline', '2023-03-30 08:41:15', 0, 0, 1),
(36, 'example_datatable', 'ofline', '::1', '4ppa16h0gahli2v44pl1ejvjrt', 'ofline', 'ofline', 'ofline', '2023-03-30 11:55:48', 0, 0, 1),
(37, 'example_datatable', 'visitor', '::1', 'lcmtfo6c8g61ebo4jbq7ehu22f', 'new', 'Bangladesh', 'Dhaka', '2023-03-31 04:28:13', 0, 0, 1),
(38, 'example_datatable', 'visitor', '::1', 'h1c9208kgmujqddt2je2mb5k0q', 'new', 'Bangladesh', 'Kalia', '2023-04-03 06:19:21', 0, 0, 1),
(39, 'rubi_datatable', 'visitor', '::1', '43tggocnk6tkk8p6mp9fegprdp', 'new', 'Bangladesh', 'Dhaka', '2023-04-03 10:40:29', 0, 0, 1),
(40, 'example_datatable', 'ofline', '::1', '6u1gp50nd1p0tngrti2sqraf55', 'ofline', 'ofline', 'ofline', '2023-04-03 17:39:22', 0, 0, 1),
(41, 'rubi_datatable', 'visitor', '::1', 'rn5eelq6nq4ke95mcee8sf9t2p', 'new', 'Bangladesh', 'Dhaka', '2023-04-03 19:31:10', 0, 0, 1),
(42, 'example_datatable', 'visitor', '::1', '9b1uq6df7ceb1gu89m7vnn15uk', 'new', 'Bangladesh', 'Dhaka', '2023-04-04 07:40:33', 0, 0, 1),
(43, 'example_datatable', 'ofline', '::1', 'ok78nairi1uo953vrip4asoqpi', 'ofline', 'ofline', 'ofline', '2023-04-05 05:36:48', 0, 0, 1),
(44, 'example_datatable', 'visitor', '::1', '2i2nsm0rsetduh5s4re73bhfnl', 'new', 'Bangladesh', 'Dhaka', '2023-04-06 02:58:35', 0, 0, 1),
(45, 'example_datatable', 'visitor', '::1', 'ctf7sr2n43ir0slagb310k7iv6', 'new', 'Bangladesh', 'Dhaka', '2023-04-06 04:07:01', 0, 0, 1),
(46, 'example_datatable', 'visitor', '::1', 'asblbtaon83ptmgcn14pgoj4n8', 'new', 'Bangladesh', 'Rajshahi', '2023-04-07 04:11:07', 0, 0, 1),
(47, 'example_datatable', 'visitor', '::1', 'r2vnb4hv250phlblpcg38p790c', 'new', 'Bangladesh', 'Rajshahi', '2023-04-07 04:52:10', 0, 0, 1),
(48, 'example_datatable', 'visitor', '::1', 'vjsk4tkqbl964kcijj2l3eeedc', 'new', 'Bangladesh', 'Rajshahi', '2023-04-07 08:14:20', 0, 0, 1),
(49, 'example_datatable', 'visitor', '::1', 'm9joql87151m1vm2a7ogku20ht', 'new', 'Bangladesh', 'Dhaka', '2023-04-08 07:47:48', 0, 0, 1),
(50, 'redweb_datatable', 'visitor', '::1', 'dinsuvnn40r6g2ja62jl043qsd', 'new', 'Bangladesh', 'Dhaka', '2023-04-09 05:54:01', 0, 0, 1),
(51, 'rubi_datatable', 'visitor', '::1', 'u7cv4vpcbr2h5ecdo27eiokfjs', 'new', 'Bangladesh', 'Dhaka', '2023-04-09 05:54:01', 0, 0, 1),
(52, 'example_datatable', 'visitor', '::1', 'k40sl5500dmbp4629ank5qcthc', 'new', 'Bangladesh', 'Rajshahi', '2023-04-09 14:48:31', 0, 0, 1),
(53, 'example_datatable', 'ofline', '::1', 'j9nq1hr17h5apeuv6dd4sh4gun', 'ofline', 'ofline', 'ofline', '2023-04-10 14:15:52', 0, 0, 1),
(54, 'example_datatable', 'ofline', '::1', 'jdbbbj9p7a5h8i0uspi7f2u1hi', 'ofline', 'ofline', 'ofline', '2023-04-14 14:36:19', 0, 0, 1),
(55, 'example_datatable', 'ofline', '::1', 'aaf3l077a0fk15gu0cqcs7ahs1', 'ofline', 'ofline', 'ofline', '2023-04-15 05:54:33', 0, 0, 1),
(56, 'redweb_datatable', 'visitor', '::1', '0bncq8m6drege7jplfj6elju5c', 'new', 'Bangladesh', 'Dhaka', '2023-04-15 06:33:48', 0, 0, 1),
(57, 'redweb_datatable', 'visitor', '::1', 'p3bhrgekotq56g4uj1qmkbg60f', 'new', 'Bangladesh', 'Dhaka', '2023-04-15 07:29:15', 0, 0, 1),
(58, 'example_datatable', 'visitor', '::1', 'dk4bfjddogfkf51en3vericgu8', 'new', 'Bangladesh', 'Dhaka', '2023-04-15 13:06:31', 0, 0, 1),
(59, 'example_datatable', 'ofline', '::1', 'h5rs76frm3jr0r7u8l9r11pr4s', 'ofline', 'ofline', 'ofline', '2023-04-15 17:40:49', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `framework_watch_datatable`
--

CREATE TABLE `framework_watch_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(50) NOT NULL,
  `post_id` int(11) NOT NULL,
  `visitor_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `framework_watch_datatable`
--

INSERT INTO `framework_watch_datatable` (`id`, `datatable`, `post_id`, `visitor_id`, `status`, `date`) VALUES
(1, 'example_datatable', 1, 21, 1, '2023-03-28 11:37:47'),
(2, 'example_datatable', 1, 21, 1, '2023-03-28 11:37:55'),
(3, 'example_datatable', 1, 21, 1, '2023-03-28 11:38:00'),
(4, 'example_datatable', 1, 21, 1, '2023-03-28 11:51:25'),
(5, 'example_datatable', 1, 21, 1, '2023-03-28 11:57:54'),
(6, 'example_datatable', 1, 21, 1, '2023-03-28 11:58:00'),
(7, 'example_datatable', 1, 21, 1, '2023-03-28 12:08:27'),
(8, 'example_datatable', 1, 21, 1, '2023-03-28 12:08:40'),
(9, 'example_datatable', 1, 21, 1, '2023-03-28 12:09:56'),
(10, 'example_datatable', 1, 21, 1, '2023-03-28 12:10:03'),
(11, 'example_datatable', 1, 21, 1, '2023-03-28 12:10:47'),
(12, 'example_datatable', 19, 22, 1, '2023-03-28 12:44:42'),
(13, 'example_datatable', 1, 22, 1, '2023-03-28 12:45:02'),
(14, 'example_datatable', 1, 22, 1, '2023-03-28 12:47:11'),
(15, 'example_datatable', 1, 22, 1, '2023-03-28 12:47:29'),
(16, 'example_datatable', 9, 24, 1, '2023-03-28 15:42:47'),
(17, 'example_datatable', 1, 24, 1, '2023-03-28 15:46:21'),
(18, 'example_datatable', 1, 24, 1, '2023-03-28 15:56:45'),
(19, 'example_datatable', 1, 24, 1, '2023-03-28 15:58:38'),
(20, 'example_datatable', 1, 0, 1, '2023-03-28 15:58:54'),
(21, 'example_datatable', 1, 25, 1, '2023-03-28 15:58:54'),
(22, 'example_datatable', 1, 0, 1, '2023-03-28 15:59:50'),
(23, 'example_datatable', 1, 0, 1, '2023-03-28 16:04:51'),
(24, 'example_datatable', 1, 29, 1, '2023-03-28 16:04:51'),
(25, 'example_datatable', 1, 30, 1, '2023-03-28 16:05:08'),
(26, 'example_datatable', 1, 32, 1, '2023-03-28 16:09:31'),
(27, 'example_datatable', 1, 32, 1, '2023-03-28 16:09:39'),
(28, 'example_datatable', 1, 31, 1, '2023-03-28 16:13:28'),
(29, 'example_datatable', 1, 31, 1, '2023-03-28 16:13:37'),
(30, 'example_datatable', 1, 31, 1, '2023-03-28 16:13:44'),
(31, 'example_datatable', 9, 31, 1, '2023-03-28 16:13:51'),
(32, 'example_datatable', 1, 32, 1, '2023-03-28 16:15:16'),
(33, 'example_datatable', 1, 32, 1, '2023-03-28 16:15:26'),
(34, 'example_datatable', 9, 32, 1, '2023-03-28 16:15:33'),
(35, 'example_datatable', 14, 44, 1, '2023-04-06 02:59:33'),
(36, 'example_datatable', 14, 44, 1, '2023-04-06 02:59:46'),
(37, 'example_datatable', 14, 44, 1, '2023-04-06 03:18:10'),
(39, 'redweb_datatable', 4, 55, 1, '2023-04-15 06:28:23'),
(40, 'redweb_datatable', 4, 55, 1, '2023-04-15 06:28:56'),
(42, 'redweb_datatable', 4, 55, 1, '2023-04-15 06:30:30'),
(43, 'redweb_datatable', 4, 55, 1, '2023-04-15 06:32:12'),
(44, 'redweb_datatable', 4, 55, 1, '2023-04-15 06:32:18'),
(45, 'redweb_datatable', 4, 55, 1, '2023-04-15 06:32:38'),
(46, 'redweb_datatable', 4, 54, 1, '2023-04-15 06:33:48'),
(47, 'redweb_datatable', 4, 56, 1, '2023-04-15 06:33:50'),
(48, 'redweb_datatable', 4, 55, 1, '2023-04-15 06:34:21'),
(49, 'redweb_datatable', 4, 55, 1, '2023-04-15 06:34:33'),
(50, 'redweb_datatable', 4, 55, 1, '2023-04-15 06:34:46'),
(51, 'redweb_datatable', 4, 55, 1, '2023-04-15 06:36:35'),
(52, 'redweb_datatable', 4, 55, 1, '2023-04-15 06:37:17'),
(53, 'redweb_datatable', 4, 55, 1, '2023-04-15 06:37:59'),
(54, 'redweb_datatable', 4, 55, 1, '2023-04-15 07:29:45'),
(55, 'redweb_datatable', 4, 55, 1, '2023-04-15 07:29:57'),
(56, 'redweb_datatable', 4, 55, 1, '2023-04-15 07:31:39'),
(57, 'redweb_datatable', 4, 55, 1, '2023-04-15 07:31:54'),
(58, 'redweb_datatable', 4, 55, 1, '2023-04-15 07:32:00'),
(59, 'redweb_datatable', 4, 55, 1, '2023-04-15 07:32:28'),
(60, 'redweb_datatable', 4, 55, 1, '2023-04-15 07:33:14'),
(61, 'redweb_datatable', 4, 55, 1, '2023-04-15 07:33:38'),
(62, 'redweb_datatable', 4, 55, 1, '2023-04-15 07:33:45'),
(63, 'redweb_datatable', 4, 55, 1, '2023-04-15 07:36:27'),
(64, 'redweb_datatable', 4, 55, 1, '2023-04-15 07:36:59'),
(65, 'redweb_datatable', 4, 55, 1, '2023-04-15 07:37:36'),
(66, 'redweb_datatable', 4, 58, 1, '2023-04-15 13:14:53'),
(67, 'redweb_datatable', 4, 58, 1, '2023-04-15 13:30:06'),
(68, 'example_datatable', 13, 59, 1, '2023-04-15 17:41:22'),
(69, 'redweb_datatable', 4, 59, 1, '2023-04-15 17:49:36');

-- --------------------------------------------------------

--
-- Table structure for table `framework_website_datatable`
--

CREATE TABLE `framework_website_datatable` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `title` text NOT NULL,
  `note` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `framework_wishlist_datatable`
--

CREATE TABLE `framework_wishlist_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gamblerchat_datatable`
--

CREATE TABLE `gamblerchat_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(50) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `user_id` text NOT NULL,
  `chat` mediumtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gambler_datatable`
--

CREATE TABLE `gambler_datatable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` text NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `birth_date` text NOT NULL,
  `email` text NOT NULL,
  `mobile` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `bet` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `password` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gambler_datatable`
--

INSERT INTO `gambler_datatable` (`id`, `name`, `user_id`, `date`, `birth_date`, `email`, `mobile`, `total`, `bet`, `status`, `password`) VALUES
(1, 'Rana', 'rana_098579', '2022-08-17', '2022-02-07', 'isratahamedsabbir@gmail.com', 1775567493, 7100, 0, 1, 'e19d5cd5af0378da05f63f891c7467af'),
(2, 'Onik', 'Oni_91780', '2022-08-19', '2022-08-19', 'Resa@gmail.com', 1775567496, 6800, 0, 1, '30f64f3171b1fa24a1698bdf0b435b19'),
(3, 'Sodura', 'Sod_93294', '2022-08-11', '2022-08-17', 'isratahamedsabbirf@gmail.com', 1775546349, 0, 0, 1, '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'Sodura', 'Sod_52629', '2022-08-11', '2022-08-17', 'isratahamedsabbirf@gmail.com', 1775546349, 0, 0, 1, '827ccb0eea8a706c4c34a16891f84e7b'),
(5, 'Sodura', 'Sod_40569', '2022-08-11', '2022-08-17', 'isratahamedsabbirf@gmail.com', 1775546349, 0, 0, 1, '827ccb0eea8a706c4c34a16891f84e7b'),
(6, 'Sodura', 'sod_95828', '2022-08-11', '2022-08-08', 'isratahamedsabbirf@gmail.com', 177564932, 0, 0, 1, '827ccb0eea8a706c4c34a16891f84e7b'),
(7, 'Sodura', 'sod_95698', '2022-08-11', '2022-08-11', 'oni@gmail.com', 1712742881, 0, 0, 1, '827ccb0eea8a706c4c34a16891f84e7b'),
(8, 'Silpi ahamed', 'sil_54694', '2022-08-12', '2022-08-12', 'silpi@gmail.com', 1553322695, 0, 0, 1, '827ccb0eea8a706c4c34a16891f84e7b'),
(9, 'rana ahamed', 'ran_34199', '2022-08-12', '2022-08-12', 'ayrarafiyath@gmail.com', 1705505259, 0, 0, 1, '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `hacking_datatable`
--

CREATE TABLE `hacking_datatable` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `password` text NOT NULL,
  `visitor_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `pin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hacking_datatable`
--

INSERT INTO `hacking_datatable` (`id`, `username`, `email`, `phone`, `password`, `visitor_id`, `date`, `pin`) VALUES
(1, '', 'isratahamedsabbir@gmail.com', '', 'asdasda', 0, '2022-07-21 18:07:06', 0),
(2, '', 'user@gmail.com', '', '1928374655', 0, '2022-07-22 03:40:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `interior_datatable`
--

CREATE TABLE `interior_datatable` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `category` int(11) NOT NULL,
  `image` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `interior_datatable`
--

INSERT INTO `interior_datatable` (`id`, `title`, `category`, `image`, `status`) VALUES
(6, 'intorior titledfghdgdf', 25, 'extra/storage/interior/c6a7d13899cc0b9.png', 1),
(5, 'intorior titlexvxcv', 24, 'extra/storage/interior/71bd51009196140.png', 1),
(4, 'intorior title', 28, 'extra/storage/interior/df298b0dd367acf.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `marketreg_datatable`
--

CREATE TABLE `marketreg_datatable` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `category` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `division` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `subdistrict` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `amount`, `address`, `status`, `transaction_id`, `currency`) VALUES
(4, 'John Doe', 'you@example.com', '01711xxxxxx', 1200, 'Dhaka', 'Pending', 'SSLCZ_TEST_642bda00c20d6', 'BDT'),
(5, 'John Doe', 'you@example.com', '01711xxxxxx', 1200, 'Dhaka', 'Pending', 'SSLCZ_TEST_642bdc9248db0', 'BDT'),
(6, 'John Doe', 'you@example.com', '01711xxxxxx', 1200, 'Dhaka', 'Pending', 'SSLCZ_TEST_642be59fd15a3', 'BDT'),
(7, 'John Doe', 'you@example.com', '01711xxxxxx', 1200, 'Dhaka', 'Pending', 'SSLCZ_TEST_642be87463f87', 'BDT');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_datatable`
--

CREATE TABLE `portfolio_datatable` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `keywords` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_datatable`
--

CREATE TABLE `product_datatable` (
  `id` int(11) NOT NULL,
  `admin_id` varchar(255) NOT NULL,
  `name` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(50) NOT NULL,
  `type_id` int(11) NOT NULL,
  `price` float(10,3) NOT NULL,
  `keywords` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `front_pic` varchar(255) NOT NULL,
  `right_pic` varchar(255) NOT NULL,
  `left_pic` varchar(255) NOT NULL,
  `rear_pic` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `total_like` int(11) NOT NULL,
  `total_unlike` int(11) NOT NULL,
  `total_watch` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `level` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `question_datatable`
--

CREATE TABLE `question_datatable` (
  `id` int(11) NOT NULL,
  `admin_id` varchar(255) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `description` text NOT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 0,
  `complain` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question_datatable`
--

INSERT INTO `question_datatable` (`id`, `admin_id`, `unique_id`, `category_id`, `question`, `description`, `level`, `status`, `complain`, `date`) VALUES
(1, '1', '8927285850', 3, 'বিভক্তিহীন নাম-শব্দকে কী বলে?', 'BCS 36', 3, 1, 1, '2022-07-30 18:34:25'),
(2, '1', '7516462013', 3, 'কোন শব্দটি উপসর্গ দিয়ে গঠিত হয়েছে ?', '”আঘাটা” শব্দটি বাংলা ”আ”উপসর্গ যোগে গঠিত।এর গঠন; আ-ঘাট=আঘাট&gt;আঘাটা।”আনন”শব্দটি সংস্কৃত ”আ”’ উপসর্গ যোগে গঠিত। এর গঠন হলো;আ+অন্+অন=আনন', 2, 1, 1, '2022-07-30 19:43:01'),
(3, '1', '9266510527', 10, 'ঘড়িতে যখন ৮ টা বাজে তখন ঘণ্টার কাঁটা ও মিনিটের কাঁটার মধ্যবর্তী কোণ কত ডিগ্রি হবে?', '(11M – 60H) / 2 | সূত্র ব্যাবহার করে পাই,\r\n| (11×0 – 60×8) / 2 | = 480/2 = 240°\r\nযেহেতু 180° থেকে বড় কোণ\r\nসুতরাং নির্ণেয় কোণ (360-240)° = 120°', 1, 1, 1, '2022-07-30 19:55:26'),
(4, '2', '1856224727', 3, 'আতাতুর্ক শব্দের অর্থ কি?', 'কাজী নজরুল ইসলামের &quot;অগ্নিবীনা&quot; কাব্যগ্রন্থের অন্তর্গত \'কামাল পাশা\' কবিতার প্রধান চরিত্রের নাম কামাল আতার্তুক।', 2, 1, 1, '2022-08-03 14:41:00'),
(5, '2', '3395902824', 3, 'কেন্তুমের কোন দুটি শাখা এশিয়ার অন্তর্গত?', '', 3, 1, 1, '2022-08-03 14:57:16'),
(6, '2', '3854908968', 3, '&quot;বাংলা ভাষার ইতিবৃত্ত&quot; কে রচনা করেছেন?', '', 1, 1, 1, '2022-08-04 15:42:33'),
(7, '2', '4625922157', 3, 'কাজী নজরুল ইসলামের নামের সাথ জড়িত &quot;ধুমকেতু&quot; কোন ধরনের প্রকাশনা?', '', 2, 1, 1, '2022-08-04 15:45:14'),
(8, '2', '6255343603', 3, 'চর্যাপদের পদকর্তা কতজন?', '', 1, 1, 1, '2022-08-04 15:49:55'),
(9, '2', '8881831923', 3, 'উপমহাদেশের প্রথম ছাপাখানা স্থাপন কত সালে হয়?', '', 1, 1, 1, '2022-08-04 15:58:14'),
(10, '2', '8173956203', 3, 'সৈয়দ শামসুল  হক রচিত মুক্তিযুদ্ধভিত্তিক উপন্যাসের নাম কি?', '', 2, 1, 1, '2022-08-04 16:11:27'),
(11, '2', '3411124732', 3, 'বিহারীলাল চক্রবর্তী প্রথম কাব্য কোনটি?', '', 1, 1, 1, '2022-08-04 16:20:57'),
(13, '2', '5904675712', 3, 'অপরাজেয় কথাশিল্পী কার ছদ্মনাম?', '', 1, 1, 1, '2022-08-04 16:51:18'),
(14, '2', '2372700982', 3, '&quot;শঙ্খনীল কারাগার&quot; উপন্যাসটি কার লেখা?', '', 1, 1, 1, '2022-08-06 15:33:45'),
(15, '2', '3188155520', 11, 'শহরের রাস্তায় ট্রাফিক লাইট যে ক্রম অনুসারে জ্বলে তা হলো-', '', 1, 1, 1, '2022-08-06 15:40:35'),
(16, '2', '1802310821', 11, '৮, ১১, ১৭, ২৯, ৫৩--। পরবর্তী সংখ্যাটি কত?', '', 3, 1, 1, '2022-08-06 15:42:26'),
(17, '2', '2475654908', 11, 'একটি লোক খাড়া উত্তর দিকে m মাইল দূরত্ব অতিক্রম করে প্রতি মাইল ২ মিনিটে এবং খাড়া দক্ষিন পূর্বস্থানে ফিরে আসে প্রতি মিনিটে ২ মাইল হিসেবে।লোকটির গড় গতিবেগ ঘন্টায় কত মাইল ছিল?', '', 1, 1, 1, '2022-08-06 15:44:11'),
(18, '2', '2765144727', 11, 'শুদ্ধ বানানটি নির্দেশ করুন', '', 2, 1, 0, '2022-08-06 15:46:53'),
(19, '2', '4239643680', 11, 'পরপর দশটি সংখ্যার প্রথম ৫ টি সংখ্যার যোগফল ৫৬০ হলে শেষ ৫ টির যোগফল কত?', '', 1, 1, 0, '2022-08-06 15:48:14'),
(20, '2', '4817763261', 11, '১২ ও ৯৬ এর মধ্যে (এ দুটি সংখ্যাসহ) কয়টি সংখ্যা ৪ দ্বারা বিভাজ্য?', '', 1, 1, 0, '2022-08-06 15:49:34'),
(22, '2', '8428394182', 11, 'If you count 1 to 100, how many 5s will you pass on the way?', '', 1, 1, 0, '2022-08-06 15:53:31'),
(23, '2', '6814412771', 11, 'If the second day of the month is a Monday, the eighteenth day of the month is a ..............', '', 3, 1, 0, '2022-08-06 15:54:59'),
(24, '2', '7037543561', 11, 'Rahim is 12 years old. He is three times older than Karim. What will be the age of Rahim when he is two times older than Karim?', '', 1, 1, 0, '2022-08-06 15:56:27'),
(25, '2', '8237115811', 10, 'কোনো বৃত্তে অধিচাপের অন্তর্লিখিত কোণ হচ্ছে-', '', 1, 1, 0, '2022-08-06 16:06:19'),
(26, '2', '5394704349', 10, 'শ্রেণি	৩১-৪০	৪১-৫০	৫১-৬০	৬১-৭০	৭১-৮০\r\nগণসংখ্যা	৫	৮	১২	৯	৬\r\nমধ্যক শ্রেণির মধ্যমান কত?', '', 1, 1, 0, '2022-08-06 16:08:28'),
(28, '2', '8959801140', 10, 'রম্বসের প্রতিসাম্য রেখা কতটি?', '', 3, 1, 0, '2022-08-06 16:12:21'),
(29, '2', '8058999294', 10, 'ক্ষুদ্রতম মৌলিক সংখ্যা নিচের কোনটি?', '', 1, 1, 0, '2022-08-06 16:15:50'),
(30, '2', '7442273564', 10, 'সকল পূর্ণ ও ভগ্নাংশ সংখ্যাকে বলা হয় −', '', 3, 1, 0, '2022-08-06 16:20:07'),
(31, '2', '3061558692', 10, 'রশ্মির প্রান্ত বিন্দু কয়টি?', '', 1, 1, 0, '2022-08-06 16:21:59'),
(32, '2', '3396301752', 10, 'A fraction which bears the same ratio to 1/27 as 3/11 bear to 5/9 is equal to ……….. .', '', 2, 1, 0, '2022-08-06 17:33:16'),
(33, '2', '2578477608', 10, 'What is 1004 divided by 2?', '', 1, 1, 0, '2022-08-06 17:34:59'),
(34, '2', '5293280976', 10, '106 × 106 – 94 × 94 = ?', '', 3, 1, 0, '2022-08-06 17:36:33'),
(35, '2', '2637078137', 10, 'এক নটিক্যাল মাইল সমান –', '', 1, 1, 0, '2022-08-07 04:06:50'),
(36, '2', '3863741405', 10, 'দুইটি সংখ্যার ল.সা.গু a এবং গ.সা.গু b\r\n। একটি সংখ্যা c হলে, অপরটি –', '', 2, 1, 0, '2022-08-07 04:08:53'),
(37, '2', '6713653310', 10, 'একটি লেবু ৪ টাকায় কিনে ৫ টাকায়\r\nবিক্রি করলে লাভ –', '', 1, 1, 0, '2022-08-07 04:10:14'),
(38, '2', '2197464285', 10, 'প্রথম দশটি স্বাভাবিক সংখ্যার গড়-', '', 3, 1, 0, '2022-08-07 04:11:52'),
(39, '2', '7836563209', 10, 'সমবাহু ত্রিভুজের এক বাহুর দৈর্ঘ্য\r\n2√3 একক হলে, ত্রিভুজটির\r\nক্ষেত্রফল –', '', 1, 1, 0, '2022-08-07 04:14:30'),
(40, '2', '7004461178', 10, '৩ বছর পূর্বে মা এবং মেয়ের\r\nবয়স যথাক্রমে ২৭ বছর ও ২ বছর\r\nছিল। ৫ বছর পর তাদের বয়সের\r\nঅনুপাত –', '', 2, 1, 0, '2022-08-07 04:17:06'),
(41, '2', '6789705273', 5, 'বঙ্গবন্ধু রেলসেতুর দৈর্ঘ্য-', '', 1, 1, 0, '2022-08-07 16:26:26'),
(42, '2', '4794390487', 5, 'বাংলাদেশের উপকূলের দৈর্ঘ্য কত?', '', 1, 1, 0, '2022-08-07 16:32:13'),
(43, '2', '2246231801', 5, 'বাংলাদেশে VAT চালু করা হয় কবে?', '', 1, 1, 0, '2022-08-07 16:35:07'),
(44, '2', '1687401481', 5, 'বাংলাদেশে প্রথম গণভোট অনুষ্ঠিত হয়-', '', 1, 1, 0, '2022-08-07 16:46:33'),
(46, '2', '2819826107', 5, 'ভারতীয় কোন রাজ্যের সাথে বাংলাদেশের কোনো সীমান্ত নাই ?', '', 2, 1, 0, '2022-08-08 13:25:43'),
(47, '2', '5964176534', 5, 'বাংলাদেশের বৃহত্তর জেলা কতটি?', '', 1, 1, 0, '2022-08-08 13:28:26'),
(50, '2', '8041379658', 5, 'কুতুবদিয়া বাতিঘর নির্মাণ করা হয় কখন?', '', 1, 1, 0, '2022-08-08 13:32:32'),
(51, '2', '5069638311', 5, 'কর্ণফুলী নদীর তলদেশে দেশের একমাত্র টানেল নির্মাণ করবে কোন দেশ?', '', 1, 1, 0, '2022-08-08 13:34:18'),
(52, '2', '7609651235', 5, 'বাংলাদেশর মোট সীমান্ত দৈর্ঘ্য -', '', 1, 1, 0, '2022-08-11 15:30:21'),
(53, '2', '3701066387', 5, 'ভারতে অবস্থিত বাংলাদেশের পঞ্চম মিশন কোথায় হচ্ছে?', '', 2, 1, 0, '2022-08-11 15:32:38'),
(54, '2', '3412012446', 5, 'দেশের প্রথম কৃত্রিম উপগ্রহ বঙ্গবন্ধু-১ কোন মহাকাশাযানে উৎক্ষেপণ করা হয়?', '', 1, 1, 0, '2022-08-11 15:34:48'),
(55, '2', '4997303485', 5, 'শেওলা স্থলবন্দর ঘোষণা করা হয় কবে?', '', 3, 1, 0, '2022-08-11 15:37:30'),
(56, '2', '9012856730', 5, 'দেশের প্রথম নারী তথ্য কর্মকর্তা কে?', '', 1, 1, 0, '2022-08-11 15:39:53'),
(57, '2', '2119093258', 5, 'বাংলাদেশের প্রথম অর্থ বছর ছিল--', '', 2, 1, 0, '2022-08-11 15:42:55'),
(58, '2', '6421429681', 5, 'বাংলাদেশের সমুদ্র উপকূলের দৈর্ঘ্য কত ?', '', 3, 1, 0, '2022-08-11 15:44:47'),
(59, '2', '1985251249', 5, 'বাংলাদেশের সাথে নিম্নলিখিত কোন দেশের Maritime boundary বিদ্যমান রয়েছে ?', '', 1, 1, 0, '2022-08-11 15:46:50'),
(60, '2', '2141353315', 5, 'বাংলাদেশের উত্তরে অবস্থিত?', '', 3, 1, 0, '2022-08-11 15:49:19'),
(61, '2', '6691989581', 3, 'বাংলাদেশ-মিয়ানমার মৈত্রী সেতু কোথায় অবস্থিত?', '', 1, 1, 0, '2022-08-11 15:51:41'),
(62, '2', '2468385201', 5, 'কবে বিশ্বব্যাংক বাংলাদেশকে নিম্ন মধ্যম আয়ের দেশের তালিকায় অন্তর্ভুক্ত করে?', '', 1, 1, 0, '2022-08-11 15:53:50'),
(63, '2', '9959585769', 5, 'শেওলা স্থলবন্দর কোথায় অবস্থিত?', '', 1, 1, 0, '2022-08-11 15:57:09'),
(64, '2', '1854597791', 3, 'টাঙ্গুয়ার হাওড়ের আয়তন কত?', '', 2, 1, 0, '2022-08-11 16:00:54'),
(65, '2', '7882180818', 5, 'কর্কটক্রান্তি রেখা -', '', 3, 1, 0, '2022-08-11 16:03:38'),
(66, '2', '3987858709', 3, 'মেয়র মোহাম্মদ হানিফ ফ্লাইওভারের দৈর্ঘ্য কত?', '', 1, 1, 0, '2022-08-11 16:08:22'),
(67, '1', '4296528849', 6, 'সার্ক দেশগুলোর মধ্যে আয়তনে ক্ষুদ্রতম দেশ-', '', 1, 1, 0, '2022-08-17 14:11:33'),
(68, '1', '5334911836', 6, 'পেনাং কোন দেশের সমুদ্র বন্দর?', '', 3, 1, 0, '2022-08-17 14:13:09'),
(69, '1', '4184987775', 6, 'দক্ষিণ চীন সাগরে চীন নাইন ড্যাশ দেয় কবে?', '', 2, 0, 0, '2022-08-17 14:15:44'),
(70, '1', '6072790987', 6, 'তক্ষশীলা কোন দেশে অবস্থিত?', '', 1, 0, 0, '2022-08-17 14:17:11'),
(71, '1', '1288261370', 6, 'সোয়াত উপত্যকা কোন দেশে?', '', 2, 0, 0, '2022-08-17 14:18:30'),
(72, '1', '8843383487', 6, 'ভুটানের জনগণ সে দেশের ইতিহাসে প্রথমবারের মতো কখন ভোটাধিকার প্রয়োগ করেন?', '', 1, 0, 0, '2022-08-17 14:20:27'),
(73, '1', '1629695388', 6, 'পাকিস্তান কত সালে পারমাণবিক বোমার বিস্ফোরণ ঘটায়?', '', 1, 0, 0, '2022-08-17 15:14:20'),
(74, '1', '4009679672', 6, 'ফ্যাসিবাদের অগ্রদূত কে?', '', 2, 0, 0, '2022-08-17 15:16:05'),
(75, '1', '6259222745', 6, 'অনুরাধাপুর কোথায় অবস্থিত?', '', 3, 0, 0, '2022-08-17 15:18:17'),
(76, '1', '5735362386', 6, 'OPEC থেকে কোন দেশ নিজেকে প্রত্যাহার করে নেয় ?', '', 2, 0, 0, '2022-08-17 15:19:44'),
(77, '1', '7757623570', 6, 'শ্রীলংকার রাজধানী-', '', 1, 0, 0, '2022-08-17 15:21:07'),
(78, '1', '2687779853', 3, '২০০৭ সালে নেপালে কত বছরের পুরনো রাজতন্ত্রের বিলোপ ঘটে?', '', 3, 0, 0, '2022-08-17 15:23:13'),
(79, '1', '3046221798', 6, 'মধ্য এশিয়ার কোন দেশটির সঙ্গে আফগানিস্তানের সীমান্ত নেই?', '', 3, 0, 0, '2022-08-17 16:50:47'),
(80, '1', '7374822169', 6, 'কান্দাহার কোন দেশের শহর?', '', 1, 0, 0, '2022-08-17 16:53:07'),
(81, '1', '8423406205', 6, 'পৃথিবীর সর্বোচ্চ বুদ্ধমূর্তিটি কোথায় অবস্থিত ছিল?', '', 3, 0, 0, '2022-08-17 16:54:45'),
(82, '1', '5398287723', 8, 'আধুনিক কম্পিউটারের বৈশিষ্ট্য হচ্ছে-', '', 2, 0, 0, '2022-08-17 16:58:08'),
(83, '1', '2241567538', 3, 'কম্পিউটার প্রোগ্রামে, একই কাজ নির্দেশনা বারবার সম্পন্ন করার প্রক্রিয়াকে বলে--', '', 1, 0, 0, '2022-08-17 16:59:40'),
(84, '1', '8946063767', 8, 'BIOS-এর পূর্ণরূপ কি?', '', 2, 0, 0, '2022-08-17 17:01:30'),
(85, '1', '2968475894', 8, 'LinkedIn এর ক্ষেত্রে কোনটি সঠিক?', '', 3, 0, 0, '2022-08-17 17:03:20'),
(86, '1', '7604643213', 8, 'নিচের কোনটি ইনপুট ডিভাইস?', '', 3, 0, 0, '2022-08-17 17:05:12'),
(87, '1', '5033497971', 3, '(10101) বাইনারি সংখ্যাটির দশমিক মান কত--', '', 1, 0, 0, '2022-08-17 17:06:25'),
(88, '1', '6942851968', 8, 'প্রথম তৈরি পারসনাল কম্পিউটারের নাম কি?', '', 1, 0, 0, '2022-08-17 17:07:47'),
(89, '1', '9063601895', 8, 'কম্পিউটার থেকে কম্পিউটারে তথ্য আদান-প্রদান প্রযুক্তিকে বলা হয়-', '', 1, 0, 0, '2022-08-17 17:11:40'),
(90, '1', '1411363777', 8, 'নিচের কোনটিতে সাধারণত ইনফ্রারেড ডিভাইস ব্যবহার করা হয়?', '', 3, 0, 0, '2022-08-17 17:18:23'),
(91, '1', '8087254948', 8, 'ইন্টিগ্রেটেড সার্কিট (IC) আবিস্কার করেন কে?', '', 3, 0, 0, '2022-08-17 17:20:53'),
(92, '1', '4948199582', 9, 'জীবদেহের জৈবিক ক্রিয়াগুলোকে নিয়ণ্ত্রণ করে কে?', '', 2, 0, 0, '2022-08-17 17:25:13'),
(93, '1', '3708027801', 9, 'কোনটির অভাবে অস্থির গঠন শক্ত ও মজবুত হতে পারে না?', '', 3, 0, 0, '2022-08-17 17:26:34'),
(94, '1', '2949549307', 3, 'কোন ভিটামিনের অভাবে ঠোঁটের দুপাশে ফাটল দেখা দেয়?', '', 2, 0, 0, '2022-08-17 17:27:36'),
(95, '1', '2526644815', 9, 'শক্তি ও তাপ সরবরাহকারী খাদ্য কোনটি?', '', 1, 0, 0, '2022-08-17 17:29:23'),
(96, '1', '7996737802', 3, 'প্রাপ্তবয়স্ক পুরুষ ও মহিলাদের দৈনিক কী পরিমাণে নিয়াসিন গ্রহণ করা উচিত?', '', 3, 0, 0, '2022-08-17 17:32:29'),
(97, '2', '1139830451', 6, 'Sugauli চুক্তি হয় যে দুটি দেশের মধ্যে', '', 3, 0, 0, '2022-09-17 19:38:03'),
(98, '2', '2013124395', 6, 'পাওয়ার অব সাইবেরিয়া গ্যাস পাইপ লাইন স্থাপিত হয়-', '', 1, 0, 0, '2022-09-17 19:40:41'),
(99, 'tan15243', '5586714508', 1, 'লিখন পদ্ধতি কিউনিফর্ম যে সভ্যতায় চালু হয়?', '', 2, 0, 0, '2022-09-17 19:45:16'),
(100, 'tan15243', '8882164230', 1, 'Department for International Development (DFID) যে দেশভিত্তিক সংস্থা ছিল-', '', 1, 0, 0, '2022-09-17 19:47:25'),
(101, 'tan15243', '7727389951', 1, 'প্রথম মহিলা বিশ্বকাপ ক্রিকেট অনুষ্ঠিত হয়-', '', 3, 0, 0, '2022-09-17 19:49:05'),
(102, 'tan15243', '8996861608', 1, 'সুশাসনের কোন নীতি সংগঠনের স্বাধীনতাকে নিশ্চিত করে?', '', 1, 0, 0, '2022-09-18 08:29:59'),
(103, 'isr597080', '4123049389', 1, 'How can a particular answer of the customer be given anytime?', 'ICT', 3, 0, 0, '2022-10-14 04:19:17'),
(104, 'isr597080', '6792008821', 1, '&quot;Connectivity is Productivity&quot; - whose statement is this ?', 'ICT', 2, 0, 0, '2022-10-14 04:21:12'),
(105, 'isr597080', '6166923939', 1, 'Which one is the sector of using ATM card?', 'ICT', 5, 0, 0, '2022-10-14 04:22:56'),
(106, 'isr597080', '4147682919', 1, 'Which is correct to draw cash from the ATM of bank', 'ICT', 4, 0, 0, '2022-10-14 04:24:25'),
(107, 'isr597080', '1489904614', 1, '\'Facebook,\' what type of website is this?', 'IcT', 4, 0, 0, '2022-10-14 04:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `redweb_datatable`
--

CREATE TABLE `redweb_datatable` (
  `id` int(11) NOT NULL,
  `blogger_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `thumbnail` text NOT NULL,
  `source` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `total_like` int(11) NOT NULL,
  `total_unlike` int(11) NOT NULL,
  `total_watch` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `level` int(11) NOT NULL DEFAULT 0,
  `complain` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `redweb_datatable`
--

INSERT INTO `redweb_datatable` (`id`, `blogger_id`, `title`, `category_id`, `keywords`, `description`, `thumbnail`, `source`, `date`, `total_like`, `total_unlike`, `total_watch`, `status`, `level`, `complain`) VALUES
(4, 'admin_2354525', 'Your title Input Here.fsafas', 69, 'Your keywords Input Herefasfsafasfa.', 'safasfadfas', 'extra/resources/uploads/redweb/img/15042314723c36b93f5c3.png', 'https://localhost/project/extra/storage/uploads/files/150423ee175bad228612e.mp4', '2023-04-15 06:28:14', 0, 0, 29, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `redweb_site_datatable`
--

CREATE TABLE `redweb_site_datatable` (
  `id` int(11) NOT NULL,
  `admin` int(11) NOT NULL,
  `hosting` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `redweb_site_datatable`
--

INSERT INTO `redweb_site_datatable` (`id`, `admin`, `hosting`, `site`, `email`, `password`, `created`, `status`) VALUES
(1, 1, 'https://profreehost.com/', 'https://redweb.ezyro.com', 'devloper@profile.elementfx.com', '1928374655', '2023-04-09 09:39:04', 1),
(2, 1, 'https://www.freewebhostingarea.com/', 'redweb.ueuo.com', 'isratahamedsabbir@gmail.com', 'abcd1234', '2023-04-15 06:48:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `result_datatable`
--

CREATE TABLE `result_datatable` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `result` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `result_datatable`
--

INSERT INTO `result_datatable` (`id`, `user_id`, `result`, `date`) VALUES
(1, 4, 1, '2022-07-31 18:08:20'),
(2, 5, 1, '2022-08-02 11:35:15');

-- --------------------------------------------------------

--
-- Table structure for table `rubi_datatable`
--

CREATE TABLE `rubi_datatable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `icon` text NOT NULL,
  `photo` text NOT NULL,
  `note` text NOT NULL,
  `email` text NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `instagram` text NOT NULL,
  `linkedin` text NOT NULL,
  `youtube` text NOT NULL,
  `address` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rubi_datatable`
--

INSERT INTO `rubi_datatable` (`id`, `name`, `author`, `title`, `keywords`, `description`, `icon`, `photo`, `note`, `email`, `facebook`, `twitter`, `instagram`, `linkedin`, `youtube`, `address`, `date`, `status`) VALUES
(1, 'israt ahamed sabbir', 'israt ahamed sabbir', 'iasportfolio', 'portfolio, israt ahamed sabbir, Web Designer, Web Developer', 'Achieving a dynamic and challenging job where I can use my technical and interpersonal skills, creativity, analytical ability, adaptability and my experiences in order to develop my career as well as to contribute in the welfare of the organization.', 'extra/resources/uploads/rubi/img/2702231f6a1c0a54efa69.png', 'extra/resources/uploads/rubi/img/2702231f6a1c0a54efa69.png', 'empty', 'isratahamedsabbir@gmail.com', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', '2023-02-27 11:10:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `samojugc_datatable`
--

CREATE TABLE `samojugc_datatable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `icon` text NOT NULL,
  `note` text NOT NULL,
  `email` text NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `instagram` text NOT NULL,
  `linkedin` text NOT NULL,
  `youtube` text NOT NULL,
  `address` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `samojugc_datatable`
--

INSERT INTO `samojugc_datatable` (`id`, `name`, `author`, `title`, `keywords`, `description`, `icon`, `note`, `email`, `facebook`, `twitter`, `instagram`, `linkedin`, `youtube`, `address`, `date`, `status`) VALUES
(1, 'samojugc', 'Israt Ahamed Sabbir', 'news paper', 'news, current news', 'samojugc online news portel', 'extra/resources/uploads/samojugc/file/050323cc87fce09b7c140.jpg', 'Username: sumtechi\r\nPassword: soV94H@8#1hEeP\r\nhost: www.sumtechit.com\r\nDB: sumtechi_database\r\nControl Panel URL: http://116.202.236.60:2082/\r\nhttp://www.samojug.com:2082/', 'samojug.com@gmail.com', 'https://www.facebook.com/samojugnews/', 'https://twitter.com/samojugnews', 'https://www.instagram.com/samojugnews/', 'https://www.linkedin.com/in/samojugnews/', 'https://www.youtube.com/@samojug', 'SAMOJUG 72 Mohakhali, Wireless gate, Rupayan Center, Level-3. Dhaka-1212.', '2023-02-07 06:05:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `samojugc_news_datatable`
--

CREATE TABLE `samojugc_news_datatable` (
  `id` int(11) NOT NULL,
  `datatable` varchar(255) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `thumbnail` text NOT NULL,
  `teaser` text NOT NULL,
  `link` text NOT NULL,
  `liked` int(11) NOT NULL,
  `unliked` int(11) NOT NULL,
  `watched` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `topnews` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `samojugc_news_datatable`
--

INSERT INTO `samojugc_news_datatable` (`id`, `datatable`, `admin_id`, `category_id`, `title`, `keywords`, `description`, `thumbnail`, `teaser`, `link`, `liked`, `unliked`, `watched`, `date`, `topnews`, `status`) VALUES
(143, 'samojugc_datatable', 5, 58, '৪ দিন পর খুলনা মেডিকেলের বহির্বিভাগে মিলছে চিকিৎসাসেবা', '৪ দিন পর খুলনা মেডিকেলের বহির্বিভাগে মিলছে চিকিৎসাসেবা', '&lt;p&gt;চিকিৎসকদের কর্মবিরতির কারণে টানা চার দিন বন্ধ ছিল খুলনা মেডিকেল কলেজ হাসপাতালের বহির্বিভাগের চিকিৎসাসেবা কার্যক্রম। তবে কর্মবিরতি স্থগিত করে চিকিৎসকেরা কর্মক্ষেত্রে ফেরায় আজ রোববার সকাল আটটা থেকে হাসপাতালের বহির্বিভাগে চিকিৎসাসেবা মিলছে। এতে সাধারণ রোগীদের মনে স্বস্তি ফিরেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এর আগে খুলনার শহীদ শেখ আবু নাসের বিশেষায়িত হাসপাতালের প্লাস্টিক সার্জারি বিভাগের প্রধান শেখ নিশাত আবদুল্লাহর ওপর হামলার প্রতিবাদে ও আসামিদের গ্রেপ্তারের দাবিতে গত বুধবার সকাল থেকে কর্মবিরতি শুরু করেছিলেন চিকিৎসকেরা। গতকাল শনিবার পর্যন্ত এ কর্মবিরতি চলে। গতকাল বেলা সাড়ে ১১টার দিকে খুলনা সিটি করপোরেশনের মেয়র তালুকদার আব্দুল খালেক ও বাংলাদেশ আওয়ামী লীগের কেন্দ্রীয় সাংগঠনিক সম্পাদক এস এম কামাল হোসেনের মধ্যস্থতায় সাত দিনের জন্য কর্মবিরতি স্থগিতের ঘোষণা দেন চিকিৎসকেরা।&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/050323fab2d6749a113b2.webp', 'আজ রোববার সকাল আটটা থেকে হাসপাতালের বহির্বিভাগে চিকিৎসকেরা রোগী দেখছেন', 'https://facebook.com/samojugnews', 0, 0, '65', '2023-03-05 06:17:39', 0, 1),
(144, 'samojugc_datatable', 1, 58, 'সায়েন্স ল্যাব এলাকায় ভবনে বিস্ফোরণে নিহত ৩', 'সায়েন্স ল্যাব এলাকায় ভবনে বিস্ফোরণে নিহত ৩', '&lt;p&gt;রাজধানীর সায়েন্স ল্যাব এলাকার তিনতলা একটি ভবনে বিস্ফোরণে তিনজন নিহত হয়েছেন বলে জানিয়েছে পুলিশ। ফায়ার সার্ভিসের প্রাথমিক ধারণা, শীতাতপনিয়ন্ত্রণ যন্ত্রের (এসি) বিস্ফোরণ থেকে আগুন লাগতে পারে।&lt;/p&gt;\r\n\r\n&lt;p&gt;আজ রোববার বেলা ১১টার কিছু আগে এ ঘটনা ঘটে। বেলা সোয়া ১১টার দিকে ফায়ার সার্ভিসের চারটি ইউনিট আগুন নিয়ন্ত্রণে আনে। এ ঘটনার পর সায়েন্স ল্যাব মোড় থেকে নিউমার্কেট মোড় পর্যন্ত রাস্তার এক পাশে যান চলাচল বন্ধ রয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;ধানমন্ডি থানার ভারপ্রাপ্ত কর্মকর্তা (ওসি) ইকরাম আলী মিয়া বলেছেন, ধানমন্ডি এলাকার বেসরকারি একটি হাসপাতালে নেওয়ার পর ওই তিনজন মারা গেছেন। তাঁরা হলেন, শফিকুজ্জামান, আব্দুল মান্নান ও তুষার। তাঁদের পরিচয় এখনো জানা যায়নি।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/prothomalo-bangla_2023-03_cd560049-5c42-4d21-b80d-a8e0b0bc2cc6_14c83796-f448-4a81-8441-d50242e22c2c.webp&quot; style=&quot;height:480px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ডিএমপির অতিরিক্ত কমিশনার মুহিতউদ্দিন খন্দকার বলেছেন, অগ্নিকাণ্ডে ১৪ জন দগ্ধ ও আহত হয়েছেন। তাঁরা ঢাকা মেডিকেল কলেজ হাসপাতালে চিকিৎসাধীন।&lt;/p&gt;\r\n\r\n&lt;p&gt;ঘটনাস্থলে দেখা গেছে, ভবনটির তিনতলা বেশি ক্ষতিগ্রস্ত হয়েছে। ভবন থেকে ইট ও জানালার কাচ উড়ে গিয়ে রাস্তা ও আশপাশের এলাকায় পড়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/prothomalo-bangla_2023-03_d01fe040-a5a1-4bad-8c96-04854a5e52a1_0682042c-fd7b-4350-8da2-1d707c775d16.webp&quot; style=&quot;height:360px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ঘটনাস্থলে পুলিশের বোমা নিষ্ক্রিয়করণ দল কাজ করছে। তিনতলা ওই ভবনে বেশির ভাগই কাপড়ের দোকান ছিল। আশপাশে বেশ কয়েকটি আবাসিক ভবন রয়েছে। সেখান থেকে মানুষ আতঙ্কে নিচে নেমে এসেছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/prothomalo-bangla_2023-03_373cb2f3-4a9f-4079-986d-b6b2e3ef653c_aa77bd16-28d5-49f2-90df-c5faf71b85e0.webp&quot; style=&quot;height:360px; width:640px&quot; /&gt;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/050323c5726ad4c87e837.webp', 'সায়েন্স ল্যাব এলাকার তিনতলা একটি ভবনে বিস্ফোরণে তিনজন নিহত হয়েছেন', 'https://facebook.com/samojugnews/', 0, 0, '37', '2023-03-05 07:48:04', 0, 1),
(145, 'samojugc_datatable', 5, 58, 'মাওলানা ভাসানী বিশ্ববিদ্যালয়ে আনন্দ-উৎসবে চলছে তৃতীয় সমাবর্তন', 'মাওলানা ভাসানী বিশ্ববিদ্যালয়ে আনন্দ-উৎসবে চলছে তৃতীয় সমাবর্তন', '&lt;p&gt;টাঙ্গাইলের মাওলানা ভাসানী বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয়ে উৎসবমুখর পরিবেশে চলছে তৃতীয় সমাবর্তন। এতে অংশ নিয়েছেন দেড় হাজারের বেশি শিক্ষক-শিক্ষার্থীরা। সমাবর্তনে সভাপতিত্ব করছেন কৃষিমন্ত্রী আব্দুর রাজ্জাক। সমাবর্তন বক্তা হিসেবে উপস্থিত হয়েছেন সেন্টার ফর দ্য রিহ্যাবিলিটেশন অব দ্য প্যারালাইজডের (সিআরপি) প্রতিষ্ঠাতা ভ্যালেরি অ্যান টেইলর।&lt;/p&gt;\r\n\r\n&lt;p&gt;পদক প্রদান নীতিমালায় পরিবর্তন করায় বিশ্ববিদ্যালয়ের শিক্ষক ও শিক্ষার্থীদের একটি অংশ এবারের সমাবর্তন বয়কট করছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিশ্ববিদ্যালয় সূত্র জানায়, এবার সমাবর্তনে ১ হাজার ৭২৮ জন নিবন্ধন করেছেন। আজ সকাল থেকেই তাঁরা বিশ্ববিদ্যালয় ক্যাম্পাসে আসতে শুরু করেন। অনেকে স্বজনদের সঙ্গে নিয়েও এসেছেন। তারা সমাবর্তনস্থলে ছবি তুলে, আড্ডা দিয়ে মূল অনুষ্ঠান শুরুর আগ পর্যন্ত সময় কাটান।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিশ্ববিদ্যালয়ের টেক্সটাইল ইঞ্জিনিয়ারিং বিভাগের শিক্ষার্থী আমিনুর রহমান সমাবর্তনে এসেছেন তাঁর মা&amp;ndash;বাবাকে নিয়ে। তিনি বলেন, &amp;lsquo;কৃষক মা&amp;ndash;বাবা অনেক কষ্ট করে আমাকে লেখাপড়া শিখিয়েছেন। তাই এই দিনে মা&amp;ndash;বাবাকে সঙ্গে নিয়ে এসেছি।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;শিক্ষার্থীরা বলেন, আগের দুটি সমাবর্তনে বিশ্ববিদ্যালয়ের অধ্যাদেশ অনুযায়ী তিনটি শ্রেণিতে স্নাতক, স্নাতকোত্তর উভয় পর্যায়ে চ্যান্সেলর, ভাইস চ্যান্সেলর ও ডিনস পদক দেওয়া হয়েছিল। কিন্তু এবারের সমাবর্তনে বিশ্ববিদ্যালয় কর্তৃপক্ষ ওই নীতিমালায় কিছু পরিবর্তন এনেছে। এতে স্নাতক ডিগ্রির ক্ষেত্রে ডিনস পদক দেওয়া হচ্ছে না এবং স্নাতকোত্তর ডিগ্রিকে কোনো পদকের জন্য বিবেচনা করা হচ্ছে না। এর প্রতিবাদে শিক্ষক ও শিক্ষার্থীদের একটি অংশ সমাবর্তনে যোগ দেননি।&lt;/p&gt;\r\n\r\n&lt;p&gt;অপরাধ তত্ত্ব ও পুলিশ বিজ্ঞান বিভাগের সহযোগী অধ্যাপক ইসতিয়াক আহমেদ তালুকদার বলেন, এই বিশ্ববিদ্যালয়ের সাবেক ৫২ জন ছাত্র বর্তমানে শিক্ষক হিসেবে চাকরি করছেন। এ ছাড়া বেশির ভাগ শিক্ষক পদক নীতিমালার পরিবর্তনের প্রতিবাদ জানিয়েছেন। এই প্রতিবাদের অংশ হিসেবে তাঁদের অনেকে সমাবর্তনে অংশ নেননি।&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0503231d81f8459c202d5.webp', 'ছবি: সংগৃহীত', 'samojug.com/samojugnews', 0, 0, '2', '2023-03-05 07:48:27', 0, 1),
(146, 'samojugc_datatable', 1, 67, 'মার্কিন সংস্থায় চাকরি, বেতন বছরে পৌনে ৯ লাখের বেশি', 'মার্কিন সংস্থায় চাকরি, বেতন বছরে পৌনে ৯ লাখের বেশি', '&lt;p&gt;যুক্তরাষ্ট্রভিত্তিক আন্তর্জাতিক উন্নয়ন সংস্থা আইপাস বাংলাদেশে কর্মী নিয়োগের বিজ্ঞপ্তি প্রকাশ করেছে। সংস্থাটি কান্ট্রি অফিস, ঢাকার ফিন্যান্স অ্যান্ড অ্যাডমিনিস্ট্রেশন বিভাগে কর্মী নিয়োগ দেবে। আগ্রহী প্রার্থীদের অনলাইনে আবেদন করতে হবে।&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;&lt;strong&gt;পদের নাম:&lt;/strong&gt; ফিন্যান্স অ্যাসোসিয়েট টু&lt;br /&gt;\r\n	&lt;strong&gt;প্রকল্প:&lt;/strong&gt; ইম্প্রুভিং এসআরএইচআর ইন ঢাকা&lt;br /&gt;\r\n	&lt;strong&gt;পদসংখ্যা:&lt;/strong&gt; ১&lt;br /&gt;\r\n	&lt;strong&gt;যোগ্যতা:&lt;/strong&gt; অ্যাকাউন্টিং ও ফিন্যান্স বিষয়ে স্নাতকোত্তর ডিগ্রি থাকতে হবে। অথবা চার্টার্ড অ্যাকাউন্ট্যান্সি কোর্স সমাপ্ত হতে হবে। জাতীয় বা আন্তর্জাতিক কোনো সংস্থায় অন্তত তিন বছরের চাকরির অভিজ্ঞতা থাকতে হবে। এমএস অফিস অ্যাপ্লিকেশনের কাজ জানতে হবে। অ্যাকাউন্টিং সফটওয়্যারের কাজ জানতে হবে। যোগাযোগে দক্ষতাসহ বাংলা ও ইংরেজি ভাষায় সাবলীল হতে হবে।&lt;/p&gt;\r\n\r\n	&lt;p&gt;&lt;strong&gt;কর্মস্থল:&lt;/strong&gt; কান্ট্রি অফিস, ঢাকা&lt;br /&gt;\r\n	&lt;strong&gt;বেতন:&lt;/strong&gt; বছরে ৮ লাখ ৮২ হাজার ৯১২ টাকা&lt;br /&gt;\r\n	&lt;strong&gt;সুযোগ&amp;ndash;সুবিধা:&lt;/strong&gt; উৎসব বোনাস, প্রভিডেন্ট ফান্ড, গ্র্যাচুইটি, কর্মীর স্বামী/ স্ত্রীসহ স্বাস্থ্যসুবিধা, জীবনবিমাসহ প্রতিষ্ঠানের নীতিমালা অনুযায়ী অন্যান্য সুবিধা দেওয়া হবে।&lt;/p&gt;\r\n\r\n	&lt;p&gt;&lt;strong&gt;আবেদন যেভাবে&lt;/strong&gt;&lt;br /&gt;\r\n	আগ্রহী প্রার্থীদের আইপাসের ক্যারিয়ার&amp;ndash;সংক্রান্ত &lt;a href=&quot;https://ipas.wd5.myworkdayjobs.com/&quot; target=&quot;_blank&quot;&gt;ওয়েবসাইটে&lt;/a&gt; কাভার লেটার, দুটি প্রফেশনাল রেফারেন্সসহ সিভি পাঠাতে হবে। এই &lt;a href=&quot;https://hotjobs.bdjobs.com/jobs/ipasbd/ipasbd91.htm&quot; target=&quot;_blank&quot;&gt;লিংকে&lt;/a&gt; নিয়োগসংক্রান্ত বিস্তারিত তথ্য জানা যাবে।&lt;/p&gt;\r\n\r\n	&lt;p&gt;&lt;strong&gt;আবেদনের শেষ সময়:&lt;/strong&gt; ৮ মার্চ ২০২৩।&lt;/p&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;', 'extra/resources/uploads/samojugc/img/0503239a7a7ee00d72810.webp', 'ছবি: আইপাস–এর ইনস্টাগ্রাম থেকে নেওয়া', 'https://facebook.com/samojugnews/', 0, 0, '1', '2023-03-05 07:55:42', 0, 1),
(147, 'samojugc_datatable', 5, 58, 'বিস্ফোরণের ১৯ ঘণ্টা পর দেখা মিলল কারখানার ব্যবস্থাপকের', 'বিস্ফোরণের ১৯ ঘণ্টা পর দেখা মিলল কারখানার ব্যবস্থাপকের', '&lt;p&gt;চট্টগ্রামের সীতাকুণ্ডের কদমরসুল এলাকার সীমা অক্সিজেন লিমিটেডে গতকাল শনিবার বিকেল পাঁচটার আগে ভয়াবহ বিস্ফোরণ ঘটে। শিল্পে ব্যবহৃত অক্সিজেন উৎপাদনের এ কারখানায় বিস্ফোরণে অন্তত ছয়জন নিহত হয়েছেন। গুরুতর আহত ২৫ জন।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিস্ফোরণের পর প্রায় ১৯ ঘণ্টা পর সীমা অক্সিজেন লিমিটেডের কর্মকর্তার দেখা মিলেছে। আজ রোববার বেলা সাড়ে ১১টায় কারখানা প্রাঙ্গণে উপস্থিত হন প্ল্যান্টের ব্যবস্থাপক আবদুল আলীম। এ সময় তিনি সাংবাদিকদের কাছে দাবি করেন, বিস্ফোরণে তাঁদের ৫০ কোটি টাকার ক্ষতি হয়েছে। এরপরও আহত ও নিহত ব্যক্তিদের পরিবারকে সহযোগিতায় মালিকপক্ষ সর্বাত্মক করছে, করবে। প্রশাসনের সঙ্গে সমন্বয় করে আর্থিক সহায়তা দেওয়া হবে। আর যেসব ঘরবাড়ি ক্ষতিগ্রস্ত হয়েছে, তা সংস্কার করে দেওয়া হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;দেরি করে কারখানা প্রাঙ্গণে উপস্থিত হওয়ার বিষয়ে ব্যবস্থাপক আবদুল আলীম বলেন, তিনি অসুস্থ। অসুস্থতার কথা বলে সাংবাদিকদের এড়িয়ে যাওয়ার চেষ্টা করেন তিনি। তাঁর সঙ্গে থাকা লোকজনও সাংবাদিকদের প্রশ্ন করতে বাধা দেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;তবে সাংবাদিকদের এক প্রশ্নের জবাবে আবদুল আলীম বলেন, কী কারণে দুর্ঘটনা, তা এ মুহূর্তে বলা যাচ্ছে না। অক্সিজেন রিফুয়েলিং প্ল্যান্টে সচরাচর দুর্ঘটনা ঘটে না। কেন ঘটেছে, তা তাঁরাও বুঝতে পারছেন না। তাঁদের ফায়ার সার্ভিস, বিস্ফোরক পরিদপ্তরসহ সব সংস্থার ছাড়পত্র, সনদ নেওয়া ছিল।&lt;/p&gt;\r\n\r\n&lt;p&gt;২০১৮ সালে ১০ কোটি টাকা ব্যয়ে অক্সিজেন প্ল্যান্টটা চালু করা হয় বলে জানান আবদুল আলীম। শ্রমিকদের বিমা করা ছিল কি না জানতে চাইলে তিনি বলেন, এটা মালিকপক্ষ ভালো বলতে পারবে। সাংবাদিকেরা একের পর এক প্রশ্ন করতে থাকলে আবদুল আলীমের সঙ্গে থাকা লোকজন তাঁকে কারখানা থেকে বের করে নিয়ে যান।&lt;/p&gt;\r\n\r\n&lt;p&gt;কারখানাটি ঢাকা-চট্টগ্রাম মহাসড়কের পাশে অবস্থিত। বিস্ফোরণে কারখানার আশপাশের অন্তত এক বর্গকিলোমিটার এলাকা কেঁপে ওঠে। এমনকি বিস্ফোরণস্থল থেকে প্রায় আধা কিলোমিটার দূর পর্যন্ত উড়ে যায় লোহার পাত। বিস্ফোরণে লোহার পাত আধা কিলোমিটার দূর পর্যন্ত উড়ে যায়। এ লোহার পাতের আঘাতে দুজন মারা যান। তাঁদের একজন সালাহউদ্দিন, অপরজন সামশুল আলম। সামশুলের বাড়ি জাহানপুরে। ঘটনার সময় তিনি কদমরসুলের একটি দোকানের ভেতরে ছিলেন। লোহার পাত দোকানের টিনের চালা ছিদ্র করে ভেতরে ঢুকে তাঁর মাথায় আঘাত করে। এতে তাঁর মৃত্যু হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/05032356b61359637910e.webp', 'ছবি: সংগৃহীত', 'samojug.com/samojugnews', 0, 0, '3', '2023-03-05 07:57:16', 0, 1),
(148, 'samojugc_datatable', 5, 59, 'ইরানে মেয়েদের স্কুলে আবারও বিষাক্ত গ্যাস প্রয়োগ, অভিভাবকদের বিক্ষোভ', 'ইরানে মেয়েদের স্কুলে আবারও বিষাক্ত গ্যাস প্রয়োগ, অভিভাবকদের বিক্ষোভ', '&lt;p&gt;ইরানে আবারও মেয়েদের স্কুলে বিষাক্ত গ্যাস প্রয়োগের ঘটনা ঘটেছে। গতকাল শনিবার দেশটির ১০টি প্রদেশের ৩০টির বেশি স্কুলে এ ঘটনা ঘটেছে। এতে অসংখ্য শিক্ষার্থী অসুস্থ হয়ে হাসপাতালে ভর্তি আছে। এ ঘটনার প্রতিবাদে বিক্ষোভে নেমেছেন উদ্বিগ্ন অভিভাবকেরা।&lt;/p&gt;\r\n\r\n&lt;p&gt;গতকাল রাজধানী তেহরানসহ অন্য শহরগুলোতেও এ বিক্ষোভ শুরু হয় বলে দেশটির সংবাদ সংস্থা ও সামাজিক যোগাযোগমাধ্যমে পোস্ট করা ভিডিওর মাধ্যমে জানা গেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;গত তিন মাসে ইরানজুড়ে স্কুলছাত্রীদের মধ্যে শ্বাসকষ্টের শত শত ঘটনার খবর এসেছে। একজন সরকারি কর্মকর্তা বলেন, মেয়েদের স্কুলগুলো জোর করে বন্ধ করার চেষ্টা হতে পারে এটি।&lt;/p&gt;\r\n\r\n&lt;p&gt;দেশটির স্বাস্থ্যমন্ত্রী বলেন, মেয়েদের &amp;lsquo;হালকা বিষ&amp;rsquo; প্রয়োগ করা হয়েছে। কিছু কিছু রাজনীতিক বলছেন, মেয়েদের শিক্ষার বিরোধিতাকারী কট্টর ইসলামপন্থী গোষ্ঠীগুলো এ ঘটনা ঘটাতে পারে।&lt;/p&gt;\r\n\r\n&lt;p&gt;ইরানের স্বরাষ্ট্রমন্ত্রী আবদুলরেজা রহমানি ফাজলি গতকাল এক বিবৃতিতে বলেছেন, এ ঘটনায় তদন্তকারীরা &amp;lsquo;সন্দেহজনক নমুনা&amp;rsquo; পেয়েছেন। শিক্ষার্থীদের অসুস্থতার কারণ জানতে তা পরীক্ষা করা হচ্ছে। এর ফল দ্রুত প্রকাশ করা হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;গতকালও ১০টি প্রদেশের ৩০টির বেশি স্কুলে বিষাক্ত গ্যাস প্রয়োগের ঘটনা ঘটেছে। সামাজিক যোগাযোগমাধ্যমে পোস্ট করা এ-সংক্রান্ত ভিডিও চিত্রে দেখা গেছে, এ ঘটনা জানার পর সন্তানদের বাসায় নিয়ে যাওয়ার জন্য স্কুলের সামনে জড়ো হয়েছেন অভিভাবকেরা। কাউকে কাউকে আবার অ্যাম্বুলেন্স বা বাসে করে হাসপাতালে নিয়ে যেতে দেখা গেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;রয়টার্সের যাচাই করা আরেকটি ভিডিও চিত্রে দেখা গেছে, এ ঘটনার পর গতকাল তেহরানের শিক্ষা মন্ত্রণালয় ভবনের সামনে জড়ো হয়ে বিক্ষোভ করছেন অভিভাবকেরা। এ বিক্ষোভ পরে সরকারবিরোধী বিক্ষোভে পরিণত হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;গেহরান ছাড়াও ইসফাহান, রাসত শহরসহ অন্যান্য এলাকাতেও এ বিক্ষোভ ছড়িয়ে পড়েছিল বলে আরেকটি ভিডিও চিত্রে দেখা গেছে; যদিও এটি যাচাই করা যায়নি।&lt;/p&gt;\r\n\r\n&lt;p&gt;ইরানের কঠোর পর্দাবিধি লঙ্ঘনের অভিযোগে গত বছর ১৩ সেপ্টেম্বর ২২ বছর বয়সী কুর্দি তরুণী মাসা আমিনিকে গ্রেপ্তার করা হয়। পুলিশের হেফাজতে ১৬ সেপ্টেম্বর তাঁর মৃত্যু হয়। মাসার মৃত্যুর ঘটনায় ইরানে সরকারবিরোধী বিক্ষোভ ছড়িয়ে পড়ে।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিক্ষোভকারীরা গণতন্ত্র, স্বাধীনতা ও নারী অধিকার দাবি করেন। বিক্ষোভ রুখতে দমনপীড়ন চালায় ইরান সরকার। এখন মেয়েদের স্কুলে যাওয়া বন্ধে বিষপ্রয়োগের বিষয়টি সামনে এল।&lt;/p&gt;\r\n\r\n&lt;p&gt;সাম্প্রতিক দিনগুলোয় সামাজিক যোগাযোগমাধ্যমে পোস্ট করা ভিডিও চিত্রগুলোয় দেখা গেছে, স্কুলে মেয়েরা হঠাৎ অসুস্থ হয়ে পড়ছে। তারা বমি বমি ভাব অনুভব করছে এবং হৃৎস্পন্দন বেড়ে যাচ্ছে। কেউ কেউ শুধু মাথাব্যথার অভিযোগ করেছে। এসব ভিডিও যাচাই করা যায়নি।&lt;/p&gt;\r\n\r\n&lt;p&gt;ইরানের পার্লামেন্টের স্বাস্থ্য কমিটির মুখপাত্র জাহরা শেখ গত বুধবার বলেছিলেন, গত বছরের নভেম্বরে থেকে রহস্যময় এ বিষক্রিয়ার ঘটনা শুরু হলে এখন পর্যন্ত প্রায় ১ হাজার ২০০ শিক্ষার্থীকে শ্বাসকষ্টের জন্য হাসপাতালে ভর্তি করতে হয়েছে। তাদের মধ্যে প্রায় ৮০০ জনই তেহরানের দক্ষিণে পবিত্র কোম শহরের।&lt;/p&gt;\r\n\r\n&lt;p&gt;এসব ঘটনায় গত শুক্রবার জেনেভায় জাতিসংঘের মানবাধিকার অফিস স্কুলছাত্রীদের ওপর এমন হামলার স্বচ্ছ তদন্তের আহ্বান জানিয়েছে এবং জার্মানি ও যুক্তরাষ্ট্র উদ্বেগ প্রকাশ করেছে। তবে ইরান এ ধরনের বিদেশি হস্তক্ষেপ প্রত্যাখ্যান করে বলেছে, ঘটনার কারণ অনুসন্ধান চলছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;ইরানের পররাষ্ট্র মন্ত্রণালয়ের মুখপাত্র নাসের কানানি রাষ্ট্রীয় গণমাধ্যমকে বলেছেন, ইরান সরকারের তাৎক্ষণিক অগ্রাধিকারের মধ্যে একটি হলো এ সমস্যা যত দ্রুত সম্ভব সমাধানের চেষ্টা করা, পরিবারের উদ্বেগ নিরসনের জন্য নথিভুক্ত তথ্য সরবরাহ এবং অপরাধীদের জবাবদিহির আওতায় আনা।&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/050323fe9ff6491ab84cb.webp', 'ইরানে মেয়েদের স্কুলে বিষাক্ত গ্যাস প্রয়োগের ঘটনায় শতাধিক শিক্ষার্থী অসুস্থ হয়ে হাসপাতালে ভর্তি হয়েছে', 'samojug.com/samojugnews', 0, 0, '0', '2023-03-05 08:01:14', 0, 1),
(149, 'samojugc_datatable', 5, 60, 'যেসব কারণে বিশ্বব্যাংকের বাজেট সহায়তা পেতে অনিশ্চয়তা', 'যেসব কারণে বিশ্বব্যাংকের বাজেট সহায়তা পেতে অনিশ্চয়তা', '&lt;p&gt;বাংলাদেশের জন্য চলতি জুনের মধ্যে বিশ্বব্যাংকের ডেভেলপমেন্ট পলিসি ক্রেডিটের (ডিপিসি) আওতায় শেষ কিস্তি হিসেবে যে ২৫ কোটি ডলার বাজেট সহায়তার অর্থ ছাড় করার কথা ছিল, সেই অর্থ এ সময়ের মধ্যে পাওয়ার সম্ভাবনা এখন কম বলে জানা গেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিশ্বব্যাংকের দেওয়া শর্ত পূরণে বিলম্ব হওয়া এবং আন্তর্জাতিক মুদ্রা তহবিলের (আইএমএফ) ঋণের শর্তের সঙ্গে ওই সব শর্ত সমন্বয় করার পরিকল্পনার কারণে আগামী জুন মাসের মধ্যে ডিপিসির ২৫ কোটি ডলার তহবিল ছাড় নিয়ে অনিশ্চয়তা দেখা দিয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;অর্থনৈতিক সম্পর্ক বিভাগ (ইআরডি) সূত্রে এসব তথ্য জানা গেছে।&lt;br /&gt;\r\nতবে কর্মকর্তারা বলছেন যে সরকার এখন ২৫ কোটি ডলারের একটি তহবিল অন্য খাত থেকে পেতে আগ্রহী। এ ক্ষেত্রে বাস্তবায়নে গতি কম বিশ্বব্যাংকের সহায়তাপুষ্ট এমন ছয়টি প্রকল্প থেকে অর্থ আনতে চায় সরকার। এ নিয়ে এরই মধ্যে এক দফা বৈঠকও হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;ডিপিসির আওতায় সব মিলিয়ে ৭৫ কোটি ডলার বাজেট সহায়তা পাওয়ার কথা ছিল বাংলাদেশের। এ পর্যন্ত দুই কিস্তিতে ৫০ কোটি ডলার ছাড় হয়েছে। কথা ছিল, বাংলাদেশ আগামী জুন মাসের মধ্যে শেষ কিস্তির ২৫ কোটি ডলার পাবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;আইএমএফ শর্তের সঙ্গে সমন্বয়&lt;/strong&gt;&lt;br /&gt;\r\nবিশ্বব্যাংকের এ বাজেটে সহায়তা পেতে মোটাদাগে ১২টি শর্ত আছে। এর মধ্যে অন্যতম হলো &amp;nbsp;ব্যাংক কোম্পানি আইন চালু করা এবং ট্যারিফ নীতির অনুমোদন দেওয়া। বড় শর্তগুলোর মধ্যে এই দুটি শর্ত পূরণ বাকি ছিল। বিশ্বব্যাংকের বাজেট সহায়তা কিস্তি ছাড়ের নিয়ম হলো, যখন সব শর্ত পূরণ হবে, তখন শেষ কিস্তির অর্থ ছাড় হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এরই মধ্যে সরকার আইএমএফের সঙ্গে ৪৭০ কোটি ডলারের বাজেট সহায়তা কর্মসূচিতে গেছে এবং দাতা সংস্থাটি ইতিমধ্যে প্রথম কিস্তির অর্থ ছাড়ও করেছে। ঋণ অনুমোদনে সময় দেওয়া আইএমএফের শর্তগুলো পূরণে একটি সময়সীমা ঠিক করে দেওয়া হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;আইএমএফের শর্তের অন্যতম হলো আগামী সেপ্টেম্বরের মধ্যে ব্যাংক কোম্পানি আইন সংশোধন। সরকারের পরিকল্পনা হলো, আইএমএফের শর্তের সঙ্গে মিলিয়ে আগামী জুলাই মাস থেকে সংশোধিত আইন কার্যকর করা। ফলে যেহেতু নতুন অর্থবছর শুরুর আগে সংশোধিত ব্যাংক কোম্পানি আইন চালু করা সম্ভব হচ্ছে না, তাই জুনের আগে বিশ্বব্যাংকের বাজেট সহায়তার ২৫ কোটি ডলার পাওয়ার এ শর্ত পূরণ হওয়ার সম্ভাবনা ক্ষীণ।&lt;/p&gt;\r\n\r\n&lt;p&gt;অন্যদিকে বিশ্বব্যাংকের দেওয়া ট্যারিফ পলিসি অনুমোদনের শর্তটিও আইএমএফের শুল্ক-কর অব্যাহতি কমানোর শর্তের কারণে আটকে গেছে। ট্যারিফ পলিসি তৈরির উদ্যোগ নিয়েছে ট্যারিফ কমিশন। কিন্তু শুল্ক-কর অব্যাহতি দেয় জাতীয় রাজস্ব বোর্ড (এনবিআর)।&lt;/p&gt;\r\n\r\n&lt;p&gt;তবে আইএমএফের শর্ত পূরণ করতে এনবিআর ইতিমধ্যে একটি কমিটি গঠন করেছে। সেই কমিটি কোন খাতে কত শুল্ক-কর অব্যাহতি দেওয়া হয়েছে, কীভাবে অব্যাহতি কমানো যায়, তা নিয়ে বাজেটের আগেই প্রতিবেদন তৈরি করবে। ফলে ট্যারিফ কমিশনের ট্যারিফ পলিসির সঙ্গে এনবিআরের প্রতিবেদন সমন্বয় করতেও কয়েক মাস সময় লেগে যাবে। তাই আগামী জুন মাসের আগে ট্যারিফ পলিসি হওয়ার সম্ভাবনা কম।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ বিষয়ে ইআরডির এক কর্মকর্তা প্রথম আলোকে বলেন, এক প্রকল্প থেকে না পাওয়া গেলে আরেক প্রকল্পের অর্থ ব্যবহার অতীতেও হয়েছে। বিশ্বব্যাংক যেহেতু বাংলাদেশের জন্যই অর্থ বরাদ্দ করেছে, তাই এখন আলোচনার মাধ্যমে দুই পক্ষের সমঝোতার ভিত্তিকে এই অর্থ অন্য প্রকল্পে ব্যবহার করার চিন্তাভাবনা চলছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;অর্থ কোথায় পাওয়া যাবে&lt;/strong&gt;&lt;br /&gt;\r\nঅর্থনৈতিক সম্পর্ক বিভাগ গত বৃহস্পতিবার বিশ্বব্যাংকের সহায়তাপুষ্ট কম অগ্রগতির ছয়টি প্রকল্পের পরিচালকদের সঙ্গে একটি বৈঠক করেছে। ওই ছয়টি প্রকল্পের বাস্তবায়ন হার এখন পর্যন্ত ১০ শতাংশের কম। তাই এসব প্রকল্প থেকে সরকার ২৫ কোটি ডলার অন্য খাতে নিতে চায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ ছাড়া আগামী জুন মাসের মধ্যে গ্রিন, রেসিলিয়েন্ট ইনক্লুসিভ ডেভেলপমেন্ট (গ্রিড) শিরোনামের নতুন কর্মসূচির মাধ্যমে আরও প্রায় ৭৫ কোটি ডলার নতুন বাজেট সহায়তা নিয়ে আলোচনায় প্রায় চূড়ান্ত হয়ে আছে। এই কর্মসূচির আওতায় আগামী জুনের মধ্যে প্রথম কিস্তির ২৫ কোটি ডলার পাওয়ার কথা আছে। সেই ২৫ কোটি ডলারের সঙ্গে কম বাস্তবায়ন হওয়া বিভিন্ন প্রকল্প থেকে আরও ২৫ কোটি ডলার মোট ৫০ কোটি ডলারের ছাড় চায় বাংলাদেশ।&lt;/p&gt;\r\n\r\n&lt;p&gt;কর্মকর্তারা বলছেন, মূলত ডিপিসির ২৫ কোটি ডলার ছাড়ের অনিশ্চয়তা পুষিয়ে নিতেই সরকারের এ উদ্যোগ ইআরডি সূত্রে জানা গেছে, বিশ্বব্যাংকের সহায়তাপুষ্ট কম বাস্তবায়ন প্রকল্পগুলোর মধ্য থেকে বাংলাদেশ ব্যাংকের ইনভেস্টমেন্ট প্রমোশন অ্যান্ড ফিন্যান্সিং ফ্যাসিলিটিজ প্রকল্প থেকে ১০ কোটি ডলার নেওয়ার পরিকল্পনা করা হচ্ছে। এ প্রকল্পে সব মিলিয়ে ৩৫ কোটি ডলার দেওয়ার কথা ছিল বিশ্বব্যাংকের। ২০১৭ সালে শুরু হয়ে এ প্রকল্পের নির্ধারিত মেয়াদ গত বছরের জুনে শেষ হয়ে গেছে। তবে এ প্রকল্পে বরাদ্দ করা পুরো অর্থ এখনো খরচ না হওয়ায় সরকার বাকি অর্থ অন্য খাতে ব্যবহার করতে চায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ ছাড়া গ্রামাঞ্চলে ছোট ছোট সেতু নির্মাণের একটি প্রকল্প থেকে সাড়ে আট কোটি ডলার নিতে চায় সরকার। এ প্রকল্পে বিশ্বব্যাংক সাড়ে ৪২ কোটি ডলার দেওয়ার কথা ছিল। প্রকল্পটির মেয়াদ আগামী জুনে শেষ হবে। কিন্তু এটিরও বাস্তবায়ন ১০ শতাংশের কম।&lt;/p&gt;\r\n\r\n&lt;p&gt;বাকি সাড়ে সাত কোটি ডলার প্রাণিসম্পদ, শিক্ষা, অবকাঠামো খাতের আরও কিছু কম অগ্রগতির প্রকল্প থেকে নেওয়ার পরিকল্পনা করা হচ্ছে। এসব অর্থ বাংলাদেশের জন্য বরাদ্দ থাকলেও এক প্রকল্প থেকে আরেক প্রকল্পে ব্যবহার করতে বিশ্বব্যাংকের বোর্ড সভার অনুমোদন লাগবে বলে ইআরডি সূত্রে জানা গেছে।&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/050323fb266379563ca0d.webp', 'ছবি: সংগৃহীত', 'samojug.com/samojugnews', 0, 0, '0', '2023-03-05 08:22:00', 0, 1),
(150, 'samojugc_datatable', 5, 60, 'মাঝারি মাত্রায় বাড়বে চীনের অর্থনীতি, এ বছরের লক্ষ্য ৫ শতাংশ প্রবৃদ্ধি', 'মাঝারি মাত্রায় বাড়বে চীনের অর্থনীতি, এ বছরের লক্ষ্য ৫ শতাংশ প্রবৃদ্ধি', '&lt;p&gt;করোনা মহামারির কারণে দফায় দফায় বিধিনিষেধের মধ্যে ছিল চীন। এতে বিভিন্ন প্রদেশের অর্থনৈতিক কর্মকাণ্ড কমে আসে, প্রবৃদ্ধিও কমে যায়। সেই অবস্থা থেকে এখন বের হয়ে আসছে চাইছে দেশটি। এ জন্য চলতি অর্থবছরে (২০২৩) মোট দেশজ উৎপাদনে (জিডিপি) &amp;lsquo;প্রায় ৫ শতাংশ&amp;rsquo; প্রবৃদ্ধির আনুষ্ঠানিক লক্ষ্যমাত্রা নির্ধারণ করেছে বিশ্বের দ্বিতীয় বৃহত্তম অর্থনীতির দেশ চীন। খবর সিএনএনের।&lt;/p&gt;\r\n\r\n&lt;p&gt;চীনের আইনসভা ন্যাশনাল পিপলস কংগ্রেসের (এনপিসি) বার্ষিক অধিবেশনের উদ্বোধনের সময় গতকাল শনিবার দেশটির বিদায়ী প্রধানমন্ত্রী লি কেছিয়াং এ তথ্য জানান।&lt;/p&gt;\r\n\r\n&lt;p&gt;লি কেছিয়াং বলেন, করোনার ধাক্কা কাটিয়ে চীনের অর্থনীতি বর্তমানে একটি পুনরুদ্ধার কার্যক্রমের মধ্যে রয়েছে। একই সঙ্গে আরও প্রবৃদ্ধির জন্য বিপুল সম্ভাবনা দেখা যাচ্ছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এনপিসির উদ্বোধনী অধিবেশনে সারা দেশের তিন হাজার প্রতিনিধি অংশ নেন। তাঁদের সামনে খসড়া বাজেটসহ বিভিন্ন অর্থনৈতিক প্রতিবেদন পেশ করা হয়। তাতে দেশটিতে কর্মসংস্থান বৃদ্ধির পাশাপাশি বেকারত্ব কমার পরিসংখ্যান তুলে ধরা হয়। প্রতিবেদনে বলা হয়েছে, চীনের শহরাঞ্চলে নতুন করে ১ কোটি ২০ লাখ নতুন কাজের সুযোগ তৈরি হয়েছে। এর মাধ্যমে বেকারত্বের হার ৫ দশমিক ৫ শতাংশে নেমে এসেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;করোনার কারণে ২০২০ সাল থেকে চীনে অর্থনৈতিক প্রবৃদ্ধি কমতে থাকে। ২০২২ সালে তা ৩ শতাংশে নেমে আসে। মূলত &amp;lsquo;শূন্য কোভিড নীতি&amp;rsquo;র কারণে দেশটিতে অর্থনৈতিক কর্মকাণ্ড কমে যায়। সরবরাহব্যবস্থায় সমস্যা দেখা দেয় ও কারখানাগুলোয় উৎপাদন কমে যায়। এর প্রভাব পরে প্রবৃদ্ধিতে।&lt;/p&gt;\r\n\r\n&lt;p&gt;সেই অবস্থা কাটিয়ে ওঠার চেষ্টায় রয়েছে দেশটি। গত ডিসেম্বরে শূন্য কোভিড নীতি থেকে বের হয়ে আসে চীন। এতে চলতি বছরের জানুয়ারি থেকে সেখানে অর্থনৈতিক কর্মকাণ্ড বাড়তে শুরু করে। গত বুধবার প্রকাশিত সরকারি তথ্যে দেখা গেছে, চীনের কারখানাগুলোর কার্যক্রম ফেব্রুয়ারি মাসে গত প্রায় ১১ বছরের মধ্যে সর্বোচ্চ অবস্থায় পৌঁছে। সেবা ও সরবরাহ খাতও ভালো করেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;অর্থনৈতিক উন্নতির বিষয়টি উঠে এসেছে ঋণমান যাচাইকারী বৈশ্বিক সংস্থা মুডিস-এর পূর্বাভাসেও। ২০২৩ ও ২০২৪ সালে চীনের জন্য ৫ শতাংশ প্রবৃদ্ধির পূর্বাভাস দিয়েছে মুডিস। গত বছর তা ৪ শতাংশ ছিল।&lt;/p&gt;\r\n\r\n&lt;p&gt;তবে কোনো কোনো বিশেষজ্ঞ অনুমান করেছিলেন যে চলতি অর্থবছরের জন্য আরও বেশি (৫ শতাংশের বেশি) প্রবৃদ্ধির লক্ষ্যমাত্রা নির্ধারণ করবে উচ্চাভিলাষী চীন। তবে সে রকম কিছু খসড়া বাজেটে দেখা যায়নি।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ ছাড়া আগামী মঙ্গলবার চলতি বছরের প্রথম দুই মাসের আমদানি ও রপ্তানি তথ্য প্রকাশ করবে চীন। এটি থেকেও বিশ্ব বাণিজ্যে চীনের অবস্থানের একটি ধারণা পাওয়া যাবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এদিকে অর্থনৈতিক ক্ষেত্রে চীনের জন্য সুখবর থাকলেও বৈশ্বিক অর্থনীতি আরও দুর্বল হবে বলে বিভিন্ন সংস্থা জানিয়েছে। এর মূল কারণ রাশিয়া-ইউক্রেন যুদ্ধ ও বিভিন্ন দেশে ক্রমবর্ধমান সুদের হার। আন্তর্জাতিক মুদ্রা তহবিল গত জানুয়ারিতে জানিয়েছে, ২০২৩ সালে বৈশ্বিক প্রবৃদ্ধি ৩ দশমিক ৪ শতাংশ থেকে কমে ২ দশমিক ৯ শতাংশে নেমে আসবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;খসড়া বাজেটে ২০২৩ সালের জন্য চীনের সামরিক বাজেট সম্পর্কেও জানানো হয়েছে। তাতে দেখা যায়, চলতি বছর দেশটির সামরিক খাতের বরাদ্দ ৭ দশমিক ২ শতাংশ বৃদ্ধি করে ২২ হাজার ৪০০ কোটি মার্কিন ডলার করা হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;দক্ষিণ চীন সাগরে আধিপত্য বাড়ানো এবং তাইওয়ান ও হংকং ইস্যুতে কয়েক বছর ধরেই যুক্তরাষ্ট্রের নেতৃত্বাধীন বলয়ের সঙ্গে উত্তেজনা চলছে চীনের। উভয় পক্ষই মাঝেমধ্যে সামরিক মহড়া দিচ্ছে ওই অঞ্চলে। ফলে চলতি বছর চীনের সামরিক ব্যয় কিছুটা যে বাড়বে, তা অনুমিতই ছিল। তারই প্রতিফলন দেখা গেছে খসড়া বাজেটে।&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0503238a7048b5590ae3a.webp', 'ছবি: সংগৃহীত', 'samojug.com/samojugnews', 0, 0, '0', '2023-03-05 08:27:49', 0, 1),
(151, 'samojugc_datatable', 5, 61, 'রোনালদোকে বাদ দেওয়ার পর ভালো ঘুমই হয়েছে টেন হাগের', 'রোনালদোকে বাদ দেওয়ার পর ভালো ঘুমই হয়েছে টেন হাগের', '&lt;p&gt;একটা সময় ছিল, বলতে গেলে&lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%95%E0%A7%8D%E0%A6%B0%E0%A6%BF%E0%A6%B8%E0%A7%8D%E0%A6%9F%E0%A6%BF%E0%A7%9F%E0%A6%BE%E0%A6%A8%E0%A7%8B-%E0%A6%B0%E0%A7%8B%E0%A6%A8%E0%A6%BE%E0%A6%B2%E0%A6%A6%E0%A7%8B&quot; target=&quot;_blank&quot;&gt; ক্রিস্টিয়ানো রোনালদো&lt;/a&gt; ছিলেন &lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%AE%E0%A7%8D%E0%A6%AF%E0%A6%BE%E0%A6%A8%E0%A6%9A%E0%A7%87%E0%A6%B8%E0%A7%8D%E0%A6%9F%E0%A6%BE%E0%A6%B0-%E0%A6%87%E0%A6%89%E0%A6%A8%E0%A6%BE%E0%A6%87%E0%A6%9F%E0%A7%87%E0%A6%A1&quot; target=&quot;_blank&quot;&gt;ম্যানচেস্টার ইউনাইটেডে&lt;/a&gt;র রাজা। কত কঠিন আর গুরুত্বপূর্ণ ম্যাচ যে তিনি জিতিয়েছেন ওল্ড ট্রাফোর্ডের দলটিকে।&lt;/p&gt;\r\n\r\n&lt;p&gt;জিতেছেন তিনটি প্রিমিয়ার লিগ, একটি চ্যাম্পিয়নস লিগসহ ইউনাইটেডের হয়ে ৯টি শিরোপা। সেই রোনালদোই দ্বিতীয় মেয়াদে ইউনাইটেডে নাম লেখানোর পর ব্রাত্য হয়েছেন, দল থেকে বাদ পড়েছেন, বিতর্কিত সাক্ষাৎকার দিয়ে ক্লাবের সঙ্গে চুক্তিও খুইয়েছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ সবই ঘটেছে কোচ এরিক টেন হাগের সময়ে। রোনালদোর মতো খেলোয়াড়কে দল থেকে বাদ দেওয়া&amp;mdash;এই সিদ্ধান্ত নেওয়ার সময় কতটা চাপে ছিলেন টেন হাগ? ইউনাইটেডের কোচের উত্তর শুনলে অবশ্য মনে হবে, সেই চাপ তাঁকে খুব একটা কাবু করতে পারেনি।&lt;/p&gt;\r\n\r\n&lt;p&gt;রোনালদো থাকাকালে মাঠে খুব একটা ভালো সময় কাটেনি ইউনাইটেডের। ২০২২-২৩ মৌসুমের শুরুর কয়েক মাস ম্যানচেস্টার ইউনাইটেডের আলোচনায় ঘুরেফিরে আসত ক্রিস্টিয়ানো রোনালদোর নাম। যার প্রায় সবই ছিল নেতিবাচক। এর প্রভাব পড়ত দলের পারফরম্যান্সে। মাঠেও সীমিত সুযোগ পেয়ে তেমন কিছুই করতে পারেননি রোনালদো।যে চিত্র পাল্টে গেছে বিশ্বকাপ-বিরতির পর। আরও স্পষ্ট করে বললে রোনালদো ক্লাব ছাড়ার পর। সেই ম্যানচেস্টার ইউনাইটেডও ইউরোপের শীর্ষ পাঁচ লিগ মিলিয়ে এখন পর্যন্ত সবচেয়ে বেশি (৩০) জয় পাওয়া দল। ৬ বছর পর জিতেছে শিরোপাও। শিরোপার লড়াইয়ে আছে বাকি তিন প্রতিযোগিতাতেও।&lt;/p&gt;\r\n\r\n&lt;p&gt;শুধু রোনালদোকে নয়, টেন হাগকে একাদশের বাইরে রাখতে হয়েছে তখনকার ইউনাইটেড অধিনায়ক ডিফেন্ডার হ্যারি ম্যাগুয়ারকেও। এমন বড় নাম দলের বাইরে রাখার সিদ্ধান্ত নিয়ে সফলই হয়েছেন টেন হাগ। পরিসংখ্যান অন্তত সে কথাই বলছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;সফল হলেও এর ফল যে অন্য রকমও হতে পারত, সেটাও মাথায় ছিল ইউনাইটেডের কোচের। এরপরও ক্লাবের স্বার্থেই এই সিদ্ধান্ত নিতে হয়েছে তাঁকে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%B2%E0%A6%BF%E0%A6%AD%E0%A6%BE%E0%A6%B0%E0%A6%AA%E0%A7%81%E0%A6%B2&quot; target=&quot;_blank&quot;&gt;লিভারপুল&lt;/a&gt; ম্যাচের আগে সংবাদ সম্মেলনে টেন হাগ বলেছেন, &amp;lsquo;আসলে আমার কাছে কারণ ছিল, যা এড়িয়ে যাওয়ার সুযোগ ছিল না। আমি জানতাম এর ফল কী হতে পারে, যদি সিদ্ধান্ত পক্ষে না আসত। আর ফুটবলে তো এটা হয়েই থাকে। কিন্তু আমি আসলে উদ্বিগ্ন ছিলাম না, ভালো ঘুমিয়েছিলামও ওই দিনগুলোতেও। ক্লাবের স্বার্থে, ক্লাবকে সামনে এগিয়ে নিতে আমাকে সিদ্ধান্তগুলো নিতে হয়েছে। এটাই আমার কাজ, এই দায়িত্বটা আমার নিতেই হতো।&amp;rsquo;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/050323019d6ea7041d310.webp', 'রোনালদোর সঙ্গে ইউনাইটেড কোচ এরিক টেন হাগ', 'samojug.com/samojugnews', 0, 0, '0', '2023-03-05 08:35:12', 0, 1),
(152, 'samojugc_datatable', 5, 63, '‘আমার নাম এবং বাংলাদেশের নাম যখন বলা হলো, সত্যিই খুব অবাক হয়েছি’', '‘আমার নাম এবং বাংলাদেশের নাম যখন বলা হলো, সত্যিই খুব অবাক হয়েছি’', '&lt;p&gt;ক্রিকেট খেলতে গিয়ে ডান চোখে একবার প্রচণ্ড আঘাত পান মিজানুর রহমান। অস্ত্রোপচারও করা হয়েছিল, কিন্তু সফল হয়নি। আজীবনের জন্য দৃষ্টিশক্তি হারিয়ে ফেলেন মিজান। এসব ঘটনা যখন ঘটছে, তখন তিনি মাত্র তৃতীয় শ্রেণির ছাত্র।&lt;/p&gt;\r\n\r\n&lt;p&gt;মিজানুরের কম্পিউটারপ্রীতি অবশ্য তারও অনেক আগে থেকে। কিন্ডারগার্টেনে পড়ার সময় ফুফাতো ভাইয়ের কম্পিউটারে গেমস খেলতেন, নতুন জিনিস শেখার চেষ্টা করতেন। আবার বাজারে এক চাচার ছিল কম্পিউটারের দোকান। সেখানে মূলত কম্পিউটারের কাজ শেখানো হতো। নিয়মিত সেখানে গিয়ে বসে থাকতেন মিজান। দেখে দেখে শেখার চেষ্টা করতেন। আর এ কাজে তাঁকে সবচেয়ে বেশি সাহায্য করত তাঁর তুখোড় স্মৃতিশক্তি। একবার কোনো কিছু দেখলেই হুবহু মনে রাখতে পারতেন। এভাবে ব্যক্তিগত কম্পিউটার ছাড়াই কম্পিউটারের সঙ্গে সম্পর্কিত বেশির ভাগ কাজ নিজে নিজে শিখেছেন তিনি।&lt;/p&gt;\r\n\r\n&lt;p&gt;পঞ্চম শ্রেণিতে ওঠার পর মিজানুরের নিজের একটি কম্পিউটার হলো। তার আগেই অবশ্য অনেক কিছু শিখে ফেলেছিলেন তিনি। এবার পুরোনো পাঠই ঝালাই করতে শুরু করলেন। শিখন তালিকায় (টু-ডু লিস্টে) যুক্ত করলেন নতুন নানা কিছু।&lt;/p&gt;\r\n\r\n&lt;p&gt;এসবই অবশ্য অপ্রাতিষ্ঠানিক শিক্ষা। স্নাতক দ্বিতীয় বর্ষে পড়ার সময় ভর্তি হয়ে যান বাংলাদেশ কম্পিউটার কাউন্সিলে (বিসিসি)। সেখানে এমপাওয়ারমেন্ট অব পারসনস উইথ ডিজঅ্যাবিলিটিজ ইনক্লুডিং এনডিডি থ্রু আই&lt;/p&gt;\r\n\r\n&lt;p&gt;জাতীয় পর্যায়ের প্রতিযোগিতায় যাঁরা প্রথম, দ্বিতীয় ও তৃতীয় হন, তাঁরাই আন্তর্জাতিক পর্যায়ে গ্লোবাল আইটি চ্যালেঞ্জ ফর ইয়ুথ উইথ ডিজঅ্যাবিলিটিজে (জিআইটিসি) অংশ নিতে পারেন। বাংলাদেশ ছাড়াও ভারত, মালয়েশিয়া, চীন, কম্বোডিয়া, ইন্দোনেশিয়া, মঙ্গোলিয়া, রিপাবলিক অব কোরিয়া, পাকিস্তান, থাইল্যান্ড, সংযুক্ত আরব আমিরাত, ভিয়েতনামসহ মোট ১৬টি দেশ থেকে প্রতিযোগীরা অংশ নেন। বাংলাদেশ থেকে প্রতিদ্বন্দ্বিতা করেন মিজানুরসহ ১৭ জন। সবাইকে ছাড়িয়ে শেষ হাসি হেসেছেন মিজানুর। গ্লোবাল আইটি চ্যালেঞ্জের ই-লাইফম্যাপ বিভাগে ভিজ্যুয়াল সেক্টরে প্রথম এবং ই-টুল পাওয়ার পয়েন্ট বিভাগে তৃতীয় স্থান অর্জন করেন তিনি।&lt;/p&gt;\r\n\r\n&lt;p&gt;গ্লোবাল আইটি চ্যালেঞ্জের আয়োজক দেশ ছিল চীন। হঠাৎ করোনা প্রকোপ বেড়ে যাওয়ায় স্থগিত হয়ে যায় সে আয়োজন। বিকল্প উপায় হিসেবে তখন জুম অ্যাপের শরণাপন্ন হন আয়োজকেরা। সে ক্ষেত্রে এ প্রতিযোগিতায় আকর্ষণের কেন্দ্রবিন্দুতে পরিণত হয় &amp;lsquo;গ্লোবাল টক টক&amp;rsquo;। এর মাধ্যমে প্রতিযোগীরা নিজ দেশে থেকেই অন্যান্য দেশের প্রতিযোগীদের সঙ্গে ভিডিও কলে কথা বলা, আড্ডা দেওয়ার সুযোগটা পান। সেদিনের স্মৃতিচারণা করে মিজানুর রহমান বলেন, &amp;lsquo;এটা অনেক মজার ছিল। কারণ, ১৬টি দেশের অনেক প্রতিযোগীর সঙ্গে আমরা কথা বলেছি। তাঁদের সম্পর্কে জানতে পেরেছি।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রথমবারের মতো আন্তর্জাতিক কোনো প্রতিযোগিতায় অংশ নিয়েছেন মিজানুর। এতেই চ্যাম্পিয়ন। বলছিলেন, &amp;lsquo;যখন পুরস্কার ঘোষণা পর্ব শুরু হয়, তখন খুব রোমাঞ্চ কাজ করছিল। টেনশন হচ্ছিল। আমার নাম এবং বাংলাদেশের নাম যখন বলা হলো, সত্যিই খুব অবাক হয়েছি। আবেগতাড়িত হয়েছি। আমাদের প্রশিক্ষক শোয়াইব স্যার আমাকে আনন্দে জড়িয়ে ধরেছিলেন। বাংলাদেশ কম্পিউটার কাউন্সিলের প্রোগ্রাম ম্যানেজার গোলাম রাব্বানী স্যার, সিএসআইডির ইফতেখার স্যারসহ সবাই আমাকে অভিনন্দন জানিয়েছেন।&amp;rsquo; এ অর্জনকে কাজে লাগিয়ে আরও বহু দূর পথ পাড়ি দিতে চান মিজানুর রহমান।&lt;/p&gt;\r\n\r\n&lt;p&gt;সিটি প্রকল্পের অধীন বেসিক কম্পিউটার অ্যান্ড অ্যাপ্লিকেশন প্যাকেজেসে প্রশিক্ষণ নেন। এর দু-তিন মাস পর বিসিসি থেকে ন্যাশনাল আইটি চ্যালেঞ্জ ইয়ুথ উইথ ডিজঅ্যাবিলিটিজ (এনআইটিসি) প্রতিযোগিতা বিষয়ে মিজানুরকে জানানো হয়। মিজানুর তাতে সাড়া দেন এবং প্রথম স্থান অধিকার করেন।&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0503236a1d2d585ee3ccd.webp', 'পদক ও সম্মাননা পেয়েছেন মিজানুর', 'samojug.com/samojugnews', 0, 0, '0', '2023-03-05 08:40:46', 0, 1),
(153, 'samojugc_datatable', 5, 64, 'নিরাপত্তা প্রশ্নে বড় ঝুঁকি তৈরি করছে বট ম্যালওয়্যার', 'নিরাপত্তা প্রশ্নে বড় ঝুঁকি তৈরি করছে বট ম্যালওয়্যার', '&lt;p&gt;স্বয়ংক্রিয় ক্ষতিকর প্রোগ্রামিং সংকেত (কোড)-সংবলিত বট রোবট ম্যালওয়্যারের তৈরি করা ঝুঁকি দিন দিন বাড়ছে বলে সতর্ক করে এক প্রতিবেদন প্রকাশ করেছে নর্ড ভিপিএন। বট ম্যালওয়্যারের মাধ্যমে আক্রমণকারী ব্যবহারকারীর পুরো তথ্যের দখল নিতে পারে।&lt;/p&gt;\r\n\r\n&lt;p&gt;নর্ড ভিপিএনের গবেষণায় দেখা গেছে, ২০১৮ সাল থেকে এখন পর্যন্ত ৫০ লাখ মানুষের তথ্য বেহাত হয়েছে বট ম্যালওয়্যারের কারণে। এ ছাড়া আড়াই কোটির বেশি ব্যবহারকারীর ইউজারনেম ও পাসওয়ার্ড বেহাত হয়েছে। এর মধ্যে গুগল, মাইক্রোসফট ও ফেসবুকের ব্যবহারকারীর তথ্যও রয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;বট ম্যালওয়্যারকে সাধারণ ম্যালওয়্যারের থেকে বেশি বিপজ্জনক বলা হয়ে থাকে। কারণ, এ ম্যালওয়্যারের মাধ্যমে ব্যবহারকারীর সব তথ্য বেহাত হওয়ার শঙ্কা থাকে। এমনকি বহু স্তরের অথেনটিফিকেশন সুরক্ষা বলয়কে ভেঙেও এ ম্যালওয়্যারের মাধ্যমে তথ্য হাতিয়ে নেওয়া হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;সাধারণ পাসওয়ার্ড হ্যাক করা হলে এমএফএ বা বহুমুখী অথেনটিফিকেশন সুরক্ষা বলয় ভাঙতে পারেন না হ্যাকাররা। কিন্তু ভুক্তভোগীর কুকিজ ও যন্ত্রের কনফিগারেশন তথ্য থাকায় বট ম্যালওয়্যারের মাধ্যমে এমএফএ সুরক্ষা বলয় এড়িয়ে তথ্য চুরি করতে পারেন হ্যাকাররা। এমন ব্যাখ্যা উপস্থাপন করেছে নর্ড ভিপিএনের নিরাপত্তা বিশ্লেষকেরা। এ ম্যালওয়্যার থেকে সুরক্ষিত থাকতে অ্যান্টিভাইরাস, পাসওয়ার্ড ম্যানেজার ও ফাইল এনক্রিপশন টুল ব্যবহারের পরামর্শ দিয়েছেন বিশ্লেষকেরা।&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/050323d01821922152a8a.webp', 'ছবি: সংগৃহীত', 'samojug.com/samojugnews', 0, 0, '9', '2023-03-05 08:44:34', 0, 1),
(154, 'samojugc_datatable', 5, 65, 'মেডিকেল ভর্তি পরীক্ষার্থীদের জন্য যে যে নির্দেশনা দিল স্বাস্থ্য অধিদপ্তর', 'মেডিকেল ভর্তি পরীক্ষার্থীদের জন্য যে যে নির্দেশনা দিল স্বাস্থ্য অধিদপ্তর', '&lt;p&gt;দেশের সব মেডিকেল কলেজে ২০২২-২৩ শিক্ষাবর্ষে এমবিবিএস প্রথম বর্ষের ভর্তি পরীক্ষা ১০ মার্চ অনুষ্ঠিত হবে। সকাল ১০টায় শুরু হবে এক ঘণ্টার এ পরীক্ষা। এমবিবিএসে ভর্তি পরীক্ষার অংশ নেওয়া পরীক্ষার্থীদের জন্য কিছু নির্দেশনা দিয়েছে স্বাস্থ্য শিক্ষা অধিদপ্তর। স্বাস্থ্য শিক্ষা অধিদপ্তরের বিজ্ঞপ্তিতে দেওয়া নির্দেশনায় প্রশ্নপত্র নেওয়া ও উত্তরপত্র জমা নেওয়া, মুঠোফোন, ডিজিটাল ডিভাইস, ক্যালকুলেটর, হাতঘড়ি বা পকেটঘড়ি নিয়ে প্রবেশ করা সম্পূর্ণভাবে নিষিদ্ধ। এ ছাড়া আরও কিছু নির্দেশনা আছে শিক্ষার্থীদের জন্য।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;প্রশ্নপত্র ও উত্তরপত্রসংক্রান্ত নিয়মাবলি&lt;/strong&gt;&lt;br /&gt;\r\nউত্তরপত্রের ওপর মুদ্রিত ১০ অঙ্কের সেট কোডটি প্রশ্নপত্রে মুদ্রিত সেট কোডের সঙ্গে না মিললে কিংবা প্রশ্নপত্রে ক্রমানুসারে ১ থেকে ১০০টি প্রশ্ন না থাকলে উত্তরপত্রটি পরিবর্তন করে নিতে হবে। উত্তরপত্রের সব স্থানেই কালো কালির বলপেন ব্যবহার করতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;রোল নম্বর ও সিরিয়াল নম্বর নির্দিষ্ট স্থানে ইংরেজিতে লিখে এরপর সংশ্লিষ্ট বৃত্তগুলো তদানুযায়ী যথাযথভাবে ভরাট করতে হবে। কোনো প্রকার ঘষামাজা বা কাটাকাটি করলে উত্তরপত্র বাতিল বলে গণ্য হবে। বৃত্তগুলো এমনভাবে ভরাট করতে হবে যেন ভেতরের লেখাটি দেখা না যায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;উত্তরপত্রের নির্দিষ্ট স্থানে প্রবেশপত্র অনুযায়ী স্বাক্ষর প্রদান করতে হবে এবং স্পষ্টভাবে নাম লিখতে হবে, অন্যথায় উত্তরপত্র বাতিল বলে গণ্য হবে। উত্তর প্রদান করার আগে পরীক্ষার্থীকে প্রশ্নপত্রের সঙ্গে সংযুক্ত উত্তরপত্রটি নিজ দায়িত্বে সাবধানতার সঙ্গে আলাদা করে নিতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রশ্নপত্রের সঙ্গে দেওয়া উত্তরপত্রে প্রতিটি প্রশ্নের জন্য চারটি সম্ভাব্য উত্তরের বৃত্ত থাকবে। এর মধ্য থেকে সঠিক উত্তরের বৃত্তটি পরিচ্ছন্নভাবে ওপরে প্রদর্শিত নিয়ম মেনে সম্পূর্ণ ভরাট করতে হবে। উত্তরপত্রের নির্দিষ্ট বৃত্তগুলো ভরাট করা এবং নির্দেশিত স্থানে যথাযথ তথ্য প্রদান করতে হবে। এ ছাড়া অন্য কোনো স্থানে কিছু লিখা সম্পূর্ণ নিষিদ্ধ এবং লিখলে উত্তরপত্র বাতিল বলে গণ্য হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;খসড়ার জন্য প্রশ্নপত্র ব্যবহার করা যাবে। কোনো পৃথক কাগজ ব্যবহার করা যাবে না। প্রশ্নপত্রের কোনো অংশ ছেঁড়া যাবে না কিংবা কারও সঙ্গে বদল করা যাবে না। উত্তরপত্রে হল পরিদর্শকের স্বাক্ষর করার সময়ে পরীক্ষার্থীকে প্রশ্নপত্র ও উত্তরপত্র আলাদা করা অবস্থায় রাখতে হবে। উত্তরপত্রের নির্দিষ্ট স্থানে হল পরিদর্শকের স্বাক্ষর গ্রহণ এবং সম্পূর্ণ নাম লিখা নিশ্চিত করতে হবে। কর্তব্যরত হল পরিদর্শকের স্বাক্ষর ও নামবিহীন উত্তরপত্র বাতিল বলে গণ্য হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;পরীক্ষা শেষে হল পরিদর্শকেরা প্রশ্নপত্র ও উত্তরপত্র আলাদা অবস্থায় পরীক্ষার্থীর কাছ থেকে গ্রহণ করবেন এবং আলাদাভাবে নির্দিষ্ট খামে ভরবেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;উত্তরপত্র মূল্যায়ন নীতিমালা&lt;/strong&gt;&lt;br /&gt;\r\nপ্রতিটি সঠিক উত্তরের জন্য ১ নম্বর প্রদান করা হবে এবং প্রতিটি ভুল উত্তর দেওয়ার জন্য ০.২৫ নম্বর কাটা হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;কেন্দ্রে শৃঙ্খলাসংক্রান্ত নিয়মাবলি&lt;/strong&gt;&lt;br /&gt;\r\nপরীক্ষার্থীদের হল পরিদর্শকের নির্দেশ ও সিদ্ধা&lt;/p&gt;\r\n\r\n&lt;p&gt;ন্ত মেনে চলতে হবে। পরীক্ষা শেষ না হওয়া পর্যন্ত এবং হল পরিদর্শকের অনুমতি ছাড়া পরীক্ষার্থীদের পরীক্ষা কক্ষ ত্যাগ করতে দেওয়া হবে না। পরীক্ষার্থীকে অসুদপায় অবলম্বন অথবা বিশৃঙ্খলা সৃষ্টি করতে অথবা অন্যের সাহায্য নিতে অথবা অন্যকে সাহায্য করতে দেখা গেলে সংশ্লিষ্ট পরীক্ষার্থীর বিরুদ্ধে শাস্তিমূলক ব্যবস্থা নেওয়া হবে এবং তার উত্তরপত্র বাতিল বলে গণ্য হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;পরীক্ষার হলে মুঠোফোন, কোনো ধরনের ডিজিটাল ডিভাইস, ক্যালকুলেটর, হাতঘড়ি বা পকেটঘড়ি নিয়ে প্রবেশ করা সম্পূর্ণভাবে নিষিদ্ধ। এরপরও পরীক্ষার হলে কারও কাছে উল্লিখিত নিষিদ্ধ কোনো কিছু পাওয়া গেলে অথবা কাউকে এ ধরনের কোনো ডিভাইস ব্যবহার করতে দেখা গেলে তাঁর উত্তরপত্র বাতিল বলে গণ্য হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;পরীক্ষার হলে সব পরীক্ষার্থী কোভিড&amp;ndash;১৯ স্বাস্থ্যবিধি মেনে পরীক্ষায় অংশগ্রহণ করবেন। কোনো পরীক্ষার্থী পরীক্ষা চলাকালীন দুই কান ঢেকে রাখতে পারবেন না। হল পরিদর্শকেরা উত্তরপত্রে স্বাক্ষর দেওয়ার সময়ে শনাক্তকরণের জন্য প্রয়োজনে পরীক্ষার্থীর মুখমণ্ডল খোলার নির্দেশনা দিতে পারবেন।&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/050323c6efc22ea27afec.webp', 'প্রতীকী ছবি', 'samojug.com/samojugnews', 0, 0, '0', '2023-03-05 08:51:16', 1, 1),
(155, 'samojugc_datatable', 5, 66, '১৬১৩৬ নম্বরে কল করে পাওয়া যাবে হজের পরামর্শ', '১৬১৩৬ নম্বরে কল করে পাওয়া যাবে হজের পরামর্শ', '&lt;p&gt;হজ হেল্প লাইন ১২ মার্চ থেকে চালু করবে সরকার। ১৬১৩৬ নম্বরে কল করে পাওয়া যাবে হজ সংশ্লিষ্ট পরামর্শ। এ তথ্য জানিয়ে ২ মার্চ ধর্মবিষয়ক মন্ত্রণালয় থেকে প্রজ্ঞাপন জারি করা হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;উপ-সচিব আবুল কাশেম মুহাম্মদ শাহীন স্বাক্ষরিত পরিপত্রে বলা হয়, আগামী ১২ মার্চ হজ ব্যবস্থাপনার যুগান্তকারী পরিবর্তন হিসেবে হজ কল সেন্টারভিত্তিক শর্ট কোড (হজ হেল্প লাইন) &amp;lsquo;১৬১৩৬&amp;rsquo; উদ্বোধন করা হবে। এটি হজ ব্যবস্থাপনায় একটি বড় মাইলফলক।বর্তমানে হজ কল সেন্টারভিত্তিক শর্ট কোর্ড (হজ হেল্প লাইন) ১৬১৩৬ পরীক্ষামূলকভাবে চালু আছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;হজ গমনেচ্ছুদের সব ধরনের তথ্য হেল্প লাইনের মাধ্যমে যাবে। কবে ভিসা হবে, নিবন্ধন কীভাবে করতে হয় সে বিষয়ে যদি আরও কোনো সহযোগিতা লাগে। কেউ হয়তো নাম ভুল করেছে, কীভাবে তা সংশোধন করবে। হজ কার্যক্রম নিয়ে নানা ধরনের তথ্য থাকে, যেগুলো মানুষ জানতে চায়। সেসব বিষয়ে পরামর্শ মানুষ হেল্প লাইনে ফোন করে পারে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;চাঁদ দেখা সাপেক্ষে চলতি বছরের ২৭ জুন পবিত্র হজ হতে পারে। সৌদি আরবের সঙ্গে হজচুক্তি অনুযায়ী, এবার বাংলাদেশ থেকে এক লাখ ২৭ হাজার ১৯৮ জন হজ করতে পারবেন। এরমধ্যে সরকারি ব্যবস্থাপনায় ১৫ হাজার এবং অবশিষ্ট এক লাখ ১২ হাজার ১৯৮ জন বেসরকারি ব্যবস্থাপনায় হজ করার সুযোগ পাবেন।গত ৮ ফেব্রুয়ারি থেকে শুরু হয়েছে হজযাত্রী নিবন্ধন। চলবে ৭ মার্চ পর্যন্ত।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/050323a195e642288b1c4.webp', 'ছবি: সংগৃহীত', 'samojug.com/samojugnews', 0, 0, '0', '2023-03-05 08:57:06', 1, 1),
(156, 'samojugc_datatable', 5, 56, 'পঞ্চগড়ে ধর্মীয় সংঘাতের জন্য সরকার দায়ী: মির্জা ফখরুল', 'পঞ্চগড়ে ধর্মীয় সংঘাতের জন্য সরকার দায়ী: মির্জা ফখরুল', '&lt;p&gt;পঞ্চগড়ে একটি ধর্মীয় অনুষ্ঠানকে কেন্দ্র করে হতাহতের ঘটনায় নিন্দা জানিয়েছেন বিএনপি মহাসচিব মির্জা ফখরুল ইসলাম আলমগীর। তিনি এক বিবৃতিতে বলেছেন, এ ধরনের বিরোধ ও সংঘাতের জন্য ক্ষমতাসীন সরকারের উদাসীনতা এবং পরোক্ষ পৃষ্ঠপোষকতা দায়ী বলে তারা মনে করেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিবৃতিতে বিএনপি নেতা মির্জা ফখরুল ইসলাম আলমগীর অভিযোগ করেন, &amp;lsquo;দেশ ও দেশের বাইরে সব গণতান্ত্রিক শক্তিকে বিভ্রান্ত করার জন্য কৃত্রিমভাবে ধর্মীয় বিরোধের এ ধরনের ইস্যু উপস্থাপন করা হচ্ছে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;বিএনপির এই নেতা উল্লেখ করেন, বাংলাদেশের মানুষের মধ্যে বহুকাল থেকে সাম্প্রদায়িক সম্প্রীতি বিরাজমান। কিন্তু &amp;nbsp;ক্ষমতাসীনদের &amp;lsquo;অপরাজনীতির কৌশলের&amp;rsquo; কারণে সেই সম্প্রীতি নষ্ট হচ্ছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;মির্জা ফখরুল ইসলাম বলেন, দেশের মানুষ এখন অর্থনৈতিক জীবনের দুর্ভোগের বিরুদ্ধে সোচ্চার এবং ভোটাধিকার তথা গণতন্ত্রের জন্য মানুষ ঐক্যবদ্ধ হচ্ছে। এর থেকে জনগণের দৃষ্টি ভিন্ন খাতে প্রবাহিত করতে শাসকগোষ্ঠীর মদদে সাম্প্রদায়িক সংঘর্ষের ঘটনা ঘটানো হচ্ছে। এটি সরকারের &amp;lsquo;অপরাজনীতির কৌশল&amp;rsquo; বলে তিনি মনে করেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিএনপি মহাসচিব জনগণকে এ বিষয়ে সজাগ ও সচেতন থাকার আহ্বান জানিয়েছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;পঞ্চগড় শহরের পাশে আহম্মদনগর এলাকায় আহমদিয়া জামাতের তিন দিনব্যাপী &amp;lsquo;সালানা জলসা&amp;rsquo; বন্ধের দাবিতে গত শুক্রবার জুমার পর বিভিন্ন মসজিদ থেকে মিছিল বের করা হয়। এরপর সেখানে সংঘাতে হতাহতের ঘটনা ঘটে। এখনো পঞ্চগড়ে আহমদিয়া সম্প্রদায়ের মানুষের মধ্যে আতঙ্ক রয়েছে।&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/050323cba3ee0ff6b0c8b.webp', 'বিএনপির মহাসচিব মির্জা ফখরুল ইসলাম আলমগীর', 'samojug.com/samojugnews', 0, 0, '2', '2023-03-05 09:08:40', 1, 1),
(157, 'samojugc_datatable', 5, 58, 'বিস্ফোরণস্থল ভবনের ছাদ: পুলিশ', 'বিস্ফোরণস্থল ভবনের ছাদ: পুলিশ', '&lt;p&gt;রাজধানীর সায়েন্স ল্যাবরেটরি এলাকায় বিস্ফোরণে ধসে পড়া ভবনের ছাদে বিস্ফোরণের ঘটনা ঘটেছে বলে জানিয়েছেন ঢাকা মেট্রোপলিটন পুলিশের (ডিএমপি) বোম্ব ডিজপোজাল ইউনিটের প্রধান অতিরিক্ত পুলিশ সুপার রহমত উল্লাহ।&lt;/p&gt;\r\n\r\n&lt;p&gt;তিনি বলেন, বিস্ফোরণ স্থল ওই ভবনের ছাদ। সেখানে ফিনিক্স নামে একটি ইনস্যুরেন্স কোম্পানি আছে। সেখানে জমে থাকা গ্যাসের কারণে এই বিস্ফোরণ হয়েছে। এটি স্যুয়ারেজ লাইনের গ্যাস হতে পারে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এর আগে রোববার সকাল ১০টা ৫০ মিনিটে সায়েন্স ল্যাবরেটরি এলাকার প্রিয়াঙ্গন মার্কেটের পাশে একটি বাণিজ্যিক ভবনে বিস্ফোরণের ঘটনা ঘটে। এতে এখন পর্যন্ত ৩ জন নিহত ও ১৪ জন আহত হয়েছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/050323bc9016591487d4e.jpg', 'ছবি: সংগৃহীত', 'samojug.com/samojugnews', 0, 0, '0', '2023-03-05 09:29:39', 0, 1),
(158, 'samojugc_datatable', 5, 56, 'ভয়াবহ দুর্ঘটনা ঘটেই চলছে, প্রতিকার নেই: জিএম কাদের', 'ভয়াবহ দুর্ঘটনা ঘটেই চলছে, প্রতিকার নেই: জিএম কাদের', '&lt;p&gt;চট্টগ্রামের সিতাকুণ্ডে অক্সিজেন তৈরির কারখানায় ভয়াবহ বিস্ফোরণে হতাহত এবং রাজধানীর সায়েন্স ল্যাব এলাকায় একটি ভবনে বিস্ফোরণের ঘটনায় গভীর শোক ও দুঃখ প্রকাশ করেছেন জাতীয় পার্টি চেয়ারম্যান ও বিরোধীদলীয় উপনেতা জিএম কাদের।&lt;/p&gt;\r\n\r\n&lt;p&gt;আজ রোববার এক শোকবার্তায় নিহতদের বিদেহি আত্মার শান্তি কামনা করে তিনি শোক সন্তপ্ত পরিবারের প্রতি সমবেদনা জানিয়েছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;শোকবার্তায় জাতীয় পার্টি চেয়ারম্যান বলেন, এমন ভয়াবহ দুর্ঘটনা মেনে নেওয়া যায় না। দেশে ভয়াবহ দুর্ঘটনা ঘটেই চলছে, কিন্তু প্রতিকার নেই।&amp;nbsp;কেন এমন মারাত্মক দুর্ঘটনা ঘটছে তা খতিয়ে দেখতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;দায়ীদের বিরুদ্ধে আইনানুগ ব্যবস্থা নেওয়ার দাবি জানিয়ে তিনি নিহতদের পরিবারকে যৌক্তিক ক্ষতিপূরণ এবং আহতদের সু-চিকিৎসা নিশ্চিত করতে সংশ্লিষ্টদের প্রতি আহ্বান জানান।&lt;/p&gt;\r\n\r\n&lt;p&gt;জিএম কাদের বলেন, কোনো দুর্ঘটনা থেকেই আমরা শিক্ষা নেই না। গেল বছর জুনের প্রথম সপ্তাহে চট্টগ্রামের সিতাকুণ্ডে ভয়াবহ কন্টেইনার বিস্ফোরণের ঘটনার সঠিক তদন্ত ও সে অনুযায়ী ব্যবস্থা নেওয়া হলে এমন দুর্ঘটনা হয়তো এড়ানো সম্ভব হতো।চট্টগ্রামের সিতাকুণ্ডে অক্সিজেন তৈরির কারখানায় ভয়াবহ বিস্ফোরণে হতাহত এবং রাজধানীর সায়েন্স ল্যাব এলাকায় একটি ভবনে বিস্ফোরণ ঘটনায় একইভাবে গভীর শোক ও দুঃখ প্রকাশ করেছেন জাতীয় পার্টি মহাসচিব মো. মুজিবুল হক চুন্নু এমপি।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিষয় :&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%9C%E0%A6%BF%E0%A6%8F%E0%A6%AE+%E0%A6%95%E0%A6%BE%E0%A6%A6%E0%A7%87%E0%A6%B0&quot;&gt;জিএম কাদের&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%9C%E0%A6%BE%E0%A6%A4%E0%A7%80%E0%A7%9F+%E0%A6%AA%E0%A6%BE%E0%A6%B0%E0%A7%8D%E0%A6%9F%E0%A6%BF&quot;&gt;জাতীয় পার্টি&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%9C%E0%A6%BE%E0%A6%A4%E0%A7%80%E0%A7%9F+%E0%A6%AA%E0%A6%BE%E0%A6%B0%E0%A7%8D%E0%A6%9F%E0%A6%BF%E0%A6%B0+%E0%A6%9A%E0%A7%87%E0%A7%9F%E0%A6%BE%E0%A6%B0%E0%A6%AE%E0%A7%8D%E0%A6%AF%E0%A6%BE%E0%A6%A8&quot;&gt;জাতীয় পার্টির চেয়ারম্যান&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%B8%E0%A7%80%E0%A6%A4%E0%A6%BE%E0%A6%95%E0%A7%81%E0%A6%A3%E0%A7%8D%E0%A6%A1%E0%A7%87+%E0%A6%AC%E0%A6%BF%E0%A6%B8%E0%A7%8D%E0%A6%AB%E0%A7%8B%E0%A6%B0%E0%A6%A3&quot;&gt;সীতাকুণ্ডে বিস্ফোরণ&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%B8%E0%A6%BE%E0%A7%9F%E0%A7%87%E0%A6%A8%E0%A7%8D%E0%A6%B8+%E0%A6%B2%E0%A7%8D%E0%A6%AF%E0%A6%BE%E0%A6%AC+%E0%A6%8F%E0%A6%B2%E0%A6%BE%E0%A6%95%E0%A6%BE%E0%A7%9F+%E0%A6%AC%E0%A6%BF%E0%A6%B8%E0%A7%8D%E0%A6%AB%E0%A7%8B%E0%A6%B0%E0%A6%A3&quot;&gt;সায়েন্স ল্যাব এলাকায় বিস্ফোরণ&lt;/a&gt;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/050323705d48abb82099a.jpg', 'জাতীয় পার্টি চেয়ারম্যান জিএম কাদের', 'samojug.com/samojugnews', 0, 0, '3', '2023-03-05 09:52:53', 1, 1),
(159, 'samojugc_datatable', 5, 67, 'তিন বিভাগে প্রাথমিকের সহকারী শিক্ষক নিয়োগে বিজ্ঞপ্তি', 'তিন বিভাগে প্রাথমিকের সহকারী শিক্ষক নিয়োগে বিজ্ঞপ্তি', '&lt;p&gt;সরকারি প্রাথমিক বিদ্যালয়ে সহকারী শিক্ষক পদে নিয়োগের জন্য আগের মতো একযোগে বিজ্ঞপ্তি প্রকাশ না করে বিভাগভিত্তিক বিজ্ঞপ্তি প্রকাশ করা হয়েছে। মঙ্গলবার রংপুর, বরিশাল ও সিলেট বিভাগের জন্য বিজ্ঞপ্তি দিয়েছে প্রাথমিক শিক্ষা অধিদপ্তর।&lt;/p&gt;\r\n\r\n&lt;p&gt;আবেদনের জন্য যেকোনো বিষয়ে স্নাতক পাস হতে হবে। প্রার্থীদের বয়স ২১ থেকে ৩০ বছরের মধ্যে হতে হবে। তবে বীর মুক্তিযোদ্ধার সন্তান ও শারীরিক প্রতিবন্ধী প্রার্থীদের ক্ষেত্রে সর্বোচ্চ বয়স ৩২ বছর।&lt;/p&gt;\r\n\r\n&lt;p&gt;আগ্রহী প্রার্থীদের অনলাইনে এ ওয়েবসাইটের (https://dpe.teletalk.com.bd/) মাধ্যমে আবেদন করতে হবে। আবেদন শুরু হবে আগামী ১০ মার্চ থেকে। আবেদনের শেষ সময় ২৪ মার্চ। টেলিটকের সার্ভিস চার্জসহ আবেদন ফি ২২০ টাকা।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিষয় :&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%AA%E0%A7%8D%E0%A6%B0%E0%A6%BE%E0%A6%A5%E0%A6%AE%E0%A6%BF%E0%A6%95+%E0%A6%AC%E0%A6%BF%E0%A6%A6%E0%A7%8D%E0%A6%AF%E0%A6%BE%E0%A6%B2%E0%A7%9F&quot;&gt;প্রাথমিক বিদ্যালয়&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%B6%E0%A6%BF%E0%A6%95%E0%A7%8D%E0%A6%B7%E0%A6%95+%E0%A6%A8%E0%A6%BF%E0%A7%9F%E0%A7%8B%E0%A6%97&quot;&gt;শিক্ষক নিয়োগ&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%AC%E0%A6%BF%E0%A6%9C%E0%A7%8D%E0%A6%9E%E0%A6%AA%E0%A7%8D%E0%A6%A4%E0%A6%BF+%E0%A6%AA%E0%A7%8D%E0%A6%B0%E0%A6%95%E0%A6%BE%E0%A6%B6&quot;&gt;বিজ্ঞপ্তি প্রকাশ&lt;/a&gt;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/050323022e6e02843af90.jpg', 'ছবি: সংগৃহীত', 'samojug.com/samojugnews', 0, 0, '1', '2023-03-05 09:57:04', 0, 1),
(160, 'samojugc_datatable', 5, 67, 'পৌনে ২ লাখ টাকা বেতনে পিজিসিবিতে চাকরির সুযোগ', 'পৌনে ২ লাখ টাকা বেতনে পিজিসিবিতে চাকরির সুযোগ', '&lt;p&gt;পাওয়ার গ্রিড কোম্পানি অব বাংলাদেশ লিমিটেড (পিজিসিবি) কর্মকর্তা নিয়োগে বিজ্ঞপ্তি প্রকাশ করেছে। &amp;lsquo;ব্যবস্থাপনা পরিচালক&amp;rsquo; পদে জনবল নিয়োগ দেবে প্রতিষ্ঠানটি। এ পদে আগ্রহীরা আগামী ৯ মার্চ পর্যন্ত সরাসরি বা ডাকযোগে আবেদন করতে পারবেন। নিয়োগসংক্রান্ত বিস্তারিত তথ্য এই&amp;nbsp;&lt;a href=&quot;http://pgcb.gov.bd/sites/default/files/files/pgcb.portal.gov.bd/notices/9a92f9a6_d68a_48d4_ab02_9cef8a4734f5/2023-02-22-14-43-03c228751008693c399674711966e001.pdf&quot; target=&quot;_blank&quot;&gt;লিংকে&lt;/a&gt;&amp;nbsp;জানা যাবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;প্রতিষ্ঠানের নাম: পাওয়ার গ্রিড কোম্পানি অব বাংলাদেশ লিমিটেড (পিজিসিবি)&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;পদের নাম: ব্যবস্থাপনা পরিচালক&lt;/p&gt;\r\n\r\n&lt;p&gt;পদসংখ্যা: ১&lt;/p&gt;\r\n\r\n&lt;p&gt;চাকরির ধরন: চুক্তিভিত্তিক (পাঁচ বছরের চুক্তি, ৬২ বছর বয়স পর্যন্ত চুক্তি নবায়নযোগ্য)&lt;/p&gt;\r\n\r\n&lt;p&gt;বয়স: ২০২৩ সালের ৯ মার্চ সর্বোচ্চ ৬০ বছর।&lt;/p&gt;\r\n\r\n&lt;p&gt;কর্মস্থল: যে কোনো স্থান&lt;/p&gt;\r\n\r\n&lt;p&gt;বেতন: মাসিক মূল বেতন ১,৭৫,০০০ টাকা।&lt;/p&gt;\r\n\r\n&lt;p&gt;সুযোগ-সুবিধা: মূল বেতনের ৫০ শতাংশ বাসাভাড়া, বছরে দুটি উৎসব বোনাস, বৈশাখী ভাতা, প্রভিডেন্ট ফান্ড, গোষ্ঠী বিমা, ছুটি ভাতা, গ্র্যাচুইটি, মেডিকেল&amp;ndash;সুবিধা, বার্ষিক বেতন বৃদ্ধিসহ সার্বক্ষণিক গাড়ির সুবিধা আছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;আবেদনের যোগ্যতা: স্বীকৃত বিশ্ববিদ্যালয় থেকে ইলেকট্রিক্যাল বা মেকানিক্যাল ইঞ্জিনিয়ারিংয়ে স্নাতক ডিগ্রি থাকতে হবে। অথবা ফাইন্যান্স, বিজনেস অ্যাডমিনিস্ট্রেশন অথবা ম্যানেজমেন্ট বিষয়ে স্নাতকোত্তর ডিগ্রি থাকতে হবে। সিজিপিএ&amp;ndash;৫-এর স্কেল অন্তত ৩.৫ ও ৪-এর স্কেলে অন্তত ২.৫ থাকতে হবে। শিক্ষাজীবনের কোনো স্তরে তৃতীয় বিভাগ/শ্রেণি বা সমমানের জিপিএ/সিজিপিএ গ্রহণযোগ্য নয়। অন্তত ২৫ বছর চাকরির অভিজ্ঞতা থাকতে হবে। এর মধ্যে সিনিয়র ম্যানেজমেন্ট পদে অন্তত ৫ বছর চাকরির অভিজ্ঞতা থাকতে হবে। সংশ্লিষ্ট ক্ষেত্রে, বিশেষ করে জেনারেশন, ট্রান্সমিশন অথবা ডিস্ট্রিবিউশন ইউটিলিটিসে অন্তত ৫ বছর চাকরির অভিজ্ঞতা থাকতে হবে। কোম্পানি আইন, শ্রম আইন, টিকিউএম, টিপিএম, প্রিভেনটিভ মেইনটেন্যান্স, করপোরেট গভর্ন্যান্স, স্ট্র্যাটেজিক ম্যানেজমেন্ট ও প্রজেক্ট ম্যানেজমেন্টে অভিজ্ঞতা থাকলে অগ্রাধিকার দেওয়া হবে। কম্পিউটার চালনায় দক্ষতাসহ বাংলা ও ইংরেজি ভাষায় সাবলীল হতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;আবেদনের নিয়ম: আগ্রহী প্রার্থীদের তিন কপি পাসপোর্ট সাইজের ছবি, শিক্ষাগত যোগ্যতা ও অভিজ্ঞতার সব সনদের সত্যায়িত কপি, জাতীয় পরিচয়পত্র, নাগরিকত্ব সনদসহ পূর্ণাঙ্গ জীবনবৃত্তান্ত সরাসরি বা ডাকযোগে পাঠাতে হবে।&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;আবেদন ফি: পাওয়ার গ্রিড কোম্পানি অব বাংলাদেশ লিমিটেডের অনুকূলে ২ হাজার টাকা পে-অর্ডার করে রসিদ আবেদনপত্রের সঙ্গে সংযুক্ত করতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;আবেদনপত্র পাঠানোর ঠিকানা: জেনারেল ম্যানেজার, পাওয়ার গ্রিড কোম্পানি অব বাংলাদেশ, পিজিসিবি ভবন, অ্যাভিনিউ-৩, জহুরুল ইসলাম সিটি, আফতাবনগর, বাড্ডা, ঢাকা-১২১২।&lt;/p&gt;\r\n\r\n&lt;p&gt;আবেদনের শেষ সময়: ৯ মার্চ ২০২৩।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিষয় :&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%AA%E0%A6%BE%E0%A6%93%E0%A7%9F%E0%A6%BE%E0%A6%B0+%E0%A6%97%E0%A7%8D%E0%A6%B0%E0%A6%BF%E0%A6%A1+%E0%A6%95%E0%A7%8B%E0%A6%AE%E0%A7%8D%E0%A6%AA%E0%A6%BE%E0%A6%A8%E0%A6%BF+%E0%A6%85%E0%A6%AC+%E0%A6%AC%E0%A6%BE%E0%A6%82%E0%A6%B2%E0%A6%BE%E0%A6%A6%E0%A7%87%E0%A6%B6+%E0%A6%B2%E0%A6%BF%E0%A6%AE%E0%A6%BF%E0%A6%9F%E0%A7%87%E0%A6%A1&quot;&gt;পাওয়ার গ্রিড কোম্পানি অব বাংলাদেশ লিমিটেড&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%AA%E0%A6%BF%E0%A6%9C%E0%A6%BF%E0%A6%B8%E0%A6%BF%E0%A6%AC%E0%A6%BF&quot;&gt;পিজিসিবি&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%A8%E0%A6%BF%E0%A7%9F%E0%A7%8B%E0%A6%97+%E0%A6%AC%E0%A6%BF%E0%A6%9C%E0%A7%8D%E0%A6%9E%E0%A6%AA%E0%A7%8D%E0%A6%A4%E0%A6%BF&quot;&gt;নিয়োগ বিজ্ঞপ্তি&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%9A%E0%A6%BE%E0%A6%95%E0%A6%B0%E0%A6%BF%E0%A6%B0+%E0%A6%B8%E0%A7%81%E0%A6%AF%E0%A7%8B%E0%A6%97&quot;&gt;চাকরির সুযোগ&lt;/a&gt;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0503233b6964c895a18a1.jpg', 'প্রতীকী ছবি', 'samojug.com/samojugnews', 0, 0, '0', '2023-03-05 10:01:12', 0, 1);
INSERT INTO `samojugc_news_datatable` (`id`, `datatable`, `admin_id`, `category_id`, `title`, `keywords`, `description`, `thumbnail`, `teaser`, `link`, `liked`, `unliked`, `watched`, `date`, `topnews`, `status`) VALUES
(161, 'samojugc_datatable', 5, 67, 'প্রাথমিক শিক্ষক নিয়োগে আরও দুই বিজ্ঞপ্তি আসছে', 'প্রাথমিক শিক্ষক নিয়োগে আরও দুই বিজ্ঞপ্তি আসছে', '&lt;p&gt;সরকারি প্রাথমিক বিদ&amp;zwnj;্যালয়ে সহকারী শিক্ষক নিয়োগে বিভাগভিত্তিক ক্লাস্টার করে আরও দুটি নিয়োগ বিজ্ঞপ্তি জারি করা হবে বলে জানিয়েছেন প্রাথমিক ও গণশিক্ষা মন্ত্রণালয়ের সচিব ফরিদ আহাম্মদ।&lt;/p&gt;\r\n\r\n&lt;p&gt;আজ মঙ্গলবার সচিবালয়ে প্রাথমিক বৃত্তি পরীক্ষার ফল প্রকাশের সংবাদ সম্মেলনে প্রাথমিক ও গণশিক্ষা মন্ত্রণালয়ের সচিব ফরিদ আহাম্মদ এ তথ&amp;zwnj;্য জানান। এ সময় প্রাথমিক ও গণশিক্ষা প্রতিমন্ত্রী মো. জাকির হোসেন উপস্থিত ছিলেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;সচিব বলেন, সরকারি প্রাথমিক বিদ্যালয়ে আমাদের প্রায় চার লাখ চার হাজার সহকারী শিক্ষক রয়েছে। প্রতিবছর প্রায় ছয় হাজারের কাছাকাছি শিক্ষক অবসরে যায়। ২০২০ সালের বিজ্ঞপ্তি দিয়ে ২০২২ সালে ৩৭ হাজার ৫৭৪ জনকে নিয়োগ দিয়েছিলাম। এতে দুই বছর সময় লেগেছে। এ প্রক্রিয়াটা ধারাবাহিক হওয়া উচিত।&lt;/p&gt;\r\n\r\n&lt;p&gt;তিনি বলেন, আমরা বুয়েটের সঙ্গে কথা বলেছি। আমরা ক্লাস্টার বা বিভাগভিত্তিক নিয়োগ দিতে পারলে ছয় মাসের মধ্যে নিয়োগ দিতে পারব। আজ আমরা একটা বিজ্ঞপ্তি দিয়েছি। আজ রংপুর, সিলেট ও বরিশাল বিভাগ মিলে একটি ক্লাস্টার করেছি এবং এই তিন বিভাগের তুলনামূলক বেশি পদ শূন্য রয়েছে। বাকিগুলো নিয়ে আমরা এক বা দুইটা ক্লাস্টার করবো।&lt;/p&gt;\r\n\r\n&lt;p&gt;তিনি আরও বলেন, আগামী সপ্তাহে একটা এবং তার পরের সপ্তাহে আরেকটা বিজ্ঞপ্তি যাবে। আগামী ১৫ দিনের মধ্যে আরও দুই বিজ্ঞপ্তি দিয়ে দেব। আমরা যেটি ধরবো, সেটি ছয় মাসের ভেতরে নিয়োগ শেষ করতে পারবো। এর ফলে এক বছরের মধ্যে সারাদেশের শূন্য পদগুলো পূরণ করতে পারব।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিষয় :&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%AA%E0%A7%8D%E0%A6%B0%E0%A6%BE%E0%A6%A5%E0%A6%AE%E0%A6%BF%E0%A6%95+%E0%A6%AC%E0%A6%BF%E0%A6%A6%E0%A7%8D%E0%A6%AF%E0%A6%BE%E0%A6%B2%E0%A7%9F&quot;&gt;প্রাথমিক বিদ্যালয়&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%B6%E0%A6%BF%E0%A6%95%E0%A7%8D%E0%A6%B7%E0%A6%95+%E0%A6%A8%E0%A6%BF%E0%A7%9F%E0%A7%8B%E0%A6%97&quot;&gt;শিক্ষক নিয়োগ&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%A8%E0%A6%BF%E0%A7%9F%E0%A7%8B%E0%A6%97+%E0%A6%AC%E0%A6%BF%E0%A6%9C%E0%A7%8D%E0%A6%9E%E0%A6%AA%E0%A7%8D%E0%A6%A4%E0%A6%BF&quot;&gt;নিয়োগ বিজ্ঞপ্তি&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%AA%E0%A7%8D%E0%A6%B0%E0%A6%BE%E0%A6%A5%E0%A6%AE%E0%A6%BF%E0%A6%95+%E0%A6%93+%E0%A6%97%E0%A6%A3%E0%A6%B6%E0%A6%BF%E0%A6%95%E0%A7%8D%E0%A6%B7%E0%A6%BE+%E0%A6%AE%E0%A6%A8%E0%A7%8D%E0%A6%A4%E0%A7%8D%E0%A6%B0%E0%A6%A3%E0%A6%BE%E0%A6%B2%E0%A7%9F&quot;&gt;প্রাথমিক ও গণশিক্ষা মন্ত্রণালয়&lt;/a&gt;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/050323c503752fe88f9e9.jpg', 'ফাইল ছবি', 'samojug.com/samojugnews', 0, 0, '2', '2023-03-05 10:04:36', 0, 1),
(162, 'samojugc_datatable', 5, 65, 'তিন দফা মেয়াদ বাড়িয়েও কাজ শেষ নিয়ে শঙ্কা', 'তিন দফা মেয়াদ বাড়িয়েও কাজ শেষ নিয়ে শঙ্কা', '&lt;p&gt;﻿﻿ঢাকা বিশ্ববিদ্যালয়ের (ঢাবি) নতুন একাডেমিক এবং আবাসিক ভবনের নির্মাণকাজ সাত বছরেও শেষ হয়নি। এর মধ্যে প্রকল্পের মেয়াদ বাড়ানো হয়েছে তিনবার। সংশ্লিষ্ট সূত্রে জানা গেছে, এখন পর্যন্ত প্রকল্পের ৮০ শতাংশ কাজ শেষ দেখানো হয়েছে। তবে প্রকৃতপক্ষে কাজের অগ্রগতি ৬৫-৭০ শতাংশ। এর মধ্যে খরচ হয়েছে ৪০৯ কোটি টাকা (প্রকল্পের ৬৭ শতাংশ)।&lt;/p&gt;\r\n\r\n&lt;p&gt;এখন পর্যন্ত তিন ভবনের ফার্নিচারের টেন্ডার হয়নি। কোনো ভবনেই ইলেকট্রিক কাজের টেন্ডার হয়নি। এ ছাড়া এলসি জটিলতায় ভবনগুলোর লিফট আমদানি নিয়েও শঙ্কা তৈরি হয়েছে। সর্বশেষ আগামী জুনে কাজ শেষ করার লক্ষ্যমাত্রা নির্ধারণ হলেও এই সময়ের মধ্যে কাজ শেষ করা সম্ভব হবে না বলে জানিয়েছেন সংশ্লিষ্টরা।&lt;/p&gt;\r\n\r\n&lt;p&gt;জানা গেছে, করোনা অভিঘাতের পাশাপাশি সাম্প্রতিক বছরে নির্মাণসামগ্রীর দাম বেড়েছে দ্বিগুণের বেশি, তবে বাড়েনি প্রকল্প ব্যয়। ফলে কাজের গতি কমিয়েছেন ঠিকাদাররা। বিভিন্ন ভবনে ডিজাইন পরিবর্তিত হয়ে বেড়েছে কাজ।&lt;/p&gt;\r\n\r\n&lt;p&gt;শিক্ষা মন্ত্রণালয়ের মাধ্যমিক ও উচ্চ মাধ্যমিক বিভাগের সূত্রমতে, &amp;lsquo;ঢাকা বিশ্ববিদ্যালয়ের একাডেমিক ও আবাসিক ভবন নির্মাণ&amp;rsquo; শীর্ষক এই প্রকল্পের অধীনে বিশ্ববিদ্যালয়ের নতুন ভবন নির্মাণ এবং পুরোনো ভবন বর্ধিতকরণ মিলে ২৭টি অবকাঠামোর কাজ ২০১৬ সালের জুলাইয়ে একনেকে অনুমোদন দেওয়া হয়। ৬১৯ কোটি ৪৬ লাখ টাকা ব্যয়ে চার বছরমেয়াদি এই প্রকল্প ২০২০ সালের জুনে সম্পন্ন করার কথা ছিল।&lt;/p&gt;\r\n\r\n&lt;p&gt;তবে করোনা মহামারির কারণে স্বয়ংক্রিয়ভাবে মেয়াদ ২০২১ সালের জুন মাস পর্যন্ত বাড়ানো হয়। কিন্তু এর মধ্যে কাজ শেষ না হওয়ায় প্রকল্পের বিভিন্ন অংশের ব্যয় প্রয়োজনে হ্রাস-বৃদ্ধি করে ৬১৪ কোটি ৫৪ লাখ টাকা সংশোধিত ব্যয়ে ২০২২ সালের জুন পর্যন্ত মেয়াদ অনুমোদন করে মাধ্যমিক ও উচ্চশিক্ষা বিভাগ। কিন্তু কাজ শেষ না হওয়ায় সর্বশেষ ২০২৩ সালের জুন মাস পর্যন্ত মেয়াদ বাড়ানো হয়েছে। পুরোনো ভবন বর্ধিতকরণের কাজ সম্পন্ন হয়েছে। শঙ্কা নির্মাণাধীন নতুন ভবন নিয়ে।&lt;/p&gt;\r\n\r\n&lt;p&gt;জানা যায়, প্রকল্পের সুষ্ঠু পরিচালনা এবং তদারকির জন্য ইউজিসি, শিক্ষা মন্ত্রণালয়, পরিকল্পনা কমিশন এবং বিশ্ববিদ্যালয় কর্তৃপক্ষের সমন্বয়ে প্রজেক্ট স্টিয়ারিং কমিটি (পিএসসি) ও প্রজেক্ট ইমপ্লিমেন্টেশন কমিটি (পিআইসি) নামে দুটি কমিটি গঠন করা হয়। প্রতি তিন মাস পরপর কমিটিগুলোর সভা হওয়ার কথা থাকলেও গত এক বছরে পিএসসির কোনো সভা হয়নি। একবার পিআইসির সভা হয়, তবে তাতে মন্ত্রণালয়ের প্রতিনিধি না থাকায় সভা ফলপ্রসূ হয়নি।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ ছাড়া প্রকল্পের মুখ্য কোনো ভূমিকায় নেই প্রকল্প পরিচালক (পিডি)। টেন্ডার প্রক্রিয়া এবং প্রকল্পের তত্ত্বাবধায়ন ও অগ্রগতি সব কাজ করেন প্রকল্প ব্যবস্থাপক বিশ্ববিদ্যালয়ের প্রকৌশলীরা। ফলে দায় নিতে চান না পিডি।&lt;/p&gt;\r\n\r\n&lt;p&gt;নির্মাণাধীন এই ভবনের মধ্যে রয়েছে&amp;ndash; আর্থ অ্যান্ড এনভায়রনমেন্টাল সায়েন্সেস ও ইঞ্জিনিয়ারিং অনুষদের ২১ তলা একাডেমিক ভবন, জগন্নাথ হলে ১৫ তলা ভিতে ১০ তলা রবীন্দ্র ভবন ও ১১ তলা আবাসিক শিক্ষক ভবন, জাতির জনক বঙ্গবন্ধু শেখ মুজিবুর রহমান হলে ১১ তলা ভিতে ১১ তলা ভবন ও ১১ তলা আবাসিক শিক্ষক ভবন এবং শহীদ সার্জেন্ট জহুরুল হক হলের পাশে তৃতীয় শ্রেণির কর্মচারীদের জন্য ২০ তলা শেখ কামাল টাওয়ার।&lt;/p&gt;\r\n\r\n&lt;p&gt;এগুলো চালু হলে আর্থ ভবনে অনুষদের বিভাগগুলো আধুনিক ল্যাব সুবিধাসম্পন্ন প্রশস্ত শ্রেণিকক্ষ পাবে। এ ছাড়া রবীন্দ্র ভবন ও বঙ্গবন্ধু হলের ভবনে পৃথকভাবে ২ হাজার ছাত্র আধুনিক সুবিধাসম্পন্ন, টাইলসকৃত রুমে আবাসন সুবিধা পাবে। এতে কমবে সিট সংকট।&lt;/p&gt;\r\n\r\n&lt;p&gt;সরেজমিন দেখা যায়, সবচেয়ে পিছিয়ে আছে আর্থ ভবন এবং শেখ কামাল টাওয়ার। এগুলোর সিভিল অংশের কাজ যথাক্রমে ৭৮ শতাংশ ও ৮০ শতাংশ কাজ শেষ হয়েছে। প্রথমটির ঠিকাদার তমা কনস্ট্রাকশন এবং দ্বিতীয়টির ঠিকাদার যৌথভাবে মেসার্স টিসিএল ও মল্লিক এন্টারপ্রাইজ। এর মধ্যে কোনো আলাপ-আলোচনা ছাড়াই আর্থ ভবনে দুই মাসের বেশি সময় কাজ বন্ধ ছিল।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ বিষয়ে জানতে চাইলে প্রকল্প পরিচালক (পিডি) বিশ্ববিদ্যালয়ের পরিকল্পনা ও উন্নয়ন অফিসের উপপরিচালক মো. আমির হোসেন বলেন, &amp;lsquo;আমি শুধু মন্ত্রণালয় থেকে অনুমোদনের কাজ করি। প্রকৌশল দপ্তর ও হিসাব পরিচালকের দপ্তর বাকি কাজ করে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;নাম না প্রকাশের শর্তে এক প্রকৌশলী জানান, লিফটের এখনও টেন্ডার হয়নি, আমদানি করতে হয় বাইরে থেকে। আনতে তিন-চার মাস লেগে যায়। ফলে ভবন চালু হলেও সময়মতো লিফট চালু করা সম্ভব হবে না।&lt;/p&gt;\r\n\r\n&lt;p&gt;কাজ বন্ধ থাকার বিষয়টি স্বীকার করে আর্থ ভবনের তমা পক্ষের প্রকৌশলী মো. সুমন বলেন, শ্রমিকরা বাড়িতে যাওয়ায় কাজ বন্ধ ছিল। দেরিতে ওয়ার্ক অর্ডার হয়েছে। তাঁরা জুনে কাজ শেষ করার চেষ্টা করছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;বঙ্গবন্ধু হলের ভবনের সিভিল ইঞ্জিনিয়ার মঈন উদ্দিন ও ঠিকাদার ওয়াহিদ কনস্ট্রাকশনের ইঞ্জিনিয়ার জাহাঙ্গীর আলম বলেন, করোনায় সামাজিক দূরত্ব বজায় রাখতে গিয়ে অল্প কাজ হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;বাকি তিন ভবনের তত্ত্বাবধায়ক প্রকৌশলী মো. আক্রাম হোসেন বলেন, ডিজাইন পরিবর্তন, রুমে টাইলস করার বিষয় পরে যুক্ত করাসহ নানা কারণে টেন্ডারের কাজ বেড়েছে, খরচও বেড়েছে। এ বাড়তি খরচের নির্মাণসামগ্রীর দাম বর্তমান দামে চাচ্ছেন ঠিকাদাররা।&lt;/p&gt;\r\n\r\n&lt;p&gt;মাধ্যমিক ও উচ্চ মাধ্যমিক বিভাগের অতিরিক্ত সচিব (উন্নয়ন) মো. বেলায়েত হোসেন তালুকদার সমকালকে বলেন, বিশ্ববিদ্যালয় স্বায়ত্তশাসিত। তবে উন্নয়ন প্রকল্পগুলো সরকারি অর্থে হয়। এখানে পিপিআর না মানার সুযোগ নেই। বিশ্ববিদ্যালয়ের উপাচার্য প্রকল্পের &amp;lsquo;প্রকিউরিং এনটিটি&amp;rsquo;। তিনি যাকে দায়িত্ব অর্পণ করবেন, তাঁর (উপাচার্য) অনুমতিক্রমে যাবতীয় কাজ সে করবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;পরিকল্পনা কমিশনের শিক্ষা অনুবিভাগের যুগ্ম প্রধান রাহনুমা নাহিদ বলেন, ডিপিপিতে যদি প্রকৌশলীদের টেন্ডারের দায়িত্ব দেওয়া হয়, তাহলে তাঁরা টেন্ডারের যাবতীয় কাজ করতে পারবেন। অন্যথায় নিয়মের ব্যত্যয় হবে। যিনি কাজ করবেন, তাঁকে কাজের বিষয়ে তিনি জবাবদিহি করবেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;ঢাবি উপাচার্য অধ্যাপক ড. মো. আখতারুজ্জামান বলেন, আমরা যথাসময়ে কাজ শেষ করতে চেষ্টা করছি।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিষয় :&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%A2%E0%A6%BE%E0%A6%AC%E0%A6%BF&quot;&gt;ঢাবি&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%EF%BB%BF%EF%BB%BF%E0%A6%A2%E0%A6%BE%E0%A6%95%E0%A6%BE+%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC%E0%A6%AC%E0%A6%BF%E0%A6%A6%E0%A7%8D%E0%A6%AF%E0%A6%BE%E0%A6%B2%E0%A7%9F&quot;&gt;﻿﻿ঢাকা বিশ্ববিদ্যালয়&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%B6%E0%A6%BF%E0%A6%95%E0%A7%8D%E0%A6%B7%E0%A6%BE+%E0%A6%AE%E0%A6%A8%E0%A7%8D%E0%A6%A4%E0%A7%8D%E0%A6%B0%E0%A6%A3%E0%A6%BE%E0%A6%B2%E0%A7%9F&quot;&gt;শিক্ষা মন্ত্রণালয়&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%86%E0%A6%AC%E0%A6%BE%E0%A6%B8%E0%A6%BF%E0%A6%95+%E0%A6%AD%E0%A6%AC%E0%A6%A8&quot;&gt;আবাসিক ভবন&lt;/a&gt;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/050323aee3fe54bb10830.jpg', 'ছবি: সংগৃহীত', 'samojug.com/samojugnews', 0, 0, '1', '2023-03-05 10:43:04', 0, 1),
(163, 'samojugc_datatable', 5, 65, 'প্রশ্নে প্রশ্নে বিজ্ঞান শেখার প্রয়াস শিক্ষার্থীদের', 'প্রশ্নে প্রশ্নে বিজ্ঞান শেখার প্রয়াস শিক্ষার্থীদের', '&lt;p&gt;﻿ঘড়িতে তখন সকাল সাড়ে ১১টা। বাংলাদেশ প্রকৌশল বিশ্ববিদ্যালয়ের (বুয়েট) জিমনেশিয়াম কানায় কানায় পূর্ণ। দেশের বিভিন্ন শিক্ষাপ্রতিষ্ঠান থেকে আসা শিক্ষার্থীদের হাতে কাগজ ও কলম। জীববিজ্ঞানের নানা অজানা বিষয়ে জানতে সেখানে প্রশ্ন লিখছেন তাঁরা। প্রশ্ন লেখা শেষ হলে উপস্থিত বিশেষজ্ঞরা ধৈর্য ধরে সেগুলোর উত্তর দেন। গতকাল শনিবার বুয়েটে আয়োজিত &amp;lsquo;বিডিবিও-সমকাল বাংলাদেশ জীববিজ্ঞান উৎসব ২০২৩&amp;rsquo; এর ঢাকা দক্ষিণের আঞ্চলিক উৎসবের প্রশ্নোত্তর পর্বে এমন দৃশ্য দেখা যায়। বাংলাদেশ বায়োলজি অলিম্পিয়াড (বিডিবিও) এবং দৈনিক সমকাল যৌথভাবে এ উৎসবের আয়োজন করে।&lt;/p&gt;\r\n\r\n&lt;p&gt;সকালে জাতীয় সংগীত এবং জাতীয় পতাকা উত্তোলনের মাধ্যমে উৎসবের কার্যক্রম শুরু হয়। এর পর শিক্ষার্থীরা নৈর্ব্যত্তিক পরীক্ষায় অংশ নেন। দুপুরে আঞ্চলিক উৎসবের সমাপনী অনুষ্ঠানে বিজয়ীদের নাম ঘোষণা করা হয়। বাংলাদেশ জীববিজ্ঞান অলিম্পিয়াড ঢাকা দক্ষিণের আঞ্চলিক কমিটির সভাপতি অধ্যাপক ড. তারিক আরাফাতের সভাপতিত্বে সমাপনী অনুষ্ঠানে বক্তব্য দেন শেরেবাংলা কৃষি বিশ্ববিদ্যালয়ের (শেকৃবি) উপাচার্য অধ্যাপক ড. মো. শহীদুর রশীদ ভূঁইয়া, জগন্নাথ বিশ্ববিদ্যালয় (জবি) উপাচার্য অধ্যাপক ইমদাদুল হক, প্রবাসী কল্যাণ ব্যাংকের এমডি মো. মজিবর রহমান, সমকালের সহযোগী সম্পাদক লোটন একরাম প্রমুখ।&lt;/p&gt;\r\n\r\n&lt;p&gt;শেকৃবি উপাচার্য শহীদুর রশীদ ভূঁইয়া বলেন, &amp;lsquo;দেশের বিদ্যালয়গুলোতে ব্যবহারিক বিজ্ঞান ঠিকভাবে শেখানো হয় না। পরবর্তী জীবনে এর ফল ভোগ করতে হয় শিক্ষার্থীদের। এজন্য আমাদের বিজ্ঞানের চর্চায় গুরুত্ব দিতে হবে।&amp;rsquo; জীববিজ্ঞানকে বিজ্ঞানের গুরুত্বপূর্ণ শাখা উল্লেখ করে জবি উপাচার্য ইমদাদুল হকও এতে গুরুত্ব দেওয়ার আহ্বান জানান।&lt;/p&gt;\r\n\r\n&lt;p&gt;মজিবর রহমান বলেন, পৃথিবী যতবার বিপদে পড়েছে, জীববিজ্ঞান ত্রাণকর্তা হয়েছে। তাই এর চর্চা বাড়াতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;লোটন একরাম বলেন, বিজ্ঞান চর্চায় আমাদের বরাদ্দ আরও বাড়াতে হবে। সরকার ইতোমধ্যে কিছু উদ্যোগ নিয়েছে। এ বিষয়ে বিজ্ঞানসংশ্লিষ্ট সবাইকে এগিয়ে আসতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;ঢাকা দক্ষিণের আঞ্চলিক উৎসবে মোট ১০৮৭ জন অংশগ্রহণ করেন। সমাপনী অনুষ্ঠানে &amp;lsquo;জুনিয়র&amp;rsquo;, &amp;lsquo;সেকেন্ডারি&amp;rsquo; এবং &amp;lsquo;হায়ার সেকেন্ডারি&amp;rsquo; তিন ক্যাটাগরিতে ঢাকা উত্তরের বিজয়ীদের নাম ঘোষণা করা হয়। জুনিয়র ক্যাটাগরিতে &amp;lsquo;চ্যাম্পিয়ন অব দ্য চ্যাম্পিয়ন&amp;rsquo; হয়েছেন ভিকারুননিসা নূন স্কুলের শিক্ষার্থী লাবিবা নাইয়ার। এ ছাড়া এই ক্যাটাগরিতে চ্যাম্পিয়ন হয়েছেন ১০ জন, প্রথম রানার্সআপ ২৪ জন এবং দ্বিতীয় রানার্সআপ ৩৪ জন। সেকেন্ডারি ক্যাটাগরিতে &amp;lsquo;চ্যাম্পিয়ন অব দ্য চ্যাম্পিয়ন&amp;rsquo; চট্টগ্রাম কলেজিয়েট স্কুলের আবদুল্লাহ আল-নাঈম। এতে চ্যাম্পিয়ন হয়েছেন ৩০ জন, প্রথম রানার্সআপ ৬৭ জন এবং দ্বিতীয় রানার্সআপ ৯২ জন। হায়ার সেকেন্ডারিতে &amp;lsquo;চ্যাম্পিয়ন অব দ্য চ্যাম্পিয়ন&amp;rsquo; ঢাকা সিটি কলেজের হিমেল বালা। এখানে চ্যাম্পিয়ন ১৭ জন, প্রথম রানার্সআপ ৪১ জন এবং দ্বিতীয় রানার্সআপ ৬৩ জন। বিজয়ীদের মেডেল ও সনদপত্র প্রদান করা হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;একই দিন বাংলাদেশ কৃষি বিশ্ববিদ্যালয়ের (বাকৃবি) শিল্পাচার্য জয়নুল আবেদিন মিলনায়তনে বিডিবিও-সমকাল বাংলাদেশ জীববিজ্ঞান উৎসবের ময়মনসিংহ আঞ্চলিক পর্ব অনুষ্ঠিত হয়। সকাল ৮টায় বিশ্ববিদ্যালয়ের বঙ্গবন্ধু চত্বরে উদ্বোধন করেন বাকৃবি উপাচার্য অধ্যাপক ড. লুৎফুল হাসান। সম্মানিত অতিথি ছিলেন ময়মনসিংহ সিটি মেয়র ইকরামুল হক টিটু। উদ্বোধন শেষে সকাল সাড়ে ১০টায় পরীক্ষা অনুষ্ঠিত হয়। উৎসবে ময়মনসিংহ, জামালপুর, শেরপুর, নেত্রকোনা ও কিশোরগঞ্জ জেলার ৭২৪ শিক্ষার্থী অলিম্পিয়াডে অংশ নেন। এর মধ্যে মোট ১৫৮ জন জাতীয় পর্যায়ে অংশ নেওয়ার জন্য নির্বাচিত হয়েছেন। তাঁদের মধ্যে জুনিয়র ক্যাটাগরিতে ৪৪ জন, মাধ্যমিক ক্যাটাগরিতে ৯৩ ও উচ্চ মাধ্যমিক ক্যাটাগরিতে আছেন ২১ জন।&lt;/p&gt;\r\n\r\n&lt;p&gt;দুপুরে অনুষ্ঠিত হয় প্রশ্নোত্তর পর্ব। এর আগে এক অনুষ্ঠানে অতিথি ছিলেন বাকৃবির ছাত্রবিষয়ক উপদেষ্টা অধ্যাপক ড. খান মো. সাইফুল ইসলাম, প্রক্টর অধ্যাপক ড. মো. আজহার্নল ইসলাম, জীববিজ্ঞান অলিম্পিয়াডের কেন্দ্রীয় কমিটির সহসভাপতি অধ্যাপক ড. আ খ ম গোলাম সারওয়ার, অধ্যাপক ড. ফৌজিয়া সুলতানা, অধ্যাপক ড. মো. সবিবুল হক, অধ্যাপক ড. মো. সহিদুজ্জামান প্রমুখ। সভাপতিত্ব করেন জীববিজ্ঞান অলিম্পিয়াডের ময়মনসিংহ অঞ্চলের সভাপতি ও কুড়িগ্রাম কৃষি বিশ্ববিদ্যালয়ের উপাচার্য অধ্যাপক ড. একেএম জাকির হোসেন। প্রশ্নোত্তর শেষে বিজয়ীদের নাম ঘোষণা করে পুরস্কার ও সনদ তুলে দেন অতিথিরা।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিষয় :&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%AC%E0%A6%BE%E0%A6%82%E0%A6%B2%E0%A6%BE%E0%A6%A6%E0%A7%87%E0%A6%B6+%E0%A6%9C%E0%A7%80%E0%A6%AC%E0%A6%AC%E0%A6%BF%E0%A6%9C%E0%A7%8D%E0%A6%9E%E0%A6%BE%E0%A6%A8+%E0%A6%89%E0%A7%8E%E0%A6%B8%E0%A6%AC&quot;&gt;বাংলাদেশ জীববিজ্ঞান উৎসব&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%9C%E0%A7%80%E0%A6%AC%E0%A6%AC%E0%A6%BF%E0%A6%9C%E0%A7%8D%E0%A6%9E%E0%A6%BE%E0%A6%A8+%E0%A6%89%E0%A7%8E%E0%A6%B8%E0%A6%AC&quot;&gt;জীববিজ্ঞান উৎসব&lt;/a&gt;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/05032390b0ee7d76dbba0.jpg', 'বাংলাদেশ প্রকৌশল বিশ্ববিদ্যালয়ের জিমনেশিয়ামে শনিবার বিডিবিও-সমকাল বাংলাদেশ জীববিজ্ঞান আঞ্চলিক উৎসবে বিজয়ী শিক্ষার্থীরা', 'samojug.com/samojugnews', 0, 0, '0', '2023-03-05 10:50:24', 0, 1),
(164, 'samojugc_datatable', 5, 67, 'মেডিকেল অফিসার নেবে রেড ক্রিসেন্ট, বেতন লাখ টাকা', 'মেডিকেল অফিসার নেবে রেড ক্রিসেন্ট, বেতন লাখ টাকা', '&lt;p&gt;﻿&amp;lsquo;মেডিকেল অফিসার&amp;rsquo; পদে জনবল নিয়োগ দেবে&amp;nbsp;বাংলাদেশ রেড ক্রিসেন্ট সোসাইটি। এ পদে আগ্রহীরা আগামী ২৮ ফেব্রুয়ারি পর্যন্ত আবেদন করতে পারবেন। কর্মস্থল হবে কক্সবাজারের উখিয়া।&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রতিষ্ঠানের নাম: বাংলাদেশ রেড ক্রিসেন্ট সোসাইটি&lt;/p&gt;\r\n\r\n&lt;p&gt;বিভাগের নাম: এমসিএইচ সেন্টার&lt;/p&gt;\r\n\r\n&lt;p&gt;পদের নাম: মেডিকেল অফিসার&lt;/p&gt;\r\n\r\n&lt;p&gt;পদসংখ্যা: ০১ জন&lt;/p&gt;\r\n\r\n&lt;p&gt;শিক্ষাগত যোগ্যতা: এমবিবিএস&lt;/p&gt;\r\n\r\n&lt;p&gt;অভিজ্ঞতা: ০২ বছর&lt;/p&gt;\r\n\r\n&lt;p&gt;বেতন: ১,০০,০০০ টাকা&lt;/p&gt;\r\n\r\n&lt;p&gt;চাকরির ধরন: চুক্তিভিত্তিক&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রার্থীর ধরন: নারী-পুরুষ&lt;/p&gt;\r\n\r\n&lt;p&gt;বয়স: নির্ধারিত নয়&lt;/p&gt;\r\n\r\n&lt;p&gt;কর্মস্থল: কক্সবাজার (উখিয়া)&lt;/p&gt;\r\n\r\n&lt;p&gt;আগ্রহীরা এই&amp;nbsp;&lt;a href=&quot;https://jobs.bdjobs.com/jobdetails.asp?id=1126575&quot; target=&quot;_blank&quot;&gt;লিঙ্কের&lt;/a&gt;&amp;nbsp;মাধ্যমে আবেদন করতে পারবেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিষয় :&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%AE%E0%A7%87%E0%A6%A1%E0%A6%BF%E0%A6%95%E0%A7%87%E0%A6%B2+%E0%A6%85%E0%A6%AB%E0%A6%BF%E0%A6%B8%E0%A6%BE%E0%A6%B0&quot;&gt;মেডিকেল অফিসার&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%AC%E0%A6%BE%E0%A6%82%E0%A6%B2%E0%A6%BE%E0%A6%A6%E0%A7%87%E0%A6%B6+%E0%A6%B0%E0%A7%87%E0%A6%A1+%E0%A6%95%E0%A7%8D%E0%A6%B0%E0%A6%BF%E0%A6%B8%E0%A7%87%E0%A6%A8%E0%A7%8D%E0%A6%9F+%E0%A6%B8%E0%A7%8B%E0%A6%B8%E0%A6%BE%E0%A6%87%E0%A6%9F%E0%A6%BF&quot;&gt;বাংলাদেশ রেড ক্রিসেন্ট সোসাইটি&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%A8%E0%A6%BF%E0%A7%9F%E0%A7%8B%E0%A6%97+%E0%A6%AC%E0%A6%BF%E0%A6%9C%E0%A7%8D%E0%A6%9E%E0%A6%AA%E0%A7%8D%E0%A6%A4%E0%A6%BF&quot;&gt;নিয়োগ বিজ্ঞপ্তি&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%9A%E0%A6%BE%E0%A6%95%E0%A6%B0%E0%A6%BF%E0%A6%B0+%E0%A6%B8%E0%A7%81%E0%A6%AF%E0%A7%8B%E0%A6%97&quot;&gt;চাকরির সুযোগ&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%9A%E0%A6%BE%E0%A6%95%E0%A6%B0%E0%A6%BF&quot;&gt;চাকরি&lt;/a&gt;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/05032369ce164544f58b3.jpg', 'ছবি: সংগৃহীত', 'samojug.com/samojugnews', 0, 0, '1', '2023-03-05 10:52:37', 0, 1),
(165, 'samojugc_datatable', 5, 67, 'রিসার্চ অ্যাসোসিয়েট পদে নিয়োগ দেবে বিআইডিএস', 'রিসার্চ অ্যাসোসিয়েট পদে নিয়োগ দেবে বিআইডিএস', '&lt;p&gt;নিয়োগ বিজ্ঞপ্তি প্রকাশ করেছে বাংলাদেশ উন্নয়ন গবেষণা প্রতিষ্ঠান (বিআইডিএস)। প্রতিষ্ঠানটিতে রিসার্চ অ্যাসোসিয়েট পদে মোট সাত জনকে নিয়োগ দেওয়া হবে। আগ্রহী প্রার্থীরা আবেদন করতে পারেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;পদের নাম:&amp;nbsp;&lt;/strong&gt;রিসার্চ অ্যাসোসিয়েট।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;পদসংখ্যা:&lt;/strong&gt;&amp;nbsp;মোট সাতজন।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;শিক্ষাগত যোগ্যতা ও অভিজ্ঞতা:&amp;nbsp;&lt;/strong&gt;স্বীকৃত যেকোনো শিক্ষাপ্রতিষ্ঠান থেকে অর্থনীতি বিষয়ে স্নাতকোত্তর পাস প্রার্থীরা আবেদন করতে পারবেন। স্নাতক বা স্নাতকোত্তরে একটি প্রথম শ্রেণি/সমমানের গ্রেডসহ অন্যান্য বিষয়ে অন্তত ৫৫ শতাংশ নম্বর থাকলেও আবেদন করা যাবে। শিক্ষাজীবনের কোনো পর্যায়ে তৃতীয় শ্রেণি/বিভাগ বা সমমানের জিপিএ/সিজিপিএ গ্রহণযোগ্য নয়। বাংলাদেশ ডেভেলপমেন্ট স্টাডিজ জার্নাল স্ট্যান্ডার্ডের একটি গবেষণা প্রকাশনা থাকলে ও গবেষণায় দুই বছরের অভিজ্ঞতা থাকলে বাড়তি যোগ্যতা হিসেবে বিবেচিত হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;বেতন:&lt;/strong&gt;&amp;nbsp;২২,০০০-৫৩,০৬০ টাকা (গ্রেড-৯)।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;আবেদন প্রক্রিয়া:&amp;nbsp;&lt;/strong&gt;আগ্রহী প্রার্থীদের নির্ধারিত আবেদন ফরম (&lt;a href=&quot;http://bids.org.bd/page/career/?eid=39&quot; target=&quot;_blank&quot;&gt;ফরম ডাউনলোড করতে ক্লিক করুন&lt;/a&gt;) পূরণ করে উল্লিখিত (rabids2023@gmail.com) ই-মেইলে পাঠাতে হবে।&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;আবেদনের শেষ তারিখ:&lt;/strong&gt;&amp;nbsp;৩০ মার্চ, ২০২৩।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিষয় :&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%9A%E0%A6%BE%E0%A6%95%E0%A6%B0%E0%A6%BF&quot;&gt;চাকরি&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%9A%E0%A6%BE%E0%A6%95%E0%A6%B0%E0%A6%BF%E0%A6%B0+%E0%A6%B8%E0%A7%81%E0%A6%AF%E0%A7%8B%E0%A6%97&quot;&gt;চাকরির সুযোগ&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%AC%E0%A6%BF%E0%A6%86%E0%A6%87%E0%A6%A1%E0%A6%BF%E0%A6%8F%E0%A6%B8&quot;&gt;বিআইডিএস&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%B0%E0%A6%BF%E0%A6%B8%E0%A6%BE%E0%A6%B0%E0%A7%8D%E0%A6%9A+%E0%A6%85%E0%A7%8D%E0%A6%AF%E0%A6%BE%E0%A6%B8%E0%A7%8B%E0%A6%B8%E0%A6%BF%E0%A7%9F%E0%A7%87%E0%A6%9F&quot;&gt;রিসার্চ অ্যাসোসিয়েট&lt;/a&gt;&amp;nbsp;&lt;a href=&quot;https://samakal.com/tag/%E0%A6%A8%E0%A6%BF%E0%A7%9F%E0%A7%8B%E0%A6%97&quot;&gt;নিয়োগ&lt;/a&gt;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/050323eb4494001fabfa1.jpg', 'ছবি: সংগৃহীত', 'samojug.com/samojugnews', 0, 0, '7', '2023-03-05 10:58:06', 0, 1),
(166, 'samojugc_datatable', 5, 59, 'সৌদিতে অবৈধ ভিসা বাণিজ্য : বাংলাদেশিসহ অনেকে গ্রেপ্তার', 'সৌদিতে অবৈধ ভিসা বাণিজ্য : বাংলাদেশিসহ অনেকে গ্রেপ্তার', '&lt;p&gt;অবৈধ ভিসা বাণিজ্য ও বিনিয়োগের অপরাধে বাংলাদেশিসহ বিভিন্ন ব্যক্তির বিরুদ্ধে ফৌজদারি মামলা শুরুর ঘোষণা দিয়েছে সৌদি আরব। দেশটির তদারকি এবং দুর্নীতি দমন কর্তৃপক্ষ নাজাহা শনিবার এ ঘোষণা দেয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;নাজাহা বলেছে, সৌদি স্বরাষ্ট্র মন্ত্রণালয়ের দুই কর্মীকে অবৈধ অর্থনৈতিক লেনদেনের অভিযোগে গ্রেপ্তার করা হয়েছে। তাদের বিরুদ্ধে অভিযোগ, তারা ৬০ হাজার রিয়ালের বিনিময়ে এক বিদেশি বিনিয়োগকারীর সঙ্গে ২৩ মিলিয়ন রিয়ালের আর্থিক চুক্তিতে স্বাক্ষরের জন্য এক সৌদি নাগরিককে বাধ্য করেছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;গ্রেপ্তারকৃতরা হলেন&amp;nbsp;আদালতের নিরাপত্তাবিষয়ক সার্জেন্ট (রিয়াদ অঞ্চলের পুলিশ) মেতাব সাদ আল-ঘনউম, রিয়াদের স্পেশাল মিশন ফোর্সের কর্পোরাল হাতেম মাস্তুর সাদ বিন তাইয়েব এবং ফিলিস্তিনি বিনিয়োগকারী সালেহ মোহাম্মদ সালেহ আল-শালাউত।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিবৃতিতে আরো বলা হয়েছে, বিস্তর তদন্তের পর বাংলাদেশি বাসিন্দা আশরাফ উদ্দিন আকনাদ, আলমগীর হোসেন খান, শফিক আলিসলাম শাহ জাহানসহ বেশ কয়েকজন বাসিন্দাকেও গ্রেপ্তার করা হয়েছে।&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;গ্রেপ্তারকৃত বাংলাদেশি বাসিন্দাদের মধ্যে আরো আছেন&amp;nbsp;মোহাম্মদ নাসের উদ্দিন নূর (নিজ দেশে একটি রিক্রুটিং কম্পানির মালিক), জায়েদ উওসিদ মাফি, আবুলকলাম মোহাম্মদ রফিক আলিসলাম, আজিজ আলহাক মুসলিম উদ্দিন এবং ভিজিটর আলামিন খান শহীদ আল্লাহ খান। তাদের বিরুদ্ধে অবৈধ ভিসা বাণিজ্যে জড়িত থাকা এবং সৌদির বাইরে ব্যবসা ও অর্থ পাচারের অভিযোগ রয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;নাজাহা জানিয়েছে, গ্রেপ্তারকৃতরা বাংলাদেশে সৌদি দূতাবাসের কর্মচারীদের সঙ্গে অবৈধ ভিসা বাণিজ্যে জড়িত থাকার কথা স্বীকার করেছেন। এ ছাড়াও তাদের বাড়িতে তল্লাশি চালিয়ে নগদ দুই কোটি এক লাখ ৮০ হাজার রিয়াল, সোনার খণ্ড এবং বিলাসবহুল যানবাহন জব্দ করা হয়েছে। এগুলো বেআইনিভাবে সৌদিতে কাজের ভিসা বিক্রির আয় বলে প্রমাণিত হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;আরো তদন্তের পর আরো দুজনকে গ্রেপ্তারের কথা জানিয়েছে কর্তৃপক্ষ। এর মধ্যে আছেন বাংলাদেশে সৌদি দূতাবাসের কনস্যুলার বিভাগের প্রধান এবং সাবেক উপরাষ্ট্রদূত আবদুল্লাহ ফালাহ মুদি আল-শামারি এবং দূতাবাসের কনসুলার বিভাগের উপপ্রধান খালেদ নাসের আয়েদ আল-কাহতানি। দূতাবাসে কর্মরত অবস্থায় বাংলাদেশিদের সৌদিতে কাজের ভিসা পাইয়ে দেওয়ার বিনিময়ে অনৈতিক অর্থ গ্রহণের অভিযোগ রয়েছে তাদের বিরুদ্ধে। এসব কাজে তারা কিস্তিতে ৫৪ মিলিয়ন সৌদি রিয়াল গ্রহণ করেছিলেন বলে জানিয়েছে কর্তৃপক্ষ।&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;নাজাহা বলেছে, &amp;lsquo;এই দুজন সৌদি আরবের অভ্যন্তরে গ্রেপ্তারকৃত বাসিন্দাদের কাছ থেকে অর্থ গ্রহণের কথা স্বীকার করেছেন এবং বাকিটা দেশের বাইরে বিনিয়োগ করেছেন।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;নাজাহার মতে, ব্যক্তিগত লাভ বা জনস্বার্থের ক্ষতি করার জন্য সরকারি পদের অপব্যবহার করে এমন যেকোনো ব্যক্তিকে তারা অনুসরণ করা অব্যাহত রাখবে এবং সেই দায়বদ্ধতা ব্যক্তিদের অবসরের বাইরেও প্রসারিত। কারণ এ&amp;nbsp;ধরনের অপরাধের কোনো সীমাবদ্ধতা নেই।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/050323f399c0ea17261a3.webp', 'সৌদি আরবের তদারকি এবং দুর্নীতি দমন কর্তৃপক্ষ নাজাহা বাংলাদেশিসহ অনেককে গ্রেপ্তার করেছে', 'samojug.com/samojugnews', 0, 0, '0', '2023-03-05 11:48:45', 1, 1),
(167, 'samojugc_datatable', 5, 60, 'বিশ্ববাজারে কমেছে চাল ও ভোজ্য তেলের দাম', 'বিশ্ববাজারে কমেছে চাল ও ভোজ্য তেলের দাম', '&lt;p&gt;বিশ্ববাজারে গত ফেব্রুয়ারিতে কমেছে খাদ্যপণ্যের দাম। এর ফলে টানা ১১ মাস নিম্নমুখী রয়েছে এ বাজার। জাতিসংঘের খাদ্য ও কৃষি সংস্থা (এফএও) জানায়, ফেব্রুয়ারিতে খাদ্য সূচক ছিল ১২৯.৮ পয়েন্ট, যা জানুয়ারির চেয়ে ০.৬ শতাংশ কম। এমনকি গত মার্চের সর্বোচ্চ দাম থেকে ১৮.৭ শতাংশ কম। বিশ্ববাজারে গত মাসে চাল, দুগ্ধপণ্য, ভোজ্য তেলসহ বেশ কিছু পণ্যের দাম কমলেও বেড়েছে চিনি ও গমের দাম।&lt;/p&gt;\r\n\r\n&lt;p&gt;এফএও জানায়, যুক্তরাষ্ট্রে খরা নিয়ে উদ্বেগ এবং অস্ট্রেলিয়া থেকে সরবরাহের ব্যাপক চাহিদা থাকায় গত মাসে গমের দাম বেড়েছে। এর বিপরীতে চালের দাম কমেছে ১ শতাংশ। এশিয়ার রপ্তানিকারক দেশগুলোর বাণিজ্যিক কর্মকাণ্ড কমার পাশাপাশি ডলারের বিপরীতে দেশগুলোর মুদ্রার দরপতন ঘটায় চালের দাম কিছুটা কমেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এফএও জানায়, গত মাসে ভোজ্য তেলের দামও কমেছে ৩.২ শতাংশ। পাম তেল, সয়াবিন, সানফ্লাওয়ার, রেপসিডসহ প্রায় সব ভোজ্য তেলের দাম নিম্নমুখী। ফেব্রুয়ারিতে দুগ্ধপণ্যের দামও জানুয়ারির তুলনায় কমেছে ২.৭ শতাংশ। এর বিপরীতে গত মাসে চিনির দাম বেড়েছে ৬.৯ শতাংশ, যা ছয় বছরের মধ্যে সর্বোচ্চ।&lt;/p&gt;\r\n\r\n&lt;p&gt;বাজার বিশ্লেষকরা জানান, বিশ্ববাজারে সাম্প্রতিক মাসগুলোতে খাদ্যপণ্যের দাম কমার অন্যতম কারণ ইউক্রেনের সরবরাহ বৃদ্ধি। গত ২৪ ফেব্রুয়ারি ইউক্রেনের প্রেসিডেন্ট ভোলোদিমির জেলেনস্কি এক ভিডিও বার্তায় জানান, ইউক্রেন আক্রান্ত হলেও বিশ্বের খাদ্যচাহিদা পূরণে তাঁর দেশ ভূমিকা রেখে চলেছে। বিশ্বের ৪৩ দেশে গেছে ইউক্রেনের দুই কোটি ২০ লাখ টনের বেশি খাদ্যপণ্য।&lt;/p&gt;\r\n\r\n&lt;p&gt;ভিডিও বার্তায় তিনি বলেন, &amp;lsquo;সাত মাস ধরে আমরা বিশ্বজুড়ে খাদ্যশস্য রপ্তানি করছি। এই সময়ে বিশ্বের ৪৩ দেশ সমুদ্রপথে আমাদের ২২ মিলিয়ন টনের বেশি খাদ্যপণ্য গ্রহণ করেছে। আমি মনে করি, বিশ্বের খাদ্য নিরাপত্তায় এবং খাদ্যপণ্যের বাজারে স্থিতিশীলতা রক্ষায় এটি ইউক্রেনবাসীর একটি বড় অবদান।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/050323a511648180358e1.webp', 'বিশ্ববাজারে কমেছে চাল ও ভোজ্য তেলের দাম', 'samojug.com/samojugnews', 0, 0, '7', '2023-03-05 11:52:50', 0, 1),
(168, 'samojugc_datatable', 5, 56, 'বিএনপির সঙ্গে সংলাপের কোনো সম্ভাবনা দেখছেন না ওবায়দুল কাদের', 'বিএনপির সঙ্গে সংলাপের কোনো সম্ভাবনা দেখছেন না ওবায়দুল কাদের  ', '&lt;p&gt;নির্বাচনের আগে বিএনপি নেতাদের সঙ্গে সংলাপ কিংবা আলোচনার কোনো সম্ভাবনা আওয়ামী লীগ সাধারণ সম্পাদক ওবায়দুল কাদের দেখছেন না বলে মন্তব্য করেছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;আজ সোমবার দুপুরে সচিবালয়ের সভাকক্ষে এক সংবাদ সম্মেলনে সাংবাদিকদের প্রশ্নের জবাবে এ কথা বলেন ওবায়দুল কাদের।&lt;/p&gt;\r\n\r\n&lt;p&gt;নির্বাচনের আগে বিএনপির সঙ্গে আলোচনায় বসার কোনো সম্ভাবনা আছে কি না বা ব্যাক ডোরে কোনো আলোচনা হচ্ছে কি না&amp;mdash;এমন প্রশ্নের জবাবে আওয়ামী লীগ সাধারণ সম্পাদক বলেন, &amp;lsquo;আমরা যা করি প্রকাশ্যে করি, গণতন্ত্রে ব্যাক ডোরে আলোচনার কোনো প্রয়োজন নেই। দরকার হলে আমিই ফখরুল সাহেবকে ফোন করব, না হয় উনি দেবেন।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;কোনো সম্ভাবনা আছে কি না&amp;mdash;এমন প্রশ্নে কাদের বলেন, &amp;lsquo;আমি দেখছি না।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;সব সময়ই &amp;lsquo;কালো মেঘ কেটে যাবে&amp;rsquo; বলে আসছেন, কিন্তু বাস্তবে কতটুকু&amp;mdash;এমন প্রশ্নে ওবায়দুল কাদের বলেন, &amp;lsquo;নির্বাচনকে কেন্দ্র করে কালো মেঘ আসে, সেটা আমাদের দেশে নতুন নয়। কী হবে, সেটা প্রেডিক্ট করে তো বলা যাবে না। তবে আমি আশাবাদী মানুষ। আমি মনে করি, মেঘ কেটে যাবে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;ওবায়দুল কাদের আরও বলেন, &amp;lsquo;আমি পরিষ্কার করে বলতে চাই, দুনিয়ার বিভিন্ন দেশে নির্বাচন হয়; কিন্তু বাংলাদেশে এমন কিছু ঘটেনি যে সংবিধান পরিবর্তন করতে হবে এবং এমন কোনো পরিস্থিতি সৃষ্টি হয়নি যে সংবিধানের বাইরে যেতে হবে। সংবিধানের বাইরে কোনো ছাড় দেব না। অন্যান্য দেশে যেভাবে নির্বাচন হয়, সেভাবেই হবে। সংবিধান পরিবর্তন করে কারও সঙ্গে আপস করতে হবে&amp;mdash;এমন বিপদে পড়িনি। এই সংবিধান কাটাকাটির কোনো সুযোগ নেই।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;আগামী নির্বাচনে বিএনপির আন্দোলন&amp;ndash;সংগ্রাম এবং অর্থনৈতিক সংকট&amp;mdash;কোনটাকে চ্যালেঞ্জ হিসেবে দেখছেন জানতে চাইলে কাদের বলেন, &amp;lsquo;বিএনপির আন্দোলন বাস্তবে যত গর্জে তত বর্ষে না। তর্জন&amp;ndash;গর্জনই সার। পদযাত্রা হলো, নীরব পদযাত্রা থেকে এখন তারা নিঃশব্দ মানববন্ধনে। তাদের আন্দোলনের গতি দেখেই বোঝা যায় আন্দোলনের যতটুকু গতি আশা করেছিল, সেটা নেই। আন্দোলনে নেতা-কর্মীদের অংশগ্রহণ কিছুটা থাকলেও জনগণের অংশগ্রহণ নেই। এটাকে চ্যালেঞ্জ হিসেবে দেখছি না। আর আন্দোলন করলে রাজনৈতিকভাবে মোকাবিলা করব, সহিংসতা করলে জনগণের জানমাল রক্ষায় যা করার প্রয়োজন, তা&amp;ndash;ই করব।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;অর্থনৈতিক সংকট আছে, এটা চ্যালেঞ্জই&amp;mdash;স্বীকার করে ওবায়দুল কাদের বলেন, রাশিয়া&amp;ndash;ইউক্রেন যুদ্ধ অচিরেই থেমে যাবে, এমন নয়। যার ফলে সারা দুনিয়াতে সংকট আছে, বাংলাদেশেও সংকট আছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;আমাদের বেশি দামে আমদানি করতে হয়। প্রধানমন্ত্রী সর্বাত্মক চেষ্টা চালিয়ে যাচ্ছেন। এই সংকট সামাল দেওয়াই বড় চ্যালেঞ্জ। আর সরকারে সৎ চেষ্টার ওপর জনগণের আস্থা আছে। তারা (বিরোধী রাজনৈতিক দল) উসকে দেওয়ার চেষ্টা করে কোন সাড়া পায়নি।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;পঞ্চগড়ে একটি ধর্মীয় অনুষ্ঠানকে কেন্দ্র করে হতা&lt;/p&gt;\r\n\r\n&lt;p&gt;ওবায়দুল কাদের বলেন, &amp;lsquo;এখন তারা যে স্বাভাবিক পথে যেতে চায় না, তাদের আন্দোলনে ভাটা নেমেছে, সে কারণে তারা এখন নাশকতার দিকে যাচ্ছে কি না, সেটা কিন্তু আমাদের খতিয়ে দেখতে হবে। রোহিঙ্গা ক্যাম্পে আগুন লাগল কেন? একসঙ্গে এই ঘটনাগুলো ঘটছে। আর সব দোষ আওয়ামী লীগের ওপর চাপায়। ওখানে অক্সিজেন ব্লাস্ট হয়ে অ্যাক্সিডেন্ট হয়ে গেছে, দোষ কার? আওয়ামী লীগের। চট্টগ্রামের সীতাকুণ্ডে কার্বন ডাই&amp;ndash;অক্সাইড আর নাইট্রোজেন একই জায়গায় রাখায় সংঘর্ষ হয়ে ব্লাস্ট হয়েছে। দোষ কার? আওয়ামী লীগের।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;ওবায়দুল কাদের বলেন, &amp;lsquo;মনে হয় শীত বেশি, গরম কিংবা বজ্রপাতে মৃত্যুর জন্যও আওয়ামী লীগকে দায়ী করবে। তাদের অবস্থানটা কী? তাদের অবস্থান ক্ষমতায় যাওয়া নয়। তাদের অবস্থান শেখ হাসিনাকে হটানো। ক্ষমতায় যাওয়া তাদের লক্ষ্য নয়। বিএনপির লক্ষ্য একটাই, শেখ হাসিনাকে ক্ষমতা থেকে হটানো।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;হত হওয়ার ঘটনায় নিন্দা জানান বিএনপি মহাসচিব মির্জা ফখরুল ইসলাম আলমগীর। তিনি গতকাল এক বিবৃতিতে বলেন, এ ধরনের বিরোধ ও সংঘাতের জন্য ক্ষমতাসীন সরকারের উদাসীনতা এবং পরোক্ষ পৃষ্ঠপোষকতা দায়ী।&lt;/p&gt;\r\n\r\n&lt;p&gt;মির্জা ফখরুলের সাম্প্রতিক মন্তব্যের প্রতিক্রিয়ায় ওবায়দুল কাদের বলেন, &amp;lsquo;পঞ্চগড়ের ঘটনা খতিয়ে দেখা হচ্ছে। কারা উসকানি দিয়েছে, এর মধ্যে যারা অ্যারেস্ট হয়েছে, তাদের নেতাও আছে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/06032341dba5666bf33eb.webp', 'আওয়ামী লীগ সাধারণ সম্পাদক ওবায়দুল কাদের', 'samojug.com/samojugnews', 0, 0, '0', '2023-03-06 10:34:47', 0, 1),
(169, 'samojugc_datatable', 5, 56, 'আবার পুরোনো খেলায় মেতে উঠেছে সরকার: ফখরুল', 'আবার পুরোনো খেলায় মেতে উঠেছে সরকার: ফখরুল', '&lt;p&gt;বিএনপিকে নেতৃত্বহীন করার লক্ষ্যে সরকার আবার &amp;lsquo;গায়েবি&amp;rsquo; মামলা ও গ্রেপ্তারের পুরোনো খেলায় মেতে উঠেছে বলে অভিযোগ করেন দলের মহাসচিব মির্জা ফখরুল ইসলাম আলমগীর। তিনি বলেন, গত ২৫ ফেব্রুয়ারি কেন্দ্র ঘোষিত পদযাত্রার কর্মসূচির ১ দিনেই ৮ জেলায় ৯৩৭ জনকে আসামি করে মামলা করা হয়েছে। এর মধ্যে ৫৩ জনকে গ্রেপ্তার করা হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;আজ সোমবার দুপুরে গুলশানে বিএনপির চেয়ারপারসনের কার্যালয়ে এক সংবাদ সম্মেলনে মির্জা ফখরুল ইসলাম এসব কথা বলেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;কথায় কথায় এই &amp;lsquo;মিথ্যা ও গায়েবি&amp;rsquo; মামলা, গ্রেপ্তার ও হয়রানিকে সরকার একটা প্রজেক্টের মতো নিয়েছে বলে মন্তব্য করেন বিএনপির মহাসচিব। তিনি বলেন, মামলায় নাম দিচ্ছে ১০০ জনের, কিন্তু অজ্ঞাতনামা আসামি করা হচ্ছে এক হাজার বা দেড় হাজার জন। গ্রেপ্তারের পর যখন কেউ জামিন নিয়ে বের হন, তখন তাঁকে আবার গ্রেপ্তার করা হচ্ছে নতুন মামলায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;এটাকে আগামী জাতীয় নির্বাচনের আগে বিএনপিকে মাঠ ছাড়া করার চক্রান্ত বলে মনে করেন মির্জা ফখরুল ইসলাম। এ বিষয়ে এক প্রশ্নের জবাবে তিনি বলেন, &amp;lsquo;আমরা ওই আশঙ্কাই করছি এবং এ কারণেই আবার গ্রেপ্তার শুরু করেছে। দেখুন পঞ্চগড়ের ঘটনা। পঞ্চগড়ের ঘটনা কোনো বিচ্ছিন্ন ঘটনা নয়। এ ঘটনা ঘটিয়ে ঠিক একইভাবে বিএনপির লোকজনদের আসামি করে গ্রেপ্তার করছে, বাড়ি বাড়ি অভিযান চালাচ্ছে। ইতিমধ্যে বেশ কয়েকজনকে গ্রেপ্তার করা হয়েছে। এটা হচ্ছে আওয়ামী লীগের পুরোনো খেলা। নির্বাচনের পূর্বে তারা বিএনপিকে একেবারে মাঠ থেকে বের করে দিতে চায়।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;lsquo;এবার আর সেটা সম্ভব হবে না&amp;rsquo; জানিয়ে মির্জা ফখরুল ইসলাম বলেন, এবার জনগণ রাস্তায় নেমে গেছে। বিএনপি রাস্তায় নেমেছে। এই আন্দোলন চূড়ান্ত পর্যায়ে যাবে এবং নিঃসন্দেহে একটা অভ্যুত্থানের মধ্য দিয়ে এ সরকারকে পরাজয় বরণ করতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;সংবাদ সম্মেলনে বিএনপির মহাসচিব কারাগারে নিজের অভিজ্ঞতার কথা উল্লেখ করে বলেন, মিথ্যা মামলায় নেতা-কর্মীদের জেলে নেওয়ার পর তাঁদের সঙ্গে চরম অমানবিক আচরণ করা হয়। যা মধ্যযুগীয় বর্বরতাকেও হার মানাবে বলে তাঁর মনে হয়েছে। এ সঙ্গে তিনি কারাবন্দী দলের জ্যেষ্ঠ যুগ্ম মহাসচিব রুহুল কবির রিজভী আহমেদের কথা উল্লেখ করেন।&lt;/p&gt;\r\n\r\n&lt;h2&gt;কারাবন্দী রিজভীকে নিয়ে উদ্বেগ&lt;/h2&gt;\r\n\r\n&lt;p&gt;বিএনপির মহাসচিব মির্জা ফখরুল বলেন, রুহুল কবির রিজভী বিভিন্ন মারাত্মক অসুখে শারীরিকভাবে অসুস্থ একজন মানুষ। তিনি ডায়াবেটিস, উচ্চ রক্তচাপ, করোনায় আক্রান্ত হয়ে ফুসফুস ও হার্টের জটিলতায় ভুগছেন। স্বৈরাচার এরশাদবিরোধী আন্দোলনে বুকে ও পায়ে গুলিবিদ্ধ রিজভী আহমেদকে সব সময় লাঠির ওপর ভর করে চলতে হয়। অন্যের সাহায্য ছাড়া তিনি সিঁড়ি বেয়ে উঠতে পারেন না।&lt;/p&gt;\r\n\r\n&lt;p&gt;এমন এক পরিস্থিতিতে রুহুল কবির রিজভীকে কেরানীগঞ্জ কারাগার থেকে প্রায় প্রতিদিনই প্রিজন ভ্যানে পুরান ঢাকার আদালতে আনা-নেওয়া হচ্ছে। এই প্রিজন ভ্যানগুলোয় বসার কোনো ব্যবস্থা নেই। এমনকি কিছু ধরে যে দাঁড়াবে, সে ব্যবস্থাও নেই। এ অবস্থায় অসুস্থ রুহুল কবির রিজভীকে চরম ঝুঁকি নিয়ে প্রায় প্রতিদিনেই আদালতে আনা নেওয়া করানো হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;মির্জা ফখরুল আরও বলেন, যেকোনো বন্দীকে আদালতে আনা-নেওয়ার ক্ষেত্রে পুলিশ প্রবিধান ও জেল কোড বিধি অনুযায়ী আরামদায়ক পদ্ধতি ব্যবহার করার কথা। কিন্তু পুলিশ শাসকগোষ্ঠীর ইচ্ছায় তা অমান্য করে যাচ্ছে, যা চরম অমানবিকতা ও মানবাধিকারের লঙ্ঘন। সরকারের রাজনৈতিক প্রতিহিংসার শিকার হয়ে রিজভী কিছুদিন ধরে কারাগারে অসুস্থ হয়ে পড়েছেন। তাঁর উপযুক্ত সুচিকিৎসা প্রদানে সরকার এবং কারা কর্তৃপক্ষ অবহেলা করছে অভিযোগ করে গভীর উদ্বেগ জানান মির্জা ফখরুল ইসলাম।&lt;/p&gt;\r\n\r\n&lt;p&gt;সম্প্রতি নিজের এবং দলের নেতা মির্জা আব্বাসের সঙ্গে কারাবন্দী হওয়ার অভিজ্ঞতা তুলে ধরেন মির্জা ফখরুল ইসলাম। তিনি বলেন, কারা বিধি অনুযায়ী তাঁরা দুজনই সাবেক মন্ত্রী ও সংসদ সদস্য হিসেবে ডিভিশন পাওয়ার অধিকারী। কিন্তু চার দিন তাঁদের ফাঁসির দণ্ডপ্রাপ্ত আসামিদের কনডেম সেলে রাখা হয়। যেখানে তাঁদের ফ্লোরে শুতে হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;কারাগারগুলোয় এখন তিল ধারণের ঠাঁই নেই বলে মন্তব্য করে বিএনপির মহাসচিব বলেন, বিএনপির স্বেচ্ছাসেবক&amp;ndash;বিষয়ক সম্পাদক মীর সরফত আলী, সহপ্রচার সম্পাদক শামীমুর রহমান, যুবদলের সাবেক সভাপতি সাইফুল আলম, সহসভাপতি ইউসুফ বিন জলিল, যুগ্ম সাধারণ সম্পাদক ও ঢাকা মহানগর দক্ষিণ যুবদলের আহ্বায়ক গোলাম মাওলা শাহীন, ঢাকা মহানগর উত্তরের যুগ্ম আহ্বায়ক আতাউর রহমান, ভাটারা থানার যুগ্ম আহ্বায়ক মো. আলী, গুলশান থানার যুগ্ম আহ্বায়ক মো. শাহজাহান সরকারের রোষানলে পড়ে কারাবন্দী।&lt;/p&gt;\r\n\r\n&lt;p&gt;মির্জা ফখরুল বলেন,সরকার এখন বেপরোয়া ভূমিকায় মাঠে নেমেছে। বিরোধী দলের নেতা-কর্মীদের ওপর নির্যাতন-নিপীড়ন চালিয়ে চারদিকে ভীতির বিস্তার ঘটাচ্ছে, যাতে সরকারের বিরুদ্ধে কেউ আওয়াজ করারও সাহস না পায়। অজানা আশঙ্কা, আতঙ্ক আর ভয়ের এক বিষাদময় পরিবেশ মানুষের স্বাভাবিক জীবনযাপনকে বিপর্যস্ত করে তুলেছে। বর্তমান স্বৈরশাহী দেশে বিরোধী দলের অস্তিত্ব ধ্বংস করে নিজেদের দুঃশাসনকে প্রলম্বিত করতে চায়। তবে জনগণ তাদের এই মনোবাঞ্ছা কোনো দিনই পূরণ হতে দেবে না।&lt;/p&gt;\r\n\r\n&lt;p&gt;সংবাদ সম্মেলনে আরও উপস্থিত ছিলেন বিএনপির চেয়ারপারসনের উপদেষ্টা আমানউল্লাহ আমান, কেন্দ্রীয় নেতা জহির উদ্দিন স্বপন, কামরুজ্জামান রতন, জয়নুল আবেদিন মেজবাহ, তাইফুল ইসলাম, সাঈদ সোহরাব ও তারিকুল আলম, প্রেস উইংয়ের সদস্য শামসুদ্দিন দিদার প্রমুখ।&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/060323ddd33bdbe14dd69.webp', 'গুলশানে বিএনপির চেয়ারপারসনের কার্যালয়ে সংবাদ সম্মেলনে মির্জা ফখরুল ইসলাম আলমগীর।', 'samojug.com/samojugnews', 0, 0, '0', '2023-03-06 10:38:15', 0, 1),
(170, 'samojugc_datatable', 5, 58, 'অধ্যাপক তানজীমের নিরাপত্তার নিশ্চয়তা চাই', 'অধ্যাপক তানজীমের নিরাপত্তার নিশ্চয়তা চাই', '&lt;p&gt;ঢাকা বিশ্ববিদ্যালয়ের আন্তর্জাতিক সম্পর্ক বিভাগের অধ্যাপক মোহাম্মদ তানজীমউদ্দিন খানের নিরাপত্তার নিশ্চয়তা চেয়েছে বিশ্ববিদ্যালয় শিক্ষকদের সংগঠন বিশ্ববিদ্যালয় শিক্ষক নেটওয়ার্ক। আজ সোমবার এক বিবৃতিতে ৫৩ জন শিক্ষক বলেছেন, আন্তর্জাতিক সম্পর্ক বিভাগের শিক্ষার্থী এহসান ধ্রুবর আত্মহত্যার চেষ্টা ও শিক্ষক মোহাম্মদ তানজীমউদ্দিন খানকে এ জন্য সম্ভাব্য দায়ী করে ঘটনাক্রম কয়েক দিন পর্যবেক্ষণ করেছি। আমরা অধ্যাপক তানজীমের নিরাপত্তা নিয়ে উদ্বিগ্ন বোধ করছি। পুরো বিষয়ে ঢাকা বিশ্ববিদ্যালয় কর্তৃপক্ষের নীরবতাও পর্যবেক্ষণে ধরা পড়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;rsquo;বিবৃতিতে বলা হয়েছে, &amp;lsquo;সম্প্রতি শিক্ষার্থী ধ্রুব স্বপ্রণোদিতভাবে মোহাম্মদ তানজীমউদ্দিন খানের কাছে গিয়ে এক ছাত্রীর বিরুদ্ধে চারিত্রিক কলঙ্কারোপণ করার চেষ্টা করেন। মোহাম্মদ তানজীমউদ্দিন খান তাঁর কাছে সে&amp;ndash;সংক্রান্ত প্রমাণ চান। এহসান ধ্রুব যথাযথ প্রমাণ হাজির না করে অন্য সহপাঠীদের সাক্ষী মানেন। পরে ২ মার্চ মোহাম্মদ তানজীমউদ্দিন খান ক্লাসে এহসান ধ্রুবকে দাঁড় করিয়ে সহপাঠীদের নাম জানাতে বলেন। ধ্রুব নাম জানাতে রাজি না হলে তানজীম তাঁকে এ ধরনের গুজব ছড়ানো বন্ধ করতে ও সহপাঠীদের বিরুদ্ধে ষড়যন্ত্রে লিপ্ত হতে বারণ করেন। ক্লাস থেকে বের হয়ে ব্যক্তিগতভাবে ক্ষমা প্রার্থনা করলেও ক্লাসের সামনে তাঁকে &amp;ldquo;অপমান&amp;rdquo; করার জন্য মোহাম্মদ তানজীমউদ্দিন খানকে অভিযুক্ত করেন। তিনি হুমকি দেন যে যদি তিনি আত্মহননের পথ বেছে নেন, তার জন্য অধ্যাপক তানজীমই দায়ী থাকবেন। এরপর তানজীমউদ্দিন তাঁকে নানাভাবে বোঝান যেন তিনি ও রকম কিছু না করেন। এরপরও এহসান ধ্রুব ফেসবুক স্ট্যাটাসে সুইসাইড নোট লেখেন এবং আত্মহননের সিদ্ধান্তের পেছনে অধ্যাপক তানজীমকেই দায়ী করেন। তিনি উল্লেখ করেন যে ছাত্রসংগঠন ছাত্রলীগের সদস্য হওয়ার কারণেই নাকি অধ্যাপক তানজীম তাঁর বিরুদ্ধে বিরূপ হয়েছেন। কয়েক ঘণ্টা পরে, অনেক খোঁজাখুঁজি করে তাঁকে উদ্ধার করা হয় এবং হাসপাতালে ভর্তি করা হয়। স্বস্তির বিষয়, তিনি এখন শারীরিকভাবে সুস্থ আছেন।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;বিশ্ববিদ্যালয় শিক্ষক নেটওয়ার্ক বলেছে, &amp;lsquo;এ ঘটনার পর ইতিমধ্যে এহসান ধ্রুবর ফেসবুকের বক্তব্যের কারণে ক্যাম্পাসে বিভ্রান্তি ছড়ায়, ছাত্রলীগের কিছু সদস্য মধ্যরাতে উপাচার্যের বাসভবনের সামনে গিয়ে ধ্রুবর পরিস্থিতির জন্য শিক্ষক তানজীমের বিরুদ্ধে ব্যবস্থা নেওয়ার দাবি করেন। গণমাধ্যমে দেওয়া কোনো কোনো ছাত্রলীগ নেতার বক্তব্য ও সামাজিক মাধ্যমে কারও কারও পোস্টের মধ্য দিয়ে অধ্যাপক তানজীমের বিরুদ্ধে বিদ্বেষমূলক বক্তব্য ও হুমকি ছড়িয়ে পড়ে। আমরা মনে করি, পুরো ঘটনায় অধ্যাপক তানজীমের যে ভূমিকা, তা যথাযথ ছিল এবং একজন সচেতন শিক্ষকের দায়িত্বই তিনি পালন করেছেন। একজন নারী শিক্ষার্থীর বিরুদ্ধে হয়রানি বন্ধ করতে একজন সচেতন শিক্ষকের যা করা প্রয়োজন, তিনি ঠিক সে কাজই করেছেন। গণমাধ্যমে প্রকাশিত ১৩তম ব্যাচের শিক্ষার্থীদের বিবৃতিতে ও বর্ণনায়ও অধ্যাপক তানজীমের ভূমিকাটি সঠিক ছিল বলেই প্রতিভাত হয়েছে। অধ্যাপক তানজীমের বক্তব্যে আমরা জেনেছি, ধ্রুবর ছাত্রলীগ&amp;ndash;সংশ্লিষ্টতা বিষয়ে তাঁর কোনো ধারণা ছিল না। বরং ধ্রুবই তাঁর এই পরিচয়কে তাঁর ই&amp;ndash;মেইলে সামনে আনেন এবং ঘটনাটিতে তাঁর রাঙানো রাজনৈতিক পরিচয়ের জের ধরেই ছাত্রলীগের সদস্যরা অধ্যাপক তানজীমের বিরুদ্ধে বিদ্বেষমূলক বক্তব্য দেয়। এখন প্রশ্ন হলো, একজন শিক্ষার্থী কেন তাঁর শিক্ষককে জড়িয়ে এমন একটি ভয়ংকর ঘটনা ঘটালেন? জানা গেছে, এহসান ধ্রুব যাঁর বিরুদ্ধে কুৎসা ছড়াচ্ছিলেন, সেই মেয়েটির কাছে অতীতে প্রেম প্রস্তাব দিয়ে প্রত্যাখ্যাত হয়েছেন এবং তিনি এই ঘটনার পূর্বে মেয়েটির বিরুদ্ধে আন্তব্যক্তিক পর্যায়ে ও সামাজিক মাধ্যমে কুৎসা ছড়িয়েছেন, যাকে পরিকল্পিত বাচিক নিপীড়ন হিসেবে দেখতে হবে। শিক্ষার্থীদের এ ধরনের সমস্যা নিরসনে শিক্ষকদের ন্যায়ের পক্ষেই অবস্থান নিতে হয়। অধ্যাপক তানজীমউদ্দিন খান সবার সামনে অভিযোগের সত্যতা যাচাইয়ে উদ্যোগ নিয়ে ঠিক কাজটিই করেছেন। এ চেষ্টাকে কোনোভাবেই &amp;ldquo;র&amp;zwj;্যাগিং&amp;rdquo; বলা চলে না; বরং বিশ্ববিদ্যালয়ের অধ্যাদেশ মেনে শিক্ষকের এটাই যথোপযুক্ত আচরণ!&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;বিশ্ববিদ্যালয় শিক্ষক নেটওয়ার্ক বিবৃতিতে বলছে, &amp;lsquo;আমরা বিশ্ববিদ্যালয় শিক্ষক নেটওয়ার্কের সদস্যরা প্রথমত, নারী শিক্ষার্থীর ওপর ধ্রুবর বাচিক ও মানসিক নিপীড়নের শাস্তি দাবি করছি। দ্বিতীয়ত, এই ঘটনায় অধ্যাপক তানজীমের নিরাপত্তা নিয়ে উদ্বেগ প্রকাশ করছি। তৃতীয়ত, আত্মহত্যার চেষ্টা করা শিক্ষার্থীর মানসিক পরিস্থিতি বিবেচনা করে তাঁর মানসিক স্বাস্থ্যসেবার উদ্যোগ নেওয়ার জন্যও বিভাগ এবং বিশ্ববিদ্যালয় প্রশাসনের হস্তক্ষেপ কামনা করছি।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;বিশ্ববিদ্যালয় শিক্ষক নেটওয়ার্ক আশা করছে, &amp;lsquo;প্রশাসন আন্তর্জাতিক সম্পর্ক বিভাগের শিক্ষক ও শিক্ষার্থীর মধ্যে ঘটে যাওয়া এ অনাকাঙ্ক্ষিত ঘটনা সংবেদনশীলতার সঙ্গে পর্যালোচনা করবে এবং প্রয়োজনীয় ব্যবস্থা নেবে। বিশ্ববিদ্যালয় কর্তৃপক্ষের কাছে আমাদের দাবি, তারা শিগগিরই মোহাম্মদ তানজীমউদ্দিন খানের নিরাপত্তার প্রয়োজনীয় ব্যবস্থা নেবে এবং নারী শিক্ষার্থীর আনা অভিযোগের সুষ্ঠু তদন্ত ও বিচার করবে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;গত বৃহস্পতিবার রাতে ফেসবুকে আত্মহত্যার ইঙ্গিতমূলক একটি পোস্ট দেন জাতির জনক বঙ্গবন্ধু শেখ মুজিবুর রহমান হল শাখা ছাত্রলীগের প্রশিক্ষণবিষয়ক উপসম্পাদক এস এম এহসান উল্লাহ ওরফে ধ্রুব। পোস্টে তিনি অধ্যাপক তানজীমের বিরুদ্ধে তাঁর সঙ্গে অন্যায় করা ও অপমানজনক আচরণের অভিযোগ তোলেন। এই স্ট্যাটাসের পর এহসান নিখোঁজ হন। পরে ঢাকা বিশ্ববিদ্যালয় শাখা ছাত্রলীগের সভাপতি মাজহারুল কবির ও সাধারণ সম্পাদক তানভীর হাসানের অনুসারী একদল নেতা-কর্মী এই &amp;lsquo;অপমানের&amp;rsquo; জন্য শিক্ষকের বিচার চেয়ে বৃহস্পতিবার দিবাগত রাত একটা থেকে ঘণ্টা দুয়েক বিশ্ববিদ্যালয়ের উপাচার্য মো. আখতারুজ্জামানের বাসভবনের সামনে অবস্থান করেন। পরে বৃহস্পতিবার রাত দেড়টার দিকে ড. মুহম্মদ শহীদুল্লাহ্ হলের পুকুরপাড় থেকে অচেতন অবস্থায় এহসান উদ্ধার হন। ঘুমের ওষুধ খেয়ে আত্মহত্যার চেষ্টা করা এই ছাত্রলীগ নেতাকে ঢাকা মেডিকেল কলেজ হাসপাতালে ভর্তি করা হয়। এখন তিনি সুস্থ আছেন। তাঁকে উদ্ধার করার সময়ের ছবি পোস্ট করে ওই দিন রাতেই ছাত্রলীগের নেতা তানভীর হাসান ফেসবুকে লিখেছিলেন, &amp;lsquo;আমার ভাইয়ের কিছু হলে কাউকে ছাড় দেওয়া হবে না। ছাত্রলীগেরও রক্তের মূল্য আছে। প্রয়োজনে রক্ত দিয়ে রক্তের মূল্য আদায় হবে। জয় বাংলা।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0603234258715d4f47f11.webp', 'অধ্যাপক তানজীমের পক্ষে শিক্ষার্থীদের মানববন্ধন। ৫ মার্চ, ঢাকা বিশ্ববিদ্যালয়', 'samojug.com/samojugnews', 0, 0, '0', '2023-03-06 10:43:02', 0, 1),
(171, 'samojugc_datatable', 5, 58, 'সিলেট-জকিগঞ্জ সড়কে আবারও ধর্মঘটের ডাক পরিবহনমালিক ও শ্রমিকদের', 'সিলেট-জকিগঞ্জ সড়কে আবারও ধর্মঘটের ডাক পরিবহনমালিক ও শ্রমিকদের', '&lt;p&gt;সিলেট-জকিগঞ্জ সড়কে আবারও ধর্মঘটের ডাক দিয়েছে সিলেট জেলা সড়ক পরিবহন মালিক শ্রমিক ঐক্য পরিষদ। ওই সড়কে বাংলাদেশ সড়ক পরিবহনকরপোরেশনের (বিআরটিসি) চারটি বাস একটি করে ট্রিপ দেওয়ার দাবিতে আগামী বৃহস্পতিবার সকাল ছয়টা থেকে অনির্দিষ্টকালের ধর্মঘট পালনের ডাক দিয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এর আগে একই দাবিতে গত ৩০ জানুয়ারি থেকে অনির্দিষ্টকালের জন্য কর্মবিরতির ডাক দেওয়া হয়েছিল। পরে ২৯ জানুয়ারি জেলা প্রশাসন, বিআরটিসি কর্তৃপক্ষ এবং পরিবহন মালিক ও শ্রমিক ঐক্য পরিষদের নেতারা সভা করে সেটি স্থগিত করে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এক মাস পার হতেই আবারও একই দাবিতে ধর্মঘটের ডাক দিয়েছে সিলেট জেলা সড়ক পরিবহন মালিক শ্রমিক ঐক্য পরিষদ। গতকাল রোববার রাতে সিলেট নগরের দক্ষিণ সুরমার কদমতলী এলাকার জেলা সড়ক পরিবহন মালিক সমিতির কার্যালয়ে জেলা সড়ক পরিবহন মালিক সমিতি ও সিলেট জেলা বাস মিনিবাস কোচ মাইক্রোবাস শ্রমিক ইউনিয়নের যৌথ সভায় ধর্মঘট পালনের সিদ্ধান্ত হয়। এতে সভাপতিত্ব করেন সিলেট জেলা সড়ক পরিবহন মালিক সমিতির সভাপতি আবুল কালাম।&lt;/p&gt;\r\n\r\n&lt;p&gt;সভায় সিলেট-জকিগঞ্জ সড়কে বিআরটিসি কর্তৃপক্ষ হঠাৎ বিশৃঙ্খলভাবে বাস চালু করেছে বলে দাবি করা হয়। পরিবহন নেতাদের অভিযোগ, সড়কে প্রতিদিন চারটি বাস চলাচল করার কথা থাকলেও চারটির অধিক বাস চলাচল করছে। বাসগুলো একাধিক ট্রিপ দিচ্ছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;সভায় বক্তারা বলেন, এর আগে প্রশাসনের আশ্বাসে কর্মসূচি স্থগিত করা হয়। কিন্তু পরিবহনমালিক ও শ্রমিকদের দাবি বাস্তবায়ন করা হয়নি। প্রশাসনের সঙ্গে বৈঠকের প্রতিশ্রুতি অনুযায়ী আগামী বুধবারের মধ্যে দাবি বাস্তবায়ন করা না হলে বৃহস্পতিবার সকাল ছয়টা থেকে সিলেট-জকিগঞ্জ সড়কে অনির্দিষ্টকালের পরিবহন শ্রমিক কর্মবিরতি পালন করবে। ধর্মঘট চলাকালে ওই সড়কের সব গণপরিবহন চলাচল বন্ধ থাকবে। এতেও সমাধান না হলে প্রথমে সিলেট জেলা এবং পরবর্তী সময় বিভাগীয় পর্যায়ে কঠোর কর্মসূচি পালন করা হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ বিষয়ে সিলেট বিআরটিসির ডিপো ব্যবস্থাপক সোহেল রানা প্রথম আলোকে বলেন, সড়কটিতে বিআরটিসির চারটি বাসই চলছে। সিলেট জেলা প্রশাসন এবং পরিবহনমালিক ও শ্রমিকদের সঙ্গে বৈঠকে এমনটিই সিদ্ধান্ত হয়েছিল। কিন্তু আবার ধর্মঘটের আহ্বানের বিষয়টি তাঁর জানা নেই।&lt;/p&gt;\r\n\r\n&lt;p&gt;সিলেট জেলা সড়ক পরিবহন মালিক শ্রমিক ঐক্য পরিষদের সাধারণ সম্পাদক শাহ মো. জিয়াউল কবির বলেন, বিআরটিসি কর্তৃপক্ষ চারটি বাস চলাচলের কথা বলে ছয়টি বাস চালাচ্ছে। তবে তারা দাবি করে মাত্র চারটি বাস চালাচ্ছে। যে বাসগুলো ওই সড়কে চলাচল করে, সেগুলোর নম্বর চাইলে তারা দিতে অপরাগতা প্রকাশ করে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0603230b0de8f79e2fe81.webp', 'সিলেট জেলার মানচিত্র', 'samojug.com/samojugnews', 0, 0, '0', '2023-03-06 10:46:00', 0, 1),
(172, 'samojugc_datatable', 5, 59, 'আর্মেনিয়া-আজারবাইজান সীমান্তে সংঘর্ষে নিহত ৫', 'আর্মেনিয়া-আজারবাইজান সীমান্তে সংঘর্ষে নিহত ৫', '&lt;p&gt;নাগর্নো-কারাবাখ অঞ্চলের নিয়ন্ত্রণ নিয়ে আর্মেনিয়া ও আজারবাইজানের মধ্যে সংঘর্ষে পাঁচজন নিহত হয়েছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;আর্মেনিয়া বলেছে, সংঘর্ষে তাদের তিন পুলিশ কর্মকর্তা নিহত হয়েছেন। অন্যদিকে আজারবাইজান বলেছে, তাদের দুই সেনা নিহত হয়েছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;আজারবাইজানের পক্ষ থেকে বলা হয়েছে, সীমান্ত অঞ্চলে তারা আর্মেনিয়ার একটি গাড়ি ধাওয়া করে। কারণ, তাদের সন্দেহ ছিল, ওই গাড়িতে বেআইনিভাবে অস্ত্র পাচার করা হচ্ছে। গাড়িটি থেকে আজারবাইজানের সেনার ওপর গুলি করা হয়। আজারবাইজানও তার জবাব দেয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;আর্মেনিয়া বলছে, সীমান্ত অঞ্চল দিয়ে তাদের পাসপোর্ট কর্মকর্তাদের একটি গাড়ি যাচ্ছিল। আজারবাইজানের সেনা বিনা প্ররোচনায় তাঁদের ওপর গুলি চালাতে শুরু করে। কর্মকর্তারাও পাল্টা গুলি চালান।&lt;/p&gt;\r\n\r\n&lt;p&gt;নাগর্নো-কারাবাখ নিয়ে দুই দেশের লড়াইয়ের ইতিহাস দীর্ঘ। ২০২০ সালে আর্মেনিয়া ও আজারবাইজানের মধ্যে রীতিমতো যুদ্ধ শুরু হয়ে গিয়েছিল। শেষ পর্যন্ত রাশিয়া এবং অন্যান্য দেশের মধ্যস্থতায় যুদ্ধ বন্ধ হয়। যদিও আর্মেনিয়ার বক্তব্য, তাদের হাত থেকে কার্যত নাগর্নো-কারাবাখ কেড়ে নেওয়া হয়েছে, যা নিয়ে দেশের ভেতরে বিক্ষোভও হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;নাগর্নো-কারাবাখে মূলত আর্মেনিয়ার অধিবাসীদের বসবাস। এখনো সেখানে প্রায় ১ লাখ ২০ হাজার আর্মেনীয় মানুষ থাকে। তাদের সঙ্গে আর্মেনিয়ার মূল ভূখণ্ডের যোগসূত্র লাচিন করিডর। আর্মেনিয়ার অভিযোগ, বেআইনি কয়লাখনি আছে, এই অভিযোগে, সেখানে রাস্তা অবরোধ করে আন্দোলন করছেন বেশ কিছু পরিবেশ কর্মী। ওই পরিবেশ কর্মীদের আজারবাইজান পাঠিয়েছে বলে অভিযোগ।&lt;/p&gt;\r\n\r\n&lt;p&gt;কিছুদিন ধরেই লাচিন করিডরের অবরোধ নিয়ে উত্তাপ বাড়ছিল। এবার সরাসরি গুলির লড়াই হলো। এলাকায় এখনো যথেষ্ট উত্তাপ আছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0603233569bbcdd9eb849.webp', 'নাগর্নো-কারাবাখ অঞ্চল নিয়ে আর্মেনিয়া ও আজারবাইজানের মধ্যে সংঘর্ষ চলছে।', 'samojug.com/samojugnews', 0, 0, '3', '2023-03-06 10:48:32', 0, 1),
(173, 'samojugc_datatable', 5, 59, 'পাকিস্তানে জোট সরকারে ভাঙনের সুর', 'পাকিস্তানে জোট সরকারে ভাঙনের সুর', '&lt;p&gt;ভেঙে যেতে পারে পাকিস্তানের জোট সরকার। জোটসঙ্গী পাকিস্তান পিপলস পার্টির (পিপিপি) চেয়ারম্যান ও পররাষ্ট্রমন্ত্রী বিলওয়াল ভুট্টো জারদারি এমনটাই ইঙ্গিত দিয়েছেন। তিনি বলেছেন, সিন্ধু প্রদেশের বন্যাদুর্গতদের দেওয়া প্রতিশ্রুতি পূরণ করা না হলে তাঁর দলের পক্ষে জোট সরকারে থাকা খুবই কঠিন হয়ে যাবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;করাচিতে গতকাল রোববার গমবীজে ভর্তুকি প্রদান প্রকল্পের উদ্বোধনী অনুষ্ঠানে দেওয়া বক্তব্যে বিলওয়াল ভুট্টো কেন্দ্রীয় জোট সরকার নিয়ে এ মন্তব্য করেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ সময় বিলওয়াল ভুট্টো পাকিস্তানের ডিজিটাল আদমশুমারির অনুশীলন নিয়ে প্রশ্ন তোলেন। তিনি বলেন, একটি প্রদেশে ভিন্ন আদমশুমারি থেকে পাওয়া ভোটারদের তথ্যের ভিত্তিতে ভোট হবে, অন্যান্য প্রদেশে &amp;lsquo;ত্রুটিপূর্ণ&amp;rsquo; ডিজিটাল আদমশুমারির তথ্যের ভিত্তিতে ভোট হেব&amp;mdash;এটা গ্রহণযোগ্য নয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;পাকিস্তানের সিন্ধু প্রদেশে পিপিপির সরকার রয়েছে। গত বছরের ভয়াবহ বন্যায় ক্ষতিগ্রস্ত কৃষকদের সহায়তা দেওয়ার চেষ্টা চালিয়ে যাচ্ছে প্রাদেশিক সরকার। তাই ক্ষতিগ্রস্ত কৃষকদের সহায়তার জন্য কেন্দ্রীয় সরকারের দেওয়া প্রতিশ্রুতির পূরণ পিপিপির জন্যও গুরুত্বপূর্ণ।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিলওয়াল ভুট্টো বলেন, &amp;lsquo;আমরা বিষয়টি (বন্যায় ক্ষতিগ্রস্ত কৃষকদের সহায়তা দেওয়া) পার্লামেন্টে তুলব। কেন্দ্রীয় সরকারকে প্রতিশ্রুতি পূরণ করতে হবে। তা না হলে পিপিপির পক্ষে জোট সরকারে থাকা খুবই কঠিন হয়ে যাবে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;পার্লামেন্টে বিরোধী জোটের আনা অনাস্থা প্রস্তাবে হেরে গত বছরের ৯ এপ্রিল বিদায় নেয় ইমরান খানের পিটিআই সরকার। ১১ এপ্রিল পাকিস্তানের নতুন প্রধানমন্ত্রী নির্বাচিত হন পাকিস্তান মুসলিম লিগ-নওয়াজের (পিএমএল-এন) সভাপতি শাহবাজ শরিফ। ১৯ এপ্রিল তিনি ৩৩ সদস্যের মন্ত্রিসভা ঘোষণা করেন। এই সরকারের অন্যতম জোটসঙ্গী পিপিপি।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/060323c2240bd5c3429d5.webp', 'পাকিস্তানের পররাষ্ট্রমন্ত্রী ও পাকিস্তান পিপলস পার্টির (পিপিপি) চেয়ারম্যান বিলাওয়াল ভুট্টো-জারদারি।', 'samojug.com/samojugnews', 0, 0, '0', '2023-03-06 11:08:55', 0, 1),
(174, 'samojugc_datatable', 5, 60, 'প্রযুক্তি ও আর্থিক স্বাধীনতা একে অপরের পরিপূরক', 'প্রযুক্তি ও আর্থিক স্বাধীনতা একে অপরের পরিপূরক', '&lt;p&gt;রাজধানী বা জেলার বেসরকারি ব্যাংক শাখার চাকচিক্য দেখে পুরুষেরা অনেক সময় প্রবেশে ভয় পান। সে ক্ষেত্রে নারীরা আরও বেশি ভয় পান, এটাই স্বাভাবিক। এ কারণে দেশের ব্যাংকিং ব্যবস্থায় পুরুষের তুলনায় নারী গ্রাহক অর্ধেকের কম। তবে মোবাইল ব্যাংকিং ও এজেন্ট ব্যাংকিং&amp;ndash;সেবা বাড়ির দোরগোড়ায় চলে যাওয়ায় এই দুই ক্ষেত্রে নারী-পুরুষ গ্রাহক প্রায় সমান। এতে নারীরা এখন নিজের অর্থ নিজের হিসাবে জমা রাখছেন। নারীদের প্রাতিষ্ঠানিক আর্থিক সেবার আওতায় আনতেও এই দুই সেবা বড় ভূমিকা রাখছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;মোবাইল ফোনে আর্থিক সেবা (এমএফএস), যেমন বিকাশ, রকেট ও নগদের গ্রাহকেরা মুঠোফোনের মাধ্যমে আর্থিক সেবা নিতে পারছেন। এখন হিসাব খোলার জন্য কোথাও যেতে হচ্ছে না তাঁদের। নিজের মুঠোফোনেই নিজেই হিসাব খুলতে পারছেন। আর এজেন্ট ব্যাংকগুলো পৌঁছে গেছে দেশের প্রত্যন্ত গ্রামে। ফলে এই দুই সেবায় নারীর অংশগ্রহণ আর্থিক সেবার অন্যান্য খাতের চেয়ে বেশি।&lt;/p&gt;\r\n\r\n&lt;p&gt;জানা গেছে, এজেন্ট ব্যাংকিং সেবায় গত ডিসেম্বর পর্যন্ত পুরুষ গ্রাহকের হিসাব ছিল ৮৭ লাখ ৯৫ হাজার। একই সময়ে নারী গ্রাহকের হিসাব ছিল ৮৪ লাখ ২১ হাজার। এজেন্ট ব্যাংকিং&amp;ndash;সেবা দেওয়া কোনো কোনো ব্যাংকের নারী হিসাব ও পুরুষ হিসাব প্রায় সমান। ব্যাংক এশিয়ার এজেন্ট ব্যাংকিং গ্রাহকদের ৬০ শতাংশের বেশি নারী।&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রবাসীরা ব্যাংকে রেমিট্যান্স বা প্রবাসী আয় পাঠালে তা সহজেই বাড়ির পাশের এজেন্ট পয়েন্ট থেকে তুলতে পারছেন তাঁদের স্ত্রী ও অভিভাবকেরা। আবার সরকারি ভাতাও এখন এজেন্টদের মাধ্যমে বিতরণ করা হচ্ছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এদিকে ১১ বছর আগে চালু হওয়া এমএফএস খাতের এখন নেতৃত্ব দিচ্ছে বিকাশ। এরপরই আছে নগদ, রকেট, এমক্যাশ, উপায়, ট্যাপসহ আরও কয়েকটি সেবা। এই সেবায় হিসাব খোলা থেকে টাকা জমা ও খরচ নিজেই করা যাচ্ছে। ফলে সেবা নিতে কারও কাছে যেতে হচ্ছে না। নিজের মুঠোফোনে নিজের হিসাব&amp;mdash;এ কারণে এমএফএস সেবা দ্রুত ছড়িয়ে পড়ছে। এই সেবায় গত ডিসেম্বর পর্যন্ত (নগদ বাদে) গ্রাহক ছিল ১৯ কোটি। এর মধ্যে ১১ কোটি ৮৯ লাখ পুরুষ গ্রাহক ও ৪ কোটি ৫৩ লাখ নারী গ্রাহক। একজন গ্রাহক একাধিক সেবায় হিসাব খুলতে পারেন, সে জন্য নারী-পুরুষ গ্রাহকের হিসাবে তারতম্য হতে পারে। দেশজুড়ে ৩৫ হাজার এজেন্ট মোবাইল ব্যাংকিং&amp;ndash;সেবা দিচ্ছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;রকেটের মূল প্রতিষ্ঠান ডাচ্-বাংলা ব্যাংকের ব্যবস্থাপনা পরিচালক আবুল কাশেম মো. শিরিন প্রথম আলোকে বলেন, মোবাইল ব্যাংকিং ও এজেন্ট ব্যাংকিং&amp;mdash;এই দুই সেবা বাড়ির পাশে পৌঁছে গেছে। এ জন্য নারী হিসাবধারীর সংখ্যা বেড়েছে। এখন সেবা নিতে অপরিচিত কারও কাছে যেতে হচ্ছে না। ফলে নারীরা এখন নিজের হিসাবে টাকা জমা রাখতে পারছেন। এতে নারীর স্বাধীনতা বেড়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/060323cce53080e819548.webp', 'প্রতীকী ছবি', 'samojug.com/samojugnews', 0, 0, '0', '2023-03-06 11:12:16', 0, 1);
INSERT INTO `samojugc_news_datatable` (`id`, `datatable`, `admin_id`, `category_id`, `title`, `keywords`, `description`, `thumbnail`, `teaser`, `link`, `liked`, `unliked`, `watched`, `date`, `topnews`, `status`) VALUES
(175, 'samojugc_datatable', 5, 60, 'সেবি কেন আদানির বিরুদ্ধে আনা অভিযোগের গভীরে যাচ্ছে না: রঘুরাম রাজন', 'সেবি কেন আদানির বিরুদ্ধে আনা অভিযোগের গভীরে যাচ্ছে না: রঘুরাম রাজন', '&lt;p&gt;২০২০ সালে ভারতের অন্যতম শীর্ষ ধনী গৌতম আদানির সম্পদমূল্য ছিল ৮৯০ কোটি ডলার। দুই বছরের মধ্যে তাঁর সম্পদমূল্য ফুলে&amp;ndash;ফেঁপে ১০ হাজার কোটি ডলার ছাড়িয়ে যায়। ফলে হঠাৎ করে তাঁর এমন উত্থানের পেছনে কারসাজি আছে, এই সন্দেহ অনেক আগে থেকেই ছিল।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিশেষ করে মরিশাসের কিছু কোম্পানি নিয়ে সন্দেহ ছিল ভারতের বাজার পর্যবেক্ষকদের। অভিযোগ ছিল, আদানি গোষ্ঠীর শেয়ারে বিনিয়োগ করা মরিশাসের এসব কোম্পানি ছিল কার্যত ভুয়া। এরপর মার্কিন যুক্তরাষ্ট্রের শর্ট সেলার হিনডেনবার্গ রিসার্চ যখন অভিযোগ করল, গৌতম আদানির কোম্পানিগুলোর শেয়ারের দাম জালিয়াতি করে বাড়ানো হয়েছে, তখন সেই সন্দেহ আরও দানা বাঁধে।&lt;/p&gt;\r\n\r\n&lt;p&gt;কিন্তু ভারতের পুঁজিবাজার নিয়ন্ত্রক সেবি এখনো কেন মরিশাসভিত্তিক ওসব তহবিলের প্রকৃত মালিকানা খুঁজে বের করতে পারেনি, রোববার সেই প্রশ্ন তুলেছেন দেশটির কেন্দ্রীয় ব্যাংক রিজার্ভ ব্যাংক অব ইন্ডিয়ার সাবেক গভর্নর রঘুরাম রাজন। সে জন্য তদন্তকারী সংস্থাগুলোর সাহায্য প্রয়োজন কি না, সেটাও জানতে চেয়েছেন তিনি। খবর হিন্দুস্তান টাইমসের।&lt;/p&gt;\r\n\r\n&lt;p&gt;এখানেই থেমে থাকেননি রাজন। স্বভাবসুলভ চাঁছাছোলা ভাষায় বলেছেন, বেসরকারি ব্যবসায়িক প্রতিষ্ঠান ও পারিবারিক কোম্পানিগুলোকে অবশ্যই উৎসাহ দেওয়া উচিত, কিন্তু তারা যেন বাড়তি সুবিধা পেয়ে অন্যায়ভাবে অন্যদের পেছনে ফেলতে না পারে বা বেশি ক্ষমতাধর না হয়ে ওঠে, তা&amp;ndash;ও খেয়াল রাখতে হবে। রঘুরাম রাজন অবশ্য আদানি গোষ্ঠীর নাম মুখে না আনলেও সরকারের সঙ্গে শিল্প গোষ্ঠীর দহরম-মহরম নিয়ে সরাসরি আপত্তি তুলেছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;হিনডেনবার্গ রিসার্চের প্রতিবেদনে যেসব অভিযোগ আনা হয়েছে, তার মোদ্দাকথা হলো, কারচুপির মাধ্যমে ধনী হয়েছেন গৌতম আদানি। তাঁর মালিকানাধীন ব্যবসায়ী গোষ্ঠী কৃত্রিমভাবে শেয়ারের দর বাড়িয়েছে। এভাবে শেয়ারবাজারে বিনিয়োগকারীদের সঙ্গে প্রতারণা করা হয়েছে। এই ঘটনার পর ভারতের প্রধানমন্ত্রী নরেন্দ্র মোদির সঙ্গে গৌতম আদানির ঘনিষ্ঠতা নিয়ে নিয়মিত কটাক্ষ করছে ভারতের বিরোধী দলগুলো। সে প্রসঙ্গে রঘুরাম রাজন বলেন, নীতিপ্রণেতাদের সঙ্গে ঘনিষ্ঠতার সূত্রে কোনো ব্যবসায়িক পরিবারের বাড়তি সুবিধা পাওয়ার প্রবণতা দেশের জন্য ভালো নয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;আদানির বিরুদ্ধে জালিয়াতির অভিযোগ প্রকাশ্যে আসার পর থেকেই ভারতের রাজনৈতিক-অর্থনৈতিক মহলে একটি প্রশ্ন উঠেছে; সেটা হলো, পারিবারিক ব্যবসায়িক গোষ্ঠীগুলোর ওপর নজরদারি বাড়াতে কেন্দ্র সরকারের কী ব্যবস্থা নেওয়া উচিত? এ প্রসঙ্গে সাবেক গভর্নরের বক্তব্য, &amp;lsquo;বিষয়টি কোম্পানির পরিচালনায় নজরদারির নয়; বরং সরকার ও শিল্পের মধ্যে অস্বচ্ছতা হ্রাস ও নিয়ন্ত্রক সংস্থাগুলোকে নিজেদের কাজ ঠিকমতো করায় উৎসাহ দেওয়ার। তাঁর বার্তা, &amp;lsquo;প্রতিটি ব্যবসায়িক গোষ্ঠীকে ব্যবসা সম্প্রসারণের সুযোগ করে দিতে হবে দক্ষতা অনুযায়ী, কারও সঙ্গে যোগাযোগের ভিত্তিতে নয়।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;এদিকে শেয়ারের দরপতনের মধ্যে ঋণ পরিশোধের চাপও আদানি গোষ্ঠীর চিন্তার কারণ হয়ে উঠছে। ২০১৯ সালে তাদের ঋণ ছিল ১ দশমিক ১১ লাখ কোটি রুপি, যা এখন বেড়ে দাঁড়িয়েছে ২ দশমিক ২১ লাখ রুপিতে। তবে বিনিয়োগকারীদের আশ্বস্ত করতে আদানি গোষ্ঠী আগেভাগে কিছু ঋণ পরিশোধ করতে শুরু করেছে আর ২০২৪ সালের মধ্যে তাদের ফেরত দিতে হবে প্রায় ২০০ কোটি ডলার।&lt;/p&gt;\r\n\r\n&lt;p&gt;হিন্দুস্তান টাইমসের তথ্যানুসারে, ২০১৫ সালের জুলাই থেকে ২০২২ পর্যন্ত আদানিরা বিদেশি মুদ্রায় ১ হাজার কোটি ডলারের বেশি ঋণ নিয়েছে। গত বছর ১১৫ কোটির বন্ডের মেয়াদ শেষ হয়েছে। আর পরের বছর আদানি পোর্টস অ্যান্ড এসইজেডের ৬৫ কোটি, আদানি গ্রিন এনার্জির ৭৫ কোটি ও ৫০ কোটি ডলারের বন্ডের মেয়াদ শেষ হওয়ার কথা।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0603237b58dbe471a8844.webp', 'গৌতম আদানি', 'samojug.com/samojugnews', 0, 0, '0', '2023-03-06 11:15:32', 0, 1),
(176, 'samojugc_datatable', 5, 61, 'ফাঁকা গ্যালারিতে ইংলিশ দর্শকের ‘অন্তর্বাস’', 'ফাঁকা গ্যালারিতে ইংলিশ দর্শকের ‘অন্তর্বাস’', '&lt;p&gt;আভাসটা আগের দিনই পাওয়া গিয়েছিল। &lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%AC%E0%A6%BE%E0%A6%82%E0%A6%B2%E0%A6%BE%E0%A6%A6%E0%A7%87%E0%A6%B6-%E0%A6%87%E0%A6%82%E0%A6%B2%E0%A7%8D%E0%A6%AF%E0%A6%BE%E0%A6%A8%E0%A7%8D%E0%A6%A1-%E0%A6%B8%E0%A6%BF%E0%A6%B0%E0%A6%BF%E0%A6%9C-%E0%A7%A8%E0%A7%A6%E0%A7%A8%E0%A7%A9&quot; target=&quot;_blank&quot;&gt;বাংলাদেশ-ইংল্যান্ড সিরিজে&lt;/a&gt;র তৃতীয় ওয়ানডে নিয়ে &lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%9C%E0%A6%B9%E0%A7%81%E0%A6%B0-%E0%A6%86%E0%A6%B9%E0%A6%AE%E0%A7%87%E0%A6%A6-%E0%A6%9A%E0%A7%8C%E0%A6%A7%E0%A7%81%E0%A6%B0%E0%A7%80-%E0%A6%B8%E0%A7%8D%E0%A6%9F%E0%A7%87%E0%A6%A1%E0%A6%BF%E0%A7%9F%E0%A6%BE%E0%A6%AE&quot; target=&quot;_blank&quot;&gt;জহুর আহমেদ চৌধুরী স্টেডিয়ামে&lt;/a&gt; তেমন কোনো হইচই নেই। সকালে বাংলাদেশ দল অনুশীলনে, বিকালে ইংল্যান্ড। সচরাচর যেমন থাকে, উৎসুক দর্শকের ভিড় নেই। ভিড় নেই টিকিট কাউন্টারেও। আজ স্টেডিয়ামে প্রায় দর্শকশূন্য গ্যালারি দেখে তাই অবাক হননি অনেকেই। যেন এমনই হওয়ার কথা।&lt;/p&gt;\r\n\r\n&lt;p&gt;অথচ দর্শক নিয়ে চট্টগ্রামের সব সময়ই একটা গর্ব ছিল। খেলাটা যদি হয় সাদা বলের, তাহলে তো কথাই নেই। কিন্তু আজ জহুর আহমেদ চৌধুরী স্টেডিয়ামের গ্যালারি দেখে মনে হয়েছে, ওয়ানডে নয়, খেলা হচ্ছে টেস্ট ক্রিকেট। লাল বলের খেলায় চট্টগ্রামে এমন মাঠ গ্যালারি দেখে অভ্যস্ত সবাই, সাদা বলে নয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;কিন্তু এখানে বিশ্ব চ্যাম্পিয়নদের বিপক্ষে বাংলাদেশের ওয়ানডে ম্যাচ, তারপরও গ্যালারিতে এমন শূন্যতার হাহাকার! মিরপুরেই সিরিজের মীমাংসা হয়ে যাওয়াই কি তাহলে কারণ? একটা সময় বাংলাদেশ নিয়মিতই সিরিজ হারত, মাঝখানে প্রায় নয় বছর এমন কিছু হয়নি বলেই হয়তো নতুন প্রজন্মের দর্শক &amp;lsquo;মরা&amp;rsquo; ম্যাচ নিয়ে আগ্রহ হারিয়ে ফেলেছে। তারপরও যাঁরা এসেছেন, তাঁরা সম্ভবত ক্রিকেটের পাঁড় দর্শক।&lt;/p&gt;\r\n\r\n&lt;p&gt;যেকোনো খেলাতেই গ্যালারিতে থাকা যাঁদের অভ্যাস। এমনই একজনকে একাকী বসে থাকতে দেখা গেল গ্যালারির একটা অংশে। ফাঁকা গ্যালারি পেয়ে হাত পা ছাড়িয়ে রাজার হালে খেলা দেখছিলেন। বিষয়টা তিনি উপভোগও করছিলেন, &amp;lsquo;এত ফাঁকা গ্যালারিতে আগে কখনো খেলা দেখিনি। সারাদিন এমনই থাকুক।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;মিরপুরেও বেশ কিছু ইংলিশ দর্শকের দেখা মিলেছে। এখানেও ছিলেন তাঁরা। গ্যালারির যে অংশটাতে ডিজিটাল স্কোরবোর্ড, সেখানে পাওয়া গেল এমন দুজনকে। ঘটনাচক্রে দুজনের নামই মার্ক। স্থানীয় অনেক দর্শক তাদের সঙ্গে একের পর সেলফি তুলেই যাচ্ছেন। তাঁরাও হাসিমুখে ছবি তোলার জন্য পোজ দিচ্ছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;কিছুক্ষণ পর এক মার্ক ফাঁকা জায়গায় বসে খেলা দেখতে শুরু করলেন। আরেক মার্ক গেলেন &amp;lsquo;পতাকা&amp;rsquo; টানাতে। &amp;lsquo;পম্পি&amp;rsquo; ও &amp;lsquo;গালস&amp;rsquo; লেখা পতাকার আকৃতিটা অদ্ভুত। একেবারেই প্রথাগত পতাকার মতো নয়। আকৃতিটা ঠিক পুরুষের অন্তর্বাসের মতো।&lt;/p&gt;\r\n\r\n&lt;p&gt;মার্ক সেটিই নিশ্চিত করলেন, &amp;lsquo;আমরা বার্মি আর্মিদের মতো পতাকা বানাতে চাইনি। সবাই তো একই রকম পতাকা বানায়। আমরা একটু অন্যরকম করলাম। দেখছেন তো, আন্ডারওয়্যারের মতো আমাদের পতাকা।&amp;rsquo; সেখানে লেখা &amp;lsquo;পম্পি&amp;rsquo; আর &amp;lsquo;গালস্&amp;rsquo; দুই মার্কের শহরের নামের সংক্ষিপ্ত রূপ।&lt;/p&gt;\r\n\r\n&lt;p&gt;মিরপুর শেরেবাংলা স্টেডিয়ামের প্রথম দুই ওয়ানডেও মাঠে বসে দেখেছেন মার্ক। কিন্তু সেখানে এই পতাকা টানাতে দেওয়া হয়নি। চট্টগ্রামে মার্ক যখন এটি গ্যালারির গ্রিলে ঝুলিয়ে দিচ্ছেন, কয়েকজন নিরাপত্তাকর্মী এসে বুঝতে চাইলেন, জিনিসটা কী। কী বুঝেছেন কে জানে, তবে মার্ককে বাধা দেননি তাঁরা। মিশন সফল করতে পেরে মার্কের মুখে তাই যুদ্ধজয়ের হাসি। এর আগে ইংল্যান্ডের খেলা দেখতে ভারত, ওয়েস্ট ইন্ডিজ সফর করেছেন। ব্যতিক্রমী এই পতাকা ঝুলিয়ে দিয়েছেন সেখানেও।&lt;/p&gt;\r\n\r\n&lt;p&gt;মুঠোফোনে এই দুই দেশের গ্যালারিতে তাদের বিশেষ পতাকা ওড়ানোর ছবিও দেখালেন তিনি, &amp;lsquo;আমরা চেষ্টা করি, ইংল্যান্ডের খেলা দেখতে বিভিন্ন দেশে যাওয়ার। গত বছর ওয়েস্ট ইন্ডিজ গিয়েছিলাম। এর আগে ভারতও গিয়েছি। আমরা চেষ্টা করি যেখানেই যাই, সেখানকার সংস্কৃতিটা বোঝার চেষ্টা করি। স্থানীয় লোকজনের সঙ্গে মিশি।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;সে জন্যই নাকি মার্ক ঢাকা থেকে চট্টগ্রামে ট্রেনে করে আসতে চেয়েছিলেন। টিকিট না পাওয়ায় বাসে আসতে হয়েছে। ওয়ানডে সিরিজ শেষে যে কয়দিন সময় থাকবে, তাতে চট্টগ্রামের আশপাশটা ঘুরে দেখার ইচ্ছা এই দুই ইংলিশম্যানের, &amp;lsquo;শুনেছি, এখান থেকে খুব কাছেই সমুদ্র। আশপাশে পাহাড়ও আছে। ভাবছি, কাল-পরশু ঘুরে দেখব।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;বাংলাদেশের মানুষের বন্ধুত্বপূর্ণ আচরণ একটু অবাকই করেছে মার্ককে। যেমন অবাক হয়েছেন গ্যালারিতে এত কম দর্শক দেখে। নিজেই প্রশ্ন করলেন, &amp;lsquo;এমন হওয়ার কারণ কী? বাংলাদেশকে তো ক্রিকেট পাগল বলে জানি। সাপ্তাহিক ছুটির দিন হলে হয়তো দর্শক বেশি হতো। মিরপুরে দেখেছি, শুক্রবার গ্যালারিভর্তি দর্শক ছিল। টি-টোয়েন্টিতে নিশ্চয়ই আরও দর্শক হবে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;৯ মার্চ চট্টগ্রামে প্রথম টি-টোয়েন্টিও দেখতে আসবেন দুই মার্ক। সেদিনও গ্রিলে ওই অন্তর্বাস আকৃতির ব্যতিক্রমী পতাকাটা ঝুলিয়ে দিতে চান গ্যালারিতে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0603231b1aaf23b6da80c.webp', 'ফাঁকা গ্যালারি পেয়ে হাত পা ছাড়িয়ে রাজার হালে খেলা দেখছিলেন মার্ক', 'samojug.com/samojugnews', 0, 0, '0', '2023-03-06 11:20:35', 0, 1),
(177, 'samojugc_datatable', 5, 61, '‘মিসরীয় রাজা’ ফুরিয়ে যাননি', '‘মিসরীয় রাজা’ ফুরিয়ে যাননি', '&lt;p&gt;কী হয়েছে &lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%AE%E0%A7%8B%E0%A6%B9%E0%A6%BE%E0%A6%AE%E0%A7%8D%E0%A6%AE%E0%A6%A6-%E0%A6%B8%E0%A6%BE%E0%A6%B2%E0%A6%BE%E0%A6%B9&quot; target=&quot;_blank&quot;&gt;মোহাম্মদ সালাহ&lt;/a&gt;র?&lt;/p&gt;\r\n\r\n&lt;p&gt;সপ্তাহ তিনেক আগে পর্যন্ত নিয়মিত এ প্রশ্নের জবাব খুঁজে বেড়িয়েছেন ফুটবল&amp;ndash;বিশ্লেষকেরা। এমন নয় যে লিভারপুল খুব ভালো খেলছিল, কিন্তু সালাহ ছিলেন নিষ্প্রভ। &amp;lsquo;অলরেড&amp;rsquo; আক্রমণভাগের অন্যদের তুলনায় বেশিই গোল করেছিলেন। বরং দল হিসেবে লিভারপুলের অবস্থাই ছিল জেরবার। প্রিমিয়ার লিগ পয়েন্ট তালিকায় ঘোরাঘুরি চলছিল ১০ নম্বরের আশপাশে। দুটি ঘরোয়া টুর্নামেন্টের (লিগ কাপ ও এফএ কাপ) চতুর্থ রাউন্ড থেকেই &lt;a href=&quot;https://www.prothomalo.com/sports/football/wa5zm9g527&quot; target=&quot;_blank&quot;&gt;বিদায়&lt;/a&gt; নিতে হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;লিভারপুলের এমন দুঃসময়ে সাময়িক বাজে সময় কেটেছে সালাহরও। টানা পাঁচ ম্যাচ কোনো গোল পাননি। সমর্থক থেকে শুরু করে বিশ্লেষক, সংবাদমাধ্যম পর্যন্ত প্রশ্ন উঠে গিয়েছিল&amp;mdash;তিনবার মৌসুমের সর্বোচ্চ গোলদাতার পুরস্কার জেতা সালাহ কি &lt;a href=&quot;https://www.prothomalo.com/sports/football/53dgw9w5o3&quot; target=&quot;_blank&quot;&gt;ফুরিয়ে গেছেন&lt;/a&gt;?&lt;/p&gt;\r\n\r\n&lt;p&gt;রোববার রাতে অ্যানফিল্ডে পাওয়া গেছে মোক্ষম জবাব। প্রবল প্রতিপক্ষ ম্যানচেস্টার ইউনাইটেডের ওপর রীতিমতো ঝড় বইয়ে দিয়েছে লিভারপুল। &lt;a href=&quot;https://www.prothomalo.com/sports/football/d7jyvkvdz4&quot; target=&quot;_blank&quot;&gt;৭-০&lt;/a&gt; ব্যবধানের এই বড় জয়ে ৪টি গোলে অবদান সালাহর। দুটি গোল নিজে করার পাশাপাশি কোডি গাকপো আর ফিরমিনোর দুই গোলে করেছেন সহায়তা।&lt;/p&gt;\r\n\r\n&lt;p&gt;দুই গোলের প্রথমটিতে হয়েছেন প্রিমিয়ার লিগ যুগ ম্যানচেস্টার ইউনাইটেডের বিপক্ষে সবচেয়ে বেশি গোলের মালিক। আর দ্বিতীয় গোলটি করে গড়েছেন লিভারপুলের হয়ে প্রিমিয়ার লিগে সর্বোচ্চ গোলদাতার রেকর্ড।&lt;/p&gt;\r\n\r\n&lt;p&gt;লিভারপুল সমর্থকদের কাছে &amp;lsquo;গড&amp;rsquo; হিসেবে পরিচিত রবি ফাউলার ক্লাবের হয়ে ২৬৬ ম্যাচে করেছিলেন ১২৮ গোল। সালাহ তাঁকে পেরিয়ে গেছেন ২০৫ ম্যাচেই। &amp;lsquo;মিসরীয় রাজা&amp;rsquo;ই এখন প্রিমিয়ার লিগে লিভাপুলের গোলের রাজা।&lt;/p&gt;\r\n\r\n&lt;p&gt;এই রেকর্ডটিকে তিনি পাখির চোখ করে রেখেছিলেন অনেক আগেই। ইউনাইটেড ম্যাচ শেষে স্কাই স্পোর্টসকে দেওয়া তাৎক্ষণিক সাক্ষাৎকারে জানান সে কথাই, &amp;lsquo;মিথ্যে বলব না, এই রেকর্ডটা খুবই বিশেষ। যখন এখানে এসেছি, তখন থেকেই রেকর্ডটা আমার মাথায় ছিল। প্রথম বছরের পরই (লিগে ৩২ গোল করে গোল্ডেন বুট) রেকর্ডটার দিকে ছুটছিলাম। আজ যখন রেকর্ডটা ভাঙলাম, তাও ইউনাইটেডের বিপক্ষে আর বড় একটা স্কোরলাইনে&amp;mdash;পুরো ব্যাপারটাই কেমন অবিশ্বাস্য লাগছে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;সালাহর মতো তাঁর রেকর্ডকে &amp;lsquo;স্পেশাল&amp;rsquo; মনে হয়েছে লিভারপুল কোচ ইয়ুর্গেন ক্লপেরও। বাজে সময়ে পাশে দাঁড়ানো এই জার্মান কোচ আবারও মনে করিয়ে দিয়েছেন শিষ্যের কীর্তির কথা, &amp;lsquo;সালাহ আজ যা করেছে, তা সত্যি সত্যিই বিশেষ কিছু। আমাদের এটা ভুলে যাওয়া উচিত নয় যে তাকে আমরা প্রচুর গোল করতে দেখেছি। এই অর্জন গর্বিত হওয়ার মতো।&lt;/p&gt;\r\n\r\n&lt;p&gt;গোল করার পাশাপাশি গোল করানোতেও অবদান রেখে যাচ্ছেন সালাহ। ৩০ বছর বয়সী ফরোয়ার্ড চলতি মৌসুমে গোল করানোয় ইউরোপীয় ফুটবলের শীর্ষ পাঁচজনের একজন।&lt;/p&gt;\r\n\r\n&lt;p&gt;২০২২-২৩ মৌসুমে গোল করা এবং করানোয় সবার ওপরে পিএসজির আর্জেন্টাইন মহাতারকা লিওনেল মেসি (৩০ গোল ও ২০ অ্যাসিস্ট)। মেসির মতো সমান ৩৯ ম্যাচ খেলে সালাহর অবদান ৩৬ গোলে (২৪ গোল, ১২ অ্যাসিস্ট)।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/060323357678d52e3a5c5.webp', 'ম্যানচেস্টার ইউনাইটেডের বিপক্ষে জোড়া গোল করেন মোহাম্মদ সালাহ', 'samojug.com/samojugnews', 0, 0, '1', '2023-03-06 11:25:53', 0, 1),
(178, 'samojugc_datatable', 5, 62, 'শুটিংয়ে গুরুতর আহত অমিতাভ', 'শুটিংয়ে গুরুতর আহত অমিতাভ', '&lt;p&gt;&amp;lsquo;প্রজেক্ট কে&amp;rsquo; ছবির শুটিংয়ের সময় আঘাত পেয়েছেন বলিউড মেগাস্টার অমিতাভ বচ্চন। তিনি নিজে এ কথা তাঁর ব্লগে জানিয়েছেন। বিগ বির আঘাত পাওয়ার খবর মুহূর্তের মধ্যে নেট দুনিয়ায় ছড়িয়ে পড়েছে। এই খবরে উদ্বিগ্ন অমিতাভের হাজার হাজার অনুরাগী।&lt;br /&gt;\r\nহায়দরাবাদে &amp;lsquo;প্রজেক্ট কে&amp;rsquo; ছবির এক অ্যাকশন দৃশ্যের শুটিং করছিলেন অমিতাভ বচ্চন। আর তখনই গুরুতর আহত হন তিনি। বুকের পাঁজরে আঘাত পেয়েছেন অমিতাভ। তাঁকে সঙ্গে সঙ্গে হায়দরাবাদের এআইজি হাসপাতালে নিয়ে যাওয়া হয়। এআইজি হাসপাতালের চিকিৎসকেরা বিগ বির প্রয়োজনীয় চিকিৎসা করেছেন। স্থানীয়ভাবে চিকিৎসা দিয়ে তাঁকে মুম্বাইতে ফিরিয়ে আনা হয়েছে। এখন তিনি মুম্বাইতে নিজের বাসায় বিশ্রাম নিচ্ছেন বলে জানা গেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;প্যান ইন্ডিয়া ছবি &amp;lsquo;প্রজেক্ট কে&amp;rsquo;র শুটিং আপাতত বন্ধ রাখা হয়েছে। অমিতাভ তাঁর ব্লগে জানিয়েছেন, &amp;lsquo;হায়দরাবাদে &amp;ldquo;প্রজেক্ট কে&amp;rdquo; ছবির শুটিং চলাকালীন আমি আহত হয়েছি। একটি অ্যাকশন দৃশ্যের শুটিং করছিলাম আমি। বুকের দক্ষিণ পাঁজরের তরুণাস্থি ছিঁড়ে গেছে। শুটিং বন্ধ রাখা হয়েছে। এআইজি হাসপাতালের চিকিৎসকের পরামর্শ নিয়েছি আর স্ক্যান করা হয়েছে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;তিনি আরও লিখেছেন, &amp;lsquo;হায়দরাবাদ থেকে নিজের বাড়িতে ফিরে এসেছি। বুকে ব্যান্ডেজ করা হয়েছে। আর বাকি সব চিকিৎসা চলছে। হ্যাঁ, খুবই যন্ত্রণাদায়ক। নড়াচড়া করতে বা শ্বাস-প্রশ্বাস নিতে একটু কষ্ট হচ্ছে। সুস্থ হয়ে উঠতে কিছু সপ্তাহ লাগবে। যন্ত্রণা উপশমের জন্য কিছু ওষুধ নিতে হচ্ছে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;বিগ বি বলেছেন, &amp;lsquo;আঘাতের কারণে এখন সব কাজ বন্ধ রেখেছি। পুরোপুরি সুস্থ না হয়ে ওঠা পর্যন্ত সব কাজ বন্ধ রাখব। এখন আমি জলসাতে আরাম করছি। কাজের প্রয়োজনে মুঠোফোন নিয়ে একটু ঘাঁটাঘাঁটি করছি। তবে বাড়িতে শুয়ে বিশ্রাম নিচ্ছি। আজ বিকেলে জলসার গেটে বাইরে আমার অনুরাগীদের সঙ্গে দেখা করতে পারব না। তাই কেউ আসবেন না।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;অ্যাকশনধর্মী ছবি &amp;lsquo;প্রজেক্ট কে&amp;rsquo;তে প্রভাস আর দীপিকা পাড়ুকোনকে জুটি হিসেবে দেখা যাবে। এই প্যান ইন্ডিয়া ছবিতে অমিতাভ বচ্চন অত্যন্ত গুরুত্বপূর্ণ চরিত্রে আছেন। দক্ষিণি পরিচালক নাগ অশ্বিন পরিচালিত ছবিটি আগামী বছর ১২ জানুয়ারি মুক্তি পাবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;lsquo;প্রজেক্ট কে&amp;rsquo; তামিল, তেলেগু, মালয়ালম ছাড়া হিন্দিতেও মুক্তি পাবে। ভারতীয় ছায়াছবির ইতিহাসে এই ছবি অন্যতম বড় ছবি হতে চলেছে।&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/060323fef238d842f93fd.webp', 'অমিতাভ বচ্চন', 'samojug.com/samojugnews', 0, 0, '0', '2023-03-06 11:29:14', 0, 1),
(179, 'samojugc_datatable', 5, 62, 'ভালো গল্প পাওয়াটা লটারির মতো', 'ভালো গল্প পাওয়াটা লটারির মতো', '&lt;p&gt;ভিডিও স্ট্রিমিং প্ল্যাটফর্ম চরকিতে মুক্তি পেয়েছে ছয় পর্বের ওয়েব সিরিজ &amp;lsquo;ইন্টার্নশিপ&amp;rsquo;। রেজাউর রহমান পরিচালিত এই সিরিজে শাফায়েত চরিত্রে অভিনয় করে সাড়া ফেলেছেন&amp;nbsp;&lt;strong&gt;মীর রাব্বি&lt;/strong&gt;। দেড় দশক আগে রেডিও জকি হিসেবে পথচলা শুরু করা রাব্বি এখন অভিনয়ে নিয়মিত। ২০০৫ সাল থেকে নিয়মিত বিজ্ঞাপনচিত্রে কণ্ঠ দিচ্ছেন। অভিনয় ও অন্যান্য প্রসঙ্গে তাঁর সঙ্গে কথা হলো।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;lsquo;ইন্টার্নশিপ&amp;rsquo; ওয়েব সিরিজে অভিনয় করে কী ধরনের প্রতিক্রিয়া বেশি পাচ্ছেন?&lt;/p&gt;\r\n\r\n&lt;p&gt;আমাকে তো ভালো বলছে। তবে আমার বেশি ভালো লাগছে, মানুষ পুরো কাজটাকে ভালো বলছেন। পুরো কাজটা ভালো না হলে সবার অভিনয়ও ভালো হয় না। তার ওপর এই বিষয় নিয়ে কাজটা বেশ ঝুঁকিপূর্ণও ছিল।&lt;/p&gt;\r\n\r\n&lt;p&gt;কেন ঝুঁকিপূর্ণ ছিল?&lt;/p&gt;\r\n\r\n&lt;p&gt;এ ধরনের কাজ আমরা আগে করিনি, দেখিওনি। কোন ধরনের অভিনয় করলে ফলপ্রসূ হবে, তা&amp;ndash;ও জানি না। লোকজনকে হাসানো উচিত, না সিরিয়াস হওয়া উচিত, কোনটায় শুটিংয়ে মোমেন্ট তৈরি হবে, কোনটায় সম্পাদনার সময় মোমেন্ট তৈরি হবে, কোনটায় সংলাপে&amp;mdash;আমাদের অনেকের মধ্যে এ রকম একটা সংশয় ছিল।&lt;/p&gt;\r\n\r\n&lt;p&gt;তাহলে অভিনয়ের ক্ষেত্রে কিছু অনুসরণ করেছেন?&lt;/p&gt;\r\n\r\n&lt;p&gt;আমাদের সামনে কোনো রেফারেন্স ছিল না। শাফায়েত চরিত্রটি যেভাবে লেখা ছিল, সেখান থেকে অনেকটা চেঞ্জ করে বরং আমি অভিনয়টা করেছি। তবে চরিত্রের যে কাঠামো আমাকে ধরিয়ে দেওয়া হয়, সেটার বাইরে বের হইনি। তবে &amp;lsquo;এশিয়াটিক থ্রি সিক্সটি&amp;rsquo;র মতো একটা প্রতিষ্ঠানে চাকরি করার কারণে চরিত্রটি ফুটিয়ে তুলতে সুবিধা হয়েছে। আমি ওই প্রতিষ্ঠানটির রেডিওতে কাজ করেছি। এজেন্সির কর্মকাণ্ডও নিজ চোখে দেখেছি। তাই শাফায়েত চরিত্রটি ফুটিয়ে তুলতে সুবিধা হয়েছে। সবকিছুই আমরা হয়তো অতিরিক্ত করে করেছি, কোথাও কম কোথাও বেশি। কিন্তু ব্যাপারগুলো ঘুরেফিরে অনেকটা এ রকম।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;lsquo;ইন্টার্নশিপ&amp;rsquo; অভিনয় করার ব্যাপারটি কীভাবে দেখছেন?&lt;/p&gt;\r\n\r\n&lt;p&gt;কাজ তো নানা ধরনের হয়। আমিও তো এত দিন বিরতি দিয়ে দিয়ে অভিনয় করেছি। তবে এই কাজ আমাকে অনেক মানুষের কাছে পৌঁছে দিয়েছে। আমার আগের কাজ থেকে এটা নিয়ে সবাই বেশি করে প্রশংসা করল। আগের কাজগুলো আমজনতা সেভাবে দেখতেও পারেনি। প্রচারণা ব্যাপারটাও এখানে অনেক বেশি কাজে দিয়েছে। আমি সবচেয়ে গর্বিত, এটার অংশ হতে পেরেছি। যাঁরাই কাজ করেছেন, আমরা সবাই একটা টিম হয়ে কাজ করেছি।&lt;/p&gt;\r\n\r\n&lt;p&gt;শুটিং করেছেন কোথায়?&lt;/p&gt;\r\n\r\n&lt;p&gt;ঢাকার তেজগাঁও লিংক রোডে একটা অফিসে শুটিং করেছি। &amp;lsquo;ইন্টার্নশিপ&amp;rsquo;&amp;ndash;এ এত ভালো ভালো তরুণ কাজ করেছেন, ন্যাচারাল অভিনয় করছেন&amp;mdash;আমি যে তাঁদের অংশ হতে পারলাম বা তাঁদের সবার অভিনয়ের সঙ্গে অ্যাটলিস্ট সাপোর্টটা দিয়ে যেতে পারছি, আমার কাছ মনে হয়, ওটাই আমার অর্জন।&lt;/p&gt;\r\n\r\n&lt;p&gt;এখন কী কাজ করছেন?&lt;/p&gt;\r\n\r\n&lt;p&gt;বদরুল আনাম সৌদের &amp;lsquo;শ্যামাকাব্য&amp;rsquo; ছবিতে গুরুত্বপূর্ণ একটি চরিত্রে অভিনয় করেছি। &amp;lsquo;বুকের মধ্যে আগুন&amp;rsquo; সিরিজেও ছোট্ট একটি চরিত্র করলাম। সানি সানোয়ারের ম্যান হান্ট ডাউন&amp;ndash;এর শুটিং করছি। প্রচুর চিত্রনাট্য পাচ্ছি টেলিভিশনের জন্য, কিন্তু খুব একটা মন টানছে না। আমার কাছে মনে হয়, ভালো গল্প পাওয়াটা লটারির মতো।&lt;/p&gt;\r\n\r\n&lt;p&gt;এই লাটরিতে জিতবেন মনে হয়?&lt;/p&gt;\r\n\r\n&lt;p&gt;চেষ্টাটা করে যেতে চাই। আমি মনে করি, এত কম কাজ করার পরও লটারি আমার টুকটাক লেগেছে। আলোচিত ওয়েব সিরিজ &amp;lsquo;তাকদীর&amp;rsquo;&amp;ndash;এর আমি একটা অংশ হয়েছিলাম। তার আগে অবশ্য আরও কয়েকটা কাজ করেছিলাম।&lt;/p&gt;\r\n\r\n&lt;p&gt;অভিনয় তো তাহলে এখন পেশা?&lt;/p&gt;\r\n\r\n&lt;p&gt;এখন আমি পেশা হিসেবে ভাবছি। ছয় মাস আগেও কেউ আমাকে নাটকের শুটিংয়ের কথা বললে বলতাম, না, ওই দিন আমার মিটিং আছে। যেহেতু আমি নিজে একটা প্রতিষ্ঠান চালাই। ওটাই আমার রুটিরুজি। এখন আমি ভাবছি, যেদিন আমার শুটিং আছে, সেদিন আমি মিটিং করব না&amp;mdash;এই প্রাধান্য দিচ্ছি আর কি। আমি সিরিয়াসলি অভিনয় করতে চাই। হয়তো জীবনযাপনের জন্য পাশাপাশি কিছু একটা করতে হবে। কারণ, পেশা হিসেবে নাটক নিয়ে ভালো থাকার জন্য অনেক নাটকে অভিনয় করতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/06032328516bd50249dea.webp', 'মীর রাব্বি', 'samojug.com/samojugnews', 0, 0, '0', '2023-03-06 11:32:53', 0, 1),
(180, 'samojugc_datatable', 5, 63, 'সৌরভ গাঙ্গুলী কীভাবে ভারতীয় ক্রিকেট দলকে বদলে দিয়েছিলেন', 'সৌরভ গাঙ্গুলী কীভাবে ভারতীয় ক্রিকেট দলকে বদলে দিয়েছিলেন', '&lt;p&gt;অধিনায়কত্ব পাওয়ার পরপরই ভারতীয় ক্রিকেট দলকে বদলে দিয়েছিলেন সৌরভ গাঙ্গুলী। নেতৃত্বের কৌশল খুব ভালো জানেন এই বাঙালি ক্রিকেটার। অধিনায়ক হিসেবে দায়িত্ব পালনের সময় কী ছিল তাঁর ভাবনার জগতে? এ প্রসঙ্গে সৌরভ একটি নিবন্ধ লিখেছিলেন দ্য ইকোনমিক টাইমস। পড়ুন সেই লেখার নির্বাচিত অংশের অনুবাদ।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;২০০০ সালে আমি যখন প্রথম ভারতীয় দলের অধিনায়কের দায়িত্ব নিলাম, অনেক শুভাকাঙ্ক্ষী, সাংবাদিক বন্ধু আমাকে মাইক ব্রিয়ারলির সেই বিখ্যাত বইটা উপহার দিয়েছিল&amp;mdash;দ্য আর্ট অব ক্যাপ্টেনসি। বইটার প্রতি পূর্ণ শ্রদ্ধা রেখেই বলছি, বই কিংবা &amp;lsquo;টিম মিটিং&amp;rsquo; কখনোই আপনাকে ভালো অধিনায়ক বানাবে না। অধিনায়কত্ব আমি তত্ত্বীয় জ্ঞান থেকে শিখিনি, চর্চা করে শিখেছি।&lt;/p&gt;\r\n\r\n&lt;p&gt;আমি নিজের মতো করে নেতৃত্ব দিয়ে নিজের মতো করেই সাফল্য পেতে চেয়েছি। জানতাম, আমরা খুব কঠিন সময়ের মধ্য দিয়ে যাচ্ছি। টানা পরাজয় তো বটেই, গণমাধ্যমে ভেসে বেড়ানো নানা রকম গালগপ্প সময়টাকে কঠিন করে তুলেছিল। দল এবং কয়েকজন খেলোয়াড় সম্পর্কে নানা কথা শোনা যাচ্ছিল। ম্যাচ ফিক্সিং ব্যাপারটা সে সময়ই অন্ধকার থেকে প্রকাশ্যে আসতে শুরু করেছে। পুরো দলটাই যখন হতোদ্যম, তাদের অনুপ্রাণিত করা সহজ ছিল না। জানতাম, আমার কাজটা খুব কঠিন। পরে বুঝেছি, কঠিন সময়ই নায়ক তৈরি করে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ঠিক করেছিলাম, যে করেই হোক দেশের বাইরের টুর্নামেন্টগুলোতে আমাদের ভালো করতে হবে। সে সময় দেশের মধ্যে আমরা অস্ট্রেলিয়াকে হারিয়েছি, খুব ভালো ক্রিকেট খেলেছি। কিন্তু আমি জানতাম, বিদেশে জয় পাওয়ার মর্ম আলাদা। হোক সেটা দক্ষিণ আফ্রিকা, অস্ট্রেলিয়া বা নিউজিল্যান্ড। আমরা তখন স্পিনের জাদুতে প্রতিপক্ষকে কাবু করতাম। কিন্তু বিদেশের মাটিতে খেলা হলেই প্রতিপক্ষ দলগুলো শুকনো, খটখটে পিচ বানাত আর আমাদের নির্বিষ স্পিন উপভোগ করত। ফলে আমাদের প্রধান অস্ত্রটাই অকার্যকর হয়ে যেত। অধিনায়ক হওয়ার পর শুরুতেই আমি বলেছিলাম, এই পুরোনো কৌশল বদলাতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;আমি চেয়েছিলাম একদল তরুণ, শক্তিশালী ফাস্ট বোলার। এই উপমহাদেশে স্পিনাররা নেতৃত্ব দেবে। কিন্তু উপমহাদেশের বাইরে সব কটি উইকেট তুলে নেওয়ার দায়িত্ব নিতে হবে পেস বোলারদের। অস্ট্রেলীয় ক্রিকেটারেরা আমাকে অনুপ্রাণিত করেছে। ওরা জেতার জন্যই মাঠে নামত। আমিও আমার দলে এই চেতনা ছড়িয়ে দিতে চেয়েছি। হারলে ক্ষতি নেই, কিন্তু জেতার প্রাণপণ চেষ্টা যেন থাকে।&lt;/p&gt;\r\n\r\n&lt;p&gt;নতুন করে দলটাকে সাজাতে প্রায় এক বছর সময় লেগেছে। ২০০২ সাল আমার জন্য সাফল্যের বছর ছিল। কলম্বোয় অনুষ্ঠিত চ্যাম্পিয়নস ট্রফিতে আমরা ভালো খেলেছি। একদিন এক সাংবাদিক বললেন, ওয়াসিম আকরাম নাকি ভারতীয় দলের এই নতুন চেহারার প্রশংসা করেছেন। ইংল্যান্ডের সঙ্গে ম্যাচে যেভাবে আমরা হারতে হারতে ফিরে এসেছি, আকরামকে সেটা মুগ্ধ করেছে। তাঁর নাকি মনে পড়ে গেছে আশির দশকের পাকিস্তান দলের কথা। যে দল কখনো ভাবতেই পারত না তারাও হারতে পারে! এ কারণেই ওই দল বেশ কয়েকটি ম্যাচে খুব খারাপ অবস্থাতেও ঘুরে দাঁড়িয়েছে। আমার জন্য এই প্রশংসা অনেক বড় ছিল। কীভাবে এমন একটা দল তৈরি করেছিলাম? এটা কিন্তু প্রত্যেকের ব্যক্তিগত মেধার জোরে হয় না। বরং পুরো দলেই জয়ের চেতনা গড়ে উঠেছিল। আমার অধিনায়কত্বের ভিত ছিল দুটি। মেধার মূল্যায়ন করা এবং তরুণ খেলোয়াড়েরা যেন নির্ভয়ে খেলাটা খেলে যেতে পারে, সেটা নিশ্চিত করা।&lt;/p&gt;\r\n\r\n&lt;p&gt;যখন আমি একজন খেলোয়াড়কে বেছে নিতাম, আমি পুরো যাত্রায় তার পাশে থাকতাম। একজন তরুণ খেলোয়াড় যদি দলে তার জায়গা সম্পর্কে নিশ্চিত না হয়, কীভাবে সে পারফর্ম করবে? সে কি কখনো ঠান্ডা মাথায় তার সেরাটা দিতে পারবে? নিজের অভিজ্ঞতা থেকেই আমি এটা শিখেছি। যখন মাত্রই দলে জায়গা পেয়েছি, আমি টিকতে পারব নাকি আমাকে বাদ দেওয়া হবে, এই নিয়ে দ্বিধায় ভুগতাম। এই দুশ্চিন্তাই মাঠে আমাকে খেয়ে ফেলত। অতএব অধিনায়ক হওয়ার পর প্রথমেই আমি এই সমস্যা দূর করতে মনোযোগী হয়েছি।&lt;/p&gt;\r\n\r\n&lt;p&gt;তরুণ খেলোয়াড়দের আরও বেশি অনুপ্রাণিত করার জন্য আমি একটা মনস্তাত্ত্বিক কৌশল ব্যবহার করতাম। মাঠের বাইরে আমি ছিলাম খুব চুপচাপ, আত্মকেন্দ্রিক, নিরীহ। কিন্তু মাঠে নামলেই আমি আক্রমণাত্মক হয়ে উঠতাম। অপ্রত্যাশিতভাবেই এই কৌশল শিখেছিলাম ২০০১ সালে ইডেন গার্ডেনের সেই বিখ্যাত টেস্ট ম্যাচ খেলার সময়। টান টান উত্তেজনাপূর্ণ একটা ম্যাচ চলছিল। খেয়াল করলাম, অস্ট্রেলীয়রা যতটা আক্রমণাত্মক ভাব দেখাচ্ছে, আমার দলের কয়েকজন খেলোয়াড়ও সমানতালে সেটা ফিরিয়ে দিচ্ছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;ঠিক করেছিলাম, ভবিষ্যতেও এই পদ্ধতি কাজে লাগাব। ইচ্ছে করেই আমি প্রতিপক্ষের সঙ্গে একটা ঝগড়া বাধিয়ে দিতাম, হরভজন সিং আর জহির খানকে খেপিয়ে তোলার জন্য। আমাদের কোচও সফলভাবে আমার ওপর একই কৌশল প্রয়োগ করেছিলেন। ২০০২ সালে ন্যাট-ওয়েস্টের সেই বিখ্যাত ফাইনাল ম্যাচের আগে আমার সঙ্গে জনের (জন রাইট) কী যেন একটা বিষয় নিয়ে মতবিরোধ হয়েছিল। আমরা একে অপরের সঙ্গে কথা বলা বন্ধ করে দিয়েছিলাম। ম্যাচ জেতার পর আমরা যখন উৎসব করছি, হঠাৎ কাঁধের ওপর কারও প্রশংসামাখা হাতের স্পর্শ অনুভব করলাম। ফিরে দেখি আমাদের কোচ। তিনি হেসে বললেন, ইচ্ছে করেই আমার সঙ্গে একটা ঝগড়া বাধিয়েছিলেন আমাকে খেপিয়ে দেওয়ার জন্য। তাঁর উদ্দেশ্য সফল হয়েছিল। সেই ম্যাচে আমি ৪৩ বলে ৬০ রানের একটা ঝোড়ো ইনিংস খেলেছিলাম।&lt;/p&gt;\r\n\r\n&lt;p&gt;জয়ের লড়াই আসলে যতটা না মাঠে বা মাঠের বাইরে হয়, তার চেয়ে বেশি চলে মাথার ভেতর। অধিনায়কের কাজ হলো মাথার ভেতরে জয়ের চেতনা ঢুকিয়ে দেওয়া। এ কারণেই গ্রেগ চ্যাপল ভারতে সফল হতে পারেননি। জয়ের পরিবেশ তিনি গড়ে তুলতে পারেননি। তাঁর অধীনে দলটা নেট অনুশীলনে কঠোর পরিশ্রম করেছে, মাঠে যা করা দরকার করেছে, সবাই নিয়ম&amp;ndash;শৃঙ্খলা মেনেছে। কিন্তু ভিনদেশের মাটিতে টেস্ট ম্যাচ জিততে হলে এসব যথেষ্ট নয়। কোনো একজনকে কাঁধে হাত রেখে বলতে হয়, তুমি যেহেতু একবার পেরেছ, আবারও পারবে; ভয়ের কী আছে? চ্যাপলের &amp;lsquo;টিম ইন্ডিয়া&amp;rsquo;র মধ্যে এই শক্তি, এই লড়াকু মনোভাবেরই ঘাটতি ছিল।&lt;/p&gt;\r\n\r\n&lt;p&gt;অধিনায়কত্ব একটা প্রচণ্ড মানসিক চাপের কাজ। এম এস ধোনিকে দেখুন। বেচারার গায়ের রং ধূসর হয়ে গেছে। আমাকে দেখুন। একগাদা মাথার চুল হারিয়েছি। যখন আপনি বাধা ভাঙতে চাইবেন, লক্ষ্যে পৌঁছানোর চেষ্টা করবেন, মর্যাদা ধরে রাখার লড়াইয়ে নামবেন, চাপ আপনার সঙ্গী হবেই। আমার ক্যারিয়ারে চাপ কখনো কখনো অসহনীয় ঠেকেছে। তবু কখনো এই চাপ থেকে পালাতে চেষ্টা করিনি। পেশাদারির নিয়ম হলো, আপনি যখন জয়ের যুদ্ধে নামবেন, শত চাপকেও ভয় না পেয়ে স্বাগত জানাতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রত্যেকেরই চাপের সঙ্গে মানিয়ে নেওয়ার নিজস্ব কিছু পদ্ধতি থাকে। আমার ক্ষেত্রে সেটা হলো গান। নিজস্ব মিউজিক সিস্টেম নিয়ে আমি একটা টুর্নামেন্ট খেলতে যেতাম। আমার সংগ্রহ খুব সমৃদ্ধ&amp;mdash;কিশোর কুমার থেকে শুরু করে কুমার শানু, আশা ভোসলে থেকে অভিজিৎ। সনু নিগম থেকে শান। লতা মঙ্গেশকরের প্রতি একটা আলাদা ভালো লাগা তো আছেই। মনকে শান্ত রাখতে চাইলে আপনারও কোনো না কোনো নিজস্ব কৌশল অবলম্বন করা উচিত।&lt;/p&gt;\r\n\r\n&lt;p&gt;নেতৃত্ব হলো একটা অদ্ভুত রোগ। হয় এটা আপনাকে সারিয়ে তুলবে, নয়তো মেরে ফেলবে। অধিনায়কত্ব পাওয়ার সঙ্গে সঙ্গে আমি অনেক মানুষকে বদলে যেতে দেখেছি। দলের হাল ধরার পর একটু একটু করে বদলে গেছে অনেকের ব্যক্তিত্ব। কিন্তু আপনি যদি চ্যালেঞ্জের মুখোমুখি হতে পারেন, প্রয়োজনের সঙ্গে তাল মিলিয়ে নিজেকে প্রমাণ করতে পারেন, তাহলে বুঝবেন এটাই পৃথিবীর সেরা কাজ! (সংক্ষেপিত)&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/060323e2f09e6517db9ce.webp', 'সৌরভ গাঙ্গুলী', 'samojug.com/samojugnews', 0, 0, '1', '2023-03-06 11:39:25', 0, 1),
(181, 'samojugc_datatable', 5, 63, 'ইংরেজির দক্ষতা বাড়াতে শুনতে পারেন যে ৫ পডকাস্ট', 'ইংরেজির দক্ষতা বাড়াতে শুনতে পারেন যে ৫ পডকাস্ট', '&lt;p&gt;সহজ করে বললে পডকাস্ট একধরনের অডিও অনুষ্ঠান। বিনোদনমূলক আয়োজন থেকে শুরু করে অনুপ্রেরণাদায়ী বক্তৃতা, রাজনৈতিক আলোচনা কিংবা দক্ষতা উন্নয়নসংক্রান্ত কনটেন্ট&amp;mdash;পডকাস্টে সবই থাকে। প্রাতভ্র৴মণে কিংবা বিশ্ববিদ্যালয়-অফিসে যাওয়ার পথে অনেকেই শোনেন পডকাস্ট। সাম্প্রতিক ঘটনাবলি সম্পর্কে হালনাগাদ থাকা যায়। ইংরেজি ভাষাচর্চার জন্যও পডকাস্ট শোনার চল আছে। কয়েকটি কার্যকর পডকাস্টের খোঁজ জানা যাক।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;টেড টকস ডেইলি&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;বক্তৃতার জন্য &amp;lsquo;টেড&amp;rsquo; প্ল্যাটফর্মটি বেশ জনপ্রিয়। বিভিন্ন বিষয়ের বিশেষজ্ঞ বা আলোচিত মানুষেরা টেড&amp;ndash;এ চমৎকার সব বক্তৃতা দেন। বিজ্ঞান থেকে শুরু করে শিল্পকলা, কার্টুন আঁকা থেকে শুরু করে রকেটবিজ্ঞান&amp;mdash;নানা ধরনের বিষয়েই টেড বক্তাদের বক্তব্য শোনা যায়। পডকাস্টের জন্য টেড&amp;ndash;এর আছে একটি আলাদা অংশ। সেখানে আছে নানা বিষয়। যেমন কীভাবে খেলাধুলায় ভালো করবেন, জানতে পারবেন গুড স্পোর্ট পডকাস্টে। পেশা কিংবা সৃজনশীলতা বিকাশের জন্য শুনতে পারেন &amp;lsquo;রিথিংক পডকাস্ট&amp;rsquo;। এই পডকাস্ট পরিচালনা করেন বিখ্যাত এমবিএ স্কুল হোয়ার্টনের অধ্যাপক অ্যাডাম গ্র্যান্ট। জলবায়ু, স্বাস্থ্যসংক্রান্ত বিষয় থেকে শুরু করে আত্মবিশ্বাস বাড়ানোর বিভিন্ন উপায় পেয়ে যাবেন এসব পডকাস্টে। টেড টকস ডেইলি শুনতে পারেন &lt;a href=&quot;https://ted.com/podcasts&quot; target=&quot;_blank&quot;&gt;এখানে&lt;/a&gt;।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;দ্য মেল রবিন্স পডকাস্ট&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;যাঁরা অনুপ্রেরণামূলক বইয়ের খোঁজখবর রাখেন, দ্য ফাইভ সেকেন্ড রুল বইটি তাঁদের কাছে বেশ পরিচিত। বইটির লেখক মার্কিন সাংবাদিক, লেখক ও আইনজীবী মেল রবিন্স। এই পডকাস্টে ব্যক্তিজীবনের নানা বিষয় সম্পর্কে ধারণা পাওয়া যায়। যেমন কীভাবে বন্ধুত্ব করবেন, দুশ্চিন্তার মোকাবিলা যেভাবে করবেন, কীভাবে ভালোবাসবেন, কীভাবে জীবনের লক্ষ্য ঠিক করবেন, ইত্যাদি। মেল রবিন্স পডকাস্টের ঠিকানা পাবেন &lt;a href=&quot;https://melrobbins.com/podcast&quot; target=&quot;_blank&quot;&gt;এখানে&lt;/a&gt;।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;স্টাফ ইউ শুড নো&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;যাঁরা বিভিন্ন বিষয়ে টুকরো তথ্য বা মজার বিষয়ে জানতে চান, স্টাফ ইউ শুড নো পডকাস্টটি শুনতে পারেন। ৬৬ হাজার মানুষের দেওয়া &amp;lsquo;রেটিং&amp;rsquo; অনুসারে অ্যাপল পডকাস্টে &amp;lsquo;স্টাফ ইউ শুড নো&amp;rsquo;&amp;ndash;এর রেটিং ৫&amp;ndash;এ ৪.৫। তরুণেরা এই পডকাস্ট ইদানীং পছন্দ করছেন। হাতি কেন একটি গুরুত্বপূর্ণ প্রাণী, মনোবিজ্ঞানের বিভিন্ন তত্ত্বের প্রভাব, নারী জলদস্যুদের গল্প, এমন নানা বিষয় শোনার সুযোগ হবে এই পডকাস্টে। ২০০৮ সাল থেকে এটি চলছে। এখন পর্যন্ত দেড় হাজারের বেশি পর্ব প্রচারিত হয়েছে। স্টাফ ইউ শুড নো শুনতে &lt;a href=&quot;https://podcasts.apple.com/us/podcast/stuff-you-should-know/id278981407&quot; target=&quot;_blank&quot;&gt;এখানে &lt;/a&gt;ক্লিক করুন।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;টিম ফেরিস শো&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;মার্কিন উদ্যোক্তা ও লেখক টিম ফেরিস এই পডকাস্টের সঞ্চালক। ফোর আওয়ার ওয়ার্ক উইক ও টুলস অব টাইটানস বইয়ের জন্য বিখ্যাত তিনি। টিম ফেরিস তাঁর পডকাস্টে নানা বিষয় নিয়েই অতিথিদের সঙ্গে আলোচনা করেন। যেমন টার্মিনেটরখ্যাত আর্নল্ড শোয়ার্জনেগার কীভাবে মনোযোগ ধরে রাখেন, উলভারিনখ্যাত হিউ জ্যাকম্যান কীভাবে সমস্যা সমাধান করেন, কিংবা লিংকডইনের প্রতিষ্ঠাতা রিড হফম্যান কেমন করে নেটওয়ার্ক তৈরি করেন&amp;mdash;জানতে চাইলে শুনতে পারেন টিম ফেরিস শো। মারিয়া শারাপোভার টেনিস খেলার কৌশল কিংবা ফেসবুকের প্রতিষ্ঠাতা মার্ক জাকারবার্গ কী নিয়ে ব্যস্ত, এসব নিয়েও আলোচনা হয়েছে ফেরিসের পডকাস্টে। শুনতে পারেন &lt;a href=&quot;https://tim.blog/podcast/&quot; target=&quot;_blank&quot;&gt;এখানে&lt;/a&gt;।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;দ্য স্কুল অব গ্রেটনেস&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;উদ্যোক্তা হওয়ার নানা কৌশল, ব্যক্তিজীবনের সংকট মোকাবিলার উপায়, কিংবা ব্যবসার নতুন ধারণা (আইডিয়া) কী হতে পারে, এমন বিভিন্ন বিষয় নিয়ে পডকাস্ট &amp;lsquo;দ্য স্কুল অব গ্রেটনেস&amp;rsquo;। ব্যবসা, বিনোদন, বিজ্ঞান, স্বাস্থ্যসহ নানা বিষয়ে বিশ্বখ্যাত ব্যক্তিত্বরা এই পডকাস্ট প্ল্যাটফর্মে নিজেদের ভাবনা ও বক্তব্য প্রকাশ করেন। যাঁরা ভিন্ন কিছু ভাবতে চান বা নিজেকে ব্যবসার জন্য তৈরি করতে চান, তাঁদের জন্য এই পডকাস্ট প্ল্যাটফর্মটি খুব কাজের হতে পারে। দ্য স্কুল অব গ্রেটনেস শুনতে পাবেন &lt;a href=&quot;https://open.spotify.com/show/07GQhOZboEZOE1ysnFLipT&quot; target=&quot;_blank&quot;&gt;এখানে&lt;/a&gt;।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;কেন পডকাস্ট শুনবেন&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ভিডিও দেখার জন্য বা কিছু পড়ার জন্য আপনাকে সেদিকেই পূর্ণ মনোযোগ দিতে হয়। পডকাস্টের সুবিধা হলো, আপনি চাইলে ঘরের কাজ করতে করতে কিংবা চলার পথে, যানজটে বসেও শুনতে পারেন। ধরুন, আপনার অর্থনীতি নিয়ে আগ্রহ আছে। অর্থনীতিবিষয়ক বই হাতের কাছে নেই, কিংবা কোথা থেকে পড়া শুরু করবেন, বুঝে উঠতে পারছেন না। এ&amp;ndash;সংক্রান্ত কয়েকটা পডকাস্ট শুনলেই হয়তো আপনার আগ্রহ বাড়বে। কী পড়বেন, কোথায় খুঁজবেন, সে সম্পর্কেও ধারণা হবে। ইংরেজি ভাষার দুর্বলতা কাটানোর জন্যও পডকাস্ট দারুণ কাজের। যত বেশি শুনবেন, ইংরেজি বোঝার দক্ষতা তত বাড়বে। পাশাপাশি উচ্চারণটাও শেখা হয়ে যাবে অবচেতনে। অনেকেই আজকাল পেশাজীবনে দক্ষতা বাড়ানোর জন্যও পডকাস্ট শোনেন। স্পটিফাই থেকে শুরু করে সাউন্ডক্লাউডের মতো বিভিন্ন ওয়েবসাইট বা অ্যাপেই পডকাস্ট শোনার সুযোগ আছে। অ্যান্ড্রয়েড সিস্টেমে &lt;a href=&quot;https://podcasts.google.com/&quot; target=&quot;_blank&quot;&gt;গুগল পডকাস্ট&lt;/a&gt; এখন বেশ জনপ্রিয়। অ্যাপলের আইওএস-এও &lt;a href=&quot;https://podcasts.apple.com/&quot; target=&quot;_blank&quot;&gt;পডকাস্টও&lt;/a&gt; শোনার সুযোগ আছে। যাঁদের ভিডিও পডকাস্টে আগ্রহ আছে, চাইলে ইউটিউবে ঢুঁ মারতে পারেন।&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0603236dce13f0b305df1.webp', 'ইদানিং পডকাস্ট শোনার চল বাড়ছে', 'samojug.com/samojugnews', 0, 0, '2', '2023-03-06 11:42:05', 0, 1),
(182, 'samojugc_datatable', 5, 64, 'দেশের বাজারে বিএমডব্লিউ এক্স১', 'দেশের বাজারে বিএমডব্লিউ এক্স১', '&lt;p&gt;শৌখিন ও অভিজাত ক্রেতাদের অনেকেই জার্মানির বিলাসবহুল গাড়ি নির্মাতা প্রতিষ্ঠান বেভারিয়ান মোটরস ওয়ার্ক বা বিএমডব্লিউ গাড়ি ব্যবহার করেন। আর তাই ব্যবহারকারীদের চাহিদা মেটাতে বিএমডব্লিউ এক্স১ মডেলের নতুন গাড়ি বাজারে নিয়ে এসেছে এক্সিকিউটিভ মোটরস লিমিটেড।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিএমডব্লিউ এক্স১ মডেলের গাড়িটি মূলত তৃতীয় প্রজন্মের স্পোর্টস ইউটিলিটি ভেহিকেল। আগের মডেলের মতো এ গাড়িতে পেট্রল ও ডিজেল&amp;mdash;দুই রকেমর ইঞ্জিনই ব্যবহার করা যায়। রয়েছে ১৮ ইঞ্চি অ্যালয় হুইল, এলইডি টেল-ল্যাম্পসহ আকারে বড় ডিসপ্লে সুবিধা। শুধু তা-ই নয়, গাড়ির পেছনে মালামাল রাখার জায়গাও (বুট স্পেস) অনেক বেশি, ৪৭৬ লিটার।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিলাসবহুল এই গাড়ি ১.৫ লিটার, ৩ সিলিন্ডার পেট্রল ও ২.০ লিটার, ৪ সিলিন্ডার ডিজেল ইঞ্জিন সংস্করণে পাওয়া যায়। ফলে সংস্করণ ভেদে গাড়ির ইঞ্জিনের হর্সপাওয়ারও আলাদা হয়। বিএমডব্লিউ দাবি, পেট্রল ইঞ্জিনের গাড়িতে ৯.২ সেকেন্ডে ০ থেকে ১০০ কিলোমিটার পর্যন্ত গতি তোলা সম্ভব।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিএমডব্লিউ এক্স১ মডেলের গাড়িতে বাম্পার থেকে বাম্পার বিক্রয়োত্তর সুবিধা রয়েছে। ফলে কেনার পর পাঁচ বছর পর্যন্ত গাড়ির রক্ষণাবেক্ষণ, যন্ত্রাংশ এবং মেরামত নিয়ে বাড়তি চিন্তা করতে হয় না। শুধু তা-ই নয়, পথে গাড়ি নষ্ট হলে বিএমডব্লিউয়ের সার্ভিস কার ব্যবহারের সুবিধাও পাওয়া যাবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0603235801adcaa506a58.webp', 'বিএমডব্লিউ এক্স১', 'samojug.com/samojugnews', 0, 0, '1', '2023-03-06 11:59:50', 0, 1),
(183, 'samojugc_datatable', 5, 61, '০, ০—লিটনের ক্যারিয়ারে এই প্রথম', '০, ০—লিটনের ক্যারিয়ারে এই প্রথম', '&lt;p&gt;ওয়ানডে সিরিজ, তা আবার ঘরের মাঠে, ইংল্যান্ডের বিপক্ষে এই সিরিজের আগে যেখানে ২০১৬ সালের পর কোনো ওয়ানডে সিরিজ হারেনি &lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%AC%E0%A6%BE%E0%A6%82%E0%A6%B2%E0%A6%BE%E0%A6%A6%E0%A7%87%E0%A6%B6-%E0%A6%95%E0%A7%8D%E0%A6%B0%E0%A6%BF%E0%A6%95%E0%A7%87%E0%A6%9F-%E0%A6%A6%E0%A6%B2&quot; target=&quot;_blank&quot;&gt;বাংলাদেশ&lt;/a&gt;। এ কারণেই ইংল্যান্ডের বিপক্ষেও ভালো কিছুর প্রত্যাশা ছিল তামিম ইকবালের দলকে ঘিরে। কিন্তু বিশ্ব চ্যাম্পিয়ন ইংল্যান্ডের বিপক্ষে সিরিজটা ভালো যাচ্ছে না বাংলাদেশের।&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রথম দুই ম্যাচ হেরে এরই মধ্যে সিরিজ খুইয়েছে তামিমের দল। চট্টগ্রামের জহুর আহমেদ চৌধুরী স্টেডিয়ামে আজ তৃতীয় ও শেষ ওয়ানডে খেলছে বাংলাদেশ। তামিম-সাকিব-লিটনদের জন্য যেটা ধবলধোলাই এড়ানোর লড়াই।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug43.webp&quot; style=&quot;height:427px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;সিরিজটা বাংলাদেশের জন্য তো খারাপ যাচ্ছেই, সবচেয়ে খারাপ যাচ্ছে সম্ভবত &lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%B2%E0%A6%BF%E0%A6%9F%E0%A6%A8-%E0%A6%A6%E0%A6%BE%E0%A6%B8&quot; target=&quot;_blank&quot;&gt;লিটন দাসের&lt;/a&gt; জন্য! মিরপুর শেরেবাংলা স্টেডিয়ামে প্রথম ওয়ানডেতে মাত্র ৭ রান করে আউট হয়েছেন লিটন। দ্বিতীয় ওয়ানডেতে রানই পাননি বাংলাদেশের ওপেনার।&lt;/p&gt;\r\n\r\n&lt;p&gt;আজ চট্টগ্রামেও কোনো রান করার আগেই স্যাম কারেনের বলে উইকেটের পেছনে জস বাটলারকে ক্যাচ দিয়ে ফিরেছেন লিটন। আগের ম্যাচে &amp;lsquo;সোনার হাঁস&amp;rsquo; পেয়েছিলেন, এবার অবশ্য তিনটি বল খেলেছেন। টানা দুই ম্যাচে &amp;lsquo;০&amp;rsquo; রানে আউট&amp;mdash;লিটনের আন্তর্জাতিক ক্যারিয়ারে এই প্রথম ঘটল এমন ঘটনা।&lt;/p&gt;\r\n\r\n&lt;p&gt;লিটন তাঁর ক্যারিয়ারে ৩৭টি টেস্ট, ৬৩টি ওয়ানডে ও ৬৫টি টি-টোয়েন্টি খেলেছেন। সব মিলিয়ে খেলা ১৬৫ ম্যাচের ক্যারিয়ারে তিনি শূন্য রানে আউট হয়েছেন মোট ১৪ বার। এর মধ্যে টেস্টে মাত্র ১ বার, টি-টোয়েন্টিতে ৪ বার।&lt;/p&gt;\r\n\r\n&lt;p&gt;ওয়ানডেতে লিটন শূন্য রানে আউট হয়েছেন ৯ বার। এর মধ্যে এই সিরিজেই দুবার। তাও আবার টানা দুই ম্যাচে! তারপরও তিন ম্যাচে ৭ রানের এই সিরিজটি লিটনের ক্যারিয়ারের সবচেয়ে বাজে সিরিজ নয়। ২০১৯ সালের ফেব্রুয়ারিতে নিউজিল্যান্ড সফরে তিন ম্যাচের ওয়ানডে সিরিজে লিটন করেছিলেন মোট ৩ রান। তিন ম্যাচেই আউট হয়েছিলেন ১ রান করে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/060323e03f70a38d125d4.webp', 'বাংলাদেশের ওপেনার লিটন দাস এই প্রথম টানা দুই ম্যাচে কোনো রান না করে আউট হয়েছেন', 'https://www.samojug.com/', 0, 0, '14', '2023-03-06 12:21:00', 0, 1),
(184, 'samojugc_datatable', 5, 64, 'ছবিতে রোবট শিক্ষার্থী', 'ছবিতে রোবট শিক্ষার্থী', '&lt;p&gt;মনোযোগ দিয়ে শিক্ষকের বক্তব্য শোনার পাশাপাশি সহপাঠীদের সঙ্গে খেলতে পারে বাডি নামের এই রোবট। শুধু তা&amp;ndash;ই নয়, রোবটটি ভিডিও কলের মাধ্যমে দূরে থাকা শিক্ষার্থীদের পড়ালেখার সুযোগও করে দেয়। ফলে সশরীর উপস্থিত হতে না পারলেও দূর থেকে ক্লাস করার পাশাপাশি শিক্ষকদের প্রশ্নের উত্তর দিতে পারেন শিক্ষার্থীরা। অসুস্থ শিক্ষার্থীদের ঘর বা হাসপাতাল থেকে পড়ালেখার সুযোগ দিতে এই রোবট ব্যবহার শুরু করেছে ফ্রান্সের লিঁও শহরের পল শিভালিয়া স্কুল।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug45.webp&quot; style=&quot;height:480px; width:720px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;সহপাঠীদের সঙ্গে খেলছে রোবটটি।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug46.webp&quot; style=&quot;height:480px; width:720px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ওজন কম হওয়ায় রোবটটিকে শ্রেণিকক্ষের বিভিন্ন স্থান ঘুরিয়ে দেখাচ্ছেন এক শিক্ষক।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug47.webp&quot; style=&quot;height:480px; width:720px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;সহপাঠীদের বিভিন্ন কার্যক্রম দেখছে রোবটটি।&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0603235d6f04ae9ce4a52.webp', 'অন্য শিক্ষার্থীদের মতোই ক্লাস করছে রোবটটি।', 'https://www.samojug.com/', 0, 0, '1', '2023-03-06 12:31:30', 0, 1),
(185, 'samojugc_datatable', 5, 65, 'মাদ্রাসায় ঐতিহাসিক সাতই মার্চ যেভাবে পালিত হবে', 'মাদ্রাসায় ঐতিহাসিক সাতই মার্চ যেভাবে পালিত হবে', '&lt;p&gt;১৯৭১ সালের ৭ মার্চ জাতির জনক বঙ্গবন্ধু শেখ মুজিবুর রহমানের ভাষণের দিনটিকে সব মাদ্রাসায় যথাযথ মর্যাদায় পালিত হবে। এ জন্য ঐতিহাসিক সাতই মার্চ পালনের নির্দেশ দিয়েছে মাদ্রাসা শিক্ষা অধিদপ্তর। দিবসটি কীভাবে পালিত হবে, তা-ও জানিয়ে দিয়েছে মাদ্রাসা শিক্ষা অধিদপ্তর।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ দিবসে বঙ্গবন্ধুর প্রতিকৃতিতে পুষ্পস্তবক অর্পণ করে শ্রদ্ধা জানাতে হবে। মাদ্রাসায় শিক্ষার্থীদের নিয়ে নিজ নিজ কর্মসূচি প্রণয়ন করে দিবসটি পালন করতে হবে। শিক্ষার্থীদের নিয়ে ৭ মার্চের ভাষণ প্রতিযোগিতা, চিত্রাঙ্কন প্রতিযোগিতা, ছড়া পাঠ, কবিতা পাঠ ও কুইজ প্রতিযোগিতার আয়োজন করতে হবে মাদ্রাসায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;গতকাল রোববার মাদ্রাসা শিক্ষা অধিদপ্তর থেকে সব মাদ্রাসায় সাতই মার্চের কর্মসূচি কীভাবে পালিত হবে, তা-ও জানানো হয়েছে। এক আদেশে এ বিষয়ে &lt;a href=&quot;http://www.dme.gov.bd/sites/default/files/files/dme.portal.gov.bd/notices/3a08fc45_3cb5_4fea_a2db_ded0a17fcb76/563.pd&quot; target=&quot;_blank&quot;&gt;বিস্তারিত &lt;/a&gt;জানিয়েছে মাদ্রাসা শিক্ষা অধিদপ্তর।&lt;/p&gt;\r\n\r\n&lt;p&gt;কর্মসূচি নিয়ে মাদ্রাসা শিক্ষা অধিদপ্তর জানিয়েছে, ৭ মার্চ সকালে জাতির জনক বঙ্গবন্ধু শেখ মুজিবুর রহমানের প্রতিকৃতিতে পুষ্পস্তবক অর্পণের মাধ্যমে শ্রদ্ধা জানাতে হবে। বঙ্গবন্ধুর ঐতিহাসিক সাতই মার্চের ভাষণ প্রচারের ব্যবস্থা করতে হবে। জাতীয় কর্মসূচির সঙ্গে সংগতি রেখে সব মাদ্রাসায় নিজ নিজ কর্মসূচি প্রণয়ন করে ওই দিবসে বা সুবিধাজনক দিনে &amp;lsquo;ঐতিহাসিক সাতই মার্চ দিবস&amp;rsquo; পালন করতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;শিক্ষার্থীদের নিয়ে ওই দিন বা সুবিধাজনক দিনে চিত্রাঙ্কন প্রতিযোগিতা, বঙ্গবন্ধুর ঐতিহাসিক সাতই মার্চের ভাষণ প্রতিযোগিতা, ছড়া পাঠ, কবিতা পাঠ, কুইজ প্রতিযোগিতা ইত্যাদির মধ্যে যেটি সুবিধাজনক, তা আয়োজন করতে হবে। দাখিল পর্যায়ে &amp;lsquo;অসমাপ্ত আত্মজীবনী&amp;rsquo; বইয়ের ওপর কুইজ এবং আলিম, ফাজিল ও কামিল পর্যায়ে &amp;lsquo;কারাগারের রোজনামচা&amp;rsquo;, &amp;lsquo;আমার দেখা নয়াচীন&amp;rsquo; বইয়ের ওপর কুইজ আয়োজন করা যাবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;আদেশে আরও বলা হয়েছে, ঐতিহাসিক সাতই মার্চ যথাযথ মর্যাদায় পালন উপলক্ষে অধিদপ্তরের আওতাধীন মাদ্রাসাগুলো জাতীয় কর্মসূচির সঙ্গে সংগতি রেখে এসব কর্মসূচি পালন করবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/060323c271858b32eacb2.webp', 'বঙ্গবন্ধুর ৭ মার্চের ভাষণ', 'https://www.samojug.com/', 0, 0, '1', '2023-03-06 12:39:23', 0, 1),
(186, 'samojugc_datatable', 5, 65, 'একাদশে শিক্ষার্থীদের রেজিস্ট্রেশন শুরু', 'একাদশে শিক্ষার্থীদের রেজিস্ট্রেশন শুরু', '&lt;p&gt;একাদশ শ্রেণিতে অনলাইনে ভর্তি হওয়া শিক্ষার্থীদের রেজিস্ট্রেশন কার্যক্রম শুরু হয়েছে। গতকাল রোববার (৫ মার্চ) থেকে এ কার্যক্রম শুরু হয়েছে। ২০ মার্চ পর্যন্ত রেজিস্ট্রেশন কার্যক্রম চলবে। ঢাকা মাধ্যমিক ও উচ্চমাধ্যমিক শিক্ষা বোর্ড থেকে এ-সংক্রান্ত এক বিজ্ঞপ্তি জারি করা হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিজ্ঞপ্তিতে বলা হয়েছে, নিজ শিক্ষা বোর্ডের আওতাধীন দেশের উচ্চমাধ্যমিক পর্যায়ের সব শিক্ষাপ্রতিষ্ঠানকে ভর্তির ওয়েবসাইট &lt;a href=&quot;https://www.xiclassadmission.gov.bd/&quot; target=&quot;_blank&quot;&gt;www.xiclassadmission.gov.bd&lt;/a&gt;-তে রেজিস্ট্রেশনের কার্যক্রম শেষ করতে হবে। ওয়েবসাইটে &amp;lsquo;কলেজ লগইন&amp;rsquo; প্যানেলে লগইন করে রেজিস্ট্রেশনের জন্য শিক্ষাপ্রতিষ্ঠান থেকে শিক্ষার্থীদের বিস্তারিত তথ্য অনলাইনে পাঠাতে হবে। ২০ মার্চ বিকেল ৫টার মধ্যে পুরো কার্যক্রম শেষ করতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;নির্ধারিত সময়ের মধ্যে অনলাইনে ভর্তি হওয়া শিক্ষার্থীদের রেজিস্ট্রেশন সম্পন্ন করতে না পারলে পরবর্তী সময়ে উদ্ভূত জটিলতার জন্য শিক্ষা বোর্ড দায়ী থাকবে না বলেও বিজ্ঞপ্তিতে বলা হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0603234657dc536f914e4.webp', 'একাদশে ভর্তি হওয়া শিক্ষার্থীদের এখন রেজিস্ট্রেশন করতে হবে', 'https://www.samojug.com/', 0, 0, '1', '2023-03-06 12:41:55', 0, 1),
(187, 'samojugc_datatable', 5, 66, 'সুরা আলায় আখিরাতকে স্মরণ', 'সুরা আলায় আখিরাতকে স্মরণ', '&lt;p&gt;সুরা আলা পবিত্র কোরআনের ৮৭তম সুরা। এটি মক্কায় অবতীর্ণ। ১ রুকু, ১৯ আয়াত। সুরার শুরুতে আল্লাহর নাম উচ্চারণ করতে বলা হয়েছে। এতে বলা হয়েছে, আল্লাহ সবকিছু সৃষ্টি, সংগঠন ও নিয়ন্ত্রণ করে পথ দেখিয়েছেন। রাসুল (সা.) কখনো তাঁর আদেশ ভুলে যাবেন না। আল্লাহর অসীম জ্ঞানের কথা উল্লেখ করে মানুষকে সৎ উপদেশ দেওয়ার কথা বলা হয়েছে। আল্লাহকে যে ভয় করে, সে মহানবীর (সা.) উপদেশ গ্রহণ করবে এবং পরকালে সফল হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;সুরার ১ থেকে ৫ আয়াতে&amp;nbsp;আল্লাহ সৃজনশীলতার কথা বলা হয়েছে। তিনি সংগঠন ও নিয়ন্ত্রণের মাধ্যমে&amp;nbsp;মানবজাতিকে&amp;nbsp;পথ দেখিয়েছেন।&amp;nbsp;সমগ্র মানবজাতির প্রতি তাঁর অনুগ্রহ ও অবদানের বিষয় উল্লেখ করা হয়েছে। এরপর ৬-৯ আয়াতে আল্লাহ নবী মুহাম্মদ (সা.) এর উপর তাঁর অবদান ও উপদেশের কথা বলেছেন। ১০-১৫ নম্বর আয়াতে সব মানুষের প্রতি দেওয়া আল্লাহর উপদেশ মান্য ও অমান্য করার ফলাফল দুনিয়া ও আখিরাতে কী হবে, তা বর্ণনা করা হয়েছে। ১৬-১৭ আয়াতে আল্লাহ উপদেশ দিয়েছেন। দুনিয়াকে আখিরাতের চেয়ে বেশি প্রাধান্য দেওয়ার কারণেই এই অমান্যতা। সবশেষে আল্লাহ বলেছেন, তাঁর এই উপদেশ মানুষের জন্য চিরন্তন। অন্যান্য জাতির প্রতিও একই উপদেশ।&lt;/p&gt;\r\n\r\n&lt;p&gt;সুরা আলার শুরুতেই আল্লাহ তাঁর সুমহান নামের পবিত্রতা বর্ণনা করার নির্দেশ দিয়েছেন।&lt;/p&gt;\r\n\r\n&lt;h2&gt;আখিরাতের বর্ণনা&lt;/h2&gt;\r\n\r\n&lt;p&gt;এ সুরায় তিনটি গুরুত্বপূর্ণ বিষয় উল্লেখ করা হয়েছে। শুরুর আয়াতগুলোতে আল্লাহর সত্তা এবং তার গুণাবলির তাসবিহ ও পবিত্রতা বর্ণনা করার হুকুম দেওয়া হয়েছে। তিনি মানুষকে সৃষ্টি করেছেন। মানুষকে সর্বোত্তম আকার দিয়েছেন এবং সফলতা ও ঈমানের পথ দেখিয়েছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;কোরআন মুখস্থ করা সহজ হওয়ার সুসংবাদ দেওয়া হয়েছে। রাসুল (সা.)&amp;ndash;কে নির্দেশ দিয়ে বলা হয়েছে, &amp;lsquo;আপনি চারিত্রিক পবিত্রতা ও আত্মিক পরিশোধনের জন্য কোরআনের মাধ্যমে নসিহত প্রদান করুন। যার অন্তরে আল্লাহর ভয়ভীতি থাকবে তার অবশ্যই নসিহত কবুল হবে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;কোরআনে আছে, &amp;lsquo;আমি তোমাকে আবৃত্তি করাব যাতে তুমি ভুলে না যাও, আল্লাহ্ যা ইচ্ছা করেন তা ছাড়া। নিশ্চয় তিনি জানেন যা প্রকাশ করা হয়েছে ও যা প্রকাশ করা হয়নি। আমি তোমার জন্য পথ সহজতম করে দিয়েছি। সুতরাং তুমি উপদেশ দাও, যদি সে উপদেশ কাজে লাগে। যে ভয় করে সে উপদেশ গ্রহণ করবে। যে নিতান্তই হতভাগ্য সে&amp;nbsp;তা উপেক্ষা করবে। সে মহা আগুনে প্রবেশ করবে। তারপর সেখানে&amp;nbsp;সে মরবেও না, বেঁচেও থাকবে না।&amp;#39;&lt;/p&gt;\r\n\r\n&lt;p&gt;সুরার শেষে বলা হয়েছে, যে-ব্যক্তি নিজেকে পাপ থেকে পবিত্র রাখবে সে ভালো আগ্রহ ও চিন্তাচেতনার অধিকারী হবে। তার অন্তরে আল্লাহর মহত্ত্ব সৃষ্টি হবে। সে দুনিয়াকে আখেরাতের ওপর প্রাধান্য দেবে না। সে সফল হবে। সমস্ত সহিফা ও শরিয়তে এই মূলনীতিই উল্লেখ করা হয়েছে। কোরআনে আছে, &amp;lsquo;নিশ্চয় সাফল্য লাভ করবে, (কারণ) সে পবিত্র আর তার প্রতিপালকের নাম স্মরণ করে ও নামাজ পড়ে। তবু তোমরা পার্থিব জীবনকে প্রাধান্য দাও, যদিও পরবর্তী জীবন আরও ভালো ও স্থায়ী। এ তো (লেখা) আছে পূর্বের গ্রন্থে, ইব্রাহিম ও মুসার গ্রন্থে।&amp;rsquo; (আয়াত: ১৪&amp;ndash;১৯,&lt;em&gt;&amp;nbsp;কোরানশরিফ: সরল বঙ্গানুবাদ&lt;/em&gt;, অনুবাদ: মুহাম্মদ হাবিবুর রহমান, প্রথমা প্রকাশন)&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/060323a3de35adb1b3539.webp', 'প্রতীকী ছবি', 'https://www.samojug.com/', 0, 0, '1', '2023-03-06 12:45:38', 0, 1),
(188, 'samojugc_datatable', 5, 66, 'পবিত্র হজ পালনের খরচ ৪ লাখের মধ্যে পুনর্নির্ধারণে ধর্ম মন্ত্রণালয়কে নোটিশ', 'পবিত্র হজ পালনের খরচ ৪ লাখের মধ্যে পুনর্নির্ধারণে ধর্ম মন্ত্রণালয়কে নোটিশ', '&lt;p&gt;চলতি বছর সরকারি ব্যবস্থাপনায় হজযাত্রার জন্য ৬ লাখ ৮৩ হাজার ১৮ টাকা নির্ধারণ করা হয়েছে। এ খরচ কমিয়ে চার লাখ টাকার মধ্যে পুনর্নির্ধারণ করতে অনুরোধ জানিয়ে আজ সোমবার ধর্মবিষয়ক মন্ত্রণালয় বরাবর আইনি নোটিশ পাঠানো হয়েছে।&lt;br /&gt;\r\nসুপ্রিম কোর্টের আইনজীবী আশরাফ-উজ-জামান নোটিশটি পাঠিয়েছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;ধর্ম মন্ত্রণালয় এক স্মারকে গত ১ ফেব্রুয়ারি হজ প্যাকেজ (২০২৩ সাল) ঘোষণা করে। নোটিশে ওই স্মারক সংশোধন বা পরিবর্তন করে ৪ লাখ টাকার মধ্যে হজ প্যাকেজ (২০২৩ সাল) ৭ দিনের মধ্যে পুনর্নির্ধারণ করার অনুরোধ জানানো হয়েছে। এতে ব্যর্থ হলে প্রয়োজনীয় পদক্ষেপ নেওয়া হবে বলে নোটিশে উল্লেখ করা হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;চাঁদ দেখা সাপেক্ষে আগামী ২৭ জুন পবিত্র হজ অনুষ্ঠিত হতে পারে। এ উপলক্ষে গত মাসে বাংলাদেশ ও সৌদি আরবের মধ্যে দ্বিপক্ষীয় হজ চুক্তি সই হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;চুক্তি অনুযায়ী, চলতি বছর বাংলাদেশ থেকে মোট ১ লাখ ২৭ হাজার ১৯৮ জন পবিত্র হজ পালনে যেতে পারবেন। তাঁদের মধ্যে সরকারি ব্যবস্থাপনায় ১৫ হাজার ও বেসরকারি ব্যবস্থাপনায় ১ লাখ ১২ হাজার ১৯৮ জন যেতে পারবেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/060323218dd96bc8f7067.webp', 'হাইকোর্ট', 'https://www.samojug.com/', 0, 0, '7', '2023-03-06 12:48:16', 0, 1),
(190, 'samojugc_datatable', 5, 56, '‘সরকারের অপশাসন’ থেকে মুক্তির জন্য বিএনপির দোয়া', '‘সরকারের অপশাসন’ থেকে মুক্তির জন্য বিএনপির দোয়া', '&lt;p&gt;বিএনপির স্থায়ী কমিটির সদস্য নজরুল ইসলাম খান বলেছেন, সরকারের অপশাসনে সাধারণ মানুষ বিপর্যস্ত। দুই মাসের মধ্যে তিনবার বিদ্যুতের দাম বাড়িয়েছে। ভোটে নির্বাচিত হলে জনগণের কষ্ট হয়&amp;mdash;এমন সিদ্ধান্ত সরকার নিতে পারত না। জনগণ এ সরকারের পরিবর্তন চায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;আজ মঙ্গলবার নয়াপল্টনে বিএনপির কেন্দ্রীয় কার্যালয়ের নিচতলায় আয়োজিত দোয়া মাহফিলে নজরুল ইসলাম এসব কথা বলেন। পবিত্র শবে বরাত উপলক্ষে বিএনপি এ দোয়া মাহফিলের আয়োজন করে। মাহফিলে &amp;lsquo;সরকারের অপশাসন&amp;rsquo; থেকে মুক্তির জন্য দোয়া করা হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;নজরুল ইসলাম খান বলেন, একটি অত্যাচারী, অনির্বাচিত, অহংকারী সরকারের অপশাসনের কারণে দেশের মানুষ দুর্বিষহ জীবন পার করছে। সাধারণ খেটে খাওয়া মানুষ, কর্মজীবী মানুষ, ছোট ব্যবসায়ীরা জীবন নির্বাহ করতে পারছেন না। দ্রব্যমূল্যের ঊর্ধ্বগতি এবং সরকারের গণবিরোধী সিদ্ধান্তের কারণে মানুষের জীবন দুর্বিষহ হয়ে পড়েছে। প্রকাশ্যে লুটপাট করা হচ্ছে এবং অর্থ পাচার করা হচ্ছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;নজরুল ইসলাম আরও বলেন, &amp;lsquo;এ পবিত্র রজনীতে আল্লাহর কাছে আমাদের প্রার্থনা হবে, তিনি যেন আমাদের এ দুঃশাসন, অপশাসন, অত্যাচার, নির্যাতন, জুলুম থেকে মুক্তি দেন। খালেদা জিয়ার মুক্তি এবং যারা গুম-খুন করেছে, তাদের উপযুক্ত শাস্তি দিতে দোয়া চান নেতারা।&lt;/p&gt;\r\n\r\n&lt;p&gt;দোয়া মাহফিলে বিএনপির ভাইস চেয়ারম্যান এ জেড এম জাহিদ হোসেন, ঢাকা মহানগর উত্তর বিএনপির আহ্বায়ক আমানউল্লাহ আমান, যুগ্ম মহাসচিব খায়রুল কবির, সাংগঠনিক সম্পাদক আবদুস সালাম আজাদ প্রমুখ উপস্থিত ছিলেন। দোয়া ও মোনাজাত পরিচালনা করেন ওলামা দলের আহ্বায়ক শাহ মো. নেছারুল হক।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/07032374724bb6cc49f51.webp', 'নয়াপল্টনে বিএনপির কেন্দ্রীয় কার্যালয়ের নিচতলায় আজ মঙ্গলবার দোয়া মাহফিলের আয়োজন করা হয়', 'https://www.samojug.com/', 0, 0, '0', '2023-03-07 10:48:14', 0, 1),
(191, 'samojugc_datatable', 5, 56, 'আওয়ামী লীগ ক্ষমতায় এলেই মতপ্রকাশের স্বাধীনতায় আঘাত করে: আবদুল্লাহ আল নোমান', 'আওয়ামী লীগ ক্ষমতায় এলেই মতপ্রকাশের স্বাধীনতায় আঘাত করে: আবদুল্লাহ আল নোমান', '&lt;p&gt;আওয়ামী লীগ কখনোই মতপ্রকাশের স্বাধীনতায় বিশ্বাস করে না বলে অভিযোগ তুলেছেন বিএনপির ভাইস চেয়ারম্যান আবদুল্লাহ আল নোমান। ১৯৭৫ সালে আওয়ামী লীগ সরকার নিয়ন্ত্রিত চারটি ছাড়া সব সংবাদপত্র বন্ধ করে দিয়েছিল উল্লেখ করে আবদুল্লাহ আল নোমান বলেন, তারা যখনই ক্ষমতায় আসে, তখনই মতপ্রকাশের স্বাধীনতার ওপর আঘাত করে।&lt;/p&gt;\r\n\r\n&lt;p&gt;আজ মঙ্গলবার সকালে জাতীয় প্রেসক্লাবের সামনে দৈনিক দিনকালসহ বন্ধ সব গণমাধ্যম খুলে দেওয়ার দাবিতে আয়োজিত এক সমাবেশে এসব অভিযোগ আনেন বিএনপির এই ভাইস চেয়ারম্যান। এ সমাবেশের আয়োজন করে জিয়াউর রহমান সমাজকল্যাণ পরিষদ।&lt;/p&gt;\r\n\r\n&lt;p&gt;আওয়ামী লীগ সরকার গণতন্ত্র সহ্য করতে পারে না বলেও অভিযোগ তোলেন আবদুল্লাহ আল নোমান। তিনি বলেন, তারা স্বাধীনতার পর ক্ষমতায় গিয়ে সব রাজনৈতিক দল নিষিদ্ধ করে সবাইকে বাকশালে যোগ দিতে বাধ্য করেছিল।&lt;/p&gt;\r\n\r\n&lt;p&gt;এখন আওয়ামী লীগ সরকার একদলীয় ব্যবস্থার পুনঃপ্রবর্তন করছে নতুন আঙ্গিকে। সে কারণে তারা সাংবাদিক ও সংবাদপত্রের ওপর অব্যাহত জুলুম চালাচ্ছে এবং হুমকির সর্বগ্রাসী কর্তৃত্ব কায়েম করেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;সরকারের সমালোচনা করলে বিভিন্ন সংবাদপত্র ও অনলাইন বন্ধ করে দেওয়া হচ্ছে বলে অভিযোগ তোলেন বিএনপির ভাইস চেয়ারম্যান শামসুজ্জামান। সমাবেশে তিনি বলেন, এ সরকারের আমলে সব গণমাধ্যমের কর্মীদের শঙ্কা ও ভয়ের মধ্যে দায়িত্ব পালন করতে হচ্ছে। তাই তাঁরা এখন সত্য তুলে ধরতে পারছেন না। তাঁদের এখন সেলফ সেন্সরশিপ করতে হচ্ছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;সাংবাদিকেরা খুনের শিকার হয়েও বিচার পাচ্ছেন না উল্লেখ করে শামসুজ্জামান বলেন, বর্তমান সরকারের অধীন গণমাধ্যমের যে কোনো স্বাধীনতা নেই, তা আবারও প্রমাণিত হলো দৈনিক দিনকাল পত্রিকাটির প্রকাশনা বাতিলের মাধ্যমে। দীর্ঘদিন ধরে বিরোধী দলের মুখপত্র হিসেবে দিনকাল ভূমিকা রেখে আসছিল। এটি বন্ধ করা সরকারের চরম হিংসা চরিতার্থ করার বহিঃপ্রকাশ।&lt;/p&gt;\r\n\r\n&lt;p&gt;সরকারের অগণতান্ত্রিক কর্মকাণ্ড, দুর্নীতি, অর্থ পাচার, দফায় দফায় গ্যাস-বিদ্যুৎ, জাতীয় স্বার্থবিরোধী অসম চুক্তি ইত্যাদি বিষয়ে নিঃসংকোচে সংবাদ প্রকাশ করায় দৈনিক দিনকাল সরকারের রাজনৈতিক আক্রোশের শিকার হয়েছে বলেও মনে করেন শামসুজ্জামান।&lt;/p&gt;\r\n\r\n&lt;p&gt;বাংলাদেশ সম্মিলিত পেশাজীবী পরিষদের সদস্যসচিব কাদের গনি চৌধুরী বলেন, দেশে গণমাধ্যম আছে, কিন্তু গণমাধ্যমের স্বাধীনতা নেই। সরকারের দুঃশাসন ও লুটপাটের তথ্য যাতে প্রকাশ করা না যায়, সে জন্য একের পর এক গণমাধ্যম বন্ধ করে দেওয়া হচ্ছে। মাত্র কয়েক দিন আগেই ১৯১টি অনলাইন বন্ধ করেছে সরকার।&lt;/p&gt;\r\n\r\n&lt;p&gt;জিয়াউর রহমান সমাজকল্যাণ পরিষদের সভাপতি গিয়াস উদ্দিন খোকনের সভাপতিত্বে সমাবেশে আরও বক্তব্য দেন বিএনপি চেয়ারপারসনের উপদেষ্টা হাবিবুর রহমান প্রমুখ।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0703236c7086039c41102.webp', 'আবদুল্লাহ আল নোমান', 'https://www.samojug.com/', 0, 0, '4', '2023-03-07 10:54:49', 0, 1);
INSERT INTO `samojugc_news_datatable` (`id`, `datatable`, `admin_id`, `category_id`, `title`, `keywords`, `description`, `thumbnail`, `teaser`, `link`, `liked`, `unliked`, `watched`, `date`, `topnews`, `status`) VALUES
(192, 'samojugc_datatable', 5, 58, 'নারী দিবসে জয় বাংলা কনসার্টে বিশেষ আয়োজন', 'নারী দিবসে জয় বাংলা কনসার্টে বিশেষ আয়োজন', '&lt;p&gt;ঢাকার আর্মি স্টেডিয়ামে কাল বুধবার অনুষ্ঠিত হতে যাচ্ছে জয় বাংলা কনসার্ট। এদিন নারী দিবস উদ্&amp;zwnj;যাপনে নারীদের কনসার্টে যোগ দেওয়ার আহ্বান জানিয়েছে আয়োজক প্রতিষ্ঠান সেন্টার ফর রিসার্চ অ্যান্ড ইনফরমেশনের (সিআরআই) অঙ্গ প্রতিষ্ঠান ইয়াং বাংলা। নিজেদের ফেসবুক পেজে ইয়াং বাংলা এ আহ্বান জানায়। সিআরআইয়ের এক প্রেস বিজ্ঞপ্তিতে এ তথ্য জানানো হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;ওই পোস্টে নারী দিবসে উদ্&amp;zwnj;যাপনে কাল অনুষ্ঠেয় জয় বাংলা কনসার্টে নারীদের যোগ দেওয়ার আহ্বান জানানো হয়। তা ছাড়া এ জন্য নারীদের আলাদা বিশেষ নিবন্ধনও চালু করা হয়েছে বলে জানায় ইয়াং বাংলা।&lt;/p&gt;\r\n\r\n&lt;p&gt;৭ মার্চ বঙ্গবন্ধুর ঐতিহাসিক ভাষণের দিনটিকে স্মরণ করে ৭ মার্চ ঢাকার আর্মি স্টেডিয়ামে জয় বাংলা কনসার্ট আয়োজিত হয়ে আসছে। কোভিড-১৯ মহামারির কারণে ২০২১ ও ২০২২ দুই বছর এটি অনুষ্ঠিত হয়নি। এ কনসার্ট নিয়ে তরুণদের মধ্যে ব্যাপক আগ্রহ দেখা গেছে। অবশেষে এবার মঞ্চে আসতে যাচ্ছে জয় বাংলা কনসার্ট।&lt;/p&gt;\r\n\r\n&lt;p&gt;তবে পবিত্র শবে বরাতের কারণে ৭ মার্চের বদলে এবার আয়োজন করা হচ্ছে ৮ মার্চ।&lt;br /&gt;\r\nতরুণদের মধ্যে সাড়া ফেলা এই কনসার্টে সর্বশেষ ২০২০ সালে সরাসরি ৬০ হাজার দর্শক অংশ নেন। এ ছাড়া অনলাইন ও টেলিভিশনে প্রায় দুই কোটি মানুষ উপভোগ করেন কনসার্টটি।&lt;/p&gt;\r\n\r\n&lt;p&gt;কনসার্টে চেনাজানা প্রিয় ব্যান্ড দলগুলোর গান সরাসরি উপভোগ করতে পারা বড় আকর্ষণ তরুণদের কাছে। এ ছাড়া স্বাধীন বাংলা বেতার কেন্দ্রের গানও মুগ্ধ করে তাদের। সর্বশেষ আয়োজনে কনসার্টে প্রথমবার যোগ দেন বঙ্গবন্ধুকন্যা প্রধানমন্ত্রী শেখ হাসিনা।&lt;/p&gt;\r\n\r\n&lt;p&gt;তাঁর সঙ্গে ছিলেন ছোট বোন শেখ রেহানাও। বঙ্গবন্ধুর দৌহিত্রী সায়মা ওয়াজেদ হোসেন এবং দৌহিত্র রাদওয়ান মুজিব সিদ্দিকও ছিলেন সেই কনসার্টে। এবারের কনসার্টে মঞ্চ কাঁপাবে দেশের জনপ্রিয় ব্যান্ডদল &amp;lsquo;আর্টসেল&amp;rsquo;, &amp;lsquo;ক্রিপটিক ফেইট&amp;rsquo;, &amp;lsquo;চিরকুট&amp;rsquo;, &amp;lsquo;নেমেসিস&amp;rsquo;, &amp;lsquo;লালন&amp;rsquo;, &amp;lsquo;আরেকটা রক ব্যান্ড&amp;rsquo;, &amp;lsquo;মেঘদল&amp;rsquo;, &amp;lsquo;অ্যাভয়েড রাফা&amp;rsquo; ও &amp;lsquo;কার্নিভাল&amp;rsquo;।&lt;/p&gt;\r\n\r\n&lt;p&gt;কনসার্টে অংশগ্রহণের জন্য গত বুধবার (১ মার্চ) থেকে নিবন্ধন শুরু হয়, যা চলছে এখনো। কনসার্টের মূল উদ্যোক্তা তারুণ্যের সংগঠন ইয়াং বাংলা জানায়, কনসার্টটি দেখতে বরাবরের মতোই কোনো টাকা লাগবে না। তবে নির্ধারিত সময়ে অনলাইনে রেজিস্ট্রেশন করে সংগ্রহ করতে হবে প্রবেশের টিকিট।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;http://ticket.youngbangla.org/&quot; target=&quot;_blank&quot;&gt;লিংকে&lt;/a&gt; গিয়ে নিবন্ধন করতে হবে। সেখানে ফটো আইডি হিসেবে কলেজের আইডি কার্ড, জাতীয় পরিচয়পত্র, পাসপোর্টের কপি বা ড্রাইভিং লাইসেন্সের কপি ব্যবহার করতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;নিবন্ধনের সময় খেয়াল রাখতে হবে জাতীয় পরিচয়পত্রের নামের সঙ্গে যেন নিবন্ধনের জন্য দেওয়া নামের সম্পূর্ণ মিল থাকে। সবকিছু সঠিকভাবে পূরণ হয়ে গেলে &amp;lsquo;সাবমিট অ্যান্ড গেট ফ্রি টিকিট&amp;rsquo; অপশনে ক্লিক করতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/070323e72b9fb278d11ea.webp', 'ছবি: সংগৃহীত', 'https://www.samojug.com/', 0, 0, '0', '2023-03-07 11:00:13', 0, 1),
(193, 'samojugc_datatable', 5, 58, 'নোয়াখালীতে নির্মাণাধীন নালায় মিলল বৃদ্ধের লাশ', 'নোয়াখালীতে নির্মাণাধীন নালায় মিলল বৃদ্ধের লাশ', '&lt;p&gt;নোয়াখালীর চাটখিল পৌরসভার একটি নালা থেকে আবদুল মান্নান (৮০) নামের এক বৃদ্ধের লাশ উদ্ধার করেছে পুলিশ। আজ মঙ্গলবার বেলা ১১টার দিকে পৌরসভার ২ নম্বর ওয়ার্ডের ডাকবাংলোর সামনে নির্মাণাধীন নালা থেকে তাঁর লাশ উদ্ধার হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;নিহত আবদুল মান্নান চাটখিল পৌরসভার ৬ নম্বর ওয়ার্ডের ভূঁইয়াবাড়ির বাসিন্দা। পুলিশ ধারণা করছে, রাতে হেঁটে যাওয়ার সময় নালায় পড়ে মারা যান তিনি। পরিবারের সিদ্ধান্তের আলোকে পরবর্তী আইনগত পদক্ষেপ নেওয়া হবে বলে পুলিশ জানিয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;আবদুল মান্নানের ভাতিজা নাসির আহমেদ বলেন, গতকাল সোমবার এশার নামাজের পর তাঁর চাচা বাড়ির পাশের একটি দোকানে চা খেতে যান। এরপর রাতে আর বাড়িতে ফেরেননি। মুঠোফোনে ফোন করা হলেও তা কেউ ধরেননি। আজ সকাল সাড়ে ১০টার দিকে চাটখিল ডাকবাংলোর সামনে নির্মাণাধীন একটি নালার মধ্যে তাঁর লাশ পড়ে থাকতে দেখেন পথচারীরা। বিষয়টি থানায় জানানো হলে পুলিশ তাঁর লাশ উদ্ধার করে থানায় নিয়ে যায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;চাটখিল থানার ভারপ্রাপ্ত কর্মকর্তা (ওসি) মো. গিয়াস উদ্দিন প্রথম আলোকে বলেন, ধারণা করা হচ্ছে, বৃদ্ধ আবদুল মান্নান রাতে সড়কের পাশ দিয়ে যাওয়ার সময় নালার মধ্যে পড়ে মারা গেছেন। লাশের গায়ে কোনো আঘাতের চিহ্ন পাওয়া যায়নি। লাশটি থানায় রাখা হয়েছে। এ ঘটনায় থানায় একটি সাধারণ ডায়েরি (জিডি) করা হয়েছে। পরিবারের সিদ্ধান্তের আলোকে পরবর্তী আইনগত পদক্ষেপ নেওয়া হবে।চাটখিল থানার ভারপ্রাপ্ত কর্মকর্তা (ওসি) মো. গিয়াস উদ্দিন প্রথম আলোকে বলেন, ধারণা করা হচ্ছে, বৃদ্ধ আবদুল মান্নান রাতে সড়কের পাশ দিয়ে যাওয়ার সময় নালার মধ্যে পড়ে মারা গেছেন। লাশের গায়ে কোনো আঘাতের চিহ্ন পাওয়া যায়নি। লাশটি থানায় রাখা হয়েছে। এ ঘটনায় থানায় একটি সাধারণ ডায়েরি (জিডি) করা হয়েছে। পরিবারের সিদ্ধান্তের আলোকে পরবর্তী আইনগত পদক্ষেপ নেওয়া হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0703236f1fee7e461c5c8.webp', 'লাশ', 'https://www.samojug.com/', 0, 0, '0', '2023-03-07 11:02:51', 0, 1),
(194, 'samojugc_datatable', 5, 59, 'ইউক্রেন যুদ্ধের নেপথ্যে ‘অদৃশ্য হাত’ কাজ করছে: চীন', 'ইউক্রেন যুদ্ধের নেপথ্যে ‘অদৃশ্য হাত’ কাজ করছে: চীন', '&lt;p&gt;চীনের পররাষ্ট্রমন্ত্রী কিন গ্যাং বলেছেন, এক অদৃশ্য হাত ইউক্রেন যুদ্ধকে পরিচালনা করছে। সেই হাত সংঘাতের মাত্রা বাড়ানোর পাশাপাশি একে দীর্ঘায়িত করার চেষ্টা করছে। আজ মঙ্গলবার বেইজিংয়ে বার্ষিক পার্লামেন্ট সভা চলার ফাঁকে সাংবাদিকদের তিনি এসব কথা বলেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;কিন বলেন, নির্দিষ্ট ভূরাজনৈতিক এজেন্ডাগুলো বাস্তবায়নের জন্য &amp;lsquo;অদৃশ্য হাতটি&amp;rsquo; ইউক্রেন সংকটকে ব্যবহার করছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;ইউক্রেন যুদ্ধের অবসানে যত দ্রুত সম্ভব আলোচনা শুরুর তাগিদ দিয়েছেন কিন। তিনি বলেন, সংঘাত, নিষেধাজ্ঞা এবং চাপের মধ্য দিয়ে সমস্যার সমাধান হবে না। যত দ্রুত সম্ভব শান্তি আলোচনার প্রক্রিয়া শুরু হওয়া উচিত। নিরাপত্তা নিয়ে সব পক্ষের বৈধ উদ্বেগগুলোর প্রতি সম্মান দেখানো উচিত।&lt;/p&gt;\r\n\r\n&lt;p&gt;বেইজিং ও ইউরোপীয় ইউনিয়নের ক্রমবর্ধমান উত্তেজনা চলার মধ্যে মঙ্গলবার ইউক্রেন যুদ্ধ নিয়ে চীনের অবস্থান আবারও পরিষ্কার করেন কিন।&lt;/p&gt;\r\n\r\n&lt;p&gt;ইউক্রেন-রাশিয়া শান্তি আলোচনার ক্ষেত্রে চীনের মধ্যস্থতা নিয়ে প্রশ্ন তুলে আসছে ইউরোপীয় ইউনিয়ন।&lt;/p&gt;\r\n\r\n&lt;p&gt;আর রাশিয়ার জন্য অস্ত্রসহায়তা পাঠালে চীনকে পরিণাম ভোগ করতে হবে বলে হুঁশিয়ারি দিয়ে আসছে যুক্তরাষ্ট্র।&lt;/p&gt;\r\n\r\n&lt;p&gt;মঙ্গলবার এ প্রসঙ্গে কিন বলেন, ইউক্রেন যুদ্ধে বেইজিং কোনো পক্ষকেই অস্ত্র সরবরাহ করেনি।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/07032353c3feeb289e236.webp', 'চীনের পররাষ্ট্রমন্ত্রী কিন গ্যাং', 'https://www.samojug.com/', 0, 0, '0', '2023-03-07 11:06:59', 0, 1),
(195, 'samojugc_datatable', 5, 59, 'যুক্তরাষ্ট্র মনোভাব বদল না করলে সংঘাতের ঝুঁকিতে পড়বে: চীন', 'যুক্তরাষ্ট্র মনোভাব বদল না করলে সংঘাতের ঝুঁকিতে পড়বে: চীন', '&lt;p&gt;চীনের পররাষ্ট্রমন্ত্রী বলেছেন, যুক্তরাষ্ট্রের উচিত বেইজিংয়ের প্রতি তার &amp;lsquo;বিকৃত&amp;rsquo; মনোভাব পরিবর্তন করা অথবা সংঘাতের ঝুঁকিতে পড়া।&lt;/p&gt;\r\n\r\n&lt;p&gt;আজ মঙ্গলবার বেইজিংয়ে চীনা পার্লামেন্টের বার্ষিক অধিবেশনের ফাঁকে এক সংবাদ সম্মেলনে এ কথা বলেন দেশটির পররাষ্ট্রমন্ত্রী কিন গ্যাং।&lt;/p&gt;\r\n\r\n&lt;p&gt;গত ডিসেম্বরে চীনের পররাষ্ট্রমন্ত্রী হন কিন গ্যাং। পশ্চিমাদের বিরুদ্ধে কড়া বক্তব্য দেওয়ার জন্য তিনি সুপরিচিত। এ জন্য তাঁকে &amp;lsquo;নেকড়ে যোদ্ধা&amp;rsquo; নামে অভিহিত করা হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;চীনের পররাষ্ট্রমন্ত্রীর দায়িত্ব নেওয়ার পর আজই প্রথম আনুষ্ঠানিক সংবাদ সম্মেলনে আসেন কিন গ্যাং। তিনি বলেন, যুক্তরাষ্ট্র ন্যায্য, নিয়মভিত্তিক প্রতিযোগিতায় যুক্ত হওয়ার পরিবর্তে চীনকে দমন ও নিয়ন্ত্রণে নিয়োজিত রয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;চীন সম্পর্কে যুক্তরাষ্ট্রের বিদ্যমান ধারণা ও দৃষ্টিভঙ্গি মারাত্মকভাবে বিকৃত বলে মন্তব্য করেন কিন গ্যাং। তিনি বলেন, যুক্তরাষ্ট্র চীনকে তার প্রধান প্রতিপক্ষ, সবচেয়ে বড় ভূরাজনৈতিক হুমকি হিসেবে বিবেচনা করে। এটি অনেকটা জামার প্রথম বোতামটিই ভুল জায়গায় লাগানোর মতো।&lt;/p&gt;\r\n\r\n&lt;p&gt;ইউক্রেনের যুদ্ধের বিষয়ে বেইজিংয়ের যে অবস্থান, তাকে সঠিক বলে মত দেন চীনা পররাষ্ট্রমন্ত্রী।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/070323fea24b8dad503f8.webp', 'বেইজিংয়ে সংবাদ সম্মেলনে চীনা পররাষ্ট্রমন্ত্রী কিন গ্যাং', 'https://www.samojug.com/', 0, 0, '0', '2023-03-07 11:10:40', 0, 1),
(196, 'samojugc_datatable', 5, 60, 'নিজেরাই বড় উৎপাদনকারী, তারপরও রুশ তেল কিনছে আমিরাত, সৌদি আরব', 'নিজেরাই বড় উৎপাদনকারী, তারপরও রুশ তেল কিনছে আমিরাত, সৌদি আরব', '&lt;p&gt;বিশ্বের অন্যতম প্রধান তেল উৎপাদনকারী দেশ সংযুক্ত আরব আমিরাত এখন রাশিয়া থেকে আগের তুলনায় অনেক বেশি পরিমাণ অপরিশোধিত তেল কিনছে। জাহাজের গতিবিধিসংক্রান্ত তথ্য এবং তেলের ব্যবসার সঙ্গে সম্পর্কিত সূত্রের বরাত দিয়ে বার্তা সংস্থা রয়টার্স এই খবর দিয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;রাশিয়ার ওপর এখন পশ্চিমা বিশ্বের অবরোধ রয়েছে এবং এই অবরোধের সঙ্গে মস্কো কীভাবে মানিয়ে নিচ্ছে, আরব আমিরাতের এই জ্বালানি তেল কেনা সম্ভবত তার একটি উদাহরণ। ইউক্রেনে হামলার পর অর্থনৈতিক অবরোধের মুখে পড়ে রাশিয়া। ওই হামলাকে রাশিয়া অবশ্য &amp;lsquo;বিশেষ সামরিক অভিযান&amp;rsquo; হিসাবে বর্ণনা করে।&lt;/p&gt;\r\n\r\n&lt;p&gt;রাশিয়া এখন অপরিশোধিত এবং পরিশোধিত এই দুই ধরনের তেলই কম দামে বিক্রি করছে। তবে অবরোধের কারণে রাশিয়া এখন খুব কম দেশের কাছে তেল বিক্রি করতে পারছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;সংযুক্ত আরব আমিরাতের কাছে তেল বিক্রির ঘটনা এটা দেখাচ্ছে যে রাশিয়ার সঙ্গে উপসাগরীয় তেল উৎপাদনকারীদের সহযোগিতা বেড়েই চলেছে। বিশেষ করে সৌদি আরব এবং সংযুক্ত আরব আমিরাতের সঙ্গে রাশিয়ার সম্পর্ক গভীর হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;যুক্তরাষ্ট্র উপসাগরীয় দেশগুলোকে চাপ দিয়েছিল, যাতে তারা আরও বেশি তেল উৎপাদন করে। এটা করা হলে বাজারে রুশ তেলের বিকল্প থাকত। আমেরিকা আরও চেয়েছিল রাশিয়াকে ক্রমান্বয়ে একঘরে করে ফেলতে। তবে উপসাগরীয় আরব দেশগুলো যুক্তরাষ্ট্রের এই চাপ এখন পর্যন্ত ঠেকিয়ে রেখেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এটা এখনো পরিষ্কার নয় যে ঠিক কখন থেকে সংযুক্ত আরব আমিরাত রাশিয়া থেকে অপরিশোধিত তেল আমদানি শুরু করেছে। তবে জাহাজের গতিবিধিসংক্রান্ত তথ্য এমন ধারণা দিচ্ছে যে গত বছরের ফেব্রুয়ারিতে রাশিয়ার ইউক্রেন হামলা এবং এরপর মস্কোর ওপর পশ্চিমা অবরোধ আরোপের পর থেকে দেশটিতে রুশ তেল আমদানি বেড়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;আইশিপের ট্র্যাকিং তথ্য বলছে, ২০২২ সালের নভেম্বর থেকে এ পর্যন্ত ১৫ লাখ ব্যারেল তেল সংযুক্ত আরব আমিরাতে গিয়ে পৌঁছেছে। তবে আগের যেকোনো সময়ের চেয়ে বেশি পরিমাণে তেল যাওয়া শুরু করে ২০২২ সালের গোড়া থেকে।&lt;/p&gt;\r\n\r\n&lt;p&gt;জ্বালানি তথ্য বিশ্লেষণ করে এমন একটি কোম্পানি কেপলার জানাচ্ছে, সংযুক্ত আরব আমিরাতে প্রথমবারের মতো রাশিয়ার অপরিশোধিত তেল আসে ২০১৯ সালে। কিন্তু জাহাজে তেল আসার পরিমাণ বেড়ে যায় এপ্রিল ২০২২&amp;ndash;এর পর থেকে। মাঝে ওই বছরের জুলাই থেকে অক্টোবর পর্যন্ত তেলের সরবরাহ বন্ধ ছিল।&lt;/p&gt;\r\n\r\n&lt;p&gt;রেফিনিটিভ এইকনের তথ্য বলছে, রাশিয়ার প্রথম অপরিশোধিত তেল সংযুক্ত আরব আমিরাতে পৌঁছায় ২০২২ সালে এবং তেল আমদানির পরিমাণে বড় রকমের উল্লম্ফন লক্ষ করা যায় ২০২২ সালের এপ্রিলে।&lt;/p&gt;\r\n\r\n&lt;p&gt;তবে সংযুক্ত আরব আমিরাত কিংবা রাশিয়ার জ্বালানি মন্ত্রণালয় এসব তথ্য সম্পর্কে কোনো মন্তব্য করেনি।&lt;/p&gt;\r\n\r\n&lt;h2&gt;আরও বেশি সহযোগিতা&lt;/h2&gt;\r\n\r\n&lt;p&gt;সৌদি আরব তার বিদ্যুৎ উৎপাদনকেন্দ্রগুলোতে ব্যবহারের জন্য এখন আরও বেশি পরিমাণ রুশ জ্বালানি তেল আমদানি করছে। এর ফলে তারা আরও বেশি নিজেদের উৎপাদিত অপরিশোধিত তেল রপ্তানি করতে পারছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;তবে সংযুক্ত আরব আমিরাতে এর আগে মাত্র এক জাহাজ রুশ তেল যাওয়ার খবর ছিল। চীন, ভারত এবং বেশ কয়েকটি আফ্রিকান ও মধ্যপ্রাচ্যের দেশ রাশিয়ার অপরিশোধিত তেল এবং পণ্য আমদানি বাড়িয়েছে। তবে অনেক দেশ আবার এ ধরনের পণ্য কেনাকে নিষিদ্ধ কিংবা নিরুৎসাহিত করেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;ওপেক প্লাসেও সংযুক্ত আরব আমিরাত রাশিয়ার সঙ্গে সহযোগিতা বাড়িয়েছে। ওপেক প্লাস হলো তেল রপ্তানিকারক দেশ ও তাদের মিত্রদের সংগঠন।&lt;/p&gt;\r\n\r\n&lt;p&gt;রয়টার্স এইকনের তৈরি করা জাহাজের গতিবিধিসংক্রান্ত এমন তথ্য দেখেছে, যার মাধ্যমে জানা যায় যে ২০২২ সালের নভেম্বরে একটি জাহাজ রাশিয়ার অপরিশোধিত তেল নিয়ে সংযুক্ত আরব আমিরাতের রুওয়াইস তেল পরিশোধন কেন্দ্রে এসেছিল।&lt;/p&gt;\r\n\r\n&lt;p&gt;আরেকটি জাহাজ রাশিয়ার উরাল অপরিশোধিত তেল নিয়ে এ মাসের আরও আগের দিকে ফুজাইরায় আসে। কেপলারের তথ্যও জানাচ্ছে যে এই দুটি সরবরাহের ঘটনা ঘটেছিল।&lt;/p&gt;\r\n\r\n&lt;p&gt;রাশিয়ার অপরিশোধিত তেলের ব্যবসা সম্পর্কে খোঁজখবর রাখে এমন একটি সূত্র বলছে, &amp;lsquo;সংযুক্ত আরব আমিরাতে মাঝেমধ্যেই জাহাজে তেল পাঠানো হয়&amp;rsquo;।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/07032322e79f6ada1eec7.webp', 'জ্বালানি তেল', 'https://www.samojug.com/', 0, 0, '0', '2023-03-07 11:15:49', 0, 1),
(197, 'samojugc_datatable', 5, 60, 'আইএমএফের চাপে পাকিস্তানে বিদ্যুৎ ব্যবহারে সারচার্জ', 'আইএমএফের চাপে পাকিস্তানে বিদ্যুৎ ব্যবহারে সারচার্জ', '&lt;p&gt;আন্তর্জাতিক মুদ্রা তহবিলের (আইএমএফ) চাপে পাকিস্তানে ইউনিটপ্রতি বিদ্যুৎ ব্যবহারে ৩ দশমিক ৮ রুপি সারচার্জ আরোপ করা হয়েছে। দেশটির বিদ্যুৎগ্রাহকদের আগামী আগামী চার মাস এই হারে সারচার্জ দিতে হবে। তবে এরপর আগামী অর্থবছর জুড়ে ইউনিটপ্রতি ১ দশমিক ৪৩ রুপি করে দিতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;চলতি মার্চ মাসের ১ তারিখ থেকে এই সারচার্জ কার্যকর হবে। পাকিস্তানের ন্যাশনাল ইলেকট্রিক পাওয়ার রেগুলেটরি অথরিটি (নেপ্রা) সরকারের এই সিদ্ধান্ত কার্যকর করেছে। দেশটির বিদ্যুৎ খাতের ২ লাখ ৬০ হাজার কোটি ডলারের ঋণ পরিশোধে আইএমএফ এই সারচার্জ আরোপের শর্ত দেয়। সেই শর্ত মেনে পাকিস্তান সরকার এই সিদ্ধান্ত নিয়েছে। খবর দ্য ডনের।&lt;/p&gt;\r\n\r\n&lt;p&gt;তবে নেপ্রা সরকারের এই সিদ্ধান্তে খুশি নয়। সংস্থাটির চেয়ারম্যান ও চার সদস্য গত সপ্তাহের এক শুনানিতে বারবার এই প্রশ্ন তুলেছেন যে সরকারের অদক্ষতা, অব্যবস্থাপনার কারণে যে জের সৃষ্টি হয়েছে, তা পূরণ করতে তারা কেন সরকারের এই সিদ্ধান্তে সিলমোহর দেবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;তবে দেশটির আইন ও বিচার মন্ত্রণালয়ের আইনি মতামতের ভিত্তিতে নেপ্রা তার অবস্থান পাল্টায়। আইন মন্ত্রণালয় বলেছে, &amp;lsquo;ফেডারেল সরকার দাপ্তরিক গ্যাজেটের মাধ্যমে যেকোনো সারচার্জ আরোপ ও তা সম্পর্কে নোটিশ দিতে পারবে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;এদিকে আইএমএফ যেন পাকিস্তানের কাছে ধরা দিচ্ছে না। আইএমএফের সঙ্গে কর্মী পর্যায়ের ঐকমত্য না হওয়া প্রসঙ্গে পাকিস্তান সরকারের কর্মকর্তাদের অভিযোগ, আইএমএফ জনসমক্ষে বলছে গরিববান্ধব নীতি করতে; কিন্তু আদতে তারা যা বলছে, তাতে গরিব মানুষের জীবন আরও কঠিন হয়ে যাবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;আইএমএফ এখন চাচ্ছে, পাকিস্তানের কেন্দ্রীয় ব্যাংক যেন মূল্যস্ফীতি নিয়ন্ত্রণে দ্রুত নীতি সুদহার বৃদ্ধি করে। এ ছাড়া অন্য যেসব বিষয়ে তাদের অগ্রাধিকার পরিবর্তন হয়েছে, সেগুলো হলো মুদ্রার বিনিময় হার নির্ধারিত না রাখা, যাতে যুদ্ধবিধ্বস্ত ও নিষেধাজ্ঞাপ্রাপ্ত আফগানিস্তানে অর্থ পাচার না হয়, বন্ধু রাষ্ট্রগুলো পাকিস্তানকে সহায়তা করবে&amp;mdash;এই মর্মে লিখিত নিশ্চয়তা ও বিদ্যুতে সারচার্জের বিধান অব্যাহত রাখা।&lt;/p&gt;\r\n\r\n&lt;p&gt;দ্য ডন আরও জানিয়েছে, আইএমএফ ধনীদের ওপর করারোপের কথা বললেও এখন বিক্রয় কর বৃদ্ধির জন্য চাপাচাপি করছে। এতে মূল্যস্ফীতির হার আরও বাড়বে। কিন্তু ব্যাংকের মতো প্রতিষ্ঠানের বিদেশি মুদ্রা লেনদেনে করারোপের প্রস্তাবের বিরোধিতা করছে তারা। আবার বন্যার ক্ষয়ক্ষতি পোষাতে উচ্চ আয়ের মানুষের ওপর লেভি আরোপেরও বিরোধিতা করছে আইএমএফ।&lt;/p&gt;\r\n\r\n&lt;p&gt;এদিকে ইকোনমিক টাইমসের এক খবরে বলা হয়েছে, অর্থনৈতিক দীনতা মোকাবিলায় পাকিস্তান গত ৭৫ বছরে ২৩ বার আইএমএফের বেইল আউল প্যাকেজ সহায়তা নিয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ প্রসঙ্গে স্টেট ব্যাংক অব পাকিস্তানের সাবেক গভর্নর মুর্তজা সায়্যিদ জিও নিউজকে বলেছেন, &amp;lsquo;বাস্তবতা হলো আমরাই হলাম আইএমএফের সবচেয়ে নিয়মিত গ্রাহক।&amp;rsquo; প্রতিদ্বন্দ্বী দেশ ভারতের সঙ্গে তুলনা দিয়ে তিনি বলেন, &amp;lsquo;আমাদের সঙ্গে একই সঙ্গে স্বাধীনতা অর্জন করা ভারত মাত্র সাতবার আইএমএফের দ্বারস্থ হয়েছে। ১৯৯১ সালে মনমোহন সিংহের যুগান্তকারী সংস্কারের পর থেকে তারা একবারও আইএমএফের কাছে যায়নি।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/070323251c42239714e6d.webp', 'আন্তর্জাতিক মুদ্রা তহবিল (আইএমএফ)', 'https://www.samojug.com/', 0, 0, '0', '2023-03-07 11:19:59', 0, 1),
(198, 'samojugc_datatable', 5, 61, 'ভারত নাকি শ্রীলঙ্কা—টেস্ট চ্যাম্পিয়নশিপ ফাইনালে অস্ট্রেলিয়ার সঙ্গী কোন দল', 'ভারত নাকি শ্রীলঙ্কা—টেস্ট চ্যাম্পিয়নশিপ ফাইনালে অস্ট্রেলিয়ার সঙ্গী কোন দল', '&lt;p&gt;মাঠে দর্শক টানতে &lt;a href=&quot;https://www.prothomalo.com/sports/%E0%A6%97%E0%A7%8B%E0%A6%B2%E0%A6%BE%E0%A6%AA%E0%A6%BF-%E0%A6%AC%E0%A6%BF%E0%A6%AA%E0%A7%8D%E0%A6%B2%E0%A6%AC%E0%A7%87-%E0%A6%AC%E0%A6%BE%E0%A6%81%E0%A6%9A%E0%A6%AC%E0%A7%87-%E0%A6%9F%E0%A7%87%E0%A6%B8%E0%A7%8D%E0%A6%9F&quot; target=&quot;_blank&quot;&gt;গোলাপি বলে দিবা&amp;ndash;রাত্রির টেস্ট উদ্ভাবন&lt;/a&gt; কিংবা ম্যাচগুলোকে আরও অর্থবহ করে তুলতে বিশ্ব টেস্ট চ্যাম্পিয়নশিপের প্রচলন&amp;mdash;ক্রিকেটের বনেদি সংস্করণ টেস্টকে জনপ্রিয় করে তুলতে গত কয়েক বছরে দৃশ্যমান অনেক উদ্যোগ নিয়েছে &lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%86%E0%A6%87%E0%A6%B8%E0%A6%BF%E0%A6%B8%E0%A6%BF&quot; target=&quot;_blank&quot;&gt;আইসিসি&lt;/a&gt;।&lt;/p&gt;\r\n\r\n&lt;p&gt;মহামারি করোনা বিশাল ধাক্কা হয়ে এলেও ২০১৯ থেকে ২০২১ পর্যন্ত হওয়া &lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%93%E0%A7%9F%E0%A6%BE%E0%A6%B0%E0%A7%8D%E0%A6%B2%E0%A7%8D%E0%A6%A1-%E0%A6%9F%E0%A7%87%E0%A6%B8%E0%A7%8D%E0%A6%9F-%E0%A6%9A%E0%A7%8D%E0%A6%AF%E0%A6%BE%E0%A6%AE%E0%A7%8D%E0%A6%AA%E0%A6%BF%E0%A7%9F%E0%A6%A8%E0%A6%B6%E0%A6%BF%E0%A6%AA&quot; target=&quot;_blank&quot;&gt;টেস্ট চ্যাম্পিয়নশিপের &lt;/a&gt;প্রথম চক্র সফলভাবেই আয়োজন করেছে আইসিসি। বিশ্ব ক্রিকেটের নিয়ন্ত্রক সংস্থার এই সর্বশেষ সংযোজন কতটা প্রতিদ্বন্দ্বিতাপূর্ণ, সেটা এবারের পয়েন্ট তালিকার দিকে চোখ রাখলেই বোঝা যায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;সাউদাম্পটনে টেস্ট চ্যাম্পিয়নশিপের প্রথম চক্রের ফাইনালে ভারতকে হারিয়ে চ্যাম্পিয়ন হয় নিউজিল্যান্ড। সেই নিউজিল্যান্ড এবার আছে আট নম্বরে, &amp;lsquo;যথারীতি&amp;rsquo; তলানিতে থাকা বাংলাদেশের ঠিক এক ধাপ ওপরে।&lt;/p&gt;\r\n\r\n&lt;p&gt;আগেরবারের রানার্সআপ ভারত পয়েন্ট তালিকার দুইয়ে থাকলেও তাদের ফাইনালে ওঠা নির্ভর করছে বেশ কিছু &amp;lsquo;যদি&amp;ndash;কিন্তু&amp;rsquo;র ওপর। &lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%B0%E0%A7%8B%E0%A6%B9%E0%A6%BF%E0%A6%A4-%E0%A6%B6%E0%A6%B0%E0%A7%8D%E0%A6%AE%E0%A6%BE&quot; target=&quot;_blank&quot;&gt;রোহিত শর্মা&lt;/a&gt;র দলকে চোখরাঙানি দিচ্ছে তিনে থাকা শ্রীলঙ্কা।&lt;/p&gt;\r\n\r\n&lt;p&gt;অস্ট্রেলিয়ার বিপক্ষে প্রথম দুই টেস্টে জিতে ভারত &lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%AC%E0%A7%8B%E0%A6%B0%E0%A7%8D%E0%A6%A1%E0%A6%BE%E0%A6%B0%E0%A6%97%E0%A6%BE%E0%A6%AD%E0%A6%BE%E0%A6%B8%E0%A7%8D%E0%A6%95%E0%A6%BE%E0%A6%B0-%E0%A6%9F%E0%A7%8D%E0%A6%B0%E0%A6%AB%E0%A6%BF&quot; target=&quot;_blank&quot;&gt;বোর্ডার&amp;ndash;গাভাস্কার ট্রফি&lt;/a&gt; ধরে রাখা নিশ্চিত করেছে ঠিকই। কিন্তু ইন্দোরে তৃতীয় টেস্ট জিতে অস্ট্রেলিয়া পয়েন্ট তালিকার শীর্ষ দল হিসেবে টেস্ট চ্যাম্পিয়নশিপের ফাইনালে জায়গা করে নিয়েছে। বৃহস্পতিবার শুরু হচ্ছে নিউজিল্যান্ড&amp;ndash;শ্রীলঙ্কার টেস্ট সিরিজ। একই দিন থেকে আহমেদাবাদে অস্ট্রেলিয়ার বিপক্ষে ভারত সিরিজ নির্ধারণী টেস্ট খেলতে নামবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug62.webp&quot; style=&quot;height:444px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;আগামী কয়েক দিন এই দুই সিরিজের দিকে চোখ থাকবে কোটি ক্রিকেটপ্রেমীর। কারণ, সিরিজ দুটিই যে টেস্ট চ্যাম্পিয়নশিপের দ্বিতীয় চক্রের ফাইনালে অস্ট্রেলিয়ার প্রতিপক্ষ ঠিক করে দেবে। আগামী ৭ থেকে ১১ জুন লন্ডনের ওভালে হবে শ্রেষ্ঠত্বের লড়াই।&lt;/p&gt;\r\n\r\n&lt;h2&gt;ফাইনালে উঠতে যা করতে হবে ভারতকে&lt;/h2&gt;\r\n\r\n&lt;p&gt;টেস্ট চ্যাম্পিয়নশিপের হিসাব পয়েন্ট দিয়ে নয়; পয়েন্টের শতকরা হার দিয়ে নির্ধারিত হয়। শতকরা ৬৮.৫২ পয়েন্ট নিয়ে শীর্ষে আছে অস্ট্রেলিয়া। দুইয়ে থাকা ভারতের পয়েন্টের শতকরা হার ৬০.২৯। আহমেদাবাদে শেষ টেস্ট জিতলে রোহিত শর্মার দলের সামনে আর কোনো সমীকরণ বাধা হয়ে দাঁড়াবে না। ফাইনালে অস্ট্রেলিয়ার সঙ্গী হবে তারা। আহমেদাবাদ টেস্ট জিতলে ভারতের পয়েন্টের শতকরা হার বেড়ে হবে ৬২.৫, অস্ট্রেলিয়ার পয়েন্ট কমে দাঁড়াবে ৬৪.৯১&amp;ndash;এ। অর্থাৎ ভারতের শীর্ষ দুইয়ে থাকা নিশ্চিত হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;তবে ইন্দোরের পর আহমেদাবাদেও ভারত হেরে গেলে সিরিজ ২&amp;ndash;২ সমতায় শেষ হবে। সে ক্ষেত্রে ভারতের পয়েন্টের শতকরা হার কমে হবে ৫৬.৯৪। এমনকি ম্যাচ ড্র হলেও পয়েন্ট হবে ৫৮.৭৯। তখন রোহিত-কোহলিদের তাকিয়ে থাকতে হবে নিউজিল্যান্ড&amp;ndash;শ্রীলঙ্কা সিরিজের দিকে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug61.webp&quot; style=&quot;height:575px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;h2&gt;ফাইনালে উঠতে যা করতে হবে শ্রীলঙ্কাকে&lt;/h2&gt;\r\n\r\n&lt;p&gt;শ্রীলঙ্কার জন্য সমীকরণটা ভীষণ কঠিন। দুই ম্যাচের টেস্ট সিরিজে নিউজিল্যান্ডকে তাদেরই মাটিতে ধবলধোলাই করতে তো হবেই, সেই সঙ্গে আহমেদাবাদ টেস্টে ভারতের হার অথবা ড্র কামনা করতে হবে। শতকরা ৫৩.৩৩ পয়েন্ট নিয়ে এই মুহূর্তে তিনে আছে লঙ্কানরা। নিউজিল্যান্ডকে ধবলধোলাই করতে পারলে দিমুথ করুণারত্নের দলের পয়েন্ট হবে ৬১.১১। তার মানে, শেষ টেস্টে অস্ট্রেলিয়াকে হারাতে না পারলে ভারতকে টপকে শীর্ষ দুই উঠে আসবে শ্রীলঙ্কা। ফাইনালেও অস্ট্রেলিয়ার সঙ্গী হবে তারা। &amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/07032329d7aa68f8ece1e.webp', 'টেস্ট চ্যাম্পিয়নশিপের ফাইনালে ভারত অথবা শ্রীলঙ্কার খেলা অনেক সমীকরণের ওপর নির্ভর করছে', 'https://www.samojug.com/', 0, 0, '0', '2023-03-07 11:31:04', 0, 1),
(199, 'samojugc_datatable', 5, 61, 'খালেদের ৫ উইকেট, বিসিএল শিরোপা দক্ষিণাঞ্চলের', 'খালেদের ৫ উইকেট, বিসিএল শিরোপা দক্ষিণাঞ্চলের', '&lt;p&gt;মঞ্চটা তৈরিই ছিল দক্ষিণাঞ্চলের জন্য। দরকার ছিল শুধু মধ্যাঞ্চলের বাকি ৭টা উইকেট নেওয়া, তাহলেই ষষ্ঠবারের মতো বাংলাদেশ ক্রিকেট লিগের (&lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%AC%E0%A6%BF%E0%A6%B8%E0%A6%BF%E0%A6%8F%E0%A6%B2&quot; target=&quot;_blank&quot;&gt;বিসিএল&lt;/a&gt;) ট্রফি আসবে ঘরে, হিসাবটা এমনই ছিল দক্ষিণাঞ্চলের।&lt;/p&gt;\r\n\r\n&lt;p&gt;আজ কক্সবাজারের শেখ কামাল আন্তর্জাতিক স্টেডিয়ামে সেই হিসাব মেলাতে ভুল করেনি দক্ষিণাঞ্চল। ৭৪ রানে ৫ উইকেট নিয়ে দিনটাকে নিজের করে নিয়েছেন &lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%96%E0%A6%BE%E0%A6%B2%E0%A7%87%E0%A6%A6-%E0%A6%86%E0%A6%B9%E0%A6%AE%E0%A7%87%E0%A6%A6&quot; target=&quot;_blank&quot;&gt;খালেদ আহমেদ&lt;/a&gt;, নিশ্চিত করেছেন তাঁর দলের জয়ও। ইনিংস ও ৩৩ রানে জিতে শিরোপা-উৎসবে মেতেছে দক্ষিণাঞ্চল।&lt;/p&gt;\r\n\r\n&lt;p&gt;খালেদের তোপে পড়ে মধ্যাঞ্চল অলআউট ২৩৭ রানে। প্রথম শ্রেণির ক্রিকেটে ১০০ উইকেটের মাইলফলক ছুঁয়েছেন খালেদ। ফলোঅনে নেমে গতবারের চ্যাম্পিয়ন মধ্যাঞ্চল তৃতীয় দিন শেষ করেছিল দ্বিতীয় ইনিংসে ৩ উইকেটে ৬৪ রান তুলে। ইনিংস ব্যবধানে হার এড়াতে আরও ২০৬ রান দরকার ছিল তাদের। আজ শরিফুল্লাহ (৬৩) ও আবু হায়দার (৭৭) ফিফটি করে ইনিংস পরাজয় এড়ানোর আশা জাগিয়েছিলেন কিছুক্ষণের জন্য। কিন্তু শেষ পর্যন্ত &amp;nbsp;দুজনের চেষ্টা বৃথা যায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug65.webp&quot; style=&quot;height:480px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;এর আগে ৫ উইকেটে ৫০০ রান তুলে প্রথম ইনিংস ঘোষণা করে দক্ষিণাঞ্চল। ওপেনার সাদমান ইসলাম প্রথম শ্রেণির ক্যারিয়ারের প্রথম ডাবল সেঞ্চুরি করেন, আউট হওয়ার আগে খেলেন ২৪৬ রানের ম্যারাথন ইনিংস। বাংলাদেশি ব্যাটসম্যানদের মধ্যে প্রথম শ্রেণির ইনিংসে সবচেয়ে বেশি সময় (৬৭৪ মিনিট) ক্রিজে থাকার রেকর্ডও করেন সাদমান।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug64.webp&quot; style=&quot;height:853px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;সেঞ্চুরি করেন দক্ষিণাঞ্চলের অভিজ্ঞ ব্যাটসম্যান মার্শাল আইয়ুবও, অপরাজিত ছিলেন ২১৪ বলে ১২০ রান করে। জবাব দিতে নেমে ২৩০ রানে থেমে যায় মধ্যাঞ্চলের প্রথম ইনিংস। দক্ষিণাঞ্চলের বাঁহাতি স্পিনার নাজমুল ইসলাম নেন ৩ উইকেট।&lt;br /&gt;\r\nম্যাচসেরার পুরস্কার পেয়েছেন সাদমান। বিসিএল&amp;ndash;জুড়ে ধারাবাহিকভাবে রান করা মধ্যাঞ্চলের জাকের আলী হয়েছেন টুর্নামেন্ট&amp;ndash;সেরা খেলোয়াড়।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/070323e86dd7440f757f7.webp', '৬ষ্ঠ বার বিসিএলে চ্যাম্পিয়ন হয়েছে দক্ষিণাঞ্চল', 'https://www.samojug.com/', 0, 0, '0', '2023-03-07 11:39:06', 0, 1),
(200, 'samojugc_datatable', 5, 62, '‘অজয় আমার গায়ে সে একটা আঁচড় লাগতে দেয়নি’', '‘অজয় আমার গায়ে সে একটা আঁচড় লাগতে দেয়নি’', '&lt;p&gt;অজয় আর টাবু জুটি এর আগে একাধিক হিট ছবি উপহার দিয়েছেন। এবার তাঁরা উপহার দিতে চলেছেন অ্যাকশনধর্মী ছবি &amp;lsquo;ভোলা&amp;rsquo;। তবে এই ছবিতে শুধু অজয় দেবগণকে নয়, টাবুকেও অ্যাকশন দৃশ্যে দেখা যাবে। এই প্রথম অ্যাকশনধর্মী চরিত্রে অভিনয়ের প্রসঙ্গে কিছু কথা বলেছেন টাবু।&lt;br /&gt;\r\nগতকাল সোমবার মুম্বাইয়ের আইম্যাক্স থিয়েটারে মুক্তি পেল অজয়ের থ্রিডি ছবি &amp;lsquo;ভোলা&amp;rsquo;-র ট্রেলার। এই ছবিতে অজয় অভিনয়ের পাশাপাশি পরিচালনা আর প্রযোজনার দায়িত্ব সামলেছেন। তবে এর আগে একাধিক ছবিতে তাঁকে একসঙ্গে তিনটে দায়িত্ব পালন করতে দেখা গেছে। ট্রেলার মুক্তির পর আয়োজিত সংবাদ সম্মেলনে এ প্রসঙ্গে অজয় কাঁধ ঝাঁকিয়ে বলেন, &amp;lsquo;আমার কাছে মোটেও চাপের নয়। কারণ, এই তিন দায়িত্ব আমি সমানভাবে উপভোগ করি। কাজের মাধ্যমে নিজেকে ক্রমাগত আপডেট করছি। নিজের এবং অন্যের ভুল থেকে শিখছি।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug69.webp&quot; style=&quot;height:960px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;অজয় ও টাবু&lt;/p&gt;\r\n\r\n&lt;p&gt;তামিল ছবি &amp;lsquo;কাইথি&amp;rsquo;-র হিন্দি রিমেক অজয়ের এই ছবি। রিমেকের প্রসঙ্গে তিনি বলেন, &amp;lsquo;এ ছবি তামিল ছবির থেকে কিছুটা আলাদা। ছবিটা দেখলে বোঝা যাবে।&amp;rsquo; অজয় আরও বলেন, &amp;lsquo;অ্যাকশনধর্মী ছবি হলেও এতে আবেগ ভরপুর আছে। আবেগ ছাড়া অ্যাকশন ছবি করা যায় না। আর এই আবেগ সবাইকে ছুঁয়ে যাবে।&amp;rsquo;&lt;br /&gt;\r\n&amp;lsquo;ভোলা&amp;rsquo; ছবিতে টাবু পুলিশ অফিসারের চরিত্রে অভিনয় করতে চলেছেন। অজয়ের ছবি তা-ই না বলার প্রশ্ন ছিল না বলে জানান টাবু।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug68.webp&quot; style=&quot;height:960px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;টাবু&lt;/p&gt;\r\n\r\n&lt;p&gt;এক গাল হেসে তিনি বলেন, &amp;lsquo;আমাকে সে (অজয়) ফোন করতে আমি হ্যাঁ বলে দিই। আসলে আমি তাকে চোখ বন্ধ করে বিশ্বাস করি। খুব সহজে সে বলে যে ছবিতে আমায় অ্যাকশন করতে হবে। আসলে তার কাছে অ্যাকশন কোনো ব্যাপার নয়। ঘুমানোর সময়ও ও অ্যাকশন করতে পারে। সেটে আমি নিজেকে তার কাছে সমর্পণ করেছিলাম। সে ছিল বলে সেটে আমি নিশ্চিন্তে ছিলাম।&amp;rsquo; সেটে পুরোপুরি সুরক্ষাব্যবস্থা ছিল বলে জানান টাবু।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug67.webp&quot; style=&quot;height:960px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;অজয়&lt;/p&gt;\r\n\r\n&lt;p&gt;তিনি বলেন, &amp;lsquo;অ্যাকশন দৃশ্যের জন্য আমাকে কোনো রকম প্রস্তুতি নিতে হয়নি। সেটে অজয় স্যার আর তাঁর এক্সপার্ট টিম ছিল। আমি শুধু তাঁদের নির্দেশ অনুসরণ করেছিলাম।&amp;rsquo; আর সুরক্ষার প্রসঙ্গে এই বলিউড নায়িকা বলেন, &amp;lsquo;অজয় আমার গায়ে একটা আঁচড় লাগতে দেয়নি। আর এ ব্যাপারে আমি নিশ্চিন্তে ছিলাম।&amp;rsquo;&lt;br /&gt;\r\n&amp;lsquo;ভোলা&amp;rsquo; ছবিটি থ্রিডি-তে ৩০ মার্চ মুক্তি পাবে। এই ছবিতে অজয় আর টাবু ছাড়া আছেন দীপক দাব্রিয়েল, সঞ্জয় মিশ্রা, গজরাজ রাও, আর বিনীত কুমারসহ আরও অনেকে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'empty file', 'সোমবার মুম্বাইয়ের আইম্যাক্স থিয়েটারে ট্রেলার মুক্তির পর আয়োজিত সংবাদ সম্মেলনে তারকারা অংশ নেন', 'https://www.samojug.com/', 0, 0, '5', '2023-03-07 11:45:56', 0, 1),
(201, 'samojugc_datatable', 5, 63, 'নিহারির রেসিপি জানেন কি?', 'নিহারির রেসিপি জানেন কি?', '&lt;h2&gt;নিহারি&lt;/h2&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;উপকরণ:&lt;/strong&gt; গরু অথবা খাসির পায়ের নিচের অংশ ২ কেজি, পেঁয়াজকুচি ১ কাপ, আস্ত রসুনের কোয়া আধা কাপ, আদাবাটা ১ টেবিল চামচ, কাঁচা মরিচের কুচি ৫-৬টি, তেজপাতা ২-৩টি, ছোট এলাচি ৪-৫টি, বড় এলাচি ২টি, স্টার মসলা ২টি, লবঙ্গ ৪-৫টি, দারুচিনি ২-৩ টুকরা, শুকনা মরিচের গুঁড়া ১ টেবিল চামচ, হলুদগুঁড়া আধা চা-চামচ, ধনেগুঁড়া ১ টেবিল চামচ, গোলমরিচগুঁড়া ২০টি, পাউরুটি ২ টুকরা, পোস্তবাটা ১ টেবিল চামচ, বাদামবাটা ২ টেবিল চামচ, লবণ স্বাদমতো, তেল আধা কাপ।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;বাগারের উপকরণ:&lt;/strong&gt; তেল সিকি কাপ, পেঁয়াজকুচি আধা কাপ, রসুনকুচি ১ টেবিল চামচ, শুকনা মরিচ ৪-৫টি, আদাকুচি ১ চা-চামচ, গরমমসলা আধা চা-চামচ, ভাজা জিরার গুঁড়া আধা চা-চামচ।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug71.webp&quot; style=&quot;height:426px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;প্রণালি:&lt;/strong&gt; গরুর/খাসির পায়ের টুকরা প্রেশার কুকারে দিয়ে দিন। চুলার ওপর প্রেশার কুকার বসিয়ে তাতে পোস্তবাটা ও বাদামবাটা বাদে বাকি সব মসলা একে একে দিয়ে দিন। ৬ কাপ পানি দিন। চামচ দিয়ে ভালো করে নেড়েচেড়ে দিন। জ্বাল বাড়িয়ে খাসির পা হলে আধা ঘণ্টা আর গরুর হলে ১ ঘণ্টা চুলায় রাখুন। পাউরুটির চারপাশের শক্ত অংশ ফেলে পানিতে ভিজিয়ে নিংড়ে চিপে পানি ফেলে নিন। ১ ঘণ্টা পর প্রেশার কুকারের ঢাকনা খুলে আরেকটি ছড়ানো পাত্রে ঢালুন মসলাসহ পায়াগুলো। পাত্রটি চুলায় দিয়ে পোস্তবাটা ও বাদামবাটা দিন। পেঁয়াজ গলে যাওয়ার আগপর্যন্ত ভালো করে কষান। চুলার জ্বাল চড়া আঁচে থাকবে। কিছুক্ষণ পর ২ কাপ পানি দিন। পানিতে ভেজানো নরম পাউরুটি আধা কাপ পানি দিয়ে পেস্ট করুন। অল্প অল্প করে দিয়ে দিন হাঁড়িতে। আরও ৫ মিনিট রান্না করে চুলার আঁচ কমিয়ে দিন। আরেকটি প্যানে বাগারের জন্য তেল দিন। পেঁয়াজকুচি ভেজে নিন। পেঁয়াজের রং স্বচ্ছ হয়ে এলে রসুনকুচি দিন। ভালো করে নাড়ুন। আদাকুচি ও শুকনা মরিচ দিন। পেঁয়াজ বেরেস্তা হয়ে গেলে ২ চা-চামচ নিহারির ঝোল দিয়ে ঢেকে দিন প্যান। ২ মিনিট পর ঢাকনা খুলে বাকি নিহারিটুকু ঢেলে দিন। বলক উঠলে গরমমসলার গুঁড়া ও জিরাগুঁড়া দিয়ে ঢেকে দিন প্যান। চুলার আঁচ কমাবেন না। ৫ মিনিট পর চুলা বন্ধ করে অপেক্ষা করুন মিনিট পাঁচেক। নেড়ে পরিবেশনের পাত্রে ঢালুন। পেঁয়াজ বেরেস্তা ও ধনেপাতাকুচি ছিটিয়ে পরিবেশন করুন নিহারি।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0703233e243c0c574a9e2.webp', 'ছবি: সংগৃহীত', 'https://www.samojug.com/', 0, 0, '0', '2023-03-07 11:48:54', 0, 1),
(202, 'samojugc_datatable', 5, 64, '৭ মার্চে চালু হলো জাতীয় মোবাইল ব্রাউজার ‘তর্জনী’', '৭ মার্চে চালু হলো জাতীয় মোবাইল ব্রাউজার ‘তর্জনী’', '&lt;p&gt;বাংলায় সহজে ইন্টারনেট ব্যবহারের সুযোগ দিতে জাতীয় মোবাইল ব্রাউজার (ওয়েবসাইট দেখার অ্যাপ) &amp;lsquo;তর্জনী&amp;rsquo; চালু করেছে তথ্য ও যোগাযোগপ্রযুক্তি (আইসিটি) বিভাগ। আজ মঙ্গলবার রাজধানীর আগারগাঁওয়ে কম্পিউটার কাউন্সিল (বিসিসি) মিলনায়তনে ব্রাউজারটির উদ্বোধন করেন তথ্য ও যোগাযোগপ্রযুক্তি প্রতিমন্ত্রী জুনাইদ আহমেদ। এ সময় তিনি বলেন, &amp;lsquo;আজ ঐতিহাসিক ৭ মার্চ। বাঙালি জাতির স্বাধীনতাসংগ্রাম ও মুক্তিযুদ্ধের ইতিহাসে এক অনন্য দিন। ১৯৭১ সালের এই দিনে ঐতিহাসিক রেসকোর্স ময়দানে (বর্তমানে সোহরাওয়ার্দী উদ্যান) জাতির পিতা বঙ্গবন্ধু শেখ মুজিবুর রহমান বাংলাদেশের স্বাধীনতাসংগ্রামের ডাক দেন। আর তাই ৭ মার্চ উপলক্ষে আইসিটি বিভাগের উদ্যোগে চালু করা হলো জাতীয় মোবাইল ব্রাউজার তর্জনী। আমরা এখন ডিজিটাল বাংলাদেশ থেকে স্মার্ট বাংলাদেশে প্রবেশ করছি। এই স্মার্ট বাংলাদেশের সুফল পেতে হলে আমাদের শুধু বিদেশি সেবার ওপর নির্ভর করে থাকলে চলবে না। আমাদের স্বাবলম্বী হতে হবে। আমরা এমন একটি স্মার্ট বাংলাদেশ ইকোসিস্টেম তৈরি করতে চাই, যেটি হবে স্বাবলম্বী। সেই স্বাবলম্বী স্মার্ট বাংলাদেশের জন্যই চালু করা হয়েছে ব্রাউজারটি। ভবিষ্যতে নিজস্ব অপারেটিং সিস্টেমও চালু করা হবে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;অনুষ্ঠানে জানানো হয়, আইসিটি বিভাগের আওতাধীন বাংলাদেশ কম্পিউটার কাউন্সিলের (বিসিসি) &amp;lsquo;বাংলাদেশ সরকারের জন্য নিরাপদ ই-মেইল ও ডিজিটাল লিটারেসি সেন্টার স্থাপন&amp;rsquo; প্রকল্পের আওতায় তর্জনী ব্রাউজারটি তৈরি করা হয়েছে। ব্রাউজারটির বৈশিষ্ট্য হলো এতে বাংলা ভাষা রয়েছে এবং এর বাংলা অপটিমাইজেশন অন্যান্য ব্রাউজারের তুলনায় শক্তিশালী। ব্রাউজারটিতে ইংরেজি ভাষাও নির্বাচন করা যাবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;সহজে ইন্টারনেট ব্যবহারের জন্য ব্রাউজারটিতে রয়েছে তর্জনী সার্চ বার, ডার্ক মোড, ট্যাব, বিজ্ঞাপন বন্ধ, বুকমার্ক, ব্যক্তিগত তথ্যের গোপনীয়তা, ইনকগনিটোসহ বিভিন্ন সুবিধা। অ্যাপলের অ্যাপ স্টোর এবং গুগল প্লে স্টোর থেকে বিনা মূল্যে নামিয়ে ব্যবহার করা যাবে ব্রাউজারটি। ভবিষ্যতে ব্রাউজারটির ডেস্কটপ সংস্করণও চালু করা হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;উদ্বোধনী অনুষ্ঠানে আরও উপস্থিত ছিলেন &amp;lsquo;বাংলাদেশ সরকারের জন্য নিরাপদ ই-মেইল ও ডিজিটাল লিটারেসি সেন্টার স্থাপন&amp;rsquo; প্রকল্পের পরিচালক সাইফুল আলম খান, ঢাকা বিশ্ববিদ্যালয়ের তথ্যপ্রযুক্তি ইনস্টিটিউটের অধ্যাপক বি এম মইনুল হোসেন, লাইভ টেকনোলজিসের ব্যবস্থাপনা পরিচালক মো. শরীফ উদ্দিন, লাইভ টেকনোলজিসের পরিচালক ইয়াসির আরাফাত প্রমুখ।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0703234e88071f8215bf2.webp', 'তর্জনী ব্রাউজার উদ্বোধন করেন তথ্য ও যোগাযোগপ্রযুক্তি প্রতিমন্ত্রী জুনাইদ আহমেদ (ডান থেকে তৃতীয়)', 'https://www.samojug.com/', 0, 0, '1', '2023-03-07 11:51:17', 0, 1),
(203, 'samojugc_datatable', 5, 64, '৮ স্টার্টআপ পেল ৮ কোটি টাকার বেশি বিনিয়োগ', '৮ স্টার্টআপ পেল ৮ কোটি টাকার বেশি বিনিয়োগ', '&lt;p&gt;মোবাইল অপারেটর রবির ডিজিটাল উদ্যোক্তা প্ল্যাটফর্ম আর-ভেঞ্চারসের তৃতীয় সংস্করণে ধারণা জমা দিয়ে দেশি আটটি স্টার্টআপ আট কোটি টাকারও বেশি বিনিয়োগ পেয়েছে। এক সংবাদ বিজ্ঞপ্তিতে রবি জানিয়েছে, প্রতিযোগিতায় বিজয়ী চারটি স্টার্টআপ আর-ভেঞ্চার প্রাইভেট ইক্যুইটি ফান্ডের পৃষ্ঠপোষক রেডডট ডিজিটালের কাছ থেকে দুই কোটি টাকার বেশি বিনিয়োগ পেয়েছে। বিজয়ী অন্য স্টার্টআপগুলোতে এসবিকে টেক ভেঞ্চারস ও কানিজ আলমাস খান সাড়ে তিন কোটি টাকা, স্টার্টআপ বাংলাদেশ লিমিটেড ও আইসিটি বিভাগের ভেঞ্চার ক্যাপিটাল ফান্ড মোট আড়াই কোটি টাকা বিনিয়োগের প্রতিশ্রুতি দিয়েছে। গত রোববার রাজধানীর একটি হোটেলে অনুষ্ঠিত এ প্রতিযোগিতায় ১১টি স্টার্টআপ অংশ নেয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;অনুষ্ঠানে উদ্যোক্তাদের হাতে বিনিয়োগের চেক তুলে দেন তথ্য ও যোগাযোগপ্রযুক্তি প্রতিমন্ত্রী জুনাইদ আহমেদ। তিনি বলেন, &amp;lsquo;যেসব স্টার্টআপ আজ বিনিয়োগ পেয়েছেন এবং যাঁরা পাননি সবাইকে অভিনন্দন। স্মার্ট বাংলাদেশ গড়ে তুলতে উদ্যোক্তাদের ভূমিকা রাখতে হবে। আপনাদের উদ্ভাবনী ধারণা কাজে লাগিয়ে ভবিষ্যতে নেতৃত্ব দেবে বাংলাদেশ।&amp;rsquo; অনুষ্ঠানে আরও উপস্থিত ছিলেন রবির প্রধান বাণিজ্যিক কর্মকর্তা শিহাব আহমেদ, রেডডট ডিজিটালের প্রধান নির্বাহী কর্মকর্তা হাসিব মুস্তাবসির প্রমুখ।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিনিয়োগ পাওয়া স্টার্টআপগুলোর মধ্যে ডিজি দোকান লিমিটেড ১ কোটি ৫০ লাখ টাকা, হিসাবপ্লাস ১ কোটি ২৫ লাখ টাকা, জমা ২ কোটি টাকা, উকিল ১ কোটি টাকা বিনিয়োগ পেয়েছে। এ ছাড়া দৃষ্টি ২৫ লাখ টাকা, এএনটিটি রোবোটিক্স ৫০ লাখ টাকা, ইয়োর ক্যাম্পাস ৫০ লাখ টাকা ও ফ্যাব্রিক লাগবে ১ কোটি টাকা বিনিয়োগ পেয়েছে। একই সঙ্গে মাইল, রিসাইকেল জার ইকোসিস্টেম, রিল্যাক্সি লিমিটেডসহ অন্য দলগুলো ১০ লাখ টাকা করে বিনিয়োগ পেয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/070323212aa12e5dca37f.webp', 'আর-ভেঞ্চারসের তৃতীয় সংস্করণে বিজয়ী স্টার্টআপগুলোর উদ্যোক্তাদের সঙ্গে অতিথিরা', 'https://www.samojug.com/', 0, 0, '0', '2023-03-07 11:53:06', 0, 1),
(204, 'samojugc_datatable', 5, 65, 'এসএসসির ফরম পূরণের সময় আবার বাড়ল', 'এসএসসির ফরম পূরণের সময় আবার বাড়ল', '&lt;p&gt;এসএসসি পরীক্ষার ফরম পূরণের সময় আবার বাড়ানো হয়েছে। ১০০ টাকা জরিমানা বা বিলম্ব ফি দিয়ে আজ মঙ্গলবার (৭ মার্চ) থেকে ১৪ মার্চ পর্যন্ত অনলাইনে ফরম পূরণ করতে পারবে শিক্ষার্থীরা। ফরম পূরণের ফি জমা দেওয়া যাবে ১৫ মার্চ পর্যন্ত।&lt;/p&gt;\r\n\r\n&lt;p&gt;গতকাল সোমবার এসএসসির ফরম পূরণের সময় বাড়ানো&amp;ndash;সংক্রান্ত এক বিজ্ঞপ্তিতে এসব কথা বলা হয়েছে। বিষয়টি জানিয়ে প্রতিষ্ঠানপ্রধানদের চিঠি পাঠিয়েছে ঢাকা মাধ্যমিক ও উচ্চমাধ্যমিক শিক্ষা বোর্ড।&lt;/p&gt;\r\n\r\n&lt;p&gt;এর আগে গত ১৬ জানুয়ারি ১০০ টাকা বিলম্ব ফি দিয়ে এসএসসির ফরম পূরণের বর্ধিত সময় শেষ হয়েছিল। শিক্ষা বোর্ডের চিঠিতে বলা হয়েছে, &amp;lsquo;২০২৩ সালের এসএসসি পরীক্ষার বিলম্ব ফিসহ ফরম পূরণের সময় ৭ মার্চ থেকে ১৪ মার্চ পর্যন্ত বৃদ্ধি করা হলো। ফি জমা দেওয়ার শেষ তারিখ ১৫ মার্চ।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;গত ১৮ ডিসেম্বর এসএসসি পরীক্ষার ফরম পূরণ শুরু হয়। জরিমানা ছাড়া ৪ জানুয়ারি পর্যন্ত ফরম পূরণের সুযোগ পায় শিক্ষার্থীরা। আর ১০০ টাকা বিলম্ব ফি বা জরিমানা দিয়ে ৭ জানুয়ারি থেকে ৯ জানুয়ারি পর্যন্ত এসএসসির ফরম পূরণের সুযোগ দেওয়া হয়েছিল। সে সময় প্রথম দফায় ১৬ জানুয়ারি পর্যন্ত বাড়ানো হয়েছিল। এবার আবার ৭ থেকে ১৪ মার্চ এসএসসি পরীক্ষার্থীদের ফরম পূরণের সুযোগ দেওয়া হলো।&lt;/p&gt;\r\n\r\n&lt;h2&gt;ফরম পূরণের ফি কত&lt;/h2&gt;\r\n\r\n&lt;p&gt;শিক্ষা বোর্ডগুলো এসএসসি পরীক্ষার ফরম পূরণের ফি নির্ধারণ করে দিয়েছে। ব্যবসায় শিক্ষা ও মানবিক বিভাগের শিক্ষার্থীদের ফরম পূরণের ফি ২ হাজার ২০ টাকা। বিজ্ঞান বিভাগের শিক্ষার্থীদের জন্য নির্ধারিত ফি ২ হাজার ১৪০ টাকার মধ্যে বোর্ড ফি ১ হাজার ৬২৫ টাকা ও কেন্দ্র ফি ৫১৫ টাকা। ব্যবসায় শিক্ষা ও মানবিক বিভাগের শিক্ষার্থীদের জন্য নির্ধারিত ২ হাজার ২০ টাকা ফির মধ্যে বোর্ড ফি ১ হাজার ৫৩৫ টাকা ও কেন্দ্র ফি ৪৮৫ টাকা।&lt;/p&gt;\r\n\r\n&lt;p&gt;এসএসসি পরীক্ষার ফি বাবদ শিক্ষার্থীদের কাছ থেকে পত্রপ্রতি ১১০ টাকা, ব্যবহারিকের ফি বাবদ পত্রপ্রতি ৩০ টাকা, একাডেমিক ট্রান্সক্রিপ্টের ফি বাবদ পরীক্ষার্থীপ্রতি ৩৫ টাকা, মূল সনদ বাবদ শিক্ষার্থীপ্রতি ১০০ টাকা, বয়েজ স্কাউট ও গার্লস গাইড ফি বাবদ ১৫ টাকা এবং জাতীয় শিক্ষা সপ্তাহ ফি বাবদ পরীক্ষার্থীপ্রতি ৫ টাকা নির্ধারণ করা হয়েছে। অনিয়মিত শিক্ষার্থীদের ক্ষেত্রে পরীক্ষার্থীপ্রতি ১০০ টাকা অনিয়মিত ফি দিতে হবে। আর জিপিএ উন্নয়ন পরীক্ষার্থীদের ১০০ টাকা অনুমতি বা তালিকাভুক্তি ফি দিতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/07032369379d19bc8aa54.webp', 'ছবি: সংগৃহীত', 'https://www.samojug.com/', 0, 0, '0', '2023-03-07 11:54:57', 0, 1),
(205, 'samojugc_datatable', 5, 65, 'গুচ্ছভুক্ত বিশ্ববিদ্যালয়ে ভর্তি নিয়ে যেসব সমস্যা চিহ্নিত হলো', 'গুচ্ছভুক্ত বিশ্ববিদ্যালয়ে ভর্তি নিয়ে যেসব সমস্যা চিহ্নিত হলো', '&lt;p&gt;গুচ্ছভুক্ত ২২টি সাধারণ এবং বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয়ের (জিএসটি গুচ্ছভুক্ত) ভর্তির পরীক্ষায় কয়েকটি সমস্যা চিহ্নিত করা হয়েছে। এগুলোর মধ্যে রয়েছে ভর্তি পরীক্ষা নেওয়া হয় বেশ দেরিতে। আবার ভর্তির প্রক্রিয়াটিও শেষ করা হয়েছে দেরিতে। ফলে নির্ধারিত সময়ে ক্লাস শুরু হয়নি। এ ছাড়া দীর্ঘ সময় দিয়ে বিশ্ববিদ্যালয় ও বিভাগ পরিবর্তনের (মাইগ্রেশন) সুযোগ রাখা হয়। এর ফলে শিক্ষার্থীরা যেমন সমস্যায় পড়েন, তেমনি বিশ্ববিদ্যালয়গুলোও আসন পূরণ নিয়ে সমস্যায় পড়ে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ অবস্থায় এই ২২টি বিশ্ববিদ্যালয়সহ অন্যান্য গুচ্ছভুক্ত বিশ্ববিদ্যালয়গুলোর আসন্ন (২০২২-২০২৩) শিক্ষাবর্ষের ভর্তি পরীক্ষা দ্রুত আয়োজন করাসহ আরও কিছু পরামর্শ দিয়েছে উচ্চশিক্ষা দেখভালের দায়িত্বে থাকা সরকারি সংস্থা বিশ্ববিদ্যালয় মঞ্জুরি কমিশন (ইউজিসি)।&lt;/p&gt;\r\n\r\n&lt;p&gt;আজ সোমবার ইউজিসির উদ্যোগে আয়োজিত এক পর্যালোচনা সভায় বিগত ২০২১-২০২২ শিক্ষাবর্ষে গুচ্ছপদ্ধতিতে ভর্তি পরীক্ষা নিয়ে সমস্যাগুলো চিহ্নিত করা হয় এবং আসন্ন ভর্তি পরীক্ষার বিষয়ে কিছু পরামর্শ দেওয়া হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;জানতে চাইলে আজকের সভার সভাপতি ও ইউজিসির সদস্য অধ্যাপক মুহাম্মদ আলমগীর বলেন, কিছু সংকট ছিল, সেগুলো সমাধানের পরামর্শ দেওয়া হয়েছে। ভর্তিতে বিশ্ববিদ্যালয় ও বিভাগ পরিবর্তনের সুযোগ অবশ্যই রাখতে হবে, তবে তা অফুরন্ত সময় দিয়ে নয়। এ ছাড়া ক্লাসের সম্ভাব্য সময় আগেই বলে দিতে হবে। আর গুচ্ছভুক্ত বিশ্ববিদ্যালয়গুলোসহ সব বিশ্ববিদ্যালয়কে মোটামুটি কাছাকাছি সময়ে ভর্তি পরীক্ষা নিতে হবে। ইউজিসি পরামর্শ দিয়েছে, কিন্তু কাজগুলো বিশ্ববিদ্যালয় কর্তৃপক্ষকেই করতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;বর্তমানে সারা দেশে ৫৩টি পাবলিক বিশ্ববিদ্যালয় ও ১০৮টি বেসরকারি বিশ্ববিদ্যালয় রয়েছে। এ ছাড়া দেশে সরকারি-বেসরকারি মিলিয়ে ১১৪টি মেডিকেল কলেজ রয়েছে। জাতীয় বিশ্ববিদ্যালয়ের অধীন ৮৮০টি কলেজে স্নাতক (সম্মান) পড়ানো হয়। ইসলামি আরবি বিশ্ববিদ্যালয়ের অধীন মাদ্রাসা এবং ঢাকা বিশ্ববিদ্যালয়ের অধিভুক্ত রাজধানীর সাতটি বড় সরকারি কলেজে স্নাতক (সম্মান) পড়ানো হয়। এ ছাড়া জাতীয় বিশ্ববিদ্যালয়ের অধীন ডিগ্রি পাস কোর্স রয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;একসময় দেশের বিশ্ববিদ্যালয়গুলো আলাদাভাবে নিজেদের ব্যবস্থাপনায় ভর্তি পরীক্ষা নিত। ফলে শিক্ষার্থীদের দুর্ভোগের সঙ্গে ছিল আর্থিক ক্ষতিও। দীর্ঘ এক যুগের বেশি সময় ধরে আলোচনা, চেষ্টা ও রাষ্ট্রপতি মো. আবদুল হামিদের নির্দেশনার পর ২০১৯-২০ শিক্ষাবর্ষে প্রথমে গুচ্ছ ভিত্তিতে ভর্তি পরীক্ষা নেওয়া শুরু করে কৃষি ও কৃষি শিক্ষাপ্রধান সাতটি বিশ্ববিদ্যালয়। এ ব্যবস্থায় শিক্ষার্থীদের প্রতিটি বিশ্ববিদ্যালয়ে আলাদা পরীক্ষা দিতে হয় না। একটি পরীক্ষার মাধ্যমে শিক্ষার্থী তাঁর যোগ্যতা ও পছন্দ অনুযায়ী গুচ্ছে থাকা বিশ্ববিদ্যালয়ে ভর্তি হতে পারেন। চট্টগ্রাম প্রকৌশল ও প্রযুক্তি বিশ্ববিদ্যালয় (চুয়েট), খুলনা প্রকৌশল ও প্রযুক্তি বিশ্ববিদ্যালয় (কুয়েট) এবং রাজশাহী প্রকৌশল ও প্রযুক্তি বিশ্ববিদ্যালয়ও (রুয়েট) আলাদা একটি গুচ্ছভুক্ত হয়ে ভর্তি পরীক্ষা নিচ্ছে। এ দুই গুচ্ছের পরীক্ষা নিয়ে বড় কোনো সমস্যার কথা শোনা যায়নি।&lt;/p&gt;\r\n\r\n&lt;p&gt;তবে সবচেয়ে বড় যে গুচ্ছ, সেই ২২টি সাধারণ এবং বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয়ে ভর্তি নিয়ে সংকটগুলো রয়ে গেছে। এ ব্যবস্থায় আগের চেয়ে ভোগান্তি কমলেও এখনো শিক্ষার্থীদের কিছু সমস্যা রয়ে গেছে। মূলত ব্যবস্থাপনায় ত্রুটির কারণে বিশ্ববিদ্যালয়গুলোতেও দীর্ঘদিন সময় নিয়ে আসন পূরণ করতে হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ সমস্যাগুলোই আজকের সভায় আলোচনা হয়েছে। ইউজিসি সংবাদ বিজ্ঞপ্তিতে জানিয়েছে, আজকের সভা থেকে দ্রুত সময়ের মধ্যে ভর্তি পরীক্ষা আয়োজন ও ভর্তির কাজ শেষ করা এবং শিক্ষা কার্যক্রম শুরুর তারিখ নির্ধারণ করে বিজ্ঞপ্তি প্রকাশের আহ্বান জানানো হয়েছে। ভর্তি পরীক্ষার প্রসপেক্টাসে ভর্তি পরীক্ষাসংক্রান্ত সব শর্ত ও তথ্য উল্লেখ করা এবং ভর্তিপ্রক্রিয়া শেষ না হওয়া পর্যন্ত শর্তগুলো অপরিবর্তিত রাখার পরামর্শ দেওয়া হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;অনলাইনে অনুষ্ঠিত এ সভায় অংশ নেন ইউজিসি সদস্য অধ্যাপক মো. আবু তাহের, জিএসটি গুচ্ছভুক্ত বিশ্ববিদ্যালয়গুলোর সমন্বিত ভর্তি কমিটির যুগ্ম-আহ্বায়ক এবং শাহজালাল বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয়ের উপাচার্য ফরিদ উদ্দিন আহমেদ, জগন্নাথ বিশ্ববিদ্যালয়ের উপাচার্য মো. এমদাদুল হক, কৃষি গুচ্ছভুক্ত বিশ্ববিদ্যালয়ের সমন্বিত ভর্তি কমিটির আহ্বায়ক ও শেরেবাংলা কৃষি বিশ্ববিদ্যালয়ের উপাচার্য মো. শহীদুর রশীদ ভূঁইয়া, চুয়েট, কুয়েট ও রুয়েটের সমন্বিত ভর্তি পরীক্ষা কমিটির সভাপতি এবং খুলনা প্রকৌশল ও প্রযুক্তি বিশ্ববিদ্যালয়ের ইলেকট্রিক্যাল ও ইলেকট্রনিক ইঞ্জিনিয়ারিং অনুষদের ডিন মো. শাহজাহান এবং ইউজিসির পাবলিক বিশ্ববিদ্যালয় ব্যবস্থাপনা বিভাগের পরিচালক মোহাম্মদ জামিনুর রহমান প্রমুখ।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/070323af24a224ea2c6c8.webp', 'ছবি: সংগৃহীত', 'https://www.samojug.com/', 0, 0, '0', '2023-03-07 11:57:26', 0, 1),
(206, 'samojugc_datatable', 5, 66, 'আজ পবিত্র শবে বরাত', 'আজ পবিত্র শবে বরাত', '&lt;p&gt;ফারসি &amp;lsquo;শব&amp;rsquo; শব্দের অর্থ রাত আর &amp;lsquo;বরাত&amp;rsquo; অর্থ সৌভাগ্য। আরবিতে বলে &amp;lsquo;লাইলাতুল বরাত&amp;rsquo; বা সৌভাগ্যের রাত। হিজরি সালের শাবান মাসের ১৪ তারিখ দিবাগত রাত সৌভাগ্যের রজনী হিসেবে পালন করে মুসলিম উম্মাহ। আজ মঙ্গলবার রাতটিই পবিত্র শবে বরাত।&lt;/p&gt;\r\n\r\n&lt;p&gt;মহিমান্বিত এই রাতে ধর্মপ্রাণ মুসলমানরা পরম করুণাময় মহান আল্লাহর অনুগ্রহ লাভের আশায় নফল নামাজ, কোরআন তিলাওয়াত ও জিকিরে মগ্ন থাকেন। অতীতের পাপ ও অন্যায়ের জন্য ক্ষমা প্রার্থনা এবং ভবিষ্যৎ জীবনের কল্যাণ কামনা করে মোনাজাত করেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;পবিত্র শবে বরাতকে কেন্দ্র করে বাড়িতে বাড়িতে হরেক রকমের হালুয়া, ফিরনি, রুটিসহ উপাদেয় খাবার তৈরি করার প্রচলন রয়েছে। এসব খাবার আত্মীয়স্বজন, প্রতিবেশী ও গরিব-দুঃখীর মধ্যে বিতরণ করা হয়। সন্ধ্যার পর অনেকে কবরস্থানে যান এবং আপনজনদের আত্মার মাগফিরাত কামনা করে দোয়া করেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;পবিত্র শবে বরাত উপলক্ষে রাষ্ট্রপতি মো. আবদুল হামিদ ও প্রধানমন্ত্রী শেখ হাসিনা পৃথক বাণী দিয়েছেন। রাষ্ট্রপতি মো. আবদুল হামিদ তাঁর বাণীতে বলেছেন, &amp;lsquo;মানুষের ইহকালীন কল্যাণ ও পরকালীন মুক্তির জন্য ইসলামের সুমহান আদর্শ আমাদের পাথেয়। শবে বরাতের এই পবিত্র রজনীতে আমরা সর্বশক্তিমান আল্লাহর দরবারে অশেষ রহমত ও বরকত কামনার পাশাপাশি দেশের অব্যাহত অগ্রগতি, কল্যাণ ও মুসলিম উম্মাহর বৃহত্তর ঐক্যের প্রার্থনা জানাই।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;পবিত্র শবে বরাতের মাহাত্ম্যে উদ্বুদ্ধ হয়ে মানবকল্যাণ ও দেশ গড়ার কাজে আত্মনিয়োগ করার জন্য প্রধানমন্ত্রী শেখ হাসিনা তাঁর বাণীতে সবার প্রতি আহ্বান জানিয়েছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;পবিত্র শবে বরাত মুসলমানদের কাছে পবিত্র রমজানের আগমনী বার্তাও নিয়ে আসে। শাবান মাসের পরে আসে পবিত্র রমজান মাস। তাই শবে বরাত থেকেই কার্যত রমজানের প্রস্তুতি শুরু হয়ে যায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;পবিত্র শবে বরাত উপলক্ষে ইসলামিক ফাউন্ডেশনের উদ্যোগে বায়তুল মোকাররম জাতীয় মসজিদে আজ সন্ধ্যা থেকে গভীর রাত পর্যন্ত ওয়াজ, দোয়া মাহফিল, পবিত্র কোরআন তিলাওয়াত, হামদ-নাতসহ বিভিন্ন অনুষ্ঠানের আয়োজন করা হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0703238db33b0993a56c8.webp', 'পবিত্র শবে বরাত', 'https://www.samojug.com/', 0, 0, '4', '2023-03-07 11:59:16', 0, 1),
(207, 'samojugc_datatable', 5, 66, 'শবে বরাত পালনের তাৎপর্য', 'শবে বরাত পালনের তাৎপর্য', '&lt;p&gt;শবে বরাত মুসলমানদের জন্য একটি আচরণীয় ধর্মীয় দিবস। আরবি শাবান মাসের পঞ্চদশ রাতে এটি পালিত হয়। এই উপমহাদেশে শবে বরাত পালিত হয় প্রধানত সৌভাগ্য রজনী হিসেবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;শবে বরাত পালনের বিশেষ তাৎপর্য আছে। মুসলমানদের ধারণা, এ রাতে পরবর্তী বছরের ভাগ্য লিপিবদ্ধ হয়। সারা রাত জেগে ইবাদত-বন্দেগি এবং আল্লাহর থেকে ক্ষমা প্রার্থনা করলে গুনাহ মাফ হয় বলে আশা করা হয়।&lt;/p&gt;\r\n\r\n&lt;h2&gt;আল্লাহর অনুগ্রহের রাত&lt;/h2&gt;\r\n\r\n&lt;p&gt;ফারসি ভাষায় &amp;lsquo;শব&amp;rsquo; শব্দের অর্থ রাত। আর &amp;lsquo;বরাত&amp;rsquo; শব্দের অর্থ সৌভাগ্য। আরবিতে একে বলে লাইলাতুল বরাত, অর্থাৎ সৌভাগ্যের রাত। হাদিসের ভাষ্য অনুযায়ী, আল্লাহ এই রাতে তাঁর বান্দাদের গুনাহ মাফ করে দেন এবং জাহান্নাম থেকে মুক্তি দেন। পবিত্র এই রাতে তাই ধর্মপ্রাণ মুসলমানরা পরম করুণাময় আল্লাহর অনুগ্রহ লাভের আশায় নফল নামাজ পড়েন, কোরআন তিলাওয়াত করেন এবং জিকিরে মগ্ন থাকেন। অতীতের পাপ-অন্যায়ের জন্য ক্ষমা প্রার্থনা করার সময়ও এটি। একই সঙ্গে ভবিষ্যৎ জীবনের কল্যাণ কামনা করে মোনাজাত করেন ধর্মপ্রাণ মুসলমানরা।&lt;/p&gt;\r\n\r\n&lt;p&gt;অনেকেই এ দিন রোজা রাখেন এবং গোপনে দান-খয়রাতের কাজ করে থাকেন। অনেকে, এই রাতে তাঁদের বিগত নিকটাত্মীয়দের জন্য আল্লাহর কাছে ক্ষমা চেয়ে প্রার্থনার আয়োজন করেন। রাতে ধর্মপ্রাণ মুসলোনেরা আত্মীয়, প্রতিবেশী ও দুস্থদের মধ্যে নানা রকমের খাদ্য বিতরণ করে থাকেন। মসজিদ ও কবরস্থানে গিয়ে প্রার্থনা করেন।&lt;/p&gt;\r\n\r\n&lt;h2&gt;ভাষাভেদে ভিন্ন নাম&lt;/h2&gt;\r\n\r\n&lt;p&gt;স্থানভেদে ভাষা অনুযায়ী এই দিবস ভিন্ন ভিন্ন নামে পরিচিত। ইরান ও আফগানিস্তানে নিম শাবান, তুরস্কে বিরাত কান্দিলি, ভারতীয় উপমহাদেশে শবে বরাত বা নিফসু শাবান। ব্যাপক উৎসাহ ও উদ্দীপনার সঙ্গে এই দিনটি পালন করা হয় দক্ষিণ ও মধ্য এশিয়া জুড়ে।&lt;/p&gt;\r\n\r\n&lt;p&gt;ভারত, পাকিস্তান, বাংলাদেশ, শ্রীলঙ্কা, আজারবাইজান, তুরস্ক, উজবেকিস্তান, তাজিকিস্তান, কাজাখস্তান, তুর্কমিনিস্তান, কিরগিজস্তান শবে বরাতের উৎসব পালন করে।&lt;/p&gt;\r\n\r\n&lt;h2&gt;রমজানের আগমনী&lt;/h2&gt;\r\n\r\n&lt;p&gt;পবিত্র শবে বরাতে সন্ধ্যার পর অনেকে কবরস্থানে যান। আপনজনদের আত্মার মাগফিরাত কামনা করে দোয়া করেন তাঁরা।&lt;/p&gt;\r\n\r\n&lt;p&gt;পবিত্র শবে বরাত মুসলিমদের কাছে এককথায় রমজানের আগমনী বার্তা বয়ে আনে, কারণ আরবি ক্যালেন্ডার অনুসারে শাবান মাসের পরেই আসে রমজান মাস। তাই শবে বরাতের রাত থেকে রমজানের প্রস্তুতিও শুরু হয়ে যায় পুরোদমে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/070323bd472671cd3dfd3.webp', 'ছবি: সংগৃহীত', 'https://www.samojug.com/', 0, 0, '0', '2023-03-07 12:01:32', 0, 1),
(208, 'samojugc_datatable', 5, 56, 'একের পর এক বিস্ফোরণের ঘটনা রহস্যজনক: ফখরুল', 'একের পর এক বিস্ফোরণের ঘটনা রহস্যজনক: ফখরুল', '&lt;p&gt;ঢাকার সিদ্দিকবাজারে ভবনে বিস্ফোরণে বহু মানুষের হতাহতের ঘটনায় শোক ও দুঃখ প্রকাশ করেছেন বিএনপির মহাসচিব মির্জা ফখরুল ইসলাম আলমগীর। আজ এক বিবৃতিতে মির্জা ফখরুল বলেন, সারা দেশে একের পর এক বিস্ফোরণের ঘটনা রহস্যজনক।&lt;/p&gt;\r\n\r\n&lt;p&gt;এর আগে গত রোববার ঢাকার সায়েন্স ল্যাব এলাকায় একটি ভবনে বিস্ফোরণ এবং গত শনিবার চট্টগ্রামের সীতাকুণ্ডে একটি অক্সিজেন কোম্পানিতে বিস্ফোরণে বহু হতাহতের ঘটনা ঘটেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এসব ঘটনা উল্লেখ করে বিএনপির মহাসচিব বলেন, অগ্নিকাণ্ড ও বিস্ফোরণের এ ধরনের ঘটনা বিভিন্ন সময় ঘটেছে। কিন্তু প্রতিকারের কোনো ব্যবস্থা নেওয়া হয়নি। কোনো ঘটনার সঠিক তদন্ত হয় না বলেও তিনি অভিযোগ করেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ জন্য মির্জা ফখরুল ইসলাম আলমগীর সরকারের ব্যর্থতাকে দায়ী করেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;মির্জা ফখরুল বলেন, বিরোধী দলের সরকারবিরোধী আন্দোলন যখন একটা যৌক্তিক পরিণতির দিকে যাচ্ছে, সে সময় সরকারি মহল পরিকল্পিতভাবে একের পর এক এ ধরনের ঘটনা ঘটাচ্ছে বলে তিনি মনে করেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিএনপির মহাসচিব বর্তমান সরকারের আমলে অগ্নিকাণ্ড ও বিস্ফোরণের প্রতিটি ঘটনার নিরপেক্ষ তদন্ত দাবি করেছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/080323d70450b656b8e10.webp', 'বিএনপির মহাসচিব মির্জা ফখরুল ইসলাম আলমগীর', 'https://www.samojug.com/', 0, 0, '1', '2023-03-08 10:55:01', 0, 1),
(209, 'samojugc_datatable', 5, 56, 'দেখভালে গাফিলতির কারণে বারবার এমন ঘটনা ঘটছে: মান্না', 'দেখভালে গাফিলতির কারণে বারবার এমন ঘটনা ঘটছে: মান্না', '&lt;p&gt;নাগরিক ঐক্যের সভাপতি মাহমুদুর রহমান মান্না রাজধানীতে সিদ্দিকবাজারের মতো ভবন বিস্ফোরণের ঘটনা বারবার কেন ঘটছে, এমন প্রশ্ন রেখেছেন। তিনি বলেছেন, যাদের দেখভালের দায়িত্ব তাদের গাফিলতি রয়েছে। এসব ঘটনায় তদন্ত করে দায় কার, সেটা খুঁজে বের করতে হবে। দায়ীদের বিরুদ্ধে ব্যবস্থা না নিলে আরও সর্বনাশ হয়ে যাবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;আজ মঙ্গলবার রাতে সিদ্দিকবাজারের বিস্ফোরণে আহত ব্যক্তিদের দেখতে ঢাকা মেডিকেল কলেজ হাসপাতালে এসে সাংবাদিকদের এসব কথা বলেন মাহমুদুর রহমান।&lt;/p&gt;\r\n\r\n&lt;p&gt;মাহমুদুর রহমান বলেন, &amp;lsquo;এই ধরনের ঘটনা তো এটাই প্রথম না, এমন ঘটনা দেখেই যাচ্ছি। আগে কেন টের পাচ্ছি না। দেরি না করে যথাযথ তদন্ত করে দায় কার, সেটা চিহ্নিত করতে হবে। নাশকতা বা ষড়যন্ত্র কি না, সেটা তদন্তকারীরাই বলতে পারবে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;আজ মঙ্গলবার বিকেল পৌনে পাঁচটার দিকে গুলিস্তানে বিআরটিসির বাস কাউন্টারের কাছে সিদ্দিকবাজারে ভয়াবহ বিস্ফোরণ ঘটে। এতে পাশাপাশি দুটি বহুতল ভবন ক্ষতিগ্রস্ত হয়। একটি ভবন সাততলা, আরেকটি ভবন পাঁচতলা। এর মধ্যে সাততলা ভবনের বেজমেন্ট, প্রথম ও দ্বিতীয় তলা বিধ্বস্ত হয়েছে। আর পাঁচতলা ভবনের নিচতলাও বিধ্বস্ত হয়েছে। এই ভবনের দ্বিতীয় থেকে পঞ্চম তলা পর্যন্ত ব্র্যাক ব্যাংকের কার্যালয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিস্ফোরণে নিহত মানুষের সংখ্যা বেড়ে ১৬ হয়েছে। আহত হয়েছেন শতাধিক ব্যক্তি। নিহতের সংখ্যা আরও বাড়তে পারে বলে আশঙ্কা করা হচ্ছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/080323245e175e247cb8e.webp', 'নাগরিক ঐক্যের সভাপতি মাহমুদুর রহমান মান্না', 'https://www.samojug.com/', 0, 0, '0', '2023-03-08 10:58:22', 0, 1);
INSERT INTO `samojugc_news_datatable` (`id`, `datatable`, `admin_id`, `category_id`, `title`, `keywords`, `description`, `thumbnail`, `teaser`, `link`, `liked`, `unliked`, `watched`, `date`, `topnews`, `status`) VALUES
(210, 'samojugc_datatable', 5, 58, 'নিজ সন্তানকে অপহরণ করে মুক্তিপণ দাবি, বাবাসহ গ্রেপ্তার ২', 'নিজ সন্তানকে অপহরণ করে মুক্তিপণ দাবি, বাবাসহ গ্রেপ্তার ২', '&lt;p&gt;জুয়া খেলে প্রায় দুই লাখ টাকা ঋণের দায়ে পড়েছেন নেশাগ্রস্ত যুবক মো. কামরুজ্জামান (২৮)। প্রবাসী বাবার কাছ থেকে টাকা খসাতে নিজ সন্তানকে অপহরণ করে মুক্তিপণ দাবি করেন তিনি। পরে পুলিশ অভিযান চালিয়ে কামরুজ্জামান ও তাঁর সহযোগী মো. আনোয়ার হোসেন ওরফে সম্রাটকে গ্রেপ্তার করেছে পুলিশ। আজ বুধবার দুপুরে সংবাদ সম্মেলনে এসব তথ্য জানায় শ্রীপুর&lt;/p&gt;\r\n\r\n&lt;p&gt;গ্রেপ্তার মো. কামরুজ্জামান উপজেলার মাওনা উত্তরপাড়া গ্রামের প্রবাসী আবদুর রাজ্জাকের ছেলে। আর গ্রেপ্তার মো. আনোয়ার হোসেনের বাড়ি নেত্রকোনার দুর্গাপুর উপজেলায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;শিশুটি অপহরণ, উদ্ধার অভিযান ও গ্রেপ্তার দুই আসামির স্বীকারোক্তি বিষয়ে আজ বুধবার সংবাদ সম্মেলন করে শ্রীপুর থানা-পুলিশ। থানা চত্বরে অনুষ্ঠিত সংবাদ সম্মেলনে শ্রীপুর থানার ভারপ্রাপ্ত কর্মকর্তা মো. মনিরুজ্জামান ও পরিদর্শক (অপারেশন) মো. আনিসুর আশেকিন উপস্থিত ছিলেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;সংবাদ সম্মেলনে পুলিশ জানায়, মো. কামরুজ্জামান নেশায় আসক্ত। তিনি প্রায়ই জুয়া খেলেন। জুয়া খেলতে গিয়ে সম্প্রতি তিনি ১ লাখ ৯৬ হাজার টাকা ঋণের দায়ে পড়েন। টাকার দরকার হওয়ায় তিনি নিজ সন্তানকে অপহরণ করে মুক্তিপণ দাবি করেন। তাঁর ধারণা ছিল, নাতি অপহরণের শিকার হয়েছে জেনে তাঁর প্রবাসী বাবা আবদুর রাজ্জাক টাকা পাঠাবেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;পুলিশ জানায়, গাজীপুরের শ্রীপুরের এমসি বাজার এলাকার মাওনা সিএনজি ফিলিং স্টেশনের পাশ থেকে ৬ মার্চ বেলা ২টার দিকে ৭ বছরের শিশু আফনান আল জামানকে অপহরণ করেন কামরুজ্জামান ও সহযোগী আনোয়ার হোসেন।আফনানকে জুসের সঙ্গে ঘুমের ওষুধ খাইয়ে ময়মনসিংহের ত্রিশাল উপজেলার কালিরবাজার মুহুরিপাড়া গ্রামে নেওয়া হয়। সেখানে কামরুজ্জামান তাঁর বন্ধু রিপনের বাড়িতে আফনানকে রাখেন। এরপর পরিচয় লুকিয়ে বিভিন্ন নম্বর থেকে মুঠোফোনে কল করে শিশুটির মা সামিরা জাহানের কাছ মুক্তিপণ দাবি করা হয়। এ ঘটনায় সামিরা জাহান গতকাল মঙ্গলবার সকালে শ্রীপুর থানায় মামলা করেন। শ্রীপুর থানার উপপরিদর্শক মো. সাদিকুর রহমান মামলাটির তদন্ত কর্মকর্তা নিযুক্ত হন। পরে পুলিশ উদ্ধার অভিযানে নামে। তদন্তকাজে সন্দেহভাজন হিসেবে কামরুজ্জামান ও আনোয়ার হোসেনকে শ্রীপুরের এমসি বাজার থেকে গ্রেপ্তার করা হয়। জিজ্ঞাসাবাদে তাঁদের দেওয়া তথ্যের ভিত্তিতে গতকাল শিশুটিকে ত্রিশাল উপজেলার কালিরবাজার মুহুরিপাড়া গ্রামে রিপনের বাড়ি থেকে উদ্ধার করা হয়। আজ দুপুরে গ্রেপ্তার দুই আসামিকে গাজীপুর আদালতে পাঠানো হয়েছে। শিশুটিকে তার মায়ের কাছে রাখা হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;শ্রীপুর থানার পুলিশ পরিদর্শক (অপারেশন) আনিসুর আশেকিন প্রথম আলোকে বলেন, টাকার জন্য নেশাগ্রস্ত বাবা তাঁর সন্তানকে অপহরণ করেছিলেন। এ ঘটনায় তথ্যপ্রযুক্তির সহায়তায় উদ্ধার অভিযান পরিচালনা করা হয়। শেষ পর্যন্ত ঘটনার সঙ্গে জড়িত দুজনকে গ্রেপ্তার করা হয়েছে। উদ্ধার করা হয়েছে অপহৃত শিশুটিকে। এ ঘটনায় জড়িত রিপনকেও আইনের আওতায় আনা হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/08032306b4c88b9d7be22.webp', 'অপহরণ', 'https://www.samojug.com/', 0, 0, '4', '2023-03-08 11:02:08', 0, 1),
(211, 'samojugc_datatable', 5, 58, 'ফেব্রুয়ারিতে সড়কে নিহত ৪৮৭ জন: রোড সেফটি ফাউন্ডেশন', 'ফেব্রুয়ারিতে সড়কে নিহত ৪৮৭ জন: রোড সেফটি ফাউন্ডেশন', '&lt;p&gt;চলতি বছরের ফেব্রুয়ারিতে ৪৩৯টি সড়ক দুর্ঘটনায় ৪৮৭ জন নিহত ও ৭১২ জন আহত হয়েছেন। নিহত ব্যক্তিদের মধ্যে ৪০ শতাংশের বেশি মোটরসাইকেল দুর্ঘটনার শিকার। এরপরই আছে পথচারী। আজ বুধবার রোড সেফটি ফাউন্ডেশনের সংবাদ বিজ্ঞপ্তিতে এসব তথ্য জানানো হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;এদিকে গতকাল মঙ্গলবার সরকারি প্রতিষ্ঠান বাংলাদেশ সড়ক পরিবহন কর্তৃপক্ষের (বিআরটিএ) দেওয়া হিসাবে বলা হয়, ফেব্রুয়ারিতে সারা দেশে ৩০৮টি সড়ক দুর্ঘটনা ঘটেছে। এতে প্রাণ হারিয়েছেন ৩০৩ জন।&lt;/p&gt;\r\n\r\n&lt;p&gt;আজ সেফটি ফাউন্ডেশন বলেছে, ৯টি জাতীয় দৈনিক, ৭টি অনলাইন নিউজ পোর্টাল ও ইলেকট্রনিক গণমাধ্যমের তথ্যের ভিত্তিতে তারা সড়ক দুর্ঘটনার প্রতিবেদন তৈরি করেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;সংগঠনটির হিসাবে, গত ফেব্রুয়ারিতে নিহত ব্যক্তিদের মধ্যে নারী ৫৪ ও শিশু ৬৮ জন। দুর্ঘটনায় ১০৮ পথচারী নিহত হয়েছেন। দুর্ঘটনা সবচেয়ে বেশি ঘটেছে আঞ্চলিক সড়কে এবং এরপর আছে জাতীয় মহাসড়ক। দুর্ঘটনার ধরন হিসেবে বলা হয়েছে, নিয়ন্ত্রণ হারানোর ঘটনা প্রায় ৪৬ শতাংশ। এরপর মুখোমুখি সংঘর্ষের ঘটনা ১৫ শতাংশের বেশি। এ ছাড়া ভোরে ও সন্ধ্যায় দুর্ঘটনার হার সবচেয়ে কম। শিক্ষার্থী নিহত হয়েছে সবচেয়ে বেশি।&lt;/p&gt;\r\n\r\n&lt;p&gt;ঢাকা বিভাগে সবচেয়ে বেশি দুর্ঘটনা ও প্রাণহানি ঘটেছে বলে জানিয়েছে রোড সেফটি ফাউন্ডেশন। সবচেয়ে কম দুর্ঘটনা ঘটেছে ময়মনসিংহ বিভাগে। একক জেলা হিসেবেও ঢাকা শীর্ষে। সবচেয়ে কম মেহেরপুর জেলায়। গত মাসে সেখানে কোনো নিহতের ঘটনা ঘটেনি। রাজধানী ঢাকায় ২৩টি দুর্ঘটনায় ১৮ জন নিহত ও ১১ জন আহত হয়েছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;দুর্ঘটনার উল্লেখযোগ্য কারণ হিসেবে সংগঠনটি বলেছে, ত্রুটিপূর্ণ যানবাহন, বেপরোয়া গতি ও মানসিকতা, অদক্ষতা ও শারীরিক-মানসিক অসুস্থতা, যথাযথ তদারকি না থাকা, আইন না মানা।&lt;/p&gt;\r\n\r\n&lt;p&gt;সড়ক দুর্ঘটনা ছাড়াও ফেব্রুয়ারিতে ৯টি নৌ দুর্ঘটনায় ১৬ জন নিহত ও ৭ জন আহত হয়েছেন। এ ছাড়া ১৭টি রেলপথ দুর্ঘটনায় ১৪ জন নিহত ও ৫ জন আহত হয়েছেন এবং ৩০ হাজার লিটার জ্বালানি তেল নষ্ট হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/080323a339978f4793b85.webp', 'সড়ক দুর্ঘটনা', 'https://www.samojug.com/', 0, 0, '0', '2023-03-08 11:05:08', 0, 1),
(212, 'samojugc_datatable', 5, 58, 'সিদ্দিকবাজারের ধ্বংসস্তুপ থেকে আরও দুজনের লাশ উদ্ধার', 'সিদ্দিকবাজারের ধ্বংসস্তুপ থেকে আরও দুজনের লাশ উদ্ধার ', '&lt;p&gt;রাজধানীর সিদ্দিকবাজারের একটি ভবনে বিস্ফোরণের ঘটনায় আরও দুজনের লাশ উদ্ধার হয়েছে। আজ বিকেল পৌনে পাঁচটার দিকে দুজনের লাশ উদ্ধার করেন ফায়ার সার্ভিসের কর্মীরা। এ নিয়ে এ বিস্ফোরণের ঘটনায় ২০ জন নিহত হলেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;গতকাল মঙ্গলবার বিকেল পৌনে পাঁচটার দিকে গুলিস্তানে বিআরটিসি বাস কাউন্টারের কাছে সিদ্দিকবাজারে কুইন স্যানিটারি মার্কেট হিসেবে পরিচিত সাততলা ভবনে ভয়াবহ বিস্ফোরণ ঘটে। এতে ভবনের দুই পাশে আরও দুটি বহুতল ভবন ক্ষতিগ্রস্ত হয়। ভয়াবহ এই দুর্ঘটনায় গতকালই ১৮ জন নিহত হয়। ঢাকা জেলা প্রশাসনের পক্ষ থেকে তিনজনের নিখোঁজ থাকার কথা জানানো হয়। আজ সকাল থেকে আবার নতুন করে উদ্ধার অভিযান শুরু ফায়ার সার্ভিস। সেই উদ্ধার অভিযানের সময় বেলা পৌনে পাঁচটার দিকে দুজনের লাশ উদ্ধার হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;ফায়ার সার্ভিসের ঢাকা বিভাগের সহকারী পরিচালক আকতারুজ্জামান বলেন, দুজনের লাশ ধ্বংসস্তূপের ভেতর থেকে উদ্ধার করা হয়েছে। লাশ দুটি উদ্ধার করে ঢাকা মেডিকেল কলেজ হাসপাতালে পাঠিয়ে দেওয়া হয়েছে। তবে দুজনের পরিচয় এখনো নিশ্চিত হওয়া যায়নি।&lt;/p&gt;\r\n\r\n&lt;p&gt;আকতারুজ্জামান আরও বলেন, র&amp;zwnj;্যাবের ডগ স্কোয়াডের মাধ্যমে লাশ দুটির সন্ধান পাওয়া যায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;এদিকে উদ্ধার কাজের অংশ হিসেবে বিস্ফোরণে ক্ষতিগ্রস্ত ভবনের বেসমেন্ট জমে থাকা পানি অপসারণ কাজ শুরু করেছে ফায়ার সার্ভিস ও সিভিল ডিফেন্স অধিদপ্তর। আজ বেলা পৌনে চারটার দিকে এ কাজ শুরু হয়। ফায়ার সার্ভিসের তথ্য অনুযায়ী, সাততলা ভবনটির পানির ট্যাংক ও সেপটিক ট্যাংক ফেঁটে ভবনটির বেসমেন্টে পানি জমে যায়। ঘটনাস্থল থেকে দেখা গেছে, পাম্প দিয়ে সেচে পানি অপসারণের কাজ করছেন ফায়ার সার্ভিসের সদস্যরা। পাশাপাশি দুর্ঘটনায় ক্ষতিগ্রস্ত সাত তলা ভবনটির নিচতলায়, যে অংশ দিয়ে বেসমেন্টে যেতে হয়, সেখানে পড়ে থাকা ধ্বংসস্তুপ হাত দিয়ে সরানোর কাজ করছেন তাঁরা। &amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/080323cf7d855b9e72561.webp', 'সিদ্দিকবাজারের বিধ্বস্ত ভবনে আজ সকাল নয়টার পর নতুন করে শুরু হয়েছে উদ্ধার তৎপরতা।', 'https://www.samojug.com/', 0, 0, '2', '2023-03-08 11:07:52', 0, 1),
(213, 'samojugc_datatable', 5, 59, 'বাখমুতের পূর্বাঞ্চল পুরোপুরি নিয়ন্ত্রণে নেওয়ার দাবি ভাগনার প্রধানের', 'বাখমুতের পূর্বাঞ্চল পুরোপুরি নিয়ন্ত্রণে নেওয়ার দাবি ভাগনার প্রধানের', '&lt;p&gt;রাশিয়ার বেসরকারি সামরিক বাহিনী ভাগনার গ্রুপের প্রধান ইয়েভজেনি প্রিগোজিন বলেছেন, তাঁর বাহিনী ইউক্রেনের বাখমুত শহরের পূর্বাঞ্চলীয় অংশের পুরোপুরি নিয়ন্ত্রণ নিয়েছে। আজ বুধবার ম্যাসেজিং অ্যাপ টেলিগ্রামে প্রকাশিত এক অডিও বার্তায় এমন দাবি করেছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;ইউক্রেনে রাশিয়ার হয়ে বাখমুত শহরের দখল নেওয়ার লড়াইয়ে নেতৃত্ব দিচ্ছে ভাগনার গ্রুপ। আজ বুধবার প্রিগোজিনের অডিও বার্তায় বলা হয়, &amp;lsquo;বেসরকারি সামরিক কোম্পানির দলগুলো বাখমুতের পূর্বাঞ্চলীয় অংশের নিয়ন্ত্রণ নিয়েছে। বাখমুতকা নদীর পূর্ব দিকের সবকিছু পুরোপুরিভাবে ভাগনারের নিয়ন্ত্রণে আছে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;তবে রয়টার্সের প্রতিবেদনে বলা হয়েছে, তারা খবরটির সত্যতা সম্পর্কে নিশ্চিত হতে পারেনি।&lt;/p&gt;\r\n\r\n&lt;p&gt;আগেও বিভিন্ন সময়ে প্রিগোজিন আগাম সাফল্যের দাবি করেছিলেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;এর আগে ইউক্রেনীয় সেনাবাহিনীর দেওয়া এক বিবৃতিতে বলা হয়, হামলা হওয়ার মতো পরিস্থিতিতে আছে বাখমুত।&lt;/p&gt;\r\n\r\n&lt;p&gt;ইউক্রেনের পূর্বাঞ্চলীয় সেনা কমান্ডের মুখপাত্র সেরহি চেরেভাতি মঙ্গলবার দেশটির রাষ্ট্রীয় টেলিভিশনকে দেওয়া সাক্ষাৎকারে বলেন, &amp;lsquo;বাখমুতে আমাদের সেনাদের প্রধান কাজ হলো শত্রুদের যুদ্ধসক্ষমতা নিরূপণ করা, তাদের যুদ্ধ সক্ষমতা ভেঙে দেওয়া।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/080323c8c06ea3b7dfd7d.webp', 'বিধ্বস্ত বাখমুত শহর', 'https://www.samojug.com/', 0, 0, '0', '2023-03-08 11:10:54', 0, 1),
(214, 'samojugc_datatable', 5, 59, 'নারীরাই যুদ্ধ-সংঘাতের প্রথম শিকার', 'নারীরাই যুদ্ধ-সংঘাতের প্রথম শিকার', '&lt;p&gt;যুদ্ধ ও সংঘাতের প্রথম শিকার নারীরা। তবে কূটনৈতিক প্রক্রিয়ায় নারীর প্রতিনিধিত্ব এখনো খুব কম। গতকাল মঙ্গলবার জাতিসংঘের নিরাপত্তা পরিষদে এসব কথা বলেছেন কর্মকর্তারা।&lt;/p&gt;\r\n\r\n&lt;p&gt;৮ মার্চ আন্তর্জাতিক নারী দিবসের প্রাক্কালে গতকাল জাতিসংঘের নিরাপত্তা পরিষদে নারী, শান্তি ও নিরাপত্তাবিষয়ক বিতর্ক হয়। এ বিতর্কে অংশ নিয়ে ইউএন উইমেনের নির্বাহী পরিচালক সিমা বাহাউস বিশ্বব্যাপী নারীর জীবন, স্বাস্থ্য ও অধিকার রক্ষায় আন্তর্জাতিক সম্প্রদায়কে আরও জোরালো পদক্ষেপ নেওয়ার আহ্বান জানান।&lt;/p&gt;\r\n\r\n&lt;p&gt;সিমা বাহাউস বলেন, নারীর বিরুদ্ধে নৃশংসতা চালিয়ে যাঁরা দায়মুক্তি ভোগ করছেন, তাঁদের ব্যাপারে বড় কোনো ব্যবস্থা নেওয়া যায়নি। আবার শান্তি আলোচনায় নারীদের অংশগ্রহণের ক্ষেত্রেও উল্লেখযোগ্য কোনো পরিবর্তন আসেনি।&lt;/p&gt;\r\n\r\n&lt;p&gt;আফগানিস্তানে &amp;lsquo;লৈঙ্গিক বর্ণবাদের&amp;rsquo; তীব্র সমালোচনা করেন সিমা বাহাউস। তিনি বলেন, নারীদের অধিকার হরণের সবচেয়ে বড় উদাহরণগুলোর একটি আফগানিস্তান।&lt;/p&gt;\r\n\r\n&lt;p&gt;নারীদের দুর্ভোগ সম্পর্কে বলতে গিয়ে সিমা বাহাউস চলমান রাশিয়া-ইউক্রেন যুদ্ধের প্রসঙ্গ টানেন। তিনি বলেন, যুদ্ধের কারণে ইউক্রেন থেকে যে লাখো মানুষ পালাতে বাধ্য হয়েছেন, তাঁদের প্রায় ৯০ শতাংশই নারী ও শিশু। আবার এ যুদ্ধে যাঁরা বাস্তুচ্যুত হয়েছেন, তাঁদের ৭০ শতাংশই নারী।&lt;/p&gt;\r\n\r\n&lt;p&gt;নারীদের দুর্ভোগ লাঘবে শান্তিই একমাত্র উপায় বলে মন্তব্য করেন সিমা বাহাউস। একই সঙ্গে তিনি শান্তিপ্রক্রিয়ায় নারীদের সম্পৃক্ত করার ওপর জোর দেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;জাতিসংঘে নিযুক্ত মার্কিন দূত লিন্ডা থমাস-গ্রিনফিল্ডও একই কথা বলেন। তিনি সারা বিশ্বে নারী ও মেয়েদের বিরুদ্ধে চলা সহিংসতা-নিপীড়নের প্রতি নিরাপত্তা পরিষদের মনোযোগ আকর্ষণ করেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;ফরাসি কর্মকর্তা মারলেন শিপ্পা বলেন, যুদ্ধ ও সংকটে নারীদেরই সর্বোচ্চ মূল্য গুনতে হয়। উদাহরণ হিসেবে তিনি ইউক্রেন, ইয়েমেন, সোমালিয়ার মতো দেশের পরিস্থিতি উল্লেখ করেন। বলেন, সব সংঘাত-সংকটে বিশেষ করে নারীরা ভুক্তভোগী হন। এমনকি তাঁরা উদ্দেশ্যপ্রণোদিতভাবে যৌন ও লৈঙ্গিক সহিংসতার শিকার হন। যাঁরা এসবের জন্য দায়ী, তাঁদের অবশ্যই জবাবদিহির আওতায় আনা দরকার।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/080323741457cd3dcdf20.webp', 'জাতিসংঘের নিরাপত্তা পরিষদ', 'https://www.samojug.com/', 0, 0, '15', '2023-03-08 11:13:47', 0, 1),
(215, 'samojugc_datatable', 5, 61, 'চেলসির দুবার পেনাল্টি মারা যখন ‘তামাশা’', 'চেলসির দুবার পেনাল্টি মারা যখন ‘তামাশা’', '&lt;p&gt;এক সিদ্ধান্তেই বদলে গেলে &lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%AC%E0%A6%B0%E0%A7%81%E0%A6%B8%E0%A6%BF%E0%A7%9F%E0%A6%BE-%E0%A6%A1%E0%A6%B0%E0%A7%8D%E0%A6%9F%E0%A6%AE%E0%A7%81%E0%A6%A8%E0%A7%8D%E0%A6%A1&quot; target=&quot;_blank&quot;&gt;বরুসিয়া ডর্টমুন্ডের&lt;/a&gt; ভাগ্য। সব প্রতিযোগিতা মিলিয়ে টানা ১১ ম্যাচ জিতে ছন্দে থাকা ডর্টমুন্ড ধুঁকতে থাকা &lt;a href=&quot;https://www.prothomalo.com/sports/football/oo71rkfzul&quot; target=&quot;_blank&quot;&gt;চেলসির কাছে হেরে &lt;/a&gt;চ্যাম্পিয়নস লিগ থেকে বিদায় নিয়েছে কাল রাতে। স্বাভাবিকভাবেই তাই ম্যাচে রেফারির পুনরায় পেনাল্টি নেওয়ার সিদ্ধান্ত দেওয়া পছন্দ হয়নি ডর্টমুন্ডের ফুটবলারদের। জুড বেলিংহাম তো বলেই দিয়েছেন, রেফারির এই সিদ্ধান্ত একটা &amp;lsquo;তামাশা&amp;rsquo;।&lt;/p&gt;\r\n\r\n&lt;p&gt;ম্যাচে তখন চেলসি ১-০ গোলে এগিয়ে। তবে দুই লেগ মিলিয়ে লড়াইটা ছিল সমান। অর্থাৎ, দুই লেগ মিলিয়ে চেলসি-ডর্টমুন্ড ১-১ গোলের সমতায়। এমন পরিস্থিতিতে দ্বিতীয়ার্ধের শুরুতে পেনাল্টি পায় চেলসি। বেন চিলওয়েলের শট বক্সের ভেতর মারিয়ুস উলফের হাতে লাগলে ভিএআরের সাহায্য নিয়ে পেনাল্টি দেন ডাচ রেফারি ড্যানি ম্যাকিলি।&lt;/p&gt;\r\n\r\n&lt;p&gt;রেফারির পেনাল্টি দেওয়ার এ সিদ্ধান্তই মানতে পারেননি ডর্টমুন্ডের ফুটবলাররা। তবে প্রথমবার শট নিতে গিয়ে গোলরক্ষককে বোকা বানালেও বল পোস্টে মারেন কাই হাভার্টজ। স্বস্তির নিশ্বাস ফেলে ডর্টমুন্ড। কিন্তু এখানেই শেষ নয়! বিপত্তিটা বাধে এরপর।&lt;/p&gt;\r\n\r\n&lt;p&gt;পেনাল্টি শট নেওয়ার আগে ডর্টমুন্ডের খেলোয়াড়ের বক্সের ভেতরে ঢোকায় আবার পেনাল্টি শট মারার সুযোগ পায় চেলসি। এবারও আগের মতো গোলরক্ষককে উল্টো দিকে পাঠিয়ে একই জায়গায় শট নেন হাভার্টজ। তবে এবার আর পোস্টে লাগেনি। ডান দিকের পোস্ট ঘেঁষে বল জালে জড়ান হাভার্টজ।&lt;/p&gt;\r\n\r\n&lt;p&gt;পেনাল্টি দেওয়ার সিদ্ধান্তটাই যেখানে মানতে পারেননি, সেখানে পুনরায় পেনাল্টি দেওয়ার সিদ্ধান্তইবা ডর্টমুন্ডের খেলোয়াড়েরা মানবেন কীভাবে! তাই ম্যাচ শেষে ডর্টমুন্ড তারকা বেলিংহাম ক্ষোভ ঝেড়েছেন, &amp;lsquo;জানি না, তখন উলফ হাত নিয়ে আর কী করতে পারত। এই সিদ্ধান্তটাই ছিল হতাশাজনক। এরপর পুনরায় পেনাল্টি দেওয়ার সিদ্ধান্ত তো রীতিমতো তামাশা।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;কেন রেফারির সিদ্ধান্ত ঠিক ছিল না, সেই কারণও বলেছেন বেলিংহাম, &amp;lsquo;প্রতিটা পেনাল্টিতেই, বিশেষ করে ধীরগতির রানআপে নেওয়া পেনাল্টির বেলায় কেউ না কেউ বক্সের ভেতরে ঢুকবেই। কিন্তু সে এই সিদ্ধান্ত দিয়েছে, আর আমাদের তা সঙ্গে নিয়েই চলতে হবে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/080323add7390a3ed020a.webp', 'রেফারির সিদ্ধান্তে খুশি নয় ডর্টমুন্ডের ফুটবলাররা', 'https://www.samojug.com/', 0, 0, '0', '2023-03-08 11:56:09', 0, 1),
(216, 'samojugc_datatable', 5, 61, 'ইংল্যান্ডের বিপক্ষে টি-টোয়েন্টিতে যে সুযোগ দেখছেন হাথুরুসিংহে', 'ইংল্যান্ডের বিপক্ষে টি-টোয়েন্টিতে যে সুযোগ দেখছেন হাথুরুসিংহে', '&lt;p&gt;এর আগে একবারই টি-টোয়েন্টিতে দেখা হয়েছে দুই দলের। ২০২১ সালের টি-টোয়েন্টি বিশ্বকাপে ইংল্যান্ডের মুখোমুখি হয়েছিল &lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%AC%E0%A6%BE%E0%A6%82%E0%A6%B2%E0%A6%BE%E0%A6%A6%E0%A7%87%E0%A6%B6-%E0%A6%95%E0%A7%8D%E0%A6%B0%E0%A6%BF%E0%A6%95%E0%A7%87%E0%A6%9F&quot; target=&quot;_blank&quot;&gt;বাংলাদেশ&lt;/a&gt;। সে সময় শুধু ওয়ানডের বিশ্ব চ্যাম্পিয়নই ছিল ইংল্যান্ড। আবার যখন দুই দলের দেখা, ইংল্যান্ড তখন সীমিত ওভারের &lt;a href=&quot;https://www.prothomalo.com/sports/cricket/1deubsxm9w&quot; target=&quot;_blank&quot;&gt;দুই সংস্করণেরই বিশ্ব চ্যাম্পিয়ন&lt;/a&gt;।&lt;/p&gt;\r\n\r\n&lt;p&gt;এখন পর্যন্ত ছেলেদের একমাত্র দল হিসেবে একই সঙ্গে দুই সংস্করণের বিশ্বকাপ ট্রফি ইংল্যান্ডের কাছে। বাংলাদেশ সফরে ওয়ানডে সিরিজ জিতেছে দলটি, এবার পালা টি-টোয়েন্টির। বাংলাদেশের প্রধান কোচ চন্ডিকা হাথুরুসিংহে অবশ্য ওয়ানডের চেয়ে টি-টোয়েন্টিতেই একটু বেশি সুযোগ দেখছেন তাদের বিপক্ষে।&lt;/p&gt;\r\n\r\n&lt;p&gt;গত নভেম্বরে টি-টোয়েন্টি বিশ্বকাপ ফাইনালে পাকিস্তানকে হারানোর পর এই প্রথম এ সংস্করণে খেলতে নামছে ইংল্যান্ড। ওয়ানডের বিশ্ব চ্যাম্পিয়ন নাকি টি-টোয়েন্টির বিশ্ব চ্যাম্পিয়ন&amp;mdash;কোন ইংল্যান্ড বেশি শক্তিশালী, এমন প্রশ্নের জবাবে হাথুরুসিংহে বলেন, &amp;lsquo;বলতে পারব না কারা বেশি শক্তিশালী। তবে তারা পরীক্ষা-নিরীক্ষা করছে। এটি ঠিক যে দলটি পূর্ণশক্তির নয়। তারা কীভাবে বিশ্বকাপের জন্য দল গঠন করে, সেটি কাছ থেকে দেখার ভালো সুযোগ আমাদের।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;ইংল্যান্ডের এই পরীক্ষা-নিরীক্ষার সুযোগটাই নিতে পারে বাংলাদেশ, এমনই ইঙ্গিত হাথুরুসিংহের, &amp;lsquo;তাদের ৫০ ওভারের দলটা বেশ থিতু। তবে টি-টোয়েন্টি দল নিয়ে পরীক্ষা-নিরীক্ষা করছে। আমার মনে হয় না ২০২২ সালে বিশ্বকাপ জেতা দলটি ২০২৪ বিশ্বকাপে খেলবে। এ কারণে নতুন খেলোয়াড় চেষ্টা করে দেখছে। সে লক্ষ্যেই তারা পরিকল্পনা করে দল তৈরি করছে। আমরা সেদিকেও চোখ রাখতে পারি।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;টি-টোয়েন্টি বিশ্বকাপের দল থেকে বাংলাদেশ সফরে বেশ কয়েকটি পরিবর্তন আছে ইংল্যান্ড দলে। চোট, ঠাসা আন্তর্জাতিক সূচি, ফ্র্যাঞ্চাইজি লিগের কারণে ইংল্যান্ড পাচ্ছে না হ্যারি ব্রুক, অ্যালেক্স হেলস, লিয়াম লিভিংস্টোন, বেন স্টোকসদের মতো প্রথম সারির ক্রিকেটারদের। বাংলাদেশের বিপক্ষে ওয়ানডে সিরিজের শেষ ম্যাচে অভিষেক করানো রেহান আহমেদকে রাখা হয়েছে টি-টোয়েন্টি দলেও।&lt;/p&gt;\r\n\r\n&lt;p&gt;বাংলাদেশও বিশ্বকাপের দল থেকে বেশ কয়েকটি পরিবর্তন এনেছে, সেটি অবশ্য চোট বা ঠাসা সূচির কারণে নয়। হাথুরুসিংহে বলছেন, এ সিরিজ দিয়েই পরবর্তী টি-টোয়েন্টি বিশ্বকাপের পথটা শুরু করতে চান তাঁরা, &amp;lsquo;আজই টি-টোয়েন্টি দলকে দেখলাম। ২০২৪ বিশ্বকাপ-ভ্রমণের শুরুমাত্র। এরপর অনেক জল গড়াবে। আমাদের কী আছে, সেটি পর্যবেক্ষণ করব। কোথায় খেলোয়াড়েরা উন্নতি করতে পারে, নিজেদের সামর্থ্য অনুযায়ী খেলতে পারে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;বিশ্ব চ্যাম্পিয়নদের বিপক্ষে খেলা সুযোগ হিসেবেই দেখতে চান এ সিরিজেই দলের দায়িত্ব নেওয়া হাথুরুসিংহে, &amp;lsquo;আমার মনে হয় না এটি কঠিন, (বরং) বিশ্বকাপের জন্য নিজেদের প্রস্তুত করার একটা সুযোগ। (পরের বিশ্বকাপ) কোথায় হবে, সেটি ভেবে দেখতে হবে। ওয়েস্ট ইন্ডিজ ও যুক্তরাষ্ট্রে হবে বলে আমরা কিছুটা বেশি জানি, অন্য দলগুলোর তুলনায় (বেশি) সফর করেছি সেখানে। সেসব ভেবেই ঠিক কম্বিনেশনটা খুঁজে বের করার চেষ্টা করা হবে। অনেক খেলোয়াড়ের জন্যই এটি সুযোগ।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;টি-টোয়েন্টি সিরিজে অভিষেকের অপেক্ষায় থাকা তৌহিদ হৃদয়, রেজাউর রহমান, তানভীর ইসলামরা যেমন আছেন, লম্বা বিরতির পর ফেরানো হয়েছে রনি তালুকদারকেও। তাঁদের কাছে প্রত্যাশা কেমন, এমন প্রশ্নের জবাবে হাথুরুসিংহে বলেন, &amp;lsquo;তারা কী করতে পারে, সেটি আমি খোলা মন নিয়েই দেখব। যে পারফরম্যান্সে তারা নির্বাচিত হয়েছে, আশা করব অমনই করবে। বিশ্ব চ্যাম্পিয়নদের বিপক্ষে আন্তর্জাতিক পর্যায়ে তারা (সামর্থ্য) দেখাবে। তারা কোথায় আছে, আমাদের কন্ডিশনে আমরা তাদের চেয়ে ভালো, না তারা আমাদের চেয়ে&amp;mdash;এগুলোই বুঝতে চেষ্টা করব। টি-টোয়েন্টিতে আমাদের দক্ষতা বাজিয়ে দেখার ভালো সুযোগ।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;টি-টোয়েন্টি বরাবরই বাংলাদেশের জন্য একটু অস্বস্তির সংস্করণ। এ মেয়াদে দায়িত্ব নিয়ে প্রথমবার সংবাদ সম্মেলনে হাথুরুসিংহে বলেছিলেন, টি-টোয়েন্টিই সবচেয়ে বড় চ্যালেঞ্জ হবে তাঁর। ইংল্যান্ডের বিপক্ষে জিততে পারবেন কি না, এমন প্রশ্নের উত্তর দিতে গিয়ে যেন চরম বাস্তববাদী হয়ে গেলেন তিনি, &amp;lsquo;জেতাই লক্ষ্য। আমি জাদুকর বা এমন কেউ নই যে ভবিষ্যৎ বলে দিতে পারব। তবে আমরা জেতার চেষ্টা করব।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0803232564aead96a9a23.webp', 'ইংল্যান্ডের পরীক্ষা-নিরীক্ষার সুযোগ নিতে চায় বাংলাদেশ', 'https://www.samojug.com/', 0, 0, '0', '2023-03-08 12:06:10', 0, 1),
(217, 'samojugc_datatable', 5, 62, 'প্রথমবার ঢাকায় গাইবেন পপাই', 'প্রথমবার ঢাকায় গাইবেন পপাই', '&lt;p&gt;&amp;lsquo;নেশার বোঝা&amp;rsquo;, &amp;lsquo;ভালোবাসা বাকি&amp;rsquo;, &amp;lsquo;অপার্থিব&amp;rsquo;, &amp;lsquo;ভাবালে&amp;rsquo;-এর মতো আলোচিত গানের শিল্পী রাফফান ইমামকে প্রথমবারের মতো ঢাকার কোনো কনসার্টে পাওয়া যাবে। শ্রোতামহলে তিনি &amp;lsquo;পপাই&amp;rsquo; নামে পরিচিত। ৯ মার্চ ইন্টারন্যাশনাল কনভেনশন সিটি বসুন্ধরায় তাঁকে নিয়ে &amp;lsquo;রক অ্যান্ড রিদম ২.০: পপাই লাইভ ইন ঢাকা&amp;rsquo; শীর্ষক কনসার্টের আয়োজন করছে অ্যাডভেন্টর কমিউনিকেশনস।&lt;/p&gt;\r\n\r\n&lt;p&gt;২০১০ সালের দিকে &amp;lsquo;পপাই বাংলাদেশ&amp;rsquo; নামে একটি গানের প্রকল্প শুরু করেন পপাই; প্রকল্পে তাঁর সঙ্গে আছেন প্রযোজক তালাত মিনহাজ। পরে ২০১৫ সালর যুক্তরাষ্ট্রে থিতু হন পপাই; সেখান থেকেই নিয়মিত গান প্রকাশ করেছেন তিনি। প্রায় ১৩ বছরের পথচলায় কখনো কোনো কনসার্টে পাওয়া যায়নি তাঁকে, এবারই প্রথমবার শ্রোতাদের সামনে আসছেন তিনি।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug91.webp&quot; style=&quot;height:1138px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;কনসার্ট শেষে যুক্তরাষ্ট্রে ফিরে যাবেন পপাই; ভবিষ্যতেও কোনো কনসার্টে পাওয়া যেতে পারে তাঁকে&lt;/p&gt;\r\n\r\n&lt;p&gt;পপাই প্রথম আলোকে বলেন, &amp;lsquo;আমার গান এখানে জনপ্রিয়, এটা আমি শুনেছি। এবার সরাসরি দেখব&amp;mdash;এটা দারুণ একটা ব্যাপার হবে।&amp;rsquo;&lt;br /&gt;\r\nঅ্যাডভেন্টর কমিউনিকেশনসের প্রধান নির্বাহী কর্মকর্তা (সিইও) মোজাম্মেল হক বলেন, &amp;lsquo;পপাই দীর্ঘদিন ধরে যুক্তরাষ্ট্রে থাকেন। তাঁর গান শ্রোতারা খুব পছন্দ করেন, তাঁকে কখনোই সামনাসামনি দেখেনি। কখনো লাইভে আসেনি। তাঁকে নিয়ে মানুষের আগ্রহ রয়েছে। খুব ভালো টিকিট বিক্রি হচ্ছে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;পপাই ছাড়াও এই আয়োজনে আছে অ্যাশেজ, মেঘদল, সোনার বাংলা সার্কাস, আফটারম্যাথ, হাইওয়ে, অড সিগনেচার ও স্মুসেজ।&lt;br /&gt;\r\nকনসার্ট শেষে যুক্তরাষ্ট্রে ফিরে যাবেন পপাই; ভবিষ্যতেও কোনো কনসার্টে পাওয়া যেতে পারে তাঁকে।&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/080323fb36bf9ed49a3ef.webp', 'শিল্পী রাফফান ইমাম শ্রোতামহলে ‘পপাই’ নামে পরিচিত', 'https://www.samojug.com/', 0, 0, '0', '2023-03-08 12:13:45', 0, 1),
(218, 'samojugc_datatable', 5, 63, 'মজাদার বিরিয়ানি, তেহারি ও খিচুড়ির রেসিপি', 'মজাদার বিরিয়ানি, তেহারি ও খিচুড়ির রেসিপি', '&lt;p&gt;&lt;strong&gt;দম গোশত বিরিয়ানি&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug93.webp&quot; style=&quot;height:427px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;উপকরণ:&lt;/strong&gt; খাসির মাংস ১ কেজি, আলুর টুকরা ১০টি, বাসমতী চাল ৫০০ গ্রাম, এলাচিিিগুঁড়া ৪ চা-চামচ, স্টার অ্যানিসের গুঁড়া ২ চা-চামচ, দারুচিনিগুঁড়া ৩ চা-চামচ, জিরাগুঁড়া ২ চা-চামচ, গাওয়া ঘি ২০০ গ্রাম, তেল ১ কাপ, টক দই আধা কাপ, কাশ্মীরি মরিচগুঁড়া দেড় চা-চামচ, লবঙ্গ ৩-৪টি, তেজপাতা ২-৩টি, আস্ত এলাচি কয়েকটি, লবণ স্বাদমতো, গোলাপজল দেড় চা-চামচ, মিঠা আতর ২ ফোঁটা, আদাবাটা ৩ চা-চামচ, রসুনবাটা ৩ চা- চামচ, জাফরান আধা চা-চামচ, জাফরান রং আধা চা-চামচ।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;প্রণালি:&lt;/strong&gt; বাসমতী চাল ধুয়ে ভিজিয়ে রাখুন। মাংসে আদা-রসুনবাটা, মিঠা আতর, লবণ, চিনি, জাফরান রং, দই, ২ চা-চামচ এলাচিগুঁড়া, ১ চামচ স্টার অ্যানিসের গুঁড়া, দেড় চা-চামচ দারুচিনিগুঁড়া,কাশ্মীরি মরিচের গুঁড়া, জিরাগুঁড়া দিয়ে ম্যারিনেট করুন ৩০ মিনিট। পানিতে জাফরান রং আর লবণ দিয়ে আলুর টুকরাগুলো সেদ্ধ করে নিন। এবার কড়াইতে তেল গরম করে নিন। মেখে রাখা মাংস বাদামি রং করে ভেজে নিন। এবার এতে পানি দিয়ে সেদ্ধ করুন। সেদ্ধ করা মাংস উঠিয়ে নিন। ঠান্ডা করে কাপড়ে ঝোল ছেঁকে আলাদা করে রাখুন। এবার অন্য একটা কড়াইতে পানি গরম করে নিন। ভিজিয়ে রাখা চাল এলাচি, লবঙ্গ, তেজপাতা দিয়ে আধা সেদ্ধ করে নিন। আর একটা কড়াইতে ঠান্ডা করে রাখা আলুর সঙ্গে মেশান খাসির মাংস, বাকি মসলা, গোলাপজল। এবার একটা পাত্রে আধা সেদ্ধ করা চাল নিয়ে নিন। মাঝখান থেকে নিচ পর্যন্ত গর্ত করুন। এখন গর্তে রান্না করা ঝোলসহ মাংস ও ঘি দিয়ে দিন। পাত্রের ঢাকনা বন্ধ করে অল্প আঁচে রান্না করুন। বিরিয়ানি তৈরি হয়ে এলে আঁচ বন্ধ করে মিনিট দশেক পরে নামিয়ে গরম-গরম পরিবেশন করুন।&lt;/p&gt;\r\n\r\n&lt;h2&gt;সবজির খিচুড়ি&lt;/h2&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug94.webp&quot; style=&quot;height:427px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;উপকরণ:&lt;/strong&gt; চিনিগুঁড়া চাল ৫০ গ্রাম, মুগ ডাল ১ কাপ, টমেটোর ১টি ছোট টুকরা, পেঁয়াজকুচি ১টি ছোট, গাজরের টুকরা ২ টেবিল চামচ, মিষ্টিকুমড়ার টুকরা ২ টেবিল চামচ, ফুলকপির টুকরা ২ টেবিল চামচ, বরবটির টুকরা ২ টেবিল চামচ, ধনেপাতাকুচি ২ টেবিল চামচ, আদাবাটা ১ চা-চামচ, রসুনবাটা আধা চা-চামচ, জিরাগুঁড়া ১ চা-চামচ, হলুদগুঁড়া সিকি চা-চামচ, মরিচগুঁড়া আধা চা-চামচ, কাঁচা মরিচ ২-৩টি, এলাচি ৩টি, দারুচিনি ২টি, লবঙ্গ ৩টি, তেজপাতা ২-৩টি, তেল পরিমাণমতো, লবণ স্বাদমতো।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;প্রণালি:&lt;/strong&gt; প্রথমে কড়াইতে তেল গরম করে নিন। এর মধ্যে পেঁয়াজকুচি দিয়ে নেড়ে নিন। আস্ত গরমমসলা ও তেজপাতা দিয়ে নেড়ে দিতে হবে। আদাবাটা, রসুনবাটা, জিরাগুঁড়া, হলুদ, মরিচগুঁড়া, লবণ, টমেটোকুচি দিয়ে ভালো করে কষিয়ে নিন। এবার এর মধ্যে ধুয়ে রাখা মুগ ডাল ও চাল দিন। ভাজা হলে এতে ৩-৪ কাপ পানি দিয়ে ঢেকে দিন। ৩-৪ মিনিট পর ঢাকনা খুলে সবজি দিয়ে দিন। লবণ দিয়ে নেড়ে ঢেকে দিন। কিছুক্ষণ পর কাঁচামরিচ দিন। সবকিছু ভালো করে সেদ্ধ হয়ে গেলে ধনেপাতাকুচি ছড়িয়ে নামিয়ে পরিবেশন করুন।&lt;/p&gt;\r\n\r\n&lt;h2&gt;বিফ তেহারি&lt;/h2&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug95.webp&quot; style=&quot;height:427px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;উপকরণ:&lt;/strong&gt; গরুর মাংস ১ কেজি, পোলাও চাল ৭৫০ গ্রাম, টক দই আধা কাপ, কাঁচা মরিচের বাটা ১ টেবিল চামচ, ধনেগুঁড়া আধা চা-চামচ, গোলমরিচ ভেজে গুঁড়া করা ১ চা-চামচ, দারুচিনি ৪টি, এলাচি ৪টি, লবঙ্গ ৪টি, শাহি জিরা ১ চা-চামচ, পেঁয়াজকুচি আধা কাপ, শর্ষের তেল আধা কাপ, আদার রস ২ টেবিল চামচ, রসুনের রস ১ টেবিল চামচ, পোস্তদানাবাটা আধা টেবিল চামচ, কাজুবাদামবাটা ১ টেবিল চামচ, জিরাগুঁড়া আধা চা-চামচ, সয়াবিন তেল আধা কাপ, কাঁচা মরিচ আস্ত ১৫-১৭টি, লবণ পরিমাণমতো, মাওয়া আধা কাপ, গরুর দুধ আধা কাপ, চিনি ১ টেবিল চামচ, এলাচি ১ টেবিল চামচ, দারুচিনি ১ টেবিল চামচ, জায়ফল ১ টেবিল চামচ, জয়ত্রী ১ টেবিল চামচ, শাহি জিরা ১ টেবিল চামচ, কেওড়াজল ২ টেবিল চামচ।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;প্রণালি:&lt;/strong&gt; এলাচি, দারুচিনি, জায়ফল, জয়ত্রী ও শাহি জিরা একসঙ্গে ভেজে গুঁড়া করে নিন। মাংস ছোট টুকরা করে কাটতে হবে। এবার আদা-রসুনের রস, টক দই, কাঁচা মরিচের বাটা, ধনে-জিরার গুঁড়া, পোস্তদানাবাটা, বাদামবাটা ও লবণ দিয়ে মেখে রাখতে হবে আধা ঘণ্টা। প্রেশার কুকারে সয়াবিন তেল দিন। পেঁয়াজ লাল করে ভাজুন। মাংস ও দুই কাপ পানি দিয়ে ঢাকনা বন্ধ করে দিতে হবে। প্রেশার কুকারে ৪-৫টি সিটি দিলে নামিয়ে রাখতে হবে। একটু ঠান্ডা হলে ঢাকনা খুলে ভাজা মসলা, গোলমরিচের গুঁড়া দিয়ে ঢেকে রাখুন। চাল রান্নার ১০ মিনিট আগে ভিজিয়ে রাখতে হবে। হাঁড়িতে শর্ষের তেল, এলাচি, দারুচিনি ও শর্ষের ফোড়ন দিয়ে দিন। ভেজানো চাল নাড়তে হবে। চালের পানি শুকিয়ে এলে দেড়গুণ পানি ও স্বাদমতো লবণ দিতে হবে। কিছুক্ষণ পর ওপর থেকে দুধ, মাওয়া ও পানি দিয়ে গোলানো চিনি ছিটিয়ে দিতে হবে। পানি সমান হয়ে এলে রান্না করা মাংস ভালোভাবে চালের সঙ্গে মিশিয়ে দিন। পাতিলটি এ পর্যায়ে তাওয়ার ওপর বসান। ঢাকনা ভালোভাবে লাগিয়ে দেবেন। খেয়াল রাখবেন ভাপ যেন বের না হয়। বেশি নাড়াচাড়া করবেন না, যাতে চাল না ভাঙে। ১০ মিনিট পর আরেকবার নেড়ে ওপরে কেওড়াজল ও শাহি জিরা ছিটিয়ে দিতে হবে। এবার ঢেকে ১৫ মিনিট দমে রেখে পরিবেশন করুন বিফ তেহারি।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/08032357c4b49d9872f2d.webp', 'ছবি: সংগৃহীত', 'https://www.samojug.com/', 0, 0, '2', '2023-03-08 12:20:22', 0, 1),
(219, 'samojugc_datatable', 5, 64, 'ব্যাংকের চাকরি ছেড়ে সফল ফ্রিল্যান্সার, মাসে সুমাইয়ার আয় লাখ টাকা', 'ব্যাংকের চাকরি ছেড়ে সফল ফ্রিল্যান্সার, মাসে সুমাইয়ার আয় লাখ টাকা', '&lt;p&gt;বেসরকারি একটি ব্যাংকের লেনদেন সেবা বিভাগে কাজ করতেন সুমাইয়া ইরা। ব্যাংকের এই চাকরি ছেড়ে শুরু করেন ঘরে বসে ফ্রিল্যান্সিংয়ের কাজ। চাকরি ছেড়ে দিলেও সুমাইয়া এখন প্রতি মাসে প্রায় লাখ টাকা আয় করেন। পাশাপাশি জাহাঙ্গীরনগর বিশ্ববিদ্যালয়ে পদার্থবিজ্ঞানে স্নাতকোত্তরও করছেন তিনি। ৬ মার্চ ধানমন্ডির ছায়ানট সাংস্কৃতিক ভবন মিলনায়তনে প্রথম আলো আয়োজিত আন্তর্জাতিক নারী দিবসের অনুষ্ঠানে দেখা হয় সুমাইয়ার সঙ্গে।&lt;/p&gt;\r\n\r\n&lt;h2&gt;শুরুর কথা&lt;/h2&gt;\r\n\r\n&lt;p&gt;নিজে থেকে কিছু করার ইচ্ছা ছোটবেলা থেকেই ছিল সুমাইয়ার। গতানুগতিক চাকরির বদলে ভিন্ন কিছু করার চিন্তা থেকেই ২০১৮ সালে ফ্রিল্যান্সিংয়ের কাজের প্রতি আগ্রহ জন্মে সুমাইয়ার। কিন্তু শুরুতে ফ্রিল্যান্সিং শেখার মতো ভালোমানের কোনো প্রতিষ্ঠানের খোঁজও পাননি তিনি। হঠাৎই এক বন্ধুর মাধ্যমে জানতে পারেন ফ্রিল্যান্সিং প্রশিক্ষণ দেওয়া প্রতিষ্ঠান নকরেক আইটির কথা। অনলাইনে প্রতিষ্ঠানটির কাজের ধরন ও প্রশিক্ষণার্থীদের সাফল্য জানার পর সেখানে ওয়েবসাইট ডিজাইন কোর্সে ভর্তি হন সুমাইয়া। এরপর প্রতিষ্ঠানটির প্রধান নির্বাহী কর্মকর্তা সুবীর নকরেকের পরামর্শে ফ্রিল্যান্সারদের উপযোগী গ্রাফিকস ডিজাইন এবং ওয়ার্ডপ্রেস ওয়েবসাইট তৈরির প্রশিক্ষণ নেন। সফলভাবে প্রশিক্ষণ নেওয়ার পর ২০১৯ সালে অনলাইন মার্কেটপ্লেস ফাইবার ও আপওয়ার্কে কাজ শুরু করেন। বইয়ের প্রচ্ছদ আঁকার কাজ করে ফাইবারে প্রথম ৬০ ডলার আয় করেন সুমাইয়া।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug97.webp&quot; style=&quot;height:434px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;নিজের ঘরে কাজ করছেন সুমাইয়া ইরা&lt;/p&gt;\r\n\r\n&lt;h2&gt;আমি কি পারব&lt;/h2&gt;\r\n\r\n&lt;p&gt;সুমাইয়া প্রথম আলোকে বলেন, &amp;lsquo;সত্যি কথা বলতে আমি ভাবতাম, আমি ডিজাইনের কাজ কখনোই করতে পারব না। কারণ, আমার মনে হতো, অনলাইনে এত প্রতিযোগিতার মধ্যে কীভাবে সফল হওয়া সম্ভব? আর এসব কারণে প্রথম দিকে কিছুটা অবহেলা করেছিলাম, যেটার আক্ষেপ আমার আজীবনের। আর এই অবহেলার জন্য আমি যুক্তরাষ্ট্র, কানাডার অনেক প্রতিষ্ঠানের কাছ থেকে পাওয়া চাকরির প্রস্তাব হাতছাড়া করেছি। পুরোদমে কাজ শুরুর পরপরই আমি অনলাইনে দুটি কাজ করে ক্লায়েন্টদের কাছ থেকে টিপস পাওয়ার পাশাপাশি ভালো মতামতও পাই। সব মিলিয়ে ফ্রিল্যান্সিংয়ে উৎসাহ বেড়ে যায়।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;h2&gt;ব্যাংকের চাকরি&lt;/h2&gt;\r\n\r\n&lt;p&gt;২০২১ সালের ৩ অক্টোবর বেসরকারি একটি ব্যাংকের লেনদেন সেবা বিভাগে কর্মকর্তা হিসেবে যোগ দেন সুমাইয়া। বাসা থেকে সুমাইয়ার অফিস ছিল ১৯ থেকে ২০ কিলোমিটার দূরে। বিভিন্ন দেশের সঙ্গে সময়ের পার্থক্য থাকায় প্রায় সময়ই বাসে বসে বসে ক্লায়েন্টের সঙ্গে আলোচনা করতে হতো সুমাইয়াকে, কখনো আবার অফিস চলাকালেও ফোন কল আসত। অফিসের কাজ এবং মার্কেটপ্লেসের ক্লায়েন্টদের চাপে বেশ ব্যস্ত সময় পার করতে হতো সুমাইয়ার। সে সময়ের কথা স্মরণ করে সুমাইয়া বলেন, &amp;lsquo;আমার পরিবার সব সময়ই আমার পাশে ছিল। আমার মা সব সময় আমাকে উৎসাহ দিতেন, এমনকি ব্যাংকে চাকরি নেওয়ার আগে মা বলেছিলেন, ফ্রিল্যান্সিং কাজ করে তোমার তো বেশ ভালো উপার্জন হয়, তাহলে ব্যাংকে চাকরি করা কি খুব দরকার? তারপরও সমাজের সেই তথাকথিত নিয়মে নিজেকেও জড়িয়ে নিয়েছিলাম। আমি বলব না যে ব্যাংকের কাজ খুব আরামের, যথেষ্ট কঠিন একটা কাজ। এর তুলনায় ফ্রিল্যান্সিং করা বেশ সহজ। আর তাই ২০২২ সালের আগস্টে ব্যাংকের চাকরি ছেড়ে পুরোদমে ফ্রিল্যান্সিংয়ের কাজ করা শুরু করলাম।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;h2&gt;শুনতে হয়েছে মানুষের কটুকথা&lt;/h2&gt;\r\n\r\n&lt;p&gt;পুরোদমে ফ্রিল্যান্সিং শুরুর পর পরিবারের সবার সমর্থন পেলেও পরিচিত অনেকের কাছ থেকেই কটুকথা শুনতে হয়েছে সুমাইয়াকে। অনেকে এটাও বলেছেন, কেন এই পেশা বেছে নিলে। তবে মানুষের কথায় দমে যাননি সুমাইয়া। এ বিষয়ে তিনি বলেন, &amp;lsquo;এখন বেশ ভালো আছি, অন্তত ব্যাংকে কাজ করার সময়কার সেই মানসিক চাপটা নেই আমার। এখন নিজেকে স্বাধীন লাগে, কখনো কোথায় যেতে ইচ্ছা করলেই যেতে পারি, নিজেকে সময় দিতে চাইলেও দিতে পারি। এই পেশায় নির্দিষ্ট সময় কাজ সম্পন্ন করার চাপ থাকলেও ব্যক্তিস্বাধীনতা রয়েছে, যা আমি সব সময়ই চেয়েছিলাম।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;h2&gt;মাসে আয় কমবেশি লাখ টাকা&lt;/h2&gt;\r\n\r\n&lt;p&gt;বর্তমানে যুক্তরাষ্ট্র ও কানাডার দুটি প্রতিষ্ঠানে ডিজাইনার হিসেবে কাজ করছেন সুমাইয়া। এ ছাড়া মার্কেটপ্লেসে যুক্তরাষ্ট্র, কানাডা, অস্ট্রেলিয়া, জার্মানি, দুবাই, বেলজিয়াম, সার্বিয়াসহ আরও বিভিন্ন দেশের ক্লায়েন্টদের কাজ নিয়মিত করছেন তিনি। এসব কাজ করে মাসে কমবেশি এক লাখ টাকা আয় হয় তাঁর। একবার এক মাসে মার্কেটপ্লেস ও বাইরের অন্যান্য ক্লায়েন্টদের কাজ করে প্রায় দুই লাখ টাকা আয় করেছিলেন তিনি।&lt;/p&gt;\r\n\r\n&lt;h2&gt;ধৈর্য ধরলে সফলতা আসবেই&lt;/h2&gt;\r\n\r\n&lt;p&gt;ফ্রিল্যান্সিং করা সহজ নয়, আবার কঠিনও নয় উল্লেখ করে সুমাইয়া বলেন, &amp;lsquo;অনেকে ভাবেন ফ্রিল্যাংসিংয়ের কাজ শুরু করলেই দ্রুত আয় করা যায়। আসলে একদমই তা নয়। ফ্রিল্যান্সিংয়ের কাজে দক্ষতার পাশাপাশি অনেক ধৈর্য দরকার। শুধু তাই নয়, নিজের দক্ষতাও নিয়মিত হালনাগাদ করতে হয়।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0803236cab98791cd614f.webp', 'সুমাইয়া ইরা', 'https://www.samojug.com/', 0, 0, '11', '2023-03-08 12:24:51', 0, 1),
(220, 'samojugc_datatable', 5, 64, 'আন্তর্জাতিক নারী দিবসে গুগলের ডুডল', 'আন্তর্জাতিক নারী দিবসে গুগলের ডুডল', '&lt;p&gt;আন্তর্জাতিক নারী দিবস উপলক্ষে বিভিন্ন শ্রেণি&amp;ndash;পেশার নারীদের ভূমিকা তুলে ধরে নতুন ডুডল প্রকাশ করেছে জনপ্রিয় সার্চ ইঞ্জিন গুগল। গুগলে প্রবেশ করলেই দেখা মিলছে ডুডলটির। গুগলের ছয়টি অক্ষরে নারীদের বিভিন্ন কাজের ছবি তুলে ধরা হয়েছে ডুডলটিতে।&lt;/p&gt;\r\n\r\n&lt;p&gt;ডুডলটিতে ক্লিক করলেই আন্তর্জাতিক নারী দিবসের বিস্তারিত তথ্যনির্ভর সার্চ পেজ চালু হচ্ছে। পেজটিতে অ্যানিমেশনের মাধ্যমে পর্দাজুড়ে বেগুনি রঙের উৎসবের আবহ তুলে ধরার পাশাপাশি নারীদের এগিয়ে যাওয়ার প্রতিচ্ছবি তুলে ধরা হয়েছে। এ বছরের নারী দিবসের প্রতিপাদ্য, সংবাদের পাশাপাশি বিভিন্ন তথ্যও জানার সুযোগ মিলছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/080323d99f0956dba72b1.webp', 'আন্তর্জাতিক নারী দিবসে গুগলের ডুডল', 'https://www.samojug.com/', 0, 0, '0', '2023-03-08 12:27:14', 0, 1),
(221, 'samojugc_datatable', 5, 65, 'বিশ্ববিদ্যালয়ের শিক্ষক নিয়োগে প্রাসঙ্গিক আলোচনা', 'বিশ্ববিদ্যালয়ের শিক্ষক নিয়োগে প্রাসঙ্গিক আলোচনা', '&lt;p&gt;উচ্চশিক্ষা প্রতিষ্ঠানের তীর্থ স্থান হলো বিশ্ববিদ্যালয়। অধিকাংশ মেধাবীরা বিশ্ববিদ্যালয়ে পড়াশোনা করে থাকেন। উচ্চশিক্ষা প্রতিষ্ঠান দেশের অর্থনৈতিক ও সামাজিক তথা সার্বিক উন্নয়নের কল্যাণে গুরুত্বপূর্ণ ভূমিকা পালন করে। গত কয়েক বছর বর্তমান সরকারের আমলে উচ্চশিক্ষায় অনেক উন্নয়ন এবং ইতিবাচক পরিবর্তন হয়েছে, যা মানুষের নিকট প্রশংসনীয়। উচ্চশিক্ষা প্রতিষ্ঠান যদি ভালোভাবে গড়ে উঠে, তাতে দেশের সার্বিক কল্যাণ সাধিত হয়। একজন ব্যক্তি বা ছাত্র উচ্চশিক্ষা বেছে নেন, যখন তিনি তাঁর অধ্যয়ন প্রবাহে বিশেষীকরণ করতে চান। একটি সমৃদ্ধ কর্মজীবন, আর্থিক নিরাপত্তা এবং নিজের উন্নতি উচ্চশিক্ষার সুবিধা। উচ্চশিক্ষার মাধ্যমে একজন ব্যক্তি বা ছাত্রছাত্রী বিশেষ দক্ষতার সঙ্গে আরও বেশি নিয়োগযোগ্য হয়ে ওঠে এবং সম্ভবত একটি সুখী ও চাপমুক্ত জীবন যাপন করতে পারে। উচ্চশিক্ষিত নাগরিকেরা কমিউনিটি বিল্ডিং কার্যকলাপে আরও বেশি জড়িত থাকেন এবং তাঁদের শৃঙ্খলা ও কৃতিত্বের বোধ বেশি থাকে। তাঁরা সমাজের প্রতি বেশি জবাবদিহিতা প্রকাশ করেন। নেপোলিয়ন বলেছিলেন, &amp;lsquo;আমাকে একজন শিক্ষিত মা দাও, আমি তোমাকে একটি শিক্ষিত জাতি দেব।&amp;rsquo; নেপোলিয়নের বাণীটি সর্বদা চিরন্তন সত্য। একটি জাতি বা দেশ গঠনে শিক্ষিত নারীর ভূমিকা অনেক তাৎপর্যপূর্ণ। আর এই শিক্ষিত নারী তৈরিতে বিশ্ববিদ্যালয়ের অবদান অপরিসীম এবং তাৎপর্যপূর্ণ।&lt;/p&gt;\r\n\r\n&lt;p&gt;আর ছাত্রছাত্রীদের উন্নতিকরণ বা তাঁদের মেধা বিকাশে ব্যাপক ভূমিকা পালন করে থাকেন বিশ্ববিদ্যালয়ের শিক্ষকেরা। কিন্তু সেই শিক্ষক নিয়ে নানা ধরনের সমালোচনা, বিতর্ক বহমান। প্রায়ই গণমাধ্যমে বিভিন্ন বিশ্ববিদ্যালয়ের শিক্ষক নিয়োগে অনিয়মের খবর দেখতে বা শুনতে পাই। অনেক বিশ্ববিদ্যালয়ে বেশি যোগ্যতাসম্পন্ন আবেদনকারীকে বাদ দিয়ে কম মেধাবীকে নিয়োগ দিয়ে থাকে বলে অভিযোগ রয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;আবার কোন প্রতিষ্ঠানে চাঁদা নেওয়ার অভিযোগ রয়েছে&amp;mdash;এমন শিক্ষার্থীকে বিশ্ববিদ্যালয়ের শিক্ষক হিসেবে যোগদান করিয়েছে। এ ছাড়া নিজের পিএইচডি ডিগ্রির শিরোনামের ইংরেজি বলতে পারেননি, তাঁকে দেশের সর্বোচ্চ শিক্ষাপ্রতিষ্ঠান ঢাকা বিশ্ববিদ্যালয়ের শিক্ষক হিসেবে নিয়োগ দিয়েছে কর্তৃপক্ষ, যা খুবই দুঃখজনক। এসব কেন ঘটে, তা আমরা সবাই জানি। অর্থাৎ, তদবির বা অন্য কোনো সুপারিশের কারণে এ ধরনের বাজে সংস্কৃতি শিক্ষক নিয়োগে দেখা যায়। এসব নিয়ে বিশ্ববিদ্যালয় মঞ্জুরি কমিশন অনেকবার তদন্ত করেছে। কিন্তু তারপরও এসব বন্ধ হচ্ছে না।&lt;/p&gt;\r\n\r\n&lt;p&gt;শিক্ষকেরা উপাচার্য হয়ে গেলেই তাঁর মনমতো প্রতিষ্ঠানটিকে পরিচালনা করে থাকেন। এ নিয়ে সম্প্রতি অনেক বিশ্ববিদ্যালয়ের উপাচার্যদের নিয়ে সংবাদপত্রে নেতিবাচক খবর প্রকাশ পায়, যা একজন বঙ্গবন্ধুর আদর্শে বিশ্বাসী শিক্ষক হয়ে খুব কষ্ট পান। এসব বন্ধে সরকারকে কঠোর হতে হবে। অন্যথায়, উচ্চশিক্ষাব্যবস্থায় সংকট দেখা দিতে পারে। সরকারের নেওয়া নানামুখী পদক্ষেপ যেখানে শিক্ষাকে উন্নয়ন ঘটাবে, তা এখন অস্বচ্ছ শিক্ষক নিয়োগের মাধ্যমে বিঘ্ন ঘটতে পারে। তাই &amp;nbsp;এ পরিস্থিতি থেকে আমাদের উত্তরণ ঘটাতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;বর্তমানে অনেক বিশ্ববিদ্যালয়ে শুধু মৌখিক পরীক্ষা নেওয়ার মাধ্যমে শিক্ষক নিয়োগ দিয়ে থাকে। যেখানে নানা ধরনের অনিয়ম হতে পারে। একটি বিশ্ববিদ্যালয়ের নিয়োগের কথা উল্লেখ করি, যেখানে এক আবেদনকারী লিখিত পরীক্ষায় ষষ্ঠ বা সপ্তম হয়েছেন, কিন্তু তিনি ভাইভায় বেশি মার্ক পাওয়ায় নিয়োগ বোর্ড তাঁকে নিয়োগের সুপারিশ করে। কিন্তু এটা কতটুকু যৌক্তিক। যদিও পড়ে সিন্ডিকেট ওই নিয়োগ বাতিল করে দেয়। যদি বাতিল না হতো! তাহলে ভাবুন তো কী হতো! তাই শিক্ষক নিয়োগে একটি স্বচ্ছ নিয়ম থাকা দরকার। শিক্ষক নিয়োগে শতভাগ সঠিক করার জন্য একটি কাজ করা যেতে পারে। যেমন, মেধাতালিকায় যাঁরা ১ থেকে ৫ শতাংশের মধ্যে থাকবেন, একমাত্র তাঁরাই শিক্ষক পদের জন্য আবেদন করতে পারবেন। যার মানে কোনো ব্যাচে ১০০ জন শিক্ষার্থী রয়েছেন, তাহলে এক থেকে মেধাক্রম পাঁচ পর্যন্ত শিক্ষক নিয়োগের জন্য আবেদনের যোগ্য। অর্থাৎ, এই পদ্ধতিতে লবিং থাকবে না বললেই চলে। এ রকম নীতিমালা বাংলাদেশ কৃষি বিশ্ববিদ্যালয়ে চালু রয়েছে। যেখানে শিক্ষক নিয়োগের জন্য মেধা তালিকায় শতকরা প্রথম থেকে সপ্তম স্থানে থাকতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ ছাড়া পটুয়াখালী বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয়ে একটি সুন্দর নিয়ম চালু রয়েছে। যেখানে যত আবেদন জমা হবে, তার মধ্যে থেকে প্রথম ১০ জন আবেদনকারীকে পরীক্ষা দেওয়ার সুযোগ দেওয়া হবে। প্রথম ১০ জনের যে কেউ শিক্ষক হতে পারবেন। অর্থাৎ, এর কারণে শিক্ষক নিয়োগে লবিং কমে যাবে। ভালো শিক্ষার্থীরা শিক্ষক নিয়োগের সুযোগ পাবেন। কারণ, তখন শিক্ষার্থীরা জানবেন যে লবিং করার দরকার নেই। এ জন্য সরকারকে দ্রুত সুনির্দিষ্ট নীতিমালা করে দিতে হবে। যেমন, চীনে বিশ্ববিদ্যালয়ের শিক্ষক হতে হলে অবশ্যই পিএইচডি ডিগ্রি থাকতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;ভারতে শিক্ষক হতে হলে পিএইচডি ডিগ্রি থাকতে হবে। তবে মাস্টার্স ডিগ্রি করে শিক্ষক হতে পারবেন, কিন্তু তাঁকে ন্যাশনাল এলিজিবিলিটি টেস্ট পরীক্ষায় উন্নতি হয়ে ৫৫ শতাংশ নম্বর পাইতে হবে। তাহলে শিক্ষক পদের জন্য আবেদন করতে পারবেন। এমনকি মালয়েশিয়া এবং জাপানে শিক্ষক হতে হলে পিএইচডি ডিগ্রি থাকাকে বেশি প্রাধান্য দেওয়া হয়। অধিকাংশ শিক্ষকই পিএইচডি ডিগ্রির অধিকারী জাপান, মালয়েশিয়া এবং ভারতে। এসব দেশে গবেষণাকে শিক্ষক নিয়োগে গুরুত্ব দিয়ে থাকে। অধিকাংশ দেশের বিশ্ববিদ্যালয়গুলোয় শিক্ষক নিয়োগে ডেমো ক্লাস নিয়ে থাকে। শুধু মৌখিক পরীক্ষা নেওয়ার মাধ্যমে শিক্ষক নিয়োগ দেওয়া কতটুকু যৌক্তিক। সেই প্রশ্ন আমি কর্তৃপক্ষের নিকট রাখলাম। তাই শুধু মৌখিক পরীক্ষার মাধ্যমে শিক্ষক নিয়োগ না দিয়ে কয়েকটা প্যারামিটার নির্বাচিত করে শিক্ষক নিয়োগ দেওয়া উচিত। তাহলে উচ্চশিক্ষার মানের উন্নতি ঘটবে বলে বিশ্বাস করি।&lt;/p&gt;\r\n\r\n&lt;p&gt;তাই শিক্ষক নিয়োগে বাংলাদেশ কৃষি বিশ্ববিদ্যালয় বা পটুয়াখালী বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয়ের মতো আইন চালু করা জরুরি। ভবিষ্যতে ভারত বা চীনের মতো নিয়ম করে বিশ্ববিদ্যালয়ের নিয়োগপ্রক্রিয়াসম্পন্ন করা একান্ত প্রয়োজন। এটা চালু করতে হলে মিনিনাম তিন বা চার বছর হাতে রেখে এই আইন শুরু করা জরুরি। কারণ, পিএইচডি ডিগ্রি করার জন্য কমপক্ষে তিন বছর সময় একান্ত প্রয়োজন। শুধু মৌখিক পরীক্ষার মাধ্যমে বিশ্ববিদ্যালয়ের শিক্ষক নিয়োগ দেওয়া বন্ধে সরকারের দ্রুত পদক্ষেপ গ্রহণ করতে হবে। ভালোমানের শিক্ষক নিয়োগ ছাড়া উন্নয়নকে টেকসই করা কঠিন হয়ে পড়ে। উচ্চশিক্ষার উন্নয়নের জন্য প্রথম এবং পূর্বশর্ত হলো যোগ্য এবং ভালোমানের শিক্ষক নেওয়া খুবই তাৎপর্যপূর্ণ।&lt;/p&gt;\r\n\r\n&lt;p&gt;বৈশ্বিক শিক্ষা সংকট এলে একটি শিক্ষণ সংকট। শিক্ষার্থীদের শেখার ফলাফলের উন্নতিতে শিক্ষকদের গুণমান সবচেয়ে বেশি প্রভাব ফেলে। এশিয়া ও প্রশান্ত মহাসাগরীয় অঞ্চলের বেশির ভাগ উন্নয়নশীল দেশগুলো দীর্ঘমেয়াদি শিক্ষকতার ক্যারিয়ারের জন্য সেরা প্রার্থীদের নিয়োগের ক্ষেত্রে বড় চ্যালেঞ্জের সম্মুখীন হয়। এ চ্যালেঞ্জ মোকাবিলায় শিক্ষক নিয়োগে একটি স্বচ্ছ নীতিমালা থাকা দরকার। উন্নয়নশীল দেশগুলোর জন্য সর্বোত্তম অনুশীলনের ওপর গুরুত্ব দিয়ে বিশ্ববিদ্যালয়ভিত্তিক শিক্ষক উন্নয়ন কর্মসূচি নিশ্চিত করা সময়ের দাবি। শিক্ষক, প্রশিক্ষক, শিক্ষাবিদ এবং সুপারভাইজার হওয়ার জন্য সবচেয়ে প্রতিশ্রুতিশীল শিক্ষকদের স্ক্রিনিং, প্রশিক্ষণ এবং পরামর্শ দেওয়ার ওপরও আরও জোর দেওয়া উচিত। তাঁদের একটি খুব বিস্তৃত শিক্ষাদানের অভিজ্ঞতা, গভীর বিষয়ে জ্ঞান, এবং কার্যকর শিক্ষাগত অনুশীলনের দক্ষতা এবং বোঝার প্রদর্শন করা উচিত। এসব কাজের সফলতার জন্য গুণগত শিক্ষক নিয়োগ বাঞ্ছনীয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;br /&gt;\r\n&lt;strong&gt;লেখক:&lt;/strong&gt; সহযোগী অধ্যাপক, হিসাববিজ্ঞান তথ্য পদ্ধতি বিভাগ, জাতীয় কবি কাজী নজরুল ইসলাম বিশ্ববিদ্যালয়, ময়মনসিংহ&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/080323ef2dec46df03f76.webp', 'শিক্ষক', 'https://www.samojug.com/', 0, 0, '0', '2023-03-08 12:45:52', 0, 1),
(222, 'samojugc_datatable', 5, 65, 'এ বছরের এইচএসসি পরীক্ষা জুলাইয়ের প্রথম সপ্তাহে', 'এ বছরের এইচএসসি পরীক্ষা জুলাইয়ের প্রথম সপ্তাহে', '&lt;p&gt;এ বছরের এইচএসসি পরীক্ষা আগামী জুলাইয়ের প্রথম সপ্তাহে শুরু হতে পারে। তবে পরীক্ষা শুরুর তারিখ এখনো চূড়ান্ত হয়নি।&lt;/p&gt;\r\n\r\n&lt;p&gt;আন্তশিক্ষা বোর্ড সমন্বয় কমিটির আহ্বায়ক এবং ঢাকা মাধ্যমিক ও উচ্চমাধ্যমিক শিক্ষা বোর্ডের চেয়ারম্যান অধ্যাপক তপন কুমার সরকার আজ মঙ্গলবার প্রথম আলোকে এই কথা জানিয়েছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;সাধারণ সময়ে এইচএসসি পরীক্ষা এপ্রিলের শুরুতে হতো। কিন্তু করোনার সংক্রমণ পরিস্থিতির কারণে ২০২০ সালের মার্চ থেকে পুরো শিক্ষাপঞ্জি এলোমেলো হয়ে যায়। এখন সাধারণ সময়ের চেয়ে তিন মাস পর শুরু হচ্ছে এইচএসসি পরীক্ষা। পরীক্ষার এ পরিস্থিতি স্বাভাবিক হতে আগামী বছর পর্যন্ত লেগে যেতে পারে।এদিকে চলতি বছরের (২০২৩) এসএসসি (মাধ্যমিক স্কুল সার্টিফিকেট) ও সমমানের পরীক্ষার রুটিন প্রকাশ করা হয়েছে। আগামী ৩০ এপ্রিল এ পরীক্ষা শুরু হবে। পরীক্ষা চলবে ২৩ মে পর্যন্ত।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/080323780900bd05d65de.webp', 'ছবি: সংগৃহীত', 'https://www.samojug.com/', 0, 0, '0', '2023-03-08 12:50:28', 0, 1),
(223, 'samojugc_datatable', 5, 66, 'হজযাত্রী নিবন্ধনের সময় বাড়ল আরও ৯ দিন', 'হজযাত্রী নিবন্ধনের সময় বাড়ল আরও ৯ দিন', '&lt;p&gt;চলতি বছর হজযাত্রী নিবন্ধনের সময় আরও ৯ দিন বাড়ানো হয়েছে। ১৬ মার্চ পর্যন্ত হজযাত্রীরা নিবন্ধন করতে পারবেন। গতকাল মঙ্গলবার &lt;a href=&quot;https://hajj.gov.bd/wp-content/uploads/2023/03/registration_date.pdf&quot; target=&quot;_blank&quot;&gt;ধর্মবিষয়ক মন্ত্রণালয়&lt;/a&gt; এক সংবাদ বিজ্ঞপ্তিতে সময় বৃদ্ধির এ তথ্য জানিয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ নিয়ে তৃতীয়বারের মতো হজের নিবন্ধনের সময় বাড়ানো হলো। হজ নিবন্ধনের সময় আর বাড়ানো হবে না বলেও ধর্মবিষয়ক মন্ত্রণালয়ে সংবাদ বিজ্ঞপ্তিতে বলা হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এর আগে গত ৮ ফেব্রুয়ারি হজযাত্রী নিবন্ধন শুরু হয়, ২৩ ফেব্রুয়ারি নিবন্ধন শেষ হওয়ার কথা ছিল। কিন্তু নিবন্ধনে সাড়া না পাওয়ায় পরে সময় আরও ৫ দিন বাড়িয়ে ২৮ ফেব্রুয়ারি পর্যন্ত করা হয়। এরপরও নিবন্ধন কম ছিল। পরে নিবন্ধনের শেষ সময় বাড়িয়ে ৭ মার্চ করা হয়। এবার বাড়িয়ে ১৬ মার্চ করা হলো।&lt;/p&gt;\r\n\r\n&lt;p&gt;সরকারি ব্যবস্থাপনায় প্রাক্-নিবন্ধনের ক্রমিক আগের সিরিয়াল বহাল রেখে ৪৫ হাজার ৬০৫ পর্যন্ত এবং বেসরকারি ব্যবস্থাপনায় প্রাক্-নিবন্ধনের সর্বশেষ ক্রমিক আগের সিরিয়াল বহাল রেখে ৮ লাখ ৮৬ হাজার ১৯০ পর্যন্ত নিবন্ধন করতে পারবেন বলে ধর্ম মন্ত্রণালয়ের বিজ্ঞপ্তিতে জানানো হয়েছে। কোটা পূর্ণ হওয়ার সঙ্গে সঙ্গে নিবন্ধন সার্ভার স্বয়ংক্রিয়ভাবে বন্ধ হয়ে যাবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এবার সরকারিভাবে হজ পালনে খরচ হবে ৬ লাখ ৮৩ হাজার ১৮ টাকা। অন্যদিকে, বেসরকারিভাবে এজেন্সির মাধ্যমে হজ পালনে সর্বনিম্ন খরচ ধরা হয়েছে ৬ লাখ ৭২ হাজার ৬১৮ টাকা।&lt;/p&gt;\r\n\r\n&lt;p&gt;সৌদি আরবের সঙ্গে হজ চুক্তি অনুযায়ী, এ বছর বাংলাদেশ থেকে ১ লাখ ২৭ হাজার ১৯৮ জন হজ পালন করার সুযোগ পাবেন। এর মধ্যে সরকারি ব্যবস্থাপনায় যাবেন ১৫ হাজার হজযাত্রী। এ বছর বয়সের সর্বোচ্চ সীমার শর্ত তুলে দেওয়া হয়েছে, অর্থাৎ ৬৫ বছরের বেশি বয়সী ব্যক্তিরাও হজ পালন করতে পারবেন। চাঁদ দেখা সাপেক্ষে আগামী ২৭ জুন (৯ জিলহজ) পবিত্র হজ অনুষ্ঠিত হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এদিকে সৌদি আরব সরকার এ বছর হজযাত্রীদের ভিসার ক্ষেত্রে বায়োমেট্রিক তথা আঙুলের ছাপপদ্ধতি চালু করতে যাচ্ছে। এ জন্য হজযাত্রীদের ভিসা করার জন্য পাসপোর্ট আপাতত নিজের কাছে রাখতে বলা হয়েছে। বায়োমেট্রিক পদ্ধতিতে ভিসার আবেদন সাবমিট করার জন্য বাংলাদেশের ধর্মবিষয়ক মন্ত্রণালয় প্রয়োজনীয় প্রস্তুতি নিচ্ছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/080323647b5f19f8f17ac.webp', 'এ বছর বাংলাদেশ থেকে ১ লাখ ২৭ হাজার ১৯৮ জন হজ পালন করার সুযোগ পাবেন', 'https://www.samojug.com/', 0, 0, '0', '2023-03-08 12:52:22', 0, 1),
(224, 'samojugc_datatable', 5, 66, 'নারীর অধিকারের কথা আছে সুরা নিসায়', 'নারীর অধিকারের কথা আছে সুরা নিসায়', '&lt;p&gt;পবিত্র কোরআনের চতুর্থ সুরার নাম সুরা নিসা। নিসা মানে স্ত্রীজাতি। এই সুরায় ২৪ রুকু, ১৭৬ আয়াত। তৃতীয় হিজরিতে ওহুদের যুদ্ধের পর এটি অবতীর্ণ হয়। এতে উত্তরাধিকার এবং এতিমের অধিকার বর্ণিত রয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;পঞ্চম হিজরিতে মুসতালিকের যুদ্ধে পানির অভাব দেখা দিলে তায়াম্মুমের আদেশ জারি হয়। এ সুরায় মুসলমানদের চরিত্রের কথা বর্ণিত হয়েছে। তবে এ সুরায় নারীদের বিধানের বর্ণনা বেশি বলে এর নাম হয়েছে সুরা নিসা।&lt;/p&gt;\r\n\r\n&lt;p&gt;রাসুল (সা.) মদিনায় হিজরত করে আসার পর প্রাথমিক বছরগুলোতে সুরা নিসা নাজিল হয়। এর বেশির ভাগ অংশই নাজিল হয় বদরের যুদ্ধের পরে।&lt;/p&gt;\r\n\r\n&lt;blockquote&gt;নারী ও পরিবার হলো একটি রাষ্ট্রের সবচেয়ে ক্ষুদ্র একক, কিন্তু একটি সুসংগঠিত ও প্রধান বনিয়াদ। সুরাটিতে এ প্রসঙ্গে বিধান দেওয়া হয়েছে। জাহিলি যুগে নারীদের প্রতি যেসব অবিচার চলত, সেগুলোর মূলোৎপাটন করা হলো। এ ছাড়া এমন বহু বিধিবিধান দেওয়া হলো, যার কারণে সুরা অত্যন্ত গুরুত্বপূর্ণ হয়ে উঠল।&lt;/blockquote&gt;\r\n\r\n&lt;p&gt;মদিনায় একটি ইসলামি রাষ্ট্রের গোড়াপত্তন হওয়ার পর নবগঠিত রাষ্ট্রের যাবতীয় কাঠামো প্রতিষ্ঠা পেতে শুরু করে। মুসলমানদের নিজেদের ইবাদত, আচরণ ও সমাজব্যবস্থা নিয়ে নানা বিধানের প্রয়োজন দেখা দেয়। ইসলামের অগ্রযাত্রাকে ব্যাহত করার জন্য শত্রুপক্ষ তাদের সর্বশক্তি নিয়োগ করার চেষ্টা করছে। নিজেদের ভৌগোলিক ও ভাবগত সীমারেখা সংরক্ষণের জন্য মুসলমানরা সে সময় নিত্যনতুন সমস্যার মুখোমুখি। ঠিক এমন সময়ই সুরা নিসা নাজিল হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;নারী ও পরিবার হলো একটি রাষ্ট্রের সবচেয়ে ক্ষুদ্র একক, কিন্তু একটি সুসংগঠিত ও প্রধান বনিয়াদ। সুরাটিতে এ প্রসঙ্গে বিধান দেওয়া হয়েছে। জাহিলি যুগে নারীদের প্রতি যেসব অবিচার চলত, সেগুলোর মূলোৎপাটন করা হলো। এ ছাড়া এমন বহু বিধিবিধান দেওয়া হলো, যার কারণে সুরা অত্যন্ত গুরুত্বপূর্ণ হয়ে উঠল।&lt;/p&gt;\r\n\r\n&lt;p&gt;সুরাটির সূচনায় তাকওয়া অর্জনের আহ্বান করা হয়েছে, আর পুরো সুরাব্যাপী তার ব্যাখ্যা করা হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;কিছু বিধান&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রাপ্তবয়স্ক হলে এতিমদের অর্থ-সম্পদ ফিরিয়ে দিতে হবে। তা আত্মসাৎ করা যাবে না। খারাপ মাল দিয়ে তাদের ভালো মাল নিজে নেওয়া যাবে না। এতিম ছেলে ও মেয়ে উভয়ের সম্পদের ক্ষেত্রেই এ বিধান প্রযোজ্য।&lt;/p&gt;\r\n\r\n&lt;p&gt;একসঙ্গে চারজন নারীকে বিয়ে করার সুযোগ থাকলেও শর্ত হচ্ছে স্বামীকে তাদের অধিকার আদায়ে সক্ষম হতে হবে। তাদের সঙ্গে ন্যায়সঙ্গত আচরণ করতে হবে। আর নিখুঁতভাবে তা না পারলে একজন স্ত্রী নিয়ে সন্তুষ্টচিত্তে সংসার করতে হবে। ইসলামের আগেও একাধিক নারীকে বিয়ের প্রচলন ছিল, তবে স্ত্রীর সংখ্যা সুনির্দিষ্ট ছিল না। ইসলাম ও সংখ্যা নির্দিষ্ট করে দেয় এবং কিছু কঠোর শর্ত আরোপ করে। বস্তুত কড়ায়&amp;ndash;গণ্ডায় হিসাব করে শর্তগুলো মেনে চলা এতই দুরুহ যে প্রকৃতপক্ষে এক স্ত্রীর সংসারই নিরাপদ। নইলে আল্লাহর দেওয়া শর্ত যেকোনো সময় লঙ্ঘন ফেলার আশঙ্কা থাকে।&lt;/p&gt;\r\n\r\n&lt;p&gt;জাহিলি যুগে আরবে অবাধে বহুসংখ্যক বিয়ে করার প্রচলন ছিল। চারটি পর্যন্ত বিয়ে করার অনুমতি দেওয়া হলেও একটির বেশি বিয়ে করা শর্তসাপেক্ষ করা হয়েছে, যাতে স্ত্রীদের মধ্যে সুবিচার করতে পারার ব্যাপারে কোনো ভেদ না ঘটে। বিয়ে করার জন্য স্ত্রীকে মোহর প্রদান করা ফরজ। বিয়ের আগেই মোহর দিতে হবে। তবে স্ত্রীর সম্মতিক্রমে পরেও দেওয়া যেতে পারে। ইসলামে ওয়ারিশ পুরুষ ও নারী সবাই পাবে। বণ্টনকালে তারা উপস্থিত হলে বিরক্তি প্রকাশ করতে নিষেধ করা হয়েছে। এর কারণ ইসলাম ভরণপোষণ, অর্থাৎ অন্ন, বস্ত্র, শিক্ষা, চিকিৎসা, বাসস্থান এবং বিয়ের মোহরানাসহ যাবতীয় ব্যয়ভার বহনের দায়িত্ব পুরুষের ওপর অর্পণ করা হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;নারীদের হক আদায় করা অবশ্য কর্তব্য (ফরজ)। ইসলামের আগে নারীদের ওয়ারিশ সম্পত্তি বা&amp;nbsp;মিরাস দেওয়া হতো না।&amp;nbsp;আরবদের মধ্যে প্রবাদ ছিল, যারা ঘোড়ায় সওয়ার হতে পারে না, তরবারি বহন করতে পারে না, দুশমনের মোকাবেলা করতে পারে না, তাদের সম্পত্তি দেওয়া হবে না। এ কারণে শিশু ও নারীদের মিরাস থেকে বঞ্চিত করা করত। ইসলাম নারীদের ওপর এই জুলুম পরিত্যাগ করে শিশু ও নারীদেরও&amp;nbsp;সম্পত্তির হকদার বলে সাব্যস্ত করেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;নারীদের সঙ্গে সদাচরণ এবং পরিত্যক্ত সম্পত্তিতে তাদের অংশ সংক্রান্ত আলোচনার পর ওইসব নারীর আলোচনা করা হয়েছে, আত্মীয়তা, বৈবাহিক বা দুধসম্পর্কের কারণে যাদেরকে বিয়ে করা হারাম। (আয়াত: ২৩-২৪)&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/080323ff95466ed02966d.webp', 'ছবি: সংগৃহীত', 'https://www.samojug.com/', 0, 0, '0', '2023-03-08 13:02:38', 0, 1),
(225, 'samojugc_datatable', 5, 67, 'সহকারী জজ নিয়োগের আবেদন শেষ কাল, প্রিলিমিনারি ১৮ মার্চ', 'সহকারী জজ নিয়োগের আবেদন শেষ কাল, প্রিলিমিনারি ১৮ মার্চ', '&lt;p&gt;বাংলাদেশ জুডিশিয়াল সার্ভিসের প্রবেশ পথ সহকারী জজ নিয়োগের জন্য ষোড়শ বাংলাদেশ জুডিশিয়াল সার্ভিস (১৬ শ বিজেএস) পরীক্ষার মাধ্যমে ১০০ জন নেওয়া হবে। তবে বিধি অনুযায়ী পদের সংখ্যা বাড়তে বা কমতে পারে। যাঁরা এখনো আবেদন করেননি, তাঁরা দ্রুত আবেদন করতে পারেন। কারণ, আগামীকাল বৃহস্পতিবার আবেদন করার শেষ সময়। আবেদনকারী প্রার্থীদের প্রিলিমিনারি পরীক্ষা ১৮ মার্চ অনুষ্ঠিত হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;আবেদনের শিক্ষাগত যোগ্যতা&lt;/strong&gt;&lt;br /&gt;\r\nসহকারী জজ পদে আবেদনের জন্য কোনো স্বীকৃত বিশ্ববিদ্যালয় থেকে আইন বিষয়ে চার বছর মেয়াদি স্নাতক (সম্মান) অথবা আইন বিষয়ে স্নাতক অথবা কোনো স্বীকৃত বিদেশি বিশ্ববিদ্যালয় থেকে আইন বিষয়ে তিন বছর মেয়াদি স্নাতকসহ স্নাতকোত্তর ডিগ্রি থাকতে হবে। স্নাতক ও স্নাতকোত্তর স্তরে কমপক্ষে দ্বিতীয় শ্রেণি বা সমমানের সিজিপিএ থাকতে হবে। আইন বিষয়ে স্নাতক অথবা স্নাতক (সম্মান) অথবা স্নাতকোত্তর পরীক্ষায় অংশ নেওয়া প্রার্থীরাও আবেদন করতে পারবেন। তবে পরীক্ষা আবেদনপত্র জমা দেওয়ার শেষ তারিখে বা এর আগে শেষ হতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;প্রার্থীর জাতীয়তা&lt;/strong&gt;&lt;br /&gt;\r\nপ্রার্থীকে বাংলাদেশের নাগরিক অথবা বাংলাদেশের স্থায়ী বাসিন্দা হতে হবে। প্রার্থী যদি এমন কোনো ব্যক্তিকে বিয়ে করেন অথবা বিয়ে করার জন্য প্রতিশ্রুতিবদ্ধ হন, যিনি বাংলাদেশের নাগরিক নন, তাহলে তিনি আবেদনের অযোগ্য বলে বিবেচিত হবেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;যেভাবে আবেদন&lt;/strong&gt;&lt;br /&gt;\r\nপ্রার্থীকে বাংলাদেশ জুডিশিয়াল সার্ভিস কমিশনের &lt;a href=&quot;http://www.bjsc.gov.bd/&quot; target=&quot;_blank&quot;&gt;ওয়েবসাইটে&lt;/a&gt; প্রবেশ করে কমিশনের নির্ধারিত বিজেএসসি ফরম পূরণ করে অনলাইন নিবন্ধন কার্যক্রম শেষ করতে হবে। এরপর আবেদন ফি জমা দিতে হবে। সফলভাবে আবেদন জমা হওয়ার পর টেলিটক নম্বর থেকে পরীক্ষা ফি বাবদ ১ হাজার ২০০ টাকা জমা দিতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;প্রিলিমিনারি পরীক্ষা&lt;/strong&gt;&lt;br /&gt;\r\nসব প্রার্থীকে প্রথমে ১০০ নম্বরের এমসিকিউ পদ্ধতিতে প্রাথমিক পরীক্ষায় (প্রিলিমিনারি পরীক্ষা) অংশগ্রহণ করতে হবে। এ পরীক্ষায় মোট ১০০টি এমসিকিউ থাকবে। প্রতিটি এমসিকিউয়ের মান ১ নম্বর। তবে প্রতিটি এমসিকিউয়ের ভুল উত্তরের জন্য শূন্য দশমিক ২৫ নম্বর কাটা হবে। লিখিত পরীক্ষায় অংশগ্রহণের প্রাক্&amp;ndash;যোগ্যতা হিসেবে প্রাথমিক পরীক্ষায় উত্তীর্ণ হতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রাথমিক পরীক্ষায় ন্যূনতম পাস নম্বর ৫০। প্রাথমিক পরীক্ষায় সাধারণ বাংলা, সাধারণ ইংরেজি, বাংলাদেশ ও আন্তর্জাতিক বিষয়, সাধারণ গণিত, দৈনন্দিন বিজ্ঞান, বুদ্ধিমত্তা ও আইন বিষয়ের ওপর প্রশ্ন করা হয়। প্রাথমিক পরীক্ষায় প্রাপ্ত নম্বর প্রার্থীর লিখিত বা মৌখিক পরীক্ষায় প্রাপ্ত নম্বরের সঙ্গে যোগ করা হবে না।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;লিখিত পরীক্ষা&lt;/strong&gt;&lt;br /&gt;\r\nলিখিত পরীক্ষা হবে ১০০০ নম্বরের। যেসব পরীক্ষার্থী প্রাথমিক পরীক্ষায় উত্তীর্ণ হবেন, শুধু তাঁরাই লিখিত পরীক্ষায় অংশগ্রহণ করতে পারবেন। গড়ে ৫০ শতাংশ নম্বর পেলে একজন পরীক্ষার্থী লিখিত পরীক্ষায় উত্তীর্ণ হয়েছেন বলে বিবেচিত হবেন। কোনো পরীক্ষার্থী কোনো বিষয়ে ৩০ নম্বরের কম পেলে তিনি লিখিত পরীক্ষায় অকৃতকার্য বলে বিবেচিত হবেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;মৌখিক পরীক্ষা&lt;/strong&gt;&lt;br /&gt;\r\nলিখিত পরীক্ষায় উত্তীর্ণ পরীক্ষার্থীদের ১০০ নম্বরের মৌখিক পরীক্ষায় অংশগ্রহণ করতে হবে। মৌখিক পরীক্ষার পাস নম্বর ৫০।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;পরীক্ষার সময়সূচি&lt;/strong&gt;&lt;br /&gt;\r\nবিজ্ঞপ্তিতে বলা হয়েছে, প্রিলিমিনারি পরীক্ষা ১৮ মার্চ অনুষ্ঠিত হবে। প্রাথমিক, লিখিত ও মৌখিক পরীক্ষার কেন্দ্র এবং বিস্তারিত সময়সূচি কমিশনের ওয়েবসাইটে ও জাতীয় দৈনিক পত্রিকায় যথাসময়ে প্রকাশ করা হবে। সঠিকভাবে আবেদন করার পর প্রার্থীরা ইউজার আইডি ব্যবহার করে ১৪ মার্চ থেকে প্রবেশপত্র ডাউনলোড করতে পারবেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/08032340b974e02b4c043.webp', 'মডেল: ইয়াসফি ও হাদী', 'https://www.samojug.com/', 0, 0, '0', '2023-03-08 13:06:20', 0, 1);
INSERT INTO `samojugc_news_datatable` (`id`, `datatable`, `admin_id`, `category_id`, `title`, `keywords`, `description`, `thumbnail`, `teaser`, `link`, `liked`, `unliked`, `watched`, `date`, `topnews`, `status`) VALUES
(226, 'samojugc_datatable', 5, 67, 'নেভাল একাডেমিতে চাকরির সুযোগ', 'নেভাল একাডেমিতে চাকরির সুযোগ', '&lt;p&gt;বাংলাদেশ নেভাল একাডেমি, পতেঙ্গা, চট্টগ্রামের জন্য সম্পূর্ণ অস্থায়ী ভিত্তিতে জনবল নিয়োগের বিজ্ঞপ্তি প্রকাশ করেছে। এই প্রতিষ্ঠানে সাব&amp;ndash;অ্যাসিস্ট্যান্ট ইঞ্জিনিয়ার পদে লোক নেওয়া হবে। আগ্রহী প্রার্থীদের ডাকযোগে বা সরাসরি আবেদনপত্র পৌঁছাতে হবে।&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;&lt;strong&gt;পদের নাম:&lt;/strong&gt; সাব&amp;ndash;অ্যাসিস্ট্যান্ট ইঞ্জিনিয়ার (শিপ ডিজাইন স্টুডিও)&lt;br /&gt;\r\n	&lt;strong&gt;পদসংখ্যা:&lt;/strong&gt; ১&lt;br /&gt;\r\n	&lt;strong&gt;যোগ্যতা:&lt;/strong&gt; সরকার স্বীকৃত যেকোনো প্রতিষ্ঠান থেকে নেভাল আর্কিটেকচার অ্যান্ড মেরিন ইঞ্জিনিয়ারিং/ শিপ ডিজাইন/ শিপ বিল্ডিং&amp;ndash;সম্পর্কিত বিষয়ে স্নাতক বা চার বছর মেয়াদি ডিপ্লোমা ডিগ্রি থাকতে হবে। প্রার্থীর নেভাল আর্কিটেকচার অ্যান্ড মেরিন ইঞ্জিনিয়ারিং/শিপ ডিজাইন/ শিপ বিল্ডিংয়ের ওপর ধারণা থাকতে হবে। অটোক্যাড/সলিড ওয়ার্কসে দক্ষ এবং ব্যবহারিক ক্লাস পরিচালনায় অভিজ্ঞ ব্যক্তিদের অগ্রাধিকার দেওয়া হবে।&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;&lt;strong&gt;বয়স:&lt;/strong&gt; ২০২৩ সালের ৩১ মার্চ তারিখে সর্বোচ্চ ৩০ বছর। তবে অভিজ্ঞ প্রার্থীদের ক্ষেত্রে বয়স শিথিলযোগ্য।&lt;br /&gt;\r\n	&lt;strong&gt;বেতন:&lt;/strong&gt; স্নাতক ডিগ্রিধারীদের ২৬,০০০ টাকা এবং ডিপ্লোমা ডিগ্রিধারীদের ২০,০০০ টাকা।&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;&lt;strong&gt;আবেদন যেভাবে&lt;/strong&gt;&lt;br /&gt;\r\n	নাম, পিতা&amp;ndash;মাতার নাম, বর্তমান ও স্থায়ী ঠিকানা, জন্মতারিখ, শিক্ষাগত যোগ্যতা, জাতীয়তা ও অভিজ্ঞতার বর্ণনাসহ পূর্ণ জীবনবৃত্তান্ত এবং পাসপোর্ট সাইজের চার কপি সত্যায়িত ছবি; সব ধরনের শিক্ষাগত যোগ্যতা, অভিজ্ঞতা, নাগরিকত্ব সনদপত্র ও জাতীয় পরিচয়পত্রের সত্যায়িত অনুলিপি এবং প্রথম শ্রেণির সরকারি কর্মকর্তা কর্তৃক চারিত্রিক সনদপত্রসহ আবেদনপত্র পাঠাতে হবে।&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;&lt;strong&gt;আবেদন ফি&lt;/strong&gt;&lt;br /&gt;\r\n	অধিনায়ক, বাংলাদেশ নেভাল একাডেমি, পতেঙ্গা, চট্টগ্রামের (সঞ্চয়ী হিসাব নম্বর ০০২৯-০৩১০০০৯৬৫৪ ট্রাস্ট ব্যাংক লিমিটড, নেভাল বেস শাখা, চট্টগ্রাম) অনুকূলে ৩০০ টাকার ব্যাংক ড্রাফট/ পে&amp;ndash;অর্ডার করতে হবে। ব্যাংক ড্রাফট/পে-অর্ডারের মূল কপি আবেদনপত্রের সঙ্গে সংযুক্ত করতে হবে।&lt;/p&gt;\r\n\r\n	&lt;p&gt;&lt;strong&gt;আবেদনপত্র পাঠানোর ঠিকানা:&lt;/strong&gt; কমানড্যান্ট, বাংলাদেশ নেভাল একাডেমি, পতেঙ্গা, চট্টগ্রাম।&lt;/p&gt;\r\n\r\n	&lt;p&gt;&lt;strong&gt;আবেদনের শেষ তারিখ:&lt;/strong&gt; ৩০ মার্চ, ২০২৩।&lt;/p&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;', 'extra/resources/uploads/samojugc/img/080323118021ba0c27e38.webp', 'প্রতীকী ছবি', 'https://www.samojug.com/', 0, 0, '0', '2023-03-08 13:11:33', 0, 1),
(227, 'samojugc_datatable', 5, 56, 'জোনায়েদ সাকির অভিযোগ, সিদ্দিকবাজারে উদ্ধারকাজে সরকার ব্যর্থ হয়েছে', 'জোনায়েদ সাকির অভিযোগ, সিদ্দিকবাজারে উদ্ধারকাজে সরকার ব্যর্থ হয়েছে', '&lt;p&gt;রাজধানীর সিদ্দিকবাজারে বিস্ফোরণের পর উদ্ধারকাজের সমন্বয়ে সরকার ব্যর্থতার পরিচয় দিয়েছে বলে মন্তব্য করেন গণসংহতি আন্দোলনের প্রধান সমন্বয়ক জোনায়েদ সাকি। তিনি বলেন, উদ্ধারকাজে সরকারের প্রকৌশল বিভাগগুলোর ফায়ার সার্ভিসকে সহযোগিতা করার দায়িত্ব থাকলেও করেনি। এটা একটা ব্যর্থতা। &amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;বুধবার বেলা আড়াইটার দিকে সিদ্দিকবাজারে বিস্ফোরণে ক্ষতিগ্রস্ত ভবনের উদ্ধারকাজ পরিদর্শন গিয়ে সাংবাদিকদের সঙ্গে আলাপের সময় জোনায়েদ সাকি এসব কথা বলেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;একের পর এ ধরনের বিস্ফোরণ ও এতে নিরীহ নিরাপরাধ নাগরিকদের নিরাপত্তা বিঘ্নিত হওয়াটা সরকারের ব্যর্থতা দাবি করে জোনায়েদ সাকি বলেন, &amp;lsquo;অনেক জিনিস পুরোনো হয়ে গেছে। নতুন ব্যবস্থাপনায় পুরোনো ভবন ভাঙা দরকার। নিরাপদ ইউটিলিটি সার্ভিস দরকার। সরকার এই জায়গায় ব্যর্থতার পরিচয় দিয়েছে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;জোনায়েদ সাকি বলেন, &amp;lsquo;এটা (বিস্ফোরণ) তো এখন জরুরি পরিস্থিতি। সেখানে তাঁদের আরও সক্ষম হওয়া দরকার ছিল। নাহলে কেন তাঁদের জাতীয় প্রতিষ্ঠান হিসেবে বিবেচনা করব। বিস্ফোরণে আহত ব্যক্তিদের যথাযথ চিকিৎসা, ক্ষতিপূরণ ও পুনর্বাসন দরকার। এসব সম্পর্কে সরকারের উদ্যোগ কী সেটি জানতে চাই।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;বিস্ফোরণের ঘটনায় আওয়ামী লীগের সাধারণ সম্পাদক ওবায়দুল কাদেরের বক্তব্যের সমালোচনা করেন জোনায়েদ সাকি। তিনি বলেন, &amp;lsquo;এই বিস্ফোরণে নাকি রাজনৈতিক অভিসন্ধি রয়েছে। কোনো বিরোধী মহল নাকি রাজনৈতিকভাবে ব্যর্থ হয়ে সহিংসতার ঘটনা ঘটাচ্ছে। এ ধরনের দায়িত্বহীন বক্তব্য আশা করা যায় না।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0903231504b88dcfe176c.webp', 'গণসংহতি আন্দোলনের প্রধান সমন্বয়ক জোনায়েদ সাকি', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-09 06:26:19', 0, 1),
(228, 'samojugc_datatable', 5, 56, '৩০ বছর পর কক্সবাজার শহর যুবলীগের সম্মেলন আজ, দুই পদে ৩৪ প্রার্থী', '৩০ বছর পর কক্সবাজার শহর যুবলীগের সম্মেলন আজ, দুই পদে ৩৪ প্রার্থী', '&lt;p&gt;দীর্ঘ ৩০ বছর পর কক্সবাজার শহর যুবলীগের ত্রিবার্ষিক সম্মেলন ও কাউন্সিল আজ বৃহস্পতিবার অনুষ্ঠিত হতে যাচ্ছে। সম্মেলনকে ঘিরে নেতা-কর্মীরা উজ্জীবিত হলেও গোলযোগের আশঙ্কাও রয়েছে। সভাপতি পদে পাঁচজন এবং সাধারণ সম্পাদক পদের জন্য ২৯ জন জীবনবৃত্তান্ত জমা দিয়েছেন বলে দলীয় সূত্রে জানা গেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;কক্সবাজার শহরের পাবলিক লাইব্রেরির শহীদ দৌলত ময়দানে আজ বেলা ১১টায় প্রথম অধিবেশনে আলোচনা এবং বিকেলে কাউন্সিল অধিবেশন হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;৩০ বছর পর সম্মেলন হওয়ায় নেতা-কর্মীদের মধ্যে চাঙাভাব ফিরে এসেছে। শহীদ দৌলত ময়দান ছাড়াও শহরের বিভিন্ন সড়ক-অলিগলি সভাপতি, সাধারণ সম্পাদক প্রার্থীদের পোস্টার, ব্যানার-ফেস্টুন ও বিলবোর্ডে ভরে গেছে। তৃণমূলের নেতা-কর্মীরা গোপন ভোটে নেতা নির্বাচন চান। কিন্তু একটি পক্ষ চাইছে, নতুন-পুরোনো মিলে কমিটি হোক।&lt;/p&gt;\r\n\r\n&lt;p&gt;সম্মেলনের প্রথম অধিবেশনে প্রধান অতিথি থাকার কথা রয়েছে কেন্দ্রীয় আওয়ামী লীগের ধর্মবিষয়ক সম্পাদক সিরাজুল মোস্তফার। বিশেষ অতিথি থাকবেন জেলা আওয়ামী লীগের সভাপতি ফরিদুল ইসলাম চৌধুরী ও সাধারণ সম্পাদক কক্সবাজার পৌরসভার মেয়র মুজিবুর রহমান। কেন্দ্রীয় যুবলীগের যুগ্ম সাধারণ সম্পাদক শেখ ফজলে নাঈম অতিথি হিসেবে কাউন্সিল অধিবেশন সম্পন্ন করবেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;সম্মেলনে যোগ দিতে গতকাল বুধবার কক্সবাজারে পৌঁছেছেন কেন্দ্রীয় যুবলীগের যুগ্ম সাধারণ সম্পাদক শেখ ফজলে নাঈম ও সাংগঠনিক সম্পাদক মো. সাইফুর রহমান সোহাগ। সন্ধ্যায় কক্সবাজার প্রেসক্লাবে সংবাদ সম্মেলন করে শেখ ফজলে নাঈম বলেন, দীর্ঘদিন ধরে সম্মেলন না হওয়ায় নেতা-কর্মীদের মধ্যে হতাশা বিরাজ করছে। মেধাবী অনেক নেতা-কর্মী রাজনীতি থেকে ছিটকে পড়ছেন। এখন নতুন নেতৃত্ব সৃষ্টি করতে সম্মেলন হচ্ছে। তাঁরা চান, সৎ ও যোগ্যরা দলের নেতৃত্বে আসুক। তবে চিহ্নিত ইয়াবা ব্যবসায়ী, সন্ত্রাসী, দখলবাজ, দাগি অপরাধীদের কমিটিতে ঠাঁই হবে না। গঠনতন্ত্র অনুযায়ী কমিটি হবে। প্রধানমন্ত্রীর ২০৪১ ভিশন বাস্তবায়নে স্মার্ট নাগরিক তৈরিতে যুবলীগকে অগ্রণী ভূমিকা রাখতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;জেলা যুবলীগের সভাপতি সোহেল আহমদ বাহাদুর জানান, শহর যুবলীগের সম্মেলন শেষে ১০ মার্চ রামু উপজেলা, ১১ মার্চ কুতুবদিয়া উপজেলা, ১২ মার্চ উখিয়া উপজেলা ও ১৩ মার্চ মহেশখালী উপজেলা যুবলীগের সম্মেলন অনুষ্ঠিত হবে। যুবলীগকে তৃণমূল পর্যায়ে ঢেলে সাজাতে এ সম্মেলন ভূমিকা রাখবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;দলীয় সূত্র জানায়, সভাপতি পদে ৫ জন এবং সাধারণ সম্পাদক পদের জন্য ২৯ জন নেতা কেন্দ্রীয় নেতার কাছে জীবনবৃত্তান্ত জমা দিয়েছেন। সভাপতি পদপ্রত্যাশীরা হলেন শোয়েব ইফতেখার চৌধুরী, ডালিম বড়ুয়া, দিদারুল ইসলাম, মুমিনুল হক ও হেলাল উদ্দিন। ইফতেখার চৌধুরী বর্তমান কমিটির আহ্বায়ক ও ডালিম বড়ুয়া যুগ্ম আহ্বায়ক।&lt;/p&gt;\r\n\r\n&lt;p&gt;অন্যদিকে সাধারণ সম্পাদক প্রার্থীদের মধ্যে আলোচনায় আছেন কয়েকজন। তাঁরা হলেন মারুফ ইবনে হোসাইন, শাহেদ মো. এমরান, ইব্রাহিম আজাদ, এস এম জসিম উদ্দিন, মোনাফ সিকদার, ইসমাইল সাজ্জাদ প্রমুখ।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/090323526580cd193f728.webp', 'কক্সবাজার শহর যুবলীগের ত্রিবার্ষিক সম্মেলনকে সামনে রেখে সংবাদ সম্মেলনে বক্তব্য দেন যুবলীগের যুগ্ম সাধারণ সম্পাদক শেখ ফজলে নাঈম। গতকাল সন্ধ্যায় কক্সবাজার প্রেসক্লাবে', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-09 06:31:05', 0, 1),
(229, 'samojugc_datatable', 5, 58, 'সিদ্দিকবাজারে বিস্ফোরণ: বেসমেন্টে দেহাবশেষ মিলেছে: ফায়ার সার্ভিস', 'সিদ্দিকবাজারে বিস্ফোরণ: বেসমেন্টে দেহাবশেষ মিলেছে: ফায়ার সার্ভিস', '&lt;p&gt;গুলিস্তানের সিদ্দিকবাজারে বিস্ফোরণে ক্ষতিগ্রস্ত কুইন স্যানিটারি মার্কেটের বেসমেন্টে দেহাবশেষের কিছু অংশ পাওয়া গেছে বলে জানিয়েছে ফায়ার সার্ভিস। আজ বৃহস্পতিবার বেলা সাড়ে ১১টার দিকে বেসমেন্টের সামনের এক পাশে এই দেহাবশেষ পাওয়া যায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;ফায়ার সার্ভিস ট্রেনিং কমপ্লেক্সের ভাইস প্রিন্সিপাল আনোয়ারুল হক সাংবাদিকদের বলেন, উদ্ধারকারীরা বেজমেন্টের ভেতরে ঢুকেছে। আমরা সাসপেক্ট করছি, এখানে ভিক্টিম থাকার সম্ভবনা রয়েছে। নিখোঁজের আত্মীয়স্বজন যেখানে ভিক্টিম বসতো (দোকানে) বলেছে, সেই জায়গাতেই উদ্ধারকারীরা প্রবেশ করেছে। উদ্ধারকারীরা ম্যানুয়ালি সরাচ্ছে। সেখানে অবজেক্ট (দেহাবশেষ) আছে। এটি কার এটা নিশ্চিত হওয়া যায়নি।&lt;/p&gt;\r\n\r\n&lt;p&gt;আনোয়ারুল হক বলেন, সকাল থেকে উদ্ধার অভিযান শুরু করেছি। উদ্ধার অভিযানে ভারী যন্ত্রপাতি ব্যবহার করতে পারছি না। ছোট ছোট জিনিস আস্তে আস্তে অপসারণ করার চেষ্টা করছি। আমরা এসে দেখি বেজমেন্টে ৩ থেকে ৪ ফিট পানি জমে গিয়েছিল। পরবর্তীতে পাম্প দিয়ে পানি অপসারণ শুরু করেছি।&lt;/p&gt;\r\n\r\n&lt;p&gt;আনোয়ারুল হক বলেন, সবচেয়ে বড় সমস্যা দেখা দিচ্ছে ওয়াসার পানির লাইন রয়েছে এখানে, যার কারণে পানি ভরে যাচ্ছে। এখানে আমাদের পাম্প দিয়ে পানি অপসারণ করছি। ওয়াসাকে বলেছি, কিছুক্ষণের মধ্যেই চলে আসবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;আজ সকাল সাড়ে ৮টা থেকে তৃতীয় দিনের উদ্ধার কার্যক্রম শুরু করেন ফায়ার সার্ভিসের কর্মীরা। সাততলা ভবনের বেসমেন্টে জমে থাকা পানি অপসারণ শুরু করেন তারা।&lt;/p&gt;\r\n\r\n&lt;p&gt;গত মঙ্গলবার বিস্ফোরণের পর গতকাল বুধবার পর্যন্ত উদ্ধার অভিযান শেষ করতে পারেননি ফায়ার সার্ভিসের কর্মীরা। ঝুঁকিপূর্ণ ভবনটির বেজমেন্টে উদ্ধার অভিযান চালাতে প্রয়োজন শোরিং (ঠেক দেওয়ার) নামের বিশেষ যন্ত্রের। যা ফায়ার সার্ভিসের কাছে নেই।&lt;/p&gt;\r\n\r\n&lt;p&gt;আজকের উদ্ধার কার্যক্রমে কোনো ভারী যন্ত্র ব্যবহার করা হচ্ছে না। ফায়ার সার্ভিসের কর্মীরা বালতিতে করে বেসমেন্টের পানি অপসারণ করছেন৷ ভবনের ভাঙা অংশও বালতিতে ভরে বের করে আনছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;গত মঙ্গলবার বিকেল পৌনে পাঁচটার দিকে গুলিস্তানে বিআরটিসির বাস কাউন্টারের কাছে সিদ্দিকবাজারে কুইন স্যানিটারি মার্কেট হিসেবে পরিচিত সাততলা ভবনে বিস্ফোরণ ঘটে। এতে পাশের সাততলা ও পাঁচতলা দুটি ভবনও ক্ষতিগ্রস্ত হয়। কুইন মার্কেটের সাততলা ভবনটির বেজমেন্ট, প্রথম ও দ্বিতীয় তলা বিধ্বস্ত হয়। আর পাঁচতলা ভবনের নিচতলা ক্ষতিগ্রস্ত হয়েছে। এ ভবনের দ্বিতীয় থেকে পঞ্চম তলা পর্যন্ত ব্র্যাক ব্যাংকের কার্যালয়। রাজধানীর সিদ্দিকবাজারে বিস্ফোরণের ঘটনায় এখন পর্যন্ত ২১ জনের মৃত্যু হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/090323574efd886bba42f.webp', 'কোনো ভারী যন্ত্র ব্যবহার না করে গুলিস্তানের সিদ্দিকবাজারে বিস্ফোরণে ক্ষতিগ্রস্ত কুইন স্যানিটারি মার্কেটে তৃতীয় দিনের উদ্ধার কার্যক্রম শুরু করেছেন ফায়ার সার্ভিসের কর্মীরা', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-09 06:34:27', 0, 1),
(230, 'samojugc_datatable', 5, 58, 'পরিবারটির বেড়াতে যাওয়ার আনন্দ রূপ নিল বেদনায়', 'পরিবারটির বেড়াতে যাওয়ার আনন্দ রূপ নিল বেদনায়', '&lt;p&gt;&amp;lsquo;ছেলেমেয়ের আবদার ছিল পটুয়াখালীর কুয়াকাটা বেড়াতে যাবে। বেড়াতে এসে মেয়েকে হারালাম। স্ত্রী এক পা হারিয়ে পঙ্গু হয়েছে। ছেলে আর আমি আহত হয়ে হাসপাতালে।&amp;rsquo; এ কথা বলতে বলতে চোখ দিয়ে পানি গড়িয়ে পড়ছিল রিয়াজুল ইসলামের (৪০)। তিনি তখন পটুয়াখালী মেডিকেল কলেজ হাসপাতালে চিকিৎসাধীন ছিলেন। পরে তাঁকে ও ছেলেকে ঢাকায় পাঠানো হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;রিয়াজুল ইসলাম বলেন, তাদের বাড়ি কুড়িগ্রামের মুক্তারাম গ্রামে। তিনি গাজীপুরের একটি তৈরি পোশাক কারখানায় চাকরি করেন। গত মঙ্গলবার রাতে গাজীপুর চৌরাস্তা থেকে কুয়াকাটাগামী বাসে কুয়াকাটা বেড়াতে রওনা দেন রিয়াজুল ইসলাম (৪০), তাঁর স্ত্রী জেসমিন আক্তার (৩৫), ছেলে জোনাইত (১৩) ও মেয়ে রোজা (১০)।&lt;/p&gt;\r\n\r\n&lt;p&gt;গতকাল বুধবার ভোররাতে বাসটির চালক ঢাকা-কুয়াকাটা মহাসড়কে পটুয়াখালী সেতু পাড় হওয়ার আগে নিয়ন্ত্রণ হারালে সেটি মহাসড়কের পাশে খাদে পড়ে যায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;ঘটনাস্থলে মারা যায় রিয়াজুল ইসলামের মেয়ে রোজা। স্ত্রী গুরুতর আহত হন। স্ত্রীর বাম পা হাঁটু থেকে আলগা হয়ে গেছে। রিয়াজুল ও ছেলে জোনাইত পটুয়াখালী মেডিকেল কলেজ হাসপাতালে ভর্তি হয়েছিলেন। পরে বিকেলে তাদের উন্নত চিকিৎসার জন্য ঢাকা পাঠানো হয়েছে। ওই দুর্ঘটনায় অন্তত ২০ জন আহত হয়েছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;পটুয়াখালী সদর থানার ভারপ্রাপ্ত কর্মকর্তা (ওসি) মো. মনিরুজ্জান বলেন, নিহত শিশুর বাবা রিয়াজুল ইসলাম বাদী হয়ে একটি মামলা করেছেন। বাসটির চালক, চালকের সহকারী ও সুপারভাইজার আহত হয়ে পটুয়াখালী মেডিকেল কলেজ হাসপাতালে চিকিৎসাধীন আছেন। মামলার বিষয়টি তদন্ত করে আইনি ব্যবস্থা নেওয়া হবে। রেকার দিয়ে বাসটি উদ্ধার করে পুলিশি হেফাজতে নেওয়া হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0903233797f07ae5d7dc1.webp', 'পটুয়াখালীতে দুর্ঘটনাকবলিত বাসটি রেকার দিয়ে সরিয়ে নেয় পুলিশ', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-09 06:37:24', 0, 1),
(231, 'samojugc_datatable', 5, 59, 'ড্রোন তুলে আনল ইউক্রেনের পুরোপুরি বিধ্বস্ত এক শহরের চিত্র', 'ড্রোন তুলে আনল ইউক্রেনের পুরোপুরি বিধ্বস্ত এক শহরের চিত্র', '&lt;p&gt;ইউক্রেনে রাশিয়ার অভিযানের এক বছর পার হয়েছে। এখন পর্যন্ত যুদ্ধ বন্ধের কোনো লক্ষণ নেই। ইউক্রেনের বিভিন্ন শহরে রাশিয়ান বাহিনীর হামলায় প্রাণহানি ঘটেছে, ঘরবাড়ি ছেড়ে পালিয়েছেন অসংখ্য মানুষ। একসময়ের জনাকীর্ণ শহরের দৃষ্টিনন্দন ভবনগুলো ধ্বংস হয়ে গেছে। বলতে গেলে একধরনের মৃত্যুপুরীতে পরিণত হয়েছে ইউক্রেনের অনেক শহর। তেমনই একটি শহর দোনেৎস্ক অঞ্চলের মারিনকা।&lt;/p&gt;\r\n\r\n&lt;p&gt;রাশিয়ার সঙ্গে যুদ্ধের শুরুতে ইউক্রেনের অনেকে নিজ শহরের ঘরবাড়ি ছেড়ে পালিয়েছেন। মারাও গেছেন অসংখ্য মানুষ। অবকাঠামোর ক্ষতিও হয়েছে। যুদ্ধের এক বছর পর ইউক্রেনের একাধিক অঞ্চল কঙ্কালসার হয়ে যেন দাঁড়িয়ে আছে। যেমন ইউক্রেনের দোনেৎস্ক অঞ্চলে কোনো অবকাঠামো এখন চোখে পড়ে না। দেশটির পররাষ্ট্র মন্ত্রণালয় দোনেৎস্ক এলাকার কিছু ছবি টুইটারে শেয়ার করেছে। ড্রোনে তোলা ছবিতে দেখা যাচ্ছে, দোনেৎস্কের মারিনকা শহর রীতিমতো ধ্বংসাবশেষে পরিণত হয়েছে। বারবার ক্ষেপণাস্ত্র হামলায় এখন সেখানে ঘরবাড়ির বদলে ধ্বংসাবশেষ পড়ে রয়েছে। এ শহরেই একসময় প্রায় ১০ হাজার মানুষের বাস ছিল। রাশিয়ান বাহিনীর হাতে ধ্বংস হওয়া দোনেৎস্কের এই শহরের চিত্র আঁতকে ওঠার মতোই।&lt;/p&gt;\r\n\r\n&lt;p&gt;ইউক্রেনের পররাষ্ট্র মন্ত্রণালয় টুইটারে দোনেৎস্কের কিছু ছবি প্রকাশ করেছে। ড্রোনের মাধ্যমে তোলা ছবিতে মারিনকা শহরের ভয়াবহ চিত্র ফুটে উঠেছে। একের পর এক হামলায় ধ্বংসস্তূপের মধ্যে গুটিকয় ভবন দাঁড়িয়ে আছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;ছবির ক্যাপশনে লেখা হয়েছে, &amp;lsquo;ইউক্রেনের দোনেৎস্ক অঞ্চলের মারিনকা শহর। একসময় এখানে প্রায় ১০ হাজার মানুষের আবাস ছিল। এটি খুবই শান্তিপূর্ণ শহর ছিল। রাশিয়ার যুদ্ধাপরাধীরা শহরটিকে ধূলিসাৎ করার আগপর্যন্ত এ অবস্থাই ছিল। কিন্তু এখন শহরটির কী অবস্থা, তা জুম করে দেখুন, কিছুই অবশিষ্ট নেই।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;সংবাদমাধ্যমের প্রতিবেদন অনুযায়ী, গত বছরের ফেব্রুয়ারিতে রাশিয়ান বাহিনী ইউক্রেনে হামলা চালানের পর দনবাসের বিচ্ছিন্নতাবাদীরা শহরটির নিয়ন্ত্রণ নেয়। এর এক মাস পর ইউক্রেনের বাহিনী পুনরায় শহরটির নিয়ন্ত্রণ নেয়। কিন্তু ফেব্রুয়ারিতে হামলা শুরুর পর শহরের সব ভবন ও গাছপালা ধ্বংস হয়ে যায়। ফলে শান্তিপূর্ণ শহরটি বসবাসের অযোগ্য হয়ে পড়ে।&lt;/p&gt;\r\n\r\n&lt;p&gt;মারিনকা শহরটি &amp;lsquo;পুরোপুরি&amp;rsquo; ধ্বংস হয়ে গেছে বলে জানিয়েছেন সেখানকার পুলিশপ্রধান আরতেম স্কাস। হামলার পর সেনাবাহিনীর লোকজন ছাড়া সাধারণ মানুষ শহর ছেড়ে চলে যান। তিনি বলেন, &amp;lsquo;এর কারণ হলো, সাধারণ মানুষের পক্ষে সেখানে বসবাস করা কোনোভাবেই সম্ভব ছিল না। এমন কোনো ভবন নেই, যেটি ধ্বংস হয়নি। পুলিশ ও সামরিক প্রশাসন স্থানীয় লোকজনকে উচ্ছেদ করায় এখন আর সেখানে কোনো মানুষ অবশিষ্ট নেই।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/09032380370e79ad21f63.webp', 'রাশিয়ার হামলায় ইউক্রেনের মারিনকা শহর', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-09 06:41:54', 0, 1),
(232, 'samojugc_datatable', 5, 59, 'সাবেক স্ত্রীকে ঘরের কাজের জন্য দিতে হবে ২ কোটি টাকা', 'সাবেক স্ত্রীকে ঘরের কাজের জন্য দিতে হবে ২ কোটি টাকা', '&lt;p&gt;স্ত্রীর ঘরকন্যার কাজেরও একটা আর্থিক মূল্য আছে। আর এবার বিষয়টি স্পষ্ট দেখিয়ে দিলেন স্পেনের একটি আদালত। এক ব্যক্তিকে গত ২৫ বছর বিনা মজুরিতে গৃহস্থালির কাজ করানোর মূল্য হিসেবে তাঁর সাবেক স্ত্রীকে প্রায় ২ কোটি ১৫ লাখ ৩৭ হাজার ১২৬ টাকা (২ লাখ ৪ হাজার ৬২৪ ইউরো) পরিশোধ করার নির্দেশ দিয়েছেন আদালত।&lt;/p&gt;\r\n\r\n&lt;p&gt;গত মঙ্গলবার আদালতের নথিতে দেখা গেছে, সর্বনিম্ন মজুরির ভিত্তিতে আদালত এই মূল্য নির্ধারণ করেছেন। স্পেনের দক্ষিণ আন্দালুসিয়া অঞ্চলের একটি আদালত রুলসহ এই নির্দেশ দেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;১৯৯৫ সালে ওই দম্পতির বিয়ে হয়। তাঁদের দুই কন্যাসন্তান আছে। বিয়ের সময় থেকেই তাঁদের মধ্যে চুক্তি ছিল, প্রত্যেককে নিজে আয় করে চলতে হবে। কিন্তু স্ত্রীকে তিনি বাইরে কাজ করার অনুমতি দেননি এবং বছরের পর বছর তাঁর অর্জিত অর্থ বা সম্পদের কোনো অংশ স্ত্রীকে দেননি।&lt;/p&gt;\r\n\r\n&lt;p&gt;আদালতের রায়ে বলা হয়েছে, বিয়ের পর থেকেই ওই ব্যক্তির স্ত্রী নিজেকে ঘরকন্যার কাজে উৎসর্গ করেছিলেন। সংসারের সবকিছু তিনি একাই দেখাশোনা করতেন। পরে ১৯৯৫ সালের জুন থেকে ২০২০ সালে বিচ্ছেদ পর্যন্ত প্রতিবছর তিনি কী পরিমাণ আয় করতে পারতেন, তার একটি হিসাব দেখানো হয়েছে আইনি নথিপত্রে।&lt;/p&gt;\r\n\r\n&lt;p&gt;২৫ বছরের মজুরি পরিশোধের পাশাপাশি সন্তান লালন&amp;ndash;পালনের জন্য সাবেক স্ত্রীকে মাসিক ভাতা দেওয়ার জন্য ওই ব্যক্তিকে নির্দেশ দেওয়া হয়েছে। তাঁদের দুই সন্তানের মধ্যে একজনের বয়স ১৮ বছরের বেশি, আরেকজন নাবালক।&lt;/p&gt;\r\n\r\n&lt;p&gt;ক্যাডেনা সের রেডিওকে দেওয়া সাক্ষাৎকারে নাম প্রকাশ না করার শর্তে ওই নারী বলেন, তাঁর স্বামী তাঁকে &amp;lsquo;ঘরের বাইরে&amp;rsquo; কাজ করতে দিতেন না। যদিও স্বামী তাঁকে নিজের মালিকানাধীন জিমে কাজ করতে দিয়েছিলেন। সেখানে তিনি জনসংযোগ কর্মকর্তা হিসেবে কাজ করেছিলেন। তিনি আরও বলেন, &amp;lsquo;এ ছাড়া নিজেকে গৃহকর্মে একেবারে নিয়োজিত করেছিলাম। আমার স্বামী ও ঘরবাড়ি দেখাশোনা করেছি। তিনি আমাকে ঘরের কাজ করতে বাধ্য করেছিলেন। কারণ, আমি এমন একটি জায়গায় ছিলাম, সেখান থেকে সত্যিই অন্য কিছু আমি করতে পারিনি।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/090323be8c83233032dce.webp', 'স্ত্রীর ঘরকন্যার কাজেরও একটা আর্থিক মূল্য আছে', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-09 06:44:40', 0, 1),
(233, 'samojugc_datatable', 5, 60, 'সেখ আকিজ উদ্দিনের অনুপ্রেরণায় আকিজ বশির গ্রুপের পথচলা শুরু', 'সেখ আকিজ উদ্দিনের অনুপ্রেরণায় আকিজ বশির গ্রুপের পথচলা শুরু', '&lt;p&gt;নবযাত্রা শুরু করেছে আকিজ বশির গ্রুপ। গ্রুপটির ব্যবস্থাপনা পরিচালক সেখ বশির উদ্দিন। তিনি দেশের প্রথম প্রজন্মের উদ্যোক্তাদের অন্যতম সেখ আকিজ উদ্দিনের সন্তান। আকিজ বশির শিল্পগোষ্ঠীর ব্যবসা-বাণিজ্যের বিভিন্ন দিক নিয়ে প্রথম আলোর সঙ্গে কথা বলেছেন&amp;nbsp;&lt;strong&gt;সেখ বশির উদ্দিন&lt;/strong&gt;। সাক্ষাৎকার নিয়েছেন&amp;nbsp;&lt;strong&gt;জাহাঙ্গীর শাহ&lt;/strong&gt;।&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রথম আলো: কেন আকিজ বশির গ্রুপ নামে প্রতিষ্ঠানের নবযাত্রা শুরু করলেন?&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;সেখ বশির উদ্দিন:&lt;/strong&gt; ১৯৫০&amp;ndash;এর দশকের দিকে দেশের অন্যতম বড় শিল্পগোষ্ঠী আকিজ গ্রুপের যাত্রা শুরু হয়। আমার বাবা সেখ আকিজ উদ্দিন এই শিল্পগোষ্ঠীর গোড়াপত্তন করেন। পাটের ব্যবসা দিয়েই এই শিল্পগোষ্ঠীর যাত্রা শুরু হয়। সত্তর বছরের বেশি সময় ধরে সুনামের সঙ্গে ব্যবসা করে আসছে গ্রুপটি। এ সময়ের মধ্যে নানা ধরনের পণ্য নিয়ে স্থানীয় ও আন্তর্জাতিক বাজারে বিস্তৃতি ঘটেছে আকিজ গ্রুপের।&lt;/p&gt;\r\n\r\n&lt;p&gt;আমার বাবার একক নেতৃত্বে আকিজ গ্রুপ এগিয়ে গেছে। বাবা মারা যাওয়ার পর তাঁর সন্তানেরা নিজ নিজ যোগ্যতায় এত দিন ধরে ব্যবসা পরিচালনা করে আসছিলেন। প্রথম দিকে আমরা পাঁচ ভাই একসঙ্গে ব্যবসায় মনোনিবেশ করি। এখন ধীরে ধীরে আমাদের তৃতীয় প্রজন্মও ব্যবসায় যুক্ত হচ্ছে। তাই ব্যবসা পরিচালনার স্বার্থে আমাদের কিছু কিছু ব্যবসা একত্র করে ক্লাস্টার (গুচ্ছ ব্যবসা বা কয়েকটি প্রতিষ্ঠান একসঙ্গে) করি। নিজেদের মধ্যে শেয়ার হস্তান্তর করে একেকটি ক্লাস্টারের একক নেতৃত্ব নেন প্রত্যেক ভাই। আমি আকিজ বশির গ্রুপ নামে একটি ক্লাস্টারের নেতৃত্ব দিচ্ছি।&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রথম আলো: আকিজ বশির গ্রুপ করার পেছনে অন্যতম অনুপ্রেরণা কী ছিল? এই গ্রুপের লক্ষ্য কী?&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;সেখ বশির উদ্দিন:&lt;/strong&gt; আকিজ বশির গ্রুপ হলো আকিজ গ্রুপেরই উত্তরাধিকার। বলা যায়, আকিজ বশির গ্রুপ হলো আকিজ গ্রুপের নিশ্চয়তা (অ্যাস্যুরেন্স অব আকিজ গ্রুপ)। সেখ আকিজ উদ্দিন ভোক্তাদের প্রত্যাশা পূরণে যেভাবে ব্যবসা পরিচালনা করেছেন, আমরাও সেই প্রত্যাশা পূরণে ব্যবসা পরিচালনা করছি। সেখ আকিজ উদ্দিনের অনুপ্রেরণায় আকিজ বশির গ্রুপের পথচলা শুরু। নৈতিক অবস্থান, ব্যবসার কৌশলে তিনিই আমাদের মূল দর্শন।&lt;/p&gt;\r\n\r\n&lt;blockquote&gt;আমাদের ব্যবসার বড় শক্তি হলো গ্রাহকের আস্থা। এটাই আমাদের বড় মূলধন। গ্রাহকের এই আস্থার প্রতি সম্মান রেখে আমরা ভবিষ্যতের পথে এগিয়ে যাব। গ্রাহকের জীবনমান উন্নয়নে আমাদের প্রচেষ্টাকে আরও গতিশীল করা হবে&lt;/blockquote&gt;\r\n\r\n&lt;p&gt;সেখ বশির উদ্দিন, ব্যবস্থাপনা পরিচালক, আকিজ বশির গ্রুপ&lt;/p&gt;\r\n\r\n&lt;p&gt;পঞ্চাশের দশক থেকে শুরু করে ২০০৬ সাল পর্যন্ত সেখ আকিজ উদ্দিনের একক নেতৃত্বে আকিজ গ্রুপ পরিচালিত হয়েছে। ১৯৭৭ সালে তিনি ব্রিটিশ মালিকানাধীন একটি চামড়ার কোম্পানি কিনে নেন। এভাবেই তিনি সময়ের সঙ্গে তাল মিলিয়ে নানা সময়ে ব্যবসায় নানা পরিবর্তন এনেছেন। তাই এই পরিবর্তন আমাদের ডিএনএর মধ্যেই আছে। আমরা পরিবর্তনে বিশ্বাসী। পরিবর্তিত অর্থনৈতিক ও ব্যবসায়িক পরিস্থিতিতে আমরাও ক্রমপরিবর্তনশীল। পরিবর্তনকে আমরা আলিঙ্গন করি। ভবিষ্যতেও করব।&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রথম আলো: আকিজ বশির গ্রুপের অধীনে কী কী ব্যবসা পরিচালিত হচ্ছে?&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;সেখ বশির উদ্দিন:&lt;/strong&gt; আকিজ বশির গ্রুপের অধীনে বর্তমানে ১৬টি প্রতিষ্ঠান আছে। সিরামিকস, পার্টিকেল বোর্ডসহ কিছু ব্যবসা আকিজ গ্রুপ থেকে এসেছে। আবার চা, পাট, এমডিএফ বোর্ড&amp;mdash;এসব ব্যবসা নতুন করে যুক্ত হয়েছে। ভবিষ্যতেও আমরা নতুন নতুন খাতে ব্যবসা সম্প্রসারণের চেষ্টা অব্যাহত রাখব।&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রথম আলো: বর্তমানে আকিজ বশির গ্রুপে কত হাজার কর্মী কাজ করেন?&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;সেখ বশির উদ্দিন:&lt;/strong&gt; আকিজ বশির গ্রুপের বিভিন্ন প্রতিষ্ঠান ২৪ হাজারের বেশি কর্মী আছেন। তারাই এই শিল্পগোষ্ঠীর প্রাণ। সবচেয়ে বেশি ১২ হাজারের বেশি কর্মী আছে পাটের ব্যবসায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রথম আলো: টেকসই উন্নয়ন ও পরিবেশবান্ধব কার্যক্রমে আকিজ বশির গ্রুপ কী ধরনের অবদান রাখছে? এ বিষয়ে আপনাদের ভবিষ্যৎ পরিকল্পনা কী?&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;সেখ বশির উদ্দিন:&lt;/strong&gt; ব্যবসা বা শিল্পপ্রতিষ্ঠান গড়ে তোলার ক্ষেত্রে আমরা সব সময় টেকসই উন্নয়ন ও পরিবেশবান্ধব কার্যক্রমকে সর্বাধিক গুরুত্ব দিয়ে থাকি। পুরো পৃথিবী এই বিষয়টিতে জোরালো অবস্থান নিচ্ছে। জলবায়ু পরিবর্তনের উচ্চ ঝুঁকিতে থাকা দেশগুলোর মধ্যে বাংলাদেশ অন্যতম। সরকার পরিবেশবান্ধব শিল্প খাত তৈরিতে যেসব মানদণ্ড ঠিক করে, আমরা সব সময় তার চেয়ে বেশি মান বজায় রাখি। আমরা এখন সাড়ে ৩ মেগাওয়াট নবায়নযোগ্য জ্বালানি উৎপাদন করি। ২০২৩-২৪ অর্থবছরের মধ্যে ৪০ মেগাওয়াট নবায়নযোগ্য জ্বালানি উৎপাদনের লক্ষ্য আছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;আমরা গবেষণা করে শিল্পে প্রযুক্তিগত পরিবর্তন আনি। যেসব ক্ষেত্রে সাফল্য পেয়েছি, তা আমরা সবার জন্য উন্মুক্ত করে দিই। এর কারণ, এই প্রযুক্তি ব্যবহার করে অন্য উদ্যোক্তাদের পথচলা যেন সহজ হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রথম আলো: পণ্য উৎপাদন ও প্রযুক্তিগত উন্নয়নে নতুন উদ্ভাবনে আপনারা কী ধরনের কাজ করছেন? এ বিষয়ে বিস্তারিত বলবেন কি?&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug7.webp&quot; style=&quot;height:427px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;সেখ বশির উদ্দিন:&lt;/strong&gt; ৭০ বছরের বেশি সময় ধরে আমাদের পাটের ব্যবসা। আকিজ গ্রুপের একটি ক্লাস্টারের নেতৃত্ব নেওয়ার পর দুটি পাটের প্রতিষ্ঠান আমরা অধিগ্রহণ করি। পাটের পচানো প্রক্রিয়া নিয়ে আমরা ঢাকা বিশ্ববিদ্যালয়ের ফলিত রসায়ন বিভাগের সঙ্গে কাজ করছি। এই গবেষণায় পাট পচানোর সময় আশ নষ্ট হওয়া কমানো, পচানোর সময় কমানো এবং পানির দূষণ কমানো&amp;mdash;এসব ক্ষেত্রে সফলতা এসেছে। এই গবেষণা এখনো গবেষণাগার পর্যায়ে আছে। কারখানা বা শিল্প পর্যায়ে আসতে আরও দুই বছর সময় লাগবে। তখন কৃষকের খরচ কমবে, পাটকল মালিকদেরও খরচ কমবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;সিরামিকস কারখানায় সবচেয়ে বেশি লাগে জ্বালানি ও পানি। বর্জ্য ব্যবস্থাপনাও জরুরি। আমাদের ময়মনসিংহের ভালুকায় অবস্থিত সিরামিক কারখানায় এক হাজার টন পানি লাগে। ভূগর্ভস্থ পানি দিয়েই পুরোটা জোগান দিতে হয়। তাই বৃষ্টির পানি ধরে রেখে সিরামিক কারখানায় পানির জোগান বাড়ানোর উদ্যোগ নেওয়া হয়েছে। এর আগে আমরা উপকূলীয় অঞ্চলে মিঠাপানির চাহিদা মেটাতে ৬০টি ইউনিয়নে ৭ লাখ টন বৃষ্টির পানি ধরে রেখে পানযোগ্য করে রাখার ব্যবস্থা করা করেছি। সেই অভিজ্ঞতা আমরা ময়মনসিংহের সিরামিকস কারখানায় কাজে লাগাব।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug6.webp&quot; style=&quot;height:427px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রথম আলো: আকিজ বশির গ্রুপের অধীনে নতুন কোন কোন খাতে বিনিয়োগের পরিকল্পনা রয়েছে আপনাদের?&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;সেখ বশির উদ্দিন:&lt;/strong&gt; হবিগঞ্জ জেলায় আমরা আবাসিক ও বাণিজ্যিক ভবনে ব্যবহারের জন্য কাচ উৎপাদনের কারখানা বানাচ্ছি। আগামী বছর আধুনিক প্রযুক্তির এই কারখানা উৎপাদনে যাবে বলে আশা করছি। এই কারখানার কাচ উৎপাদনের সক্ষমতা দৈনিক ৬৫০ টন। এই কারখানায় এক হাজার লোকের কর্মসংস্থান হবে। নতুন এ কারখানায় এক হাজার কোটি টাকার বেশি বিনিয়োগ করছি আমরা।&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রথম আলো: আকিজ বশির গ্রুপের নবযাত্রা উপলক্ষে ভোক্তাদের উদ্দেশে আপনি কী বলবেন?&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;সেখ বশির উদ্দিন:&lt;/strong&gt; আমাদের ব্যবসার বড় শক্তি হলো গ্রাহকের আস্থা। এটাই আমাদের বড় মূলধন। গ্রাহকের এ আস্থার প্রতি সম্মান রেখে আমরা ভবিষ্যতের পথে এগিয়ে যাব। গ্রাহকের জীবনমান উন্নয়নে আমাদের প্রচেষ্টাকে আরও গতিশীল করা হবে।&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/090323ab9a117da7fc8f6.webp', 'সেখ বশির উদ্দিন', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-09 06:51:51', 0, 1),
(234, 'samojugc_datatable', 5, 60, 'চাল আটা ডিম আলু নেই, আছে সিগারেট ও কয়লা', 'চাল আটা ডিম আলু নেই, আছে সিগারেট ও কয়লা', '&lt;p&gt;অত্যাবশ্যকীয় নিত্যপণ্যের তালিকা সংশোধন করতে বাণিজ্য মন্ত্রণালয়ের একটি কমিটি এক বছর ধরে কাজ করলেও কোনো প্রতিবেদন তৈরি হয়নি।&lt;/p&gt;\r\n\r\n&lt;p&gt;দীর্ঘ ৬৭ বছরের পুরোনো আইন অনুযায়ী বাংলাদেশের মানুষের জন্য সিগারেট, কয়লা ও কাঠ এখনো নিত্যপ্রয়োজনীয় পণ্য। সেই সঙ্গে এলাচি, লবঙ্গ, দারুচিনি, তেজপাতার মতো কম ব্যবহৃত হয়, এমন পণ্যগুলোও রয়েছে নিত্যপণ্যের তালিকায়। অথচ পানি থেকে শুরু করে ধান, চাল, গম, আটা, ডিম, আলু, সাবান, কীটনাশক, ডিটারজেন্ট পাউডার ও টুথপেস্ট&amp;mdash;এগুলো সমাজের সর্বস্তরে প্রতিদিন কমবেশি ব্যবহৃত হলেও নিত্যপণ্য হিসেবে আইনি স্বীকৃতি পায়নি।&lt;/p&gt;\r\n\r\n&lt;p&gt;আইনটির নাম &amp;lsquo;অত্যাবশ্যকীয় পণ্য নিয়ন্ত্রণ আইন, ১৯৫৬&amp;rsquo;। পুরোনো ওই পণ্যতালিকায় সামান্য পরিবর্তন করেছে বাংলাদেশ। ২০১২ সালে একবার সরকার অত্যাবশ্যকীয় পণ্যতালিকা সংশোধন করে। তখন চিনি, লবণ, পেঁয়াজ, ছোলা, শুকনা মরিচসহ ১৭ ধরনের পণ্যকে নিত্যপণ্যের তালিকায় অন্তর্ভুক্ত করা হয়। তবে আইন আগেরটিই বহাল থাকে। ফলে নিত্যপণ্য নয় এমন কিছু পণ্য, যেমন সিগারেট&amp;ndash;কাঠ তালিকা থেকে বাদ পড়েনি।&lt;/p&gt;\r\n\r\n&lt;p&gt;অত্যাবশ্যকীয় পণ্য নিয়ন্ত্রণ আইনটিকে যুগোপযোগী করতে তিনটি মন্ত্রণালয়, বাংলাদেশ শিল্প ও বণিক সমিতি ফেডারেশন (এফবিসিসিআই) ও বাংলাদেশ ট্রেড অ্যান্ড ট্যারিফ কমিশন (বিটিটিসি) বাণিজ্য মন্ত্রণালয়ের কাছে সুপারিশ করেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রধানমন্ত্রী শেখ হাসিনার সঙ্গে স্বল্পোন্নত দেশগুলোর (এলডিসি) বিষয়ে পঞ্চম জাতিসংঘ সম্মেলনে যোগ দিতে কাতারের রাজধানী দোহায় যাওয়ার আগে বাণিজ্যসচিব তপন কান্তি ঘোষ প্রথম আলোকে বলেন, &amp;lsquo;অত্যাবশ্যকীয় নিত্যপণ্যের তালিকা সংশোধন করতে বাণিজ্য মন্ত্রণালয়ের একটি কমিটি কাজ করছে। আশা করছি, এবার নতুন কিছু পণ্য যুক্ত হবে এবং বর্তমানে তালিকায় থাকা কিছু পণ্য বাদ যাবে।&amp;rsquo; বাণিজ্যসচিবের কথা অনুযায়ী এবারও আইন সংশোধন হচ্ছে না, হচ্ছে নিত্যপণ্যের তালিকা সংশোধন অর্থাৎ তালিকার যোজন-বিয়োজন।&lt;/p&gt;\r\n\r\n&lt;blockquote&gt;বিস্ময়কর যে পাকিস্তান আমলে সিগারেটকে নিত্যপণ্যের মধ্যে রাখা হয়েছিল, তা এখনো আইনে আছে। আইনটিকে ভোক্তাবান্ধব করে সাধারণ মানুষ যেসব পণ্য প্রতিদিন ব্যবহার করেন, তালিকায় সেগুলো রাখা দরকার।&lt;/blockquote&gt;\r\n\r\n&lt;p&gt;গোলাম রহমান, সভাপতি, ক্যাব ও সাবেক বাণিজ্যসচিব। &amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;অত্যাবশ্যকীয় পণ্যতালিকায় অন্তর্ভুক্ত থাকা না-থাকার মধ্যে পার্থক্য কি&amp;mdash;এ ব্যাপারে বাণিজ্য মন্ত্রণালয়ের কর্মকর্তারা বলেন, তালিকায় থাকলে দাম নিয়ন্ত্রণে সরকার যেকোনো সময় ব্যবস্থা নিতে পারে। অতিরিক্ত মুনাফার লোভে কেউ কারসাজি করলে, লম্বা সময়ের জন্য মজুত রাখলে বা কৃত্রিম সংকট তৈরি করলে আইনি পদক্ষেপ নেওয়া সম্ভব হয়। শুধু মূল্য নিয়ন্ত্রণ নয়, আইন অনুযায়ী অত্যাবশ্যকীয় নিত্যপণ্যের উৎপাদন ও বিপণন নিয়ন্ত্রণ করারও ক্ষমতা রাখে সরকার।&lt;/p&gt;\r\n\r\n&lt;p&gt;তালিকা সংশোধনে বাণিজ্য মন্ত্রণালয়ের অতিরিক্ত সচিব নুসরাত জাবীন বানুকে প্রধান করে এক বছর আগে ওই কমিটি গঠন করা হয়েছিল। এ কমিটির সদস্যসচিব হলেন একই মন্ত্রণালয়ের যুগ্ম নিয়ন্ত্রক শামীমা আকতার। নুসরাত জাবীন বানু সম্প্রতি বাণিজ্য মন্ত্রণালয়ের ডব্লিউটিও অনুবিভাগের মহাপরিচালক (ডিজি) হিসেবে যোগ দিয়েছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;বাণিজ্য মন্ত্রণালয়েরই একাধিক সূত্র বলেছে, আইন সংশোধন একটি বড় কাজ। কিন্তু তালিকা সংশোধন বড়জোর এক মাসের বিষয়। এক বছরেও তা না হওয়ার মানে হচ্ছে, কমিটির গাফিলতি রয়েছে। নুসরাত জাবীন বানুকে ফোনে পাওয়া যায়নি। তালিকা সংশোধনে গাফিলতি রয়েছে কি না, জানতে চেয়ে খুদে বার্তা পাঠালেও কোনো জবাব দেননি তিনি।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ নিয়ে বাণিজ্যসচিব তপন কান্তি ঘোষ বলেন, &amp;lsquo;আশা করছি, কমিটি দ্রুত একটি প্রতিবেদন দেবে এবং সে প্রতিবেদনের ভিত্তিতে নিত্যপণ্যের নতুন একটা তালিকা করা হবে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;blockquote&gt;&lt;strong&gt;*&lt;/strong&gt;১৯৫৬ সালের অত্যাবশ্যকীয় পণ্য নিয়ন্ত্রণ আইনের অধীনে ৩৪ ধরনের পণ্য রয়েছে।&lt;br /&gt;\r\n&lt;strong&gt;*&lt;/strong&gt;২০১২ সালের নতুন আদেশে ১৭ ধরনের পণ্যকে নিত্যপণ্য ঘোষণা করা হয়।&lt;br /&gt;\r\nউদ্ধৃতি&lt;/blockquote&gt;\r\n\r\n&lt;p&gt;এদিকে সিগারেটকে নিত্যপণ্যের তালিকায় রাখা ভালো হবে, নাকি তালিকা থেকে বাদ দেওয়া ভালো হবে&amp;mdash;তা নিয়ে বিতর্ক দেখা দিয়েছে। বাণিজ্য মন্ত্রণালয়ের কর্মকর্তাদের মতে, বাদ দিলে সিগারেটের উৎপাদন, বিপণন ও মূল্য নিয়ন্ত্রণবিষয়ক কোনো সিদ্ধান্ত নেওয়ার ক্ষেত্রে সরকারের ক্ষমতা কমে যাবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;নিত্যপণ্য কোনগুলো, আইনে কী আছে&lt;/strong&gt;&lt;br /&gt;\r\n১৯৫৬ সালের মূল আইনে ৩৪ ধরনের নিত্যপণ্যের তালিকা দেওয়া আছে। প্রথম শ্রেণিটিই হচ্ছে ভোজ্যতেল, তৈলবীজসহ খাদ্যদ্রব্য। এ খাদ্যদ্রব্যের মধ্যে ধান, চাল, গম, আটা আছে কি না, সরকার তা স্পষ্ট করেনি।&lt;/p&gt;\r\n\r\n&lt;p&gt;নিত্যপণ্যের মধ্যে আরও রয়েছে নিউজপ্রিন্টসহ সব ধরনের কাগজ, জ্বালানি তেল, ইস্পাত, প্রাকৃতিক রেশম সুতা, কয়লা, ওষুধ, সাইকেল ও সাইকেলের যন্ত্রাংশ, সিগারেট, চা, চিনি, শেভিং ব্লেড, সেলাই মেশিন, শিশুখাদ্য, স্কুল-কলেজের পাঠ্যবই, তুলার সুতা, গ্যাসসহ রাসায়নিক পণ্য, ইলেকট্রিক্যাল পণ্য, গ্লাস, কাঠ, সিমেন্ট, স্যানিটারি ফিটিংস, টাইলস, সিনেমার কাঁচা ফিল্ম, রাসায়নিক সার, টাইপরাইটার ইত্যাদি।&lt;/p&gt;\r\n\r\n&lt;p&gt;বাণিজ্য মন্ত্রণালয় ২০১২ সালের জুলাইয়ে ১৭টি পণ্যকে অত্যাবশ্যকীয় পণ্য ঘোষণা করে। এগুলো হচ্ছে পেঁয়াজ, রসুন, মসুর ডাল, ছোলা, শুকনা মরিচ, দারুচিনি, লবঙ্গ, এলাচি, ধনে, জিরা, আদা, হলুদ, তেজপাতা, সয়াবিন তেল, পামতেল, চিনি ও খাওয়ার লবণ। চিনি ও ভোজ্যতেল মূল আইনে যেমন রয়েছে, ২০১২ সালেও নতুন করে উল্লেখ করা হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;জানতে চাইলে কনজ্যুমারস অ্যাসোসিয়েশন অব বাংলাদেশের (ক্যাব) সভাপতি ও সাবেক বাণিজ্যসচিব গোলাম রহমান বলেন, &amp;lsquo;বিস্ময়কর যে পাকিস্তান আমলে সিগারেটকে নিত্যপণ্যের মধ্যে রাখা হয়েছিল, তা এখনো আইনে আছে। আইনটিকে ভোক্তাবান্ধব করে সাধারণ মানুষ যেসব পণ্য প্রতিদিন ব্যবহার করেন, তালিকায় সেগুলো রাখা দরকার।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;গোলাম রহমান আরও বলেন, স্বাস্থ্যের পক্ষে ক্ষতিকর পণ্য তালিকা থেকে বাদ দিতে হবে। আর শুধু পণ্যতালিকা হালনাগাদ করা নয়, পুরো আইনটিকেই যুগোপযোগী করতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/090323639899dcf5a9976.webp', 'প্রতীকী ছবি', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-09 06:55:33', 0, 1),
(235, 'samojugc_datatable', 5, 61, 'মেসি ভুলে যাচ্ছেন চ্যাম্পিয়নস লিগ জয়ের স্বাদ', 'মেসি ভুলে যাচ্ছেন চ্যাম্পিয়নস লিগ জয়ের স্বাদ', '&lt;p&gt;৮ বছর হয়ে গেল...।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;https://www.prothomalo.com/sports/football/nrkqmue6mn&quot; target=&quot;_blank&quot;&gt;লিওনেল মেসি&lt;/a&gt; বিশ্বকাপ জিতেছেন নিজের প্রথম বিশ্বকাপ খেলার ১৬ বছর পর। চারটি বিশ্বকাপ খেলার পর আর্জেন্টিনার জার্সিতে অধরা শিরোপাটি জিতেছেন। তাতে মেসির ফুটবল ক্যারিয়ারে এসেছে পূর্ণতা। ফুটবলে সম্ভবত এমন কোনো শিরোপা নেই, যা জেতেননি। কিন্তু এর মধ্যেই চ্যাম্পিয়নস লিগ ছোট্ট করে তাঁর ক্যারিয়ারে হাহাকার তোলা শুরু করেছে। ৮ বছর হয়ে গেল মেসির হাতে ওঠেনি চ্যাম্পিয়নস লিগ ট্রফি।&lt;/p&gt;\r\n\r\n&lt;p&gt;মেসি এখন পর্যন্ত চ্যাম্পিয়নস লিগ জিতেছেন চারবার। ২০০৬, ২০০৯, ২০১১ ও ২০১৫&amp;mdash;এ চারবার জিতেছেন&lt;a href=&quot;https://www.prothomalo.com/sports/football/nrkqmue6mn&quot; target=&quot;_blank&quot;&gt; বার্সেলোনা&lt;/a&gt;র জার্সিতে। কিন্তু ২০১৫ সালের পর বার্সেলোনাতে আরও পাঁচ মৌসুম খেলেও দলকে আর ইউরোপ-সেরা করতে পারেননি। চ্যাম্পিয়নস লিগ এ মুহূর্তে মেসির জন্য বড় আক্ষেপ। ২০১৫ সালের পর প্রতিবারই চ্যাম্পিয়নস লিগ থেকে বিদায়গুলো মেসিকে পোড়ায়, সন্দেহ নেই। ২০১৬ সালে আতলেতিকো মাদ্রিদের বিপক্ষে কোয়ার্টার ফাইনালেই খেলতে পারেননি। ২০১৭-তে জুভেন্টাসের সঙ্গে পারেনি তাঁর দল বার্সা। ২০১৮ সালে রোমার বিপক্ষে কোয়ার্টার ফাইনালে হার, ২০১৯ সালে লিভারপুলের কাছে হার, ২০২০ সালে বায়ার্নের বিপক্ষে কোয়ার্টার ফাইনালে সেই ৮ গোল খাওয়ার দুঃসহ স্মৃতি; ২০২১ সালে পিএসজির কাছে হেরেই শেষ ষোলো থেকে বিদায়। এরপর &lt;a href=&quot;https://www.prothomalo.com/sports/football/jyc4w9cjds&quot; target=&quot;_blank&quot;&gt;পিএসজি&lt;/a&gt;র জার্সিতে পরের দুটি চ্যাম্পিয়নস লিগেই শেষ ষোলো থেকে বিদায়ের আক্ষেপ&amp;mdash;বিশ্বকাপজয়ী মেসি সর্বশেষ তিনটি চ্যাম্পিয়নস লিগে কোয়ার্টার ফাইনালেই খেলতে পারেননি।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug10.webp&quot; style=&quot;height:453px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;পিএসজির হয়ে আরও একটি চ্যাম্পিয়নস লিগ&amp;ndash;ব্যর্থতা মেসির&lt;/p&gt;\r\n\r\n&lt;p&gt;গতকাল রাতে &lt;a href=&quot;https://www.prothomalo.com/sports/football/b9byhpz064&quot; target=&quot;_blank&quot;&gt;বায়ার্ন মিউনিখে&lt;/a&gt;র বিপক্ষে এবারের চ্যাম্পিয়নস লিগের শেষ ষোলোর ম্যাচে পিএসজি হেরেছে ২-০ গোলে। প্রথম লেগে নিজেদের মাঠে পিএসজি হেরেছিল ১-০ গোলে। দুই লেগ মিলিয়ে ৩-০ ব্যবধানে পিএসজি বিদায় নিয়েছে। ফুটবল দুনিয়ার তিন বড় তারকা নেইমার-মেসি-এমবাপ্পে আবারও ব্যর্থ। গোটা বিশ্বকাপটাই নিজেদের করে নেওয়া মেসি আর এমবাপ্পে চ্যাম্পিয়নস লিগে সম্মিলিত প্রচেষ্টাতেও পিএসজিকে সাফল্য দিতে ব্যর্থ।&lt;/p&gt;\r\n\r\n&lt;p&gt;গতকাল রাতে &lt;a href=&quot;https://www.prothomalo.com/sports/football/b9byhpz064&quot; target=&quot;_blank&quot;&gt;বায়ার্ন মিউনিখে&lt;/a&gt;র বিপক্ষে এবারের চ্যাম্পিয়নস লিগের শেষ ষোলোর ম্যাচে পিএসজি হেরেছে ২-০ গোলে। প্রথম লেগে নিজেদের মাঠে পিএসজি হেরেছিল ১-০ গোলে। দুই লেগ মিলিয়ে ৩-০ ব্যবধানে পিএসজি বিদায় নিয়েছে। ফুটবল দুনিয়ার তিন বড় তারকা নেইমার-মেসি-এমবাপ্পে আবারও ব্যর্থ। গোটা বিশ্বকাপটাই নিজেদের করে নেওয়া মেসি আর এমবাপ্পে চ্যাম্পিয়নস লিগে সম্মিলিত প্রচেষ্টাতেও পিএসজিকে সাফল্য দিতে ব্যর্থ।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug11.webp&quot; style=&quot;height:449px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;মেসি এখন কী করবেন&lt;/p&gt;\r\n\r\n&lt;p&gt;সেই নতুন ভাবনা মেসি পিএসজিকে ঘিরে ভাববেন কি না, তা নিয়ে সন্দেহ থেকেই যাচ্ছে। প্যারিসের ক্লাবটির সঙ্গে এখনো নতুন চুক্তি হয়নি মেসির। এ জুনেই পিএসজির সঙ্গে দুই বছরের চুক্তি শেষ হয়ে যাবে। বিশ্বকাপের পর থেকেই মেসি আর পিএসজির নতুন চুক্তি নিয়ে কানাঘুষা। এই হচ্ছে, এই হবে করেও হচ্ছে না। মেসির নাকি কিছু শর্ত আছে। পিএসজিতে &amp;lsquo;গুরুত্ব&amp;rsquo; কম পাচ্ছেন, এমন অভিমানও নাকি আছে তাঁর। আলোচনা চলছে, পিএসজির তরফ থেকে বারবারই বলা হচ্ছে, চুক্তি হয়ে যাবে। কিন্তু কাল চ্যাম্পিয়নস লিগের শেষ ষোলো থেকে বিদায়ের পর পরিস্থিতি পাল্টাতে বাধ্য। পিএসজিও মেসি&lt;a href=&quot;https://www.prothomalo.com/sports/football/g76q7fjm44&quot; target=&quot;_blank&quot;&gt;-এমবাপ্পে&lt;/a&gt;কে একসঙ্গে রেখেই অধরা চ্যাম্পিয়নস লিগ জয়ের নতুন পরিকল্পনা সাজাবে, নাকি অন্যকিছু ভাববে&amp;mdash;এটা এখনো পরিষ্কার নয়। এদিকে মেসি কি ইউরোপের নতুন কোনো ক্লাবে গিয়ে ক্যারিয়ার শেষ করার আগে একটি-দুটি চ্যাম্পিয়নস লিগ জেতার চেষ্টা চালাবেন! কিছুই বলার সময় আসেনি এখনো।&lt;/p&gt;\r\n\r\n&lt;p&gt;তবে একটি বিষয় পরিষ্কার&amp;mdash;মেসি ভুলে যাচ্ছেন চ্যাম্পিয়নস লিগ জয়ের স্বাদ।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/090323e1cde956fd071de.webp', 'আট বছর চ্যাম্পিয়নস লিগ জেতেননি মেসি', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-09 07:00:34', 0, 1),
(236, 'samojugc_datatable', 5, 61, 'এমবাপ্পেকে ‘জগাখিচুড়ি’ পিএসজি ‘ছাড়তেই হবে’', 'এমবাপ্পেকে ‘জগাখিচুড়ি’ পিএসজি ‘ছাড়তেই হবে’', '&lt;p&gt;&amp;lsquo;তাকে চলে যেতেই হবে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;কথাটা লিভারপুল কিংবদন্তি জেমি ক্যারাঘারের। বলেছেন &lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%95%E0%A6%BF%E0%A6%B2%E0%A6%BF%E0%A7%9F%E0%A6%BE%E0%A6%A8-%E0%A6%8F%E0%A6%AE%E0%A6%AC%E0%A6%BE%E0%A6%AA%E0%A7%8D%E0%A6%AA%E0%A7%87&quot; target=&quot;_blank&quot;&gt;কিলিয়ান এমবাপ্পেকে&lt;/a&gt; নিয়ে। কোন জায়গা থেকে চলে যাওয়ার কথা বলেছেন, তা না বোঝার কোনো কারণ নেই। পিএসজি!&lt;/p&gt;\r\n\r\n&lt;p&gt;চ্যাম্পিয়নস লিগের শেষ ষোলোর ফিরতি লেগে কাল রাতে বায়ার্ন মিউনিখের কাছে &lt;a href=&quot;https://www.prothomalo.com/sports/football/b9byhpz064&quot; target=&quot;_blank&quot;&gt;২-০ গোলে হেরেছে &lt;/a&gt;পিএসজি। প্রথম লেগে ১-০ গোলে হারায় দুই লেগ মিলিয়ে ৩-০ ব্যবধানে শেষ ষোলো থেকেই বিদায় ঘটল ফরাসি ক্লাবটির। এমবাপ্পে আসার পর এবারসহ মোট ৬ মৌসুম হয়ে গেল পিএসজি চ্যাম্পিয়নস লিগ জিততে ব্যর্থ। ইউরোপ-সেরার এই শিরোপা জিততেই ফরাসি স্ট্রাইকারকে মোনাকো থেকে নিয়ে এসেছিল পিএসজি।&lt;/p&gt;\r\n\r\n&lt;p&gt;কিংবা কথাটা উল্টো করেও বলা যায়, পিএসজি &lt;a href=&quot;https://www.prothomalo.com/sports/football/l6sng5s50l&quot; target=&quot;_blank&quot;&gt;এমবাপ্পেকে &lt;/a&gt;চ্যাম্পিয়নস লিগ জয়ের প্রতিশ্রুতি দিয়েই নেইমার ও লিওনেল মেসিকে দলে ভিড়িয়েছিল। কিন্তু এবারও লক্ষ্যপূরণ হলো না। ওদিকে মোনাকোয় এমবাপ্পে সম্ভাবনাময় হয়ে ওঠার সময় থেকেই তাঁর পিছু ছুটেছে বেশ কিছু বড় ক্লাব। রিয়াল মাদ্রিদ &lt;a href=&quot;https://www.prothomalo.com/sports/football/%E0%A6%8F%E0%A6%AE%E0%A6%AC%E0%A6%BE%E0%A6%AA%E0%A7%8D%E0%A6%AA%E0%A7%87%E0%A6%95%E0%A7%87-%E0%A6%A6%E0%A6%B2%E0%A7%87-%E0%A6%9F%E0%A6%BE%E0%A6%A8%E0%A6%BE%E0%A6%B0-%E0%A6%87%E0%A6%99%E0%A7%8D%E0%A6%97%E0%A6%BF%E0%A6%A4-%E0%A6%B0%E0%A6%BF%E0%A7%9F%E0%A6%BE%E0%A6%B2-%E0%A6%B8%E0%A6%AD%E0%A6%BE%E0%A6%AA%E0%A6%A4%E0%A6%BF%E0%A6%B0&quot; target=&quot;_blank&quot;&gt;চেষ্টা করেছে সবচেয়ে বেশি&lt;/a&gt;। পিএসজির সঙ্গে নতুন চুক্তির পর গত বছর মে মাসে রিয়ালকে সরাসরি না করে দেন এমবাপ্পে। যদিও তার আগে অনেকবারই রিয়ালে খেলার ইচ্ছার কথা জানিয়েছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug13.webp&quot; style=&quot;height:426px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;মৌসুম শেষে পিএসজিতে থাকবেন তো এমবাপ্পে&lt;/p&gt;\r\n\r\n&lt;p&gt;অর্থাৎ, এমবাপ্পে যেদিন সবুজ সংকেত দেবেন, রিয়ালও সেদিন থেকে তাঁকে সান্তিয়াগো বার্নাব্যুতে নিয়ে আসার চেষ্টা নতুন করে শুরু করবে। ক্যারাঘ্যারের কথা শুনলে মনে হবে সেই সময়টা এখন নয় তো আর কখন!&lt;/p&gt;\r\n\r\n&lt;p&gt;চ্যাম্পিয়নস লিগে টানা ব্যর্থতায় মেসি-নেইমার-এমবাপ্পেদের নিয়ে গড়া পিএসজির এই &amp;lsquo;প্রকল্প&amp;rsquo; এর আর ভবিষ্যৎ নেই বলেই মনে করছেন বিশ্লেষকেরা। ফিরতি লেগে হারের পর এমবাপ্পের কথা শুনলেও তেমন মনে হবে, &amp;lsquo;এই মৌসুমে চ্যাম্পিয়নস লিগে আমার প্রথম সংবাদ সম্মেলনেই বলেছিলাম, আমরা নিজেদের সর্বোচ্চটা ঢেলে দেব। বাস্তবতা, এটাই আমাদের সর্বোচ্চ।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;দলে বিশ্বসেরাদের কাতারে পড়া তিনজন খেলোয়াড় আছেন। বাকিদের বেশির ভাগই তারকা। এমন একটা দলের সেরা স্ট্রাইকার যদি শেষ ষোলো থেকে বিদায়ের পর বলে বসেন, &amp;lsquo;এটাই আমাদের সর্বোচ্চ&amp;rsquo;&amp;mdash;তাহলে সেটি অবশ্যই হতাশার। টানা ব্যর্থতায় এমবাপ্পে নিজেও কতটা হতাশ তাও বোঝা যায়। সে জন্যই প্রশ্ন উঠেছে, পিএসজিতে এমবাপ্পে থাকবেন তো?&lt;/p&gt;\r\n\r\n&lt;p&gt;এমবাপ্পের কথা শুনলে মনে হবে &amp;lsquo;হ্যাঁ&amp;rsquo; আবার &amp;lsquo;না&amp;rsquo;ও। আগে ভবিষ্যতের প্রশ্নে তাঁর জবাবটা জেনে নিন। এমবাপ্পের কাছে জানতে চাওয়া হয়েছিল, মৌসুম শেষে পিএসজিতে থাকবেন কি না? পিএসজি তারকার উত্তর, &amp;lsquo;এই মৌসুমে এখন শুধু লিগ আঁ জয় নিয়েই ভাবছি, তারপর যা হয় দেখা যাবে। এই মুহূর্তে শুধু চলতি মৌসুম নিয়েই কথা বলতে চাই। এখন অন্য কোনো কিছু নিয়েই ভাবছি না। আমরা খুব হতাশ।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug14.webp&quot; style=&quot;height:480px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;বায়ার্নের বিপক্ষে ফিরতি লেগেও গোল পাননি এমবাপ্পে&lt;/p&gt;\r\n\r\n&lt;p&gt;২০২৪ সালের জুনে পিএসজির সঙ্গে এমবাপ্পের বর্তমান চুক্তির মেয়াদ ফুরোবে। চাইলে মেয়াদ আরও এক বছর বাড়াতে পারেন। কিন্তু তত দিন পর্যন্ত এমবাপ্পে থাকবেন কি না, সেই প্রশ্ন উঠছে চ্যাম্পিয়নস লিগে পিএসজির টানা ব্যর্থতার জন্য। গত ৭ বছরে পিএসজি এ নিয়ে পঞ্চমবারের মতো শেষ ষোলো থেকে বিদায় নিল। এবারসহ শেষ ষোলো থেকে বিদায় নিল টানা দুই মৌসুম। ব্যালন ডি&amp;rsquo;অর জয়ের স্বপ্নে বিভোর এমবাপ্পে জানেন, পিএসজিতে এভাবে চলতে থাকলে স্বপ্ন আর পূরণ হবে না। জেমি ক্যারাঘার বিষয়টি বুঝতে পেরেই বাস্তবতা তুলে ধরেছেন এমবাপ্পের সামনে&lt;/p&gt;\r\n\r\n&lt;p&gt;সংবাদমাধ্যম সিবিএসের স্টুডিওতে বিশ্লেষক হিসেবে গিয়ে ক্যারাঘার বলেছেন, &amp;lsquo;তাকে চলে যেতেই হবে। আমি সত্যি এটাই মনে করি। (পিএসজি) তারা চ্যাম্পিয়নস লিগ জয়ের ধারেকাছেও নেই। এই দল থাকলে আগামী মৌসুমে যে এর চেয়ে ভালো করবে সেটাও মনে হয় না। তাই সে রিয়াল মাদ্রিদে যত দ্রুত যোগ দেয় ততই ভালো।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;এমবাপ্পের কেন ক্লাব ছাড়া উচিত, তাও ব্যাখ্যা করেন লিভারপুলের হয়ে ইউরোপিয়ান প্রতিযোগিতায় সর্বোচ্চ ১৪৯ ম্যাচ খেলা ক্যারাঘার, &amp;lsquo;পিএসজির বিদায়ে আমি আনন্দিত। ওদের দল থেকে কোনো কিছুই আমার পছন্দ না। এটা কোনো দল নয়, স্রেফ জগাখিচুড়ি। গত ৭ বছরের মধ্যে পাঁচবারই শেষ ষোলো থেকে বিদায় নেওয়াটা কৌতুক ছাড়া আর কি! ওরা যে কারও চেয়ে বেশি টাকা-পয়সা খরচ করে, বিশ্বের সেরা খেলোয়াড়েরাও আছে। এগুলোই বলে দেয় একটা দল হয়ে ওঠা কত গুরুত্বপূর্ণ। কিন্তু ওরা তা হতে পারেনি। তাই আমি সত্যিই মনে করি এমবাপ্পেকে চলে যেতে হবে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;২০২২ সালের শুরুতে পিএসজিতে এমবাপ্পের তখনকার চুক্তির মেয়াদ শেষ হওয়ার সময় সবাই ধরেই নিয়েছিলেন, তাঁর পরবর্তী গন্তব্য রিয়াল মাদ্রিদ। স্প্যানিশ ক্লাবটিও তখন এমবাপ্পেকে উড়িয়ে আনতে প্রস্তুত ছিল। কিন্তু &lt;a href=&quot;https://www.prothomalo.com/sports/football/%E0%A6%8F%E0%A6%AE%E0%A6%AC%E0%A6%BE%E0%A6%AA%E0%A7%8D%E0%A6%AA%E0%A7%87-%E0%A6%86%E0%A6%B8%E0%A6%9B%E0%A7%87%E0%A6%A8-%E0%A6%A8%E0%A6%BE-%E0%A6%B0%E0%A6%BF%E0%A7%9F%E0%A6%BE%E0%A6%B2-%E0%A6%96%E0%A7%87%E0%A6%B2%E0%A7%8B%E0%A7%9F%E0%A6%BE%E0%A7%9C%E0%A6%A6%E0%A7%87%E0%A6%B0-%E0%A6%9C%E0%A6%BE%E0%A6%A8%E0%A6%BF%E0%A7%9F%E0%A7%87-%E0%A6%A6%E0%A6%BF%E0%A7%9F%E0%A7%87%E0%A6%9B%E0%A7%87%E0%A6%A8-%E0%A6%AA%E0%A7%87%E0%A6%B0%E0%A7%87%E0%A6%9C&quot; target=&quot;_blank&quot;&gt;রিয়ালকে হতাশ করে&lt;/a&gt; সে সময় পিএসজির সঙ্গে নতুন চুক্তি করেন এমবাপ্পে। এমন ঘটনার পর রিয়ালে এমবাপ্পে আর যোগ দিতে পারবেন কি না, সে &lt;a href=&quot;https://www.prothomalo.com/sports/football/%E0%A6%8F%E0%A6%AE%E0%A6%AC%E0%A6%BE%E0%A6%AA%E0%A7%8D%E0%A6%AA%E0%A7%87%E0%A6%95%E0%A7%87-%E0%A6%B0%E0%A6%BF%E0%A7%9F%E0%A6%BE%E0%A6%B2%E0%A7%87%E0%A6%B0-%E0%A6%B8%E0%A6%AC%E0%A6%BE%E0%A6%87-%E0%A6%AD%E0%A7%81%E0%A6%B2%E0%A7%87-%E0%A6%97%E0%A7%87%E0%A6%9B%E0%A7%87&quot; target=&quot;_blank&quot;&gt;প্রশ্ন থেকেই যায়&lt;/a&gt;।&lt;/p&gt;\r\n\r\n&lt;p&gt;একই সন্দেহের কথা বলেছেন রিয়ালের সাবেক উইঙ্গার জেসে রদ্রিগেজও। ক্লাবটির বয়সভিত্তিক দলে বেড়ে ওঠা রদ্রিগেজ রিয়াল সভাপতি ফ্লোরেন্তিনো পেরেজকে ভালোভাবে জানেন। স্প্যানিশ রেডিও &amp;lsquo;কাদেনা সার&amp;rsquo;কে সাম্পদোরিয়ার এ ফুটবলার বলেছেন, &amp;lsquo;আমি ঠিক জানি না। পেরেজকে যতটুকু চিনেছি, রিয়াল হয়তো তাকে সই করাতে অস্বীকৃতি জানাবে। যা ঘটেছে সেটি তার (পেরেজ) ভালো লাগেনি।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/09032370ebf8b8f3f5783.webp', 'পিএসজিতে চ্যাম্পিয়নস লিগ জয়ের স্বপ্ন কি অধরাই থেকে যাবে এমবাপ্পের', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-09 07:13:44', 0, 1),
(237, 'samojugc_datatable', 5, 62, 'বলিউড অভিনেতা সতীশ কৌশিক মারা গেছেন', 'বলিউড অভিনেতা সতীশ কৌশিক মারা গেছেন', '&lt;p&gt;বলিউডের সুপরিচিত পরিচালক ও অভিনেতা সতীশ কৌশিক আর নেই। মাত্র ৬৬ বছর বয়সেই হৃদ্&amp;zwnj;রোগে আক্রান্ত হয়ে মারা গেছেন এই তারকা। আজ বৃহস্পতিবার সকালে তাঁর মৃত্যুসংবাদ ছড়িয়ে পড়ে সামাজিক যোগাযোগমাধ্যমে। টুইটারে এ খবর জানান প্রবীণ বলিউড অভিনেতা অনুপম খের।&lt;br /&gt;\r\nআজ সকালে অনুপম খেরের টুইটার পোস্ট দেখে কেউ যেন নিজের চোখকেই বিশ্বাস করতে পারছিলেন না। অনুপম খের লিখেছেন, &amp;lsquo;জানি, জীবনের সবচেয়ে বড় সত্য মৃত্যু। কিন্তু আমি কখনো ভাবিনি, আমার প্রিয় বন্ধুর জন্য কোনো দিন আমাকে এটা লিখতে হবে। ৪৫ বছরের বন্ধুত্বে হঠাৎ বিচ্ছেদ। তোমার মতো বন্ধুর অনুপস্থিতিতে জীবন বদলে যাবে।&amp;rsquo; এমনিতে সুস্থই ছিলেন সতীশ কৌশিক। এক দিন আগেও বলিউডের হোলি পার্টিতে আনন্দ করেছিলেন, হুল্লোড় করেছিলেন। ফেসবুকে রঙিন আনন্দের সেই মুহূর্তকে সবার সঙ্গে শেয়ার করেছিলেন অভিনেতা। জাভেদ আখতারের বাড়িতে হোলি পার্টিতে রং মেখে ছবি পোস্ট করেন সতীশ।&lt;/p&gt;\r\n\r\n&lt;p&gt;হোলি পার্টিতে জাভেদ আখতার, শাবানা আজমি, মহিমা চৌধুরীসহ ছিলেন নবদম্পতি বলিউড তারকা আলী ফজল ও রিচা চাড্ডা। রঙের উৎসবে সতীশ কৌশিকের প্রাণবন্ত উপস্থিতি ছিল।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug16.webp&quot; style=&quot;height:800px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;জাভেদ আখতারের বাড়িতে হোলি পার্টিতে রং মেখে ছবি পোস্ট করেন সতীশ&lt;/p&gt;\r\n\r\n&lt;p&gt;৭ মার্চ ফেসবুক পেজে এটাই ছিল সতীশ কৌশিকের শেষ পোস্ট। সতীশ তাঁর ফেসবুক পেজে লিখেছিলেন, &amp;lsquo;রঙিন আনন্দ। জুহুর জানকী কুটিরে ছিল এই হোলি পার্টি। নববিবাহিত দম্পতি আলী ফজল ও রিচা চাড্ডার সঙ্গে দেখা হলো। সবাইকে হোলির আন্তরিক শুভেচ্ছা। হ্যাপি হোলি ২০২৩। রঙের সমন্বয়। বন্ধুত্ব।&amp;rsquo; রিচা চাড্ডা, আলী ফজল, মহিমা আর জাভেদ আখতারদের সঙ্গে ক্যামেরার সামনে একের পর এক পোজ দিয়েছিলেন সতীশ কৌশিক। সে ছবিগুলো শুধু &amp;lsquo;ছবি&amp;rsquo; হয়ে থাকবে শুধুই সামাজিক যোগাযোগমাধ্যমে। এমন আনন্দ মুহূর্তে বন্ধুদের সঙ্গে রং খেলার রঙিন মুহূর্তটা আর কোনো দিন ফিরবে না অভিনেতার জীবনে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এখন পর্যন্ত সতীশের মৃত্যুর কোনো কারণ নির্দিষ্টভাবে জানা যায়নি। তবে সতীশের সহ&amp;ndash;অভিনেতা অনুপম খের টুইটে জানান, গাড়ির মধ্যেই হৃদ্&amp;zwnj;রোগে আক্রান্ত হয়েছিলেন এই বর্ষীয়ান অভিনেতা। জানা গেছে, আজই তাঁর শেষকৃত্য সম্পন্ন হবে। এ মুহূর্তে গুরুগ্রামের ফর্টিস হাসপাতালে রয়েছে তাঁর মরদেহ। সেখানেই মৃত্যুর সঠিক কারণ জানতে ময়নাতদন্ত করা হবে। এরপর মুম্বাইয়ে অভিনেতার বাসভবনে দেহ নিয়ে যাওয়া হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug17.webp&quot; style=&quot;height:853px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;বন্ধু অভিনেতা অনুপম খেরের সঙ্গে&lt;/p&gt;\r\n\r\n&lt;p&gt;১৯৫৬ সালের ১৩ এপ্রিল, হরিয়ানার মহেন্দ্রগড়ে জন্ম সতীশ কৌশিকের। হরিয়ানাতেই প্রাথমিক স্তরের পড়াশোনা শেষ করে সতীশ চলে যান দিল্লিতে। ১৯৭২ সালে দিল্লির কিরোরি মাল কলেজ থেকে স্নাতক পাস করেন তিনি। এরপর ভর্তি হন ন্যাশনাল স্কুল অব ড্রামা এবং ফিল্ম অ্যান্ড টেলিভিশন ইনস্টিটিউটে। ১৯৮০ সালের শুরুতে থিয়েটার অভিনেতা হিসেবে কাজ শুরু করেন সতীশ কৌশিক।&lt;/p&gt;\r\n\r\n&lt;p&gt;১৯৯৩ সালে &amp;lsquo;রূপ কি রানি চোরো কা রাজা&amp;rsquo; পরিচালনার মাধ্যমে যাত্রা শুরু পরিচালক সতীশ কৌশিকের। পরবর্তীকালে &amp;lsquo;হাম আপকে দিল মে রেহতে হ্যায়&amp;rsquo;, &amp;lsquo;মুঝে কুছ কেহনা হ্যায়&amp;rsquo;-এর মতো ছবি পরিচালনা করেন তিনি। সালমন খানের &amp;lsquo;তেরে নাম&amp;rsquo; ছবির হাত ধরে পরিচিতি বাড়ে পরিচালক সতীশ কৌশিকের। শুধু পরিচালক হিসেবে নয়, অভিনেতা হিসেবেও আলাদা পরিচিতি ছিল তাঁর।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug18.webp&quot; style=&quot;height:356px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;lsquo;মিস্টার ইন্ডিয়া&amp;rsquo; ছবিতে &amp;lsquo;ক্যালেন্ডার&amp;rsquo; চরিত্রে তাঁর অভিনয় বেশ সাড়া ফেলেছিল&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;lsquo;মিস্টার ইন্ডিয়া&amp;rsquo; ছবিতে &amp;lsquo;ক্যালেন্ডার&amp;rsquo; চরিত্রে তাঁর অভিনয় বেশ সাড়া ফেলেছিল। আশি ও নব্বইয়ের দশকের একাধিক ছবির পাশাপাশি সাম্প্রতিক সময়ে &amp;lsquo;বাগি ৩&amp;rsquo;, &amp;lsquo;ছত্রিওয়ালি&amp;rsquo;র মতো ছবিতেও অভিনয় করেছেন সতীশ কৌশিক। পর্দায় কৌতুকাভিনয় জন্যই খ্যাতি ছিল তাঁর। ১৯৮৫ সালে শশী কৌশিকের সঙ্গে বিবাহবন্ধনে আবদ্ধ হন সতীশ কৌশিক।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/090323735a8c19d168ba8.webp', 'বলিউড পরিচালক ও অভিনেতা সতীশ কৌশিক', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-09 07:20:33', 0, 1);
INSERT INTO `samojugc_news_datatable` (`id`, `datatable`, `admin_id`, `category_id`, `title`, `keywords`, `description`, `thumbnail`, `teaser`, `link`, `liked`, `unliked`, `watched`, `date`, `topnews`, `status`) VALUES
(238, 'samojugc_datatable', 5, 63, 'ঘোড়ায় চেপে বরকেই আনতে গিয়েছিলেন বউ', 'ঘোড়ায় চেপে বরকেই আনতে গিয়েছিলেন বউ', '&lt;p&gt;ফেসবুকে হঠাৎ ভাইরাল গায়েহলুদের একটা ছবি, যেখানে দেখা যাচ্ছে,&amp;nbsp;ঘোড়ায় চেপে বরকে নিতে এসেছে বউ। ঘোড়ায় চেপে বউ আনতে চলেছে বর, এমনটা অনেক সিনেমাতেই দেখা যায় কিন্তু এখানে যে উল্টো চিত্র। বরকে নিতে এসেছে কনে! নানা চমকে ভরা আলোচিত সেই বিয়ের গল্পই শোনালেন&lt;strong&gt;&amp;nbsp;জিনাত শারমিন&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;তাসমিত আফিয়াতের বাবা সরকারি চাকরিজীবী। তিনি চেয়েছিলেন, মেয়ে ঢাকা বিশ্ববিদ্যালয়ের আন্তর্জাতিক সম্পর্ক বিভাগে পড়ুক। সেই সুযোগও মেয়ে পেয়েছিলেন। তবে ছোটবেলা থেকেই তাঁর সৃষ্টিশীল কাজে আগ্রহ। তাই ভর্তি হয়ে গেলেন চারুকলায়, গ্রাফিক ডিজাইন বিভাগে। স্বাভাবিকভাবেই বাবার সঙ্গে মন&amp;ndash;কষাকষি হলো। আর তখনই মেয়ে ঠিক করলেন, বাবার ইচ্ছায় যেহেতু পড়ছেন না, বাবার কাছ থেকে পড়াশোনা বাবদ কোনো অর্থও নেবেন না। তাই প্রথম বর্ষ থেকেই কাজে হাত দিলেন। পড়াশোনা শেষ করে একটি বিজ্ঞাপনী সংস্থায় ডিজাইনার ও শিল্পনির্দেশকের&amp;nbsp;কাজ নেন তাসমিত আফিয়াত, কাছের মানুষেরা যাকে অর্নি নামেই চেনে বেশি। এই তাসমিতই আলোচিত সেই বিয়ের কনে। আর বর সাবিন হিন্টন। মার্কিন নাগরিক,&amp;nbsp;পেশায় মার্কিন পররাষ্ট্রবিষয়ক কর্মকর্তা।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug20.webp&quot; style=&quot;height:427px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;রিকশা প্রিন্টের থিমে তৈরি লেহেঙ্গায় কনে&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;ডেকেছি কে আগে, কে দিয়েছে সাড়া&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;১৮ মাসের জন্য সাবিনের পোস্টিং ছিল ঢাকার মার্কিন দূতাবাসে। সেই সময় ২০২১ সালের ২৫ নভেম্বর এক কমন বন্ধুর মাধ্যমে সাবিন&amp;ndash;অর্নির পরিচয়। ছয় মাসে কয়েকবার মাত্র দেখা হয়েছে। সাবিন বিশেষ একটা কথাবার্তা বলতেন না। সরাসরি বিয়ের প্রস্তাব দিয়ে বসলেন। অর্নির ভাষায়, &amp;lsquo;ও সরাসরি বাংলায় প্রপোজ করল। আগে ওর সঙ্গে আমার কোনো প্রেমালাপ হয়নি। ও নাকি আমার ব্যক্তিত্বের প্রেমে পড়েছিল। ও কী বলল,&amp;nbsp;সেটা বুঝতেই পাঁচ মিনিট লেগেছিল। আমি তো শুনেই &amp;ldquo;না&amp;rdquo; করে দিয়েছিলাম।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug21.webp&quot; style=&quot;height:427px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;মার্কিন বর সাবিন হিন্টন&lt;/p&gt;\r\n\r\n&lt;p&gt;কেন? &amp;lsquo;ছোটবেলা থেকেই আমি কাজপাগল মানুষ। উচ্চমাধ্যমিকের পর থেকে কাজ শুরু করি। ঢাকা বিশ্ববিদ্যালয়ে চারুকলায় যখন পড়ি,&amp;nbsp;তখন থেকেই আমার নিজের ফ্যাশন ব্র্যান্ড আছে। আবার শিল্পনির্দেশনাও দিই। আমি খুবই স্বাধীনচেতা মানুষ। আমার অধীন যাঁরা কাজ করেন,&amp;nbsp;তাঁদের সংসারের দায়িত্ব আমার। দেশ ছেড়ে,&amp;nbsp;নিজের কাজ ছেড়ে এক বিদেশি নাগরিককে বিয়ের সিদ্ধান্ত নেওয়াটা আমার জন্য কঠিন ছিল,&amp;rsquo; অর্নির ঝটপট উত্তর।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug22.webp&quot; style=&quot;height:960px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;বিয়েতে বর&amp;ndash;কনে&lt;/p&gt;\r\n\r\n&lt;p&gt;সাবিন অর্নিকে বলেছিলেন, &amp;lsquo;আমার বিয়ের প্রস্তাব ফিরিয়ে দেওয়ার একটা যৌক্তিক কারণ বলো।&amp;rsquo;&amp;nbsp;মিনিট দশেক ভেবেও কোনো কারণ খুঁজে পাননি অর্নি। এরপর সপ্তাহ দুয়েক সাবিনের সঙ্গে&amp;nbsp;&amp;lsquo;ডেট&amp;rsquo;&amp;nbsp;করেন। তারপর নিজেই সাবিনের প্রেমে পড়ে গেলেন। কেন ভালো লাগল সাবিনকে? অর্নি বলেন, &amp;lsquo;ও খুবই ভদ্র,&amp;nbsp;বিনয়ী একটা মানুষ। ওকে বিয়ে করলে আমার কাজ বা স্বাধীনতায় কোনো ক্ষতি হবে বলে মনে হয়নি। তখন বললাম, &amp;ldquo;আমার বাবা,&amp;nbsp;মা আর ভাইকে রাজি করাও।&amp;rdquo; সাবিন মা দিবসে আমার মা আর ছোট ভাইকে মার্কিন দূতাবাসের অনুষ্ঠানে দাওয়াত দিয়ে পটিয়ে ফেলল।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug23.webp&quot; style=&quot;height:960px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;জামদানির কাপড়ে তৈরি গাউন&lt;/p&gt;\r\n\r\n&lt;p&gt;১৫ মে বাগদান আর বিয়ে, দুটেোই হয়ে গেল।&amp;nbsp; বরের ঢাকার বাসার ছাদেই সব হল।&amp;nbsp;বনানীতে বিদেশি কূটনীতিকদের জন্য বরাদ্দ যে বাসা,&amp;nbsp;তার ছাদে ছোট্ট করে অনুষ্ঠান। তারপর গায়েহলুদ আর সবশেষে সংবর্ধনা। গায়েহলুদে তাঁর পরনে ছিল রিকশা প্রিন্টের থিমে তৈরি লেহেঙ্গা। এই গায়ে হলুদেই ঘোড়ায় করে বর নিতে এসেছিলেন কনে। এই উল্টো রীতি কেন জানতে চাইলে কনের পাল্টা প্রশ্ন, &amp;lsquo;কে বলেছে, বরই কেবল বউকে নিতে আসবে? বউ কেন ঘোড়ায় চেপে বরকে নিতে আসতে পারে না?&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug24..webp&quot; style=&quot;height:427px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&amp;lsquo;সব্যসাচী ব্রাইড না, রিকশা ব্রাইড হব&amp;rsquo;&lt;/strong&gt;&lt;br /&gt;\r\nছোটবেলা থেকেই রিকশা থিম নিয়ে কাজ করেছেন অর্নি। উচ্চমাধ্যমিকের পর এনটিভির স্টাইল গুরু প্রতিযোগিতায় রিকশা থিমের কস্টিউম বানিয়ে তিনি প্রথম হন। ২০১৯ সালে যুক্তরাষ্ট্রের জর্জিয়ায় অনুষ্ঠিত মিস ইউনিভার্সের আসরে শিরিন শিলাও পরেছিলেন অর্নির নকশা করা লাল জামদানি শাড়ি,&amp;nbsp;সঙ্গে রিকশার হুড আর বর্ণমালার গয়না।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug25.webp&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;আগত অতিথিরাও পরেছিলেন রিকশা পেইন্টের থিমের পোশাক&lt;/p&gt;\r\n\r\n&lt;p&gt;১১ বছর ধরে ডিজাইনার হিসেবে কাজ করছেন অর্নি। বিয়ের কনেরা তাঁকে ভারতীয় বাঙালি ডিজাইনার সব্যসাচীর গাউন দেখিয়ে বলতেন সেটির মতো একটা গাউন বানিয়ে দিতে। শুনে অর্নির খারাপ লাগত। তিনি বললেন, &amp;lsquo;আমি ঠিক করেছিলাম,&amp;nbsp;আমি সব্যসাচী ব্রাইড হব না; বরং রিকশা ব্রাইড হব। আমি সব অতিথির জন্য আমার ব্র্যান্ড স্ট্রাইড থেকে কটি আর ব্লাউজ পাঠিয়েছিলাম। সেখানে ছিল রিকশা পেইন্টের থিমে আমার আর সাবিনের চেহারা।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug26.webp&quot; style=&quot;height:426px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;গরম&amp;ndash;গরম জিলাপিতে অতিথি আপ্যায়ন&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;বিয়েতে বাঙালিয়ানা&lt;/strong&gt;&lt;br /&gt;\r\nগায়েহলুদে আমন্ত্রিত অতিথিরা হলরুমে ঢুকতেই রিসেপশনে তাঁদের হাতে তুলে দেওয়া হয় আখের রস। বিদেশি অতিথিরা খুবই মজা করে আখের রস খেয়েছেন। পাতায় বানানো বাটিতে খেয়েছেন ফুচকা। ছিল চটপটি,&amp;nbsp;হাওয়াই মিঠাই,&amp;nbsp;মাটির কাপে চা,&amp;nbsp;মিষ্টি পান ও&amp;nbsp;আগুন পান। শুটিং (বেলুন ফাটানো),&amp;nbsp;টিয়া পাখিকে দিয়ে ভাগ্যগণনার ব্যবস্থাও ছিল। সংবর্ধনা অনুষ্ঠানে গামছা দিয়ে পাখনার মতো করে ফটোবুথ বানানো ছিল। আবার তালপাতার পাখার থিমেও আরেকটা ফটোবুথ ছিল। নিজের সংস্কৃতির পাঁড় ভক্ত অর্নি। বিয়ের সব আয়োজনে ছিল তারই ছোঁয়া।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug27.webp&quot; style=&quot;height:960px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;কনেকে সাদা গাউনে দেখার ইচ্ছে ছিল বরের&lt;/p&gt;\r\n\r\n&lt;p&gt;অর্নিদের গায়েহলুদ আর সংবর্ধনা অনুষ্ঠানের নিমন্ত্রণপত্র সিড&amp;ndash;পেপার দিয়ে বানানো। প্রতিটি কার্ডে ব্যবহার করা হয়েছিল ১৫ থেকে ২০টি টমেটোর বীজ। তাই কার্ডটি টবে বা মাটিতে ফেলে রাখলেই গাছ জন্মাবে যেখান থেকে।&lt;br /&gt;\r\nঅর্নির বরের ইচ্ছা ছিল সংবর্ধনা অনুষ্ঠানে কনেকে সাদা গাউনে দেখার। বরের দাবি মেনে সাদা গাউনই পরেছিলেন, তবে তা তৈরি করেছিলেন জামদানি কাপড়ে। আর পরেছিলেন রুপার গয়না। ছোটবেলা থেকেই এই বাংলাদেশি ডিজাইনারের রুপা খুব পছন্দ। অর্নি বলেন, &amp;lsquo;বিয়েতে কেন সোনা বা হীরা পরতেই হবে?&amp;nbsp;কনের যেটা ইচ্ছা, সেটা পরবে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug28.webp&quot; style=&quot;height:960px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;পুরো দেশীয় আদলে সাজানো হয়েছিল বিয়ে বাড়ি&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;সব তো হলো, এবার কী করবেন?&lt;/strong&gt;&lt;br /&gt;\r\nবিয়ের পরই যুক্তরাষ্ট্রে শ্বশুরবাড়ি থেকে ঘুরে এসেছেন অর্নি। গ্রিন কার্ডও নিয়েছেন। আপাতত কাতারের দোহায় আছেন। দুই থেকে তিন বছরের জন্য তাঁর জীবনসঙ্গীর পোস্টিং যে ওই দেশে। সেখান থেকেই নিয়মিত যুক্তরাষ্ট্রে যাওয়া&amp;ndash;আসা করবেন। আর সময় পেলেই উড়াল দেবেন বাংলাদেশে। এই জানুয়ারিতেই আবার মিস ওয়ার্ল্ড বাংলাদেশের কাজে দেশে আসার কথা আছে। বিশ্বের যে প্রান্তেই থাকুন না কেন, সেখান থেকেই নিজের ফ্যাশন ব্র্যান্ডের কাজ চালিয়ে যাবেন অর্নি। আর সময়&amp;ndash;সুযোগ পেলেই টুকটাক শিল্পনির্দেশনার কাজ করবেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0903236ca25b0b8fe4a02.webp', 'ঘোড়ায় চড়িয়া কন্যা বিয়েতে আসিল', 'https://facebook.com/samojugnews', 0, 0, '2', '2023-03-09 07:34:10', 0, 1),
(239, 'samojugc_datatable', 5, 64, 'অ্যান্ড্রয়েড ফোনে কথা বলে বার্তা লিখবেন যেভাবে', 'অ্যান্ড্রয়েড ফোনে কথা বলে বার্তা লিখবেন যেভাবে', '&lt;p&gt;কাজে ব্যস্ত থাকার কারণে অনেক সময়ই গুরুত্বপূর্ণ বার্তা বা ই-মেইলের উত্তর দেওয়া সম্ভব হয় না। ফলে অনেকেই বিব্রতকর সমস্যার মুখোমুখি হন। তবে অ্যান্ড্রয়েড অপারেটিং সিস্টেমের স্পিচ টু টেক্সট সুবিধা কাজে লাগিয়ে চাইলেই মুখের কথাকে বার্তায় রূপান্তর করা সম্ভব। বাংলা, ইংরেজিসহ বিভিন্ন ভাষা সমর্থন করায় মেশিন লার্নিং প্রযুক্তির এ সুবিধা কাজে লাগিয়ে যেকোনো বার্তা সহজে লেখা সম্ভব। অ্যান্ড্রয়েড ফোনের জিবোর্ডসহ বেশ কিছু কি&amp;ndash;বোর্ড অ্যাপে স্বয়ংক্রিয়ভাবে স্পিচ টু টেক্সট সুবিধা ব্যবহার করা যায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;স্পিচ টু টেক্সট সুবিধা ব্যবহারের জন্য প্রথমে ফোনের সেটিংসে প্রবেশ করে জেনারেল ম্যানেজমেন্ট অপশন থেকে ল্যাঙ্গুয়েজ অ্যান্ড কি&amp;ndash;বোর্ড নির্বাচন করতে হবে। এরপর জিমেইল, হোয়াটসঅ্যাপ, মেসেঞ্জার বা যে অ্যাপে বার্তা লিখতে চান তা চালু করে কি&amp;ndash;বোর্ডের ওপরের অংশে থাকা মাইক্রোফোন আইকনে ট্যাপ করতে হবে। এবার যা লিখতে চান তা স্পষ্টভাবে উচ্চারণ করলেই মুখের কথা লেখা আকারে টাইপ হয়ে যাবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/090323b4de09aca5e0d6a.webp', 'মুখের কথাকে বার্তায় রূপান্তর করা সম্ভব', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-09 08:14:29', 0, 1),
(240, 'samojugc_datatable', 5, 64, 'নির্ধারিত সময়ে মুছে যাবে হোয়াটসঅ্যাপ গ্রুপ', 'নির্ধারিত সময়ে মুছে যাবে হোয়াটসঅ্যাপ গ্রুপ', '&lt;p&gt;হোয়াটসঅ্যাপে পাঠানো বার্তা নির্দিষ্ট সময় পর স্বয়ংক্রিয়ভাবে মুছে ফেলা যায়। এ জন্য বার্তা পাঠানোর আগেই সেগুলো মুছে যাওয়ার সময় নির্ধারণ করে দিতে হয় ব্যবহারকারীদের। এবার শুধু বার্তা নয়, নির্ধারিত সময়ে পুরো গ্রুপই মুছে ফেলার সুযোগ মিলবে হোয়াটসঅ্যাপে। এ জন্য &amp;lsquo;এক্সপায়ারিং গ্রুপ&amp;rsquo; নামের নতুন সুবিধা চালু করছে মেটার মালিকানাধীন ইনস্ট্যান্ট মেসেজিং অ্যাপটি।&lt;/p&gt;\r\n\r\n&lt;p&gt;নির্দিষ্ট দিন বা অনুষ্ঠান উপলক্ষে হোয়াটসঅ্যাপে গ্রুপ খুলে বন্ধু বা পরিচিত ব্যক্তিদের যুক্ত করেন অনেকেই। কিন্তু ব্যস্ততার কারণে অনেক সময়ই অনুষ্ঠান শেষে গ্রুপগুলো আর মুছে ফেলা হয় না। ফলে প্রয়োজন ছাড়াই বিভিন্ন গ্রুপের সদস্য হয়ে থাকতে হয়। &amp;lsquo;এক্সপায়ারিং গ্রুপ&amp;rsquo; সুবিধা চালু হলে নির্দিষ্ট দিন বা অনুষ্ঠান শেষে স্বয়ংক্রিয়ভাবে হোয়াটসঅ্যাপ থেকে নির্দিষ্ট গ্রুপ মুছে যাবে। ফলে অপ্রয়োজনীয় গ্রুপের সঙ্গে যুক্ত থাকতে হবে না।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;lsquo;এক্সপায়ারিং গ্রুপ&amp;rsquo; সুবিধা ব্যবহারের জন্য গ্রুপ খোলার সময়ই মুছে ফেলার দিনক্ষণ নির্ধারণ করে দিতে হবে। গ্রুপে যুক্ত হওয়ার সময় অন্য সদস্যরা মুছে ফেলার সময় জানতে পারবেন। ফলে চাইলেই গ্রুপে আদান-প্রদান করা গুরুত্বপূর্ণ তথ্য আগে থেকে সংগ্রহ করা যাবে। প্রাথমিকভাবে আইফোনে এ সুবিধা ব্যবহার করা যাবে। তবে কবে নাগাদ এ সুবিধা চালু হবে, সে বিষয়ে এখনো কোনো তথ্য জানায়নি হোয়াটসঅ্যাপ।&lt;br /&gt;\r\nসূত্র: ওয়েববেটা ইনফো&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/090323d1087f147bbccd3.webp', 'নির্ধারিত সময়ে মুছে যাবে হোয়াটসঅ্যাপ গ্রুপ', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-09 08:16:55', 0, 1),
(241, 'samojugc_datatable', 5, 65, 'রুয়েটে বিভিন্ন কোর্সে পিএইচডি ও এমফিল প্রোগ্রামে ভর্তি', 'রুয়েটে বিভিন্ন কোর্সে পিএইচডি ও এমফিল প্রোগ্রামে ভর্তি', '&lt;p&gt;রাজশাহী প্রকৌশল ও প্রযুক্তি বিশ্ববিদ্যালয়ে ২০২২-২৩ শিক্ষাবর্ষে পুরকৌশল, তড়িৎ ও ইলেকট্রনিক কৌশল, যন্ত্রকৌশল, কম্পিউটার সায়েন্স অ্যান্ড ইঞ্জিনিয়ারিং, ইন্ডাস্ট্রিয়াল অ্যান্ড প্রোডাকশন ইঞ্জিনিয়ারিং, ইলেকট্রনিকস অ্যান্ড টেলিকমিউনিকেশন ইঞ্জিনিয়ারিং, গ্লাস অ্যান্ড সিরামিক ইঞ্জিনিয়ারিং, মেকাট্রনিকস ইঞ্জিনিয়ারিং, ইউআরপি, গণিত, রসায়ন ও পদার্থবিদ্যা বিভাগে পিএইচডি/এমফিল/এমএসসি ইঞ্জিনিয়ারিং/এম ইঞ্জিনিয়ারিং/এমএসসি এবং IICT, IEES-তে PGD (Post Graduate Diploma) কোর্সে ভর্তির প্রক্রিয়া শুরু হয়েছে। প্রার্থীদের নির্ধারিত ফরমে অনলাইনের মাধ্যমে আবেদন করতে হবে।&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;প্রকৌশল বিভাগগুলোতে এমএসসি ইঞ্জিনিয়ারিং/এম ইঞ্জিনিয়ারিংয়ে ভর্তির জন্য প্রার্থীদের মাধ্যমিক ও উচ্চমাধ্যমিক পর্যায়ে জিপিএ ৫&amp;ndash;এর মধ্যে ৩.৫০ পেয়ে পাস করতে হবে ও কোনো স্বীকৃত শিক্ষাপ্রতিষ্ঠান/বিশ্ববিদ্যালয় হতে সংশ্লিষ্ট ডিসিপ্লিনে বিএসসি ইঞ্জিনিয়ারিং বা সমতুল্য ডিগ্রিতে সিজিপিএ ৪&amp;ndash;এর মধ্যে ২.৭৫ পেতে হবে এবং পিএইচডি কোর্সে ভর্তির জন্য সংশ্লিষ্ট ডিসিপ্লিনে সিজিপিএ ৪&amp;ndash;এর মধ্যে ৩ পেয়ে এমএসসি ইঞ্জিনিয়ারিং বা সমতুল্য ডিগ্রি থাকতে হবে।&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;গণিত, রসায়ন ও পদার্থবিদ্যা বিভাগসমূহে এমএসসিতে ভর্তির জন্য প্রার্থীদের মাধ্যমিক ও উচ্চমাধ্যমিক পর্যায়ে জিপিএ ৫&amp;ndash;এর মধ্যে ৩.৫০ পেয়ে পাস করতে হবে ও কোনো স্বীকৃত শিক্ষাপ্রতিষ্ঠান/বিশ্ববিদ্যালয় হতে সংশ্লিষ্ট ডিসিপ্লিনে বিএসসি (সম্মান) বা সমতুল্য ডিগ্রিতে সিজিপিএ ৪&amp;ndash;এর মধ্যে ২.৭৫ পেতে হবে।&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;গণিত, রসায়ন ও পদার্থবিদ্যা বিভাগে এমফিল কোর্সে ভর্তি&amp;ndash;ইচ্ছুক প্রার্থীদের মাধ্যমিক ও উচ্চমাধ্যমিক পর্যায়ে জিপিএ ৫&amp;ndash;এর মধ্যে ৩.৫০ পেয়ে পাস করতে হবে ও কোনো স্বীকৃত শিক্ষাপ্রতিষ্ঠান/বিশ্ববিদ্যালয় হতে সংশ্লিষ্ট ডিসিপ্লিনে এমএসসি বা সমতুল্য ডিগ্রিতে সিজিপিএ ৪&amp;ndash;এর মধ্যে ২.৭৫ পেতে হবে এবং পিএইচডি কোর্সে ভর্তির জন্য সংশ্লিষ্ট ডিসিপ্লিনে সিজিপিএ ৪&amp;ndash;এর মধ্যে ৩ পেয়ে এমফিল বা সমতুল্য ডিগ্রি থাকতে হবে।&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;&lt;strong&gt;বিশ্ববিদ্যালয়ের অনলাইনের মাধ্যমে ভর্তি ফরম জমার শেষ তারিখ&lt;/strong&gt;: ১৬/০৩/২০২৩।&lt;/p&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;\r\n	&lt;p&gt;&lt;strong&gt;বিস্তারিত তথ্য জানতে ওয়েবসাইট&lt;/strong&gt;: &lt;a href=&quot;https://www.ruet.ac.bd/&quot; target=&quot;_blank&quot;&gt;ruet.ac.bd&lt;/a&gt;&lt;/p&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug32.webp&quot; style=&quot;height:1073px; width:640px&quot; /&gt;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0903239ddb6504f745d60.webp', 'প্রতীকী ছবি', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-09 08:57:50', 0, 1),
(242, 'samojugc_datatable', 5, 65, 'মনিপুর স্কুলে অচলাবস্থা, পাল্টাপাল্টি ছুটি ঘোষণা', 'মনিপুর স্কুলে অচলাবস্থা, পাল্টাপাল্টি ছুটি ঘোষণা', '&lt;p&gt;রাজধানীর মনিপুর উচ্চবিদ্যালয় ও কলেজে অচলাবস্থা দেখা দিয়েছে। বিবদমান দুটি পক্ষ পাল্টাপাল্টি ছুটি ঘোষণা করেছে। এর মধ্যে পরিচালনা কমিটির সভাপতির পক্ষ থেকে ১৫ মার্চ পর্যন্ত ছুটি ঘোষণা করা হয়েছে। আর ভারপ্রাপ্ত প্রধান শিক্ষকের পক্ষ থেকে আগামীকাল বৃহস্পতিবার এক দিনের ছুটি ঘোষণা করা হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;সংশ্লিষ্ট সূত্রে জানা গেছে, মাধ্যমিক ও উচ্চশিক্ষা অধিদপ্তর (মাউশি) ২০২০ সালে তদন্ত করে বলেছিল মনিপুর উচ্চবিদ্যালয় ও কলেজের অধ্যক্ষ পদে মো. ফরহাদ হোসেনের নিয়োগ অবৈধ। এরপর ঢাকা মাধ্যমিক ও উচ্চমাধ্যমিক শিক্ষা বোর্ডের আরেক তদন্তেও বেরিয়ে আসে অধ্যক্ষ পদে ফরহাদ হোসেনের চাকরির মেয়াদ বৃদ্ধি বিধিসম্মত হয়নি। এ নিয়ে ব্যবস্থা নেওয়ার প্রক্রিয়ার মধ্যেই বিষয়টি উচ্চ আদালতে গড়ায়। কারণ, প্রতিষ্ঠানের পরিচালনা কমিটির প্রভাবশালী একটি পক্ষ ফরহাদ হোসেনের পক্ষে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ অবস্থায় আদালতের নির্দেশে গত ২৭ ফেব্রুয়ারি প্রতিষ্ঠানের জ্যেষ্ঠতম শিক্ষক মো. জাকির হোসেনকে ভারপ্রাপ্ত প্রধান শিক্ষকের দায়িত্ব দিতে নির্দেশ দেয় মাউশি। পরিচালনা কমিটির সভাপতির কাছে লেখা পত্রে তিন কর্মদিবসের মধ্যে এই ব্যবস্থা নিতে বলেছিল মাউশি। তবে পরিচালনা কমিটি এ বিষয়ে কার্যকর ব্যবস্থা নেয়নি। এরপর ৬ মার্চ দুপুরে প্রতিষ্ঠানটির মূল বালিকা বিদ্যালয় ক্যাম্পাসে যান জাকির হোসেন। তখন একদল শিক্ষক তাঁকে প্রধান শিক্ষকের কক্ষে নিয়ে গিয়ে আসনে বসান। পরে বিভিন্ন ক্যাম্পাসের শিক্ষকেরা এসে তাঁকে অভিনন্দন জানান। এ নিয়ে সৃষ্ট পরিস্থিতিতে ওই দিন ক্যাম্পাসে পুলিশও আসে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ ঘটনার জের ধরে পরিস্থিতি আরও অস্থিতিশীল হয়। এ অবস্থায় অস্থায়ী পরিচালনা কমিটির সভাপতি এ কে এম দেলোয়ার হোসেন এক নোটিশে আগামীকাল বৃহস্পতিবার থেকে ১৫ মার্চ পর্যন্ত শ্রেণি কার্যক্রমসহ সব দাপ্তরিক কার্যক্রম বন্ধ ঘোষণা করেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;তবে &amp;lsquo;ভারপ্রাপ্ত প্রধান শিক্ষক&amp;rsquo; জাকির হোসেন আজ বুধবার আরেক নোটিশে সভাপতির দেওয়া ছুটির নোটিশটিকে &amp;lsquo;বিধিবহির্ভূত&amp;rsquo; উল্লেখ করে প্রধান শিক্ষকের সংরক্ষিত তিন দিনের ছুটি (উল্লেখ শিক্ষাপ্রতিষ্ঠানের প্রধানেরা নির্ধারিত ছুটির বাইরেও বছরে তিন দিন ছুটি দিতে পারেন) থেকে শুধু আগামীকাল ছুটি ঘোষণা করেন। নোটিশে এক দিনে ছুটি ঘোষণা করে তিনি বলেন, ১২ মার্চ রোববার থেকে যথারীতি শ্রেণি ও দাপ্তরিক কার্যক্রম চালু থাকবে। নোটিশে এ বিষয়ে সভাপতির সহযোগিতা চেয়েছেন তিনি।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ বিষয়ে পরিচালনা কমিটির সভাপতি এ কে এম দেলোয়ার হোসেনের সঙ্গে কথা বলার জন্য মুঠোফোনে যোগাযোগের চেষ্টা করা হলে অপর প্রান্ত থেকে তাঁর ভাই পরিচয় দেওয়া এক ব্যক্তি জানান, দেলোয়ার হোসেনের গতকাল রাতে বিদেশে গেছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/09032329de6d1ac037ce2.webp', 'প্রতীকী ছবি', 'https://facebook.com/samojugnews', 0, 0, '1', '2023-03-09 09:02:57', 0, 1),
(243, 'samojugc_datatable', 5, 66, 'বাঙালির রঙের উৎসব দোল পূর্ণিমা', 'বাঙালির রঙের উৎসব দোল পূর্ণিমা', '&lt;p&gt;বাঙালির সনাতন হিন্দুদের পার্বণের কোনো শেষ নেই। এর মধ্যে উল্লেখযোগ্য একটি পার্বণ হচ্ছে দোল দোল পূর্ণিমা বা দোল উৎসব। দোলকে রঙের উৎসব বলা হয়, যা ফাল্গুন মাসের পূর্ণিমা তিথিতে উদ্&amp;zwnj;যাপিত হয়। কোথাও এই দোল পূর্ণিমাকে দোল যাত্রা বলে। আবার ফাল্গুনী পূর্ণিমাকেও দোল পূর্ণিমা বলা হয়ে থাকে। মহাপ্রভু শ্রী চৈতন্যের জন্ম হয়েছিল এই পূর্ণিমার তিথিতে, তাই দোল পূর্ণিমাকে গৌরী পূর্ণিমা বলা হয়। দোল পূর্ণিমা অনেক পৌরাণিক ঘটনা। এই তিথিতে বৃন্দাবনে আবির ও গুলাল নিয়ে শ্রী কৃষ্ণ, রাঁধা এবং তার গোপীগনের সঙ্গে হোলি খেলেছিল আর সেই ঘটনা থেকে উৎপত্তি হয় দোল খেলা।&lt;/p&gt;\r\n\r\n&lt;p&gt;শাস্ত্র অনুসারে বৈষ্ণবীয় উৎসবের শেষ উৎসব দোল উৎসব। ফাল্গুনী পূর্ণিমায় উদ্&amp;zwnj;যাপিত এই উৎসবের উল্লেখ মেলে বিভিন্ন পুরাণে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug35.webp&quot; style=&quot;height:427px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ঠিক ফাল্গুনী পূর্ণিমার আগের দিন শুক্লা চতুর্দশী তিথিতে শ্রীকৃষ্ণ ও বলরাম মিলে ওই দুই দৈত্যকে হত্যা করেন। এর পর সন্ধ্যার সময় শুকনো কাঠ, খড়কুটো দিয়ে তাদের আগুনে পুড়িয়ে দেন। সেই দিন থেকে ন্যাড়া পোড়া প্রচলিত হয়। এইভাবে শ্রীকৃষ্ণ দুই দৈত্যের অত্যাচার থেকে মথুরাসাবীকে মুক্তি দিলেন। মথুরাবাসী তাদের এই মুক্তির দিনটি শ্রীকৃষ্ণ ও বলরামের সঙ্গে রঙে রঙে উদ্&amp;zwnj;যাপন করেন। সে দিন থেকেই শুরু হয় এই দোল উৎসব।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug36.webp&quot; style=&quot;height:392px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;দ্বাপর যুগের কথা। সেই সময় দুই দৈত্যের অত্যাচারে মথুরাবাসী অত্যন্ত সন্ত্রস্ত ছিলেন। সব সময় তারা ভয়ে আতঙ্কে দিন কাটাচ্ছিলেন। সে সময়ে সকল মথুরাবাসী এক হয়ে শ্রীকৃষ্ণের কাছে তাদের এই অত্যাচারের কথা বর্ণনা করেন এবং এই অত্যাচারের হাত থেকে তাদের রক্ষা করতে অনুরোধ করেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;ঠিক ফাল্গুনী পূর্ণিমার আগের দিন শুক্লা চতুর্দশী তিথিতে শ্রীকৃষ্ণ ও বলরাম মিলে ওই দুই দৈত্যকে হত্যা করেন। এর পর সন্ধ্যার সময় শুকনো কাঠ, খড়কুটো দিয়ে তাদের আগুনে পুড়িয়ে দেন। সেই দিন থেকে ন্যাড়া পোড়া প্রচলিত হয়। এইভাবে শ্রীকৃষ্ণ দুই দৈত্যের অত্যাচার থেকে মথুরাসাবীকে মুক্তি দিলেন। মথুরাবাসী তাদের এই মুক্তির দিনটি শ্রীকৃষ্ণ ও বলরামের সঙ্গে রঙে রঙে উদ্&amp;zwnj;যাপন করেন। সে দিন থেকেই শুরু হয় এই দোল উৎসব।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug37.webp&quot; style=&quot;height:426px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;এখানে বলে রাখা ভালো যে, দোল এবং হোলি একই রকম মনে হলেও এ দুটি মূলত আলাদা অনুষ্ঠান। সাধারণত দোলের পরের দিন হোলি উৎসব অনুষ্ঠিত হয়। দোল নিতান্তই বাঙালিদের। আর হোলি অবাঙালি হিন্দুদের উৎসব। বাঙালি সমাজে দোলযাত্রাকে বসন্তের আগমনী বার্তা হিসেবে বিবেচনা করা হয়। এই উৎসবের মাধ্যমে বসন্তকে স্বাগত জানানো হয়। যা কৃষি মৌসুমের সূচনা করে, অশুভের বিরুদ্ধে শুভ শক্তির বিজয় এবং চিরন্তন প্রেমের ঘোষণা করে। বাংলায় বসন্ত মানেই পলাশ ফুল যা বসন্তেরই মূর্ত প্রতীক।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug38.webp&quot; style=&quot;height:427px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;তবে দোল উৎসব মূলত হিন্দু বৈষ্ণবদের উৎসব। বৈষ্ণব বিশ্বাস অনুযায়ী, এ দিন শ্রীকৃষ্ণ বৃন্দাবনে রাধিকা এবং তার সখীদের সঙ্গে আবির খেলেছিলেন। সেই ঘটনা থেকেই দোল খেলার উৎপত্তি। এ কারণে দোলযাত্রার দিন এ মতের বিশ্বাসীরা রাধা-কৃষ্ণের বিগ্রহ আবিরে রাঙিয়ে দোলায় চড়িয়ে নগর কীর্তনে বের হন। এ সময় তারা রং খেলার আনন্দে মেতে ওঠেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;বৈষ্ণব কবি গোবিন্দ দাসের রচনায় তার নানা উল্লেখ মেলে। &amp;lsquo;&amp;lsquo;খেলত ফাগু বৃন্দাবন-চান্দ।। ঋতুপতি মন মথ মন মথ ছান্দ। সুন্দরীগণ কর মণ্ডলী মাঝ। রঙ্গিনি প্রেম তরঙ্গিনী সাজ।। আগু ফাগু দেই নাগরি-নয়নে। অবসরে নাগর চুম্বয়ে বয়নে।।&amp;rsquo;&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;তবে শুধু দেবতাকে রাঙিয়ে তোলা নয়, দোল উৎসবের সঙ্গে মিশে আছে জীবনের নানা রং। দোল উৎসবে যেমন মিশে আছে উদ্&amp;zwnj;যাপনের বৈচিত্র্য, তেমনই বাংলার বিভিন্ন প্রান্তে দেখা যায় এই উপলক্ষে মেলাও।&lt;/p&gt;\r\n\r\n&lt;p&gt;কোথাও এই দোল পূর্ণিমাকে দোল যাত্রা বলে। আবার ফাল্গুনী পূর্ণিমাকেও দোল পূর্ণিমা বলা হয়ে থাকে। মহাপ্রভু শ্রী চৈতন্যের জন্ম হয়েছিল এই পূর্ণিমার তিথিতে, তাই দোল পূর্ণিমাকে গৌরী পূর্ণিমা বলা হয়। দোল পূর্ণিমা অনেক পৌরাণিক ঘটনা। এই তিথিতে বৃন্দাবনে আবির ও গুলাল নিয়ে শ্রী কৃষ্ণ, রাঁধা এবং তার গোপীগনের সঙ্গে হোলি খেলেছিল আর সেই ঘটনা থেকে উৎপত্তি হয় দোল খেলা।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug39.webp&quot; style=&quot;height:427px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;আধুনিক বাংলায় দোল উৎসবের সূচনা করেছিলেন কবিগুরু রবীন্দ্রনাথ ঠাকুর। ১৯০৭ সালে কবিগুরু রবীন্দ্রনাথ ঠাকুরের ছোট ছেলে শমীন্দ্রনাথ ঠাকুর শুরু করেছিলেন ঋতুরঙ্গ উৎসব। সেদিন শান্তিনিকেতনের প্রাণ কুঠিরের সামনে শুরু হয় এ উৎসব। এখন অবশ্য সেদিনের প্রাণ কুঠি শমীন্দ্র পাঠাগার হিসেবে পরিচিত। সেই ঋতুরঙ্গ উৎসবই আজকের বসন্ত উৎসব। আগে বসন্তের যেকোনো দিন অনুষ্ঠিত হতো এ উৎসব। পরবর্তীকালে অবশ্য বসন্ত পূর্ণিমার দিনই অনুষ্ঠিত হয় এ উৎসব।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ উৎসব অবশ্য ঋতুরাজ বসন্তে স্বাগত জানানোর উৎসব। বাঙালির কাছে এই দোল উৎসবের এক বিশেষ আবেগ রয়েছে। বছরের এই একটা দিনের জন্য অধীর আগ্রহে অপেক্ষা করে থাকেন মানুষ। মথুরাসাবীর মতন এই বিশেষ দিনে দেশবাসী রঙের খেলায় মেতে ওঠেন। শহরের মানুষের সঙ্গে গ্রাম বাংলার মানুষ যেন মিলেমিশে এক হয়ে যায়, এই উৎসব ধনী-দরিদ্র সকলের জন্য। এই উৎসবে গা ভাসিয়ে দেন সকলে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এখানে বলে রাখা ভালো যে, দোল এবং হোলি একই রকম মনে হলেও এ দুটি মূলত আলাদা অনুষ্ঠান। সাধারণত দোলের পরের দিন হোলি উৎসব অনুষ্ঠিত হয়। দোল নিতান্তই বাঙালিদের। আর হোলি অবাঙালি হিন্দুদের উৎসব। বাঙালি সমাজে দোলযাত্রাকে বসন্তের আগমনী বার্তা হিসেবে বিবেচনা করা হয়। এই উৎসবের মাধ্যমে বসন্তকে স্বাগত জানানো হয়। যা কৃষি মৌসুমের সূচনা করে, অশুভের বিরুদ্ধে শুভ শক্তির বিজয় এবং চিরন্তন প্রেমের ঘোষণা করে। বাংলায় বসন্ত মানেই পলাশ ফুল যা বসন্তেরই মূর্ত প্রতীক।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/09032397f064ae3e45e4a.webp', 'প্রতীকী ছবি', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-09 10:45:51', 0, 1),
(246, 'samojugc_datatable', 5, 67, 'বন অধিদপ্তরে ১০৬ পদে চাকরি, আবেদন শেষ সোমবার', 'বন অধিদপ্তরে ১০৬ পদে চাকরি, আবেদন শেষ সোমবার', '&lt;p&gt;পরিবেশ, বন ও জলবায়ু পরিবর্তনবিষয়ক মন্ত্রণালয়ের অধীন বন অধিদপ্তরের রাজস্ব খাতভুক্ত দুই ক্যাটাগরির পদে নিয়োগের জন্য বিজ্ঞপ্তি প্রকাশ করা হয়েছে। এসব পদে মোট ১০৬ জনকে ঢাকা বিভাগে নিয়োগ দেওয়া হবে। আগ্রহী প্রার্থীদের আগামী সোমবারের মধ্যে অনলাইনে আবেদন করতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;ফরেস্ট গার্ড (বনপ্রহরী) পদে নেওয়া হবে ৯৫ জন। আবেদনের জন্য এইচএসসি বা সমমান পাস হতে হবে। উচ্চতা ১৬৩ সেন্টিমিটার ও বুকের মাপ ৭৬ সেন্টিমিটার। এ পদে বেতন স্কেল ৯,০০০-২১,৮০০ টাকা (গ্রেড-১৭)।&lt;/p&gt;\r\n\r\n&lt;p&gt;অফিস সহায়ক পদে নিয়োগ পাবেন ১১ জন। আবেদনের জন্য এসএসসি বা সমমান পাস এবং সুস্বাস্থ্যের অধিকারী হতে হবে। এ পদে বেতন স্কেল ৮,২৫০-২০,০১০ টাকা (গ্রেড-২০)।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;যেসব জেলার প্রার্থী আবেদন করতে পারবেন&lt;/strong&gt;&lt;br /&gt;\r\nফরেস্ট গার্ড ও অফিস সহায়ক পদে ঢাকা, গাজীপুর, মানিকগঞ্জ, মুন্সিগঞ্জ, নারায়ণগঞ্জ, নরসিংদী, মাদারীপুর, রাজবাড়ী, শরীয়তপুর, কিশোরগঞ্জ ও টাঙ্গাইল জেলার প্রার্থীরা আবেদন করতে পারবেন। তবে এতিম ও শারীরিক প্রতিবন্ধী কোটায় ঢাকা বিভাগের সব জেলার প্রার্থী আবেদন করতে পারবেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;বয়সসীমা&lt;/strong&gt;&lt;br /&gt;\r\nআবেদনকারীর বয়স ২০২৩ সালের ১৪ ফেব্রুয়ারি সর্বনিম্ন ১৮ ও ২০২০ সালের ২৫ মার্চ সর্বোচ্চ ৩০ বছরের মধ্যে হতে হবে। তবে বীর মুক্তিযোদ্ধা/শহীদ বীর মুক্তিযোদ্ধার সন্তান ও শারীরিক প্রতিবন্ধী প্রার্থীদের ক্ষেত্রে সর্বোচ্চ বয়স ৩২ বছর। বীর মুক্তিযোদ্ধা/শহীদ বীর মুক্তিযোদ্ধার নাতি-নাতনিদের ক্ষেত্রে বয়স সর্বোচ্চ ৩০ বছর।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;যেভাবে আবেদন&lt;/strong&gt;&lt;br /&gt;\r\nআগ্রহী প্রার্থীদের অনলাইনে এই &lt;a href=&quot;http://cfcc.teletalk.com.bd/&quot; target=&quot;_blank&quot;&gt;ওয়েবসাইটের&lt;/a&gt; মাধ্যমে আবেদন করতে হবে। নিয়োগসংক্রান্ত বিস্তারিত তথ্য একই লিংক বা বন অধিদপ্তরের &lt;a href=&quot;https://www.bforest.gov.bd/&quot; target=&quot;_blank&quot;&gt;ওয়েবসাইটে&lt;/a&gt; পাওয়া যাবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;আবেদন ফি&lt;/strong&gt;&lt;br /&gt;\r\nঅনলাইনে ফরম পূরণের অনধিক ৭২ ঘণ্টার মধ্যে পরীক্ষার ফি বাবদ ১০০ টাকা, টেলিটকের সার্ভিস চার্জ ১২ টাকাসহ মোট ১১২ টাকা টেলিটক প্রিপেইড মুঠোফোন নম্বর থেকে এসএমএসের মাধ্যমে জমা দিতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;আবেদনের শেষ সময়:&lt;/strong&gt; ১৩ মার্চ ২০২৩ বিকেল ৫টা পর্যন্ত।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug42.webp&quot; style=&quot;height:1054px; width:640px&quot; /&gt;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/0903236d4ba46a0e22af7.webp', 'প্রতীকী ছবি', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-09 10:56:38', 0, 1),
(247, 'samojugc_datatable', 5, 67, 'বিমানে শিক্ষানবিশ কর্মী নিয়োগের ব্যবহারিক পরীক্ষার সূচি প্রকাশ', 'বিমানে শিক্ষানবিশ কর্মী নিয়োগের ব্যবহারিক পরীক্ষার সূচি প্রকাশ', '&lt;p&gt;বিমান ফ্লাইট ক্যাটারিং সেন্টারের উৎপাদন শাখায় (বিএফসিসি) ছয় মাসের জন্য শিক্ষানবিশ কর্মী নিয়োগের বিজ্ঞপ্তির পরিপ্রেক্ষিতে যাঁরা আবেদন করেছিলেন, তাঁদের আবেদনপত্র যাচাই&amp;ndash;বাছাই করে ৮৯ জন প্রার্থীকে ব্যবহারিক পরীক্ষার জন্য নির্বাচিত করা হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিমান বাংলাদেশ এয়ারলাইনসের এক বিজ্ঞপ্তিতে এ তথ্য জানানো হয়েছে। বিজ্ঞপ্তিতে বলা হয়েছে, ৮৯ জন প্রার্থীর মধ্যে ফুড অ্যান্ড বেভারেজে ৭১ জন প্রার্থীর ব্যবহারিক পরীক্ষা ১৪ মার্চ অনুষ্ঠিত হবে। বিএফসিসি কুকিং স্কুলের ল্যাব কিচেনে এ পরীক্ষা নেওয়া হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;বেকারি অ্যান্ড পেস্ট্রি বিভাগের ১৮ জন প্রার্থীর ব্যবহারিক পরীক্ষা ১৫ মার্চ সকাল ১০টায় বিএফসিসি, হজরত শাহজালাল আন্তর্জাতিক বিমানবন্দর, ঢাকায় অনুষ্ঠিত হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;ব্যবহারিক পরীক্ষায় অংশগ্রহণের জন্য প্রার্থীদের সাদা অ্যাপ্রোন পরে আসতে হবে এবং সদ্য তোলা এক কপি পাসপোর্ট সাইজের ছবি নিয়ে আসতে হবে। পরীক্ষায় অংশগ্রহণের জন্য কোনো যাতায়াত ভাতা দেওয়া হবে না। ব্যবহারিক পরীক্ষার বিস্তারিত সময়সূচি বিমান বাংলাদেশ এয়ারলাইনসের ওয়েবসাইটে পাওয়া যাবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;শিক্ষানবিশ কর্মী হিসেবে চাকরি পেলে দৈনিক হাজিরা সাপেক্ষে ৬০০ টাকা হারে সম্মানী দেওয়া হবে। রোস্টার অনুযায়ী দৈনিক আট ঘণ্টা ডিউটি করতে হবে। বিএফসিসির কিচেন ও বেকারি ইউনিটে নিয়োগ দেওয়া হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;চূড়ান্তভাবে নির্বাচিত ইন্টার্নকে বিএফসিসিতে যোগদানের সময় পুলিশ ক্লিয়ারেন্স রিপোর্ট বাধ্যতামূলকভাবে সঙ্গে আনতে হবে। প্রত্যেক নির্বাচিত ইন্টার্নকে কাজে যোগদানের আগে বিমান মেডিকেল থেকে শারীরিক ফিটনেস সংগ্রহ করতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/090323d26d57ab7eff9ba.webp', 'বিমান বাংলাদেশ এয়ারলাইনস', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-09 10:59:01', 0, 1),
(248, 'samojugc_datatable', 5, 67, '৪৫তম বিসিএস: বিষয়ভিত্তিক মডেল টেস্ট-', '৪৫তম বিসিএস: বিষয়ভিত্তিক মডেল টেস্ট-', '&lt;p&gt;৪৫তম বিসিএসের আবেদন ইতিমধ্যে শেষ হয়েছে। এখন আবেদনকারীদের বসতে হবে প্রিলিমিনারি পরীক্ষায়। যেহেতু প্রিলিমিনারিতে প্রতিযোগী বেশি, তাই পাস করতে হলে ভালোভাবে প্রস্তুতি নিতে হবে। পরীক্ষার্থীদের প্রস্তুতির সুবিধার জন্য প্রথম আলো বিষয়ভিত্তিক মডেল টেস্টের আয়োজন করেছে। আজ বৃহস্পতিবার নিয়মিত আয়োজনের দশম পর্বে বাংলাদেশ বিষয়াবলি বিষয়ের মডেল টেস্ট প্রকাশ করা হলো।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;১. &amp;lsquo;ষষ্ঠ সাফ নারী ফুটবল চ্যাম্পিয়নশিপ ২০২২&amp;rsquo;-এ চ্যাম্পিয়ন হয় কোন দেশ?&lt;/strong&gt;&lt;br /&gt;\r\nক. বাংলাদেশ&lt;br /&gt;\r\nখ. নেপাল &amp;nbsp;&lt;br /&gt;\r\nগ. ভুটান&lt;br /&gt;\r\nঘ. মালদ্বীপ&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;২. &amp;lsquo;বঙ্গমাতা বেগম ফজিলাতুন্নেছা মুজিব অষ্টম বাংলাদেশ-চীন মৈত্রী সেতু&amp;rsquo; কোন নদীর ওপর নির্মিত?&lt;/strong&gt;&lt;br /&gt;\r\nক. কালীগঙ্গা নদী&lt;br /&gt;\r\nখ. ধলেশ্বরী নদী&lt;br /&gt;\r\nগ. তিস্তা নদী&lt;br /&gt;\r\nঘ. কচা নদী&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;৩. জাতির পিতা বঙ্গবন্ধু শেখ মুজিবুর রহমান কত সালে গণচীনে অনুষ্ঠিত শান্তি সম্মেলনে অংশ নেন?&lt;/strong&gt;&lt;br /&gt;\r\nক. ১৯৭২&lt;br /&gt;\r\nখ. ১৯৫২&lt;br /&gt;\r\nগ. ১৯৫৪&lt;br /&gt;\r\nঘ. ১৯৭৪&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;৪. বাংলাদেশ অর্থনৈতিক সমীক্ষা ২০২২ মতে, SDGs-তে কতটি সূচক রয়েছে?&lt;/strong&gt;&lt;br /&gt;\r\nক. ১৭টি&lt;br /&gt;\r\nখ. ১৬৯টি&lt;br /&gt;\r\nগ. ২৩২টি&lt;br /&gt;\r\nঘ. ২৪১টি&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;৫. বিশ্ব জনসংখ্যা প্রতিবেদন-২০২২ অনুযায়ী, জনসংখ্যায় বিশ্বে বাংলাদেশের অবস্থান কততম?&lt;/strong&gt;&lt;br /&gt;\r\nক. চতুর্থ&lt;br /&gt;\r\nখ. সপ্তম&lt;br /&gt;\r\nগ. অষ্টম&lt;br /&gt;\r\nঘ. নবম&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;৬. &amp;lsquo;গ্রামাঞ্চলে বিদ্যুতায়ণের ব্যবস্থা&amp;rsquo; বিষয়টিকে গণপ্রজাতন্ত্রী বাংলাদেশ সংবিধানের কত নং অনুচ্ছেদে রাষ্ট্র পরিচালনার মূলনীতি হিসেবে ঘোষণা করা হয়?&lt;/strong&gt;&lt;br /&gt;\r\nক. অনুচ্ছেদ ১৪&lt;br /&gt;\r\nখ. অনুচ্ছেদ ১৫ &amp;nbsp;&lt;br /&gt;\r\nগ. অনুচ্ছেদ ১৬&lt;br /&gt;\r\nঘ. অনুচ্ছেদ ১৭&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;৭. &amp;lsquo;ডিসকভারি অব বাংলাদেশ&amp;rsquo; গ্রন্থটির লেখক কে?&lt;/strong&gt;&lt;br /&gt;\r\nক. আতিউর রহমান&lt;br /&gt;\r\nখ. মোহাম্মদ ফরাসউদ্দিন &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;br /&gt;\r\nগ. আকবর আলি খান&lt;br /&gt;\r\nঘ. রেহমান সোবহান&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;৮. &amp;lsquo;শেখ রাসেল দিবস&amp;rsquo; কবে পালিত হয়?&lt;/strong&gt;&lt;br /&gt;\r\nক. ১৮ সেপ্টেম্বর&lt;br /&gt;\r\nখ. ১৮ জুলাই &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;br /&gt;\r\nগ. ১৮ নভেম্বর&lt;br /&gt;\r\nঘ. ১৮ অক্টোবর&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;৯. &amp;lsquo;একাত্তরের ঘাতক দালাল নির্মূল কমিটি&amp;rsquo; গঠিত হয় কবে?&lt;/strong&gt;&lt;br /&gt;\r\nক. ১৯ জানুয়ারি ১৯৯০&lt;br /&gt;\r\nখ. ১৯ জানুয়ারি ১৯৯১&lt;br /&gt;\r\nগ. ১৯ জানুয়ারি ১৯৯২&lt;br /&gt;\r\nঘ. ১১ জানুয়ারি ১৯৯৩&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;১০. দেশে প্রথমবারের মতো &amp;lsquo;ব্রেন ডেথ&amp;rsquo; কোন ব্যক্তির অঙ্গ নিয়ে অঙ্গ প্রতিস্থাপন করা হয়?&lt;/strong&gt;&lt;br /&gt;\r\nক. সায়েরা ইসলাম&lt;br /&gt;\r\nখ. সুফিয়া ইসলাম&lt;br /&gt;\r\nগ. সারাহ ইসলাম&lt;br /&gt;\r\nঘ. জারাহ ইসলাম&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;১১. &amp;lsquo;একতারা তুই দেশের কথা&amp;rsquo; গানটির রচয়িতা কে?&lt;/strong&gt;&lt;br /&gt;\r\nক. নজরুল ইসলাম বাবু&lt;br /&gt;\r\nখ. আপেল মাহমুদ &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;br /&gt;\r\nগ. গোবিন্দ হালদার&lt;br /&gt;\r\nঘ. গাজী মাজহারুল আনোয়ার&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;১২. &amp;lsquo;তুমব্রু সীমান্ত&amp;rsquo; বাংলাদেশের কোথায় অবস্থিত?&lt;/strong&gt;&lt;br /&gt;\r\nক. কুমিল্লা&lt;br /&gt;\r\nখ. সিলেট &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;br /&gt;\r\nগ. রাঙামাটি&lt;br /&gt;\r\nঘ. বান্দরবান&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;১৩. বাংলাদেশ অর্থনৈতিক সমীক্ষা ২০২২ মতে, ২০২১-২২ অর্থবছরে খাদ্যশস্যের মোট উৎপাদন লক্ষ্যমাত্রা কত লাখ মেট্রিক টন?&lt;/strong&gt;&lt;br /&gt;\r\nক. ৪৬৫.৮৩&lt;br /&gt;\r\nখ. ৪৮৩.৬৫&lt;br /&gt;\r\nগ. ৪৩৫.৬৩&lt;br /&gt;\r\nঘ. ৪৩৮.৬৫&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;১৪. বাংলাদেশ অ্যাক্রেডিটেশন বোর্ড (বিএবি) কোন মন্ত্রণালয়ের অধীন?&lt;/strong&gt;&lt;br /&gt;\r\nক. অর্থ&lt;br /&gt;\r\nখ. বাণিজ্য&lt;br /&gt;\r\nগ. শিল্প&lt;br /&gt;\r\nঘ. আইন&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;১৫. বাংলাদেশ জাতিসংঘের সদস্য হিসেবে স্বীকৃতি লাভ করে কবে?&lt;/strong&gt;&lt;br /&gt;\r\nক. ১৭ সেপ্টেম্বর ১৯৭৪&lt;br /&gt;\r\nখ. ১ আগস্ট ১৯৭২ &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;br /&gt;\r\nগ. ১০ জানুয়ারি ১৯৭২&lt;br /&gt;\r\nঘ. ১৭ সেপ্টেম্বর ১৯৭২&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;১৬. বাংলাদেশের প্রথম বায়ু বিদ্যুৎ প্রকল্প কোথায় অবস্থিত?&lt;/strong&gt;&lt;br /&gt;\r\nক. ঢাকা&lt;br /&gt;\r\nখ. চট্টগ্রাম&lt;br /&gt;\r\nগ. ঝালকাঠি&lt;br /&gt;\r\nঘ. ফেনী&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;১৭. ২০২২ সালের জনশুমারি ও গৃহগণনা রিপোর্ট অনুযায়ী, বাংলাদেশের &amp;lsquo;ক্ষুদ্র জাতিসত্তা&amp;rsquo;র সংখ্যা কতটি?&lt;/strong&gt;&lt;br /&gt;\r\nক. ৪৮টি&lt;br /&gt;\r\nখ. ৪৯টি&lt;br /&gt;\r\nগ. ৫০টি&lt;br /&gt;\r\nঘ. ৫১টি&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;১৮. গণপ্রজাতন্ত্রী বাংলাদেশের সংবিধানের কোন অনুচ্ছেদ অনুযায়ী, &amp;lsquo;একাদিক্রমে হউক বা না হউক&amp;mdash;দুই মেয়াদের অধিক রাষ্ট্রপতির পদে কোনো ব্যক্তি অধিষ্ঠিত থাকিবেন না।&amp;rsquo;&lt;/strong&gt;&lt;br /&gt;\r\nক. অনুচ্ছেদ ৫০ (১)&lt;br /&gt;\r\nখ. অনুচ্ছেদ ৫০ (২)&lt;br /&gt;\r\nগ. অনুচ্ছেদ ৫২ (৪)&lt;br /&gt;\r\nঘ. অনুচ্ছেদ ৫৩ (৪)&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;১৯. কোন পণ্যকে ২০২৩ সালের &amp;lsquo;বর্ষপণ্য&amp;rsquo; হিসেবে ঘোষণা করা হয়?&lt;/strong&gt;&lt;br /&gt;\r\nক. হোম টেক্সটাইল পণ্য&lt;br /&gt;\r\nখ. ওষুধশিল্প&lt;br /&gt;\r\nগ. পাটজাত পণ্য&lt;br /&gt;\r\nঘ. চা-শিল্প&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;২০. &amp;lsquo;ফ্রম ডন টু ডার্কনেস&amp;rsquo; কার আত্মজীবনীমূলক গ্রন্থ?&lt;/strong&gt;&lt;br /&gt;\r\nক. রেহমান সোবহান&lt;br /&gt;\r\nখ. আনিসুর রহমান&lt;br /&gt;\r\nগ. নুরুল ইসলাম&lt;br /&gt;\r\nঘ. রওনক জাহান&lt;/p&gt;\r\n\r\n&lt;h2&gt;মডেল টেস্ট-১০ (বাংলাদেশ বিষয়াবলি)-এর উত্তর&lt;/h2&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;১.&lt;/strong&gt; ক। &lt;strong&gt;২.&lt;/strong&gt; ঘ। &lt;strong&gt;৩.&lt;/strong&gt; খ। &lt;strong&gt;৪.&lt;/strong&gt; ঘ । &lt;strong&gt;৫.&lt;/strong&gt; গ। &lt;strong&gt;৬.&lt;/strong&gt; গ। &lt;strong&gt;৭.&lt;/strong&gt; গ। &lt;strong&gt;৮.&lt;/strong&gt; ঘ। &lt;strong&gt;৯.&lt;/strong&gt; খ। &lt;strong&gt;১০.&lt;/strong&gt; গ।&lt;br /&gt;\r\n&lt;strong&gt;১১.&lt;/strong&gt; ঘ। &lt;strong&gt;১২.&lt;/strong&gt; ঘ। &lt;strong&gt;১৩.&lt;/strong&gt; ক। &lt;strong&gt;১৪.&lt;/strong&gt; গ। &lt;strong&gt;১৫.&lt;/strong&gt; ক। &lt;strong&gt;১৬.&lt;/strong&gt; ঘ। &lt;strong&gt;১৭.&lt;/strong&gt; গ। &lt;strong&gt;১৮.&lt;/strong&gt; খ। &lt;strong&gt;১৯.&lt;/strong&gt; গ। &lt;strong&gt;২০.&lt;/strong&gt; ক।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/090323985d499e3073dfd.webp', 'প্রতীকী ছবি', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-09 11:02:44', 0, 1),
(250, 'samojugc_datatable', 5, 56, 'প্রধানমন্ত্রীর জনসভা বিকেলে, সকাল থেকে মানুষ ছুটছেন সার্কিট হাউস মাঠে', 'প্রধানমন্ত্রীর জনসভা বিকেলে, সকাল থেকে মানুষ ছুটছেন সার্কিট হাউস মাঠে', '&lt;p&gt;প্রধানমন্ত্রী ও আওয়ামী লীগের সভাপতি শেখ হাসিনা আজ শনিবার ময়মনসিংহ সফরে যাচ্ছেন। বিকেলে তিনি ময়মনসিংহ সার্কিট হাউস মাঠে জনসভায় প্রধান অতিথি হিসেবে বক্তব্য দেবেন। এর আগে সকাল থেকেই ছোট ছোট দল নিয়ে মানুষ জড়ো হচ্ছেন জনসভাস্থলে।&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রধানমন্ত্রী শেখ হাসিনা ২০১৮ সালের ২ নভেম্বর ময়মনসিংহ গিয়েছিলেন। পাঁচ বছর পর আবার আজ তিনি ময়মনসিংহ যাচ্ছেন। তাঁর এ আগমন উপলক্ষে সব আয়োজন ও প্রস্তুতি সম্পন্ন করেছে আওয়ামী লীগ ও স্থানীয় প্রশাসন। নেওয়া হয়েছে নিশ্ছিদ্র নিরাপত্তাব্যবস্থা।&lt;/p&gt;\r\n\r\n&lt;p&gt;আজ সকাল সাড়ে ৯টায় নগরের রামবাবু রোড এলাকায় দেখা যায়, এক রঙের শাড়ি পরা নারীরা জনসভায় যাওয়ার জন্য জড়ো হচ্ছেন। তাঁদের একজন শারমিন আক্তার বলেন, &amp;lsquo;প্রধানমন্ত্রীকে দেখার জন্য আমরা কয়েক দিন ধরে খুব আগ্রহ নিয়ে অপেক্ষা করছিলাম। আজ সকাল থেকেই আমাদের এলাকার নারীরা জনসভায় যাওয়ার জন্য প্রস্তুতি নিচ্ছেন।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;পৌনে ১০টায় স্টেশন রোড এলাকায় দেখা যায়, তরুণদের একটা দল পায়ে হেঁটে সার্কিট হাউস মাঠের দিকে যাচ্ছে। বেলা পৌনে ১১টায় শহরের গাঙ্গিনারপার এলাকায় দেখা যায়, একই রঙের টি&amp;ndash;শার্ট পরা কর্মীদের একটি মিছিল জনসভাস্থলের দিকে যাচ্ছে। পাটগুদাম, কালিবাড়ীসহ বিভিন্ন এলাকা ঘুরে একই চিত্র দেখা গেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;ময়মনসিংহ জেলা আওয়ামী লীগ সূত্রে জানা যায়, প্রধানমন্ত্রীর জনসভায় অন্তত ১০ লাখ মানুষের সমাগম ঘটবে। ময়মনসিংহ বিভাগীয়, জেলা ও উপজেলা পর্যায়ের বর্ধিত সভা করে আওয়ামী লীগ জনসভা সফল করার প্রস্তুতি নিয়েছে। সমাবেশেস্থলে নির্মাণ করা হয়েছে ১০০ ফুট দৈর্ঘ্যের আর ৪৮ ফুট প্রস্থের নৌকার আদলে মঞ্চ।&lt;/p&gt;\r\n\r\n&lt;p&gt;আওয়ামী লীগ আয়োজিত জনসভায় মানুষের আসার সুবিধার্থে ময়মনসিংহ থেকে জামালপুর, নেত্রকোনা জেলা ও ময়মনসিংহের বিভিন্ন উপজেলায় আজ চলবে আটটি বিশেষ ট্রেন। সফরে ময়মনসিংহের ৭৩টি উন্নয়ন প্রকল্পের উদ্বোধন ও ৩০টি উন্নয়ন প্রকল্পের ভিত্তিপ্রস্তর স্থাপন করবেন প্রধানমন্ত্রী।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/11032386a6095eea9fe66.webp', 'প্রধানমন্ত্রীর জনসভা উপলক্ষে ময়মনসিংহ সার্কিট হাউজ মাঠে নৌকার আদলে মঞ্চ তৈরি করা হয়েছে', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-11 06:08:29', 0, 1),
(251, 'samojugc_datatable', 5, 56, 'ঢাকায় ২৪ কিলোমিটার সড়কে বিএনপির মানববন্ধন শুরু', 'ঢাকায় ২৪ কিলোমিটার সড়কে বিএনপির মানববন্ধন শুরু', '&lt;p&gt;রাজধানীতে যাত্রাবাড়ী থেকে টঙ্গীর আবদুল্লাহপুর ব্রিজ পর্যন্ত ২৪ কিলোমিটার এলাকাজুড়ে মানববন্ধন কর্মসূচি শুরু করেছে বিএনপি। সরকারের পদত্যাগসহ ১০ দফা দাবি আদায়ে দলটি আজ শনিবার এই মানববন্ধন করছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;সকাল ১১টায় শুরু হওয়া মানববন্ধন চলবে বেলা ১২টা পর্যন্ত। এ সময় নয়া পল্টনে বিএনপির কেন্দ্রীয় কার্যালয়ের সামনে মানববন্ধনে দাঁড়ান দলের মহাসচিব মির্জা ফখরুল ইসলাম আলমগীর। উত্তর বাড্ডায় মানবন্ধনে অংশ নেন বিএনপির স্থায়ী কমিটির সদস্য খন্দকার মোশাররফ হোসেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;আবদুল্লাহপুর থেকে বিমানবন্দর-যমুনা ফিউচার পার্ক-বাড্ডা-রামপুরা হয়ে মালিবাগ রেলগেট পর্যন্ত মানববন্ধন করছে ঢাকা মহানগর উত্তর বিএনপি। একই সময়ে মালিবাগ রেলগেট থেকে মৌচাক-শান্তিনগর-কাকরাইল-নয়াপল্টন-ফকিরাপুল-আরামবাগ-মতিঝিলের শাপলা চত্বর-ইত্তেফাক-টিকাটুলি হয়ে যাত্রাবাড়ী পর্যন্ত মানববন্ধন করছে মহানগর দক্ষিণ বিএনপি।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug47.webp&quot; style=&quot;height:480px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;সরকারের পদত্যাগসহ ১০ দফা দাবি আদায়ে মানববন্ধন করছেন বিএনপির নেতা&amp;ndash;কর্মীরা। শনিবার, রাজধানীর পল্টনে&lt;/p&gt;\r\n\r\n&lt;p&gt;বিএনপিসহ সরকারবিরোধী বিভিন্ন দল ও জোট গত ২৪ ডিসেম্বর থেকে যুগপৎ কর্মসূচি পালন করে আসছে। আজকের &amp;nbsp;মানববন্ধন কর্মসূচিও একযোগে পালন করছে বিএনপিসহ বিভিন্ন দল ও জোট। রাজধানীর পাশাপাশি সারা দেশের সব জেলা ও মহানগরে বেলা ১১টা থেকে দুপুর ১২টা পর্যন্ত এক ঘণ্টার মানববন্ধন চলছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিদ্যুতের অস্বাভাবিক মূল্যবৃদ্ধি, চাল-ডাল-তেল-কৃষি উপকরণ-শিক্ষা উপকরণসহ নিত্যপ্রয়োজনীয় পণ্যের মূল্যবৃদ্ধির প্রতিবাদে এবং বর্তমান সংসদ বিলুপ্ত করে নির্দলীয় নিরপেক্ষ সরকারের অধীনে নির্বাচন ও বিএনপির চেয়ারপারসন খালেদা জিয়ার নিঃশর্ত মুক্তিসহ ১০ দফা দাবি আদায়ের লক্ষ্যে এই মানববন্ধন কর্মসূচি পালন করা হচ্ছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/1103237c71d12a8f144fa.webp', 'কেন্দ্রীয় কর্মসূচির অংশ হিসেবে ঘণ্টাব্যাপী মানববন্ধন করছে বিএনপি। শনিবার, রাজধানীর পল্টনে', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-11 06:18:19', 0, 1),
(252, 'samojugc_datatable', 5, 58, 'কেউ কম শুনছেন, কারও কানের পর্দা ফেটে গেছে', 'কেউ কম শুনছেন, কারও কানের পর্দা ফেটে গেছে', '&lt;p&gt;চট্টগ্রামের সীতাকুণ্ড উপজেলার সীমা অক্সিজেন লিমিটেড কারখানায় বিস্ফোরণে আহত ব্যক্তিদের অনেকে কানে ঠিকমতো শুনতে পাচ্ছেন না। বিস্ফোরণের বিকট শব্দে কারও শ্রবণেন্দ্রিয় ক্ষতিগ্রস্ত হয়েছে। কারও কানের পর্দা ফেটে গেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;চট্টগ্রাম মেডিকেল কলেজ (চমেক) হাসপাতালসহ বিভিন্ন হাসপাতালে তাঁদের চিকিৎসা চলছে। ৪ মার্চ সীতাকুণ্ডের কদমরসুল এলাকায় সীমা অক্সিজেন লিমিটেড কারখানায় বিস্ফোরণ হয়। এতে সাতজন নিহত এবং ২৫ জন আহত হন। আহত ব্যক্তিদের মধ্যে ২০ জনকে চট্টগ্রাম মেডিকেল কলেজ হাসপাতালে ভর্তি করা হয়। এর মধ্যে এখন ১৩ জন চিকিৎসাধীন রয়েছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;চমেক হাসপাতালের ক্যাজুয়ালটি বিভাগে বর্তমানে চারজন চিকিৎসাধীন রয়েছেন। তাঁদের মধ্যে তিনজনেরই কানে সমস্যা দেখা দিয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;মো. ফোরকান (৩৩) নামের এক রোগীর দুই কানের পর্দা ফেটে গেছে বলে চিকিৎসকেরা জানিয়েছেন। এ ছাড়া তাঁর মাথায়ও আঘাত রয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;ফোরকানের ছোট ভাই আইনুল হোসেন জানান, তাঁর ক্ষতগুলো শুকিয়ে আসছে এখন। তবে কানে কম শুনতে পান তিনি। দুই কানের পর্দা ফেটে গেছে বলে চিকিৎসকেরা জানিয়েছেন। এ জন্য নাক, কান, গলা বিভাগের চিকিৎসক দেখাতে বলেছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;একই বিভাগে চিকিৎসাধীন নারায়ণ ধর (৬৫) বেশি আঘাত পেয়েছেন মাথায়। এ ছাড়া সারা গায়ে ক্ষত রয়েছে। তাঁর কানসহ চোয়ালও ভারী হয়ে রয়েছে বলে জানান ছেলে শুভ ধর। তিনি বলেন, বাবার চোয়ালে প্রচণ্ড ব্যথা। কান ভারী হয়ে আছে।&lt;br /&gt;\r\nএক প্রশ্নের জবাবে শুভ বলেন, &amp;lsquo;হাসপাতালে যত দিন আছি, তত দিন সীমা অক্সিজেন লিমিটেড থেকে ওষুধপত্র ও খাবার দাবার দিচ্ছে। কিন্তু প্রতিষ্ঠান থেকে আমাদের বলা হচ্ছে বাসায় গিয়ে চিকিৎসা করতে। কিন্তু ওখানে গেলে তো আর খরচ দেবে না। তখন আমরা কী করব।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;মো. আরাফাত (২২) সীমা অক্সিজেনে কাজ করেছিলেন দুই বছর। তিনিও বাম কানে কম শুনছেন। ক্যাজুয়ালটি বিভাগে চিকিৎসাধীন আরাফাতের ডান হাত কেটে গেছে। গলায়ও ক্ষত রয়েছে। তাঁর ভাই জাহিদ হাসান বলেন, হাত ও গলার চিকিৎসার পর কানের চিকিৎসা করানো হবে তাঁর।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ ছাড়া অর্থোপেডিক বিভাগে চিকিৎসাধীন রিপন মারাকও কানে শুনছেন না। তাঁকে ইতিমধ্যে হাসপাতালের নাক কান গলা বিভাগে চিকিৎসা দেওয়া হয়। একইভাবে শ্রবণশক্তি কমে গেছে আজাদ ও মোতালেবেরও।&lt;/p&gt;\r\n\r\n&lt;p&gt;মোতালেবের ভাইপো ফরিদুল ইসলাম বলেন, কোমরে বেশি ব্যথা পেয়েছে। এক কানেও কম শুনছেন। ওটার আলাদা করে চিকিৎসা করাতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;হাসপাতালের পরিচালক ব্রিগেডিয়ার জেনারেল শামীম আহসান বলেন, আহত ব্যক্তিদের চিকিৎসা চলছে। তাঁদের মধ্যে অনেকের কানে সমস্যা হচ্ছে। সংশ্লিষ্ট বিভাগে তাঁদের চিকিৎসা দেওয়া হচ্ছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/1103236ed9d7e04494754.webp', 'প্রতীকী ছবি', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-11 06:32:44', 0, 1),
(253, 'samojugc_datatable', 5, 58, 'সিলেটে স্কুলছাত্রীর লাশ উদ্ধারের ঘটনায় দুই দিনেও মামলা হয়নি', 'সিলেটে স্কুলছাত্রীর লাশ উদ্ধারের ঘটনায় দুই দিনেও মামলা হয়নি', '&lt;p&gt;সিলেটের ওসমানীনগরে নির্মাণাধীন ভবনের ছাদ থেকে স্কুলছাত্রীর (১৪) রক্তাক্ত লাশ উদ্ধারের ঘটনার পর দুই দিন কেটে গেছে। তবে এ ঘটনায় আজ শনিবার দুপুর ১২টা পর্যন্ত কোনো মামলা হয়নি। লাশ উদ্ধারের ঘটনায় এখনো কাউকে আটকও করেনি পুলিশ।&lt;/p&gt;\r\n\r\n&lt;p&gt;এর আগে গত বৃহস্পতিবার সকাল সাতটার দিকে ওসমানীনগরের নির্মাণাধীন ভবনের ছাদ থেকে কিশোরীর লাশ উদ্ধার করা হয়। নির্মাণাধীন ভবনটির মালিক ওসমানীনগরের তাজপুর ইউনিয়ন পরিষদের (ইউপি) চেয়ারম্যান অরুণোদয় পাল।&lt;/p&gt;\r\n\r\n&lt;p&gt;নিহত কিশোরীর বাড়ি কুমিল্লার বরুড়া উপজেলায়। তবে পরিবারের লোকজনের সঙ্গে সে ওসমানীনগরের একটি বাসায় ভাড়া থাকত। লাশ উদ্ধারের সময় ওই কিশোরীর মাথায় আঘাতের চিহ্ন পাওয়া গেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;নিহত ছাত্রীর স্বজন ও পুলিশ সূত্রে জানা গেছে, ওই কিশোরী অষ্টম শ্রেণির শিক্ষার্থী ছিল। বাবার ব্যবসাসূত্রে দীর্ঘদিন ধরে তারা ওসমানীনগরে থাকে। বৃহস্পতিবার ভোরের দিকে বাবার ঘুম ভাঙলে তিনি মেয়েকে বাসায় পাননি। পরে খোঁজাখুঁজি করে দেখেন, ঘরের দরজা ও ভবনের নিচের ফটকের দরজার তালা খোলা। এ সময় ঘরের দুটি মুঠোফোন পাওয়া যায়নি। পরে বিষয়টি মেয়ের মামাকে জানান পরিবারের লোকজন। খোঁজাখুঁজির একপর্যায়ে নির্মাণাধীন একতলা ভবনের ছাদে কিশোরীর লাশ পড়ে থাকতে দেখেন লোকজন। পরে বিষয়টি পুলিশকে জানানো হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;ওই কিশোরীর বাবা মুঠোফোনে প্রথম আলোকে বলেন, মেয়ের শেষকৃত্যের আনুষ্ঠানিকতা সম্পন্ন করতে তাঁরা এখন কুমিল্লায়। এ ঘটনায় পরিবারের পক্ষ থেকে থানায় মামলা করা হবে কি না, তা জানতে চাইলে তিনি বলেন, &amp;lsquo;বিষয়টি পুলিশ তদন্ত করে দেখবে।&amp;rsquo; এর বাইরে তিনি আর কিছু বলতে চাননি।&lt;/p&gt;\r\n\r\n&lt;p&gt;সিলেটের ওসমানীনগর থানার ভারপ্রাপ্ত কর্মকর্তা (ওসি) এস এম মাঈন উদ্দিন বলেন, গতকাল শুক্রবার স্কুলছাত্রীর লাশ ময়নাতদন্ত শেষে পরিবারের কাছে হস্তান্তর করা হয়েছে। তবে এ ঘটনায় পরিবারের পক্ষ থেকে কোনো মামলা করা হয়নি। এ ছাড়া পরিবারের পক্ষ থেকে কোনো যোগাযোগও করা হয়নি।&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রসঙ্গত, ওই ছাত্রীর পরিবার যে ভবনে ভাড়া থাকত, একই ভবনের দ্বিতীয় তলার একটি কক্ষ থেকে গত বছরের ২৬ জুলাই সকালে প্রবাসী পরিবারের পাঁচ সদস্যকে অচেতন অবস্থায় উদ্ধার করা হয়েছিল। পরে চিকিৎসাধীন অবস্থায় তিনজন এবং পরে আরও একজনের মৃত্যু হয়েছিল।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/110323006f81573ff92a1.webp', 'লাশ', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-11 06:37:09', 0, 1),
(254, 'samojugc_datatable', 5, 59, 'ভারতে এইচ৩এন২ ভাইরাসে আক্রান্ত হয়ে দুজনের মৃত্যু', 'ভারতে এইচ৩এন২ ভাইরাসে আক্রান্ত হয়ে দুজনের মৃত্যু', '&lt;p&gt;ভারতে এইচ৩এন২ ভাইরাসজনিত ইনফ্লুয়েঞ্জায় আক্রান্ত হয়ে দুজনের মৃত্যু হয়েছে। তাঁদের একজনের বাড়ি হরিয়ানায়, অন্যজনের কর্ণাটকে। এখন পর্যন্ত ভারতে প্রায় ৯০ জনের শরীরে এ ভাইরাস শনাক্ত হয়েছে। এর ফলে করোনা&amp;ndash;পরবর্তী সময়ে ভারতে প্রাণঘাতী এইচ৩এন২ ভাইরাস নতুন করে আতঙ্ক ছড়াচ্ছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;কর্ণাটকের বাসিন্দা হাসান এইচ৩এন২ সংক্রমিত হয়ে গত ২৪ ফেব্রুয়ারি হাসপাতালে ভর্তি হন। তিনি ডায়াবেটিস ও হাইপারটেনশনে ভুগছিলেন। ১ মার্চ ৮২ বছর বয়সী হাসানের মৃত্যু হয়। সংশ্লিষ্ট কর্মকর্তাদের দেওয়া তথ্য অনুযায়ী, ভারতে এইচ৩এন২ ভাইরাসে সংক্রমিত হয় মারা যাওয়া প্রথম ব্যক্তি হাসান।&lt;/p&gt;\r\n\r\n&lt;p&gt;অন্যদিকে গত বুধবার হরিয়ানার জিন্দে ৫৬ বছর বয়সী একজনের মৃত্যু হয়েছে। ৫৬ বছর বয়সী ওই ব্যক্তি ফুসফুসের ক্যানসারে আক্রান্ত ছিলেন। পরে তাঁর শরীরে এইচ৩এন২ ভাইরাসের সংক্রমণ ধরা পড়ে। ভারতের সরকারি তথ্যমতে, ভারতে প্রায় ৯০ জনের শরীরে এইচ৩এন২ ভাইরাস শনাক্ত হয়েছে। আর এইচ১এন১ ভাইরাস শনাক্ত হয়েছে মোট আটজনের শরীরে।&lt;/p&gt;\r\n\r\n&lt;p&gt;ভারতের কেন্দ্রীয় স্বাস্থ্য মন্ত্রণালয় আশা করছে, চলতি মাসের শেষের দিকে এইচ৩এন২ ভাইরাসের সংক্রমণ কমে আসতে পারে। ভাইরাসটির সংক্রমণ ও মৃত্যুর ঘটনাগুলো পর্যবেক্ষণ করা হচ্ছে। কয়েক মাস ধরে ভারতে অনেকে ফ্লুতে আক্রান্ত হচ্ছেন। এর বড় একটি কারণ এইচ৩এন২ ভাইরাসের সংক্রমণ। এ ভাইরাস &amp;lsquo;হংকং ফ্লু&amp;rsquo; নামেও পরিচিত। অন্যান্য ফ্লুয়ের তুলনায় এতে আক্রান্ত হয়ে হাসপাতালে ভর্তির হার বেশি।&lt;/p&gt;\r\n\r\n&lt;p&gt;এইচ৩এন২ ও এইচ১এন১&amp;mdash;দুটি ভাইরাসের লক্ষণ করোনার মতো। আক্রান্ত ব্যক্তিদের জ্বর, কাশি, শ্বাসকষ্ট, চুলকানি, ডায়রিয়ার মতো উপসর্গ দেখা দেয়। সপ্তাহখানেক এসব উপসর্গ আক্রান্ত ব্যক্তির শরীরে থাকে। আক্রান্ত ব্যক্তির সংস্পর্শে এলে যে কেউ এ ভাইরাসে সংক্রমিত হতে পারে। তাই বিশ্বজুড়ে করোনা মাহামারি শেষ না হতে এ ভাইরাসের সংক্রমণ নতুন করে উদ্বেগের জন্ম দিয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এইচ৩এন২ ও এইচ১এন১ ভাইরাসে সংক্রমিত ব্যক্তিদের অ্যান্টিবায়োটিক না দেওয়ার জন্য চিকিৎসকদের আহ্বান জানিয়েছে ইন্ডিয়ান মেডিকেল অ্যাসোসিয়েশন। বলা হয়েছে, শুধু ব্যাকটেরিয়ার সংক্রমণ হলে তবেই রোগীকে অ্যান্টিবায়োটিক দেওয়া যাবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/1103239f9f8c150cf75ae.webp', 'আক্রান্ত ব্যক্তির সংস্পর্শে এলে যে কেউ এইচ৩এন২ ভাইরাসে সংক্রমিত হতে পারে', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-11 06:40:37', 0, 1),
(255, 'samojugc_datatable', 5, 59, 'এক বছরের শিশুর মস্তিষ্কে ‘যমজের ভ্রূণ’', 'এক বছরের শিশুর মস্তিষ্কে ‘যমজের ভ্রূণ’', '&lt;p&gt;চীনের সাংহাইয়ে এক বছর বয়সী এক শিশুর মস্তিষ্কে তাঁরই যমজের ভ্রূণ পাওয়া গেছে। নিউরোলজি সাময়িকীতে প্রকাশিত প্রতিবেদন থেকে এমন তথ্য জানা গেছে। এ ধরনের অবস্থা &amp;lsquo;ফেটাস ইন ফেটু&amp;rsquo; নামে পরিচিত। এটি বিরল ঘটনা। এ ধরনের পরিস্থিতিতে মায়ের গর্ভে যমজেরা সংযুক্ত হয়ে যায় এবং একজন হিসেবে বেড়ে ওঠে।&lt;/p&gt;\r\n\r\n&lt;p&gt;নিউরোলজি সাময়িকীতে প্রকাশিত প্রতিবেদনে বলা হয়, শিশুটির মধ্যে মানসিক বিকাশজনিত সমস্যা দেখা দেওয়ায় এবং তার বড় মাথার কারণে তাকে হাসপাতালে নেওয়া হয়েছিল। চিকিৎসকেরা তখন ওই শিশুর মস্তিষ্কে জীবন্ত ভ্রূণ শনাক্ত করেন। পরে জিনোম পরীক্ষা করে দেখা যায়, ভ্রূণটি ওই শিশুর যমজ।&lt;/p&gt;\r\n\r\n&lt;p&gt;আইএফএল সায়েন্সের এক প্রতিবেদনে বলা হয়, গর্ভাবস্থার প্রথম তিন মাসে এ ধরনের ঘটনা ঘটে । স্ত্রী ডিম্বাণু ও পুরুষ শুক্রাণু নিষিক্ত হওয়ার পর যে কোষগুলো গড়ে ওঠে, সেগুলো যদি যথাযথভাবে বিভক্ত না হতে পারে, তখনই এমন অবস্থা তৈরি হয়। তখন একটি ভ্রূণ আরেকটি ভ্রূণের আড়ালে চলে যায়। যমজ ভ্রূণের কোষ দিয়ে পরিবেষ্টিত থাকায় আড়ালে চলে যাওয়া ভ্রূণটি বাড়তে পারে না। তবে রক্ত সরবরাহ থাকায় এ ভ্রূণ &amp;lsquo;জীবন্ত&amp;rsquo; থাকে। এ অবস্থাকে &amp;lsquo;পরজীবী যমজ&amp;rsquo; নামেও ডাকা হয়ে থাকে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ ধরনের ঘটনা এবারই প্রথম ঘটেনি। মিসরে ১৯৯৭ সালে এক কিশোরের পেটে একটি ভ্রূণ শনাক্ত হয়। তখন জানা যায়, ১৬ বছর ধরে ভ্রূণটি ওই কিশোরের পেটে ছিল। শুধু তা&amp;ndash;ই নয়, গত বছরের নভেম্বরে ঝাড়খণ্ডের রাঁচিতে ২১ দিন বয়সী এক নবজাতকের পাকস্থলী থেকে আটটি ভ্রূণ সরানো হয়েছিল।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/11032377254a05388043f.webp', 'প্রতীকী ছবি', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-11 06:46:46', 0, 1);
INSERT INTO `samojugc_news_datatable` (`id`, `datatable`, `admin_id`, `category_id`, `title`, `keywords`, `description`, `thumbnail`, `teaser`, `link`, `liked`, `unliked`, `watched`, `date`, `topnews`, `status`) VALUES
(256, 'samojugc_datatable', 5, 60, 'শীর্ষ তেল উৎপাদক দেশগুলোতে পোশাক রপ্তানি বেড়েছে', 'শীর্ষ তেল উৎপাদক দেশগুলোতে পোশাক রপ্তানি বেড়েছে', '&lt;p&gt;রাশিয়া-ইউক্রেন যুদ্ধের কারণে জ্বালানি তেলের মূল্যবৃদ্ধিতে অনেক দেশ বিপাকে পড়লেও ব্ল্যাক গোল্ড বা &amp;lsquo;কালো সোনা&amp;rsquo;খ্যাত জ্বালানি তেল উৎপাদনকারী দেশগুলো সুবিধাজনক অবস্থায় আছে। তেমন কয়েকটি দেশে চলতি ২০২২-২৩ অর্থবছরে বাংলাদেশের প্রধান রপ্তানি পণ্য তৈরি পোশাকের রপ্তানি বেড়েছে।&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;বিশ্বের শীর্ষ ১০ জ্বালানি তেল উৎপাদনকারী দেশের মধ্যে যুক্তরাষ্ট্র ও কানাডা বাংলাদেশের তৈরি পোশাকের প্রচলিত বাজার। একক দেশ হিসেবে যুক্তরাষ্ট্রে সবচেয়ে বেশি পোশাক রপ্তানি হয়। রপ্তানি উন্নয়ন ব্যুরো (ইপিবি) তথ্যানুযায়ী, চলতি অর্থবছর এখন পর্যন্ত শীর্ষ ১০ জ্বালানি তেল উৎপাদনকারী দেশের মধ্যে সাতটি; অর্থাৎ সৌদি আরব, কানাডা, চীন, সংযুক্ত আরব আমিরাত, ব্রাজিল, ইরাক ও কুয়েতে দেশের তৈরি পোশাক রপ্তানি বেড়েছে। যদিও তেল উৎপাদনে শীর্ষস্থানীয় দেশ যুক্তরাষ্ট্রে কমেছে। যুদ্ধের কারণে রাশিয়ায় বাজার এক বছর ধরেই খারাপ। ইরানে বাংলাদেশ থেকে বলার মতো পোশাক রপ্তানি হয় না।&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;blockquote&gt;বর্তমান বৈশ্বিক পরিস্থিতিতে এ অঞ্চলে যতটা সুযোগ আছে, ততটা কাজে লাগাতে আমাদের উদ্যোগী হতে হবে।&lt;/blockquote&gt;\r\n\r\n&lt;p&gt;খন্দকার গোলাম মোয়াজ্জেম গবেষণা পরিচালক, সিপিডি&lt;/p&gt;\r\n\r\n&lt;p&gt;চলতি অর্থবছরের প্রথম আট মাসে (জুলাই-ফেব্রুয়ারি) ৩ হাজার ১৩৬ কোটি ডলারের তৈরি পোশাক রপ্তানি হয়েছে। এর মধ্যে ৫৬১ কোটি ডলারের পোশাক রপ্তানি হয় যুক্তরাষ্ট্রে। গত বছরের একই সময়ে রপ্তানি হয়েছিল ৫৭৭ কোটি ডলারের পোশাক। সেই হিসাবে চলতি বছর এই বাজারে রপ্তানি কমেছে ২ দশমিক ৮৭ শতাংশ। যদিও ডিসেম্বর শেষে যুক্তরাষ্ট্রে পোশাক রপ্তানিতে ১ দশমিক ১১ শতাংশ প্রবৃদ্ধি ছিল। অন্যদিকে চলতি অর্থবছরের প্রথম আট মাসে কানাডায় ৯৮ কোটি ডলারের পোশাক রপ্তানি হয়। এ রপ্তানি গত বছরের একই সময়ের তুলনায় ২০ শতাংশ বেশি।&lt;/p&gt;\r\n\r\n&lt;p&gt;মধ্যপ্রাচ্যের বাজারে তৈরি পোশাক রপ্তানিতে চলতি অর্থবছর বেশ চমক দেখাচ্ছে বাংলাদেশ। সৌদি আরবে ৪৭ শতাংশ, সংযুক্ত আরব আমিরাতে ১৮, কুয়েতে ৯০ ও ইরাকে পোশাক রপ্তানি বেড়েছে ১৭১ শতাংশ। যদিও ইরাক ও কুয়েতে বাংলাদেশের তৈরি পোশাক রপ্তানি খুবই নগণ্য।&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;ইপিবির তথ্যানুযায়ী, চলতি অর্থবছরের প্রথম আট মাসে সংযুক্ত আরব আমিরাতে ২১ কোটি ডলারের তৈরি পোশাক রপ্তানি হয়েছে, যা দেশীয় মুদ্রায় ২ হাজার ১৮৪ কোটি টাকার সমান। এই রপ্তানি গত বছরের একই সময়ের তুলনায় ১৮ দশমিক ৪০ শতাংশ বেশি। এ ছাড়া গত জুলাই-ফেব্রুয়ারি সময়ে সৌদি আরবে ১৪ কোটি ৬০ লাখ বা ১ হাজার ৫১৮ কোটি টাকার পোশাক রপ্তানি হয়েছে। গত বছর একই সময়ে রপ্তানি হয়েছিল ৯ কোটি ৯২ লাখ ডলারের পোশাক। সেই হিসাবে চলতি বছর দেশটিতে রপ্তানি বেড়েছে ৪৭ শতাংশ।&lt;/p&gt;\r\n\r\n&lt;p&gt;অন্যদিকে চলতি অর্থবছরের প্রথম সাত মাস; অর্থাৎ জুলাই-জানুয়ারি সময়ে ইরাকে ৯ লাখ&lt;strong&gt; &lt;/strong&gt;ডলারের পোশাক রপ্তানি হয়েছে। এ রপ্তানি গত বছরের একই সময়ের তুলনায় ১৭১ শতাংশ বেশি। গত বছরের প্রথম সাত মাসে রপ্তানি হয়েছিল ৩ লাখ ৩৩ হাজার ডলারের তৈরি পোশাক। এ ছাড়া কুয়েতে চলতি বছরের জুলাই থেকে জানুয়ারি সময়ে রপ্তানি হয়েছে ১ কোটি ৬৩ লাখ ডলারের পোশাক। গত বছর একই সময়ে রপ্তানি হয়েছিল ৮৫ লাখ ৯১ হাজার ডলারের পোশাক।&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;এদিকে যুদ্ধ শুরুর পর রাশিয়ায় অনেক পশ্চিমা ব্র্যান্ড তাদের বিক্রয়কেন্দ্র বন্ধ করে দেয়। অর্থনৈতিকভাবে দেশটি বেশ চাপে মধ্যে রয়েছে। ফলে স্বাভাবিকভাবেই পোশাক রপ্তানি কমেছে। চলতি অর্থবছরের প্রথম আট মাসে গত বছরের একই সময়ের তুলনায় ৪৪ দশমিক ৮১ শতাংশ কম।&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;জানতে চাইলে বেসরকারি গবেষণা প্রতিষ্ঠান সিপিডির গবেষণা পরিচালক খন্দকার গোলাম মোয়াজ্জেম &lt;em&gt;প্রথম আলো&lt;/em&gt;কে সম্প্রতি বলেন, &amp;lsquo;বর্তমান পরিস্থিতিতে জ্বালানি তেল রপ্তানিকারক দেশ, বিশেষ করে মধ্যপ্রাচ্যের দেশগুলোর অর্থনীতি ভালো অবস্থায় রয়েছে। সেখানে আমাদের তৈরি পোশাকের রপ্তানিও বাড়ছে। বর্তমান বৈশ্বিক পরিস্থিতিতে এ অঞ্চলে যতটা সুযোগ আছে, ততটা কাজে লাগাতে আমাদের উদ্যোগী হতে হবে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/110323c7d20fd282c3122.webp', 'প্রতীকী ছবি', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-11 06:52:02', 0, 1),
(257, 'samojugc_datatable', 5, 60, 'পাকিস্তানের সাপ্তাহিক মূল্যস্ফীতি ৪২.২৭ শতাংশ', 'পাকিস্তানের সাপ্তাহিক মূল্যস্ফীতি ৪২.২৭ শতাংশ', '&lt;p&gt;পাকিস্তানের ঘাড়ে যেন মূল্যস্ফীতির জোয়াল চেপেছে, যা প্রতি সপ্তাহেই যেন আরও চেপে বসছে। ৯ মার্চ শেষ হওয়ার সপ্তাহে দেশটির মূল্যস্ফীতি ৪০ শতাংশ ছাড়িয়েছে। গত বছরের একই সময়ের তুলনায় সেই সপ্তাহে পাকিস্তানের মূল্যস্ফীতির হার হয়েছে ৪২ দশমিক ২৭।&lt;/p&gt;\r\n\r\n&lt;p&gt;পাকিস্তান ব্যুরো অব স্ট্যাটিসটিকসের পরিসংখ্যানে এ তথ্য পাওয়া গেছে। জানা গেছে, ভোজ্যতেল, মসুর ডাল ও সবজির দাম বাড়ার কারণে মূল্যস্ফীতি এতটা অসহনীয় হয়ে উঠেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;তবে এখানেই শেষ নয়, দেশটির জনপ্রিয় দৈনিক দ্য ডনের সংবাদে বলা হয়েছে, পাকিস্তানের স্বল্পমেয়াদি মূল্যস্ফীতি যে সেনসিটিভ প্রাইস ইনডেক্সে (এসপিআই) পরিমাপ করা হয়, তা আরও তীব্র হতে পারে। বিশেষ করে রুপির অবমূল্যায়ন, জিএসটি বৃদ্ধি ও জ্বালানির উচ্চমূল্যের কারণে মূল্যস্ফীতির ফাঁস আরও শক্ত হতে পারে। সম্প্রতি এসব বাড়লেও সরকারি পরিসংখ্যানে তার ছাপ পড়েনি।&lt;/p&gt;\r\n\r\n&lt;p&gt;তবে আগের সপ্তাহের তুলনায় ৯ ফেব্রুয়ারি শেষ হওয়া সপ্তাহে মূল্যস্ফীতির হার ছিল ১ দশমিক ৩৭।&lt;/p&gt;\r\n\r\n&lt;p&gt;এর আগে ২০২২ সালের ৮ সেপ্টেম্বর শেষ হওয়া সপ্তাহে পাকিস্তানের মূল্যস্ফীতির হার ছিল ৪২ দশমিক ৭০। এরপর ৯ ফেব্রুয়ারি শেষ হওয়া সপ্তাহে মূল্যস্ফীতির হার ছিল সবচেয়ে বেশি।&lt;/p&gt;\r\n\r\n&lt;p&gt;এসপিআই ঝুড়িতে যে ৫১টি পণ্যের দাম পরিমাপ করা হয়, তার মধ্যে ২৯টি পণ্যের দাম বেড়েছে, ৮টি পণ্যের দাম কমেছে আর বাকি ১৪টি পণ্যের দাম স্থিতিশীল ছিল।&lt;/p&gt;\r\n\r\n&lt;p&gt;বড় ধরনের সংকটে পড়েছে পাকিস্তান। বিদেশি মুদ্রার রিজার্ভ কমতে কমতে তলানিতে ঠেকেছে। মূল্যস্ফীতি আকাশ ছুঁয়েছে। এ পরিস্থিতিতে আন্তর্জাতিক মুদ্রা তহবিলের দ্বারস্থ হয় তারা। কিন্তু তারা যেন কিছুতেই পাকিস্তানের কাছে ধরা দিচ্ছে না। আইএমএফের সঙ্গে কর্মী পর্যায়ের ঐকমত্য না হওয়া প্রসঙ্গে পাকিস্তান সরকারের কর্মকর্তাদের অভিযোগ, আইএমএফ জনসমক্ষে বলছে গরিববান্ধব নীতি করতে; কিন্তু আদতে তারা যা বলছে, তাতে গরিব মানুষের জীবন আরও কঠিন হয়ে যাবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;আইএমএফ এখন চাচ্ছে, পাকিস্তানের কেন্দ্রীয় ব্যাংক যেন মূল্যস্ফীতি নিয়ন্ত্রণে দ্রুত নীতি সুদহার বৃদ্ধি করে। এ ছাড়া অন্য যেসব বিষয়ে তাদের অগ্রাধিকার পরিবর্তন হয়েছে, সেগুলো হলো মুদ্রার বিনিময় হার নির্ধারিত না রাখা, যাতে যুদ্ধবিধ্বস্ত ও নিষেধাজ্ঞাপ্রাপ্ত আফগানিস্তানে অর্থ পাচার না হয়, বন্ধুরাষ্ট্রগুলো পাকিস্তানকে সহায়তা করবে&amp;mdash;এই মর্মে লিখিত নিশ্চয়তা ও বিদ্যুতে সারচার্জের বিধান অব্যাহত রাখা।&lt;/p&gt;\r\n\r\n&lt;p&gt;দ্য ডন আরও জানিয়েছে, আইএমএফ ধনীদের ওপর করারোপের কথা বললেও এখন বিক্রয় কর বৃদ্ধির জন্য চাপাচাপি করছে। এতে মূল্যস্ফীতির হার আরও বাড়বে। কিন্তু ব্যাংকের মতো প্রতিষ্ঠানের বিদেশি মুদ্রা লেনদেনে করারোপের প্রস্তাবের বিরোধিতা করছে তারা। আবার বন্যার ক্ষয়ক্ষতি পোষাতে উচ্চ আয়ের মানুষের ওপর লেভি আরোপেরও বিরোধিতা করছে আইএমএফ।&lt;/p&gt;\r\n\r\n&lt;p&gt;এদিকে ইকোনমিক টাইমসের এক খবরে বলা হয়েছে, অর্থনৈতিক দীনতা মোকাবিলায় পাকিস্তান গত ৭৫ বছরে ২৩ বার আইএমএফের বেইল আউল প্যাকেজ সহায়তা নিয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ প্রসঙ্গে স্টেট ব্যাংক অব পাকিস্তানের সাবেক গভর্নর মুর্তজা সায়্যিদ জিও নিউজকে বলেছেন, &amp;lsquo;বাস্তবতা হলো আমরাই হলাম আইএমএফের সবচেয়ে নিয়মিত গ্রাহক।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রতিদ্বন্দ্বী দেশ ভারতের সঙ্গে তুলনা দিয়ে তিনি বলেন, &amp;lsquo;আমাদের সঙ্গে একই সঙ্গে স্বাধীনতা অর্জন করা ভারত মাত্র সাতবার আইএমএফের দ্বারস্থ হয়েছে। ১৯৯১ সালে মনমোহন সিংহের যুগান্তকারী সংস্কারের পর থেকে তারা একবারও আইএমএফের কাছে যায়নি।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/11032308d44f17f735110.webp', 'মূল্যস্ফীতি', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-11 06:57:28', 0, 1),
(258, 'samojugc_datatable', 5, 61, 'বাংলাদেশি ও আর্জেন্টাইনরা ‘ভাই-ভাই’', 'বাংলাদেশি ও আর্জেন্টাইনরা ‘ভাই-ভাই’', '&lt;p&gt;ঘুমঘুম চোখেও হাসি লেগে রয়েছে মুখে। ছোটখাটো গড়ন আর মুখভর্তি সাদা দাড়ি। দূর থেকে দেখলে কিছুটা &lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%A1%E0%A6%BF%E0%A7%9F%E0%A7%87%E0%A6%97%E0%A7%8B-%E0%A6%AE%E0%A7%8D%E0%A6%AF%E0%A6%BE%E0%A6%B0%E0%A6%BE%E0%A6%A1%E0%A7%8B%E0%A6%A8%E0%A6%BE#:~:text=%E0%A6%A4%E0%A6%BF%E0%A6%A8%E0%A6%BF%20%E0%A6%9B%E0%A6%BF%E0%A6%B2%E0%A7%87%E0%A6%A8%20%E0%A6%AB%E0%A7%81%E0%A6%9F%E0%A6%AC%E0%A6%B2%E0%A7%87%E0%A6%B0%20%E0%A6%9C%E0%A6%BE%E0%A6%A6%E0%A7%81%E0%A6%95%E0%A6%B0%2C%20%E0%A6%AB%E0%A7%81%E0%A6%9F%E0%A6%AC%E0%A6%B2%E0%A7%87%E0%A6%B0,%E0%A6%9B%E0%A7%81%E0%A6%9F%E0%A7%87%E0%A6%9B%E0%A7%87%E0%A6%A8%2C%20%E0%A6%9C%E0%A7%80%E0%A6%AC%E0%A6%A8%E0%A6%95%E0%A7%87%20%E0%A6%89%E0%A6%AA%E0%A6%AD%E0%A7%8B%E0%A6%97%20%E0%A6%95%E0%A6%B0%E0%A7%87%E0%A6%9B%E0%A7%87%E0%A6%A8%20%E0%A6%AA%E0%A7%8D%E0%A6%B0%E0%A6%BE%E0%A6%A3%E0%A6%AD%E0%A6%B0%E0%A7%87%E0%A5%A4&quot; target=&quot;_blank&quot;&gt;ডিয়েগো ম্যারাডোনার&lt;/a&gt; মতো মনে হয়। তবে ম্যারাডোনা এই ধরাধামে তো আর নেই। কিংবদন্তি মারা গেছেন ২০২০ সালের ২৫ নভেম্বর।&lt;/p&gt;\r\n\r\n&lt;p&gt;অনন্তলোকের বাসিন্দা ম্যারাডোনার কথা মনে করিয়ে দেন এই ভদ্রলোক। প্রথমত, মানুষটি ম্যারাডোনার দেশ &lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%86%E0%A6%B0%E0%A7%8D%E0%A6%9C%E0%A7%87%E0%A6%A8%E0%A7%8D%E0%A6%9F%E0%A6%BF%E0%A6%A8%E0%A6%BE-%E0%A6%AB%E0%A7%81%E0%A6%9F%E0%A6%AC%E0%A6%B2-%E0%A6%A6%E0%A6%B2&quot; target=&quot;_blank&quot;&gt;আর্জেন্টিনার&lt;/a&gt;ই। গড়পড়তা আর্জেন্টাইনরা যে উচ্চারণে ইংরেজিতে কথা বলেন, রিকার্দো আকুনিয়া ঠিক তেমনই। একজন খাঁটি আর্জেন্টাইন।&lt;/p&gt;\r\n\r\n&lt;p&gt;গতকাল বিকেলে আকুনিয়াকে আবিষ্কার করা গেল ঢাকায় পল্টনের একটি হোটেলে। ঢাকায় ১৩ মার্চ শুরু হতে যাওয়া তৃতীয় বঙ্গবন্ধু আন্তর্জাতিক কাবাডি টুর্নামেন্টে অংশ নিতে প্রথমবার আর্জেন্টিনা কাবাডি দল নিয়ে এসেছেন বাংলাদেশে। দলটির কোচ তিনি। শুধু কোচ বললে যেন কিছুই বলা হয় না; আর্জেন্টিনা কাবাডি অ্যাসোসিয়েশনের সভাপতিও এই মানুষটি। বলা যায়, আকুনিয়া আর্জেন্টাইন কাবাডির মুখ।&lt;/p&gt;\r\n\r\n&lt;p&gt;পেশা অবশ্য ভিন্ন। স্কুলে শারীরিক শিক্ষার শিক্ষকতা করেন। একসময় কাবাডি খেলার সূত্রে আজ আর্জেন্টিনার কাবাডির প্রাণপুরুষ হয়ে উঠেছেন। তবে খেলেছেন রাগবি, ব্যাডমিন্টন ও পেশাদার ফুটবলও। এরপর নিজেই দিলেন অবাক করা এক তথ্য, &amp;lsquo;আমি ৪০টি দেশে ব্যাডমিন্টন খেলেছি।&amp;rsquo; সঙ্গে যোগ করলেন, &amp;lsquo;জাতীয় স্তরে আমি ব্যাডমিন্টন কোচও। আমি কানাডায় কাবাডি খেলেছি। আর্জেন্টিনায় অনেক মানুষই চার থেকে পাঁচটি খেলা খেলে। একটা নিয়ে পড়ে থাকে না কেউ। আমিও তা-ই করেছি।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;গতকাল সকালে ঢাকা আসার পর বিকেলে হোটেলের লবিতে কথা হয় আকুনিয়ার সঙ্গে। ৫৫ বছর বয়সী আকুনিয়া ২০০২ সালে আর্জেন্টিনায় কাবাডি অ্যাসোসিয়েশন প্রতিষ্ঠা করেন। তখন দেশটিতে হাতে গোনা দু-চারজন কাবাডি খেলতেন। এখন সংখ্যাটা মেরেকেটে শ-খানেক হবে। এই শ-খানেক খেলোয়াড় রাজধানী বুয়েনস এইরেস এবং তার আশপাশের।&lt;/p&gt;\r\n\r\n&lt;p&gt;দেশটিতে কাবাডি দল আছে মাত্র ছয়টি। হয় না কোনো কাবাডি লিগ, বছরে হয় মাত্র দুটি টুর্নামেন্ট। আকুনিয়ার ভাষায়, &amp;lsquo;কাবাডির কোনো প্রচার নেই আমাদের ওখানে। পত্রিকায় আমাদের খবর দেয় না। কাবাডি খেলে কোনো টাকাও নেই। খেলোয়াড়েরা নিজের পয়সা খরচ করে কাবাডি খেলে। আমরা যে বাংলাদেশে এলাম, সব খরচ কিন্তু বাংলাদেশের ফেডারেশনের। আমাদের ওখানে টাকা হলো ফুটবল আর রাগবিতে। বাস্কেটবল, হকিতেও কিছু আছে। আসলে আর্জেন্টিনায় কাবাডি অতি ক্ষুদ্র একটা খেলা। কেউ খেলতে চায় না এটি।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug55.webp&quot; style=&quot;height:480px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ঢাকায় বঙ্গবন্ধু আন্তর্জাতিক কাবাডি টুর্নামেন্ট খেলতে এসেছে আর্জেন্টিনা দল&lt;/p&gt;\r\n\r\n&lt;p&gt;যে কারণে অন্য অনেক খেলার সঙ্গে যুক্ত খেলোয়াড়দের নিয়ে গড়া হয়েছে আর্জেন্টিনার কাবাডি দল। ঢাকায় আসা দলটির ১২ জন খেলোয়াড়ের মধ্যে ৩ জন কুস্তিগির, ১ জন হর্স রাইডার, ভালো মানের ৩ জন ফুটবলার আছেন দ্বিতীয় বিভাগে খেলা। দলে আছেন তায়কোয়ান্দো খেলোয়াড়ও। অর্থাৎ বিভিন্ন খেলার সঙ্গে যুক্ত ব্যক্তিদের নিয়ে পাঁচমিশালি একটা কাবাডি টিম তৈরি করেছেন। বিশ্ব কাবাডি র&amp;zwj;্যাঙ্কিংয়ে বাংলাদেশ যেখানে পঞ্চম, আর্জেন্টিনা ২৬তম।&lt;/p&gt;\r\n\r\n&lt;p&gt;কথোপকথনের এ পর্যায়ে অনিবার্যভাবে চলে আসে ফুটবল প্রসঙ্গ। আর্জেন্টিনা মানেই ফুটবলের দেশ। আকুনিয়ার ভাষায়, &amp;lsquo;আর্জেন্টিনায় শুধু ফুটবল, ফুটবল, ফুটবল...। ফুটবলের পর রাগবি জনপ্রিয়।&amp;rsquo; গত ডিসেম্বরে কাতার বিশ্বকাপ ফুটবল জিতেছে &lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%AE%E0%A7%87%E0%A6%B8%E0%A6%BF&quot; target=&quot;_blank&quot;&gt;মেসিদের&lt;/a&gt; দেশ।&lt;/p&gt;\r\n\r\n&lt;p&gt;১৯৭৮ সালে আর্জেন্টিনার প্রথম বিশ্বকাপ জয়ের সময় আকুনিয়ার বয়স ছিল ১০। ১৯৮৬ বিশ্বকাপ জয়টা মনে বেশি দাগ কেটে আছে। আড়াই মাস আগে তৃতীয়বার বিশ্বকাপ জেতার সময় আকুনিয়া দিল্লি ছিলেন কাবাডির এক অনুষ্ঠানে। বিশ্ব কাবাডি ফেডারেশনের সহসভাপতি যে তিনি। সেখানেই নাকি পাগলের মতো মেসিদের বিশ্বকাপ জয় উদ্&amp;zwnj;যাপন করেন। অনুষ্ঠান মঞ্চেই চিৎকার করে বলেন, &amp;lsquo;উই আর চ্যাম্পিয়ন, চ্যাম্পিয়ন!&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;ডিয়েগো ম্যারাডোনার সঙ্গে আকুনিয়ার দুবার দেখা হয়েছে। স্মৃতিচারণা করলেন আকুনিয়া, &amp;lsquo;প্রথমবার ১৯৯৪ বিশ্বকাপে ডিয়েগো মাদক নেওয়ার অভিযোগে শাস্তি পাওয়ার পর। ম্যারাডোনা তখন যুক্তরাষ্ট্র থেকে বুয়েনস এইরেসে এলেন। তখন একদিন তিনি ব্যাডমিন্টন খেলছিলেন। কাছে গিয়ে তাঁকে বললাম, হাই ডিয়েগো। তিনি জবাবও দেন। সেই স্মৃতিটা কখনো ভুলব না।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug56.webp&quot; style=&quot;height:480px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;আর্জেন্টিনায় কাবাডি তেমন প্রসার না থাকলেও আকুনিয়া আশাবাদী এই খেলাটি নিয়ে&lt;/p&gt;\r\n\r\n&lt;p&gt;ম্যারাডোনার মৃত্যুর পর বাংলাদেশের মানুষ কেঁদেছে&amp;mdash;কথাটা জানানোর পর আকুনিয়া বললেন, &amp;lsquo;আমাদের ওখানেও তা-ই। সবাই তাঁকে ভীষণ ভালোবাসে। বাংলাদেশের মানুষ আর্জেন্টিনাকে ভালোবাসে, আর্জেন্টাইনরাও বাংলাদেশকে ভালোবাসে। আমরা ভাই-ভাই। যদি বলেন শত্রুতার কথা, ইংল্যান্ডের সঙ্গে আমাদের শত্রুতা। সেই শত্রুর বিরুদ্ধে ১৯৮৬ বিশ্বকাপে ডিয়েগো কী করেছিলেন, মনে আছে না? তাঁর সেই অবিস্মরণীয় গোল দুটি সময়-সময় চোখে ভাসে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;কে সেরা? ম্যারাডোনা না মেসি? আকুনিয়া দ্বিধাহীন এই প্রশ্নে, &amp;lsquo;আমাদের কাছে ডিয়েগো ঈশ্বর-সমতুল্য।&amp;rsquo; তাহলে মেসি? উত্তর, &amp;lsquo;মেসি নতুন ঈশ্বর। তবে আমার চোখে আর্জেন্টিনার সর্বকালের সেরা ফুটবলার ডিয়েগোই। তিনিই আমাদের ঈশ্বর। তরুণ প্রজন্মের কাছে অবশ্য মেসি ঈশ্বর, বলতে পারেন, তরুণ ঈশ্বর। মেসি আরও দু-তিন বছর খেলবে। সে আরও কিছু করার সুযোগ পাবে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;আর্জেন্টিনার মানুষ এখনো প্রতিদিন ম্যারাডোনাকে স্মরণ করে। কিছুটা দীর্ঘশ্বাস ছেড়ে আকুনিয়া বলে যান, &amp;lsquo;ডিয়েগোর ছবি ঝোলে এখনো আর্জেন্টিনার অনেক ভবনে। অনেক মানুষ নিজের শরীরে উলকি আঁকে ডিয়েগোর। এটা তাঁর প্রতি মানুষের অকৃত্রিম ভালোবাসা। ডিয়েগো বেঁচে থাকবেন মানুষের মধ্যে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;মেসির পর এখন আর্জেন্টিনায় কে বেশি জনপ্রিয়? আনহেল দি মারিয়ার নামটা বলেন আকুনিয়া, &amp;lsquo;সে দলের গুরুত্বপূর্ণ খেলোয়াড়। বড় ম্যাচে গোল করে। গত কোপা আমেরিকার ফাইনালে ব্রাজিলের বিপক্ষে একমাত্র গোলটি করেছে। বিশ্বকাপ ফাইনালে ফ্রান্সের বিপক্ষে গোল করেছে। সে সব সময় বড় ম্যাচে গোল করে। দি মারিয়া আমারও খুব প্রিয়।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug57.webp&quot; style=&quot;height:351px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;কাতার বিশ্বকাপে আর্জেন্টিনা প্রচুর সমর্থন পেয়েছে বাংলাদেশে&lt;/p&gt;\r\n\r\n&lt;p&gt;বাংলাদেশের মানুষের কাছে আর্জেন্টিনা ফুটবল দল খুব প্রিয়, যার প্রমাণ এবারের বিশ্বকাপে পাওয়া গেছে। বাংলাদেশে বেশ কয়জন আর্জেন্টাইন ফুটবলার খেলে গেছেন। কোচ হিসেবে কয়েকবার কাজ করে গেছেন আর্জেন্টাইন ডিয়েগো ক্রুসিয়ানি। ক্রুসিয়ানিকে চেনেন কি না জানতে চাইলে বলেন, &amp;lsquo;হ্যাঁ হ্যাঁ, আমি তাঁর কথা জানি। আসলে আর্জেন্টিনায় ভালো ভালো কোচ আছেন। লাতিন আমেরিকায় কলম্বিয়া, চিলি, ভেনেজুয়েলা, ইকুয়েডর প্রভৃতি দেশে আর্জেন্টিনার কোচরা কাজ করেন।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;কয় দিন আগে&lt;a href=&quot;https://www.prothomalo.com/sports/football/j114aw4x99&quot; target=&quot;_blank&quot;&gt; ঢাকায় দূতাবাস&lt;/a&gt; খুলেছে আর্জেন্টিনা। অনেক আর্জেন্টাইন এখন বাংলাদেশে আসতে চান জানিয়ে আকুনিয়া বলেন, বাংলাদেশ-আর্জেন্টিনা বন্ধুত্ব আরও দৃঢ় হবে বলে তাঁর আশা, &amp;lsquo;আমাদের পররাষ্ট্রমন্ত্রী এসেছেন ঢাকায়। এখানে নতুন দূতাবাসের প্রধান যিনি, সেই ভদ্রমহিলা এসেছেন। আর্জেন্টিনা কাবাডি টিম ঢাকায় আর্জেন্টিনা দূতাবাস দেখতে যাবে। তখন তাঁর সঙ্গে দেখা হবে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;বুয়েনস এইরেস থেকে ২ হাজার ৩০০ কিলোমিটার দূরে পাতাগোনিয়ায় আকুনিয়ার বাড়ি। সেখান থেকে বাসে বুয়েনস এইরেসে আসেন দুই দিনে। তারপর বাংলাদেশে আসতে লাগল দুই দিন। এই চার দিনের মধ্যে দুই রাত তাঁর কেটেছে নির্ঘুম। তাই সাক্ষাৎকার পর্ব শেষ করার তাড়া দিয়ে বললেন, &amp;lsquo;বাংলাদেশে আসতে ৪২ ঘণ্টা আমাদের রাস্তায় কেটেছে। বুয়েনস এইরেস থকে ব্রাজিল, দুবাই হয়ে ঢাকা এসেছি। খেলোয়াড়েরা সবাই ঘুমাচ্ছে। আমি যাই, ঘুমাতে হবে। বুঝতেই পারছেন আমি ভীষণ ক্লান্ত।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;ম্যারাডোনা-মেসিদের দেশের কাবাডির এই &amp;lsquo;ফেরিওয়ালা&amp;rsquo;র স্বপ্ন একটাই&amp;mdash;কাবাডিকে আরও তুলে ধরা। অদম্য চেষ্টার জোরে ফুটবলের দেশটিতে তিনি কাবাডি-ফুল ফুটিয়ে চলেছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/11032343e5722a3810b94.webp', 'আর্জেন্টিনা কাবাডি দলের কোচ রিকার্দো আকুনিয়া। দল নিয়ে তিনি এখন ঢাকায়', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-11 07:04:52', 0, 1),
(259, 'samojugc_datatable', 5, 61, 'মিচেলের সেঞ্চুরিতে ক্রাইস্টচার্চে কিউইদের দিন', 'মিচেলের সেঞ্চুরিতে ক্রাইস্টচার্চে কিউইদের দিন', '&lt;p&gt;দৌড় শেষ হতে না হতেই হেলমেট খুললেন। বাতাসে হাতের ব্যাট ছুড়ে মারার ভঙ্গি করলেন। একবার নয়, একাধিকবার। চিৎকারও করলেন। সব মিলিয়ে একটা কিছু &amp;lsquo;দেখিয়ে দেওয়া&amp;rsquo;র তাড়না ছিল ড্যারিল মিচেলের। এমন বাঁধভাঙা উচ্ছ্বাসের কারণ সেঞ্চুরি। এই সেঞ্চুরি শুধু মিচেলের ব্যক্তিগত অর্জনের খাতাই সমৃদ্ধ করেনি, দলকেও উদ্ধার করেছে বিপদ থেকে।&lt;/p&gt;\r\n\r\n&lt;p&gt;২৫ বছর বয়সী এই ডানহাতি ব্যাটসম্যানের সেঞ্চুরিতে ক্রাইস্টচার্চ টেস্টে তৃতীয় দিনে ঘুরে দাঁড়িয়েছে নিউজিল্যান্ড। প্রথম ইনিংসে শ্রীলঙ্কার চেয়ে ১৬৭ রান পিছিয়ে থাকার সময় ষষ্ঠ উইকেট হারিয়েছিল কিউইরা। মিচেলের পঞ্চম টেস্ট সেঞ্চুরি এবং ম্যাট হেনরির ক্যারিয়ার&amp;ndash;সর্বোচ্চ ৭২ রানে ভর করে উল্টো ১৮ রানের লিড নিয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;দ্বিতীয় ইনিংসে ব্যাট করতে নেমে ৩ উইকেটে ৮৩ নিয়ে দিন শেষ করেছে শ্রীলঙ্কা। তৃতীয় দিন শেষে অ্যাঞ্জেলো ম্যাথুস ২০ এবং প্রবাথ জয়াসুরিয়া ২ রানে অপরাজিত।&lt;/p&gt;\r\n\r\n&lt;p&gt;নিউজিল্যান্ডের জন্য ক্রাইস্টচার্চের আজকের দিনটি ছিল ঘুরে দাঁড়ানোর, নয়তো ম্যাচ থেকে অনেকটাই ছিটকে যাওয়ার। শ্রীলঙ্কা প্রথম ইনিংসে তুলেছিল ৩৫৫ রান। দ্বিতীয় দিন শেষে ১৬২ রান তুলতেই ৫ উইকেট হারিয়ে ফেলেছিল কিউইরা। উইকেটে ছিলেন শেষ দুই স্বীকৃত ব্যাটসম্যান মিচেল ও মাইকেল ব্রেসওয়েল।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug59.webp&quot; style=&quot;height:427px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;মিচেলের সেঞ্চুরিতে ভর করে প্রথম ইনিংসে লিড নিয়েছে নিউজিল্যান্ড&lt;/p&gt;\r\n\r\n&lt;p&gt;তৃতীয় দিনের প্রথম ঘণ্টাতেই বাঁহাতি স্পিনার প্রবাথের বলে উইকেটের পেছনে ক্যাচ দেন ব্রেসওয়েল। ১৮৮ রানে অষ্টম উইকেট হারিয়ে নিউজিল্যান্ড তখন প্রথম ইনিংসে পিছিয়ে পড়ার শঙ্কায়। সেখান থেকে কিউইদের টেনে তোলার কাজটি করেন মিচেল, সঙ্গ দেন অধিনায়ক টিম সাউদি ও টেলএন্ডার ব্যাটসম্যান হেনরি।&lt;/p&gt;\r\n\r\n&lt;p&gt;মেরে খেলার চেষ্টা করে সাউদি অবশ্য বেশিক্ষণ টিকতে পারেননি। ৩ চার ১ ছয়ে ২০ বলে ২৫ রান করে কাসুন রাজিথার শিকার হন নিউজিল্যান্ড অধিনায়ক। এরপর হেনরিকে নিয়ে লড়াই চালিয়ে যান মিচেল।&lt;/p&gt;\r\n\r\n&lt;p&gt;আগের ১২ ইনিংসের ৭টিতেই পঞ্চাশোর্ধ ইনিংস খেলা এই ডানহাতি লাহিরু কুমারার বলে ডাবল নিয়ে তিন অঙ্ক স্পর্শ করেন ১৮৭ বলে। যে ইনিংসে ছিল ৬টি চার ও ২টি ছয়। ১৭ টেস্টের ক্যারিয়ারে এটি তাঁর পঞ্চম সেঞ্চুরি। নিউজিল্যান্ডের রানও ততক্ষণে তিন শর কাছাকাছি চলে গেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug60.webp&quot; style=&quot;height:427px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ক্যারিয়ার সর্বোচ্চ ৭২ রানের ইনিংস খেলেন ম্যাট হেনরি&lt;/p&gt;\r\n\r\n&lt;p&gt;সেঞ্চুরির এক ওভারই পরই অবশ্য কুমারার বলে উইকেটের পেছনে ক্যাচ দেন তিনি। নিউজিল্যান্ডকে বাকিটা পথ প্রায় একাই টেনে নেন হেনরি। এর মধ্যে রাজিথার এক ওভারে রীতিমতো ঝড় বইয়ে দেন। প্রথম থেকে পঞ্চম&amp;mdash;প্রথম পাঁচ বলেই মারেন ৪টি চার ও একটি ছয়। তুলে নেন চতুর্থ টেস্ট ফিফটিও। আরেক প্রান্তে নিল ওয়াগনারও ছিলেন আক্রমণের তালে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ দুজনের ৮.৩ ওভার স্থায়ী নবম উইকেট জুটিতে ৬৯ রান পেয়ে যায় নিউজিল্যান্ড। ঝড় থামে আসিথা ফার্নান্দোর বলে হেনরির বোল্ড আউটে। ১০ চার ৩ ছয়ে ৭৫ বলে ৭২ রান করে যান তিনি। ওয়াগনার খেলেন ৩ ছয় ১ চারে ২৪ বলে ২৭ রানের ইনিংস। ১২ রানের মধ্যে শেষ দুই উইকেট হারালেও ৩৭৩ রান তুলে ১৮ রানের লিড পায় নিউজিল্যান্ড।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug61.webp&quot; style=&quot;height:427px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ব্লেয়ার টিকনার নেন ৩ উইকেট&lt;/p&gt;\r\n\r\n&lt;p&gt;লিডে উজ্জীবিত নিউজিল্যান্ড পরে বল হাতেও দিনটা নিজেদের করে নেয়। শর্ট বল ও গতিতে ভড়কে দিয়ে ব্লেয়ার টিকনার তুলে নেন ওশাদা ফার্নান্দো, দিমুথ করুনারত্নে ও কুশাল মেন্ডিসের উইকেট। এর মধ্যে উইকেটরক্ষকের হাতে ক্যাচ দেওয়া ওশাদা সর্বোচ্চ ২৮ রান করেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;৩ উইকেট নিতে টিকনারের খরচও ২৮ রান।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/110323b02ff4882c9ccf5.webp', 'ক্রাইস্টচার্চে পঞ্চম টেস্ট সেঞ্চুরি করেন ড্যারিল মিচেল', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-11 07:14:51', 0, 1),
(260, 'samojugc_datatable', 5, 62, 'যে কারণে দক্ষিণি সিনেমায় নিষিদ্ধ হলেন জনপ্রিয় এই অভিনেত্রী', 'যে কারণে দক্ষিণি সিনেমায় নিষিদ্ধ হলেন জনপ্রিয় এই অভিনেত্রী', '&lt;p&gt;ক্যারিয়ারের শুরুর দিকে দক্ষিণি সিনেমায় বেশি অভিনয় করলেও হিন্দি ছবির দর্শকের কাছেও পরিচিত নাম ইলিয়ানা ডি&amp;rsquo;ক্রুজ। অনুরাগ বসুর &amp;lsquo;বরফি&amp;rsquo; সিনেমায় বাঙালি নারীর চরিত্রে অভিনয় করে দর্শকের প্রশংসা কুড়িয়েছিলেন তিনি। এরপর তাঁকে দেখা যায় &amp;lsquo;রেইড&amp;rsquo;, &amp;lsquo;বাদশাহো&amp;rsquo;সহ বেশ কয়েকটি সিনেমায়। তবে তামিল সিনেমায় নিষিদ্ধ করা হয়েছে সুপরিচিত এই অভিনেত্রীকে। খবর টাইমস অব ইন্ডিয়ার।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug63.webp&quot; style=&quot;height:800px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ইলিয়ানা ডি ক্রুজ&lt;/p&gt;\r\n\r\n&lt;p&gt;২০০৬ সালে &amp;lsquo;দেবদতাসু&amp;rsquo; দিয়ে তেলেগু সিনেমায় অভিষেক। এরপর থেকে তেলেগু সিনেমাতেই বেশি দেখা গেছে ইলিয়ানাকে। মাঝে করেছেন তামিল ও কন্নড় ছবিও।&lt;/p&gt;\r\n\r\n&lt;p&gt;২০১২ সালে সর্বশেষ তামিল সিনেমা করেন অভিনেত্রী, &amp;lsquo;নানবান&amp;rsquo; নামে সে সিনেমাটি প্রশংসিত হয়েছিল। তবে সম্প্রতি নতুন একটি তামিল সিনেমায় অভিনয় করার কথা ছিল ইলিয়ানার। অভিযোগ উঠেছে, সেই সিনেমায় পারিশ্রমিক নিয়েও অভিনয় করেননি তিনি। এ জন্য ছবিটির পরিচালক ইলিয়ানার বিরুদ্ধে অভিযোগ করেছেন। সে অভিযোগ আমলে নিয়েই তামিল সিনেমায় নিষিদ্ধ করা হয়েছে ইলিয়ানাকে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug64.webp&quot; style=&quot;height:560px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ইলিয়ানা ডি ক্রুজ&lt;/p&gt;\r\n\r\n&lt;p&gt;তামিল সিনেমায় ইলিয়ানাকে নিষিদ্ধ করা নিয়ে অনেক ভারতীয় গণমাধ্যমে খবর প্রকাশিত হলেও অভিনেত্রীর কোনো প্রতিক্রিয়া পাওয়া যায়নি।&lt;br /&gt;\r\nইলিয়ানাকে সর্বশেষ দেখা যায় হিন্দি সিনেমা &amp;lsquo;দ্য বিগ বুল&amp;rsquo;-এ। অভিষেক বচ্চনের সঙ্গে সেই সিনেমাটি মুক্তি পায় দুই বছর আগে।&lt;/p&gt;\r\n\r\n&lt;p&gt;চলতি বছর দুই সিনেমায় দেখা যাবে ইলিয়ানাকে। যার একটি &amp;lsquo;আনফেয়ার অ্যান্ড লাভলি&amp;rsquo;র শুটিং শেষ। নাম ঠিক না হওয়া আরেকটি সিনেমার শুটিং চলছে এখন।&lt;br /&gt;\r\nসামাজিক যোগাযোগমাধ্যমে বেশ সক্রিয় থাকলেও গণমাধ্যমের সঙ্গে খুব একটা কথা বলেন না ইলিয়ানা। বেশ কিছুদিন আগে এক সাক্ষাৎকারে তিনি জানিয়েছিলেন, সিনেমার মাধ্যমেই ভক্ত-দর্শকের সঙ্গে যোগাযোগ রাখতে চান। সাক্ষাৎকার দিতে গেলেও ব্যক্তিগত নানা প্রসঙ্গ উঠে আসে, যা তাঁর একেবারেই পছন্দ নয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug65.webp&quot; style=&quot;height:1138px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ইলিয়ানা ডি ক্রুজ&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/1103234e41654944c6854.webp', 'ইলিয়ানা ডি ক্রুজ', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-11 07:21:58', 0, 1),
(261, 'samojugc_datatable', 5, 63, 'আর্জেন্টিনা হয়ে অ্যান্টার্কটিকা ঘুরে এলেন মহুয়া রউফ, বললেন সেই রোমাঞ্চকর গল্প', 'আর্জেন্টিনা হয়ে অ্যান্টার্কটিকা ঘুরে এলেন মহুয়া রউফ, বললেন সেই রোমাঞ্চকর গল্প', '&lt;p&gt;সব মিলিয়ে ১২ দিনের অভিযাত্রা। এর মধ্যে যেতে-আসতেই ৬ দিন শেষ। অন্য দিনগুলো কেটেছে অ্যান্টার্কটিকার সাগর আর উপসাগরে ঘুরে। কখনো কখনো জাহাজ থেকে নেমে ছোট নৌকায় ভেসে ভেসে দেখেছেন পেঙ্গুইনের রাজ্য, বরফঢাকা অ্যান্টার্কটিকার রূপ, করেছেন হাইকিং। অ্যান্টার্কটিকা অভিযাত্রার আরও গল্প শোনাচ্ছেন&amp;nbsp;&lt;strong&gt;মহুয়া রউফ&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;জ্ঞান ফিরলে দেখি, কেবিনে শুয়ে আছি। সামনে দাঁড়িয়ে জাহাজের ডাক্তার আর তিন ক্রু।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;lsquo;রেস্তোরাঁর সামনে তুমি অচেতন হয়ে পড়ে ছিলে,&amp;rsquo; ডাক্তার বললেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;চোখ বন্ধ করে ভাবার চেষ্টা করলাম, রেস্তোরাঁর দিকে কেন গিয়েছিলাম? মনে পড়েছে। বেশ কয়েকবার বমি করার পর ভাবছিলাম, একটা সি-সিকনেস পিল খাই। কিন্তু খালি পেটে তো আর খাওয়া যাবে না। তাই বিস্কুট আনতে গিয়েছিলাম। তারপর আর কিছু মনে নেই।&lt;/p&gt;\r\n\r\n&lt;p&gt;ডাক্তার আবার বলতে শুরু করলেন, &amp;lsquo;আমরা এখন ড্রেক প্যাসেজ পার হচ্ছি। (ড্রেক প্যাসেজ হলো দুটি সমুদ্রের মাঝে সৃষ্ট একটি সরু সমুদ্র। সরু বলেই সেটি বেশি উত্তাল, ঢেউ হয় অনেক উঁচু।) এটিকে বলা হয় পৃথিবীর সবচেয়ে রুক্ষ সমুদ্র। প্যাসেজটির একটি উপাধিও আছে। সেটি হলো কুখ্যাত ড্রেক প্যাসেজ।&amp;rsquo; প্যাসেজটা পার হতে আরও ৩০ ঘণ্টা লাগবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;অ্যান্টার্কটিকায় বাংলাদেশের লাল–সবুজের পাতাকা হাতে লেখক&quot; src=&quot;https://images.prothomalo.com/prothomalo-bangla%2F2023-03%2Fce784132-a83f-4422-a039-5b12e1bb384b%2F332155806_1453955411678530_8789455611255964111_n.jpg?auto=format%2Ccompress&amp;amp;format=webp&amp;amp;dpr=1.0&amp;amp;q=70&amp;amp;w=640&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;অ্যান্টার্কটিকায় বাংলাদেশের লাল&amp;ndash;সবুজের পাতাকা হাতে লেখক&lt;/p&gt;\r\n\r\n&lt;p&gt;জাহাজে ওঠার পর প্রতিদিন নানা বিষয়ে প্রশিক্ষণ চলছে। হঠাৎ অচেতন হয়ে পড়ায় দুটি বাধ্যতামূলক প্রশিক্ষণে অংশ নিতে পারিনি। যে প্রশিক্ষণ দুটিতে উপস্থিত থাকতে পারিনি, পরে আবার সেগুলোর ব্যবস্থা করা হবে। আর সুস্থ হওয়া অবধি একজন ক্রু আমার রুমের আশপাশে থাকবে। &amp;lsquo;আর একটা জরুরি বিষয়। বমি হলেও খেতে হবে। খেলে তোমার পাকস্থলী ব্যস্ত থাকবে আর পাকস্থলী ব্যস্ত থাকলে মস্তিষ্ক সচল থাকবে,&amp;rsquo; বললেন ডাক্তার।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/11032357e57bb12cae662.webp', 'অ্যান্টার্কটিকায় পেঙ্গুইনের রাজ্যে মহুয়া রউফ', 'https://facebook.com/samojugnews', 0, 0, '25', '2023-03-11 07:30:12', 0, 1),
(262, 'samojugc_datatable', 5, 64, 'অ্যাপল ও গুগলের অ্যাপ স্টোরে ভুয়া রিভিউ থাকার অভিযোগ', 'অ্যাপল ও গুগলের অ্যাপ স্টোরে ভুয়া রিভিউ থাকার অভিযোগ', '&lt;p&gt;অ্যাপলের অ্যাপ স্টোর ও গুগলের প্লে স্টোর থেকে অ্যাপ নামানোর আগে আমরা অনেকেই অ্যাপগুলো সম্পর্কে অন্য ব্যবহারকারীদের পর্যালোচনার (রিভিউ) তথ্য পড়ে সিদ্ধান্ত নিয়ে থাকি। কিন্তু অ্যাপল ও গুগলের অ্যাপ স্টোর থাকা বিভিন্ন অ্যাপের পর্যালোচনা তথ্যই ভুয়া বলে অভিযোগ করেছে যুক্তরাজ্যভিত্তিক কনজ্যুমার গ্রুপ হুইচ। সংস্থাটির এক অনুসন্ধানে দেখা গেছে, গুগল প্লে স্টোরের শুধু হেলথ অ্যান্ড ফিটনেস বিভাগে থাকা এক&amp;ndash;চতুর্থাংশ অ্যাপের পর্যালোচনাই সন্দেহজনক। অপর দিকে অ্যাপলের অ্যাপ স্টোরের ১৭ শতাংশ পর্যালোচনাই ভুয়া।&lt;/p&gt;\r\n\r\n&lt;p&gt;ভুয়া পর্যালোচনার সন্ধান পেতে অ্যাপলের অ্যাপ স্টোর ও গুগলের প্লে স্টোরে থাকা বিভিন্ন অ্যাপের প্রায় ৯ লাখ পর্যালোচনা খতিয়ে দেখেছেন হুইচের গবেষকেরা। তাঁদের মতে, অ্যাপ নির্মাতাদের হয়ে বিভিন্ন প্রতিষ্ঠান এসব ভুয়া পর্যালোচনা অর্থের বিনিময়ে লিখে দেয়। ভুয়া পর্যালোচনার পাশাপাশি বিভিন্ন অ্যাকাউন্ট থেকে অ্যাপ নামিয়ে অ্যাপের জনপ্রিয়তা বৃদ্ধি করা হচ্ছে। এর মাধ্যমে সেরা অ্যাপের তালিকায়ও জায়গা করে নিচ্ছে মানহীন বিভিন্ন অ্যাপ।&lt;/p&gt;\r\n\r\n&lt;p&gt;ভুয়া অ্যাপ পর্যালোচনাকারী প্রতিষ্ঠান রিভিউ ল্যান্সার দাবি করেছে, তারা প্রায় ৫৩ হাজার পর্যালোচনা বিক্রি করেছে। এ ছাড়া ১ লাখ ৩০ হাজারের বেশি পর্যালোচনা বিভিন্ন সাইটে বিনিময় করেছে। বিভিন্ন প্রতিষ্ঠানের পাশাপাশি ফেসবুকভিত্তিক কিছু গ্রুপের মাধ্যমেও এসব পর্যালোচনা লেখা হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;সূত্র: মেইল অনলাইন&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/1103231e092edf369224a.webp', 'অ্যাপ স্টোর ও গুগলের প্লে স্টোরে অ্যাপ পর্যালোচনার সব তথ্য ঠিক নয়', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-11 07:35:29', 0, 1),
(263, 'samojugc_datatable', 5, 64, 'গুগলের পটভূমি নিজের মতো করে সাজাবেন যেভাবে', 'গুগলের পটভূমি নিজের মতো করে সাজাবেন যেভাবে', '&lt;p&gt;গুগল সার্চ ইঞ্জিন চালু করলেই সাদা রঙের পটভূমি দেখা যায়। নিয়মিত একই ছবি দেখার বদলে চাইলেই গুগলের পটভূমিতে পছন্দের ছবি যুক্ত করা সম্ভব। এমনকি নিজের কোনো ছবিও গুগলের পটভূমিতে ব্যবহার করা যায়। ক্রোম ব্রাউজার কাজে লাগিয়ে শুধু কম্পিউটার ব্যবহারকারীরা গুগলের পটভূমি নিজের মতো করে পরিবর্তন করতে পারবেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;গুগলের পটভূমিতে পছন্দের ছবি যুক্ত করার জন্য প্রথমে কম্পিউটারে ক্রোম ব্রাউজার চালু করতে হবে। এরপর গুগল ট্যাবের নিচে থাকা কাস্টমাইজ ক্রোম বাটন অপশনে ক্লিক করলেই বেশ কিছু পটভূমির ছবি দেখা যাবে। পছন্দের ছবি নির্বাচন করে ডান বা ওকে বাটনে ক্লিক করলেই সেটি গুগলের পটভূমি হিসেবে যুক্ত হয়ে যাবে। রিফ্রেশ ডেইলি টগল চালু করলে প্রতিদিন নতুন নতুন পটভূমি স্বয়ংক্রিয়ভাবে দেখা যাবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;গুগলের পটভূমিতে নিজের ছবি যুক্ত করার জন্য কাস্টমাইজ ক্রোম বাটনে ক্লিক করে ব্যাকগ্রাউন্ড অপশন নির্বাচন করতে হবে। এবার আপলোড ফ্রম ডিভাইস অপশনে ক্লিক করে ছবি নির্বাচনের পর ওপেন বাটনে ক্লিক করলেই ছবিটি গুগলের পটভূমিতে দেখা যাবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;গুগলের পটভূমির রং এবং থিম পরিবর্তনের জন্য কাস্টমাইজ ক্রোম বাটনে ক্লিক করে কালার অ্যান্ড থিম অপশন নির্বাচন করতে হবে। এরপর পছন্দসই রং নির্বাচন করে ডান বা ওকে বাটনে ক্লিক করলেই রং পরিবর্তন হয়ে যাবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/11032373ff1f644694989.webp', 'গুগলের পটভূমির ছবি পরিবর্তন করা যায়', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-11 07:39:53', 0, 1),
(264, 'samojugc_datatable', 5, 56, 'কুষ্টিয়ায় বিএনপিকে সড়কে দাঁড়াতে দেয়নি পুলিশ, পরে কার্যালয়ের সামনে মানববন্ধন', 'কুষ্টিয়ায় বিএনপিকে সড়কে দাঁড়াতে দেয়নি পুলিশ, পরে কার্যালয়ের সামনে মানববন্ধন', '&lt;p&gt;কুষ্টিয়ায় পুলিশের বাধায় শহরের প্রধান সড়কে দাঁড়িয়ে মানববন্ধন করতে পারেনি জেলা বিএনপি। বাধার মুখে নেতা&amp;ndash;কর্মীরা দলীয় কার্যালয়ের সামনে মানববন্ধন করেছেন। বিএনপি চেয়ারপারসন খালেদা জিয়াসহ সব কারাবন্দী নেতা-কর্মীর মুক্তি, সরকারের পদত্যাগ, নিরপেক্ষ সরকারের অধীনে নির্বাচন, নিত্যপ্রয়োজনীয় দ্রব্যের মূল্য কমানোসহ ১০ দফা দাবিতে কেন্দ্রীয় কর্মসূচির অংশ হিসেবে আজ শনিবার দুপুরে কুষ্টিয়া জেলা বিএনপি এই কর্মসূচি পালন করে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এর আগে আজ সকাল থেকে শহরের পাবলিক লাইব্রেরির সামনে এনএস রোডের পাশে জেলা বিএনপির কার্যালয়ের সামনে দলীয় নেতা&amp;ndash;কর্মীরা জড়ো হতে থাকেন। বেলা ১১টা থেকে এনএস রোডে কুষ্টিয়া মডেল থানার ভারপ্রাপ্ত কর্মকর্তা (ওসি) দেলোয়ার হোসেন খানের নেতৃত্বে থানা ও গোয়েন্দা পুলিশের ব্যাপক উপস্থিতি দেখা যায়। কিছু সময় পর শতাধিক নেতা&amp;ndash;কর্মী ব্যানার নিয়ে সড়কে যেতে চাইলে পুলিশ তাঁদের বাধা দেয়। এ সময় বিএনপির শীর্ষ নেতাদের সঙ্গে পুলিশের বাগ্&amp;zwnj;বিতণ্ডা হয়।&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/110323c8a24fe07a8f6b5.webp', 'কুষ্টিয়া জেলা বিএনপির কার্যালয়ের সামনে পুলিশ ও গোয়েন্দা পুলিশের উপস্থিতি দেখা গেছে। আজ সকালে শহরের এনএস রোডে', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-11 13:38:28', 1, 1),
(265, 'samojugc_datatable', 5, 56, 'কটিয়াদীতে বিএনপির সভাপতি ও সম্পাদকের পাল্টাপাল্টি কর্মসূচি ঘিরে উত্তেজনা', 'কটিয়াদীতে বিএনপির সভাপতি ও সম্পাদকের পাল্টাপাল্টি কর্মসূচি ঘিরে উত্তেজনা', '&lt;p&gt;কিশোরগঞ্জের কটিয়াদীতে একই দিনে একই সময়ে পাশাপাশি স্থানে পাল্টাপাল্টি কর্মসূচির আয়োজন করেছেন উপজেলা বিএনপির সভাপতি ও সাধারণ সম্পাদক। এ নিয়ে বিএনপির দুই পক্ষের মধ্যে রাজনৈতিক সংঘাতের আশঙ্কা করছেন দলের নেতা&amp;ndash;কর্মী ও স্থানীয় লোকজন। পাল্টাপাল্টি কর্মসূচি ঘিরে আজ রোববার সকাল থেকে উপজেলা শহরের স্বপ্নকুঞ্জ কমিউনিটি সেন্টার ও এর আশপাশের এলাকায় পুলিশকে টহল দিতে দেখা গেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;দলীয় সূত্রে জানা গেছে, কটিয়াদী উপজেলার বাসিন্দা রুহুল আমিন সম্প্রতি যুবদলের কেন্দ্রীয় কমিটির সহসভাপতির পদ পেয়েছেন। রুহুল আমিনকে গণসংবর্ধনা দিতে একটি অনুষ্ঠানের আয়োজন করছেন উপজেলা বিএনপির সাধারণ সম্পাদক আরিফুর রহমান। শহরের স্বপ্নকুঞ্জ কমিউনিটি সেন্টারে আজ বেলা তিনটায় এ অনুষ্ঠান শুরু হওয়ার কথা। প্রায় দুই সপ্তাহ ধরে এই সংবর্ধনা আয়োজনের জন্য আরিফুর প্রস্তুতি নিচ্ছিলেন। তবে শুরু থেকেই তিনি এই আয়োজনে সভাপতি তোফাজ্জল হোসেন খানকে বাদ রেখেছিলেন। অনুষ্ঠানের প্রচারপত্রে উপজেলা বিএনপির ব্যানার ব্যবহার করা হলেও তোফাজ্জলের নাম রাখা হয়নি। অনুষ্ঠানের সভাপতি হিসেবেও আরিফুরের নাম ছাপা হয়। বিষয়টি সহজভাবে নিতে পারছিলেন না তোফাজ্জল। এ অবস্থায় গতকাল শনিবার তোফাজ্জলের পক্ষ থেকে সংবর্ধনা অনুষ্ঠানকে চ্যালেঞ্জ করে একই সময়ে ওই কমিউনিটি সেন্টারের লাগোয়া একটি ফাঁকা স্থানে অবস্থান কর্মসূচির ঘোষণা আসে।&lt;/p&gt;\r\n\r\n&lt;p&gt;তোফাজ্জল বলেন, &amp;lsquo;আমার সাফ কথা, দলে অসাংগঠনিক কাজ করতে দেওয়া হবে না। সংবর্ধনা আয়োজনটি হচ্ছে আমাকে পাশ কাটিয়ে। এর পেছনে রাজনৈতিক প্রতিহিংসার বিষয় আছে। এই ধরনের কর্মসূচি না ঠেকাতে পারলে দলের ক্ষতি হয়ে যাবে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;অনুষ্ঠান আয়োজনের বিষয়ে পাল্টা যুক্তি দিয়ে আরিফুর বলেন, &amp;lsquo;প্রথমে কথা ছিল, সংবর্ধনা অনুষ্ঠানটি হবে উপজেলা বিএনপির ব্যানারে। সভাপতির বিরোধিতার কারণে এখন আমরা ওই সিদ্ধান্ত থেকে সরে এসেছি। এখন অনুষ্ঠানটি কোনো নির্দিষ্ট ব্যানারে হবে না। কটিয়াদী উপজেলা বিএনপি ও সহযোগী সংগঠনের নেতাদের ব্যানারেই হবে। অনুষ্ঠানের জন্য আলাদা করে ব্যানার লাগানোও হবে না। এই অবস্থায় সভাপতির মনে আর কোনো দুঃখ থাকার কথা নয়।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;তবে পাল্টাপাল্টি কর্মসূচির ব্যাপারে কিছুই জানেন না বলে দাবি করেছেন কটিয়াদী থানার ভারপ্রাপ্ত কর্মকর্তা (ওসি) এস এম শাহাদাত হোসেনে। তিনি বলেন, দুটি অনুষ্ঠানের মধ্যে কোনোটিই আয়োজনের বিষয়ে কোনো অনুমতি নেওয়া হয়নি।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/120323d80bebef6414eba.webp', 'উপজেলা বিএনপির সভাপতি তোফাজ্জল হোসেন ও সাধারণ সম্পাদক আরিফুর রহমান', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-12 07:16:03', 0, 1),
(266, 'samojugc_datatable', 5, 56, 'আওয়ামী লীগ সরকারের অধীন নির্বাচনে যাবে না, ইইউকে জানাল বিএনপি', 'আওয়ামী লীগ সরকারের অধীন নির্বাচনে যাবে না, ইইউকে জানাল বিএনপি', '&lt;p&gt;বর্তমান আওয়ামী লীগ সরকারের অধীন বিএনপি নির্বাচনে যাবে না। আজ রোববার ইউরোপীয় ইউনিয়নভুক্ত দেশগুলোর সঙ্গে রাষ্ট্রদূতদের সঙ্গে এক বৈঠকে এসব কথা সাফ জানিয়ে দিয়েছেন বিএনপির নেতারা। আজ সকালে বৈঠক শেষে দলটির স্থায়ী কমিটির সদস্য আমীর খসরু মাহমুদ চৌধুরী সাংবাদিকদের কাছে এসব কথা জানান।&lt;/p&gt;\r\n\r\n&lt;p&gt;আজকের বৈঠকে বিএনপির পক্ষ থেকে নেতৃত্ব দেন দলটির মহাসচিব মির্জা ফখরুল ইসলাম আলমগীর। বৈঠকে বিএনপির পক্ষ থেকে দলের স্থায়ী কমিটির সদস্য আমীর খসরু ছাড়াও ছিলেন দলের সাংগঠনিক সম্পাদক শামা ওবায়েদ এবং মানবাধিকার সম্পাদক আসাদুজ্জামান আসাদ।&lt;/p&gt;\r\n\r\n&lt;p&gt;গুলশানে এবিসি হাউসে সকাল ১০টা থেকে দেড় ঘণ্টা এ বৈঠক হয়। বৈঠকে ইউরোপীয় ইউনিয়নের রাষ্ট্রদূত চালর্স হোয়াইটলির নেতৃত্বে ফ্রান্স, জার্মানি, ইটালি, নেদারল্যান্ড, স্পেন, ডেনমার্ক, নরওয়ের বাংলাদেশে নিযুক্ত রাষ্ট্রদূতেরা উপস্থিত ছিলেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;নির্বাচনের বিষয়ে বিএনপির অবস্থান কি আপনারা ইউরোপীয় ইউনিয়নকে পরিষ্কার করেছেন কি না, প্রশ্ন করা হলে আমীর খসরু বলেন, &amp;lsquo;অবশ্যই এই সরকারের অধীন বিএনপি নির্বাচনে যাবে না&amp;mdash;সেটা আমরা খোলাখুলিভাবে বলেছি। বিশ্বের যারা বাংলাদেশের ওপর নিবিড়ভাবে কাজ করছে, পর্যবেক্ষণ করছে, সবার আছে এটা পরিষ্কার করা হয়েছে যে বর্তমান দখলদার, অনির্বাচিত সরকারের অধীন বাংলাদেশের জনগণ ভোটাধিকার প্রয়োগ করে তাদের প্রতিনিধি, তাদের সরকার, তাদের সংসদ নির্বাচিত করতে পারবে না। এই বিষয় প্রতিনিয়ত যেভাবে বলা হচ্ছে, তাদের কাছে জানা আছে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;আমীর খসরু বলেন, &amp;lsquo;এটার কারণগুলো সবার কাছেই জানা আছে। এমন যে না যে একটা কথা বলা হয়েছে। এই কথার পেছনে যে কারণগুলো আছে, সেই কারণগুলো এখন আলোচনা হচ্ছে, বিশ্লেষণ হচ্ছে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;বিষয়গুলো নিয়ে ইউরোপীয় ইউনিয়ন কী মনে করে জানতে চাইলে &amp;nbsp;আমীর খসরু বলেন, &amp;lsquo;তারা কী মনে করে, সেটা তারাই বলতে পারবে। আমি তো বলতে পারব না। আপনারা তো সব কিছু জানেন যে দেশের মানুষ যেভাবে পর্যবেক্ষণ করছে, দেশের বর্তমান অবস্থা ও নির্বাচন, সারা বিশ্বের যারা গণতান্ত্রিক দেশ আছে, সবাই নিবিড়ভাবে বাংলাদেশকে পর্যবেক্ষণ করছে। তার অংশ হিসেবে তারা (ইউরোপীয় ইউনিয়ন) দেখছে, বাংলাদেশের বর্তমান গণতান্ত্রিক অবস্থা কী? মানবাধিকার, আইনের শাসন, মানবাধিকার, বাক্&amp;zwnj;স্বাধীনতা, গণমাধ্যমের স্বাধীনতা কেমন। বিশেষ করে আগামী নির্বাচন নিয়ে যে শঙ্কা কাজ করছে দেশের ভেতরে, দেশের বাইরে, সেটার ওপর তো তাদের স্বাভাবিকভাবে একটা দৃষ্টি তো আছে। সেই দৃষ্টিভঙ্গি থেকে আজকে এ আলোচনা।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;নির্বাচনী ব্যবস্থা নিয়ে কী আলাপ হয়েছে, জানতে চাইলে আমীর খসরু মাহমুদ চৌধুরী বলেন, সেটাই তো। বাংলাদেশে যে নির্বাচনী ব্যবস্থাটা ভেঙে পড়েছে, এখানে যে জনগণের ভোটাধিকার কেড়ে নিয়ে একটা অবৈধ সরকার ক্ষমতায় বসে আছে। এই প্রেক্ষাপটেই তো আলোচনা হয়েছে। এই প্রেক্ষাপট থাকার কারণেই তো এসব আলোচনা চলছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিএনপি নেতা আমীর খসরু আরও বলেন, আগামী নির্বাচনে যদি দেশের মানুষ ভোটাধিকার প্রয়োগ করতে না পারে, তাহলে বাংলাদেশ যে সংকটের দিকে যাবে&amp;mdash;এই শঙ্কা তো দেশের ভেতরে যেভাবে কাজ করছে, দেশের বাইরেও কাজ করছে। এই শঙ্কা থেকে তারা (ইউরোপীয় ইউনিয়ন) জানতে চাচ্ছে যে কীভাবে আগামী নির্বাচনটা হতে যাচ্ছে, কীভাবে এটাকে নিরপেক্ষ অংশগ্রহণমূলক করা যায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/120323e9caa3e48587a79.webp', 'আজ বিএনপির একটি প্রতিনিধিদল ইউরোপীয় ইউনিয়নভুক্ত দেশগুলোর রাষ্ট্রদূতদের সঙ্গে বৈঠক করে।', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-12 07:22:15', 1, 1);
INSERT INTO `samojugc_news_datatable` (`id`, `datatable`, `admin_id`, `category_id`, `title`, `keywords`, `description`, `thumbnail`, `teaser`, `link`, `liked`, `unliked`, `watched`, `date`, `topnews`, `status`) VALUES
(267, 'samojugc_datatable', 5, 58, 'তিন মন্ত্রীও পারলেন না', 'তিন মন্ত্রীও পারলেন না', '&lt;p&gt;পুরান ঢাকা থেকে রাসায়নিকের গুদাম সরিয়ে নিতে উদ্যোগ নেওয়া হয়েছিল ২০১০ সালে। তা-ও ভয়াবহ একটি অগ্নিকাণ্ডের পর। নিমতলীর সেই আগুনে মারা যান অন্তত ১২৪ জন। কথা ছিল, একটি রাসায়নিক শিল্পপার্ক হবে, সেখানে রাসায়নিক ব্যবসায়ীরা তাঁদের গুদাম সরিয়ে নেবেন। &amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;সেই উদ্যোগের পর ১৩টি বছর পেরিয়ে গেছে। শিল্প মন্ত্রণালয়ের দুজন মন্ত্রীর মেয়াদ শেষ হয়েছে&amp;mdash;দিলীপ বড়ুয়া ও আমির হোসেন আমু। শিল্পমন্ত্রী নূরুল মজিদ মাহমুদ হুমায়ূন ও শিল্প প্রতিমন্ত্রী কামাল আহমেদ মজুমদারের মেয়াদও শেষের পথে। মন্ত্রণালয়টিতে আটজন সচিব বদলেছেন। কিন্তু রাসায়নিক শিল্পপার্ক এখনো তৈরি হয়নি। শিল্পপার্ক করার আগে রাসায়নিকের গুদাম সরিয়ে নিতে ২০১৯ সালে অস্থায়ী গুদাম তৈরির সিদ্ধান্ত হয়। সেই গুদামও এখনো পুরো তৈরি হয়নি।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug72.webp&quot; style=&quot;height:380px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;২০১০ সালে পুরান ঢাকার নিমতলীর আগুনে মারা মৃত্যু ১২৪&lt;/p&gt;\r\n\r\n&lt;p&gt;এর আগে ২০০৬ সালে পুরান ঢাকা থেকে প্লাস্টিকের কারখানা সরিয়ে নিতে উদ্যোগ নেওয়া হয়, ব্যবসায়ীদের সঙ্গে শিল্প মন্ত্রণালয়ের সমঝোতা স্মারক সই হয়। সেই প্লাস্টিক শিল্পনগরের জমি অধিগ্রহণই এখনো হয়নি।&lt;/p&gt;\r\n\r\n&lt;blockquote&gt;রাসায়নিক শিল্পপার্ক করার যে উদ্যোগ আমি নিয়েছিলাম, তা পরে ফলোআপ করা হয়নি। কায়েমি স্বার্থবাদীরা পুরান ঢাকা ছেড়ে যেতে চায় না&lt;/blockquote&gt;\r\n\r\n&lt;p&gt;দিলীপ বড়ুয়া, সাবেক শিল্পমন্ত্রী&lt;/p&gt;\r\n\r\n&lt;p&gt;রাসায়নিক শিল্পপার্ক ও প্লাস্টিক শিল্পনগর প্রকল্প নিয়ে আলোচনার মধ্যেই ২০১৯ সালে চকবাজারের চুড়িহাট্টায় আগুনে ৭১ জনের মৃত্যু হয়। এরপর আরও কয়েকটি দুর্ঘটনা ঘটেছে, মানুষের মৃত্যু হয়েছে। মানুষের এই মৃত্যু ও দুর্ভোগের কারণ পুরান ঢাকা থেকে রাসায়নিকের গুদাম সরাতে না পারা। বিষয়টি আবার আলোচনায় এসেছে পুরান ঢাকার সিদ্দিকবাজারে বিস্ফোরণে ২৪ জনের মৃত্যুর পর। সংশ্লিষ্ট ব্যক্তিদের আশঙ্কা, সিদ্দিকবাজারের ঘটনা রাসায়নিক থেকে না হলেও পুরান ঢাকায় রাসায়নিকের ঝুঁকি রয়েছে। ঝুঁকি থেকে যাওয়ার জন্য দায়ী সুশাসনের ঘাটতি, জবাবদিহির অভাব ও জীবনরক্ষার প্রকল্পে অগ্রাধিকার না দেওয়া।&lt;/p&gt;\r\n\r\n&lt;blockquote&gt;জায়গা নির্ধারণের পর সেটি নিয়ে আপত্তি, নতুন জায়গা খোঁজা, জমি অধিগ্রহণজনিত সমস্যা, করোনা ও নির্মাণ উপকরণের দাম বেড়ে যাওয়ার কারণে প্রকল্পটিতে দেরি হয়েছে&lt;/blockquote&gt;\r\n\r\n&lt;p&gt;শিল্পমন্ত্রী নূরুল মজিদ মাহমুদ হুমায়ূন&lt;/p&gt;\r\n\r\n&lt;p&gt;২০০৯ থেকে ২০১৩ সালের শেষ পর্যন্ত শিল্পমন্ত্রী ছিলেন দিলীপ বড়ুয়া। তিনি প্রথম আলোকে বলেন, &amp;lsquo;রাসায়নিক শিল্পপার্ক করার যে উদ্যোগ আমি নিয়েছিলাম, তা পরে ফলোআপ করা হয়নি।&amp;rsquo; তিনি আরও বলেন, কায়েমি স্বার্থবাদীরা পুরান ঢাকা ছেড়ে যেতে চায় না।&lt;/p&gt;\r\n\r\n&lt;p&gt;দিলীপ বড়ুয়ার সময়ে রাসায়নিক শিল্পপার্কের উদ্যোগ নেওয়া হলেও তিনি প্রকল্পটির প্রস্তাবই (ডেভেলপমেন্ট প্রজেক্ট প্রপোজাল বা ডিপিপি) তৈরি করে যেতে পারেননি।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug73.webp&quot; style=&quot;height:288px; width:408px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;২০১৯ সালে পুরান ঢাকার চুড়িহাট্টার আগুনে মৃত্যু হয় ৭১ জনের&lt;/p&gt;\r\n\r\n&lt;p&gt;শিল্প মন্ত্রণালয় এবং মন্ত্রণালয়ের অধীন সংস্থা বাংলাদেশ ক্ষুদ্র ও কুটির শিল্প করপোরেশনের (বিসিক) পুরোনো কর্মকর্তারা জানান, তখন মন্ত্রণালয় সিদ্ধান্ত নিয়েছিল কেরানীগঞ্জে ৫০ একর জমিতে ১৯টি বহুতল ভবন হবে। সেসব ভবনে রাসায়নিক ব্যবসায়ীদের জায়গা দেওয়া হবে। অবশ্য এ প্রস্তাবে বেঁকে বসেন ব্যবসায়ীরা। তাঁদের যুক্তি ছিল, বহুতল ভবন ঝুঁকি আরও বাড়াবে। তাঁরা ভবনের বদলে জমি দেওয়ার দাবি করেছিলেন। শিল্প মন্ত্রণালয় পরে ৫০ একর জমিতে ব্যবসায়ীদের ছোট ছোট প্লট দেওয়ার সিদ্ধান্ত নেয়। এরই মধ্যে ২০১৩ সালের ২১ নভেম্বর শিল্পমন্ত্রী হিসেবে দিলীপ বড়ুয়ার মেয়াদ শেষ হয়ে যায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;জানতে চাইলে বাংলাদেশ পরিবেশ আন্দোলনের (বাপা) যুগ্ম সম্পাদক ও স্থপতি ইকবাল হাবিব প্রথম আলোকে বলেন, তিন বছরেও জরুরি একটি প্রকল্পের ডিপিপি তৈরি করতে না পারা খুবই অযৌক্তিক। এটা তিন থেকে পাঁচ মাসের মধ্যে হওয়া উচিত ছিল। হয়নি, কারণ সংশ্লিষ্ট ব্যক্তিদের কারও জবাবদিহি ছিল না।&lt;/p&gt;\r\n\r\n&lt;h2&gt;আমির হোসেন আমুর পাঁচ বছর&lt;/h2&gt;\r\n\r\n&lt;p&gt;২০১৪ সালের ৫ জানুয়ারির নির্বাচনের পর আওয়ামী লীগ আবার সরকার গঠন করে। শিল্প মন্ত্রণালয়ের মন্ত্রী হন আমির হোসেন আমু। তিনি দায়িত্বে ছিলেন ২০১৯ সালের শুরু পর্যন্ত। তাঁর মেয়াদের প্রায় পুরোটা লেগে যায় রাসায়নিক শিল্পপার্কের ডিপিপি তৈরি ও প্রকল্প অনুমোদন করাতে। ২০১৮ সালের ৩০ অক্টোবর রাসায়নিক শিল্পপার্ক প্রকল্প সরকারের অনুমোদন পায়। ব্যয় ধরা হয় ২০২ কোটি টাকা।&lt;/p&gt;\r\n\r\n&lt;p&gt;আমির হোসেন আমু গত শুক্রবার প্রথম আলোকে বলেন, তাঁর মেয়াদে রাসায়নিক শিল্পপার্ক প্রকল্পে জমি অধিগ্রহণের কাজ শুরু হয়। এর জন্য টাকাও বরাদ্দ রাখা হয়। একটি শিল্পপার্ক প্রতিষ্ঠার জন্য ১৩ বছর সময়কে অনেক বেশি মনে হয় কি না, জানতে চাইলে তিনি বলেন, &amp;lsquo;তা তো হয়।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;আমির হোসেন আমু আরও বলেন, রাসায়নিক ব্যবসায়ীদের শিল্পপার্কে নিতে হবে জোর করে। যেমনটা নেওয়া হয়েছে ট্যানারির মালিকদের।&lt;/p&gt;\r\n\r\n&lt;p&gt;অবশ্য সংশ্লিষ্ট ব্যক্তিরা বলছেন, ২০১৮ সাল পর্যন্ত ব্যবসায়ীরা যে &amp;lsquo;গো ধরে&amp;rsquo; বসেছিলেন, সে সময় তাঁদের বাধ্য করার দরকার ছিল, সেটা করা হয়নি।&lt;/p&gt;\r\n\r\n&lt;p&gt;ব্যবসায়ীদের সঙ্গে মতদ্বৈততা নিরসন করে একটি প্রকল্প চূড়ান্ত করতে সাড়ে চার বছরের মতো লেগে যাওয়ার বিষয়ে মতামত জানতে চাইলে বাংলাদেশ প্রকৌশল বিশ্ববিদ্যালয়ের (বুয়েট) কেমিকৌশল বিভাগের অধ্যাপক সৈয়দা সুলতানা রাজিয়া প্রথম আলোকে বলেন, প্রকল্পটি হয়তো অগ্রাধিকার তালিকায় ছিল না। সরকারের নানা কাজ থাকে। পুরান ঢাকার মানুষের জীবনরক্ষার প্রকল্প অগ্রাধিকার তালিকায় থাকা উচিত কি না জানতে চাইলে তিনি বলেন, সড়ক নিরাপদ করা, নৌদুর্ঘটনা রোধ, খাদ্য নিরাপদ করা&amp;mdash;এগুলোও জীবনরক্ষার প্রকল্প। এ ধরনের প্রকল্প অগ্রাধিকার তালিকায় ১ নম্বরে থাকা উচিত। &amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;h2&gt;নূরুল মজিদ মাহমুদ হুমায়ূনের চার বছর&lt;/h2&gt;\r\n\r\n&lt;p&gt;বর্তমান শিল্পমন্ত্রী নূরুল মজিদ মাহমুদ হুমায়ূন দায়িত্ব নেন ২০১৯ সালের শুরুতে। ওই বছর ২০ ফেব্রুয়ারি পুরান ঢাকার চকবাজারের চুড়িহাট্টায় আগুনের ঘটনা ঘটে। এরপর শিল্প মন্ত্রণালয় রাসায়নিক শিল্পপার্ক নিয়ে তোড়জোড় শুরু করে।&lt;/p&gt;\r\n\r\n&lt;p&gt;সংশ্লিষ্ট কর্মকর্তারা জানিয়েছেন, প্রধানমন্ত্রীর কার্যালয়ের নির্দেশে তখন শিল্পপার্ক করার জায়গা কেরানীগঞ্জ থেকে সরিয়ে মুন্সিগঞ্জের সিরাজদিখানে নেওয়া হয়। জমি ৫০ একর থেকে বাড়িয়ে ৩১০ একর করা হয়। সঙ্গে বাড়ে প্রকল্প ব্যয়, ২০২ কোটি টাকা থেকে হয় ১ হাজার ৬১৬ কোটি টাকা। এ প্রকল্প অনুমোদন পেতে আর সময় লাগেনি।&lt;/p&gt;\r\n\r\n&lt;p&gt;২০১৯ সালের ৩০ এপ্রিল জাতীয় অর্থনৈতিক পরিষদের নির্বাহী কমিটি (একনেক) এটি অনুমোদন দেয়। এরপর চার বছরের বেশি সময় পেরিয়েছে। রাসায়নিক শিল্পপার্ক প্রকল্পের অগ্রগতি হলো শুধু প্রথম পর্যায়ের মাটি ভরাটের কাজ। সেটাও হয়েছে মাত্র ৪৪ শতাংশ। এদিকে প্রকল্পের মেয়াদ দুই বছর বাড়িয়ে ২০২৪ সালের জুন পর্যন্ত নির্ধারণ করা হয়েছে। ফলে দেখা যাচ্ছে, নূরুল মজিদ মাহমুদ হুমায়ূনও প্রকল্পটি শেষ করে যেতে পারছেন না। এটি বাস্তবায়িত হলে সেখানে ১ হাজার ৮৪৩টি শিল্প প্লট করা হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;শিল্পমন্ত্রী নূরুল মজিদ মাহমুদ হুমায়ূন প্রথম আলোকে বলেন, &amp;lsquo;রাসায়নিক শিল্পপার্ক করার প্রকল্পটিকে আমি অত্যন্ত গুরুত্বের সঙ্গে নিয়েছি। আমি পুরান ঢাকার ছেলে, নারিন্দার ছেলে।&amp;rsquo; শিল্পমন্ত্রী এ প্রকল্প বাস্তবায়নের ক্ষেত্রে কিছু সমস্যার কথাও বলেন। তাঁর দাবি, জায়গা নির্ধারণের পর সেটি নিয়ে আপত্তি, নতুন জায়গা খোঁজা, জমি অধিগ্রহণজনিত সমস্যা, করোনা ও নির্মাণ উপকরণের দাম বেড়ে যাওয়ার কারণে প্রকল্পটিতে দেরি হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;শিল্প মন্ত্রণালয়ের অধীন সংস্থা বিসিক না পারলেও বাংলাদেশ অর্থনৈতিক অঞ্চল কর্তৃপক্ষ (বেজা) ঠিকই পেরেছে। তারা ২০১৩ সালে কাজ শুরু করে ইতিমধ্যে ছয়টি অর্থনৈতিক অঞ্চলে জমি বরাদ্দ শুরু করেছে। পাঁচটিতে শিল্পকারখানা করা হচ্ছে। তিনটিতে কিছু কারখানা উৎপাদনও শুরু করেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;জানতে চাইলে বাংলাদেশ পরিবেশ আইনবিদ সমিতির (বেলা) প্রধান নির্বাহী সৈয়দা রিজওয়ানা হাসান প্রথম আলোকে বলেন, &amp;lsquo;আমাদের দেশে মানুষের জীবন যে মূল্যহীন, সেটা শুধু অগ্নিকাণ্ডের ঘটনায় প্রমাণিত হয় না, এত বছর পরে সমস্যা সমাধানে কার্যকর পদক্ষেপ গ্রহণে ব্যর্থতার মাধ্যমেও প্রমাণিত হলো। এটা সদিচ্ছা ও প্রত্যয়হীনতা এবং মানুষকে নিরাপত্তা দিতে চরম ব্যর্থতার প্রমাণ।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug74.webp&quot; style=&quot;height:389px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;মুন্সিগঞ্জের সিরাজদিখানে রাসায়নিক শিল্পপার্ক স্থাপনের কাজ তেমন এগোয়নি। এখনো মাটি ভরাটের কাজ চলছে&lt;/p&gt;\r\n\r\n&lt;p&gt;রাসায়নিক শিল্পপার্ক প্রকল্পে অনিয়মের অভিযোগও রয়েছে। এই শিল্পপার্কের ৩১০ একর জমিতে ৬ দশমিক ২ মিটার (১৮ দশমিক ৬ ফুট) উচ্চতা পর্যন্ত মাটি ভরাট করা হয়েছিল। ২০২২ সালের মার্চে ধরা পড়ে যে সেখানে ১ মিটার (৩ ফুট) মাটির কোনো হদিস নেই। পরে এ নিয়ে একটি তদন্ত কমিটি গঠন করা হয়। কমিটির প্রতিবেদনে কী এসেছিল, তা জানতে গত বৃহস্পতিবার বিসিকের চেয়ারম্যান মুহ. মাহবুবর রহমানের দপ্তরে গেলে তিনি সংশ্লিষ্ট শাখায় কথা বলতে বলেন। অবশ্য অন্য কোনো কর্মকর্তার বক্তব্য পাওয়া যায়নি।&lt;/p&gt;\r\n\r\n&lt;p&gt;রাসায়নিক শিল্প পার্ক প্রকল্পের সময় যে আটজন সচিব দায়িত্ব পালন করেছেন তাঁদের দুজন এবং প্রকল্পের সাবেক একজন পরিচালকের সঙ্গে যোগাযোগ করা হয়েছিল। তাঁরা কোনো মন্তব্য করতে রাজি হননি।&lt;/p&gt;\r\n\r\n&lt;h2&gt;অস্থায়ী গুদামও শেষ হয়নি&lt;/h2&gt;\r\n\r\n&lt;p&gt;২০১৯ সালে চুড়িহাট্টার আগুনের পর রাসায়নিক শিল্পপার্ক করার তোড়জোড় যেমন শুরু হয়, তেমনি দুটি অস্থায়ী গুদাম নির্মাণের উদ্যোগ নেওয়া হয়। একটি টঙ্গীতে বাংলাদেশ ইস্পাত ও প্রকৌশল করপোরেশনের (বিএসইসি) ৬ একর জমিতে। অন্যটি ঢাকার শ্যামপুরে বাংলাদেশ রাসায়নিক শিল্প সংস্থার (বিসিআইসি) উজালা ম্যাচ ফ্যাক্টরির জমিতে। দুটি অস্থায়ী গুদাম তৈরির জন্য ব্যয় ধরা হয় ১৬৮ কোটি টাকা।&lt;/p&gt;\r\n\r\n&lt;p&gt;তখনকার শিল্পসচিব মো. আবদুল হালিম প্রথম আলোকে বলেছিলেন, শিল্পপার্ক তৈরি করতে ২০২২ সাল পর্যন্ত লাগবে। এ কারণেই অস্থায়ী গুদাম।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug75.webp&quot; style=&quot;height:437px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;গাজীপুরের টঙ্গীতে ৫৩টি গুদামঘরের মধ্যে ৩১টির অবকাঠামোগত কাজ শেষ হয়েছে। তবে ব্যবহারের উপযোগী হয়নি&lt;/p&gt;\r\n\r\n&lt;p&gt;সরেজমিনে গত শুক্রবার দেখা যায়, উজালা ম্যাচ ফ্যাক্টরিতে গুদামের কাজ শেষ। তবে সেটি উদ্বোধন হয়নি। আর টঙ্গীর কাজ ৪০ শতাংশ বাকি। টঙ্গীর প্রকল্পের বর্তমান পরিচালক খন্দকার জহিরুল ইসলাম প্রথম আলোকে বলেন, বাকি কাজ শেষ হতে সময় লাগবে আরও প্রায় এক বছর।&lt;/p&gt;\r\n\r\n&lt;p&gt;দুটি অস্থায়ী গুদামে ১০৭টি রাসায়নিকের গুদামের স্থান হবে। তবে ব্যবসায়ীরা বলছেন, এটুকু জায়গায় কিছুই হবে না। কারণ, পুরান ঢাকায় ২০ হাজারের মতো রাসায়নিকের দোকান আছে। রাসায়নিক ব্যবসায়ীদের সংগঠন বাংলাদেশ কেমিক্যাল মার্চেন্টস অ্যাসোসিয়েশনের সদস্য আছেন ১ হাজার ৬০০ জন। সংগঠনটির উপদেষ্টা এনায়েত হোসেন প্রথম আলোকে বলেন, আসলে দরকার রাসায়নিক শিল্পপার্ক। সেই প্রকল্পের খুব মন্থরগতি। আবার একটি বড় দুর্ঘটনা ঘটলে তোড়জোড় শুরু হবে।&lt;/p&gt;\r\n\r\n&lt;h2&gt;প্লাস্টিকশিল্প নগর বহুদূর&lt;/h2&gt;\r\n\r\n&lt;p&gt;প্লাস্টিকশিল্প নগর প্রকল্প নেওয়া হয় ২০১৫ সালের জুলাইয়ে। এ জন্য মুন্সিগঞ্জ জেলার সিরাজদিখানে ৫০ একর জায়গা নির্বাচন করা হয়। প্রকল্পটি ২০১৮ সালের জুনে শেষ হওয়ার কথা ছিল। কিন্তু প্রকল্প অনুমোদনের প্রায় আট বছর পার হলেও জমি অধিগ্রহণই করতে পারেনি বিসিক।&lt;/p&gt;\r\n\r\n&lt;p&gt;সংস্থাটির কর্মকর্তারা জানান, জমি অধিগ্রহণের জন্য জেলা প্রশাসনের কাছে ২১৮ কোটি টাকা জমা দিয়ে রাখা হয়েছে। কিন্তু স্থানীয়দের বিরোধিতার কারণে জেলা প্রশাসন জমি অধিগ্রহণ করতে পারেনি। এ অবস্থায় মৌজা পরিবর্তনের প্রস্তাব দিয়ে শিল্প মন্ত্রণালয়ে আবার সংশোধিত প্রকল্প প্রস্তাব পাঠিয়েছে বিসিক।&lt;/p&gt;\r\n\r\n&lt;h2&gt;পুরান ঢাকায় ঝুঁকি&lt;/h2&gt;\r\n\r\n&lt;p&gt;পুরান ঢাকা বিভিন্ন পণ্যের পাইকারি ব্যবসাকেন্দ্র। ঢাকা চেম্বার অব কমার্স অ্যান্ড ইন্ডাস্ট্রি (ডিসিসিআই) প্রকাশিত ঢাকার বাণিজ্যিক ইতিহাস বইয়ে বলা হয়েছে, ১৯৬০-এর দশকে পুরান ঢাকার বিভিন্ন এলাকায় বিভিন্ন পণ্যের ব্যবসা হতো। এর মধ্যে রাসায়নিকের ব্যবসা হতো সদরঘাট, ওয়াইজঘাট, মিটফোর্ড রোড, বাংলাবাজার, নবাবপুর, সোয়ারীঘাট ও মতিঝিলে। রাসায়নিক ব্যবসায়ীরা জানান, এখন মিটফোর্ড, ইমামগঞ্জ, চকবাজার, তাঁতীবাজার, গেন্ডারিয়া, সিদ্দিকবাজার, আলুবাজারসহ বিভিন্ন এলাকায় রাসায়নিক ব্যবসা হয়। আর প্লাস্টিকসামগ্রীর ব্যবসা হয় চকবাজার, কামালবাগ, লালবাগ, পোস্তা, উর্দু রোড প্রভৃতি এলাকায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;সংশ্লিষ্ট ব্যক্তিরা জানিয়েছেন, ২০১০ সালে নিমতলীতে ভয়াবহ আগুনের পর সরকারের সংশ্লিষ্ট মন্ত্রণালয় ও দপ্তর একমত হয় যে পুরান ঢাকা থেকে রাসায়নিক ব্যবসা সরিয়ে নিতে না পারলে নিরাপত্তা নিশ্চিত করা সম্ভব নয়। কিন্তু পুরান ঢাকায় এখনো রাসায়নিকের ব্যবসা চলছে কোনো বাধা ছাড়া। গতকাল শনিবার গিয়ে দেখা যায়, পুরান ঢাকার ওয়ারীর হাটখোলা এলাকার নজরুল ইসলাম সড়কে রাসেল সেন্টার নামের একটি ১০ তলা আবাসিক ভবনের চতুর্থ তলা পর্যন্ত রাসায়নিকের দোকান ও গুদাম রয়েছে। বাকি ছয়তলায় মানুষের বাস। ভ্রাম্যমাণ আদালত গত আগস্টে অভিযান চালিয়ে ঝুঁকিপূর্ণ রাসায়নিক পাওয়ায় ভবনটির কয়েকটি গুদাম সিলগালা করে। এখন সেখানে গুদাম খুলে আবার ব্যবসা চলছে। ব্যবসায়ীরা ঝুঁকির বিষয়ে কথা বলতে রাজি হননি।&lt;/p&gt;\r\n\r\n&lt;h2&gt;&amp;lsquo;এটা ব্যর্থতার নজির&amp;rsquo;&lt;/h2&gt;\r\n\r\n&lt;p&gt;১৯১১ সালে যুক্তরাষ্ট্রের ম্যানহাটানে ট্রায়াঙ্গল শার্টওয়েস্ট নামের একটি পোশাক কারখানায় আগুন লেগে ১৪৬ জন শ্রমিকের মৃত্যু হয়। এরপর যুক্তরাষ্ট্র অগ্নিনিরাপত্তা-সংক্রান্ত আইনকানুনে আমূল পরিবর্তন আনে এবং কারখানা নিরাপদ করার সর্বাত্মক উদ্যোগ নেয়। বাংলাদেশে ২০১৩ সালে রানা প্লাজা দুর্ঘটনার পর বিদেশি ক্রেতাদের উদ্যোগ ও চাপে রপ্তানিমুখী পোশাক কারখানার নিরাপত্তাব্যবস্থায় আমূল পরিবর্তন এসেছে। কিন্তু পুরান ঢাকার নিমতলীতে ভয়াবহ আগুনের ১৩ বছর পরও রাসায়নিকের ব্যবসা সরানো যায়নি।&lt;/p&gt;\r\n\r\n&lt;p&gt;সংশ্লিষ্ট ব্যক্তিরা বলছেন, রানা প্লাজা ধসের পর পোশাক খাতে নিরাপত্তা বাড়ানোর উদ্যোগ না নিলে রপ্তানি ক্ষতিগ্রস্ত হওয়ার আশঙ্কা ছিল। এ কারণে সেখানে দ্রুত কাজ হয়েছে। কিন্তু পুরান ঢাকায় মানুষের জীবন সংকটের প্রশ্নে কাজ হচ্ছে ধীরগতিতে।&lt;/p&gt;\r\n\r\n&lt;p&gt;জানতে চাইলে ইনস্টিটিউট ফর প্ল্যানিং অ্যান্ড ডেভেলপমেন্টের (আইপিডি) নির্বাহী পরিচালক আদিল মুহাম্মদ খান প্রথম আলোকে বলেন, সুশাসন থাকা দেশগুলোতে দুর্ঘটনা রোধে পর্যাপ্ত ব্যবস্থা থাকে। এরপরও কোনো দুর্ঘটনা ঘটলে সেটা থেকে তারা শিক্ষা নেয়। তিনি বলেন, ২০১০ সালে যখন জানা গেল পুরান ঢাকায় ব্যাপক দাহ্য রাসায়নিকের ব্যবসা হয়, তখন তিন মাসের মধ্যে সেগুলো সরিয়ে নেওয়ার দরকার ছিল। ১৩ বছরেও সেটা করতে না পারা ব্যর্থতার নজির।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/1203231f858327523ae0b.webp', 'প্রতীকী ছবি', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-12 07:32:07', 1, 1),
(268, 'samojugc_datatable', 5, 58, 'নওগাঁয় স্ত্রীকে হত্যায় স্বামীর মৃত্যুদণ্ড', 'নওগাঁয় স্ত্রীকে হত্যায় স্বামীর মৃত্যুদণ্ড', '&lt;p&gt;নওগাঁ সদর উপজেলার আতিথা সাকিন এলাকায় স্ত্রীকে হত্যার দায়ে এক ব্যক্তিকে মৃত্যুদণ্ড দিয়েছেন আদালত। আজ রোববার দুপুরে নওগাঁর অতিরিক্ত জেলা ও দায়রা জজ আদালত-২-এর বিচারক মো. ফেরদৌস ওয়াহিদ এ রায় দেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;মৃত্যুদণ্ডপ্রাপ্ত ব্যক্তি হলেন ফরিদুল রেজা (৫২)। তিনি সদর উপজেলার আতিথা সাকিন গ্রামের বাসিন্দা। রায় ঘোষণার সময় তিনি আদালতে উপস্থিত ছিলেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;আদালত সূত্রে জানা গেছে, ২০১১ সালের ৫ এপ্রিল দিবাগত রাত তিনটার দিকে ফরিদুল তাঁর স্ত্রী শামীমা আক্তারকে মেয়ে দীপার সামনে গলা কেটে হত্যা করেন। এ ঘটনায় শামীমার ভাই কাঞ্চন হাওলাদার বাদী হয়ে নওগাঁ সদর থানায় ফরিদুলকে আসামি করে হত্যা মামলা করেন। আজ রায় ঘোষণা করা হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;রাষ্ট্রপক্ষে মামলাটি পরিচালনা করেন আইনজীবী আবদুল্লাহেল বাকী। আসামিপক্ষে মামলাটি পরিচালনা করেন রাষ্ট্রনিযুক্ত আইনজীবী সিরাজুল ইসলাম ও অমরেন্দ্রনাথ ঘোষ।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/120323245f2f0bf644c32.webp', 'আদালত', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-12 07:35:01', 1, 1),
(269, 'samojugc_datatable', 5, 58, 'নির্যাতনের এক মাসের মাথায় নতুন হলে উঠলেন ফুলপরী', 'নির্যাতনের এক মাসের মাথায় নতুন হলে উঠলেন ফুলপরী', '&lt;p&gt;কুষ্টিয়ার ইসলামী বিশ্ববিদ্যালয়ের দেশরত্ন শেখ হাসিনা হলে এক মাস আগে ছাত্রলীগের নির্যাতনের শিকার ফুলপরী খাতুন হল পরিবর্তন করে নতুন হলে উঠেছেন। আজ রোববার দুপুর সোয়া ১২টার দিকে প্রয়োজনীয় জিনিসপত্র নিয়ে বাবার সঙ্গে বঙ্গমাতা শেখ ফজিলাতুন্নেছা মুজিব হলে যান তিনি। এখানে আজ থেকে তাঁর নামে বরাদ্দ হওয়া আসনে থাকবেন তিনি।&lt;/p&gt;\r\n\r\n&lt;p&gt;ফুলপরী খাতুন প্রথম আলোকে বলেন, &amp;lsquo;গত ৭ ফেব্রুয়ারি আমি এই ক্যাম্পাসে এসেছিলাম। সে সময় যে ভালো লাগা কাজ করেছিল, এখনো তেমন ভালো লাগছে। হলের থাকার জন্য প্রয়োজনীয় জিনিসপত্র সঙ্গে করে নিয়ে এসেছি।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;৫ মার্চ ফিন্যান্স বিভাগের প্রথম বর্ষের ছাত্রী ফুলপরীকে হাইকোর্টের নির্দেশে তাঁর পছন্দমতো বঙ্গমাতা শেখ ফজিলাতুন্নেছা মুজিব হলে আসন বরাদ্দ দেয় প্রশাসন। তিনি দেশরত্ন শেখ হাসিনা হলে সংযুক্ত ছিলেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;এর আগে ১২ ফেব্রুয়ারি রাতে দেশরত্ন শেখ হাসিনা হলের গণরুমে সাড়ে চার ঘণ্টা আটকে রেখে নির্যাতন করার অভিযোগ করেন ফিন্যান্স বিভাগের প্রথম বর্ষের ছাত্রী ফুলপরী খাতুন। নির্যাতনের সময় তাঁকে বিবস্ত্র করে ভিডিও ধারণ, গালিগালাজ ও ঘটনা কাউকে জানালে মেরে ফেলার হুমকিও দেওয়া হয়। পরে এ বিষয়ে ফুলপরী বিশ্ববিদ্যালয়ের প্রক্টর, হলের প্রাধ্যক্ষ ও ছাত্র উপদেষ্টার কাছে লিখিত অভিযোগ দেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;ফুলপরীকে নির্যাতনের ঘটনায় কয়েক দফা তদন্তের পর ৪ মার্চ ছাত্রলীগের অভিযুক্ত পাঁচ নেতা-কর্মীকে বিশ্ববিদ্যালয় থেকে সাময়িক বহিষ্কার করা হয়। তাঁরা হলেন পরিসংখ্যান বিভাগের শিক্ষার্থী সানজিদা চৌধুরী ওরফে অন্তরা (সেশন: ২০১৭-১৮), চারুকলা বিভাগের হালিমা আক্তার ঊর্মি (সেশন ২০২০-২১), আইন বিভাগের ইসরাত জাহান মিম (সেশন: ২০২০-২১), ফিন্যান্স অ্যান্ড ব্যাংকিং বিভাগের তাবাসসুম ইসলাম (সেশন: ২০২০-২১) ও একই বিভাগের একই সেশনের মুয়াবিয়া জাহান। এর মধ্যে সানজিদা চৌধুরী বিশ্ববিদ্যালয় শাখা ছাত্রলীগের সহসভাপতি ছিলেন। অন্যরা ছাত্রলীগের কর্মী। নির্যাতনের ঘটনায় এই পাঁচজনকে ১ মার্চ সংগঠন থেকে বহিষ্কার করে কেন্দ্রীয় ছাত্রলীগ।&lt;/p&gt;\r\n\r\n&lt;p&gt;নির্যাতনের ঘটনায় দেশরত্ন শেখ হাসিনা হলের প্রাধ্যক্ষ, হাউস টিউটরসহ কয়েকজনের বিরুদ্ধে দায়িত্বে অবহেলার প্রমাণ খুঁজে পায় হাইকোর্টের নির্দেশে গঠিত তদন্ত কমিটি। হাইকোর্টের নির্দেশে ১ মার্চ হলটির প্রাধ্যক্ষ শামসুল আলমকে প্রত্যাহার করা হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;ফুলপরী খাতুনের নতুন হল বঙ্গমাতা শেখ ফজিলাতুন্নেছা মুজিব হলের হাউস টিউটর নুসরাত সুলতানা প্রথম আলোকে বলেন, ফুলপরীকে নতুন হলে স্বাগত জানানো হয়েছে। আজ থেকে তিনি হলে থাকবেন। অন্য ছাত্রীদের মতো তাঁকেও সব বিষয়ে সহযোগিতা করা হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/120323dce6bcafb58336c.webp', 'বাবার সঙ্গে নতুন হলে এসেছেন কুষ্টিয়া ইসলামী বিশ্ববিদ্যালয়ের ফিন্যান্স বিভাগের প্রথম বর্ষের ছাত্রী ফুলপরী খাতুন। এক মাস আগেই তিনি অন্য একটি হলে নির্যাতনের শিকার হয়েছিলেন', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-12 07:40:05', 0, 1),
(270, 'samojugc_datatable', 5, 59, 'ভারী তুষারে গাড়িতে আটকা ছয় দিন, যা খেয়ে বেঁচে ছিলেন বৃদ্ধ', 'ভারী তুষারে গাড়িতে আটকা ছয় দিন, যা খেয়ে বেঁচে ছিলেন বৃদ্ধ', '&lt;p&gt;ভারী তুষারের (স্নোব্যাংক) মাঝে গাড়ি নিয়ে আটকা পড়েন ৮১ বছর বয়সী এক বৃদ্ধ। চারপাশে হিমশীতল তুষার, কোনো জনমানবের দেখা নেই। এমন পরিস্থিতিতে প্রায় এক সপ্তাহ আটকে ছিলেন তিনি। আর এই সময় সঙ্গে থাকা চকলেট, স্ন্যাকস ও বিস্কুট খেয়ে বেঁচে ছিলেন এই বৃদ্ধ।&lt;/p&gt;\r\n\r\n&lt;p&gt;ঘটনাটি ঘটেছে যুক্তরাষ্ট্রের ক্যালিফোর্নিয়া অঙ্গরাজ্যে। ওই বৃদ্ধের নাম জেরি জুরেট। তিনি গণিতবিদ ও নাসার সাবেক কর্মকর্তা।&lt;/p&gt;\r\n\r\n&lt;p&gt;সিএনএন&amp;ndash;এর এক প্রতিবেদনে বলা হয়েছে, জেরি ক্যালিফোর্নিয়ার বিগ পাইনে একটি পাহাড়ি বাড়িতে থাকেন। গত ২৪ ফেব্রুয়ারি তিনি পরিবারের সঙ্গে দেখা করতে নেভাদার গার্ডনারভিলের উদ্দেশ্যে রওনা করেন। আবহাওয়া ভালো থাকলে গাড়ি চালিয়ে মাত্র তিন ঘণ্টায় এখানে পৌছাঁনো যায়। কিন্তু রওনা দেওয়ার ৩০ মিনিটের মধ্যে তুষার ঝড়ের কারণে জেরি গাড়ির নিয়ন্ত্রণ হারিয়ে ফেলেন। তিনি গাড়ি নিয়ে একটি সরু পথের ধারে স্নোব্যাংকে আটকা পড়েন। &amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;সারা রাত তুষার ঝড়ের কারণে জেরিতে গাড়িতেই রাত কাটাতে হয়েছিল। তাপমাত্রাও দ্রুত নেমে যেতে থাকে। এই হিমশীতল রাতে উষ্ণতার জন্য তাঁর কাছে উইন্ডব্রেকার ও একটি তোয়ালে ছাড়া আর কিছুই ছিল না। তাই ন্যূনতম গ্যাস ও ব্যাটারি ব্যবহার করে তিনি গাড়ির ভেতরেই ছিলেন। নিজের সঙ্গে থাকা চকলেট, স্ন্যাকস ও বিস্কুট খেয়ে বেঁচে ছিলেন। পানির তৃষ্ণা পেলে গাড়ির জানালা দিয়ে মাথা বের করে তুষার খেয়ে নিতেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;জেরি জুরেটের নাতি ক্রিশ্চিয়ান বলেন, তৃতীয় দিনে বৈদ্যুতিক জানালায় ঢোকার সময় গাড়ির ব্যাটারি ফুরিয়ে যায়। এ কারণে গাড়ির জানালা কয়েক ইঞ্চি খোলা ছিল। হিম তুষারের মাঝে তা আর বন্ধ করা যাচ্ছিল না।&lt;/p&gt;\r\n\r\n&lt;p&gt;চতুর্থ দিন ইনয়ো কাউন্টি শেরিফের অফিসে তাঁর সন্ধান চেয়ে অভিযোগ জানানো হয়। তবে ভারী তুষারের কারণে আবহাওয়া খারাপ থাকায় উদ্ধারকারী দল দ্রুত অভিযান শুরু করতে পারেনি। আটকা পড়ার ষষ্ঠ দিনে জেরির মুঠোফোন থেকে একটি খুদেবার্তা পান উদ্ধারকারী কর্তৃপক্ষ। পরে তাঁকে অক্ষত অবস্থায় উদ্ধার করা হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;ক্যালিফোর্নিয়া হাইওয়ে প্যাট্রোল বিমান জেরির গাড়িটিকে প্রায় তিন ফুট তুষারে নিচে চাপা পড়া দেখতে পায়। পরে সেখান থেকে জেরিকে উদ্ধার করে হাসপাতালে নিয়ে যাওয়া হয়। হাসপাতালে কয়েকঘণ্টা তাঁকে পর্যবেক্ষণে রাখা হয়। কিন্তু তাঁর হাইপোথার্মিয়ার কোনো লক্ষণ দেখা যায়নি।&lt;/p&gt;\r\n\r\n&lt;p&gt;জেরি জুরেটের নাতি বলেন, এমন ভারী তুষারের মাঝে টানা ছয় দিন আটকা পড়ে কীভাবে তিনি বেঁচে ছিলেন তা শুনে নার্সরা হতবাক হয়েছিলেন। তিনি এখন পুরো সুস্থ আছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/120323aad4b85e79c6fba.webp', 'জেরির গাড়িটি প্রায় তিন ফুট তুষারে নিচে চাপা পড়েছিল।', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-12 07:43:07', 0, 1),
(271, 'samojugc_datatable', 5, 59, 'রাশিয়ার কাছ থেকে সুখোই সু-৩৫ যুদ্ধবিমান কিনছে ইরান', 'রাশিয়ার কাছ থেকে সুখোই সু-৩৫ যুদ্ধবিমান কিনছে ইরান', '&lt;p&gt;রাশিয়ার কাছ থেকে আধুনিক সুখোই সু-৩৫ যুদ্ধবিমান কেনার বিষয়ে একটি চুক্তিতে পৌঁছেছে ইরান। দেশটির রাষ্ট্রীয় গণমাধ্যম গতকাল শনিবার এ তথ্য জানিয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;রাশিয়া ও ইরানের মধ্যে সম্পর্ক জোরদার হচ্ছে। ইতিমধ্যে রাশিয়া&amp;ndash;ইউক্রেন যুদ্ধে ইরানের তৈরি ড্রোন রাশিয়াকে ব্যবহার করতে দেখা গেছে। এখন রাশিয়ার কাছ থেকে ইরানের যুদ্ধবিমান কেনার বিষয়ে খবর এল।&lt;/p&gt;\r\n\r\n&lt;p&gt;জাতিসংঘে ইরান মিশনকে উদ্ধৃত করে দেশটির রাষ্ট্রীয় সম্প্রচারমাধ্যম আইআরআইবি জানায়, রাশিয়ার সুখোই সু-৩৫ যুদ্ধবিমান ইরানের কাছে কারিগরিভাবে গ্রহণযোগ্য। এ যুদ্ধবিমান কেনার জন্য ইরান একটি চুক্তি চূড়ান্ত করেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;চুক্তির তথ্য সঠিক কি না, সে বিষয়ে রাশিয়ার নিশ্চিতকরণ বক্তব্য আইআরআইবির প্রতিবেদনে উল্লেখ করা হয়নি। এ ছাড়া চুক্তির বিস্তারিত বিবরণও প্রতিবেদনে নেই।&lt;/p&gt;\r\n\r\n&lt;p&gt;আইআরআইবি জানিয়েছে, ইরান মিশন বলেছে, আরও কয়েকটি দেশ থেকে সামরিক বিমান কেনার বিষয়ে তেহরান খোঁজখবর করেছে। তবে এ দেশগুলোর নাম ইরান মিশন উল্লেখ করেনি।&lt;/p&gt;\r\n\r\n&lt;p&gt;রাশিয়ার প্রেসিডেন্ট ভ্লাদিমির পুতিন গত জুলাইয়ে তেহরানে গিয়ে ইরানের সর্বোচ্চ নেতা আয়াতুল্লাহ আলী খামেনির সঙ্গে দেখা করেন। রাশিয়া&amp;ndash;ইউক্রেন যুদ্ধের জেরে পশ্চিমা চাপের মুখে মস্কো ও তেহরানের মধ্যে ঘনিষ্ঠ সম্পর্কের ওপর গুরুত্বারোপ করেন পুতিন।&lt;/p&gt;\r\n\r\n&lt;p&gt;রাশিয়াকে ড্রোন দেওয়ার কথা ইরান স্বীকার করেছে। তবে তেহরানের ভাষ্য, গত বছরের ২৪ ফেব্রুয়ারি ইউক্রেনে রুশ হামলা শুরুর আগেই তারা মস্কোকে এ ড্রোন দিয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;রাশিয়া&amp;ndash;ইউক্রেন যুদ্ধে ইরানের নির্মিত ড্রোন ব্যবহারের কথা অস্বীকার করে আসছে মস্কো। তবে ইউক্রেন বলছে, তারা ইতিমধ্যে অনেকগুলো ইরানি ড্রোন ভূপাতিত করেছে।&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/12032368bbf27d3a3117a.webp', 'রাশিয়ার সুখোই সু-৩৫ যুদ্ধবিমান', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-12 07:45:56', 0, 1),
(272, 'samojugc_datatable', 5, 59, 'বাখমুতের যুদ্ধে ২৪ ঘণ্টায় পাঁচ শতাধিক রুশপন্থী সেনা হতাহত: ইউক্রেন', 'বাখমুতের যুদ্ধে ২৪ ঘণ্টায় পাঁচ শতাধিক রুশপন্থী সেনা হতাহত: ইউক্রেন', '&lt;p&gt;ইউক্রেনের পূর্বাঞ্চলীয় শহর বাখমুতের যুদ্ধে ২৪ ঘণ্টায় পাঁচ শতাধিক রুশপন্থী সেনা হতাহত হয়েছেন। ইউক্রেনের এক সামরিক মুখপাত্র গতকাল শনিবার এই দাবি করেছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;ইউক্রেনের পূর্ব দনবাস অঞ্চলে অবস্থিত বাখমুত শহর দখলের জন্য মস্কোপন্থী বাহিনী কয়েক মাস ধরে লড়াই করছে। এই যুদ্ধে উল্লেখযোগ্য ক্ষয়ক্ষতির শিকার হওয়ার বিষয়টি উভয় পক্ষ স্বীকার করেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;তবে কোন পক্ষের কতসংখ্যক সেনা বাখমুতের যুদ্ধে হতাহত হয়েছেন, তার সঠিক পরিসংখ্যান নেই। কারণ, পক্ষগুলোর দাবি যাচাই করা কঠিন।&lt;/p&gt;\r\n\r\n&lt;p&gt;পূর্ব ইউক্রেনে লড়াইরত কিয়েভের বাহিনীর মুখপাত্র সেরহি চেরেভাতি একটি টিভি চ্যানেলকে বলেন, ২৪ ঘণ্টায় শত্রুপক্ষের ২২১ জন নিহত হয়েছেন। বিভিন্ন মাত্রায় আহত হয়েছেন ৩১৪ জন।&lt;/p&gt;\r\n\r\n&lt;p&gt;চেরেভাতির মন্তব্য থেকে এটি পরিষ্কার নয় যে তিনি গত শুক্রবার নাকি সবশেষ ২৪ ঘণ্টার কথা বলেছেন। তাঁর দাবি তাৎক্ষণিকভাবে যাচাই করতে পারেনি রয়টার্স।&lt;/p&gt;\r\n\r\n&lt;p&gt;ইউক্রেনের প্রেসিডেন্ট ভলোদিমির জেলেনস্কির এক সহযোগী গত শুক্রবার বলেন, বাখমুতে লড়াই চালিয়ে যাওয়ার সিদ্ধান্ত নিয়েছে কিয়েভ। কারণ, এ যুদ্ধ রাশিয়ার সেরা ইউনিটগুলোকে ধ্বংস করছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;মস্কো বলছে, বাখমুত দখল করা গেলে তা হবে ইউক্রেনের প্রতিরক্ষার জন্য একটি আঘাত। একই সঙ্গে তা হবে পুরো দনবাস শিল্পাঞ্চল দখলের ক্ষেত্রে একটি অগ্রগতি।&lt;/p&gt;\r\n\r\n&lt;p&gt;মস্কোর হয়ে বাখমুত শহর দখলের লড়াইয়ে নেতৃত্ব দিচ্ছে রাশিয়ার বেসরকারি সামরিক বাহিনী ভাগনার গ্রুপ। ভাগনার গ্রুপের প্রধান ইয়েভজেনি প্রিগোজিন সম্প্রতি বাখমুতের পূর্বাঞ্চলীয় অংশ পুরোপুরি নিয়ন্ত্রণ নেওয়ার দাবি করেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/120323cf5f8a1d9eb9400.webp', 'বাখমুত শহর দখলের জন্য কয়েক মাস ধরে লড়াই চলছে', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-12 07:50:33', 0, 1),
(273, 'samojugc_datatable', 5, 60, 'শারজা শহরে এক মাসে ৬০ কোটি ডলারের সম্পত্তি কেনাবেচা', 'শারজা শহরে এক মাসে ৬০ কোটি ডলারের সম্পত্তি কেনাবেচা', '&lt;p&gt;সংযুক্ত আরব আমিরাতের তৃতীয় জনবহুল শহর শারজা। এই শহরে আবাসন খাতে লেনদেন বিপুল হারে বেড়েছে। আমিরাতের রিয়েল এস্টেট রেজিস্ট্রেশন বিভাগ জানিয়েছে, গত মাসে শারজা শহরের আবাসন খাতে ৬০ কোটি ডলার লেনদেন হয়েছে। খবর অ্যারাবিয়ান বিজনেস&lt;/p&gt;\r\n\r\n&lt;p&gt;শারজা রিয়েল এস্টেট রেজিস্ট্রেশন ডিপার্টমেন্ট প্রকাশিত মর্টগেজ মুভমেন্ট রিপোর্টে দেখা গেছে, ফেব্রুয়ারি মাসে দেশটিতে ২ হাজার ২০৭টি লেনদেন হয়েছে। এসব লেনদেনের মাধ্যমে বিক্রি হয়েছে ১ কোটি ৩ লাখ বর্গফুট ভূমি, যার অর্থমূল্য ৬০ কোটি ডলার।&lt;/p&gt;\r\n\r\n&lt;p&gt;মোট লেনদেনের মধ্যে বিক্রয়জনিত লেনদেন ছিল ৬৪০টি; অর্থাৎ মোট লেনদেনের ২৯ শতাংশ। এ ছাড়া মর্টগেজ বা বন্ধকি লেনদেন ছিল ২৯৫, যার অর্থমূল্য ১০ কোটি ৫০ লাখ ডলার। এর বাইরে অন্যান্য লেনদেন হয়েছে ১ হাজর ২৭২টি; অর্থাৎ মোট লেনদেনের ৫৭ দশমিক ৬ শতাংশ।&lt;/p&gt;\r\n\r\n&lt;p&gt;বাস্তবতা হলো, সংযুক্ত আরব আমিরাত, বিশেষ করে দেশটির রাজধানী শহর দুবাই এখন বিশ্বের বিলাসবহুল আবাসনের সবচেয়ে কাঙ্ক্ষিত গন্তব্য। রাশিয়া, ইউরোপসহ বিশ্বের বিভিন্ন দেশের ধনীরাই দেশটিতে বিনিয়োগ করছেন। সেই তালিকায় বাংলাদেশের অনেক নাগরিকেরই নাম উঠেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;দৈনিক প্রথম আলোর সাম্প্রতিক এক প্রতিবেদনে জানা যায়, সংযুক্ত আরব আমিরাতের দুবাই, শারজা, আবুধাবি, আজমানসহ বিভিন্ন জায়গায় বাংলাদেশিরা নিজের ও অন্যের নামে ভিলা, ফ্ল্যাট, ছোট হোটেল, তারকা হোটেলসহ নানা খাতে বিনিয়োগ করেছেন। এসব বিনিয়োগে নিজেদের আড়াল করে রাখছেন অনেকেই।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ জন্য তাঁরা বাংলাদেশের পরিবর্তে আলবেনিয়া, সাইপ্রাসসহ বিভিন্ন দেশের নাগরিকত্ব ব্যবহার করছেন। এভাবে ইউএইর কৃত্রিম দ্বীপপুঞ্জ &amp;lsquo;পাম জুমেইরা&amp;rsquo;, জুমেইরা, সিলিকন ওয়েসিস, এমিরেটস হিল, দুবাই মেরিনা ও বিজনেস বের মতো অভিজাত এলাকাগুলোতেও নিজস্ব বাড়ি ও তারকাখচিত হোটেল গড়ে তুলেছেন কেউ কেউ। এসব এলাকায় বিশ্বের বিভিন্ন দেশের ধনীদেরও সম্পদ রয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;বিদেশে বিনিয়োগ করতে বাংলাদেশ ব্যাংকের অনুমতি প্রয়োজন। কিন্তু বাংলাদেশ ব্যাংক এখন পর্যন্ত কোনো বাংলাদেশিকে ওই দেশে বিনিয়োগের অনুমতি দেয়নি; অর্থাৎ বাংলাদেশিরা অবৈধ উপায়ে অর্থ পাচার করে আরব আমিরাতে বিনিয়োগ করছেন। দেশটি অবশ্য অর্থের বৈধতা ও মাধ্যম নিয়ে প্রশ্ন তোলে না।&lt;/p&gt;\r\n\r\n&lt;p&gt;সংযুক্ত আরব আমিরাতে (ইউএই) নিযুক্ত বাংলাদেশের রাষ্ট্রদূত মোহাম্মাদ আবু জাফর প্রথম আলোকে বলেন, এই দেশে বাংলাদেশের নাগরিকদের বিনিয়োগ নিয়ে অনেক আলোচনা আছে, তবে তার সব ঠিক নয়। বাংলাদেশের নাগরিকেরা বিভিন্ন দেশে বসবাস করেন। তাঁদের অনেকে অন্য দেশের পাসপোর্ট ও নাগরিকত্ব নিয়েছেন। অনেকেই দুবাইয়ে থাকার জন্য বাড়ি কিনছেন। এটা অন্যভাবে দেখার সুযোগ নেই।&lt;/p&gt;\r\n\r\n&lt;p&gt;রাষ্ট্রদূত যা-ই বলুন না কেন, দুবাইয়ের ডেইরা এলাকায় বাংলাদেশিদের উপস্থিতি সবচেয়ে বেশি। এই এলাকার অনেক অ্যাপার্টমেন্ট ও হোটেলের মালিকও বাংলাদেশি। আর এ এলাকায় বাংলাদেশিদের মালিকানাধীন কম্পিউটার সেবা, মোবাইল রিচার্জ ও মোবাইল ফোন বিক্রয়কেন্দ্রের অনেকগুলোই হুন্ডির কাজে ব্যবহৃত হচ্ছে। এসব দোকানে আরব আমিরাতের মুদ্রা দিরহাম জমা দিলে তাৎক্ষণিকভাবেই দেশে থাকা তাঁদের আত্মীয়স্বজন টাকা পেয়ে যান।&lt;/p&gt;\r\n\r\n&lt;p&gt;দুবাইয়ে তিন-চার কক্ষের ফ্ল্যাট কিনতে খরচ হয় তিন থেকে চার লাখ দিরহাম, যা বাংলাদেশের প্রায় ১ কোটি ২০ লাখ টাকার সমান; অর্থাৎ রাজধানী ঢাকার অভিজাত এলাকাগুলোর চেয়ে দুবাইয়ে ফ্ল্যাটের মূল্য কম। ফলে চাকরির জন্য দুবাইয়ে আসা অনেক বাংলাদেশি সেখানে ফ্ল্যাট কিনেছেন। আবার বিভিন্ন দেশে বসবাসকারী অনেক প্রবাসী বাংলাদেশি দুবাইয়ে ফ্ল্যাট কিনেছেন। এ ছাড়া অবৈধ পথে ডলার এনে দুবাইয়ে বিনিয়োগ করেছেন অনেক ব্যবসায়ী, রাজনীতিবিদ, সাবেক ও বর্তমান সরকারি কর্মকর্তারা। তবে নথিপত্রে তাঁরা অন্য নাম ব্যবহার করেছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;যুক্তরাষ্ট্রভিত্তিক সেন্টার ফর অ্যাডভান্সড ডিফেন্স স্টাডিজের (সি ৪ এডিএস) সংগৃহীত তথ্য বিশ্লেষণের ভিত্তিতে ইইউ ট্যাক্স অবজারভেটরি জানিয়েছে, তথ্য গোপন করে দুবাইয়ে সম্পদ কিনেছেন ৪৫৯ জন্য বাংলাদেশি। ২০২০ সাল পর্যন্ত তাঁদের মালিকানায় সেখানে মোট ৯৭২টি সম্পদ ক্রয়ের তথ্য পাওয়া গেছে, কাগজে-কলমে যার মূল্য সাড়ে ৩১ কোটি ডলার। বাংলাদেশি টাকায় যার পরিমাণ প্রায় সাড়ে ৩ হাজার কোটি টাকা।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/12032374ea3f5d9ca5f8f.webp', 'সংযুক্ত আরব আমিরাতের দুবাই', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-12 07:58:56', 0, 1),
(274, 'samojugc_datatable', 5, 60, 'মোটা চালের দাম কমেছে ২-৪ টাকা', 'মোটা চালের দাম কমেছে ২-৪ টাকা', '&lt;p&gt;মোকামের পাশাপাশি নওগাঁর খুচরা বাজারেও মোটা ও সরু চালের দাম কমেছে। তবে সুগন্ধি আতপ চালের দাম বাড়তি। চাল ব্যবসায়ীরা বলছেন, সরকারের খাদ্যবান্ধব কর্মসূচির কারণে বাজারে চাহিদা কম।&lt;/p&gt;\r\n\r\n&lt;p&gt;ধান-চাল উৎপাদনের জন্য প্রসিদ্ধ জেলা নওগাঁয় কমেছে মোটা ও সরু চালের দাম। তবে বেড়েছে সুগন্ধি আতপ চালের দাম। পাইকারিতে দুই সপ্তাহের ব্যবধানে প্রতি বস্তা (৫০ কেজি) মোটা চালের দাম ১০০ থেকে ১৫০ টাকা পর্যন্ত কমেছে। তাতে খুচরায় অর্থাৎ গ্রাহক পর্যায়ে মোটা ও সরু চালের দাম মানভেদে কেজিতে ২ থেকে ৪ টাকা কমেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এদিকে মোটা চালের দাম কমায় স্বস্তি ফিরেছে নিম্ন&amp;curren;আয়ের মানুষের মধ্যে। তবে যারা বেশি বেশি বিরিয়ানি-পোলাও খান, তাঁদের জন্য দুঃসংবাদ চালের বাজারে। কারণ, আতপ চালের দাম কেজিতে ৬ থেকে ৭ টাকা বেড়ে গেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;চাল ব্যবসায়ীরা বলছেন, ওএমএসসহ বিভিন্ন খাদ্যবান্ধব কর্মসূচি চালু থাকায় নওগাঁর মোকামে দুই সপ্তাহ ধরে মোটা চালের দাম নিম্নমুখী। মোটা চাল হিসেবে পরিচিত স্বর্ণা, বিআর-৫১, বিআর-৪৯ চালের দাম দুই সপ্তাহ আগেও ছিল ৪৮ থেকে ৫০ টাকা কেজি। এখন সেই দাম কমে হয়েছে ৪৫ থেকে ৪৬ টাকা। তবে সরু চাল হিসেবে পরিচিত নাজিরশাইল, কাটারিভোগ ও পাইজাম চালের দামও কমেছে। আর ৫০ কেজির প্রতি বস্তা সুগন্ধি আতপ চালের দাম বেড়েছে ২০০&amp;ndash;৩০০ টাকা পর্যন্ত।&lt;/p&gt;\r\n\r\n&lt;blockquote&gt;এক মাস ধরেই নওগাঁর মোকামে ক্রেতার সংখ্যা কম। মোকামে চাল বিক্রি কমে যাওয়ায় মিলের মালিকেরা বাজার থেকে ধান কেনা কমিয়ে দিয়েছেন। ফলে বাজারে ধানের দাম প্রতি মণে ৫০ থেকে ৮০ টাকা পর্যন্ত কমেছে।&lt;/blockquote&gt;\r\n\r\n&lt;p&gt;ফরহাদ হোসেন চকদার, সাধারণ সম্পাদক, নওগাঁ চালকল মালিক গ্রুপ&lt;/p&gt;\r\n\r\n&lt;p&gt;দেশের অন্যতম বড় চালের মোকাম নওগাঁয় ৮০টি স্বয়ংক্রিয় (অটো) চালকল রয়েছে। আর হাস্কিং মিল রয়েছে ১ হাজার ১৬০টি। নওগাঁর বাজারে চালের দামের প্রভাব পড়ে সারা দেশে। &amp;nbsp;গত শুক্রবার নওগাঁর বৃহত্তম চালের মোকাম সদর উপজেলার মিলগেটে প্রতি কেজি স্বর্ণা চাল বিক্রি হয়েছে ৪৪-৪৫ টাকায়। দুই সপ্তাহ আগে এই চাল ৪৮ টাকা কেজিতে বিক্রি হয়েছিল। এ ছাড়া সরু চাল হিসেবে পরিচিত পাইজাম চালের দাম কেজিতে ২ টাকা কমে ৬১-৬২ টাকা, কাটারি ও জিরা নাজির চালের দাম কমে প্রতি কেজি বিক্রি হচ্ছে ৬৫ থেকে ৬৮ টাকায়। দুই সপ্তাহ আগে এসব সরু চালের কেজি ছিল ৭০ থেকে ৭২ টাকা। এ ছাড়া সুগন্ধি আতপ চালের দাম কেজিতে ৬ টাকা বেড়ে মিলগেটেই এখন বিক্রি হচ্ছে ১২৮ থেকে ১৩০ টাকায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;পাইকারি বাজারে চালের দাম বাড়া-কমার প্রভাব পড়েছে নওগাঁর খুচরা বাজারেও। গত শুক্রবার নওগাঁর পৌর ক্ষুদ্র চাল বাজারে খোঁজ নিয়ে যায়, মানভেদে প্রতি কেজি মোটা ও সরু চালের দাম কেজিতে ২ থেকে ৪ টাকা পর্যন্ত কমেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;খুচরা চাল বিক্রেতা প্রতিষ্ঠান কিরণ ট্রেডার্সের মালিক মোহন সরকার প্রথম আলোকে বলেন, এবার পুরো আমন মৌসুমেই চালের বাজার স্থিতিশীল ছিল। ওএমএসে কম দামে সরকারের চাল বিক্রি অব্যাহত থাকায় বাজারে তার প্রভাব পড়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;নওগাঁ চালকল মালিক গ্রুপের সাধারণ সম্পাদক ফরহাদ হোসেন চকদার প্রথম আলোকে বলেন, &amp;lsquo;সরকার চালের বাজার নিয়ন্ত্রণে বিভিন্ন খাদ্যবান্ধব কর্মসূচি চালু রেখেছে। এ কারণে এক মাস ধরেই নওগাঁর মোকামে ক্রেতার সংখ্যা কম। মোকামে চাল বিক্রি কমে যাওয়ায় মিলের মালিকেরা বাজার থেকে ধান কেনা কমিয়ে দিয়েছেন। ফলে বাজারে ধানের দাম প্রতি মণে ৫০ থেকে ৮০ টাকা পর্যন্ত কমেছে। এ কারণে পাইকারিতে মোটা ও সরু চালের দাম কমেছে। তবে আতপ চালের দাম বাড়তি।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/120323fed5d73f03daa99.webp', 'চাল', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-12 08:03:00', 0, 1),
(275, 'samojugc_datatable', 5, 60, 'পরিচালকেরা নিজেদের মালিক ভাবছেন', 'পরিচালকেরা নিজেদের মালিক ভাবছেন', '&lt;p&gt;বিআইবিএম আয়োজিত নুরুল মতিন স্মারক বক্তৃতা অনুষ্ঠানে সভাপতির বক্তব্যে গভর্নর এ কথা বলেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;বাংলাদেশ ব্যাংকের গভর্নর আব্দুর রউফ তালুকদার বলেছেন, &amp;lsquo;নৈতিকতা ও সুশাসন ব্যাংকিংয়ে খুবই গুরুত্বপূর্ণ। কিন্তু ব্যাংক খাতে এর কিছু ব্যত্যয় হচ্ছে। আমরা দেখেছি, কিছু ব্যাংকের পরিচালক নিজেদের ব্যাংকের মালিক মনে করছেন। আবার কিছু ব্যাংকার তাতে সহায়তাও করছেন। ব্যাংক পরিচালনায় পরিচালক ও ব্যবস্থাপকের ভূমিকা কী হবে, তা নির্দিষ্ট করা আছে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;সামাজিক দায়বদ্ধতা খাতের তহবিলের (সিএসআর) অপব্যবহার হচ্ছে উল্লেখ করে গভর্নর বলেন, একটি ব্যাংক তাদের কর্মীদের বার্ষিক বনভোজনে সিএসআর তহবিলের অর্থ খরচ করেছে। আবার বাংলাদেশ ব্যাংকের সিএসআর তহবিল আছে। ব্যাংক ব্যবসা করে, তার সিএসআর তহবিল থাকবে। বাংলাদেশ ব্যাংক তো কোনো ব্যবসাপ্রতিষ্ঠান নয়। তাই গভর্নর বলেন, স্বচ্ছতা, জবাবদিহি, তথ্য প্রকাশ ও নৈতিকতা বাংলাদেশের ব্যাংক খাতের জন্য জরুরি হয়ে পড়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;বাংলাদেশ ইনস্টিটিউট অব ব্যাংক ম্যানেজমেন্ট (বিআইবিএম) অডিটরিয়ামে গতকাল শনিবার আয়োজিত ২১তম নুরুল মতিন স্মারক বক্তৃতা &amp;lsquo;এথিকস ইন ব্যাংকিং&amp;rsquo; অনুষ্ঠানে সভাপতির বক্তব্যে গভর্নর আব্দুর রউফ তালুকদার এসব কথা বলেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;এবারের ২১তম আয়োজনে মূল প্রবন্ধ উপস্থাপন করেন গ্রামীণ ব্যাংকের পরিচালনা পর্ষদের চেয়ারম্যান ও ঢাকা বিশ্ববিদ্যালয়ের ইনস্টিটিউট অব বিজনেস অ্যাডমিনিস্ট্রেশনের (আইবিএ) সাবেক পরিচালক এ কে এম সাইফুল মজিদ।&lt;/p&gt;\r\n\r\n&lt;p&gt;মূল প্রবন্ধে এ কে এম সাইফুল মজিদ বলেন, অস্বাস্থ্যকর করপোরেট সংস্কৃতির কারণে গত চার দশকে আর্থিক খাতের পবিবেশের ব্যাপক ক্ষতি হয়েছে। ব্যাংকারদের লোভী মানসিকতা এবং বেসিক ব্যাংক, পদ্মা ব্যাংক, ইসলামী ব্যাংক ও সোনালী ব্যাংকের ঋণ কেলেঙ্কারির কারণে আমানতকারী ও জনগণের মধ্যে বিশ্বাসের ঘাটতি প্রকট হয়েছে। তিনি অস্বাস্থ্যকর করপোরেট সংস্কৃতির কয়েকটি সূচক তুলে ধরেন। এগুলো হলো লোভী, করপোরেট ব্যবস্থাপনার রাজনৈতিকীকরণ, বেমানান ও সংঘর্ষ সৃষ্টিকারী সংস্কৃতি।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ কে এম সাইফুল মজিদ বলেন, গত চার দশকে কয়েকটি পরিবার ও কিছু ব্যাংকার প্রতারণামূলক কার্যক্রম ও অর্থ পাচার বাড়িয়েছে। তিনি বলেন, ব্যাংকিং খাতে নৈতিকতার চর্চা থাকলে ব্যাংকের অংশীজনদের স্বার্থ সুরক্ষিত থাকে। বিশেষ করে গ্রাহকদের স্বার্থ সুরক্ষিত হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;এমনকি ব্যাংকের মালিকদেরও স্বার্থ রক্ষা পাবে। ব্যাংক খাতের নৈতিকতা চর্চার কিছু সহজাত শক্তি ও সুবিধা রয়েছে। ব্যাংকিং খাতের খারাপ ব্যবস্থাপনা এ খাতে অনৈতিকতার চর্চা বাড়িয়ে দিয়েছে। গত তিন দশকে ব্যাংকিং খাতের ব্যর্থতার অন্যতম একটি কারণ অনৈতিকতার চর্চা। এ কারণে ব্যাংক খাতের ব্যর্থতার অনেকগুলো ঘটনা ঘটেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;মূল প্রবন্ধে আরও বলা হয়, ব্যাংকের শীর্ষ কর্মকর্তাদের নৈতিকভাবে এমন মানের হতে হবে, যাতে কেউ প্রশ্ন তুলতে না পারেন। অন্যরা তাঁদের অনুসরণ করতে পারেন। নিজের স্বার্থের জন্য অধস্তনদের ব্যবহার করা যাবে না।&lt;/p&gt;\r\n\r\n&lt;p&gt;ব্যাংক খাতে খেলাপি ঋণ বেড়ে যাওয়ার কারণ হিসেবে মূল প্রবন্ধ উপস্থাপক বলেন, লোভী ব্যাংকার, সুশাসন ও জবাবদিহির অভাব, ইচ্ছাকৃত খেলাপির কারণে ব্যাংক খাতে ঋণখেলাপি বেড়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ অবস্থায় এ কে এম সাইফুল মজিদের পরামর্শ, শেয়ারধারীদের চেয়ে ব্যাংকে আমানতকারীদের বেশি বেশি গুরুত্ব দিতে হবে। অর্থনীতি, সমাজ ও পরিবেশ উন্নয়নে ব্যাংককে ভূমিকা রাখতে হবে। ব্যাংক পরিচালনার ক্ষেত্রে প্রাধান্য দিতে হবে নীতি ও আইনকে। প্রতারণামূলক কার্যক্রম থেকে ব্যাংকারদের দূরে থাকতে হবে। স্বল্পমেয়াদি ব্যবসায়িক লক্ষ্য নির্ধারণ করা যাবে না।&lt;/p&gt;\r\n\r\n&lt;p&gt;অনুষ্ঠানে স্বাগত বক্তব্য দেন বিআইবিএমের মহাপরিচালক মো. আখতারুজ্জামান। ধন্যবাদ জ্ঞাপন করেন বিআইবিএমের পরিচালক (গবেষণা, উন্নয়ন এবং পরামর্শ) আশরাফ আল মামুন।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/12032351b994d5d34bfd5.webp', 'বাংলাদেশ ব্যাংকের গভর্নর আব্দুর রউফ তালুকদার', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-12 08:07:12', 1, 1),
(276, 'samojugc_datatable', 5, 61, 'শ্রীলঙ্কার প্রয়োজন ৯ উইকেট, নিউজল্যান্ডের ২৫৭ রান', 'শ্রীলঙ্কার প্রয়োজন ৯ উইকেট, নিউজল্যান্ডের ২৫৭ রান', '&lt;p&gt;এখন পর্যন্ত ক্রাইস্টচার্চ টেস্টটা অ্যাঞ্জেলো ম্যাথুসের। প্রথম ইনিংসে ৪৭ রান করার পথে তৃতীয় শ্রীলঙ্কান হিসেবে ৭০০০ রানের মাইলফলক ছুঁয়েছিলেন। আর দ্বিতীয় ইনিংসে পেলেন ক্যারিয়ারের ১৪তম সেঞ্চুরি। তাঁর সেঞ্চুরিতেই নিউজিল্যান্ডকে ২৮৫ রানের লক্ষ্য দিয়েছে লঙ্কানরা। শেষ পর্যন্ত টেস্টটা কি ম্যাথুসের থাকবে নাকি জয়ের আনন্দে মেতে উঠবে কিউইরা!&lt;/p&gt;\r\n\r\n&lt;p&gt;রান তাড়া করতে নেমে নিউজিল্যান্ড চতুর্থ দিনের খেলা শেষ করেছে ১ উইকেটে ২৮ রান নিয়ে। টেস্টের শেষ দিনে শ্রীলঙ্কার প্রয়োজন ৯ উইকেট, নিউজিল্যান্ডের ২৫৭ রান। বলা যায়, ক্রাইস্টচার্চ টেস্টের লড়াইটা এখন সমানে সমান।&lt;/p&gt;\r\n\r\n&lt;p&gt;শ্রীলঙ্কা প্রথম ইনিংসে তুলেছিল ৩৫৫ রান। জবাবে প্রথম ইনিংসে ১৮৮ রানে ৬ উইকেট হারিয়ে ফেলে নিউজিল্যান্ড। সেখান থেকে মিচেলের সেঞ্চুরি ও ম্যাট হেনরির ৭২ রানে ১৮ রানের লিড পায় নিউজিল্যান্ড। ১৮ রানে পিছিয়ে থেকে ব্যাট করতে নেমে শ্রীলঙ্কা দ্বিতীয় ইনিংসে স্কোরবোর্ড তোলে ৩০১ রান।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug84.webp&quot; style=&quot;height:427px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;৪ উইকেট নিয়েছেন টিকনার&lt;/p&gt;\r\n\r\n&lt;p&gt;দ্বিতীয় ইনিংসে শ্রীলঙ্কার স্কোরটা আরও বড় হতে পারত। ৩ উইকেটে ৮৩ রান নিয়ে চতুর্থ দিনে ব্যাট করতে নেমে শুরুর দিকে প্রবাত জয়াসুরিয়াকে হারায় শ্রীলঙ্কা। তবে এরপর ম্যাথুস ও দীনেশ চান্ডিমাল মিলে ১০৫ রানের জুটি গড়েন।&lt;/p&gt;\r\n\r\n&lt;p&gt;চান্ডিমালের পর ধনঞ্জয়া ডি সিলভার সঙ্গে ৬০ রানের জুটি গড়েন ম্যাথুস। তবে ম্যাথুসের বিদায়ের পর লোয়ার অর্ডার ব্যাটসম্যানরা স্কোরটাকে বেশি দূর টেনে নিয়ে যেতে পারেননি। শেষ ৪২ রান তুলতে খুইয়েছে ৪ উইকেট। শেষ পর্যন্ত ডি সিলভা সঙ্গীর অভাবে অপরাজিত থাকেন ৪৭ রানে।&lt;/p&gt;\r\n\r\n&lt;p&gt;এদিনও বড় ইনিংস খেলার সম্ভাবনা জাগিয়ে চান্ডিমাল ফিরেছেন ৪২ রান করে। ব্যাট হাতে শ্রীলঙ্কাকে অনেকটা একাই টেনেছেন ১১৫ রানের ইনিংস খেলা ম্যাথুস। ক্যারিয়ারে ১৪টি টেস্ট সেঞ্চুরির ৯টিই দেশের বাইরে করেছেন ম্যাথুস। নিউজিল্যান্ডের মাটিতে এটি তাঁর দ্বিতীয় সেঞ্চুরি।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug85.webp&quot; style=&quot;height:960px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ম্যাথুসের গুরুত্বপূর্ণ উইকেটটি নিয়েছেন ম্যাট হেনরি&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রথম ইনিংসে কোনো উইকেট না পাওয়া ব্লেয়ার টিকনার দ্বিতীয় ইনিংসে পেয়েছেন ৪ উইকেট। টপ অর্ডারের তিন উইকেট নেওয়ার পর চতুর্থ দিনে শুরুতে জয়াসুরিয়ার উইকেট নেন এই পেসার। অধিনায়ক টিম সাউদি নিয়েছেন ২ উইকেট। ম্যাথুসের গুরুত্বপূর্ণ উইকেটটি নিয়েছেন ম্যাট হেনরি।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/1203239fb11d5ef468856.webp', '১১৫ রানের ইনিংস খেলেছেন ম্যাথুস', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-12 08:14:47', 1, 1),
(277, 'samojugc_datatable', 5, 61, '৫১৫ রানের টি–টোয়েন্টি ম্যাচে যত রেকর্ড', '৫১৫ রানের টি–টোয়েন্টি ম্যাচে যত রেকর্ড', '&lt;p&gt;&lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%AA%E0%A6%BF%E0%A6%8F%E0%A6%B8%E0%A6%8F%E0%A6%B2&quot; target=&quot;_blank&quot;&gt;পাকিস্তান সুপার লিগে&lt;/a&gt; হচ্ছেটা কী! &lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%AC%E0%A6%BE%E0%A6%AC%E0%A6%B0-%E0%A6%86%E0%A6%9C%E0%A6%AE&quot; target=&quot;_blank&quot;&gt;বাবর আজম&lt;/a&gt;ই বোধ হয় কথাটা ঠিক বলেছিলেন। ২৮০ রানই সম্ভবত পিএসএলে নিরাপদ স্কোর। কারণ, ২০ ওভারের খেলায় ২৪০ রান যে নিরাপদ নয়, তা বাবরের চেয়ে আর কেই&amp;ndash;বা ভালো জানে! টানা দুই ম্যাচে ২৪০ রানের বেশি লক্ষ্য দিয়েও হেরেছে পেশোয়ার জালমি।&lt;/p&gt;\r\n\r\n&lt;p&gt;আর গতকাল তো ২৬৩ রানের লক্ষ্য দিয়েও অনেকটা হেরেই যাচ্ছিল মুলতান সুলতান। কোয়েটার বিপক্ষে জিতেছে মাত্র ৯ রানে। রানবন্যার এই ম্যাচ জন্ম দিয়েছে অনেক রেকর্ডের।&lt;/p&gt;\r\n\r\n&lt;p&gt;গতকাল মুলতান সুলতান ও কোয়েটার ম্যাচে মোট রান হয়েছে ৫১৫। টি-টোয়েন্টি ক্রিকেট ইতিহাসে দুই ইনিংস মিলিয়ে এটাই সর্বোচ্চ রান। এর আগে সর্বোচ্চ রানের রেকর্ড ছিল ৫০১, দক্ষিণ আফ্রিকার ঘরোয়া টি-টোয়েন্টি লিগের টাইটান্স ও নাইটস ম্যাচে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug87.webp&quot; style=&quot;height:615px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;৩৬ বলে সেঞ্চুরি করার পর অধিনায়ক রিজওয়ানের সঙ্গে উসমান খান&lt;/p&gt;\r\n\r\n&lt;p&gt;আগে ব্যাট করে গতকাল ২০ ওভারে ৩ উইকেট হারিয়ে মুলতান তোলে ২৬২ রান। পিএসএল তো বটেই, পাকিস্তানে স্বীকৃতি টি-টোয়েন্টিতে এটাই সর্বোচ্চ। জবাবে কোয়েটা করে ২৫৩ রান। এটি পাকিস্তানে স্বীকৃতি টি-টোয়েন্টিতে দ্বিতীয় সর্বোচ্চ রানের কীর্তি।&lt;/p&gt;\r\n\r\n&lt;p&gt;মূলত, পাকিস্তানে এর আগে ২৫০ রানের কোটাই পার করতে পারেনি কোনো দল। এর আগে সর্বোচ্চ স্কোর ছিল ইসলামাবাদ ইউনাইটেডের ২৪৭ রান। পেশোয়ার জালমির বিপক্ষে ২০২১ সালে এই স্কোর তুলেছিল তারা।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a href=&quot;https://www.prothomalo.com/sports/cricket/h5zyvvwldv&quot; target=&quot;_blank&quot;&gt;বিপিএলে দুর্দান্ত খেলা উসমান খান&lt;/a&gt; কোয়েটার বিপক্ষে মাত্র ৩৬ বলে সেঞ্চুরি করেছেন। পাকিস্তানের ফ্র্যাঞ্চাইজি টি-টোয়েন্টি টুর্নামেন্টটির ইতিহাসে দ্রুততম সেঞ্চুরির রেকর্ড এটি। এর এক দিন আগেই মুলতানের হয়েই পেশোয়ার জালমির বিপক্ষে রান তাড়ায় ৪১ বলে সেঞ্চুরি করে রেকর্ড গড়েছিলেন রাইলি রুশো।&lt;/p&gt;\r\n\r\n&lt;p&gt;পাকিস্তানের স্বীকৃতি টি-টোয়েন্টিতে এর চেয়ে কম বলে সেঞ্চুরির রেকর্ড আছে একটি। ২০২০ সালে পাকিস্তান ন্যাশনাল কাপে মাত্র ৩৫ বলে সেঞ্চুরি করেছিলেন খুশদিল শাহ। তিনিও পিএসএল খেলেন মুলতান সুলতানের হয়ে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug88.webp&quot; style=&quot;height:853px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;পাঁচ উইকেট নিয়েছেন আব্বাস আফ্রিদি&lt;/p&gt;\r\n\r\n&lt;p&gt;ইনিংসের ৮.২ ওভারে সেঞ্চুরির দেখা পান উসমান। এর আগে এত কম ওভারে কোনো ধরনের টি-টোয়েন্টিতেই সেঞ্চুরি হয়নি। ২০১৩ সালের আইপিএলে ১৭৫ রানের ইনিংস খেলার পথে ৮.৫ ওভারে সেঞ্চুরি করেছিলেন গেইল। ওই ম্যাচেই ২০ ওভারের ক্রিকেটে দ্রুততম সেঞ্চুরির রেকর্ড গড়েন ক্রিস গেইল। মাত্র ৩০ বলে তিন অঙ্ক ছুঁয়েছিলেন এই ক্যারিবিয়ান তারকা।&lt;/p&gt;\r\n\r\n&lt;p&gt;বোঝাই যাচ্ছে, শনিবার রাতে বোলারদের ওপর কতটা ঝড় বয়ে গেছে। তবে সেই ঝড় সবচেয়ে ভালোভাবে টের পেয়েছেন আফগানিস্তানের লেগ স্পিনার কায়েস আহমেদ। ৪ ওভার বল করে এই স্পিনার দিয়েছেন ৭৭ রান। পিএসএলের ইতিহাসে এটাই সবচেয়ে খরুচে বোলিং। এর আগে সবচেয়ে খরুচে বোলার ছিলেন শহীদ আফ্রিদি। পিএসএলের গত আসরে ৪ ওভারে ৬৭ রান দিয়েছিলেন আফ্রিদি।&lt;/p&gt;\r\n\r\n&lt;p&gt;কায়েস আহমেদের বিপক্ষে মাত্র ১২ বল খেলেই ৫৪ রান করেছেন উসমান। নির্দিষ্ট কোনো বোলারের বিপক্ষে টি-টোয়েন্টি ক্রিকেটে কোনো ব্যাটসম্যানের এটাই সর্বোচ্চ রান। এর আগে ২০১৯ সালে টি-টোয়েন্টি ব্ল্যাস্টে টম কারেনের বিপক্ষে ৫৩ রান নিয়েছিলেন ক্যামেরন ডেলপোর্ট। তবে তার জন্য তাঁকে খেলতে হয়েছিল ১৫ বল।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/120323c613e76582082fb.webp', 'মুলতান জিতেছে মাত্র ৯ রানে', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-12 08:22:21', 1, 1),
(280, 'samojugc_datatable', 5, 61, 'আজই সিরিজ জয়ের আশা বাংলাদেশের', 'আজই সিরিজ জয়ের আশা বাংলাদেশের', '&lt;p&gt;রানআপ দেখে মনে হতে পারে অফ স্পিনার। তবে ট্রাউজারে বল ঘষার ধরনটা পেসারদের মতোই। খেলোয়াড়ি জীবনে &lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%9A%E0%A6%A8%E0%A7%8D%E0%A6%A1%E0%A6%BF%E0%A6%95%E0%A6%BE-%E0%A6%B9%E0%A6%BE%E0%A6%A5%E0%A7%81%E0%A6%B0%E0%A7%81%E0%A6%B8%E0%A6%BF%E0%A6%82%E0%A6%B9%E0%A7%87&quot; target=&quot;_blank&quot;&gt;চন্ডিকা হাথুরুসিংহে&lt;/a&gt; ছিলেন মিডিয়াম পেসার। গতকাল &lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%A8%E0%A6%BE%E0%A6%9C%E0%A6%AE%E0%A7%81%E0%A6%B2-%E0%A6%B9%E0%A7%8B%E0%A6%B8%E0%A7%87%E0%A6%A8-%E0%A6%B6%E0%A6%BE%E0%A6%A8%E0%A7%8D%E0%A6%A4&quot; target=&quot;_blank&quot;&gt;নাজমুল হোসেনের&lt;/a&gt; নেটে সেই সত্তাই যেন ফিরে এল বাংলাদেশের শ্রীলঙ্কান কোচের। ছোট রানআপে মিডিয়াম পেসই করছিলেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;গতকাল নেটে যেন হাথুরুসিংহের বাড়তি মনোযোগই পেলেন নাজমুল। &lt;a href=&quot;https://www.prothomalo.com/sports/cricket/nq9ks5h5om&quot; target=&quot;_blank&quot;&gt;ইংল্যান্ডের বিপক্ষে প্রথম টি&amp;ndash;টোয়েন্টিতে &lt;/a&gt;ব্যাটিংয়ে কমবেশি অবদান রেখেছিলেন সবাই। তার মধ্যেও উজ্জ্বল ছিলেন ঝোড়ো ফিফটি করে &lt;a href=&quot;https://www.prothomalo.com/sports/cricket/3nb6y5zhsv&quot; target=&quot;_blank&quot;&gt;ম্যাচসেরা হওয়া নাজমুল&lt;/a&gt;।&lt;/p&gt;\r\n\r\n&lt;p&gt;মিরপুর শেরেবাংলা স্টেডিয়ামে আজ সিরিজের দ্বিতীয় টি&amp;ndash;টোয়েন্টিই যখন বাংলাদেশকে দিচ্ছে সিরিজ জয়ের হাতছানি, তখন ইংলিশদের কিছুটা বাড়তি নজর তো পাবেনই এই টপ অর্ডার ব্যাটসম্যান।&lt;/p&gt;\r\n\r\n&lt;p&gt;চট্টগ্রামে প্রথম টি&amp;ndash;টোয়েন্টিটা ৬ উইকেটে জিতে বাংলাদেশ এখন ১&amp;ndash;০&amp;ndash;তে এগিয়ে। মিরপুরে দ্বিতীয় টি&amp;ndash;টোয়েন্টি জিতে গেলে তো সিরিজ জেতা হয়ে যাবে আজই, না জিতলে বাড়বে অপেক্ষা। ১৪ মার্চ শেষ ম্যাচে সিরিজ জয়ের আরেকটি সুযোগ থাকবে বাংলাদেশের।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/sampjug90.webp&quot; style=&quot;height:427px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;আজও কি দারুণ শুরু এনে দিতে পারবেন রনি?&lt;/p&gt;\r\n\r\n&lt;p&gt;এই দুই সুযোগের যেকোনো একটি কাজে লাগিয়ে ইংল্যান্ডের বিপক্ষে সিরিজ জিতে গেলে সেটি হবে এ সংস্করণে বাংলাদেশের অন্যতম সেরা অর্জন। আইসিসির পূর্ণ সদস্যদেশগুলোর মধ্যে এর আগে ওয়েস্ট ইন্ডিজ, অস্ট্রেলিয়া, নিউজিল্যান্ড ও জিম্বাবুয়েকে টি-টোয়েন্টি সিরিজে হারিয়েছে বাংলাদেশ। অবশ্য অস্ট্রেলিয়া ও নিউজিল্যান্ডের বিপক্ষে হোম সিরিজ দুটিতে ঘরের মাঠের সুবিধা বাংলাদেশ একটু বেশিই পেয়েছিল। সে তুলনায় চট্টগ্রামে ইংল্যান্ডকে হারানোটা বেশি তৃপ্তির কারণ, কন্ডিশনের সহায়তায় নয়, বাংলাদেশের দাপুটে পারফরম্যান্সেই এসেছে জয়টা।&lt;/p&gt;\r\n\r\n&lt;p&gt;ইংল্যান্ড সিরিজের আগে হওয়া বিপিএলে মিরপুরে বেশ ব্যাটিং&amp;ndash;সহায়ক উইকেটই ছিল। এর আগে ইংল্যান্ডের বিপক্ষে প্রথম দুই ওয়ানডেও হয়েছে এ মাঠে। প্রথম ম্যাচের উইকেট ব্যাটিংয়ের জন্য বেশ কঠিন হলেও দ্বিতীয় ম্যাচের উইকেট ছিল তুলনামূলক সহজ। সে সুবিধা কাজে লাগিয়ে ইংল্যান্ডও তুলেছিল ৩০০ পেরোনো রান। অবশ্য আজও ভালো উইকেটই আশা করছে বাংলাদেশ। দলের পেসার হাসান মাহমুদের কথায় সেটিই বোঝা গেছে গতকাল, &amp;lsquo;খেলা যেহেতু মিরপুরে, উইকেট ভালোই হবে। এখন পর্যন্ত আমরা খুব ভালো খেলেছি। ওদের চট্টগ্রামে হারিয়েছি, চেষ্টা থাকবে এখানেও হারানোর।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;মিরপুরে এখন পর্যন্ত আগে ব্যাটিং করা দল জিতেছে ২৯টি ম্যাচ, রান তাড়া করা দল ৩০ ম্যাচ। তবে ৫৯টি ম্যাচের মধ্যে টসে জিতে ৩৩ বারই অধিনায়কেরা আগে ব্যাটিং নিয়েছেন। এই সিরিজে অবশ্য টি&amp;ndash;টোয়েন্টি শুরুই হচ্ছে বেলা ৩টায়। টসটা তাই অত গুরুত্বপূর্ণও নয়। তবু ইংল্যান্ড বারবার যেন নিজেদেরই মনে করাচ্ছে, ঘরের মাঠে বাংলাদেশ অনেক শক্তিশালী দল। এক ম্যাচ হেরেও ওয়ানডে সিরিজ জয়টাকে তাই বড় অর্জনই মনে করছে সফরকারীরা।&lt;/p&gt;\r\n\r\n&lt;p&gt;কিন্তু টি-টোয়েন্টিতে প্রথম ম্যাচ হেরে শুরুতেই চাপে পড়ে গেছে সাদা বলের বিশ্ব চ্যাম্পিয়নরা। তা ছাড়া সিরিজ শুরুর আগেই স্বীকৃত দুই ব্যাটসম্যান উইল জ্যাকস ও টম অ্যাবেলকে হারাতে হয়েছে চোটের কারণে। তাঁদের বদলি হিসেবেও কাউকে ডাকা হয়নি। একাদশটা তাই কার্যত বেছে নিতে হচ্ছে ১৩ জনের দল থেকে। প্রথম ম্যাচে দলে ছিলেন মাত্র চারজন বিশেষজ্ঞ ব্যাটসম্যান, আজও সে কম্বিনেশন বদলানোর কথা নয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;ঐচ্ছিক অনুশীলন হলেও গতকাল ইংল্যান্ড দলের সবাইকেই দেখা গেছে মিরপুর শেরেবাংলা স্টেডিয়ামে। জস বাটলার, বেন ডাকেট, ডেভিড ম্যালান, ফিল সল্টদের সঙ্গে ব্যাটিং অনুশীলনে বেশ মনোযোগী দেখা গেল ক্রিস জর্ডান, আদিল রশিদ আর টি&amp;ndash;টোয়েন্টি অভিষেকের অপেক্ষায় থাকা রেহান আহমেদকেও।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug91.webp&quot; style=&quot;height:427px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ঐচ্ছিক অনুশীলন হলেও গতকাল ইংল্যান্ড দলের সবাইকেই দেখা গেছে মিরপুর শেরেবাংলা স্টেডিয়ামে&lt;/p&gt;\r\n\r\n&lt;p&gt;পেস বোলিং কোচ ডেভিড সেকারের সঙ্গে স্পট বোলিং অনুশীলন করেছেন মার্ক উড, জর্ডান, স্যাম কারেনরা। সঙ্গে ছিলেন এ সফরে এখনো মাঠে না নামা পেসার রিস টপলিও। প্রথম টি&amp;ndash;টোয়েন্টিতে বাংলাদেশের আগ্রাসী ব্যাটিংয়ের মোক্ষম জবাবই যেন অনুশীলনে খুঁজে নিতে চাইলেন তাঁরা।&lt;/p&gt;\r\n\r\n&lt;p&gt;গত অক্টোবর-নভেম্বরে অস্ট্রেলিয়ায় টি&amp;ndash;টোয়েন্টি বিশ্বকাপের আগে সেখানেই দ্বিপক্ষীয় সিরিজ জিতেছিল ইংল্যান্ড, তার আগে পাকিস্তানে জিতেছিল ৭ ম্যাচের সিরিজ। কিন্তু প্রথম ম্যাচে বাংলাদেশ ভিন্ন বার্তাই দিল তাঁদের। ২০২৪ সালের পরের বিশ্বকাপের অভিযানে প্রথম সিরিজেই তাই অন্য রকম এক চ্যালেঞ্জের সামনে বাটলারের দল।&lt;/p&gt;\r\n\r\n&lt;p&gt;অন্যদিকে বিশ্বকাপের আগে সংমিরপুরে কাল নেট অনুশীলন না করলেও মাঝ উইকেটে বড় শটের অনুশীলন করেছেন সাকিব। অবশ্য নেটের দিকে গেছেন অন্য ব্যাটসম্যানদের সাহস জোগাতে। দলের মধ্যে এরই মধ্য অধিনায়ক এই বার্তাটা ছড়িয়ে দিতে পেরেছেন যে টি&amp;ndash;টোয়েন্টিতে এই দলটাই সেরা। হাসানও সে বিশ্বাসের বাইরে নন, &amp;lsquo;এ মুহূর্তে আমাদের যে টি-টোয়েন্টি দলটা আছে, আমি মনে করি তারাই সেরা। সবাই প্রাণশক্তিতে ভরপুর, শেষ পর্যন্ত লড়াই করে। এটা ধরে রেখে এগিয়ে যেতে পারলে ওয়ানডে বা টি-টোয়েন্টি&amp;mdash;যেকোনো সংস্করণেই আমরা এগিয়ে থাকব।&amp;rsquo;যুক্ত আরব আমিরাতের বিপক্ষে দুই ম্যাচের সিরিজ বাদ দিলে বাংলাদেশ সর্বশেষ টি-টোয়েন্টি সিরিজ জিতেছে ২০২১ সালে, দেশের মাটিতে নিউজিল্যান্ডের বিপক্ষে। হাসানের কথায় আত্মবিশ্বাস এবারও সে রকম কিছুই করে দেখানোর, &amp;lsquo;মোমেন্টাম যেহেতু আমাদের দিকে আছে, ইনশা আল্লাহ ভালো কিছু হবে। অধিনায়কও আমাদের সাহস দিচ্ছেন।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;মিরপুরে কাল নেট অনুশীলন না করলেও মাঝ উইকেটে বড় শটের অনুশীলন করেছেন সাকিব। অবশ্য নেটের দিকে গেছেন অন্য ব্যাটসম্যানদের সাহস জোগাতে। দলের মধ্যে এরই মধ্য অধিনায়ক এই বার্তাটা ছড়িয়ে দিতে পেরেছেন যে টি&amp;ndash;টোয়েন্টিতে এই দলটাই সেরা। হাসানও সে বিশ্বাসের বাইরে নন, &amp;lsquo;এ মুহূর্তে আমাদের যে টি-টোয়েন্টি দলটা আছে, আমি মনে করি তারাই সেরা। সবাই প্রাণশক্তিতে ভরপুর, শেষ পর্যন্ত লড়াই করে। এটা ধরে রেখে এগিয়ে যেতে পারলে ওয়ানডে বা টি-টোয়েন্টি&amp;mdash;যেকোনো সংস্করণেই আমরা এগিয়ে থাকব।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug92.webp&quot; style=&quot;height:427px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;অনুশীলনে সাকিব&amp;ndash;শামীম&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রথম ম্যাচে তিন পেসারের সঙ্গে দুই বাঁহাতি স্পিনার নিয়ে একাদশ সাজিয়েছিল বাংলাদেশ। উইকেট পেয়েছিলেন সব বোলারই। অবশ্য ইংল্যান্ড দলে বাঁহাতিদের উপস্থিতি মিরপুরে একজন অফ স্পিনার খেলানোর চিন্তা আনতেই পারে বাংলাদেশ টিম ম্যানেজমেন্টর মস্তিষ্কে। সে ক্ষেত্রে মেহেদী হাসান মিরাজের আজ খেলার সুযোগ হলেও হতে পারে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/120323f3f39d71bbe0dd4.webp', 'গতকাল অনুশীলনে কোচের সঙ্গে অধিনায়ক সাকিব', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-12 08:33:51', 1, 1);
INSERT INTO `samojugc_news_datatable` (`id`, `datatable`, `admin_id`, `category_id`, `title`, `keywords`, `description`, `thumbnail`, `teaser`, `link`, `liked`, `unliked`, `watched`, `date`, `topnews`, `status`) VALUES
(281, 'samojugc_datatable', 5, 62, 'মেহজাবীনের ৫০ লাখ অথবা ফারিয়ার ‘হিংসা’', 'মেহজাবীনের ৫০ লাখ অথবা ফারিয়ার ‘হিংসা’', '&lt;p&gt;নিয়মিতই সামাজিক যোগাযোগমাধ্যমে ভক্তদের জন্য ছবি পোস্ট করেন তারকারা। সেসব ছবি অনেক সময় বলে দেয় তারকাদের মনের কথা, কাজের কথা। ভক্তদের জন্য সামাজিক যোগাযোগমাধ্যমে পোস্ট করা ছবিতে জেনে নেওয়া যাক তারকাদের যাপিত জীবনের গল্প।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug94.webp&quot; style=&quot;height:598px; width:720px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ভক্তদের সকালের শুভেচ্ছা জানিয়ে ছবিটি পোস্ট করেছেন অভিনেতা ইয়াশ রোহান। সম্প্রীতি হইচইয়ের ওয়েব সিরিজ &amp;lsquo;বুকের মধ্যে আগুন&amp;rsquo;-এ দেখা গেছে এই অভিনেতাকে। এই সিরিজে তিনি ছাড়া আরও অভিনয় করছেন অভিনেতা জিয়াউল ফারুক অপূর্ব, তমা মির্জা, তানিয়া আহমেদ, তারিক আনাম খান, শাহনাজ সুমি, আবু হোরায়রা তানভীর প্রমুখ&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug95.webp&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;চিত্রনায়িকা অপু বিশ্বাস ভক্তদের জন্য সামাজিক যোগাযোগমাধ্যম ফেসবুকে বেশ কিছু ছবি শেয়ার করে লিখেছেন, &amp;lsquo;আত্মবিশ্বাস মানুষকে অনেক দূর এগিয়ে নিয়ে যায়।&amp;rsquo; অপু বিশ্বাসকে সামনে সরকারি অনুদানে তাঁর প্রযোজিত &amp;lsquo;লাল শাড়ি&amp;rsquo; সিনেমায় দেখা যাবে। পরে &amp;lsquo;ছায়াবাজি&amp;rsquo; শিরোনামে অন্য আরেকটি সিনেমায়ও দেখা যাবে তাঁকে&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug96.webp&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;lsquo;ব্যাচেলর পয়েন্ট&amp;rsquo; নাটকের &amp;lsquo;অন্তরা&amp;rsquo; চরিত্র করে জনপ্রিয়তা পান অভিনেত্রী ফারিয়া শাহরিন। ছবিটি ফেসবুকে লিখেছেন, &amp;lsquo;প্রধানমন্ত্রীর কাছ থেকে সবার অ্যাওয়ার্ড নেওয়া দেখে খুব হিংসা লাগল। প্রধানমন্ত্রীর কাছ থেকে অ্যাওয়ার্ড নেওয়ার জন্য হলেও একটা সিনেমা করতে চাই। স্বপ্ন দেখতে তো আর টাকা লাগে না, একটু না হয় দেখি। যাঁরা অ্যাওয়ার্ড পেয়েছেন, তাঁরা কত ভাগ্যবান। হিংসা লাগলেও যাঁরা পেয়েছেন, তাঁদের জন্য শুভকামনা&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug97.webp&quot; style=&quot;height:480px; width:288px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;সম্প্রীতি মুক্তিপ্রাপ্ত ওয়েব সিনেমা &amp;lsquo;ফ্রাইডে&amp;rsquo;তে অভিনয় করা অভিনেত্রী নীলাঞ্জনা নীল ছবিটি পোস্ট করে সামাজিক যোগাযোগমাধ্যম ফেসবুকে লিখেছেন, &amp;lsquo;কাজল করে রাখব তোমায়, রাখব আমার চোখের কোণে।&amp;rsquo; এ সিনেমায় এই অভিনেত্রী ছাড়া আরও আছেন তমা মির্জা, নাসির উদ্দিন খান, ফারজানা ছবি প্রমুখ&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug98.webp&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ইনস্টাগ্রামে মেহজাবীন চৌধুরীর অনুসারী ৫০ লাখ পূর্ণ হয়েছে। এই অর্জনটিকে মেহজাবীন কেক কেটে উদ্যাপন করেছেন&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug99.webp&quot; style=&quot;height:900px; width:720px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ভক্তদের জন্য সামাজিক যোগাযোগমাধ্যম ফেসবুকে নিয়মিত ছবি শেয়ার করেন অভিনেত্রী আজমেরী হক বাঁধন। সম্প্রীতি &amp;lsquo;রেহানা মরিয়ম নূর&amp;rsquo; চলচ্চিত্রের জন্য শ্রেষ্ঠ অভিনেত্রীর পুরস্কার জিতেছেন এই অভিনেত্রী&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug100.webp&quot; style=&quot;height:960px; width:634px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ছবিটি পোস্ট করে অভিনেত্রী জাকিয়া বারী মম লিখেছেন, &amp;lsquo;আমার শিক্ষক নাট্যাচার্য সেলিম আল দীন ২০২৩-এর স্বাধীনতা পুরস্কার প্রাপ্তিতে আমরা আনন্দিত। আচার্য আপনাকে বিনম্র শ্রদ্ধা। এই ছবিটাই সবচেয়ে প্রিয়।&amp;rsquo; জাতীয় চলচ্চিত্র পুরস্কারপ্রাপ্ত এই অভিনেত্রী অভিনীত সিনেমা &amp;lsquo;ওরা ৭ জন&amp;rsquo; মুক্তি পেয়েছে ৩ মার্চ। মুক্তিযুদ্ধের প্রেক্ষাপটে নির্মাণ করা হয়েছে এই সিনেমাটি&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/samojug101.webp&quot; style=&quot;height:723px; width:720px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;lsquo;আলহামদুলিল্লাহ&amp;rsquo; লিখে ছবিটি পোস্ট করেছেন অভিনেতা সিয়াম আহমেদ। &amp;lsquo;মৃধা বনাম মৃধা&amp;rsquo; সিনেমার জন্য সম্প্রীতি &amp;lsquo;জাতীয় চলচ্চিত্র পুরস্কার ২০২১&amp;rsquo;-এ সেরা অভিনেতার পুরস্কার জিতেছেন এই অভিনেতা। এটি তাঁর দ্বিতীয় চলচ্চিত্র পুরস্কার&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/102.webp&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;সম্প্রতি মুক্তি পেয়েছে অভিনেতা জিয়াউল ফারুক অপূর্ব অভিনীত &amp;lsquo;বুকের মধ্যে আগুন&amp;rsquo; সিরিজটি। এই সিরিজে পুলিশ অফিসারের ভূমিকায় দেখা গেছে অপূর্বকে। ঈদে সাবিলা নুরের সঙ্গে অভিনীত তাঁর নাটক &amp;lsquo;কদমবনে বৃষ্টি&amp;rsquo; দেখা যাবে&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/103.webp&quot; style=&quot;height:720px; width:720px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;সূর্যাস্তের সময় তোলা বেশ কিছু ছবি সামাজিক যোগাযোগমাধ্যমে ভক্তদের সঙ্গে শেয়ার করেছেন অভিনেত্রী সাফা কবির&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/104.webp&quot; style=&quot;height:900px; width:720px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ক্লোজআপ এই সময়ের কাছে আসার গল্পে &amp;lsquo;সময় সব জানে&amp;rsquo;-তে অভিনয় করে প্রশংসা কুড়িয়েছেন অভিনেত্রী তানজিম সাইয়ারা তটিনী। এবার প্রথমবারের মতো অভিনেতা তৌসিফ মাহবুব এর সঙ্গে জুটি বেঁধেছেন এই অভিনেত্রী। আগামী ঈদে দেখা যাবে তাঁদের নাটক &amp;lsquo;শেষ ঘুম&amp;rsquo;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/120323bf6965e6034c801.webp', 'প্রতীকী ছবি', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-12 09:00:05', 1, 1),
(282, 'samojugc_datatable', 5, 63, 'যে মেডিকেল কলেজের এক-তৃতীয়াংশ শিক্ষার্থীই বিদেশি', 'যে মেডিকেল কলেজের এক-তৃতীয়াংশ শিক্ষার্থীই বিদেশি', '&lt;p&gt;বগুড়ার টিএমএসএস মেডিকেল কলেজে (টিএমসি) পা রেখেছিলাম ফাল্গুনের এক বিকেলে। করতোয়া নদীর পাশে সবুজে ঘেরা ক্যাম্পাস দেখে মন ভালো হয়ে যায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;এমবিবিএস পঞ্চম বর্ষের শিক্ষার্থী শারীকা শাহরীন তখন &amp;lsquo;স্টুডেন্ট ডে&amp;rsquo; উপলক্ষে আয়োজিত বার্ষিক সাংস্কৃতিক সন্ধ্যার মহড়ায় ছুটছেন। জানালেন, মেডিকেলের কঠিন শিক্ষাজীবন শিক্ষার্থীদের কাছে আনন্দময় করতেই নানা রকম সাংস্কৃতিক অনুষ্ঠানের আয়োজন করা হয়। নাচ ও গানের খণ্ডকালীন শিক্ষকও আছেন এখানে। পরিবার থেকে দূরে পাঁচটি আবাসিক হোস্টেলে শিক্ষার্থীরা থাকেন। দেশি-বিদেশি ছাত্রছাত্রী মিলে এখানে গড়ে উঠেছে আরেক পরিবার।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;একনজরে&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;২০০৮ সালে বেসরকারি মেডিকেল কলেজটির যাত্রা শুরু হয়। বেসরকারি সংস্থা টিএমএসএসের নির্বাহী পরিচালক হোসেনে-আরা বেগম এর প্রতিষ্ঠাতা। অধ্যক্ষের দায়িত্ব পালন করছেন ডা. মো. জাকির হোসেন। তিনি রংপুর মেডিকেল কলেজের সাবেক অধ্যক্ষ।&lt;/p&gt;\r\n\r\n&lt;p&gt;বগুড়া শহর থেকে প্রায় ৬ কিলোমিটার উত্তরে ঢাকা-রংপুর মহাসড়কের পাশে ৯ একর জায়গাজুড়ে টিএমএসএস মেডিকেল কলেজ। বর্তমানে কলেজে এমবিবিএস কোর্সে (১৫তম ব্যাচ) ৪৭৯ জন দেশি, ৩২৪ জন বিদেশিসহ (২৬২ জন ভারতীয় এবং ৬২ জন নেপালি) ৮০৩ জন শিক্ষার্থী পড়ালেখা করছেন। এ ছাড়া ডেন্টাল বা বিডিএস কোর্সে (১১তম ব্যাচ) ২০৮ জন এবং বঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়ের অধীন (বিএসএমএমইউ) ট্রান্সফিউশন মেডিসিন বিভাগে পোস্ট গ্র্যাজুয়েশন কোর্সে ৫ জন শিক্ষার্থী আছেন। নতুন করে এনাটমি, প্যাথলজি, শিশু, চক্ষু, ইএনটি বিভাগসহ আরও পাঁচটি বিষয়ে পোস্ট গ্র্যাজুয়েশন কোর্স চালু হয়েছে। শিক্ষক আছেন ২৭০ জন।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/105.webp&quot; style=&quot;height:437px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;বিদেশি শিক্ষার্থীদের একাংশ&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;বিদেশি বন্ধুরা&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;টিএমসি ক্যাম্পাসের টু-ইন হোস্টেলে গেলে পাশাপাশি দুটি ছাত্রাবাস চোখে পড়ে। একটি দেশি, অন্যটি ভিনদেশি শিক্ষার্থীদের জন্য। থাকার জায়গা ভিন্ন হলেও পড়ালেখা, আড্ডা, খেলাধুলা বা সংস্কৃতিচর্চায় কোনো ভেদাভেদ নেই। মিলেমিশেই হয় সব আয়োজন। নিজেদের ভাষায় গান ও নাচে অংশ নেন বিদেশি শিক্ষার্থীরাও। ভারতের আসাম থেকে আসা নয়না বড়ুয়া যেমন মণিপুরি নাচের জন্য ক্যাম্পাসে রীতিমতো তারকাখ্যাতি পেয়ে গেছেন। মণিপুরি নাচে মন কেড়েছেন ভারত থেকে আসা অরিজিৎ সিংও। ভারতীয় উপহাইকমিশনার এখানে এসে বিদেশি শিক্ষার্থীদের পরিবেশনা দেখে মুগ্ধ হয়েছিলেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;মাসুরা হোস্টেলের আবাসিক ছাত্রী সুমাইয়া আকতার তাবাসসুম বলেন, &amp;lsquo;বিদেশি শিক্ষার্থীদের সঙ্গে আমাদের সম্পর্ক অত্যন্ত বন্ধুত্বপূর্ণ। আসাম থেকে আসা আসমা তারা এবং নেপাল থেকে আসা রেগা শ্রেষ্ঠা আমার সঙ্গেই পড়ে। তারা কোনো কিছু রান্না করলে আমাদের খেতে ডাকে। আবার আমরাও ভালো কিছু রান্না করলে তাদের আমন্ত্রণ জানাই। আমাদের বন্ধুত্বটা অন্য রকম।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;নেপালের রেগা শ্রেষ্ঠা বলেন, &amp;lsquo;বাঙালি সংস্কৃতি আমার খুব ভালো লাগে। প্রথম দিকে কিছুটা ভাষাগত সমস্যা হলেও এখন হয় না। এখানকার সবাই খুব আন্তরিক।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;আনন্দময় শিক্ষা&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;আমারা যেদিন টিএমসি ক্যাম্পাসে হাজির হয়েছি, সেদিন স্টুডেন্ট উইক উপলক্ষে সাংস্কৃতিক দল নিয়ে চলছিল মহড়া। জানা গেল, সাংস্কৃতিক কর্মকাণ্ডে ক্যাম্পাসের প্রাণ&amp;mdash;কমিউনিটি মেডিসিন বিভাগের অধ্যাপক আজফারুল হাবিব। তাঁর নেতৃত্বেই সারা বছর চলে গান, নাচ, আবৃত্তিসহ সাংস্কৃতিক চর্চা। বিডিএস তৃতীয় বর্ষের শিক্ষার্থী সুমাইয়া আকতার জানালেন, ক্যাম্পাসকে সব সময় মাতিয়ে রাখেন তাঁদের আরেক শিক্ষক ডা. নূর-এ ফারজানা। নাচ, গান, অভিনয় শেখান তিনি।&lt;/p&gt;\r\n\r\n&lt;p&gt;শিক্ষার্থীরাই উদ্যোগ নিয়ে চালু করেছেন ব্লাড ডোনেশন ক্লাব। আছে টিএমসি মেডিসিন ক্লাব, জার্নাল ক্লাব, স্পোর্টস ক্লাব, নাট্যদল ও ফটোগ্রাফি সোসাইটি ক্লাব। আন্তমেডিকেল ফুটবল টুর্নামেন্টে সাফল্য দেখিয়েছে স্পোর্টস ক্লাব।&lt;/p&gt;\r\n\r\n&lt;p&gt;এমবিবিএস চতুর্থ বর্ষের জিলকার নাঈম বলেন, &amp;lsquo;যেকোনো উৎসব-আয়োজনে এবং মানবিক কর্মকাণ্ডে ক্যাম্পাসভিত্তিক সংগঠনগুলো একে অপরের সাহায্যে এগিয়ে আসে। আমাদের এখানে পড়ালেখা শেষে চিকিৎসকেরা ছড়িয়ে পড়ছেন দেশের নানা জেলায়।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;স্টুডেন্ট উইকে যেমন সপ্তাহজুড়ে ক্রীড়া ও সাংস্কৃতিক সন্ধ্যার আয়োজন থাকে। জাতীয় ও আন্তর্জাতিক দিবসগুলোও উদ্&amp;zwnj;যাপন করা হয় গুরুত্বের সঙ্গে। হয় নাটকের মঞ্চায়ন। চিকিৎসাসেবায় শিক্ষার্থীদের দক্ষতা উন্নয়নে মেডিকেল স্কিল সেন্টার ও স্কিল ল্যাবরেটরি চালু হয়েছে। দেশি-বিদেশি বিশেষজ্ঞ চিকিৎসকদের নিয়ে সেমিনারও আয়োজন হয় এখানে।&lt;/p&gt;\r\n\r\n&lt;p&gt;টিএমসি কলেজ দেখভালের দায়িত্বে আছেন টিএমএসএসের উপনির্বাহী পরিচালক (স্বাস্থ্য) মতিউর রহমান। তিনি বলেন, &amp;lsquo;দক্ষতাসম্পন্ন ও মানবিক চিকিৎসক তৈরি করাই টিএমসির লক্ষ্য। পড়ালেখাকে আনন্দময় করতে এখানে ক্রীড়া-সংস্কৃতিসহ নানা সৃজনশীল কর্মকাণ্ডে শিক্ষার্থীদের ব্যস্ত রাখা হয়।&amp;rsquo; টিএমসির শিক্ষার্থীদের হাতেকলমে শিক্ষা ও শিক্ষানবিশির সুবিধার জন্য এখানে চালু আছে এক হাজার শয্যাবিশিষ্ট রফাতুল্লাহ কমিউনিটি হাসপাতাল এবং ২৫০ শয্যার ক্যানসার হাসপাতাল।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/120323be6d53f565033cd.webp', 'বগুড়া শহর থেকে প্রায় ৬ কিলোমিটার উত্তরে ঢাকা-রংপুর মহাসড়কের পাশে ৯ একর জায়গাজুড়ে টিএমএসএস মেডিকেল কলেজ', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-12 09:05:14', 0, 1),
(283, 'samojugc_datatable', 5, 62, 'ব্ল্যাকপিঙ্কের জিসুর একক অ্যালবাম আসছে', 'ব্ল্যাকপিঙ্কের জিসুর একক অ্যালবাম আসছে', '&lt;p&gt;দক্ষিণ কোরিয়ার আলোচিত ব্যান্ড ব্ল্যাকপিঙ্কের জেনি, রোজ ও লিসার পর এবার একক অ্যালবামে নাম লেখালেন এর আরেক সদস্য জিসু। মাসদুয়েক আগেই একক অ্যালবাম নিয়ে গণমাধ্যমের শিরোনামে এসেছিলেন জিসু। এবার আনুষ্ঠানিকভাবে অ্যালবামের মুক্তির দিনক্ষণ জানিয়েছে ব্ল্যাকপিঙ্কের এজেন্সি ওয়াইজি এন্টারটেইনমে&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/107.webp&quot; style=&quot;height:640px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;অ্যালবামের টিজার ছবি&lt;/p&gt;\r\n\r\n&lt;p&gt;এজেন্সির বরাতে দ্য কোরিয়া টাইমস লিখেছে, ৩১ মার্চ জিসুর প্রথম একক অ্যালবাম মুক্তি পাবে। অ্যালবামের নাম &amp;lsquo;মি&amp;rsquo;। অ্যালবাম সম্পর্কে ধারণা দিতে একটি টিজার ছবি প্রকাশ করেছে ওয়াইজি এন্টারটেইনমেন্ট। ঘন সবুজ মাঠের ওপর লাল কাপড়ের টুকরা ছড়িয়ে থাকতে দেখা গেছে। ছবির উপরে লেখা হয়েছে, &amp;lsquo;শিগগিরই আসছেন জিসু&amp;rsquo;।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/108.webp&quot; style=&quot;height:800px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;জিসু&lt;/p&gt;\r\n\r\n&lt;p&gt;২০১৬ সালে ব্ল্যাকপিঙ্কে নাম লেখানোর আগে বেশ কয়েকটি ড্রামা সিরিজে অভিনয় করেছেন জিসু, দেখা গেছে মিউজিক ভিডিওতেও।&lt;br /&gt;\r\nদক্ষিণ কোরিয়ার আরেক ব্যান্ড বিটিএসের পাশাপাশি ব্ল্যাকপিঙ্কেরও বিশ্বজুড়ে পরিচিতি রয়েছে। দলগতভাবে অ্যালবাম প্রকাশের পাশাপাশি এককভাবেও অ্যালবাম প্রকাশ করছেন। বাকি তিন শিল্পীর মধ্যে ২০১৮ সালে জেনি, ২০২১ সালে রোজ ও লিসার একক অ্যালবাম প্রকাশ করা হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/109.webp&quot; style=&quot;height:800px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ব্ল্যাকপিঙ্কে নাম লেখানোর আগে অভিনয় করতেন তিনি&lt;/p&gt;\r\n\r\n&lt;p&gt;পাশাপাশি স্ট্রেজ শোতেও নিয়মিত দেখা যাচ্ছে ব্ল্যাকপিঙ্ককে; উত্তর আমেরিকা ও ইউরোপে গানের সফর শেষ করেছে ব্যান্ডটি। এরপর এশিয়ার কয়েকটি দেশেও গান করেছেন লিসা, জিসুরা।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/120323c047a382135babc.webp', 'মাসদুয়েক আগেই একক অ্যালবাম নিয়ে গণমাধ্যমের শিরোনামে এসেছিলেন জিসু', 'https://facebook.com/samojugnews', 0, 0, '0', '2023-03-12 09:12:49', 1, 1),
(284, 'samojugc_datatable', 5, 56, 'ওবায়দুল কাদের বললেন, আদানির বিদ্যুৎ কেনা নিয়ে বিএনপির অভিযোগ মনগড়া', 'ওবায়দুল কাদের বললেন, আদানির বিদ্যুৎ কেনা নিয়ে বিএনপির অভিযোগ মনগড়া', '&lt;p&gt;আদানি গ্রুপের সঙ্গে বিদ্যুৎ কেনা নিয়ে বিএনপি মনগড়া অভিযোগ করছে বলে মন্তব্য করেছেন আওয়ামী লীগের সাধারণ সম্পাদক ওবায়দুল কাদের। তিনি বলেছেন, বিএনপির মহাসচিব মির্জা ফখরুল ইসলাম আলমগীর আদানি গ্রুপের সঙ্গে বিদ্যুৎ ক্রয়ের চুক্তি প্রসঙ্গে হীন রাজনৈতিক স্বার্থ হাসিলের উদ্দেশ্যে মনগড়া ও বানোয়াট মন্তব্য করেছেন।&lt;/p&gt;\r\n\r\n&lt;blockquote&gt;আমরা দেখি, ক্ষমতা দখলের জন্য কীভাবে বিএনপি নেতারা বিদেশি দূতাবাসগুলোতে এবং বিভিন্ন আন্তর্জাতিক মহলে দেশবিরোধী ষড়যন্ত্রে লিপ্ত রয়েছে। বিদেশি প্রভুদের স্বার্থ রক্ষার মুচলেকা দিয়ে যারা ক্ষমতায় আসে, তারা কখনোই জনগণের কল্যাণ করতে পারে না।&lt;/blockquote&gt;\r\n\r\n&lt;p&gt;ওবায়দুল কাদের, আওয়ামী লীগের সাধারণ সম্পাদক&lt;/p&gt;\r\n\r\n&lt;p&gt;আজ রোববার গণমাধ্যমে পাঠানো এক সংবাদ বিবৃতিতে এ অভিযোগ করেন ওবায়দুল কাদের। এর আগে গত বৃহস্পতিবার এক কর্মসূচিতে মির্জা ফখরুল ইসলাম আলমগীর বলেছিলেন, &amp;lsquo;আদানির গ্রুপের সঙ্গে যেই চুক্তি করা হয়েছে, সেটা দেশবিরোধী। জনগণবিরোধী এই চুক্তি বাতিল করতে হবে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;নিরবচ্ছিন্নভাবে জনগণের বিদ্যুৎ&amp;ndash;সুবিধা প্রাপ্তি নিশ্চিত করার লক্ষ্যে সরকার আদানির কাছ থেকে একটি লাভজনক চুক্তির মাধ্যমে বিদ্যুৎ কেনার উদ্যোগ গ্রহণ করেছে বলে দাবি করেন সড়ক পরিবহন ও সেতুমন্ত্রী ওবায়দুল কাদের। তিনি বলেন, ভারতের একটি কোম্পানিকে দিয়ে দুই বিলিয়ন ডলার এককালীন বিনিয়োগ করিয়ে, দেশটির অভ্যন্তরে ৬০০ একর জমির ওপর বিদ্যুৎ কেন্দ্র বানিয়ে, ভারতের আকাশে কয়লা পুড়িয়ে যে বিদ্যুৎ উৎপাদন হবে, তা সর্বনিম্ন দামে ক্রয় করে বাংলাদেশে আনা হবে এবং সেটা মানুষ ব্যবহার করবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;বাংলাদেশের জনগণের স্বার্থ রক্ষা করেই আদানির সঙ্গে চুক্তি হয়েছে বলে দাবি করেন আওয়ামী লীগের সাধারণ সম্পাদক। তিনি বলেন, &amp;lsquo;এই চুক্তির ফলে দেশের জনগণ লাভবান হয়েছে। যারা বিদ্যুতের বদলে জনগণকে খাম্বা দিয়েছে, বিদ্যুতের দাবি করায় জনগণের ওপর গুলি চালিয়ে মানুষ হত্যা করেছে, তাদের মুখে বিদ্যুৎ খাতের দুর্নীতি নিয়ে কথা বলা মানায় না।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;আওয়ামী লীগ জনগণের কল্যাণে রাজনীতি করে, জনগণই দলটির শক্তির একমাত্র উৎস বলে মন্তব্য করেন ওবায়দুল কাদের। তিনি বলেন, &amp;lsquo;রাষ্ট্রক্ষমতার জন্য আওয়ামী লীগ কখনো জনগণ ব্যতীত অন্য কারও মুখাপেক্ষী হয়নি। যার জন্য দেশি-বিদেশি সুপরিকল্পিত ষড়যন্ত্রের মাধ্যমে অসংখ্যবার আওয়ামী লীগের নিশ্চিত বিজয় ছিনিয়ে নেওয়া হয়েছে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;১৯৯১ সালের নির্বাচনে বিএনপি পাকিস্তানি গোয়েন্দা সংস্থা আইএসআই থেকে অর্থ নিয়েছিল বলে অভিযোগ করেন ওবায়দুল কাদের। একই সঙ্গে ২০০১ সালে গ্যাস বিক্রির মুচলেকাও দলটি দিয়েছিল বলে তিনি দাবি করেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;ওবায়দুল কাদের বলেন, &amp;lsquo;আমরা দেখি, ক্ষমতা দখলের জন্য কীভাবে বিএনপি নেতারা বিদেশি দূতাবাসগুলোতে এবং বিভিন্ন আন্তর্জাতিক মহলে দেশবিরোধী ষড়যন্ত্রে লিপ্ত রয়েছে। বিদেশি প্রভুদের স্বার্থ রক্ষার মুচলেকা দিয়ে যারা ক্ষমতায় আসে, তারা কখনোই জনগণের কল্যাণ করতে পারে না। বিএনপি-জামায়াত অশুভ জোটের দুঃশাসন, দুর্নীতি, লুটপাট, দুর্বৃত্তায়নই তার জ্বলন্ত উদাহরণ।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;তত্ত্বাবধায়ক সরকার ইস্যুটি একটি ডেড ইস্যু বলে আবারও মন্তব্য করেন আওয়ামী লীগের সাধারণ সম্পাদক। তাঁর দাবি, গণতন্ত্রকামী প্রত্যেকটি মানুষ মাত্রই জানে, জনগণ কর্তৃক নির্বাচিত নয় এমন ব্যক্তি দ্বারা এক মুহূর্তের জন্যও রাষ্ট্র পরিচালনা সম্পূর্ণরূপে গণতন্ত্রের অন্তর্নিহিত আদর্শের পরিপন্থী। তিনি বলেন, &amp;lsquo;অনির্বাচিত ব্যক্তি বা গোষ্ঠী ক্ষমতায় অধিষ্ঠিত হলে জনগণ ক্ষমতাহীন হয়ে পড়ে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/1303232dd1aa08f550fea.webp', 'আওয়ামী লীগের সাধারণ সম্পাদক ওবায়দুল কাদের', 'www.facebook.com/samojugnews', 0, 0, '0', '2023-03-13 05:36:10', 1, 1),
(285, 'samojugc_datatable', 5, 56, 'সাংবাদিকদের সঙ্গে বরাবরই আমার সুসম্পর্ক ছিল: রাষ্ট্রপতি', 'সাংবাদিকদের সঙ্গে বরাবরই আমার সুসম্পর্ক ছিল: রাষ্ট্রপতি', '&lt;p&gt;সাংবাদিকদের সঙ্গে নিজের সুসম্পর্কের কথা উল্লেখ করে রাষ্ট্রপতি মো. আবদুল হামিদ &amp;nbsp;বলেছেন, তিনি তাঁর সুদীর্ঘ রাজনৈতিক জীবনে সততার সঙ্গে রাজনীতি করার চেষ্টা করেছেন ও সাংবাদিকদের অনেক সহযোগিতা পেয়েছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;রোববার সন্ধ্যায় বঙ্গভবনের দরবার হলে বিশিষ্ট সাংবাদিকদের সম্মানে আয়োজিত নৈশভোজে স্মৃতিচারণা করতে গিয়ে রাষ্ট্রপতি এ কথা বলেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;রাষ্ট্রপ্রধান বলেন, &amp;lsquo;সারা জীবন সততার সঙ্গে রাজনীতি করেছি। ৬৪ বছরের রাজনৈতিক জীবনে সাংবাদিকদের কাছ থেকে আমার জন্য নেগেটিভ কিছু পাইনি। সংবাদকর্মীদের কাছে আমি কৃতজ্ঞ।&amp;rsquo; তিনি বলেন, &amp;lsquo;হাওর এলাকার কিছুটা পরিবর্তন আনতে পেরেছি। কোনো সরকারের আমলেই ব্যক্তির জন্য কিছু চাইনি। প্রত্যেক রাজনীতিবিদ যদি এ রকম মনমানসিকতা পোষণ করেন, তাহলে অবশ্যই এলাকার উন্নয়ন হবে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;রাষ্ট্রপতি বক্তৃতাকালে তাঁর বর্ণাঢ্য রাজনৈতিক জীবনের স্মৃতিচারণা করেন এবং দ্বিতীয় মেয়াদে তাঁর অবসরের কথাও বলেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;রাষ্ট্রপতি আবেগাপ্লুত কণ্ঠে বলেন, &amp;lsquo;আর ৪২ দিন পর আমি জনতার মাঝে ফিরে যাব। আমার ভালো লাগছে যে আমি সম্মানজনকভাবে বিদায় নিতে পেরেছি। সবার কাছেই আমি কৃতজ্ঞ।&amp;rsquo; সাংবাদিকদের সঙ্গে নিজের সম্পর্ক নিয়ে তিনি বলেন, &amp;lsquo;বরাবরই সাংবাদিকদের সঙ্গে আমার একটা সুসম্পর্ক ছিল। বিশেষ করে আমি যখন ডেপুটি স্পিকার ছিলাম ও শেষে স্পিকারের দায়িত্ব পালন করা পর্যন্ত আপনাদের সঙ্গে আমার খুবই আন্তরিক সম্পর্ক ছিল।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;রাষ্ট্রপতি আবদুল হামিদের বঙ্গভবনে সাংবাদিকদের সঙ্গে এটাই শেষ নৈশভোজ। আগামী ২৪ এপ্রিল নতুন রাষ্ট্রপতি হিসেবে মো. সাহাবুদ্দিনের শপথ নেওয়ার কথা রয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;রাষ্ট্রপতি দরবার হলের অনুষ্ঠানস্থলে আসেন সন্ধ্যা সাড়ে সাতটায়। তিনি আসার পর দরবার হল প্রাণোচ্ছল হয়ে ওঠে। এ সময় রাষ্ট্রপতি ঘুরে ঘুরে সবার সঙ্গে কুশল বিনিময় করেন। ছবিও তোলেন। প্রটোকল ডিঙিয়েই রাষ্ট্রপতি জুনিয়র-সিনিয়র সব সাংবাদিকের কাছে গিয়ে হাত মেলান। বক্তব্যে রাষ্ট্রপতি সাংবাদিকদের হাওর এলাকায় এবং ঢাকার নিকুঞ্জের নিজ বাসভবনে নিমন্ত্রণ জানান।&lt;/p&gt;\r\n\r\n&lt;p&gt;অনুষ্ঠানে জাতীয় প্রেসক্লাবের সভাপতি ফরিদা ইয়াসমিন, কালবেলা সম্পাদক আবেদ খান, জাতীয় প্রেসক্লাবের সাধারণ সম্পাদক ও ভোরের কাগজ সম্পাদক শ্যামল দত্ত, একাত্তর টিভির সিইও মোজাম্মেল হক বাবু, বিএফইউজের সাবেক সভাপতি ও টিভি টুডে প্রধান সম্পাদক মনজুরুল আহসান বুলবুল, জাতীয় প্রেসক্লাবের সাবেক সভাপতি ও যুগান্তর সম্পাদক সাইফুল আলম, আমাদের নতুন সময় সম্পাদক নাঈমুর রহমান খান, ডিবিসির প্রধান সম্পাদক মনজুরুল ইসলাম, কৃষি উন্নয়ন ও গণমাধ্যম ব্যক্তিত্ব শাইখ সিরাজ, এটিএন বাংলার নির্বাহী সম্পাদক জ ই মামুন, ইনডিপেনডেন্ট টেলিভিশনের প্রধান বার্তা সম্পাদক আশিস সৈকত, পার্লামেন্ট জার্নালিস্টস অ্যাসোসিয়েশনের সাধারণ সম্পাদক নাফিজা দৌলা ও চ্যানেল আইয়ের সাংবাদিক নীলাদ্রি শেখর বক্তব্য দেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;নৈশভোজে অন্যান্যের মধ্যে অংশ নেন বাংলাদেশ সংবাদ সংস্থার (বাসস) ব্যবস্থাপনা পরিচালক ও প্রধান সম্পাদক আবুল কালাম আজাদ, ইউএনবির সম্পাদক ফরিদ হোসেন, বাংলা জার্নাল সম্পাদক শাহজাহান সরদার, বিএফইউজের সভাপতি ওমর ফারুক, মহাসচিব দীপ আজাদ, ডিইউজের সভাপতি সোহেল হায়দার চৌধুরী ও সাধারণ সম্পাদক আকতার হোসেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/130323cdfdab1d9147e71.webp', 'বঙ্গভবনে আজ সাংবাদিকদের সম্মানে আয়োজিত নৈশভোজে স্মৃতিচারণা করেন রাষ্ট্রপতি মো. আবদুল হামিদ', 'www.facebook.com/samojugnews', 0, 0, '0', '2023-03-13 05:40:22', 0, 1),
(286, 'samojugc_datatable', 5, 58, 'রাজশাহী বিশ্ববিদ্যালয়: শান্তিপূর্ণভাবে দাবি আদায়ের পক্ষে সাত ছাত্রসংগঠন, আপাতত আন্দোলন নয়', 'রাজশাহী বিশ্ববিদ্যালয়: শান্তিপূর্ণভাবে দাবি আদায়ের পক্ষে সাত ছাত্রসংগঠন, আপাতত আন্দোলন নয়', '&lt;p&gt;রাজশাহী বিশ্ববিদ্যালয়ের শিক্ষার্থীদের সঙ্গে স্থানীয় লোকজনের সংঘর্ষের ঘটনায় আপাতত কোনো আন্দোলন কর্মসূচিতে অংশ নেবে না সাত ছাত্র সংগঠন। এই ঘটনাকে ঘিরে চলমান বিক্ষোভের মধ্যে রেললাইনে অগ্নিসংযোগের ঘটনায় তাদের কোনো সম্পৃক্ততা নেই উল্লেখ করে সংগঠনগুলো বলছে, তাঁরা শান্তিপূর্ণ উপায়ে শিক্ষার্থীদের অধিকার আদায়ের পক্ষে।&lt;/p&gt;\r\n\r\n&lt;p&gt;সংগঠন সাতটি হচ্ছে বাংলাদেশ ছাত্র ফেডারেশন রাজশাহী বিশ্ববিদ্যালয়, ছাত্র ইউনিয়ন, বিপ্লবী ছাত্র মৈত্রী, সমাজতান্ত্রিক ছাত্র ফ্রন্ট, ছাত্র অধিকার পরিষদ, বিপ্লবী ছাত্র যুব আন্দোলন ও নাগরিক ছাত্র ঐক্য। গতসংবাদ বিজ্ঞপ্তিতে ছাত্রসংগঠনগুলো বলছে, গত শনিবার বিশ্ববিদ্যালয় শিক্ষার্থীদের ওপর বিনোদপুর বাজারের স্থানীয় লোকজনের হামলার পরিপ্রেক্ষিতে বিশ্ববিদ্যালয়ের শিক্ষার্থীরা আন্দোলন করে আসছে। শিক্ষার্থীদের ন্যায্য আন্দোলনে বিশ্ববিদ্যালয়ের ক্রিয়াশীল প্রগতিশীল ও গণতান্ত্রিক ছাত্রসংগঠনগুলো সংহতি জানিয়ে তাদের সঙ্গে আন্দোলনে যুক্ত হয়। তাঁরা বরাবর শিক্ষার্থী অধিকার প্রতিষ্ঠা এবং নিরাপদ ক্যাম্পাসের দাবিতে আন্দোলন করে আসছেন। সম্প্রতি চলমান আন্দোলনকেও শান্তিপূর্ণভাবে পরিচালনার জন্য তাঁরা চেষ্টা করেছেন। শিক্ষার্থীদের বৃহত্তর স্বার্থের লড়াইয়ে তাঁরা অতীতেও ছাত্রদের সংগঠিত করার চেষ্টা করেছেন এবং ভবিষ্যতেও এই ধারা অব্যাহত থাকবে।কাল রোববার দিনগত রাতে ছাত্র ফেডারেশন বিশ্ববিদ্যালয় শাখার সভাপতি রায়হান আফরোজ স্বাক্ষরিত সংবাদ বিজ্ঞপ্তিতে এই তথ্য জানানো হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/3.webp&quot; style=&quot;height:480px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ঢাকা&amp;ndash;রাজশাহী রেলপথে আগুন জ্বালিয়ে বিক্ষোভ করেন শিক্ষার্থীরা। রোববার সন্ধ্যায় রাজশাহী বিশ্ববিদ্যালয়ের চারুকলা অনুষদের সামনে&lt;/p&gt;\r\n\r\n&lt;p&gt;সংগঠনগুলো বলছে, এই আন্দোলনকে ভিন্ন খাতে প্রবাহিত করার চেষ্টা চলছে। গত রাতে একটি গোষ্ঠী চারুকলা গেটসংলগ্ন রেললাইনে অবস্থান করে। যার ফলে রেল যোগাযোগ বিচ্ছিন্ন হয়ে পড়েছে। এটা কোনো আন্দোলনের চিত্র হতে পারে না। যারা সেখানে অবস্থান করছেন, তাঁরা একটা অস্থিতিশীল পরিস্থিতি তৈরি করার চেষ্টা করছে বলে তাঁরা ধারণা করছেন। তাঁদের সঙ্গে এই ছাত্রসংগঠনগুলোর কোনো সম্পৃক্ততা নেই।&lt;/p&gt;\r\n\r\n&lt;p&gt;এর আগে গতকাল বিকেলে সংগঠনগুলোর প্রতিনিধিরা উপাচার্যের বাসভবনে বেশ কিছু দাবিদাওয়া নিয়ে যান। তাঁদের দাবিগুলোর মধ্যে ছিল ক্যাম্পাস ও ক্যাম্পাসের বাইরের অবস্থানরত শিক্ষার্থীদের নিরাপত্তা নিশ্চিত করা, দায়িত্ব পালনে ব্যর্থ প্রক্টরিয়াল বডির অপসারণ, দায়িত্ব পালনে ব্যর্থ উপাচার্যকে শিক্ষার্থীদের কাছে ক্ষমা চাওয়া, আহত শিক্ষার্থীদের চিকিৎসা নিশ্চিত করে সব ব্যয় প্রশাসনকে বহন করা।&lt;/p&gt;\r\n\r\n&lt;p&gt;ছাত্র ফেডারেশন বিশ্ববিদ্যালয় শাখার সভাপতি রায়হান আফরোজ প্রথম আলোকে বলেন, তাঁরা শান্তিপূর্ণভাবে অধিকার আদায় করতে চান। গতকাল তাঁরা উপাচার্যের কাছে দাবিদাওয়া দিয়েছেন। উপাচার্য দাবি মানার বিষয়ে আশ্বস্ত করেছেন। তাই আজ সোমবার তাঁরা কোনো কর্মসূচি পালন করছেন না। পরিস্থিতি অনুযায়ী পরে আন্দোলনের ঘোষণা করা হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;গত শনিবার বগুড়া থেকে বাসে করে রাজশাহীতে আসছিলেন বিশ্ববিদ্যালয়ের এক শিক্ষার্থী। বাসের আসনে বসা নিয়ে তাঁর সঙ্গে ওই বাসের চালক ও সহকারীর বচসা হয়। পরে বাসটি বিশ্ববিদ্যালয়ের বিনোদপুর ফটকে পৌঁছালে তাঁদের সঙ্গে আবার বাগ্&amp;zwnj;বিতণ্ডায় জড়ান ওই শিক্ষার্থী। এ সময় স্থানীয় এক ব্যক্তি ওই শিক্ষার্থীর সঙ্গে তর্কে জড়ান। একপর্যায়ে উভয়ের মধ্যে ধাক্কাধাক্কির ঘটনা ঘটে। পরে শিক্ষার্থীরা জড়ো হয়ে ওই দোকানদারের ওপর চড়াও হলে স্থানীয় ব্যবসায়ীরা একজোট হয়ে বিশ্ববিদ্যালয়ের শিক্ষার্থীদের ওপর হামলা করেন। তখন শিক্ষার্থীরাও তাঁদের পাল্টা ধাওয়া দেন। এর পর থেকে রণক্ষেত্রে পরিণত হয় পুরো বিনোদপুর এলাকা।&lt;/p&gt;\r\n\r\n&lt;p&gt;স্থানীয় ব্যক্তিদের হামলা-সংঘর্ষ ও পরিস্থিতি নিয়ন্ত্রণে আইনশৃঙ্খলা রক্ষাকারী বাহিনীর ছোড়া কাঁদানে গ্যাসের শেলে আহত হয়েছেন দুই শতাধিক শিক্ষার্থী। তাঁদের মধ্যে এখনো ৯০ জন রাজশাহী মেডিকেল কলেজ (রামেক) হাসপাতালে চিকিৎসাধীন। হাসপাতালের নিবিড় পরিচর্যা কেন্দ্রে (আইসিইউ) আছেন এক শিক্ষার্থী। ছয়জন শিক্ষার্থীর চোখে অস্ত্রোপচার করা হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/13032392ea6ab95b0255e.webp', 'রাজশাহী বিশ্ববিদ্যালয়ের প্যারিস রোডে উপাচার্যের বাসভবনের সামনে অবস্থান নিয়ে বিক্ষোভ করেন শিক্ষার্থীরা। গতকাল রোববার বেলা সাড়ে ১১টায়', 'www.facebook.com/samojugnews', 0, 0, '0', '2023-03-13 05:53:16', 1, 1),
(287, 'samojugc_datatable', 5, 58, 'গাজীপুরে ডাকাতদের বাধা দেওয়ায় কলেজছাত্রকে শ্বাসরোধে হত্যা', 'গাজীপুরে ডাকাতদের বাধা দেওয়ায় কলেজছাত্রকে শ্বাসরোধে হত্যা', '&lt;p&gt;গাজীপুরের সালনায় এক কলেজছাত্রকে শ্বাসরোধে হত্যা করেছে দুর্বৃত্তরা। এ সময়ে তারা ওই বাড়িতে স্বর্ণালংকারসহ অন্য মালামাল লুট করে। গতকাল রোববার দিবাগত মধ্যরাতে সালনার পশ্চিম মোল্লাপাড়া এলাকায় এ ঘটনা ঘটে।&lt;/p&gt;\r\n\r\n&lt;p&gt;নিহত কলেজছাত্রের নাম মহিউর সুনান চৌধুরী (১৮)। তিনি ওই এলাকার এ কে এম জালাল উদ্দিনের ছেলে। গাজীপুর শহরের কাজী আজিম উদ্দিন কলেজের উচ্চমাধ্যমিক প্রথম বর্ষের শিক্ষার্থী ছিলেন তিনি।&lt;/p&gt;\r\n\r\n&lt;p&gt;গাজীপুর মহানগর সদর থানার উপপরিদর্শক (এসআই) মো. বায়েজিদ জানান, গতকাল দিবাগত রাত তিনটার দিকে একদল দুর্বৃত্ত ওই বাড়ির গ্রিল কেটে ভেতরে ঢোকে। দুর্বৃত্তরা বাড়িতে থাকা স্বর্ণালংকারসহ মূল্যবান মালামাল লুট করে। এ সময়ে কলেজছাত্র মহিউর তাদের বাধা দিলে তাঁকে দুর্বৃত্তরা শ্বাসরোধে হত্যা করে পালিয়ে যায়। এটি ডাকাতির বা লুটের ঘটনা, নাকি পূর্বশত্রুতার জেরে হত্যাকাণ্ড, সেটি তদন্ত ছাড়া বলা সম্ভব নয়। প্রকৃত ঘটনা জানার চেষ্টা চলছে। ঘটনাস্থলে পুলিশের ঊর্ধ্বতন কর্মকর্তা, গোয়েন্দা, সিআইডি ও বিপিআই পুলিশ বিভিন্ন আলামত সংগ্রহে কাজ করছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;নিহত কলেজছাত্রের মা মোছা. মেহজাবিন বলেন, রাত তিনটার দিকে কয়েক যুবক তাঁদের বাড়ির গ্রিল কেটে ভেতরে ঢুকে কালো কাপড় দিয়ে তাঁর চোখ বেঁধে ফেলে। পরে ঘরের আলমারি ভেঙে ৫ ভরি স্বর্ণালংকার ও ২৫ থেকে ৩০ হাজার টাকা লুট করে। এ সময়ে তাঁর ছেলে বাধা দিলে তাঁকে শ্বাসরোধে হত্যা করে পালিয়ে যায়। তিনি আরও জানান, তাঁর ছেলে মহিউর কম্পিউটারে গেমস খেলতেন এবং গেমের আইডি বিক্রি করতেন স্থানীয় ছেলেদের কাছে। কয়েক মাস আগে এটি নিয়ে তাঁদের সঙ্গে ঝামেলা হয়। কিন্তু পরবর্তী সময়ে সেটি মীমাংসাও হয়েছে। তাঁর সন্দেহ, পূর্বশত্রুতার জেরে এটি ঘটতে পারে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/130323d6c86278d39eae1.webp', 'গাজীপুরে নিহত কলেজছাত্র মহিউর সুনান চৌধুরী', 'www.facebook.com/samojugnews', 0, 0, '0', '2023-03-13 05:58:53', 0, 1),
(288, 'samojugc_datatable', 5, 58, 'আহমদিয়াদের ওপর হামলার ঘটনায় আরও তিন মামলা, গ্রেপ্তার আরও ৩', 'আহমদিয়াদের ওপর হামলার ঘটনায় আরও তিন মামলা, গ্রেপ্তার আরও ৩', '&lt;p&gt;পঞ্চগড়ে আহমদিয়া সম্প্রদায়ের &amp;lsquo;সালানা জলসা&amp;rsquo; বন্ধের দাবিতে বিক্ষোভ ঘিরে সংঘর্ষ, বাড়িঘরে হামলা ও অগ্নিসংযোগের ঘটনায় আরও তিনজনকে গ্রেপ্তার করেছে পুলিশ। এ নিয়ে মোট গ্রেপ্তারের সংখ্যা দাঁড়াল ১৯০।&lt;/p&gt;\r\n\r\n&lt;p&gt;এ দিকে গতকাল রোববার বিকেল থেকে আজ সোমবার সকাল পর্যন্ত ক্ষতিগ্রস্ত ব্যক্তিদের পক্ষ থেকে পঞ্চগড় সদর থানায় নতুন করে আরও তিনটি মামলা হয়েছে। এতে মোট মামলার সংখ্যা দাঁড়াল ২৩। এর মধ্যে সদর থানার মামলা করা হয়েছে ১৮টি এবং বোদা থানায় মামলার সংখ্যা ৫টি। এসব মামলায় আসামি সংখ্যা ১৩ হাজারের বেশি।&lt;/p&gt;\r\n\r\n&lt;p&gt;জেলার পুলিশ সুপার এস এম সিরাজুল হুদা মুঠোফোনে প্রথম আলোকে বলেন, জেলার পরিবেশ বর্তমানে স্বাভাবিক আছে। এখন পর্যন্ত মোট ২৩টি মামলায় ১৯০ জনকে গ্রেপ্তার করা হয়েছে। অপরাধীদের ধরতে পুলিশ ও যৌথ বাহিনী কাজ করছে। ভিডিও ফুটেজ দেখে, সুনির্দিষ্ট গোয়েন্দা তথ্যের ভিত্তিতে এবং যাচাই-বাছাইয়ের মাধ্যমে আসামিদের গ্রেপ্তার করা হচ্ছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;পঞ্চগড় শহরের পাশে আহম্মদনগর এলাকায় আহমদিয়া জামাতের জলসা বন্ধের দাবিতে ৩ মার্চ জুমার নামাজের পর পঞ্চগড় শহরের বিভিন্ন মসজিদ থেকে মিছিল বের করা হয়। এতে পুলিশ বাধা দেয়। বিক্ষোভকারীরা পুলিশকে লক্ষ্য করে ইটপাটকেল ছুড়তে থাকেন। তখন দুই পক্ষের মধ্যে সংঘর্ষ হয়। একদল বিক্ষোভকারী আহম্মদনগর এলাকায় গিয়ে আহমদিয়া সম্প্রদায়ের শতাধিক বাড়িতে অগ্নিসংযোগ ও ভাঙচুর করেন। এ ঘটনায় দুই তরুণ নিহত হন। পুলিশ, সাংবাদিকসহ আহত হন শতাধিক মানুষ।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/130323f686f728984c235.webp', 'তিন বছরের ছেলেকে সঙ্গে নিয়ে পুড়ে যাওয়া নিজের বাড়িঘর দেখতে এসেছেন মেরিনা আক্তার। সম্প্রতি পঞ্চগড়ের আহম্মদনগর এলাকায়', 'www.facebook.com/samojugnews', 0, 0, '0', '2023-03-13 06:01:34', 1, 1),
(289, 'samojugc_datatable', 5, 59, 'সৌদি আরবে এবার সপ্তাহে তিন দিন ছুটির পরিকল্পনা', 'সৌদি আরবে এবার সপ্তাহে তিন দিন ছুটির পরিকল্পনা', '&lt;p&gt;বিশ্বের অনেক দেশের নানা কোম্পানি চার দিন অফিস ও তিন দিন ছুটি শুরু করেছে। পাইলট এ প্রোগ্রাম অনেকটাই জনপ্রিয়তা পাচ্ছে। ইউরোপ ছড়িয়ে এখন আফ্রিকার অনেক বেসরকারি প্রতিষ্ঠানে এ নিয়ম চালু হয়েছে। সংযুক্ত আরব আমিরাতসহ এশিয়ার কয়েকটি দেশে চার দিনের অফিস চালু হয়েছে। এবার সৌদি আরবও সাপ্তাহিক ছুটি তিন দিন করার পরিকল্পনা করছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;গালফ নিউজের খবরে বলা হয়েছে, সৌদির মানবসম্পদ ও সামাজিক উন্নয়ন মন্ত্রণালয় চার দিন অফিস ও তিন দিন ছুটির পরিকল্পনা নিয়ে এগোচ্ছে। এটি বাস্তবায়িত হলে সৌদি আরবে সপ্তাহে চার দিন অফিস আর বাকি তিন দিন ছুটি থাকবে। সাধারণত, সৌদি আরবের বেশির ভাগ বড় প্রতিষ্ঠান ও সংস্থায় সাপ্তাহিক ছুটি শুক্র ও শনিবার।&lt;/p&gt;\r\n\r\n&lt;p&gt;গতকাল রোববার এক টুইটার ব্যবহারকারীর প্রশ্নের জবাবে সৌদি আরবের মানবসম্পদ মন্ত্রণালয় জানায়, তারা অত্যন্ত সক্রিয়ভাবে শ্রমব্যবস্থার মূল্যায়ন, কর্মসংস্থান বৃদ্ধি এবং বাজারকে দেশীয় ও আন্তর্জাতিক বিনিয়োগকারীদের কাছে আরও আকর্ষণীয় করে তুলতে আইন সংশোধন করছে। মানবসম্পদ ও সামাজিক উন্নয়ন মন্ত্রণালয় বলছে, সৌদি আরবের শ্রমব্যবস্থা বর্তমানে পর্যালোচনা করা হচ্ছে। যেকোনো ধরনের পরিবর্তনের ক্ষেত্রে দেশে কর্মসংস্থান বৃদ্ধির বিষয়টি বিবেচনায় নেওয়া হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;সংযুক্ত আরব আমিরাত সপ্তাহে দুই দিনের ছুটির বদলে তিন দিনে গেছে। গত বছরের ১ জানুয়ারি থেকে সংযুক্ত আরব আমিরাত নতুন নিয়মে অফিস শুরু করেছে। এর মধ্যে সোম থেকে বৃহস্পতিবার কার্যদিবস সকাল সাড়ে সাতটায় শুরু হয়ে বেলা সাড়ে তিনটায় শেষ হয়। শুক্রবারের কাজ শুরু হয় সাড়ে সাতটা থেকে। অফিস শেষ হয় দুপুর ১২টায়। দেশটিতে আসলে সাড়ে চার দিনের কর্মদিবস। এক গবেষণায় দেখা গেছে, আমিরাতে নতুন কর্মসপ্তাহের কারণে সরকারি সংস্থাগুলোয় ৮৮ শতাংশ কর্মীর উৎপাদন&amp;ndash;সক্ষমতা বৃদ্ধি পেয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/1303235500dae483a1274.webp', 'সৌদি আরবে এবার সপ্তাহে তিন দিন ছুটির পরিকল্পনা', 'www.facebook.com/samojugnews', 0, 0, '0', '2023-03-13 06:05:39', 0, 1),
(290, 'samojugc_datatable', 5, 59, 'এবার সাবমেরিন থেকে জোড়া ক্ষেপণাস্ত্র ছুড়ল উত্তর কোরিয়া', 'এবার সাবমেরিন থেকে জোড়া ক্ষেপণাস্ত্র ছুড়ল উত্তর কোরিয়া', '&lt;p&gt;সাবমেরিন থেকে দুটি কৌশলগত ক্রুজ ক্ষেপণাস্ত্রের পরীক্ষা চালিয়েছে উত্তর কোরিয়া। স্থানীয় সময় গতকাল রোববার এ পরীক্ষা চালানো হয়। আজ সোমবার উত্তর কোরিয়ার রাষ্ট্রীয় সংবাদ সংস্থা কেসিএনএ এই তথ্য জানিয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;দক্ষিণ কোরিয়া ও যুক্তরাষ্ট্রের যৌথ সামরিক মহড়া শুরুর প্রাক্কালে উত্তর কোরিয়া কৌশলগত ক্রুজ ক্ষেপণাস্ত্রের পরীক্ষা চালাল। সাধারণত, পারমাণবিক অস্ত্র বহনে সক্ষম ক্ষেপণাস্ত্রের ক্ষেত্রে &amp;lsquo;কৌশলগত&amp;rsquo; শব্দটি ব্যবহার করা হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;কেসিএনএর প্রতিবেদনে বলা হয়, গতকাল ভোরে উত্তর কোরিয়ার পূর্ব উপকূলে &amp;lsquo;৮.২৪ ইয়ংগুং&amp;rsquo; সাবমেরিন থেকে ক্ষেপণাস্ত্র দুটি ছোড়া হয়। প্রায় ১ হাজার ৫০০ কিলোমিটার দূরে সাগরে আগে থেকে ঠিক করে রাখা লক্ষ্যবস্তুতে ক্ষেপণাস্ত্র দুটি আঘাত হানে।&lt;/p&gt;\r\n\r\n&lt;p&gt;কেসিএনএর প্রতিবেদনে আরও বলা হয়, ক্ষেপণাস্ত্র উৎক্ষেপণব্যবস্থার নির্ভরযোগ্যতা নিশ্চিত করেছে এ পরীক্ষা। একই সঙ্গে তা সাবমেরিন ইউনিটের আক্রমণ&amp;ndash;সক্ষমতা যাচাই করেছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;উত্তর কোরিয়ার ক্ষেপণাস্ত্র পরীক্ষার পরিপ্রেক্ষিতে দক্ষিণ কোরিয়ার সামরিক বাহিনী সর্বোচ্চ সতর্ক অবস্থায় রয়েছে বলে জানান দেশটির জয়েন্ট চিফস অব স্টাফ। তিনি বলেন, এ বিষয়ে দক্ষিণ কোরিয়ার গোয়েন্দারা যুক্তরাষ্ট্রের সঙ্গে যোগাযোগ রেখে কাজ করছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;দক্ষিণ কোরিয়া ও যুক্তরাষ্ট্রের সামরিক বাহিনী আজ থেকে ১১ দিনের যৌথ সামরিক মহড়া শুরু করছে। এ মহড়ার নাম দেওয়া হয়েছে &amp;lsquo;ফ্রিডম শিল্ড ২৩&amp;rsquo;। এ মহড়া নিয়ে আপত্তি জানিয়ে আসছে পিয়ংইয়ং। তাই মহড়া শুরুর প্রাক্কালে পিয়ংইয়ং জোড়া ক্ষেপণাস্ত্র ছুড়ে শক্তি প্রদর্শন করল।&lt;/p&gt;\r\n\r\n&lt;p&gt;গত বৃহস্পতিবার উত্তর কোরিয়া একটি স্বল্পপাল্লার ব্যালিস্টিক ক্ষেপণাস্ত্র উৎক্ষেপণ করে। এ ক্ষেপণাস্ত্র উৎক্ষেপণের কয়েক ঘণ্টা পর উত্তর কোরিয়ার নেতা কিম জং-উন দেশটির সেনাবাহিনীর একটি ইউনিটের সামরিক প্রদর্শনী দেখেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;পারমাণবিক শক্তিধর উত্তর কোরিয়া একের পর এক ক্ষেপণাস্ত্রের পরীক্ষা চালিয়ে যাচ্ছে। গত বছর দেশটির নেতা কিম জং-উন তাঁর দেশের অস্ত্রভান্ডার আরও সমৃদ্ধ করার ঘোষণা দেন। এর মধ্যে কৌশলগত পরমাণু অস্ত্রও রয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;উত্তর কোরিয়া দাবি করে আসছে, তার পরমাণু অস্ত্র ও ক্ষেপণাস্ত্র কর্মসূচি শুধু আত্মরক্ষার জন্য।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/1303231a71cbf1634a69c.webp', 'উত্তর কোরিয়া একের পর এক ক্ষেপণাস্ত্রের পরীক্ষা চালাচ্ছে', 'www.facebook.com/samojugnews', 0, 0, '0', '2023-03-13 06:09:09', 0, 1),
(291, 'samojugc_datatable', 5, 60, 'কৃষির সম্ভাবনাকে বিশ্ববাজারে তুলে ধরতে হবে', 'কৃষির সম্ভাবনাকে বিশ্ববাজারে তুলে ধরতে হবে', '&lt;p&gt;বাংলাদেশের কৃষিপণ্য উৎপাদনের বিপুল অগ্রগতিকে কাজে লাগাতে হবে। এ জন্য কৃষিপণ্য সংরক্ষণ থেকে শুরু করে প্রক্রিয়াজাতকরণ ও আন্তর্জাতিকভাবে বাজারজাতকরণে গুরুত্ব দিতে হবে। দেশের ভেতরে যেমন কৃষিপণ্যের বিপুল বাজার গড়ে উঠেছে, তেমনি তা নিয়ে বিশ্ববাজারে যাওয়ারও সুযোগ রয়েছে। এ ব্যাপারে দেশীয় উদ্যোক্তা ও বিদেশি বিনিয়োগকারী দুই পক্ষকে একযোগে এগিয়ে আসতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;রাজধানীর বঙ্গবন্ধু আন্তর্জাতিক সম্মেলন কেন্দ্রে ফেডারেশন অব বাংলাদেশ চেম্বার অব কমার্স অ্যান্ড ইন্ডাস্ট্রির (এফবিসিসিআই) ব্যবসা সম্মেলনের দ্বিতীয় দিনে গতকাল রোববার &amp;lsquo;অ্যাগ্রি বিজনেস&amp;rsquo; শীর্ষক অধিবেশনে এই আহ্বান জানানো হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;অনুষ্ঠানের প্রধান অতিথি কৃষিমন্ত্রী আব্দুর রাজ্জাক বলেন, দেশের প্রধান খাদ্য চালসহ আলু, সবজি ও বিভিন্ন কৃষিপণ্যের উৎপাদন কয়েক গুণ বেড়েছে। সাম্প্রতিক বছরগুলোতে ড্রাগন ফল, স্ট্রবেরি ও গ্রীষ্মকালীন টমেটোর মতো উচ্চ মূল্যের কৃষিপণ্যও উৎপাদিত হচ্ছে। এসব পণ্য প্রক্রিয়াজাতকরণে বৈশ্বিক খাদ্য প্রক্রিয়াজাতকারী কারখানাগুলো বাংলাদেশে কেন এই খাতে বিনিয়োগ করছে না, তা নিয়ে তিনি প্রশ্ন তোলেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রাণ&amp;ndash;আরএফএলের চেয়ারম্যান আহসান খান চৌধুরী মূল প্রবন্ধে বলেন, দেশে কৃষির সবচেয়ে বড় শক্তি হচ্ছে শ্রমশক্তি ও অনুকূল আবহাওয়া। এখানে সাত কোটি টন কৃষিপণ্য উৎপাদন হয়, যার ৮০ শতাংশ হচ্ছে চাল, আলু ও চিনি।&lt;/p&gt;\r\n\r\n&lt;p&gt;অনুষ্ঠানে আরও উপস্থিত ছিলেন বাংলাদেশে জাতিসংঘের খাদ্য ও কৃষি সংস্থার (এফএও) কান্ট্রি ডিরেক্টর রবার্ট সিম্পসন ও এসিআই অ্যাগ্রি বিজনেসের চেয়ারম্যান এফ এইচ আনসারী।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/1303233da7256e152821f.webp', 'কৃষির সম্ভাবনাকে বিশ্ববাজারে তুলে ধরতে হবে', 'www.facebook.com/samojugnews', 0, 0, '0', '2023-03-13 06:13:31', 0, 1),
(292, 'samojugc_datatable', 5, 60, 'সঞ্চয়পত্রের চেয়েও বেশি মুনাফা যে বিনিয়োগে', 'সঞ্চয়পত্রের চেয়েও বেশি মুনাফা যে বিনিয়োগে', '&lt;p&gt;সঞ্চয়পত্রে বিনিয়োগ থেকে সর্বোচ্চ ১১ দশমিক ৭৬ শতাংশ মুনাফা পাওয়া যায়। আর পাঁচ বছর মেয়াদি ওয়েজ আর্নার ডেভেলপমেন্ট বন্ড কিনলে পাবেন ১২ শতাংশ মুনাফা। আপনাকে প্রতি ছয় মাস অন্তর মুনাফা প্রদান করা হবে। তবে আপনার বিনিয়োগের পরিমাণ বাড়তে থাকলে এবং কিছু সীমা অতিক্রম করলে ধীরে ধীরে মুনাফার পরিমাণ কমতে থাকবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;আপনি কি প্রবাসে, মানে বিদেশে থাকেন? তাহলে শুনুন, কাজের খোঁজে আপনার মতো বিদেশ যাওয়া মানুষ তথা প্রবাসী বাংলাদেশির সংখ্যা এখন প্রায় এক কোটি। আপনারা প্রবাসীরা বেতন বা মজুরির একটা অংশ দেশে পরিবারের জন্য পাঠান, বাকিটা নিজেরা খরচ করেন&amp;mdash;এটা জানা কথা।&lt;/p&gt;\r\n\r\n&lt;p&gt;কিন্তু কখনো কি ভেবে দেখেছেন, এভাবে যদি আয়ের পুরোটাই খরচ করে ফেলেন, অর্থাৎ আয় থেকে যদি কিছু সঞ্চয় না করেন, তাহলে যখন দেশে ফিরবেন, তখন কী হবে? সে জন্য ভবিষ্যতের কথা ভেবে আপনি চাইলে সব আনুষঙ্গিক খরচ মিটিয়েও আয়ের একটি অংশ সঞ্চয় করতে পারেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;এটি করতে হয় সরকারি &amp;lsquo;ওয়েজ আর্না&lt;strong&gt;র &lt;/strong&gt;ডেভেলপমেন্ট বন্ডে&amp;rsquo; বিনিয়োগ করতে পারেন। সেটি করলে ৫&amp;ndash;১০ বছর পর যখন আপনি দেশে ফিরে আসবেন, তখন দেখবেন, একটা বড় অঙ্কের টাকা জমা হয়ে আছে। এই টাকা দিয়ে আপনি নতুন করে আবার কিছু করতে পারবেন।&lt;/p&gt;\r\n\r\n&lt;blockquote&gt;সঞ্চয়পত্রে বিনিয়োগ থেকে সর্বোচ্চ ১১ দশমিক ৭৬ শতাংশ মুনাফা পাওয়া যায়। আর পাঁচ বছর মেয়াদি ওয়েজ আর্নার ডেভেলপমেন্ট বন্ড কিনলে পাবেন ১২ শতাংশ মুনাফা। আপনাকে প্রতি ছয় মাস অন্তর মুনাফা প্রদান করা হবে। তবে আপনার বিনিয়োগের পরিমাণ বাড়তে থাকলে এবং কিছু সীমা অতিক্রম করলে ধীরে ধীরে মুনাফার পরিমাণ কমতে থাকবে।&lt;/blockquote&gt;\r\n\r\n&lt;blockquote&gt;\r\n&lt;h2&gt;ওয়েজ আর্নার ডেভেলপমেন্ট বন্ডের সুবিধা&lt;/h2&gt;\r\n\r\n&lt;p&gt;আপনার মতো প্রবাসীদের জন্যই চালু করা হয়েছে ওয়েজ আর্নার&lt;strong&gt; &lt;/strong&gt;ডেভেলপমেন্ট বন্ড। এতে আপনি যদি বিনিয়োগ করেন, তাহলে ভালো কয়েকটি সুবিধা পাবেন। যেমন এই বন্ডে বিনিয়োগের বিপরীতে আপনি সবচেয়ে বেশি হারে মুনাফা পাবেন, যা সঞ্চয়পত্রে বিনিয়োগ করেও পাবেন না। এর বিপরীতেই মিলবে সর্বোচ্চ ১২ শতাংশ মুনাফা। আর সঞ্চয়পত্রে বিনিয়োগে মুনাফা পাওয়া যায় ১১ দশমিক ৭৬ শতাংশ। বন্ডটির আরেকটা বড় সুবিধা হলো, আপনি এই বন্ড থেকে ছয় মাস পরপর যে মুনাফা পাবেন, তা থেকে কোনো কর কাটা হবে না। অর্থাৎ আপনি মুনাফার সম্পূর্ণ টাকাটাই পেয়ে যাবেন। অন্যদিকে সঞ্চয়পত্রের মুনাফা থেকে ১০ শতাংশ কর কেটে রেখে বাকি টাকা দেওয়া হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;আবার আপনি যদি কোনো ব্যাংকে ফিক্সড ডিপোজিট মানে স্থায়ী আমানত প্রকল্পে টাকা রাখেন, তার বিপরীতে পাওয়া মুনাফা থেকে কর কর্তন করা হবে। এতে আপনার আয় কমে যাবে। যেহেতু আপনি দেশের বাইরে থাকেন এবং আপনার এই বন্ডে বিনিয়োগ করার সুযোগ আছে, তাই আপনি এখানে বিনিয়োগ করে করমুক্ত মুনাফার সুযোগ নিতে পারেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;সে ক্ষেত্রে আপনি কী সুবিধা পাবেন, তা বলা যাক। ধরুন, আপনি ওয়েজ আর্না&lt;strong&gt;র &lt;/strong&gt;ডেভেলপমেন্ট বন্ডে এক লাখ টাকা বিনিয়োগ করেছেন। তাহলে ছয় মাস পর আপনি মুনাফা পাবেন ছয় হাজার টাকা। সহজভাবে বলতে গেলে এক লাখ টাকার জন্য আপনি প্রতি মাসে এক হাজার টাকা মুনাফা পাবেন। যেহেতু কোনো কর কাটা হবে না, তাই মুনাফার পুরো টাকাই আপনাকে দেওয়া হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;আপনার বন্ডের মেয়াদ শেষ হয়ে গেলেও স্বয়ংক্রিয়ভাবে একাধিক মেয়াদের জন্য এই বন্ডে পুনর্বিনিয়োগের সুবিধা রয়েছে। এ ছাড়া কোনো কারণে যদি অর্থের প্রয়োজন হয়, তাহলে বিনিয়োগকৃত অর্থের বিপরীতে আপনি ঋণও নিতে পারবেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;আর কোনো কারণে বন্ড হারিয়ে গেলে বা নষ্ট হলে ডুপ্লিকেট বন্ড ইস্যু করারও সুযোগ আছে। এ ছাড়া এই বন্ডে বিনিয়োগের জন্য এফসি অ্যাকাউন্ট থাকার কোনো বাধ্যবাধকতা নেই।&lt;/p&gt;\r\n\r\n&lt;h2&gt;কত পর্যন্ত বিনিয়োগ করতে পারবেন&lt;/h2&gt;\r\n\r\n&lt;p&gt;আপনি ২৫,০০০ টাকা থেকে শুরু করে সর্বোচ্চ ১ কোটি টাকা পর্যন্ত বিনিয়োগ করতে পারবেন। পাঁচ বছর মেয়াদি এই বন্ডে আপনি নিজের নামের পাশাপাশি আপনার স্ত্রী, ছেলেমেয়ে, মা-বাবার নামে বিনিয়োগ করতে পারবেন। তবে আপনি যতজনের নামেই বিনিয়োগ করেন না কেন, সব মিলিয়ে এক কোটি টাকার বেশি বিনিয়োগ করতে পারবেন না।&lt;/p&gt;\r\n\r\n&lt;p&gt;আপনি যে দেশে আছেন, ওই দেশে থেকে আপনার নামে বন্ড কিনতে যদি সময় না পান বা আপনার যদি দেশে আসতে অনেক দেরি হয়, তাহলে আপনি আপনার পরিবারের সদস্যদের দ্বারাও এই বন্ডে বিনিয়োগ করতে পারেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;আবার যাঁরা বাংলাদেশে আছেন, আপনার পরিবারের কেউ যদি দেশের বাইরে থাকেন, তাহলে তিনি যে টাকা পাঠিয়েছেন, তা অন্য কোনো খাতে বিনিয়োগ না করে এই বন্ডে বিনিয়োগ করতে পারেন।&lt;/p&gt;\r\n\r\n&lt;h2&gt;কোথায় যোগাযোগ করবেন&lt;/h2&gt;\r\n\r\n&lt;p&gt;বাংলাদেশ ব্যাংক ও বিদেশে অবস্থিত বাংলাদেশের তফসিলি ব্যাংকের শাখা, এক্সচেঞ্জ হাউস, এক্সচেঞ্জ কোম্পানি, বাংলাদেশে যেকোনো তফসিলি ব্যাংকের অথরাইজড ডিলার (এডি) শাখা থেকে এই বন্ড কিনতে পারবেন। অর্থাৎ নিজের সুবিধামতো আপনি দেশে ও বিদেশে দুই জায়গা থেকেই ওয়েজ আর্নার বন্ডে বিনিয়োগ করতে পারবেন। আপনি যদি বিদেশে থাকেন, তখন দেশে টাকা পাঠানোর জন্য যখন ব্যাংক বা এক্সচেঞ্জ হাউসে যাবেন, তখন একই জায়গা থেকে আপনি এই বন্ড কিনতে পারবেন।&lt;/p&gt;\r\n\r\n&lt;h2&gt;বিনিয়োগ থেকে মুনাফা কেমন আসবে&lt;/h2&gt;\r\n\r\n&lt;p&gt;সঞ্চয়পত্রে বিনিয়োগ থেকে সর্বোচ্চ ১১ দশমিক ৭৬ শতাংশ মুনাফা পাওয়া যায়। আর পাঁচ বছর মেয়াদি ওয়েজ আর্নার ডেভেলপমেন্ট বন্ড কিনলে পাবেন ১২ শতাংশ মুনাফা। আপনাকে প্রতি ছয় মাস অন্তর মুনাফা প্রদান করা হবে। তবে আপনার বিনিয়োগের পরিমাণ বাড়তে থাকলে এবং কিছু সীমা অতিক্রম করলে ধীরে ধীরে মুনাফার পরিমাণ কমতে থাকবে। সে ক্ষেত্রে বিনিয়োগ ধাপ অনুযায়ী আপনি মুনাফা পাবেন। এবার সেটি জেনে নিন।&lt;/p&gt;\r\n\r\n&lt;p&gt;ওয়েজ আর্নার ডেভেলপমেন্ট বন্ডে ১৫ লাখ টাকা পর্যন্ত বিনিয়োগে ১২ শতাংশ, ১৫ লাখ ১ টাকা থেকে ৩০ লাখ টাকা পর্যন্ত বিনিয়োগে ১১ শতাংশ, ৩০ লাখ ১ টাকা থেকে ৫০ লাখ টাকা পর্যন্ত ১০ শতাংশ মুনাফা পাওয়া যাবে। আর ৫০ লাখ ১ টাকা থেকে আরও বেশি পরিমাণে বিনিয়োগ করলে মুনাফা মিলবে ৯ শতাংশ।&lt;/p&gt;\r\n\r\n&lt;p&gt;মুনাফা হিসাব করার একটি উদাহরণও রইল আপনার জন্য। ধরুন, আপনি এই বন্ডে ২০ লাখ টাকা বিনিয়োগ করেছেন। তাহলে আপনি প্রথম ১৫ লাখের জন্য ১২ শতাংশ এবং বাকি ৫ লাখের জন্য ১১ শতাংশ হিসাবে মুনাফা পাবেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;strong&gt;সূত্র:&lt;/strong&gt; &amp;lsquo;স্মার্ট মানি হ্যাকস: সঞ্চয় ও বিনিয়োগের সেরা প্ল্যান&amp;rsquo;।&lt;/p&gt;\r\n&lt;/blockquote&gt;', 'extra/resources/uploads/samojugc/img/130323684a5a2dc88f169.webp', 'সঞ্চয়পত্র', 'www.facebook.com/samojugnews', 0, 0, '0', '2023-03-13 06:19:13', 0, 1),
(293, 'samojugc_datatable', 5, 61, 'নাজমুল বাংলাদেশ ক্রিকেটের তারকা হয়ে উঠছেন', 'নাজমুল বাংলাদেশ ক্রিকেটের তারকা হয়ে উঠছেন', '&lt;p&gt;ইংল্যান্ডের সাবেক অধিনায়ক নাসের হুসেইনের কণ্ঠে&lt;a href=&quot;https://www.prothomalo.com/sports/cricket/3nb6y5zhsv&quot; target=&quot;_blank&quot;&gt; নাজমুল হোসেনে&lt;/a&gt;র বন্দনা। স্কাই স্পোর্টসে বিশেষজ্ঞ হিসেবে কাজ করা এই সাবেক ক্রিকেটারের মতে, বাংলাদেশের এই বাঁহাতি ব্যাটসম্যান তারকা হয়ে উঠছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;নাজমুল প্রথম টি-টোয়েন্টিতে ৩০ বলে ৫১ এবং দ্বিতীয় টি-টোয়েন্টিতে ৪৭ বলে ৪৬ রানের অপরাজিত ইনিংস খেলেছেন। প্রথম ম্যাচে ৬ উইকেটের পর আজকের দ্বিতীয় ম্যাচের ৪ উইকেটের জয়ে তিন ম্যাচের সিরিজ এক ম্যাচ হাতে রেখেই জিতেছে বাংলাদেশ।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/11.webp&quot; style=&quot;height:427px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;দারুণ একটা ক্যাচও নিয়েছেন নাজমুল&lt;/p&gt;\r\n\r\n&lt;p&gt;সিরিজ জয়ে বাংলাদেশের দারুণ ক্রিকেটের প্রশংসা করতে গিয়ে নাজমুলের উচ্ছ্বসিত প্রশংসা করেছেন &lt;a href=&quot;https://www.prothomalo.com/sports/cricket/qozmn0wxye&quot; target=&quot;_blank&quot;&gt;নাসের হুসেইন&lt;/a&gt;, &amp;lsquo;বিশ্বচ্যাম্পিয়নদের বিপক্ষে বাংলাদেশ দুর্দান্ত খেলেই ২-০ ব্যবধানে সিরিজে জয় নিশ্চিত করেছে। দুর্দান্ত ক্রিকেট খেলেছে বাংলাদেশ। জয়টা বাংলাদেশের প্রাপ্যই। নাজমুল হোসেন বাংলাদেশের ক্রিকেটের তারকা হয়ে উঠছে। বাংলাদেশের এখন দারুণ দারুণ ক্রিকেটার তৈরি করতে হবে। এই সিরিজ জয়টা তাদের জন্য বড় কিছুই।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;দ্বিতীয় টি-টোয়েন্টিতে ১২ রানে ৪ উইকেট নিয়ে ম্যাচসেরা হন&lt;a href=&quot;https://www.prothomalo.com/sports/cricket/uzih59dh1s&quot; target=&quot;_blank&quot;&gt; মেহেদী হাসান মিরাজ&lt;/a&gt;। ২৫ বছর বয়সী এই অলরাউন্ডারেরও প্রশংসা করেছেন সাবেক ইংলিশ অধিনায়ক, &amp;lsquo;মেহেদী হাসান মিরাজ দুর্দান্ত বোলিং করেছে। বোলিংয়ের সময় গতিতে বৈচিত্র্য এনেছে। উইকেটটাও স্পিন বোলিংয়ের জন্য ভালো ছিল। তাকে আজকে দলে নেওয়াটা খুব কাজে এসেছে। মিরাজ দারুণ ক্রিকেটার। তার ইংল্যান্ডের বিপক্ষে বেশ কিছু মধুর স্মৃতি আছে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;ব্যাটিংই ইংল্যান্ডকে পিছিয়ে দিয়েছে বলে মন্তব্য নাসেরের, &amp;lsquo;আজ ইংল্যান্ড ২০ রান কম করেছে। বোলার-ফিল্ডাররা ভালো করেছে। ইংল্যান্ড ম্যাচটা হেরেছে ব্যাটিংয়ের কারণেই।&amp;rsquo;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/130323450d14429597fa0.webp', 'নাসের হুসেইনের কণ্ঠে নাজমুলকে নিয়ে উচ্ছ্বাস', 'www.facebook.com/samojugnews', 0, 0, '0', '2023-03-13 06:23:45', 1, 1),
(294, 'samojugc_datatable', 5, 61, 'মেসিদের ‘অগ্রহণযোগ্য ও মাত্রা ছাড়ানো’ আচরণ ভুলতে পারছেন না দেশম', 'মেসিদের ‘অগ্রহণযোগ্য ও মাত্রা ছাড়ানো’ আচরণ ভুলতে পারছেন না দেশম', '&lt;p&gt;&lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%AC%E0%A6%BF%E0%A6%B6%E0%A7%8D%E0%A6%AC%E0%A6%95%E0%A6%BE%E0%A6%AA-%E0%A6%AB%E0%A7%81%E0%A6%9F%E0%A6%AC%E0%A6%B2-%E0%A7%A8%E0%A7%A6%E0%A7%A8%E0%A7%A8&quot; target=&quot;_blank&quot;&gt;কাতার বিশ্বকাপে&lt;/a&gt;র ফাইনাল শেষ হয়েছে প্রায় তিন মাস হলো। কিন্তু বিশ্বকাপজয়ী আর্জেন্টাইনদের আনন্দের রেশ এখনো কাটেনি। একই রকমভাবে এখন পর্যন্ত ফাইনালে &lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%86%E0%A6%B0%E0%A7%8D%E0%A6%9C%E0%A7%87%E0%A6%A8%E0%A7%8D%E0%A6%9F%E0%A6%BF%E0%A6%A8%E0%A6%BE-%E0%A6%AB%E0%A7%81%E0%A6%9F%E0%A6%AC%E0%A6%B2-%E0%A6%A6%E0%A6%B2&quot; target=&quot;_blank&quot;&gt;আর্জেন্টিনা&lt;/a&gt;র কাছে টাইব্রেকারে হারার হতাশা কাটিয়ে উঠতে পারেনি &lt;a href=&quot;https://www.prothomalo.com/topic/%E0%A6%AB%E0%A7%8D%E0%A6%B0%E0%A6%BE%E0%A6%A8%E0%A7%8D%E0%A6%B8-%E0%A6%AB%E0%A7%81%E0%A6%9F%E0%A6%AC%E0%A6%B2-%E0%A6%A6%E0%A6%B2&quot; target=&quot;_blank&quot;&gt;ফ্রান্স&lt;/a&gt;।&lt;/p&gt;\r\n\r\n&lt;p&gt;আর্জেন্টাইনদের আনন্দের রেশ যে কাটেনি, তা বোঝা যায় কদিন পরপরই বিশ্বকাপের নানা বিষয় নিয়ে দলটির বিভিন্ন সাক্ষাৎকারে। আর ফরাসিদের ঘা যে এখনো দগদগে, সেটা বোঝা গেল এত দিন পরও লিওনেল মেসিদের ফাইনালের উদ্&amp;zwnj;যাপন নিয়ে ফ্রান্সের কোচ দিদিয়ের দেশমের হতাশা প্রকাশেই।&lt;/p&gt;\r\n\r\n&lt;p&gt;কাতারের লুসাইল স্টেডিয়ামের ফাইনালে লিওনেল মেসি ও আনহেল দি মারিয়ার দুই গোলে ৩৬ মিনিটের মধ্যে ২&amp;ndash;০ ব্যবধানে এগিয়ে গিয়েছিল আর্জেন্টিনা। দ্বিতীয়ার্ধে কিলিয়ান এমবাপ্পের দেড় মিনিটের ঝড়ে ম্যাচে ফেরে ফ্রান্স।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/13.webp&quot; style=&quot;height:419px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;মেয়েকে কোলে নিয়ে বিশ্বকাপ ট্রফি হাতে এমিলিয়ানো মার্তিনেজ&lt;/p&gt;\r\n\r\n&lt;p&gt;অতিরিক্ত সময়েও ছিল নাটকীয়তা। মেসি আর্জেন্টিনাকে এগিয়ে দেওয়ার ১১৮ মিনিটে পেনাল্টি গোলে ফ্রান্সকে আবার সমতায় ফেরান এমবাপ্পে।&lt;/p&gt;\r\n\r\n&lt;p&gt;শেষ পর্যন্ত টাইব্রেকারে ফ্রান্সকে ৪&amp;ndash;২ গোলে হারিয়ে &lt;a href=&quot;https://www.prothomalo.com/sports/football/2koqy585lg&quot; target=&quot;_blank&quot;&gt;শিরোপা জেতে&lt;/a&gt; আর্জেন্টিনা। ৩৬ বছরের খরা কাটিয়ে আর্জেন্টিনা বিশ্বকাপ জয়ের পর উদ্&amp;zwnj;যাপনটা যেন একটু উন্মত্তই হয়ে গিয়েছিল দলটির খেলোয়াড়দের।&lt;/p&gt;\r\n\r\n&lt;p&gt;মেসি&amp;ndash;এমিলিয়ানো মার্তিনেজদের সেই উদ্&amp;zwnj;যাপনকে বাড়াবাড়ি মনে হয়েছে অনেকের কাছেই। ফাইনালের পর উদ্&amp;zwnj;যাপনে এমবাপ্পেকে নিয়ে কৌতুক করেছেন আর্জেন্টিনার খেলোয়াড়েরা। বিশেষ করে আর্জেন্টিনার গোলকিপার মার্তিনেজ।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/14.webp&quot; style=&quot;height:451px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ফাইনালে গিয়েও এবার আর বিশ্বকাপ জেতা হয়নি দেশমের&lt;/p&gt;\r\n\r\n&lt;p&gt;এই উদ্&amp;zwnj;যাপন অনেকেরই পছন্দ হয়নি। এত দিন পর বিষয়টি নিয়ে কথা বলেছেন ফ্রান্সের কোচ দিদিয়ের দেশম। তাঁর আর্জেন্টিনার খেলোয়াড়দের এই উদ্&amp;zwnj;যাপন ছিল &amp;lsquo;অগ্রহণযোগ্য&amp;rsquo;! আরএমসি স্পোর্টসকে দেশম বলেন, &amp;lsquo;তাদের ছাদে উঠে লাফালাফি আর উচ্ছ্বাসে ভেসে যাওয়াতে আমার কোনো আপত্তি নেই। কিন্তু এতে শ্রদ্ধাবোধের ছিটেফোঁটাও আর থাকেনি। এমনটা কারও প্রাপ্য নয়, বিশেষ করে কিলিয়ানের। এটা ছিল অগ্রহণযোগ্য আচরণ। কিছু কিছু ক্ষেত্রে মাত্রা ছাড়ানো।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/130323679ec4f151b74d2.webp', 'বিশ্বকাপ শিরোপা হাতে মেসি', 'www.facebook.com/samojugnews', 0, 0, '0', '2023-03-13 06:34:18', 0, 1);
INSERT INTO `samojugc_news_datatable` (`id`, `datatable`, `admin_id`, `category_id`, `title`, `keywords`, `description`, `thumbnail`, `teaser`, `link`, `liked`, `unliked`, `watched`, `date`, `topnews`, `status`) VALUES
(295, 'samojugc_datatable', 5, 61, '৩–০ করতে পারলে বড় হবে অর্থ পুরস্কারের অঙ্ক, আভাস বিসিবি সভাপতির', '৩–০ করতে পারলে বড় হবে অর্থ পুরস্কারের অঙ্ক, আভাস বিসিবি সভাপতির', '&lt;p&gt;সিরিজ জয়ের আনন্দ তো আছেই। বাংলাদেশ এখন ৩-০ ব্যবধানে ধবলধোলাই করতে চায় ইংল্যান্ডকে।&lt;/p&gt;\r\n\r\n&lt;p&gt;ম্যাচ&amp;ndash;পরবর্তী আনুষ্ঠানিকতা শেষ হতে না হতেই সব ক্রিকেটারের ডাক পড়ল বোর্ড সভাপতি নাজমুল হাসানের সভায়। ইংল্যান্ডের বিপক্ষে &lt;a href=&quot;https://www.prothomalo.com/sports/cricket/w5kcw0hhng&quot; target=&quot;_blank&quot;&gt;সিরিজ জয়ের&lt;/a&gt; আনন্দের রেশ থাকল সেই সভায়ও। বড় দলের বিপক্ষে সিরিজ জিতলেই বোর্ডের পক্ষ থেকে ক্রিকেটারদের আর্থিক পুরস্কার দেওয়া হয়। কালও সে ঘোষণার অপেক্ষায় ছিলেন ক্রিকেটাররা। তবে বোর্ড সভাপতি টাকার অঙ্কটা বলেননি। সেটা নাকি ইংল্যান্ডের বিপক্ষে তৃতীয় ম্যাচের পর জানানো হবে। বিশ্ব চ্যাম্পিয়নদের ধবলধোলাই করতে পারলে অঙ্কটা বড় হবে, এমন আভাসও ছিল বোর্ডপ্রধানের কথায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;সভা শেষে নাসুম আহমেদ ও শামীম হোসেনকে ড্রেসিংরুম থেকে বেরিয়ে আসতে দেখা যায়। দুজনের মুখেই চওড়া হাসি। সিরিজ জয়ের আনন্দ দুজনের চোখে&amp;ndash;মুখে। শামীম কাল একাদশে ছিলেন না, কিন্তু দ্বাদশ খেলোয়াড় হিসেবে ফিল্ডিং করতে নেমে মঈন আলীর ক্যাচ নিয়েছেন। সিরিজ জয়ে এটুকু অবদান রাখতে পেরেই খুশি, &amp;lsquo;মাঠে নেমেছি। ফিল্ডিং করতে পেরেছি। একটা ক্যাচ ধরেছি। এটাই অনেক।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;দলের আরেক তরুণ ক্রিকেটার হাসান মাহমুদের অবদানটা অবশ্য অল্প বলা যাবে না। ২ ওভার বল করে ১০ রান দিয়ে হাসানের শিকার ১ উইকেট। তবে সেই একমাত্র উইকেটটি ইংলিশ অধিনায়ক জস বাটলারের। যে মাঠে ম্যাচজুড়ে দাপট ছিল স্পিনের, সেখানে তিনি গতির ঝড় তুলে উপড়ে ফেলেছেন বাটলারের স্টাম্প। ওই মুহূর্তের অনুভূতিটা অবশ্য প্রকাশ করতে পারছিলেন না এই তরুণ, &amp;lsquo;বুঝিয়ে বলতে পারব না ওই আউটটা কেমন ছিল। অবিশ্বাস্য!&amp;rsquo; হাসানের চোখ যে এখন ইংল্যান্ডকে ধবলধোলাইয়ে, সেটাও লুকালেন না, &amp;lsquo;অবশ্যই। এখন তো সেটাই লক্ষ্য।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;অবিশ্বাস্য ছিল জয়ের মুহূর্তটাও। ইংল্যান্ডের ডেথ বোলিং বিশেষজ্ঞ বলা হয় যেই ক্রিস জর্ডানকে, তাঁকে দুটি চার মেরে জয় নিশ্চিত করেন তাসকিন আহমেদ। এক বোর্ড পরিচালক খেলা শেষে মাঠে নেমে ক্রিকেটারদের সঙ্গে করমর্দনের সময় ঘোষণা দিচ্ছিলেন, &amp;lsquo;তাসকিন এখন বাংলাদেশের নতুন এক ব্যাটসম্যান।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;ম্যাচ শেষে ঠিকমতো কথাই বলতে পারছিলেন না জয়ের আরেক নায়ক নাজমুল হোসেন। সতীর্থদের সঙ্গে উল্লাস করতে গিয়ে গলা ভেঙে গেছে তাঁর। এই ভাঙা গলায়ই এই বাঁহাতি টপ অর্ডার ব্যাটসম্যান বললেন ইংল্যান্ডের বিপক্ষে রান তাড়া করার কথা। ইংল্যান্ডের ছুড়ে দেওয়া ১১৭ রানের ছোট্ট স্কোরের পেছনে ছুটতে গিয়ে যে স্নায়ুর চাপ অনুভব করেছেন, সে কথা।&lt;/p&gt;\r\n\r\n&lt;p&gt;তবে নিজের সামর্থ্যে বিশ্বাস ছিল নাজমুলের। মিরপুর শেরেবাংলা স্টেডিয়ামে ম্যাচ শেষে সম্প্রচারকারী টেলিভিশনে নাজমুল বলেছেন, &amp;lsquo;একটু তো টেনশন ছিল। তবে এখান থেকে আমি ম্যাচটা জেতাতে পারব, আমার এই বিশ্বাস ছিল। যেমন ব্যাটিং করছিলাম, অনেকক্ষণ উইকেটে ছিলাম, আমার মনে হচ্ছিল, যেকোনো অবস্থা থেকে খেলাটা জেতাতে পারব।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;রান তাড়ায় সতীর্থ মেহেদী হাসান মিরাজের প্রশংসাও শোনা গেল নাজমুলের কথায়, &amp;lsquo;মিরাজ তো খুবই ভালো বোলিং করেছে। ব্যাটিংয়ে তার ওই ইনিংসটা অনেক সাহায্য করেছে। ওর ওই দুইটা ছয়, আমার কাজটা সহজ করে দিয়েছে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/16.webp&quot; style=&quot;height:426px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ইংল্যান্ডের ক্রিস ওকসকে ফিরিয়ে মিরাজের উচ্ছ্বাস। চার ম্যাচ পর টি-টোয়েন্টি একাদশে সুযোগ পেয়েই মিরাজ করেছেন তাঁর ক্যারিয়ারসেরা বোলিং, হয়েছেন ম্যাচসেরাও। গতকাল মিরপুরে&lt;/p&gt;\r\n\r\n&lt;p&gt;ইংল্যান্ডের বিপক্ষে ওয়ানডে সিরিজে বাংলাদেশের হয়ে দ্বিতীয় সর্বোচ্চ রানসংগ্রাহক ছিলেন নাজমুল। টি-টোয়েন্টি সিরিজের প্রথম ম্যাচেও নাজমুলই ছিলেন জয়ের নায়ক। তবে সেদিন তাড়া করতে নেমে ম্যাচ শেষ করে আসতে পারেননি এই বাঁহাতি, যা নিয়ে নাজমুলের কিছুটা আক্ষেপ ছিল।&lt;/p&gt;\r\n\r\n&lt;p&gt;কাল দলকে জয়ের দুয়ারে পৌঁছে দিয়েছেন নিজে অপরাজিত থেকে। নিজের ব্যাটিং নিয়ে নাজমুলের কথা, &amp;lsquo;খেলোয়াড় হিসেবে আমার দায়িত্ব নিয়মিত রান করা। ক্রিকেট এমন একটা খেলা, যেখানে প্রতিদিনই ব্যাটসম্যানের চ্যালেঞ্জ থাকে। আমিও সে অনুযায়ী অনুশীলন করি, ম্যাচে চেষ্টা করি ভালো করার।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;অধিনায়ক সাকিব অবশ্য ম্যাচ শেষে সিরিজ জয়ের কৃতিত্বটা বোলারদের দিয়েছেন। মনে করিয়ে দিয়েছেন ম্যাচের শুরুর ৬ ওভারের কথা। যেখানে ইংল্যান্ড দল ১ উইকেটে ৫০ রান তুলে বড় রানের আভাস দিচ্ছিল। সেখান থেকে ম্যাচটা ঘুরিয়েছে বোলাররা, &amp;lsquo;ওরা কিন্তু ভালো শুরু করেছিল। কিন্তু আমরা পাওয়ার প্লের পর ভালো বোলিং করেছি। স্নায়ুর চাপ ধরে রাখতে পেরেছি। অল্প রানে আটকেছি। সব মিলিয়ে দারুণ টিম অ্যাফোর্ট।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/17.webp&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/17.webp&quot; style=&quot;height:427px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;বাংলাদেশের দৃষ্টি এখন তৃতীয় টি&amp;ndash;টোয়েন্টি&lt;/p&gt;\r\n\r\n&lt;p&gt;তবে সিরিজ জিতলেও টি-টোয়েন্টিতে আরও অনেক উন্নতির সুযোগ আছে বাংলাদেশের। সেটিও মনে করিয়ে দিয়েছেন নাজমুল, &amp;lsquo;আমরা একটা সিরিজ জিতলাম ভালো একটা দলের বিপক্ষে। এটা আমাদের আত্মবিশ্বাস দেবে। তবে উন্নতির অনেক জায়গা আছে। তবে এই দলের সঙ্গে সিরিজ জেতাটা সামনের সিরিজগুলোতে অনেক সাহস দেবে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/13032331670ef0f155468.webp', 'প্রথম দুই ম্যাচ জিতে বাংলাদেশ এখন ইংল্যান্ডকে ধবলধোলাইয়ের অপেক্ষায়', 'www.facebook.com/samojugnews', 0, 0, '0', '2023-03-13 06:41:31', 1, 1),
(296, 'samojugc_datatable', 5, 62, 'অস্কারে সেরা আন্তর্জাতিক সিনেমা ‘অল কোয়ায়েট অন দ্য ওয়েস্টার্ন ফ্রন্ট’', 'অস্কারে সেরা আন্তর্জাতিক সিনেমা ‘অল কোয়ায়েট অন দ্য ওয়েস্টার্ন ফ্রন্ট’', '&lt;p&gt;অস্কারের ৯৫তম আসরে সেরা আন্তর্জাতিক ফিচার সিনেমার পুরস্কার পেয়েছে জার্মান সিনেমা &amp;lsquo;অল কোয়ায়েট অন দ্য ওয়েস্টার্ন ফ্রন্ট&amp;rsquo;। বাংলাদেশ সময় আজ সোমবার সকালে যুক্তরাষ্ট্রের লস অ্যাঞ্জেলেসের ডলবি থিয়েটারে জমকালো আয়োজনে এ পুরস্কার ঘোষণা করা হয়।&lt;/p&gt;\r\n\r\n&lt;p&gt;নেটফ্লিক্সে মুক্তির পরই ঝড় তোলে &amp;lsquo;অল কোয়ায়েট অন দ্য ওয়েস্টার্ন ফ্রন্ট&amp;rsquo;। এরিখ মারিয়া রেমার্কের একই নামের উপন্যাস থেকে তৈরি হয়েছে &amp;lsquo;অল কোয়ায়েট অন দ্য ওয়েস্টার্ন ফ্রন্ট&amp;rsquo;। ১৯৮৬ সালে সেবা প্রকাশনী থেকে জাহিদ হাসানের অনুবাদে বইটি বাংলাদেশের অনেক পাঠকেরই মন ছুঁয়েছিল।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/19.webp&quot; style=&quot;height:418px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;পুরস্কার হাতে সিনেমার পরিচালক, প্রযোজকসহ কলাকুশলীরা&lt;/p&gt;\r\n\r\n&lt;p&gt;এর আগে ব্রিটিশ একাডেমি ফিল্ম অ্যাওয়ার্ডসে (বাফটা) সেরা সিনেমা, সেরা পরিচালক, সেরা অ&amp;ndash;ইংরেজিভাষী সিনেমাসহ সাত বিভাগে পুরস্কার পেয়ে রেকর্ড গড়ে যুদ্ধবিরোধী সিনেমাটি।&lt;br /&gt;\r\nসেরা আন্তর্জাতিক সিনেমা বিভাগে &amp;lsquo;অল কোয়ায়েট অন দ্য ওয়েস্টার্ন ফ্রন্ট&amp;rsquo; ছাড়াও মনোনয়ন পেয়েছিল &amp;lsquo;আর্জেন্টিনা&amp;rsquo;, &amp;lsquo;ক্লোজ&amp;rsquo;, &amp;lsquo;ইয়ো&amp;rsquo;, &amp;lsquo;দ্য কোয়ায়েট গার্ল&amp;rsquo;।&lt;/p&gt;\r\n\r\n&lt;p&gt;সেরা আন্তর্জাতিক সিনেমার সঙ্গে সেরা অরজিনাল স্কোর, সেরা প্রডাকশন নকশার পুরস্কারও ঝুলিতে ভরেছে &amp;lsquo;অল কোয়ায়েট অন দ্য ওয়েস্টার্ন ফ্রন্ট&amp;rsquo;।&lt;br /&gt;\r\nচলচ্চিত্রের সবচেয়ে বড় এ আসরে ২৩টি শাখায় পুরস্কার ঘোষণা করা হবে; অনুষ্ঠানটি উপস্থাপনা করছেন জিমি কিমেল।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/13032300e4e7ccc4216e6.webp', 'রিখ মারিয়া রেমার্কের একই নামের উপন্যাস থেকে তৈরি হয়েছে ‘অল কোয়ায়েট অন দ্য ওয়েস্টার্ন ফ্রন্ট’', 'www.facebook.com/samojugnews', 0, 0, '0', '2023-03-13 06:46:37', 1, 1),
(297, 'samojugc_datatable', 5, 62, 'অস্কারে সেরা সিনেমার পুরস্কার জিতেছে যে ছবি', 'অস্কারে সেরা সিনেমার পুরস্কার জিতেছে যে ছবি', '&lt;p&gt;অবশেষে এল সেই মাহেন্দ্রক্ষণ, জানা গেলে অস্কারের সেরা সিনেমার নাম। বিশ্ব চলচ্চিত্রের সবচেয়ে জমকালো আসর একাডেমি অ্যাওয়ার্ডসের ৯৫তম আসরের সেরা সিনেমা হিসেবে &amp;lsquo;এভরিথিং এভরিহয়ার অল অ্যাট ওয়ানস&amp;rsquo;-এর নাম ঘোষণা করা হয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;বাংলাদেশ সময় আজ সোমবার সকালে যুক্তরাষ্ট্রের লস অ্যাঞ্জেলেসের ডলবি থিয়েটারে জমকালো আয়োজনে অস্কারের ৯৫তম আসরে পুরস্কার ঘোষণা করা হয়।&lt;br /&gt;\r\nএবারের আসরে ১১ শাখায় মনোনয়ন পাওয়া যুক্তরাষ্ট্রের সিনেমাটি যে বাজিমাত করবে, তা অনেকটা অনুমিতই ছিল।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/21.webp&quot; style=&quot;height:499px; width:640px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;সিনেমাটি পরিচালনা করেছেন ড্যানিয়েল কোয়ান ও ড্যানিয়েল শেইনার্ট&lt;/p&gt;\r\n\r\n&lt;p&gt;সেরা সিনেমার লড়াইয়ে &amp;lsquo;অ্যাভাটার: দ্য ওয়ে অব ওয়াটার&amp;rsquo;, &amp;lsquo;দ্য বানশিজ অব ইনশেরিন&amp;rsquo;, &amp;lsquo;এলভিস&amp;rsquo;, &amp;lsquo;দ্য ফ্যাবেলম্যানস&amp;rsquo;, &amp;lsquo;টার&amp;rsquo;, &amp;lsquo;টপ গান: ম্যাভেরিক&amp;rsquo;, &amp;lsquo;ট্রায়াঙ্গেল অব স্যাডনেস&amp;rsquo;, &amp;lsquo;ওমেন টকিং&amp;rsquo;-এর মতো সিনেমাকে পেছনে ফেলেছে &amp;lsquo;এভরিথিং এভরিহয়ার অল অ্যাট ওয়ানস&amp;rsquo;।&lt;/p&gt;\r\n\r\n&lt;p&gt;সেরা সিনেমা ছাড়াও &amp;lsquo;এভরিথিং এভরিহয়ার অল অ্যাট ওয়ানস&amp;rsquo;&amp;ndash;এর পরিচালক ড্যানিয়েল কোয়ান ও ড্যানিয়েল শেইনার্ট সেরা পরিচালকের পুরস্কার পেয়েছেন। সিনেমার প্রধান অভিনেত্রী মিশেল ইয়ো পেয়েছেন সেরা অভিনেত্রীর পুরস্কার। এবারের আসরে মোট ৭ শাখায় পুরস্কার পেয়েছে সিনেমাটি।&lt;br /&gt;\r\nচলচ্চিত্রের সবচেয়ে বড় এ আসরে ২৩টি শাখায় পুরস্কার ঘোষণা করা হবে; অনুষ্ঠানটি উপস্থাপনা করছেন জিমি কিমেল।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'empty file', 'সিনেমার দৃশ্য', 'www.facebook.com/samojugnews', 0, 0, '0', '2023-03-13 06:50:50', 1, 1),
(298, 'samojugc_datatable', 5, 63, '৬ মাস কাজের সুযোগ ইএমকে সেন্টারে, সম্মানী মাসে ৪৫ হাজার', '৬ মাস কাজের সুযোগ ইএমকে সেন্টারে, সম্মানী মাসে ৪৫ হাজার', '&lt;p&gt;ঢাকার ইএমকে সেন্টারে ইমার্জিং লিডার্স গ্র্যাজুয়েট প্রোগ্রামের অংশ হিসেবে সদ্য স্নাতক বা তরুণ পেশাজীবীদের কাছ থেকে আবেদন গ্রহণ করা হচ্ছে। তরুণদের কর্মদক্ষতা ও সৃজনশীলতা বাড়ানোর উদ্দেশ্য হাতেকলমে এই প্রশিক্ষণের আয়োজন করেছে ইএমকে সেন্টার। ইমার্জিং লিডার্স গ্র্যাজুয়েট প্রোগ্রামে যাঁরা নির্বাচিত হবেন, তাঁরা এপ্রিল থেকে সেপ্টেম্বর পর্যন্ত ইএমকে সেন্টারের বিভিন্ন কাজে যুক্ত হয়ে দক্ষতা বিকাশের সুযোগ পাবেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;এই সময় নির্বাচিত প্রার্থীদের প্রতি মাসে ৪৫ হাজার টাকা করে সম্মানী ভাতা দেওয়া হবে। ইমার্জিং লিডার্স গ্র্যাজুয়েট প্রোগ্রামে নির্বাচিত হওয়ার জন্য শিক্ষার্থী ও অংশগ্রহণকারী তরুণদের দলগতভাবে কাজ, নেতৃত্বে দক্ষতা, বিভিন্ন সমস্যা সমাধান ও উপস্থাপনার ওপর নানা বিষয়ে অংশ নিতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;যেভাবে অংশ নেওয়া যাবে:&lt;/strong&gt; ১৬ মার্চ পর্যন্ত ইমার্জিং লিডার্স গ্র্যাজুয়েট প্রোগ্রামের জন্য আবেদন গ্রহণ করা হবে। মার্চের শেষ সপ্তাহ ও এপ্রিলের প্রথম সপ্তাহে অংশগ্রহণকারী প্রার্থীদের চার দিনের চ্যালেঞ্জে অংশগ্রহণ করতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;দায়িত্ব ও সুযোগ-সুবিধা:&lt;/strong&gt; ছয় মাস ইএমকে সেন্টারে ইমার্জিং লিডার হিসেবে সরাসরি কাজের সুযোগ মিলবে। এসব দৈনন্দিন কাজের তদারক ছাড়াও বিভিন্ন সৃজনশীল ও প্রকল্পনির্ভর কাজে যুক্ত হতে হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;নেতৃত্বের দক্ষতা, নেটওয়ার্কিং দক্ষতা, বাজেট তৈরি ও বাস্তবায়নের সুযোগ, সৃজনশীলতা ও সৃজনী দক্ষতা প্রকাশের বিভিন্ন বিষয় শেখার সুযোগ থাকবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;যেভাবে আবেদন করবেন:&lt;/strong&gt; ছয় মাসব্যাপী এই প্রোগ্রামে অংশগ্রহণের জন্য শিক্ষার্থীদের ৯০ থেকে ১২০ সেকেন্ডের একটি ভিডিও প্রেজেন্টেশন জমা দিতে হবে। নির্ধারিত গুগল ফরমের মাধ্যমে আবেদন জমা দেওয়া যাবে। আবেদন করতে ক্লিক করুন &lt;a href=&quot;https://emkcenter.org/emerging-leaders-graduate-program&quot; target=&quot;_blank&quot;&gt;এখানে&lt;/a&gt;।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/13032399392cf1a865f76.webp', 'মডেল: বিভা', 'www.facebook.com/samojugnews', 0, 0, '0', '2023-03-13 06:57:14', 0, 1),
(299, 'samojugc_datatable', 5, 64, 'ঘুরে ঘুরে পাহারা দেয় এই রোবট', 'ঘুরে ঘুরে পাহারা দেয় এই রোবট', '&lt;p&gt;সিসি ক্যামেরার মাধ্যমে দূর থেকে ঘর পাহারা দেন অনেকেই। কেউ আবার ঘরের ভেতরে ক্যামেরা যুক্ত করে সন্তান বা পরিবারের বয়স্ক সদস্যদের দেখভাল করেন। কিন্তু ক্যামেরার মাধ্যমে ঘরের ভেতরের সব দৃশ্য ভালোভাবে দেখা যায় না। সমস্যার সমাধান দেবে ইনাবটের তৈরি ইবো এক্স মডেলের রোবট।&lt;/p&gt;\r\n\r\n&lt;p&gt;এইচডি ক্যামেরাযুক্ত গোলাকার রোবটটি মুখের কথার পাশাপাশি ফোনের মাধ্যমেও নিয়ন্ত্রণ করা যায়। ফলে দূর থেকে রোবটটিকে এক রুম থেকে অন্য রুমে পাঠিয়ে সেই রুমের দৃশ্য দেখা সম্ভব। শুধু তা&amp;ndash;ই নয়, কাজের ধরন নির্বাচন করে দিলে নিজ থেকেই ঘরের বিভিন্ন স্থানে ঘুরে ঘুরে ভিডিও করতে পারে চাকাযুক্ত রোবটটি। ফলে দূর থেকে সহজেই ঘর পাহারা দেওয়া সম্ভব। মে মাসে বাজারে আসবে রোবটটি।&lt;br /&gt;\r\nসূত্র: গিজমো চায়না&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/1303236b4b5f0c840866e.webp', 'ইবো এক্স রোবট', 'www.facebook.com/samojugnews', 0, 0, '0', '2023-03-13 07:02:34', 0, 1),
(300, 'samojugc_datatable', 5, 64, 'তথ্যপ্রযুক্তি পেশাজীবীদের সম্মেলনে ‘স্মার্ট সমাজ’ গড়ে তোলার তাগিদ', 'তথ্যপ্রযুক্তি পেশাজীবীদের সম্মেলনে ‘স্মার্ট সমাজ’ গড়ে তোলার তাগিদ', '&lt;p&gt;তথ্যপ্রযুক্তি পেশাজীবীদের সংগঠন বাংলাদেশ আইটি প্রফেশনাল ফ্রেন্ডস ক্লাবের তৃতীয় তথ্যপ্রযুক্তি (আইটি) সম্মেলন শুক্রবার রাজধানীর একটি হোটেলে অনুষ্ঠিত হয়েছে। সম্মেলনে দেশের বিভিন্ন খাতে কর্মরত তথ্যপ্রযুক্তি পেশাজীবীরা অংশগ্রহণ করেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;সম্মেলনের প্রধান অতিথি বাংলাদেশ হাইটেক পার্ক কর্তৃপক্ষের সাবেক ব্যবস্থাপনা পরিচালক বিকর্ণ কুমার ঘোষ বলেন, বিশ্বের সঙ্গে তাল মিলিয়ে চলতে হলে তথ্যপ্রযুক্তির কোনো বিকল্প নেই। তথ্যপ্রযুক্তি রপ্তানি খাতে বাংলাদেশ এখন ১৪০ কোটি মার্কিন ডলার আয় করে। প্রায় ছয় লাখ তরুণ&amp;ndash;তরুণী ফ্রিল্যান্সার হিসেবে কাজ করেন। সরকার এরই মধ্যে সারা দেশের বিদ্যালয়গুলোয় ১৩ হাজার &amp;lsquo;শেখ রাসেল ডিজিটাল ল্যাব&amp;rsquo; তৈরি করে দিয়েছে। ২০২৫ সালের মধ্যে সব শিক্ষাপ্রতিষ্ঠানে একটি করে ডিজিটাল ল্যাব তৈরি করার পরিকল্পনা রয়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;সম্মেলনে ইন্টারনেট সংযোগদাতাদের সংগঠন ইন্টারনেট সার্ভিস প্রোভাইডার অ্যাসোসিয়েশন অব বাংলাদেশের সভাপতি ইমদাদুল হক বলেন, দেশের উন্নয়নে নিরবচ্ছিন্ন ইন্টারনেট সেবা নিশ্চিত করতে হবে। বর্তমানে ১২ কোটি মানুষ ব্রডব্যান্ড ইন্টারনেট সেবার আওতায় রয়েছেন। স্কাইলার্ক সফট লিমিটেডের ব্যবস্থাপনা পরিচালক বি এম শরীফ বলেন, দেশকে এগিয়ে নিতে হলে প্রযুক্তিতে দক্ষ জনবলের বিকল্প নেই।&lt;/p&gt;\r\n\r\n&lt;p&gt;সম্মেলনে বাংলাদেশ আইটি প্রফেশনালস ফ্রেন্ডস ক্লাবের সভাপতি প্রেসিডেন্ট সালেহ মোবিন বলেন, &amp;lsquo;প্রধানমন্ত্রী ২০৪১ সালে স্মার্ট বাংলাদেশ গড়ার যে ঘোষণা দিয়েছেন, তা সরকারের একার পক্ষে সম্ভব নয়। আমাদেরও সরকারকে সহযোগিতা করতে হবে। স্মার্ট সরকার, স্মার্ট জনগণ, স্মার্ট অর্থনীতি, সর্বোপরি স্মার্ট সমাজ তৈরি করতে হবে।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;সম্মেলনে আরও উপস্থিত ছিলেন কনা সফটওয়্যার ল্যাব লিমিটেডের পরিচালক জুলফিকার রহমান, কোডম্যান বিডির প্রতিষ্ঠাতা মিনহাজুল আসিফ, ফার্স্ট সিকিউরিটি ব্যাংকের হেড অব আইসিটি মুশফিকুর রহমান, এ অ্যান্ড এ কনসাল্টিংয়ের ব্যবস্থাপনা পরিচালক শাহজেব ইবনে হোসেন এবং ব্রাক ব্যাংকের ভাইস প্রেসিডেন্ট ও অ্যাপ্লিকেশন প্রধান মনতোষ রায়।&lt;/p&gt;\r\n\r\n&lt;p&gt;সম্মেলনের পৃষ্ঠপোষক ছিল স্কাইলার্ক সফট লিমিটেড, ফিউশান ইনফোটেক লিমিটেড, এক্সেস টেলিকম বিডি লিমিটেড, স্মার্ট গ্রুপ, এনজি আইটি লিমিটেড ও পিপলস এইচআর। ডিজিটাল অংশীদার ছিল ব্যাকস্পেস ইন্টারন্যাশনাল।&lt;/p&gt;\r\n\r\n&lt;p&gt;বাংলাদেশ আইটি প্রফেশনালস ফ্রেন্ডস ক্লাব একটি অলাভজনক সংগঠন। বর্তমানে এই ক্লাবের সদস্য ১০ হাজারের বেশি। ক্লাবটির লক্ষ্য, পেশাগত প্রশিক্ষণের মাধ্যমে তথ্য ও যোগাযোগ প্রযুক্তি খাতে দক্ষ জনবল তৈরি করা, নতুন নতুন প্রযুক্তি নিয়ে কর্মশালা, সেমিনারের আয়োজন করা। ২০৪১ সালের স্মার্ট বাংলাদেশ বিনির্মাণে তরুণদের তথ্যপ্রযুক্তিতে দক্ষ করে তোলাই এই সংগঠনের মূল উদ্দেশ্য।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/1303232ed0807b806f89a.webp', 'বাংলাদেশ আইটি প্রফেশনাল ফ্রেন্ডস ক্লাবের সম্মেলনে অংশগ্রহনকারীরা', 'www.facebook.com/samojugnews', 0, 0, '0', '2023-03-13 07:05:52', 0, 1),
(301, 'samojugc_datatable', 5, 64, 'ব্যাগের মতো দেখতে তারহীন পার্টি স্পিকার', 'ব্যাগের মতো দেখতে তারহীন পার্টি স্পিকার', '&lt;p&gt;বন্ধু বা পরিবারের সদস্যদের সঙ্গে বেড়ানোর সময় তারহীন স্পিকার নিয়ে যান অনেকেই। উদ্দেশ্য একটাই, আশপাশে বিদ্যুৎ&amp;ndash;সংযোগ না থাকলেও তারহীন স্পিকারের সাহায্যে ঠিকই গান শোনা যাবে। কিন্তু ভালোমানের তারহীন স্পিকারগুলোর আকার সাধারণত বড় হয়ে থাকে। ফলে স্পিকার নিয়ে যাওয়ার ঝক্কিও কম নয়। এ সমস্যা থেকে মুক্তি দেবে ট্রাইবিটের তৈরি স্টর্মবক্স ব্লাস্ট। ব্লুটুথ&amp;ndash;প্রযুক্তি সমর্থন করায় যেকোনো মুঠোফোন থেকে তারের সংযোগ ছাড়াই গান বাজানো যায় স্পিকারটিতে।&lt;/p&gt;\r\n\r\n&lt;p&gt;ট্রাইবিট স্টর্মবক্স ব্লাস্ট মডেলের ৯০ ওয়াটের স্পিকারটির ওজন মাত্র ৫ কেজি। ব্যাগের আকৃতি হওয়ায় হাতলও রয়েছে স্পিকারটিতে। ফলে কারও সাহায্য ছাড়াই বহন করা যায়। পানিরোধক স্পিকারটিতে এলইডি থাকায় রাতের বেলায় গানের তালে তালে আলোও জ্বলে। টানা ৩০ ঘণ্টা ব্যাটারিতে চলতে সক্ষম স্পিকারটির দাম ২০০ ডলার।&lt;br /&gt;\r\nসূত্র: হাওটুগিক ডটকম&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/1303238dffb7fcb66c479.webp', 'ট্রাইবিট স্টর্মবক্স ব্লাস্টের তারহীন স্পিকার', 'www.facebook.com/samojugnews', 0, 0, '0', '2023-03-13 07:07:22', 0, 1),
(302, 'samojugc_datatable', 5, 65, 'বুয়েটে আবেদন ফি জমা শেষ আজই, পরীক্ষা দুই ধাপে', 'বুয়েটে আবেদন ফি জমা শেষ আজই, পরীক্ষা দুই ধাপে', '&lt;p&gt;বাংলাদেশ প্রকৌশল বিশ্ববিদ্যালয়ে (বুয়েট) ২০২২-২৩ শিক্ষাবর্ষের ভর্তিতে আবেদন গতকাল রোববার (১২ মার্চ) বেলা তিনটায় শেষ হয়েছে। আবেদন ফি জমা দেওয়া যাবে আজ সোমবার (১৩ মার্চ) বেলা তিনটা পর্যন্ত। &lt;a href=&quot;https://drive.google.com/file/d/16bV2FW_Q2pk_ai_A8PSNwuHGTeQLCf6a/view&quot; target=&quot;_blank&quot;&gt;ফি জমা দেওয়া যাবে মুঠোফোন বা অনলাইন ব্যাংকিংয়ের মাধ্যমে&lt;/a&gt;। ১ মার্চ সকাল ১০টা থেকে এ আবেদন শুরু হয়েছিল।&lt;/p&gt;\r\n\r\n&lt;h2&gt;ভর্তি পরীক্ষার তারিখ&lt;/h2&gt;\r\n\r\n&lt;p&gt;বুয়েটের স্নাতক ভর্তি পরীক্ষার ভর্তি নির্দেশিকায় বলা হয়েছে, ২০২২-২৩ শিক্ষাবর্ষের বুয়েটে ভর্তি পরীক্ষা দুই ধাপে অনুষ্ঠিত হবে। আবেদনকারীদের মধ্য থেকে প্রাথমিক বাছাইয়ের জন্য আগামী ২০ মে দুই শিফটে প্রাক্&amp;zwnj;-নির্বাচনী পরীক্ষা অনুষ্ঠিত হবে। &amp;lsquo;ক&amp;rsquo; ও &amp;lsquo;খ&amp;rsquo; গ্রুপের জন্য মোট ১০০ নম্বরের এমসিকিউ পরীক্ষা অনুষ্ঠিত হবে। সময় এক ঘণ্টা। প্রথম শিফটের পরীক্ষা সকাল ১০টায় ও দ্বিতীয় শিফটের পরীক্ষা বেলা ৩টায় শুরু হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;প্রাক্&amp;zwnj;&amp;ndash;নির্বাচনী পরীক্ষায় নেগেটিভ মার্ক থাকবে। প্রতিটি ভুল উত্তরের জন্য প্রাপ্ত নম্বর থেকে প্রশ্নের মানের ২৫ শতাংশ কেটে নেওয়া হবে। ২৭ মে মূল ভর্তি পরীক্ষায় অংশগ্রহণের জন্য যোগ্য আবেদনকারীদের নাম প্রকাশ করবে বুয়েট। পরে আগামী ১০ জুন মূল ভর্তি পরীক্ষা অনুষ্ঠিত হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;মূল ভর্তি পরীক্ষার মধ্যে থাকবে সকাল ১০টা থেকে দুপুর ১২টা পর্যন্ত মডিউল-এ&amp;ndash;এর &amp;lsquo;ক&amp;rsquo; ও &amp;lsquo;খ&amp;rsquo; গ্রুপের জন্য গণিত, পদার্থবিজ্ঞান ও রসায়ন পরীক্ষা। বেলা ২টা থেকে সাড়ে ৩টা পর্যন্ত মডিউল-বি&amp;ndash;এর &amp;lsquo;খ&amp;rsquo; গ্রুপের মুক্তহস্ত অঙ্কন এবং দৃষ্টিগত ও স্থানিক ধীশক্তি পরীক্ষা। এরপর আগামী ২৬ জুন নির্বাচিত ও অপেক্ষমাণ প্রার্থীদের নামের তালিকা প্রকাশ করা হবে।&lt;/p&gt;\r\n\r\n&lt;h2&gt;আসনসংখ্যা&lt;/h2&gt;\r\n\r\n&lt;p&gt;২০২২-২৩ শিক্ষাবর্ষে পার্বত্য চট্টগ্রাম ও অন্যান্য এলাকার ক্ষুদ্র জাতিগোষ্ঠীভুক্ত প্রার্থীদের প্রকৌশল বিভাগ এবং নগর ও অঞ্চল&amp;ndash;পরিকল্পনা বিভাগের জন্য মোট তিনটি, স্থাপত্য বিভাগে একটি সংরক্ষিত আসনসহ মোট ১ হাজার ৩০৯টি আসনের জন্য ভর্তি পরীক্ষা নেওয়া হবে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/130323df5f71435db7b49.webp', 'ফাইল ছবি', 'www.facebook.com/samojugnews', 0, 0, '0', '2023-03-13 07:10:24', 1, 1),
(303, 'samojugc_datatable', 5, 65, 'মেডিকেলে টিকবেন নিশ্চিত ছিলেন, প্রথম হবেন ভাবেননি রাফসান', 'মেডিকেলে টিকবেন নিশ্চিত ছিলেন, প্রথম হবেন ভাবেননি রাফসান ', '&lt;p&gt;দেশের সরকারি ও &lt;a href=&quot;https://www.prothomalo.com/education/admission/8esm21cq4n&quot; target=&quot;_blank&quot;&gt;বেসরকারি মেডিকেল কলেজে&lt;/a&gt; ২০২২-২৩ শিক্ষাবর্ষে এমবিবিএস ভর্তি পরীক্ষার ফল গতকাল রোববার প্রকাশ করা হয়েছে। এবার পরীক্ষায় অংশ নেন ১ লাখ ৩৫ হাজার ৮০০ জন। &lt;a href=&quot;https://www.prothomalo.com/education/examination/q305m67y93&quot; target=&quot;_blank&quot;&gt;পাসের হার ৩৫ দশমিক ৩৪ শতাংশ&lt;/a&gt;। পরীক্ষায় অংশ নেওয়া শিক্ষার্থীদের মধ্য পাস করেছেন ৪৯ হাজার ১৯৪ জন শিক্ষার্থী। এরমধ্যে মেয়ে শিক্ষার্থী ২৮ হাজার ৩৮১ জন (৫৭.৬৯ শতাংশ) এবং ছেলে শিক্ষার্থী ২০ হাজার ৮১৩ জন (৪২.৩১ শতাংশ)।&lt;/p&gt;\r\n\r\n&lt;p&gt;এমবিবিএস ভর্তি পরীক্ষায় এবার দেশসেরা হয়েছেন রাফসান জামান। ভর্তি পরীক্ষা দিয়ে ততটা খুশি ছিলেন না রাফসান জামান। তাই মন কিছুটা খারাপ ছিল। তবে তিনি মোটামুটি নিশ্চিত ছিলেন, &lt;a href=&quot;https://www.prothomalo.com/education/tqsx941qec&quot; target=&quot;_blank&quot;&gt;মেডিকেলে টিকবেন।&lt;/a&gt; তবে প্রথম হবেন, তা কিন্তু ভাবতে পারেননি। রোববার পরীক্ষার ফলাফল ঘোষণার পর বিস্মিত হন রাফসান জামান।&lt;/p&gt;\r\n\r\n&lt;blockquote&gt;রাফসানের টেস্ট স্কোর ছিল ৯৪ দশমিক ২৫। মেরিট স্কোর ২৯৪ দশমিক ২৫। মেধাতালিকায় প্রথম হিসেবে তিনি ঢাকা মেডিকেল কলেজে সুযোগ পেয়েছেন।&lt;/blockquote&gt;\r\n\r\n&lt;blockquote&gt;আমি টিকব তা আশা করেছিলাম কিন্তু এত ভালো ফল ভাবতে পারিনি। একজন ডাক্তার হিসেবে মানুষের সেবা করতে চাই&lt;/blockquote&gt;\r\n\r\n&lt;blockquote&gt;&lt;img alt=&quot;&quot; src=&quot;extra/resources/uploads/ckEditor/28.webp&quot; style=&quot;height:440px; width:640px&quot; /&gt;&lt;/blockquote&gt;\r\n\r\n&lt;blockquote&gt;&amp;nbsp;&lt;/blockquote&gt;\r\n\r\n&lt;blockquote&gt;চট্টগ্রামের হালিশহরে বেড়ে ওঠা রাফসান জামানের বাড়ি রংপুরে। জন্মের পরপর বাবা এ কে এম শামসুজ্জামানের সঙ্গে পুরো পরিবার চট্টগ্রাম চলে আসে। শামসুজ্জামান সিটি গ্রুপ অব কোম্পানিজের উপমহাব্যবস্থাপক। এক বোন এক ভাইয়ের মধ্যে রাফসান ছোট। বড় বোন সাদীয়া ইবনে রাইসা এবার চট্টগ্রাম প্রকৌশল ও প্রযুক্তি বিশ্ববিদ্যালয় থেকে পড়াশোনা শেষ করেছেন।&lt;/blockquote&gt;\r\n\r\n&lt;blockquote&gt;\r\n&lt;p&gt;রাফসানের টেস্ট স্কোর ছিল ৯৪ দশমিক ২৫। মেরিট স্কোর ২৯৪ দশমিক ২৫। মেধাতালিকায় প্রথম হিসেবে তিনি ঢাকা মেডিকেল কলেজে সুযোগ পেয়েছেন। পরীক্ষার ফলাফলের বিষয়ে রাফসান জামান বলেন, &amp;lsquo;আমি টিকব তা আশা করেছিলাম কিন্তু এত ভালো ফল ভাবতে পারিনি।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;ছোটবেলায় রাফসান চট্টগ্রাম গ্রামার স্কুলে পড়েছেন। এরপর রাজশাহী ক্যাডেট কলেজ থেকে এসএসএসি ও এইচএসসি পাস করেন। এইচএসসির পর চট্টগ্রামের বাসায় এসে মেডিকেলে ভর্তির জন্য পড়ালেখা শুরু করেন। একটি কোচিং সেন্টারে কোচিংও করেছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;শামসুজ্জামান ও কাউসার নাজনীন দম্পতির সন্তান রাফসান &lt;em&gt;প্রথম আলো&lt;/em&gt;কে বলেন, &amp;lsquo;প্রথমে আল্লাহর কাছে শুকরিয়া। বাবা&amp;ndash;মা অনেক কষ্ট করেছেন আমার জন্য। এরপর আমার নিজের চেষ্টা রয়েছে। চেষ্টার কোনো ত্রুটি করিনি।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;রাফসান কখনো ঘড়ি ধরে পড়তেন না। কখনো ৬ ঘণ্টা, কখনো ৭ ঘণ্টা পড়তেন। নিয়মিত অধ্যবসায় এবং সর্বোচ্চ চেষ্টা তাঁর এই সাফল্য এনেছে বলে মনে করছেন রাফসান। রাফসান বলেন, &amp;lsquo;আমি কখনো ঘড়ি ধরে পড়িনি। তবে সকাল ও বিকেলে নিয়ম করে পড়তাম। শুধু মেডিকেলের জন্য চেষ্টা করে গেছি।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;মেডিকেল কলেজে ভর্তি পরীক্ষায় প্রথম রাফসান নিজের সাফল্যে বিস্মিত ভবিষ্যতে একজন ভালো ও মানবিক চিকিৎসক হিসেবে নিজেকে গড়ে তুলতে চান তিনি। পড়তে চান নিউরোসার্জারি নিয়ে। রাফসান বলেন, &amp;lsquo;একজন ডাক্তার হিসেবে মানুষের সেবা করতে চাই।&amp;rsquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\nচট্টগ্রামে নিজেদের বাসায় বাবা, মা ও বোনের সঙ্গে রাফসান জামান&lt;/blockquote&gt;', 'extra/resources/uploads/samojugc/img/130323b7d4bcc09cc9db7.webp', 'রাফসান জামান', 'www.facebook.com/samojugnews', 0, 0, '0', '2023-03-13 07:14:00', 1, 1),
(304, 'samojugc_datatable', 5, 66, 'এখন পর্যন্ত হজে যেতে নিবন্ধন করেছেন ৮০ হাজার ব্যক্তি', 'এখন পর্যন্ত হজে যেতে নিবন্ধন করেছেন ৮০ হাজার ব্যক্তি', '&lt;p&gt;চাঁদ দেখা সাপেক্ষে আগামী ২৭ জুন পবিত্র হজ হতে পারে। এ বছর হজে যাওয়ার জন্য বাংলাদেশের কোটা রয়েছে ১ লাখ ২৭ হাজার ১৯৮ জন। এর মধ্যে সরকারি ব্যবস্থাপনায় ১৫ হাজার এবং বাকিরা যাবেন বেসরকারি ব্যবস্থাপনায়। আজ রোববার পর্যন্ত হজে যেতে নিবন্ধন করেছেন মোট ৮০ হাজার ৭৩৪ জন। এর মধ্যে সরকারি ব্যবস্থাপনায় হজে যেতে ৯ হাজার ৩৪২ জন এবং বেসরকারি ব্যবস্থাপনায় ৭১ হাজার ৩৯২ জন নিবন্ধন করেছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;১৬ মার্চ পর্যন্ত নিবন্ধনের সুযোগ রয়েছে। হজ এজেন্সিজ অ্যাসোসিয়েশন অব বাংলাদেশের (হাব) জ্যেষ্ঠ সহসভাপতি মাওলানা ইয়াকুব শরাফতি বলেন, সরকার নিবন্ধনের তারিখ বাড়ানোয় নতুন প্রাক্&amp;zwnj;&amp;ndash;নিবন্ধনকারীরা সুযোগ পেয়েছেন। তিনি আরও বলেন, হজে যেতে নিবন্ধনের গতি বেড়েছে। তবে এবার হজের খরচ অনেক বেড়ে যাওয়ায় ইচ্ছা থাকলেও কেউ কেউ নিবন্ধন করা নিয়ে জটিলতায় পড়েছেন।&lt;/p&gt;\r\n\r\n&lt;p&gt;এবার সরকারিভাবে হজে যেতে মোট ব্যয় ধরা হয়েছে ৬ লাখ ৮৩ হাজার ১৫ টাকা। আর বেসরকারিভাবে খরচ হবে ৬ লাখ ৭২ হাজার ৬১৮ টাকা। গত বছর সরকারিভাবে হজে যেতে খরচ ধরা হয়েছিল ৫ লাখ ২৭ হাজার ৩৪০ টাকা। ওই বছর হজ প্যাকেজে ডলারের দাম ধরা ছিল ৯৪ টাকা, সৌদি রিয়ালের দাম ধরা ছিল ২৪ দশমিক ৩০ টাকা। এবার ডলারের দাম ধরা হয়েছে ১০৪ টাকা, সৌদি রিয়ালের দাম ধরা হয়েছে ২৮ দশমিক ৩৯ টাকা। অর্থাৎ গত বছরের চেয়ে এ বছরে হজের খরচ দেড় লাখ থেকে প্রায় ২ লাখ ২১ হাজার টাকা পর্যন্ত বেড়েছে। অন্যান্য বছরের তুলনায় এ বছরে ডলারের মূল্যবৃদ্ধি, বিমানভাড়া বেড়ে যাওয়া, সৌদি আরবে খরচ বেড়ে যাওয়ায় হজ প্যাকেজে খরচ বেড়েছে।&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;খরচের খাত&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;ধর্মবিষয়ক মন্ত্রণালয় নির্ধারিত ২০২৩ সালের হজের খরচ দেওয়া হলো ১. বিমানভাড়া ১ লাখ ৯৭ হাজার ৭৯৭ টাকা ২. মক্কা ও মদিনায় বাড়িভাড়া ২ লাখ ৪ হাজার ৪৪৪ টাকা ৩. জেদ্দা, মক্কা, মদিনা-মুজদালিফা, পরিবহন ব্যয় ৩৫ হাজার ১৬২ টাকা ৪. বাস সার্ভিস ২ হাজার ৮৩৯ টাকা ৫. জমজমের পানি ৪২৫ টাকা ৬. তাঁবু, বিছানা, চাদর, বালিশ কম্বল, খাবার সরবরাহে মোয়াল্লেম সেবার ফি ১ লাখ ৬০ হাজার ৬৩০ টাকা ৭. মক্কায় লাগেজ পরিবহন ৫৮৭ টাকা ৮. মক্কা-মদিনা-আরাফাত-মুজদালিফা-মিনা-মক্কা বাসভাড়া ১৯ হাজার ৩৩৩ টাকা ৯. দেশে ফেরার সময় মক্কা-মদিনা থেকে লাগেজ পরিবহন ৮৫১ টাকা ১০. ভিসা ফি ৮৫১৭ টাকা ১১. স্বাস্থ্যবিমা বাবদ সৌদি সরকারকে দেওয়া ফি ৯৪৬ টাকা ১২. আইডি কার্ড, আইটি সার্ভিস ইত্যাদি ৮০০ টাকা ১৩. হজযাত্রীদের কল্যাণ তহবিল ২০০ টাকা ১৪. প্রশিক্ষণ ফি ৩০০ টাকা ১৫. খাওয়া খরচ ৩৫ হাজার টাকা ১৬. হজ গাইড ১৫ হাজার ১৭৮ টাকা।&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'extra/resources/uploads/samojugc/img/130323040b1be653f4354.webp', 'ফাইল ছবি: রয়টার্স', 'www.facebook.com/samojugnews', 0, 0, '0', '2023-03-13 07:19:06', 0, 1),
(305, 'samojugc_datatable', 0, 0, 'Text Input Here..........', 'Text Input Here..........', '&lt;p&gt;write your description.&lt;/p&gt;', 'empty file', 'Text Input Here..........', 'Text Input Here..........', 0, 0, '0', '2023-03-21 18:12:46', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `samojugc_tag_datatable`
--

CREATE TABLE `samojugc_tag_datatable` (
  `id` int(11) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `samojugc_youtube_datatable`
--

CREATE TABLE `samojugc_youtube_datatable` (
  `id` int(11) NOT NULL,
  `link` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `samojugc_youtube_datatable`
--

INSERT INTO `samojugc_youtube_datatable` (`id`, `link`, `date`, `status`) VALUES
(1, 'https://youtu.be/VlGt2-IrpN0', '2023-03-06 14:34:27', 1),
(2, 'https://www.youtube.com/embed/a0UuDzU2Bq8', '2023-03-06 14:40:14', 1),
(3, 'https://www.youtube.com/watch?v=xtrCEsk1fsg', '2023-03-06 14:41:54', 1),
(4, 'https://www.youtube.com/embed/xtrCEsk1fsg', '2023-03-06 14:44:09', 1),
(5, 'Text Input Here..........', '2023-03-21 17:44:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `school_database`
--

CREATE TABLE `school_database` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `search_datatable`
--

CREATE TABLE `search_datatable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` text NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT 'bangladesh',
  `division` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `photo` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shop_datatable`
--

CREATE TABLE `shop_datatable` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `keywords` text NOT NULL,
  `name` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `desctiption` text NOT NULL,
  `price` int(11) NOT NULL,
  `division` text NOT NULL,
  `district` text NOT NULL,
  `police_station` text NOT NULL,
  `category` text NOT NULL,
  `img_one` text NOT NULL,
  `img_two` text NOT NULL,
  `img_three` text NOT NULL,
  `img_four` text NOT NULL,
  `NID` text NOT NULL,
  `video` text NOT NULL,
  `unique_id` int(11) NOT NULL,
  `doctor_id` varchar(255) NOT NULL,
  `certified` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop_datatable`
--

INSERT INTO `shop_datatable` (`id`, `title`, `keywords`, `name`, `mobile`, `email`, `desctiption`, `price`, `division`, `district`, `police_station`, `category`, `img_one`, `img_two`, `img_three`, `img_four`, `NID`, `video`, `unique_id`, `doctor_id`, `certified`, `status`, `date`) VALUES
(1, 'post title', '', 'sabbiradasdasd', '01775567493', 'youdweqeq@example.com', '<p>textweqweqweq</p>\r\n', 600, 'ঢাকা', 'শরীয়তপুর', 'শরিয়তপুর সদর', 'হাড় ছাড়া মাংস গরুর কুরলের মাংস', 'extra/resources/uploads/belle/img/c44c31be71016dc.png', 'extra/resources/uploads/belle/img/c44c31be71016dc.png', 'extra/resources/uploads/belle/img/c44c31be71016dc.png', 'extra/resources/uploads/belle/img/c44c31be71016dc.png', 'extra/resources/uploads/belle/img/c44c31be71016dc.png', 'extra/resources/uploads/belle/img/c44c31be71016dc.png', 225477691, 'empty', 0, 1, '2022-08-29 09:35:24'),
(2, 'st mode to sign in privately. Learn more. Next. Create account.', '', 'israt', '01775567493', 'isratahamedsabbir@example.com', '<p>textdfgdgdgfdfg</p>\r\n', 700, 'ঢাকা', 'শরীয়তপুর', 'শরিয়তপুর সদর', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস গরুর কলিজা গরুর ব্রেন গরুর পায়া', 'extra/resources/uploads/belle/img/7e67101f94c5a34.jpg', 'extra/resources/uploads/belle/img/062221fe013d65a.jpg', 'extra/resources/uploads/belle/img/d0027de888d6cb3.jpg', 'extra/resources/uploads/belle/img/0fbc389b5e2f77e.jpg', 'extra/resources/uploads/belle/img/bf29ce10e84cbfb.jpg', 'extra/resources/uploads/belle/img/1d8f55e2ea31802.jpg', 104593107, 'empty', 0, 1, '2022-08-29 11:00:01'),
(3, 'ox', '', 'ar', '0172028646', 'sumtechit1@gmail.com', '<p>text</p>\r\n', 600, 'ময়মনসিংহ', '', '', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস', 'extra/resources/uploads/belle/img/0883a8eca6ac0ba.jpg', 'extra/resources/uploads/belle/img/5a6bd863d6b96fd.jpg', 'extra/resources/uploads/belle/img/56c08156f3c7d77.jpg', 'extra/resources/uploads/belle/img/eee86c46c1d754c.jpg', 'extra/resources/uploads/belle/img/e2a5be53f4235bb.jpg', 'extra/resources/uploads/belle/img/43aec632b38cbee.jpg', 237787981, 'empty', 1, 1, '2022-08-29 12:30:25'),
(4, 'post titledsfsdfs', '', 'sabbirfsdfsffdsdfs', '01775567493', 'gmailkdsjfklj@example.com', '<p>textdsfsdf</p>\r\n', 600, 'ঢাকা', 'শরীয়তপুর', 'শরিয়তপুর সদর', 'হাড় সহ গরুর মাংস গরুর কলিজা', 'extra/resources/uploads/belle/img/52e797289500ac2.jpg', 'extra/resources/uploads/belle/img/5ef8a1ed0578964.jpg', 'extra/resources/uploads/belle/img/9edad078b19bf83.jpg', 'extra/resources/uploads/belle/img/d71d69f21f60daf.jpg', 'extra/resources/uploads/belle/img/52e797289500ac2.jpg', 'extra/resources/uploads/belle/img/3eb7795c704449f.mp4', 858917413, 'empty', 0, 1, '2022-08-29 12:40:47'),
(5, 'post titledsfsdfs', '', 'sabbirfsdfsffdsdfs', '01775567493', 'gmailkdsjfklj@example.com', '<p>textdsfsdf</p>\r\n', 600, 'ঢাকা', 'শরীয়তপুর', 'শরিয়তপুর সদর', 'হাড় সহ গরুর মাংস গরুর কলিজা', 'extra/resources/uploads/belle/img/74d864054519557.jpg', 'extra/resources/uploads/belle/img/925c95bcf1c15e9.jpg', 'extra/resources/uploads/belle/img/f2016ef1f12e667.jpg', 'extra/resources/uploads/belle/img/7c22791e1cdeeb3.jpg', 'extra/resources/uploads/belle/img/74d864054519557.jpg', 'extra/resources/uploads/belle/img/de688ce99a43fde.mp4', 812214032, 'empty', 1, 1, '2022-08-29 12:40:58'),
(6, 'this the post', '', 'sabbirdsfsdf', '01775567493', 'yasdasdaou@example.com', '<p>textdsfsdfsdfsdfs</p>\r\n', 600, 'ঢাকা', 'শরীয়তপুর', 'শরিয়তপুর সদর', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস গরুর কলিজা', 'extra/resources/uploads/belle/img/e8e55f9a2bfbdf9.jpg', 'extra/resources/uploads/belle/img/a50ecb77df3a944.jpg', 'extra/resources/uploads/belle/img/f39dc8b1d92f679.jpg', 'extra/resources/uploads/belle/img/8f1e6bce5e3ec93.jpg', 'extra/resources/uploads/belle/img/8c8a208811fd65a.jpg', 'extra/resources/uploads/belle/img/f4fb16a5ef09199.mp4', 323717881, 'empty', 0, 1, '2022-08-29 12:48:40'),
(9, 'ox meat', '', 'rajon', '01720028646', 'Sumtechit8@gmail.com', '<p>real ox meat</p>\r\n', 600, 'চট্টগ্রাম', 'কুমিল্লা', 'আদর্শ সদর', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস গরুর কলিজা গরুর ব্রেন', 'extra/resources/uploads/belle/img/533df06b9c4d03f.jpg', 'extra/resources/uploads/belle/img/93706847683c3a4.jpg', 'extra/resources/uploads/belle/img/6a34b01d32ffeae.jpg', 'extra/resources/uploads/belle/img/bd1491240542eee.jpg', 'extra/resources/uploads/belle/img/10ca84d6b778920.jpg', 'extra/resources/uploads/belle/img/ce7703bd952b7f6.mp4', 110597167, 'empty', 0, 1, '2022-08-30 04:24:50'),
(8, 'xa', '', 'asd', '01720028646', 'Sumtechit8@gmail.com', '<p>ox</p>\r\n', 600, 'চট্টগ্রাম', 'কুমিল্লা', 'আদর্শ সদর', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস গরুর কলিজা', 'extra/resources/uploads/belle/img/c65be949f02e443.jpg', 'extra/resources/uploads/belle/img/c849843c71af9bd.jpg', 'extra/resources/uploads/belle/img/b94afdd526b50fe.jpg', 'extra/resources/uploads/belle/img/01c5360d58e7656.jpg', 'extra/resources/uploads/belle/img/c849843c71af9bd.jpg', 'extra/resources/uploads/belle/img/d470ca50290551b.mp4', 555946607, 'empty', 0, 1, '2022-08-29 13:14:13'),
(10, 'ox meat', '', 'Rafikul Islam', '01963819454', 'Sumtechit8@gmail.com', '<p>ox meat</p>\r\n', 600, 'ময়মনসিংহ', 'নেত্রকোণা', 'আটপাড়া', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস গরুর কলিজা গরুর ব্রেন গরুর পায়া', 'extra/resources/uploads/belle/img/340de0f55272d00.jpg', 'extra/resources/uploads/belle/img/4c98ba2e13c371d.jpg', 'extra/resources/uploads/belle/img/7a78a263d69a736.png', 'extra/resources/uploads/belle/img/5421a8df745a9af.jpg', 'extra/resources/uploads/belle/img/9ca82220d061bd6.jpg', 'extra/resources/uploads/belle/img/cc241391b2f8cb2.mp4', 740749575, 'empty', 0, 1, '2022-08-30 04:27:00'),
(11, 'ox meat', '', 'rafikul islam', '01720028646', 'sumtechit1@gmail.com', '<p>good food</p>\r\n', 600, 'চট্টগ্রাম', 'কুমিল্লা', 'লালমাই', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস গরুর কলিজা', 'extra/resources/uploads/belle/img/f61af4d5fdf0c17.jpg', 'extra/resources/uploads/belle/img/3110943b6c7168f.jpg', 'extra/resources/uploads/belle/img/d5bdc2591d53d35.jpg', 'extra/resources/uploads/belle/img/e149527f955648c.png', 'extra/resources/uploads/belle/img/b12fa1201e97886.jpg', 'extra/resources/uploads/belle/img/727140157de801f.mp4', 297517936, 'empty', 0, 1, '2022-08-30 04:29:19'),
(12, 'ox m', '', 'jibon', '01400710007', 'Sumtechit8@gmail.com', '<p>real meat</p>\r\n', 600, 'চট্টগ্রাম', 'কুমিল্লা', 'বুডিচং', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস গরুর কলিজা', 'extra/resources/uploads/belle/img/95df39d10d756a9.jpg', 'extra/resources/uploads/belle/img/779a1d0daaf3f10.jpg', 'extra/resources/uploads/belle/img/2e8fe15c903402f.jpg', 'extra/resources/uploads/belle/img/a93b3da6c780042.jpg', 'extra/resources/uploads/belle/img/1de0cb6f5cf24ae.jpg', 'extra/resources/uploads/belle/img/2aa35caf2160747.mp4', 324929713, 'empty', 0, 1, '2022-08-30 05:28:35'),
(13, 'dashi ox', '', 'ripon', '01720028646', 'Sumtechit8@gmail.com', '<p>dashi</p>\r\n', 600, 'চট্টগ্রাম', 'কুমিল্লা', 'আদর্শ সদর', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস গরুর কলিজা', 'extra/resources/uploads/belle/img/d20da296f4b956f.jpg', 'extra/resources/uploads/belle/img/17c9fe74cb651c4.jpg', 'extra/resources/uploads/belle/img/31b013ff77e9bbb.png', 'extra/resources/uploads/belle/img/a448df41d5fea71.png', 'extra/resources/uploads/belle/img/7e7ee14123dfd77.jpg', 'extra/resources/uploads/belle/img/ec190826f789b94.mp4', 203436001, 'empty', 0, 1, '2022-08-30 05:36:44'),
(14, 'ox m', '', 'aayan', '01720028646', 'Sumtechit8@gmail.com', '<p>r</p>\r\n', 600, 'চট্টগ্রাম', 'কুমিল্লা', 'লালমাই', 'হাড় ছাড়া মাংস গরুর কুরলের মাংস', 'extra/resources/uploads/belle/img/6f167d7de29ffc5.jpg', 'extra/resources/uploads/belle/img/e1bbae6f94d2f91.jpg', 'extra/resources/uploads/belle/img/d4c97e35d9350c8.jpg', 'extra/resources/uploads/belle/img/01ee39c5b6e1354.jpg', 'extra/resources/uploads/belle/img/e1bbae6f94d2f91.jpg', 'extra/resources/uploads/belle/img/e0e8468cf55f7bc.mp4', 860796452, 'empty', 0, 1, '2022-08-30 06:12:51'),
(15, 'zzz', '', 'zzz', '01720028646', 'Sumtechit8@gmail.com', '<p>zzz</p>\r\n', 600, 'চট্টগ্রাম', 'কুমিল্লা', 'বুডিচং', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস গরুর কলিজা গরুর ব্রেন', 'extra/resources/uploads/belle/img/c2ffad094b6963c.jpg', 'extra/resources/uploads/belle/img/ad641c6b16441b9.png', 'extra/resources/uploads/belle/img/69d5ec8f0b07503.jpg', 'extra/resources/uploads/belle/img/32c9ec77d4198c9.png', 'extra/resources/uploads/belle/img/7b2cdbe58b53464.jpg', 'extra/resources/uploads/belle/img/2108d57d122f224.mp4', 213982607, 'empty', 1, 1, '2022-08-31 04:18:24'),
(16, 'bbb', '', 'bbbb', '01720028646', 'sumtechit1@gmail.com', '<p>bbbb</p>\r\n', 600, 'চট্টগ্রাম', 'কুমিল্লা', 'চৌদ্দগ্রাম', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস', 'extra/resources/uploads/belle/img/b8bac9f17f0bdc0.jpg', 'extra/resources/uploads/belle/img/9bc1124035cf9a7.jpg', 'extra/resources/uploads/belle/img/dc60459d348bb29.jpg', 'extra/resources/uploads/belle/img/7d5f25634c71303.jpg', 'extra/resources/uploads/belle/img/2a15eda70b03726.jpg', 'extra/resources/uploads/belle/img/b2725a183a7f643.mp4', 801330145, 'empty', 1, 1, '2022-08-31 04:28:49'),
(19, '', '', 'sabbir', '01', 'you@example.com', '<p>text</p>\r\n', 600, '', '', '', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 702250693, 'empty', 0, 0, '2022-08-31 10:16:47'),
(20, 'post title', '', 'sabbir', '01', 'you@example.com', '<p>text</p>\r\n', 600, '', '', '', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 103747611, 'empty', 0, 0, '2022-08-31 15:30:02'),
(21, 'post titleasdasda', 'post, titleasdasda, comics, good comics', 'sabbirsdasdasdasda', '01992944621', 'yoxXZZxZxu@example.com', '<p>textcccc</p>\r\n', 600, 'ঢাকা', 'শরীয়তপুর', 'শরিয়তপুর সদর', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস গরুর কলিজা গরুর ব্রেন', 'extra/resources/uploads/sumtech/file/8d05204b84b4392.jpg', 'extra/resources/uploads/sumtech/file/c4f90d609071e32.png', 'extra/resources/uploads/sumtech/file/3c488d12f039c22.png', 'extra/resources/uploads/sumtech/file/3c488d12f039c22.png', 'extra/resources/uploads/sumtech/file/1db6a4e1eb6bd48.png', 'extra/resources/uploads/sumtech/file/3c488d12f039c22.png', 238466609, 'empty', 0, 0, '2022-09-27 05:43:47');

-- --------------------------------------------------------

--
-- Table structure for table `sumtechit_course_datatable`
--

CREATE TABLE `sumtechit_course_datatable` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `heading` mediumtext NOT NULL,
  `keywords` mediumtext NOT NULL,
  `category` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `details` mediumtext NOT NULL,
  `facilities` mediumtext NOT NULL,
  `old_price` int(11) NOT NULL,
  `new_price` int(11) NOT NULL,
  `img` mediumtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sumtechit_course_datatable`
--

INSERT INTO `sumtechit_course_datatable` (`id`, `name`, `heading`, `keywords`, `category`, `type`, `title`, `description`, `details`, `facilities`, `old_price`, `new_price`, `img`, `status`) VALUES
(9, 'ডিজাইন', 'ডিজাইন', 'ডিজাইন', 49, 'online', 'ডিজাইন', 'description title writein here.', 'details title writein here.', '&lt;p&gt;details facilities writein here.&lt;/p&gt;', 211, 3213, 'extra/resources/uploads/sumtechit/file/200123530e255b69c3764.jpg', 1),
(10, 'স্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুন', 'স্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুন', 'স্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুন', 48, 'online', 'স্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুন', 'স্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুনস্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুনস্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুনস্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুনস্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুন', 'স্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুনস্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুনস্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুনস্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুনস্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুনস্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুন', '&lt;p&gt;স্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুনস্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুনস্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুনস্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুনস্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুনস্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুনস্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুনস্ক্র্যাচ থেকে প্রফেশনাল ওয়েবসাইট সাজাতে শিখুন&lt;/p&gt;', 123, 23123, 'extra/resources/uploads/sumtechit/file/200123b5e02bfc4e38662.jpg', 1),
(11, 'প্রফেশনাল গ্রাফিক ডিজাইন', 'ডিজাইন আর রঙের খেলায় ক্যারিয়ার গড়তে', 'প্রফেশনাল গ্রাফিক ডিজাইন', 50, 'offline', 'ডিজাইন আর রঙের খেলায় ক্যারিয়ার গড়তে', 'ভিজ্যুয়াল কনটেন্টের চাহিদা বেড়ে যাওয়ায় এখন মার্কেটাররা গ্রাফিক্যাল কনটেন্টের দিকে ঝুঁকেছেন। তাই বিশ্বজুড়ে গ্রাফিক ডিজাইনারদের চাহিদা এখন আকাশচুম্বী। এক জরিপে দেখা যায়, ভালো একটা লোগোর জন্য একটি ছোট প্রতিষ্ঠানও ৫০০ ডলার পর্যন্ত খরচ করে। আপনি কি ডিজাইনের কাজ করতে ভালোবাসেন? তাহলে আপডেটেড মডিউলে দক্ষ প্রশিক্ষকের সাথে আমাদের Graphics Design Course-টি আপনার জন্যই।', 'একজন সফল গ্রাফিক ডিজাইনার হতে হলে মানসম্পন্ন কারিকুলামে প্রশিক্ষণের পাশাপাশি প্রজেক্ট ভিত্তিক কাজের অভিজ্ঞতা আর মার্কেটপ্লেস সম্পর্কে ভালো ধারণা থাকা প্রয়োজন । তাই এসব কিছুই একসাথে অন্তর্ভুক্ত করা হয়েছে আমাদের কোর্স মডিউলে। গ্রাফিক ডিজাইন কোর্স থেকে আপনি অ্যাডোবি ফটোশপ আর অ্যাডোবি ইলাস্ট্রেটর ব্যবহার করে যেকোনো বিজ্ঞাপন, ব্যানার, টি-শার্ট ডিজাইন, প্রোডাক্ট ডিজাইন করতে শিখবেন। তাছাড়াও প্রজেক্ট ভিত্তিক কাজের জন্য পাচ্ছেন আধুনিক ল্যাব ব্যবহারের সুযোগ। এভাবে কোর্সটি শেষ করলে, আপনার বাস্তব কাজের অভিজ্ঞতা থাকবে, যা মার্কেটপ্লেসে দ্রুত সফলতা অর্জনে সহায়ক হবে।\r\n\r\nতাই আর দেরি কেনো? গ্রাফিক ডিজাইনের সার্টিফাইড কোর্সে এনরোল করতে আজই বেছে নিন ক্রিয়েটিভ আইটি ইনস্টিটিউট - এর Professional Graphics Design Course।', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n	&lt;li&gt;Raster To Vector&lt;/li&gt;\r\n	&lt;li&gt;Invoice Template Design&lt;/li&gt;\r\n	&lt;li&gt;Letterhead Design&lt;/li&gt;\r\n	&lt;li&gt;Brochure Layout&lt;/li&gt;\r\n	&lt;li&gt;Logo Design&lt;/li&gt;\r\n	&lt;li&gt;Desk &amp;amp; Wall Calendar Design&lt;/li&gt;\r\n	&lt;li&gt;Product Packaging&lt;/li&gt;\r\n	&lt;li&gt;Certificate Template Design&lt;/li&gt;\r\n	&lt;li&gt;T-Shirt Design&lt;/li&gt;\r\n	&lt;li&gt;Resume &amp;amp; Cover Letter Design&lt;/li&gt;\r\n	&lt;li&gt;Landscape Design&lt;/li&gt;\r\n	&lt;li&gt;Image Clipping&lt;/li&gt;\r\n	&lt;li&gt;Neck Joint&lt;/li&gt;\r\n	&lt;li&gt;Banner / Poster Design&lt;/li&gt;\r\n	&lt;li&gt;Magazine Design&lt;/li&gt;\r\n	&lt;li&gt;Web Banner DesignProfessional Presentation&lt;/li&gt;\r\n	&lt;li&gt;Web UI Design&lt;/li&gt;\r\n&lt;/ol&gt;', 40000, 20000, 'extra/resources/uploads/sumtechit/file/2101234202b27ebec806c.jpg', 1),
(12, 'dg', 'gdfgd', 'dg', 48, 'online', 'fgdfgdf', 'description tggggitle writein here.', 'details title wrigggtein here.', '&lt;p&gt;details facilities writggggein here.&lt;/p&gt;', 452, 543, 'extra/resources/uploads/sumtechit/file/2601239bd94da33231b38.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sumtechit_datatable`
--

CREATE TABLE `sumtechit_datatable` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `email` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sumtechit_notice_datatable`
--

CREATE TABLE `sumtechit_notice_datatable` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `desctiption` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sumtechit_notice_datatable`
--

INSERT INTO `sumtechit_notice_datatable` (`id`, `title`, `desctiption`, `date`, `status`) VALUES
(2, 'People should not hesitate to contact the police if they&#039;ve noticed an', 'People should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed an', '21-01-23', 1),
(3, 'People should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed an', 'People should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed anPeople should not hesitate to contact the police if they&#039;ve noticed an', '21-01-23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sumtechit_student_datatable`
--

CREATE TABLE `sumtechit_student_datatable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `reg` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `father` varchar(255) NOT NULL,
  `mother` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL,
  `address` text NOT NULL,
  `course` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `payment` int(11) NOT NULL,
  `session` varchar(50) NOT NULL,
  `gpa` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sumtechit_student_datatable`
--

INSERT INTO `sumtechit_student_datatable` (`id`, `name`, `reg`, `roll`, `father`, `mother`, `email`, `mobile`, `address`, `course`, `type`, `message`, `payment`, `session`, `gpa`, `date`, `status`) VALUES
(1, 'Theme', 50645, 33992, 'empty', 'empty', 'isratahamedsabbir@gmail.com', 1775567493, 'college road', '50', 'online', 'ddfsdfs', 0, '2023', 0, '19-01-23', 0),
(4, 'Dashboard', 50645, 53636, 'empty', 'empty', 'youjghjgjh@example.com', 1719651644, 'afasfa', '51', 'online', 'asfasfa', 0, '2023', 0, '26-01-23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sumtech_datatable`
--

CREATE TABLE `sumtech_datatable` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `keywords` text NOT NULL,
  `name` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `desctiption` text NOT NULL,
  `price` int(11) NOT NULL,
  `division` text NOT NULL,
  `district` text NOT NULL,
  `police_station` text NOT NULL,
  `category` text NOT NULL,
  `img_one` text NOT NULL,
  `img_two` text NOT NULL,
  `img_three` text NOT NULL,
  `img_four` text NOT NULL,
  `NID` text NOT NULL,
  `video` text NOT NULL,
  `unique_id` int(11) NOT NULL,
  `doctor_id` varchar(255) NOT NULL,
  `certified` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sumtech_datatable`
--

INSERT INTO `sumtech_datatable` (`id`, `title`, `keywords`, `name`, `mobile`, `email`, `desctiption`, `price`, `division`, `district`, `police_station`, `category`, `img_one`, `img_two`, `img_three`, `img_four`, `NID`, `video`, `unique_id`, `doctor_id`, `certified`, `status`, `date`) VALUES
(1, 'post title', '', 'sabbiradasdasd', '01775567493', 'youdweqeq@example.com', '<p>textweqweqweq</p>\r\n', 600, 'ঢাকা', 'শরীয়তপুর', 'শরিয়তপুর সদর', 'হাড় ছাড়া মাংস গরুর কুরলের মাংস', 'extra/resources/uploads/belle/img/c44c31be71016dc.png', 'extra/resources/uploads/belle/img/c44c31be71016dc.png', 'extra/resources/uploads/belle/img/c44c31be71016dc.png', 'extra/resources/uploads/belle/img/c44c31be71016dc.png', 'extra/resources/uploads/belle/img/c44c31be71016dc.png', 'extra/resources/uploads/belle/img/c44c31be71016dc.png', 225477691, 'empty', 0, 1, '2022-08-29 09:35:24'),
(2, 'st mode to sign in privately. Learn more. Next. Create account.', '', 'israt', '01775567493', 'isratahamedsabbir@example.com', '<p>textdfgdgdgfdfg</p>\r\n', 700, 'ঢাকা', 'শরীয়তপুর', 'শরিয়তপুর সদর', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস গরুর কলিজা গরুর ব্রেন গরুর পায়া', 'extra/resources/uploads/belle/img/7e67101f94c5a34.jpg', 'extra/resources/uploads/belle/img/062221fe013d65a.jpg', 'extra/resources/uploads/belle/img/d0027de888d6cb3.jpg', 'extra/resources/uploads/belle/img/0fbc389b5e2f77e.jpg', 'extra/resources/uploads/belle/img/bf29ce10e84cbfb.jpg', 'extra/resources/uploads/belle/img/1d8f55e2ea31802.jpg', 104593107, 'empty', 0, 1, '2022-08-29 11:00:01'),
(3, 'ox', '', 'ar', '0172028646', 'sumtechit1@gmail.com', '<p>text</p>\r\n', 600, 'ময়মনসিংহ', '', '', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস', 'extra/resources/uploads/belle/img/0883a8eca6ac0ba.jpg', 'extra/resources/uploads/belle/img/5a6bd863d6b96fd.jpg', 'extra/resources/uploads/belle/img/56c08156f3c7d77.jpg', 'extra/resources/uploads/belle/img/eee86c46c1d754c.jpg', 'extra/resources/uploads/belle/img/e2a5be53f4235bb.jpg', 'extra/resources/uploads/belle/img/43aec632b38cbee.jpg', 237787981, 'empty', 1, 1, '2022-08-29 12:30:25'),
(4, 'post titledsfsdfs', '', 'sabbirfsdfsffdsdfs', '01775567493', 'gmailkdsjfklj@example.com', '<p>textdsfsdf</p>\r\n', 600, 'ঢাকা', 'শরীয়তপুর', 'শরিয়তপুর সদর', 'হাড় সহ গরুর মাংস গরুর কলিজা', 'extra/resources/uploads/belle/img/52e797289500ac2.jpg', 'extra/resources/uploads/belle/img/5ef8a1ed0578964.jpg', 'extra/resources/uploads/belle/img/9edad078b19bf83.jpg', 'extra/resources/uploads/belle/img/d71d69f21f60daf.jpg', 'extra/resources/uploads/belle/img/52e797289500ac2.jpg', 'extra/resources/uploads/belle/img/3eb7795c704449f.mp4', 858917413, 'empty', 0, 1, '2022-08-29 12:40:47'),
(5, 'post titledsfsdfs', '', 'sabbirfsdfsffdsdfs', '01775567493', 'gmailkdsjfklj@example.com', '<p>textdsfsdf</p>\r\n', 600, 'ঢাকা', 'শরীয়তপুর', 'শরিয়তপুর সদর', 'হাড় সহ গরুর মাংস গরুর কলিজা', 'extra/resources/uploads/belle/img/74d864054519557.jpg', 'extra/resources/uploads/belle/img/925c95bcf1c15e9.jpg', 'extra/resources/uploads/belle/img/f2016ef1f12e667.jpg', 'extra/resources/uploads/belle/img/7c22791e1cdeeb3.jpg', 'extra/resources/uploads/belle/img/74d864054519557.jpg', 'extra/resources/uploads/belle/img/de688ce99a43fde.mp4', 812214032, 'empty', 1, 1, '2022-08-29 12:40:58'),
(6, 'this the post', '', 'sabbirdsfsdf', '01775567493', 'yasdasdaou@example.com', '<p>textdsfsdfsdfsdfs</p>\r\n', 600, 'ঢাকা', 'শরীয়তপুর', 'শরিয়তপুর সদর', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস গরুর কলিজা', 'extra/resources/uploads/belle/img/e8e55f9a2bfbdf9.jpg', 'extra/resources/uploads/belle/img/a50ecb77df3a944.jpg', 'extra/resources/uploads/belle/img/f39dc8b1d92f679.jpg', 'extra/resources/uploads/belle/img/8f1e6bce5e3ec93.jpg', 'extra/resources/uploads/belle/img/8c8a208811fd65a.jpg', 'extra/resources/uploads/belle/img/f4fb16a5ef09199.mp4', 323717881, 'empty', 0, 1, '2022-08-29 12:48:40'),
(9, 'ox meat', '', 'rajon', '01720028646', 'Sumtechit8@gmail.com', '<p>real ox meat</p>\r\n', 600, 'চট্টগ্রাম', 'কুমিল্লা', 'আদর্শ সদর', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস গরুর কলিজা গরুর ব্রেন', 'extra/resources/uploads/belle/img/533df06b9c4d03f.jpg', 'extra/resources/uploads/belle/img/93706847683c3a4.jpg', 'extra/resources/uploads/belle/img/6a34b01d32ffeae.jpg', 'extra/resources/uploads/belle/img/bd1491240542eee.jpg', 'extra/resources/uploads/belle/img/10ca84d6b778920.jpg', 'extra/resources/uploads/belle/img/ce7703bd952b7f6.mp4', 110597167, 'empty', 0, 1, '2022-08-30 04:24:50'),
(8, 'xa', '', 'asd', '01720028646', 'Sumtechit8@gmail.com', '<p>ox</p>\r\n', 600, 'চট্টগ্রাম', 'কুমিল্লা', 'আদর্শ সদর', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস গরুর কলিজা', 'extra/resources/uploads/belle/img/c65be949f02e443.jpg', 'extra/resources/uploads/belle/img/c849843c71af9bd.jpg', 'extra/resources/uploads/belle/img/b94afdd526b50fe.jpg', 'extra/resources/uploads/belle/img/01c5360d58e7656.jpg', 'extra/resources/uploads/belle/img/c849843c71af9bd.jpg', 'extra/resources/uploads/belle/img/d470ca50290551b.mp4', 555946607, 'empty', 0, 1, '2022-08-29 13:14:13'),
(10, 'ox meat', '', 'Rafikul Islam', '01963819454', 'Sumtechit8@gmail.com', '<p>ox meat</p>\r\n', 600, 'ময়মনসিংহ', 'নেত্রকোণা', 'আটপাড়া', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস গরুর কলিজা গরুর ব্রেন গরুর পায়া', 'extra/resources/uploads/belle/img/340de0f55272d00.jpg', 'extra/resources/uploads/belle/img/4c98ba2e13c371d.jpg', 'extra/resources/uploads/belle/img/7a78a263d69a736.png', 'extra/resources/uploads/belle/img/5421a8df745a9af.jpg', 'extra/resources/uploads/belle/img/9ca82220d061bd6.jpg', 'extra/resources/uploads/belle/img/cc241391b2f8cb2.mp4', 740749575, 'empty', 0, 1, '2022-08-30 04:27:00'),
(11, 'ox meat', '', 'rafikul islam', '01720028646', 'sumtechit1@gmail.com', '<p>good food</p>\r\n', 600, 'চট্টগ্রাম', 'কুমিল্লা', 'লালমাই', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস গরুর কলিজা', 'extra/resources/uploads/belle/img/f61af4d5fdf0c17.jpg', 'extra/resources/uploads/belle/img/3110943b6c7168f.jpg', 'extra/resources/uploads/belle/img/d5bdc2591d53d35.jpg', 'extra/resources/uploads/belle/img/e149527f955648c.png', 'extra/resources/uploads/belle/img/b12fa1201e97886.jpg', 'extra/resources/uploads/belle/img/727140157de801f.mp4', 297517936, 'empty', 0, 1, '2022-08-30 04:29:19'),
(12, 'ox m', '', 'jibon', '01400710007', 'Sumtechit8@gmail.com', '<p>real meat</p>\r\n', 600, 'চট্টগ্রাম', 'কুমিল্লা', 'বুডিচং', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস গরুর কলিজা', 'extra/resources/uploads/belle/img/95df39d10d756a9.jpg', 'extra/resources/uploads/belle/img/779a1d0daaf3f10.jpg', 'extra/resources/uploads/belle/img/2e8fe15c903402f.jpg', 'extra/resources/uploads/belle/img/a93b3da6c780042.jpg', 'extra/resources/uploads/belle/img/1de0cb6f5cf24ae.jpg', 'extra/resources/uploads/belle/img/2aa35caf2160747.mp4', 324929713, 'empty', 0, 1, '2022-08-30 05:28:35'),
(13, 'dashi ox', '', 'ripon', '01720028646', 'Sumtechit8@gmail.com', '<p>dashi</p>\r\n', 600, 'চট্টগ্রাম', 'কুমিল্লা', 'আদর্শ সদর', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস গরুর কলিজা', 'extra/resources/uploads/belle/img/d20da296f4b956f.jpg', 'extra/resources/uploads/belle/img/17c9fe74cb651c4.jpg', 'extra/resources/uploads/belle/img/31b013ff77e9bbb.png', 'extra/resources/uploads/belle/img/a448df41d5fea71.png', 'extra/resources/uploads/belle/img/7e7ee14123dfd77.jpg', 'extra/resources/uploads/belle/img/ec190826f789b94.mp4', 203436001, 'empty', 0, 1, '2022-08-30 05:36:44'),
(14, 'ox m', '', 'aayan', '01720028646', 'Sumtechit8@gmail.com', '<p>r</p>\r\n', 600, 'চট্টগ্রাম', 'কুমিল্লা', 'লালমাই', 'হাড় ছাড়া মাংস গরুর কুরলের মাংস', 'extra/resources/uploads/belle/img/6f167d7de29ffc5.jpg', 'extra/resources/uploads/belle/img/e1bbae6f94d2f91.jpg', 'extra/resources/uploads/belle/img/d4c97e35d9350c8.jpg', 'extra/resources/uploads/belle/img/01ee39c5b6e1354.jpg', 'extra/resources/uploads/belle/img/e1bbae6f94d2f91.jpg', 'extra/resources/uploads/belle/img/e0e8468cf55f7bc.mp4', 860796452, 'empty', 0, 1, '2022-08-30 06:12:51'),
(15, 'zzz', '', 'zzz', '01720028646', 'Sumtechit8@gmail.com', '<p>zzz</p>\r\n', 600, 'চট্টগ্রাম', 'কুমিল্লা', 'বুডিচং', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস গরুর কলিজা গরুর ব্রেন', 'extra/resources/uploads/belle/img/c2ffad094b6963c.jpg', 'extra/resources/uploads/belle/img/ad641c6b16441b9.png', 'extra/resources/uploads/belle/img/69d5ec8f0b07503.jpg', 'extra/resources/uploads/belle/img/32c9ec77d4198c9.png', 'extra/resources/uploads/belle/img/7b2cdbe58b53464.jpg', 'extra/resources/uploads/belle/img/2108d57d122f224.mp4', 213982607, 'empty', 1, 1, '2022-08-31 04:18:24'),
(16, 'bbb', '', 'bbbb', '01720028646', 'sumtechit1@gmail.com', '<p>bbbb</p>\r\n', 600, 'চট্টগ্রাম', 'কুমিল্লা', 'চৌদ্দগ্রাম', 'হাড় ছাড়া মাংস হাড় সহ গরুর মাংস', 'extra/resources/uploads/belle/img/b8bac9f17f0bdc0.jpg', 'extra/resources/uploads/belle/img/9bc1124035cf9a7.jpg', 'extra/resources/uploads/belle/img/dc60459d348bb29.jpg', 'extra/resources/uploads/belle/img/7d5f25634c71303.jpg', 'extra/resources/uploads/belle/img/2a15eda70b03726.jpg', 'extra/resources/uploads/belle/img/b2725a183a7f643.mp4', 801330145, 'empty', 1, 1, '2022-08-31 04:28:49'),
(19, '', '', 'sabbir', '01', 'you@example.com', '<p>text</p>\r\n', 600, '', '', '', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 702250693, 'empty', 0, 0, '2022-08-31 10:16:47'),
(20, 'post title', '', 'sabbir', '01', 'you@example.com', '<p>text</p>\r\n', 600, '', '', '', '', 'empty', 'empty', 'empty', 'empty', 'empty', 'empty', 103747611, 'empty', 0, 0, '2022-08-31 15:30:02');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_datatable`
--

CREATE TABLE `ticket_datatable` (
  `id` int(11) NOT NULL,
  `user_id` text NOT NULL,
  `unique_id` text NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `level` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticket_datatable`
--

INSERT INTO `ticket_datatable` (`id`, `user_id`, `unique_id`, `date`, `level`, `status`) VALUES
(1, 'rana_098579', '9173639', '2022-08-10', 0, 0),
(2, 'rana_098579', '917363937', '2022-08-10', 0, 0),
(3, 'rana_098579', '917363968', '2022-08-10', 0, 0),
(4, 'rana_098579', '72963', '2022-08-10', 0, 0),
(5, 'rana_098579', '81617726', '2022-08-10', 0, 0),
(6, 'rana_098579', '654785', '2022-08-10', 0, 0),
(7, 'Oni_91780', '2725288', '2022-08-10', 0, 0),
(8, 'Oni_91780', '72525628', '2022-08-10', 0, 0),
(9, 'rana_098579', '9173639', '2022-08-10', 0, 0),
(10, 'rana_098579', '917363968', '2022-08-10', 0, 0),
(11, 'Oni_91780', '917363937', '2022-08-10', 0, 0),
(12, 'rana_098579', '654785', '2022-08-10', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ydownload_datatable`
--

CREATE TABLE `ydownload_datatable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer_datatable`
--
ALTER TABLE `answer_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biograph_datatable`
--
ALTER TABLE `biograph_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_datatable`
--
ALTER TABLE `blog_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificate_datatable`
--
ALTER TABLE `certificate_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datatables`
--
ALTER TABLE `datatables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_datatable`
--
ALTER TABLE `doctor_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `example`
--
ALTER TABLE `example`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `example_post_datatable`
--
ALTER TABLE `example_post_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `example_project_datatable`
--
ALTER TABLE `example_project_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_access_datatable`
--
ALTER TABLE `framework_access_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_account_datatable`
--
ALTER TABLE `framework_account_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_admin_datatable`
--
ALTER TABLE `framework_admin_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_advertise_datatable`
--
ALTER TABLE `framework_advertise_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_author_datatable`
--
ALTER TABLE `framework_author_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_block_datatable`
--
ALTER TABLE `framework_block_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_brand_datatable`
--
ALTER TABLE `framework_brand_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_cart_datatable`
--
ALTER TABLE `framework_cart_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_category_datatable`
--
ALTER TABLE `framework_category_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_chat_datatable`
--
ALTER TABLE `framework_chat_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_checkout_datatable`
--
ALTER TABLE `framework_checkout_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_comment_datatable`
--
ALTER TABLE `framework_comment_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_compared_datatable`
--
ALTER TABLE `framework_compared_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_complain_datatable`
--
ALTER TABLE `framework_complain_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_contacts_datatable`
--
ALTER TABLE `framework_contacts_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_contact_datatable`
--
ALTER TABLE `framework_contact_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_content_datatable`
--
ALTER TABLE `framework_content_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_country_datatable`
--
ALTER TABLE `framework_country_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_coupon_datatable`
--
ALTER TABLE `framework_coupon_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_district_datatable`
--
ALTER TABLE `framework_district_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_division_datatable`
--
ALTER TABLE `framework_division_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_favorite_datatable`
--
ALTER TABLE `framework_favorite_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_files_datatable`
--
ALTER TABLE `framework_files_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_group_datatable`
--
ALTER TABLE `framework_group_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_help_datatable`
--
ALTER TABLE `framework_help_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_history_datatable`
--
ALTER TABLE `framework_history_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_layerfive_datatable`
--
ALTER TABLE `framework_layerfive_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_layerfour_datatable`
--
ALTER TABLE `framework_layerfour_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_layerone_datatable`
--
ALTER TABLE `framework_layerone_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_layerthree_datatable`
--
ALTER TABLE `framework_layerthree_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_layertwo_datatable`
--
ALTER TABLE `framework_layertwo_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_level_datatable`
--
ALTER TABLE `framework_level_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_list_datatable`
--
ALTER TABLE `framework_list_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_menu_datatable`
--
ALTER TABLE `framework_menu_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_notification_datatable`
--
ALTER TABLE `framework_notification_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_order_datatable`
--
ALTER TABLE `framework_order_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_page_datatable`
--
ALTER TABLE `framework_page_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_payment_datatable`
--
ALTER TABLE `framework_payment_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_policestation_datatable`
--
ALTER TABLE `framework_policestation_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_post_datatable`
--
ALTER TABLE `framework_post_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_pricing_datatable`
--
ALTER TABLE `framework_pricing_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_project_datatable`
--
ALTER TABLE `framework_project_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_reach_datatable`
--
ALTER TABLE `framework_reach_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_reply_datatable`
--
ALTER TABLE `framework_reply_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_services_datatable`
--
ALTER TABLE `framework_services_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_status_datatable`
--
ALTER TABLE `framework_status_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_subdistrict_datatable`
--
ALTER TABLE `framework_subdistrict_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_subscribe_datatable`
--
ALTER TABLE `framework_subscribe_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_theme_datatable`
--
ALTER TABLE `framework_theme_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_type_datatable`
--
ALTER TABLE `framework_type_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_user_datatable`
--
ALTER TABLE `framework_user_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_visitor_datatable`
--
ALTER TABLE `framework_visitor_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_watch_datatable`
--
ALTER TABLE `framework_watch_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_website_datatable`
--
ALTER TABLE `framework_website_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `framework_wishlist_datatable`
--
ALTER TABLE `framework_wishlist_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gamblerchat_datatable`
--
ALTER TABLE `gamblerchat_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gambler_datatable`
--
ALTER TABLE `gambler_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hacking_datatable`
--
ALTER TABLE `hacking_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interior_datatable`
--
ALTER TABLE `interior_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketreg_datatable`
--
ALTER TABLE `marketreg_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_datatable`
--
ALTER TABLE `portfolio_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_datatable`
--
ALTER TABLE `product_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_datatable`
--
ALTER TABLE `question_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redweb_datatable`
--
ALTER TABLE `redweb_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redweb_site_datatable`
--
ALTER TABLE `redweb_site_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_datatable`
--
ALTER TABLE `result_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rubi_datatable`
--
ALTER TABLE `rubi_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `samojugc_news_datatable`
--
ALTER TABLE `samojugc_news_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `samojugc_tag_datatable`
--
ALTER TABLE `samojugc_tag_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `samojugc_youtube_datatable`
--
ALTER TABLE `samojugc_youtube_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_database`
--
ALTER TABLE `school_database`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_datatable`
--
ALTER TABLE `shop_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sumtechit_course_datatable`
--
ALTER TABLE `sumtechit_course_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sumtechit_datatable`
--
ALTER TABLE `sumtechit_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sumtechit_notice_datatable`
--
ALTER TABLE `sumtechit_notice_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sumtechit_student_datatable`
--
ALTER TABLE `sumtechit_student_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sumtech_datatable`
--
ALTER TABLE `sumtech_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_datatable`
--
ALTER TABLE `ticket_datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ydownload_datatable`
--
ALTER TABLE `ydownload_datatable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer_datatable`
--
ALTER TABLE `answer_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- AUTO_INCREMENT for table `biograph_datatable`
--
ALTER TABLE `biograph_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_datatable`
--
ALTER TABLE `blog_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificate_datatable`
--
ALTER TABLE `certificate_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `datatables`
--
ALTER TABLE `datatables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctor_datatable`
--
ALTER TABLE `doctor_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `example`
--
ALTER TABLE `example`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `example_post_datatable`
--
ALTER TABLE `example_post_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `example_project_datatable`
--
ALTER TABLE `example_project_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `framework_access_datatable`
--
ALTER TABLE `framework_access_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `framework_account_datatable`
--
ALTER TABLE `framework_account_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `framework_admin_datatable`
--
ALTER TABLE `framework_admin_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `framework_advertise_datatable`
--
ALTER TABLE `framework_advertise_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `framework_author_datatable`
--
ALTER TABLE `framework_author_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `framework_block_datatable`
--
ALTER TABLE `framework_block_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `framework_brand_datatable`
--
ALTER TABLE `framework_brand_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `framework_cart_datatable`
--
ALTER TABLE `framework_cart_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `framework_category_datatable`
--
ALTER TABLE `framework_category_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `framework_chat_datatable`
--
ALTER TABLE `framework_chat_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `framework_checkout_datatable`
--
ALTER TABLE `framework_checkout_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `framework_comment_datatable`
--
ALTER TABLE `framework_comment_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `framework_compared_datatable`
--
ALTER TABLE `framework_compared_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `framework_complain_datatable`
--
ALTER TABLE `framework_complain_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `framework_contacts_datatable`
--
ALTER TABLE `framework_contacts_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `framework_contact_datatable`
--
ALTER TABLE `framework_contact_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `framework_content_datatable`
--
ALTER TABLE `framework_content_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `framework_country_datatable`
--
ALTER TABLE `framework_country_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `framework_coupon_datatable`
--
ALTER TABLE `framework_coupon_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `framework_district_datatable`
--
ALTER TABLE `framework_district_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `framework_division_datatable`
--
ALTER TABLE `framework_division_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `framework_favorite_datatable`
--
ALTER TABLE `framework_favorite_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `framework_files_datatable`
--
ALTER TABLE `framework_files_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `framework_group_datatable`
--
ALTER TABLE `framework_group_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `framework_help_datatable`
--
ALTER TABLE `framework_help_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `framework_history_datatable`
--
ALTER TABLE `framework_history_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `framework_layerfive_datatable`
--
ALTER TABLE `framework_layerfive_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `framework_layerfour_datatable`
--
ALTER TABLE `framework_layerfour_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `framework_layerone_datatable`
--
ALTER TABLE `framework_layerone_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `framework_layerthree_datatable`
--
ALTER TABLE `framework_layerthree_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `framework_layertwo_datatable`
--
ALTER TABLE `framework_layertwo_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `framework_level_datatable`
--
ALTER TABLE `framework_level_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `framework_list_datatable`
--
ALTER TABLE `framework_list_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `framework_menu_datatable`
--
ALTER TABLE `framework_menu_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `framework_notification_datatable`
--
ALTER TABLE `framework_notification_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `framework_order_datatable`
--
ALTER TABLE `framework_order_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `framework_page_datatable`
--
ALTER TABLE `framework_page_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `framework_payment_datatable`
--
ALTER TABLE `framework_payment_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `framework_policestation_datatable`
--
ALTER TABLE `framework_policestation_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `framework_post_datatable`
--
ALTER TABLE `framework_post_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `framework_pricing_datatable`
--
ALTER TABLE `framework_pricing_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `framework_project_datatable`
--
ALTER TABLE `framework_project_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `framework_reach_datatable`
--
ALTER TABLE `framework_reach_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `framework_reply_datatable`
--
ALTER TABLE `framework_reply_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `framework_services_datatable`
--
ALTER TABLE `framework_services_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `framework_status_datatable`
--
ALTER TABLE `framework_status_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `framework_subdistrict_datatable`
--
ALTER TABLE `framework_subdistrict_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `framework_subscribe_datatable`
--
ALTER TABLE `framework_subscribe_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `framework_theme_datatable`
--
ALTER TABLE `framework_theme_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `framework_type_datatable`
--
ALTER TABLE `framework_type_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `framework_user_datatable`
--
ALTER TABLE `framework_user_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `framework_visitor_datatable`
--
ALTER TABLE `framework_visitor_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `framework_watch_datatable`
--
ALTER TABLE `framework_watch_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `framework_website_datatable`
--
ALTER TABLE `framework_website_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `framework_wishlist_datatable`
--
ALTER TABLE `framework_wishlist_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gamblerchat_datatable`
--
ALTER TABLE `gamblerchat_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gambler_datatable`
--
ALTER TABLE `gambler_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hacking_datatable`
--
ALTER TABLE `hacking_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `interior_datatable`
--
ALTER TABLE `interior_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `marketreg_datatable`
--
ALTER TABLE `marketreg_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `portfolio_datatable`
--
ALTER TABLE `portfolio_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_datatable`
--
ALTER TABLE `product_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_datatable`
--
ALTER TABLE `question_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `redweb_datatable`
--
ALTER TABLE `redweb_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `redweb_site_datatable`
--
ALTER TABLE `redweb_site_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `result_datatable`
--
ALTER TABLE `result_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rubi_datatable`
--
ALTER TABLE `rubi_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `samojugc_news_datatable`
--
ALTER TABLE `samojugc_news_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `samojugc_tag_datatable`
--
ALTER TABLE `samojugc_tag_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `samojugc_youtube_datatable`
--
ALTER TABLE `samojugc_youtube_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `school_database`
--
ALTER TABLE `school_database`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_datatable`
--
ALTER TABLE `shop_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sumtechit_course_datatable`
--
ALTER TABLE `sumtechit_course_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sumtechit_datatable`
--
ALTER TABLE `sumtechit_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sumtechit_notice_datatable`
--
ALTER TABLE `sumtechit_notice_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sumtechit_student_datatable`
--
ALTER TABLE `sumtechit_student_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sumtech_datatable`
--
ALTER TABLE `sumtech_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ticket_datatable`
--
ALTER TABLE `ticket_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ydownload_datatable`
--
ALTER TABLE `ydownload_datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
