-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 02 Lis 2016, 15:29
-- Wersja serwera: 10.1.9-MariaDB
-- Wersja PHP: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `prawda_falsz`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `challenges`
--

CREATE TABLE `challenges` (
  `ID_CHALLENGE` int(255) NOT NULL,
  `CONTENT` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `DIFFICULTY` int(11) NOT NULL,
  `GENDER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `challenges`
--

INSERT INTO `challenges` (`ID_CHALLENGE`, `CONTENT`, `DIFFICULTY`, `GENDER`) VALUES
(1, 'POLIŻ DAMIANA', 0, 0),
(2, 'ZATAŃCZ NA ŁAWCE', 0, 0),
(3, 'Zrób 10 pompek', 0, 1),
(4, 'Zrób jaskółkę przez przynajmniej 5 sekund', 0, 0),
(5, 'Zrób jaskółkę przez przynajmniej 5 sekund', 0, 1),
(6, 'Wyzeruj butelkę piwa', 2, 0),
(7, 'Wyzeruj butelkę piwa', 2, 1),
(8, 'Ściągnij koszulkę i siedź tak przez jedną rundę', 1, 0),
(9, 'Ściągnij koszulkę i siedź tak przez jedną rundę', 1, 1),
(10, 'Zjedz łyżkę cynamonu', 2, 0),
(11, 'Zjedz łyżkę cynamonu', 2, 1),
(12, 'Walnij osobę z prawej', 0, 0),
(13, 'Walnij osobę z prawej', 0, 1),
(14, 'Walnij osobę z lewej', 0, 0),
(15, 'Walnij osobę z lewej', 0, 1),
(16, 'Walnij głową w stół', 1, 0),
(17, 'Walnij głową w stół', 1, 1),
(18, 'Poliż czoło osoby z lewej strony', 2, 0),
(19, 'Poliż czoło osoby z lewej strony', 2, 1),
(20, 'Poliż czoło osoby z prawej strony', 2, 0),
(21, 'Poliż czoło osoby z prawej strony', 2, 1),
(22, 'Walnij 3 shoty na raz', 2, 0),
(23, 'Walnij 3 shoty na raz', 2, 1),
(24, 'Walnij 2 shoty na raz', 1, 0),
(25, 'Walnij 2 shoty na raz', 1, 1),
(26, 'Walnij shota', 0, 0),
(27, 'Walnij shota', 0, 1),
(28, 'Klepnij osobę z naprzeciwka w pupę', 1, 0),
(29, 'Klepnij osobę z naprzeciwka w pupę', 1, 1),
(32, 'zaśpiewaj piosenke Cypisa', 0, 0),
(33, 'zaśpiewaj piosenke Cypisa', 0, 1),
(34, 'Każdy z graczy płci przeciwnej musi dać Ci klapsa', 1, 0),
(35, 'Każdy z graczy płci przeciwnej musi dać Ci klapsa', 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `difficulty`
--

CREATE TABLE `difficulty` (
  `id_difficult` int(11) NOT NULL,
  `difficult_number` int(11) NOT NULL,
  `difficult` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `difficulty`
--

INSERT INTO `difficulty` (`id_difficult`, `difficult_number`, `difficult`, `description`) VALUES
(1, 0, 'EASY', 'Latwe wyzwanie'),
(2, 1, 'MEDIUM', 'Srednie wyzwanie'),
(3, 2, 'HARD', 'Trudne wyzwanie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gender`
--

CREATE TABLE `gender` (
  `id_gender` int(11) NOT NULL,
  `gender_number` int(11) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `gender`
--

INSERT INTO `gender` (`id_gender`, `gender_number`, `gender`, `description`) VALUES
(1, 0, 'FEMALE', 'Kobieta'),
(2, 1, 'MALE', 'Mezczyzna');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `questions`
--

CREATE TABLE `questions` (
  `ID_QUESTION` int(255) NOT NULL,
  `CONTENT` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `DIFFICULTY` int(11) NOT NULL,
  `GENDER` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `questions`
--

INSERT INTO `questions` (`ID_QUESTION`, `CONTENT`, `DIFFICULTY`, `GENDER`) VALUES
(1, 'LUBISZ PSY?', 0, 1),
(2, 'ILE PARTNERÓW MIAŁAŚ?', 1, 0),
(3, 'ILE SPĘDZASZ CZASU NA GRANIU?', 0, 1),
(4, 'Czy rzygałeś po alkoholu?', 0, 1),
(5, 'Czy rzygałaś po alkoholu?', 0, 0),
(6, 'Czy wylądowałeś kiedyś z kimś w łóżku po alkoholu?', 2, 1),
(7, 'Czy wylądowałaś kiedyś z kimś w łóżku po alkoholu?', 2, 0),
(8, 'Czy miałeś kiedyś fantazje erotyczne z kimś z rodziny?', 2, 1),
(9, 'Czy miałaś kiedyś fantazje erotyczne z kimś z rodziny?', 2, 0),
(10, 'Mieszałaś kiedyś alkohole?', 0, 0),
(11, 'Mieszałeś kiedyś alkohole?', 0, 1),
(12, 'Czy przyłapałaś kiedyś rodziców na seksie?', 1, 0),
(13, 'Czy przyłapałeś kiedyś rodziców na seksie?', 1, 1),
(14, 'Kiedy wypiłaś swoje pierwsze piwo?', 0, 0),
(15, 'Kiedy wypiłeś swoje pierwsze piwo?', 0, 1),
(16, 'Czy golisz się w miejscach intymnych?', 1, 0),
(17, 'Czy golisz się w miejscach intymnych?', 1, 1),
(18, 'Kiedy pierwszy raz się masturbowałaś?', 2, 0),
(19, 'Kiedy pierwszy raz się masturbowałeś?', 2, 1),
(20, 'Czy używasz gadżetów erotycznych?', 2, 0),
(21, 'Czy używasz gadżetów erotycznych?', 2, 1),
(22, 'Czy uprawiałaś kiedyś seks?', 2, 0),
(23, 'Czy uprawiałeś kiedyś seks?', 2, 1),
(24, 'Kogo w tym pokoju najbardziej nie lubisz?', 0, 0),
(25, 'Kogo w tym pokoju najbardziej nie lubisz?', 0, 1),
(26, 'Czy spożywałaś spermę?', 2, 0),
(27, 'Czy spożywałeś spermę?', 2, 1),
(28, 'Jak nazywasz swojego penisa?', 1, 1),
(29, 'Jaka jest długość twojego  penisa?', 1, 1),
(30, 'Jakiego koloru masz bieliznę?', 0, 0),
(31, 'Jakiego koloru masz bieliznę?', 0, 1),
(32, 'Czy miałaś fantazje ze zwierzęciem?', 2, 0),
(33, 'Czy miałeś fantazje ze zwierzęciem?', 2, 1),
(34, 'Ile ważysz?', 0, 0),
(35, 'Ile ważysz?', 0, 1),
(36, 'Ile liter ma słowo "alfabet"?', 0, 0),
(37, 'Ile liter ma słowo "alfabet"?', 0, 1),
(38, 'Jak często się masturbujesz?', 1, 0),
(39, 'Jak często się masturbujesz?', 1, 1),
(40, 'Jesteś dziewicą?', 2, 0),
(41, 'Jesteś prawiczkiem?', 2, 1),
(42, 'Ile masz rodzeństwa?', 0, 0),
(43, 'Ile masz rodzeństwa?', 0, 1),
(44, 'Czy byłeś kiedyś w seks shopie? Jeśli tak, to po co?', 2, 1),
(45, 'Czy byłaś kiedyś w seks shopie? Jeśli tak, to po co?', 2, 0),
(46, 'Czy uprawiałeś kiedyś seks dla korzyści materialnych?', 2, 1),
(47, 'Czy uprawiałaś kiedyś seks dla korzyści materialnych?', 2, 0),
(48, 'Jaka jest najbardziej zboczona rzecz, którą chciałbyś zrobić w łóżku?', 2, 1),
(49, 'Jaka jest najbardziej zboczona rzecz, którą chciałabyś zrobić w łóżku?', 2, 0),
(50, 'Jak często oglądasz filmy pornograficzne?', 1, 0),
(51, 'Jak często oglądasz filmy pornograficzne?', 1, 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `challenges`
--
ALTER TABLE `challenges`
  ADD PRIMARY KEY (`ID_CHALLENGE`);

--
-- Indexes for table `difficulty`
--
ALTER TABLE `difficulty`
  ADD PRIMARY KEY (`id_difficult`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id_gender`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`ID_QUESTION`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `challenges`
--
ALTER TABLE `challenges`
  MODIFY `ID_CHALLENGE` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT dla tabeli `difficulty`
--
ALTER TABLE `difficulty`
  MODIFY `id_difficult` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `gender`
--
ALTER TABLE `gender`
  MODIFY `id_gender` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `questions`
--
ALTER TABLE `questions`
  MODIFY `ID_QUESTION` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
