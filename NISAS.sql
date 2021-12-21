-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Czas generowania: 21 Gru 2021, 11:03
-- Wersja serwera: 10.3.31-MariaDB-0+deb10u1
-- Wersja PHP: 7.3.29-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `NISAS`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `glosujacy`
--

CREATE TABLE `glosujacy` (
  `glosujacy_ID` int(10) UNSIGNED NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `pesel` varchar(50) NOT NULL,
  `adres` varchar(50) NOT NULL,
  `dowod` varchar(50) NOT NULL,
  `glosowal` varchar(11) NOT NULL DEFAULT 'nie'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `glosujacy`
--

INSERT INTO `glosujacy` (`glosujacy_ID`, `imie`, `nazwisko`, `pesel`, `adres`, `dowod`, `glosowal`) VALUES
(1, 'Barbara', 'Babicz', '67102739568', 'ul. Bukowa 1, 11-111, Krakow', 'ABL723147', 'tak'),
(2, 'Cecylia', 'Czujny', '41051434688', 'ul. Celarowa 1, 11-111, Krakow', 'AWQ177298', 'tak'),
(3, 'Inez', 'Paderwski', '97081095122', 'ul. Igielna 1, 11-111, Krakow', 'AFH066006', 'tak'),
(4, 'Olgierd', 'Everec', '66100885639', 'ul. Dunajcowa 11, 33-101, Tarnow', 'AUJ230831 ', 'tak'),
(5, 'Patryk', 'Wegan', '42021037175', 'ul. Azotowa 3, 33-101, Tarnow', 'ADO505386 ', 'nie'),
(6, 'Wiktoria', 'Pilzno', '82021665347', 'ul. Witosa 5, 33-101, Tarnow', 'AYM213819 ', 'tak'),
(7, 'Zdzislawa', 'Krak', '59020827146', 'ul. Kolejowa 1, 33-101, Tarnow', 'AQJ610417 ', 'tak'),
(8, 'Elzbieta', 'Elea', '42020713328', 'ul. Nowa 1, 33-101, Tarnow', 'ASJ087583 ', 'nie'),
(9, 'Grazyna', 'Gould', '51062823483', 'ul. Gietka 1, 11-111, Krakow', 'ATB502410', 'nie'),
(10, 'Halina', 'Clinton', '47102034825', 'ul. Holowa 1, 11-111, Krakow', 'ABI190272', 'nie'),
(11, 'Elzbieta', 'Ekler', '52040837883', 'ul. Efez 1, 11-111, Krakow', 'AUS312233', 'nie'),
(12, 'Faustyna', 'Foremny', '78090632582', 'ul. Filarowa 1, 11-111, Krakow', 'AUA834751', 'nie'),
(13, 'Leopold', 'Staf', '75031579838', 'ul. Azotowa 1, 33-101, Tarnow', 'ANE541487 ', 'tak'),
(14, 'Adam', 'Adamowicz', '63092854557', 'ul. Adamska 1, 11-111, Krakow', 'AZD310420', 'nie'),
(15, 'Bartosz', 'Babicz', '33083027679', 'ul. Bukowa 1, 11-111, Krakow', 'AOJ156180', 'nie'),
(16, 'Grzegorz', 'Gould', '83012861311', 'ul. Gietka 1, 11-111, Krakow', 'AKD991826', 'nie'),
(17, 'Hilary', 'Clinton', '53121887236', 'ul. Holowa 1, 11-111, Krakow', 'ARH843632', 'nie'),
(18, 'Rafal', 'Kon', '67121489633', 'ul. Zbylitowska 1, 33-101, Tarnow', 'ALY977624 ', 'nie'),
(19, 'Zaneta', 'Dab', '66061918548', 'ul. Kilinskiego 1, 33-101, Tarnow', 'ASQ840169 ', 'nie'),
(20, 'Alina', 'Grab', '82061137745', 'ul. Kilinskiego 4, 33-101, Tarnow', 'AAA030438 ', 'nie'),
(21, 'Cezary', 'Czujny', '82030766712', 'ul. Celarowa 1, 11-111, Krakow', 'AHU401169', 'nie'),
(22, 'Damian', 'Domianski', '51090374656', 'ul. Druga 1, 11-111, Krakow', 'APB559973', 'nie'),
(23, 'Edmund', 'Ekler', '96072569192', 'ul. Efez 1, 11-111, Krakow', 'AOK281801', 'nie'),
(24, 'Franciszek', 'Foremny', '35092632736', 'ul. Filarowa 1, 11-111, Krakow', 'AFB372026', 'nie'),
(25, 'Ignacy', 'Paderwski', '37010986239', 'ul. Igielna 1, 11-111, Krakow', 'AUC252667', 'nie'),
(26, 'Jaroslaw', 'Polskezbaw', '88071541774', 'ul. Jedna 1, 11-111, Krakow', 'AMN692846', 'tak'),
(27, 'Anna', 'Adamowicz', '44020193546', 'ul. Adamska 1, 11-111, Krakow', 'AAH640041', 'nie'),
(28, 'Dominika', 'Domianski', '45011475166', 'ul. Druga 1, 11-111, Krakow', 'AZJ510167', 'nie'),
(29, 'Joanna', 'Polskezbaw', '53102492462', 'ul. Jedna 1, 11-111, Krakow', 'AYL050794', 'nie'),
(30, 'Karol', 'Nowak', '55103148397', 'ul. Dunajcowa 1, 33-101, Tarnow', 'AQZ975233 ', 'nie'),
(31, 'Mateusz', 'Gigiel', '37012678952', 'ul. Witosa 1, 33-101, Tarnow', 'AMV116379 ', 'nie'),
(32, 'Natan', 'Priest', '98112548813', 'ul. Witosa 12, 33-101, Tarnow', 'AKU011930 ', 'nie'),
(33, 'Stanislaw', 'Bier', '77012469617', 'ul. Zagrodowa 5, 33-101, Tarnow', 'ALS793547 ', 'nie'),
(34, 'Tadeusz', 'Kwak', '74011471773', 'ul. Azotowa 21, 33-101, Tarnow', 'AKW756369 ', 'nie'),
(35, 'Ursyn', 'Niemcewicz', '76031973493', 'ul. Dunajcowa 7, 33-101, Tarnow', 'AUK382018 ', 'nie'),
(36, 'Barbara', 'Skala', '42010899768', 'ul. Dunajcowa 3, 33-101, Tarnow', 'ADR088639 ', 'nie'),
(37, 'Celina', 'Busz', '41013162442', 'ul. Egzy 221, 33-101, Tarnow', 'ARN046170 ', 'nie'),
(38, 'Danuta', 'Jaskowiak', '70012189545', 'ul. Witosa 3, 33-101, Tarnow', 'AVT787534 ', 'nie'),
(39, 'Franciszka', 'Falat', '40122235687', 'ul. Dluga 4, 33-101, Tarnow', 'AWW239574 ', 'nie'),
(40, 'Grazyna', 'Herbert', '56070724669', 'ul. Krzywa 1, 33-101, Tarnow', 'AJK449417', 'nie'),
(41, 'test', 'test', '1234', 'ul. Jedna 1, 11-111, Krakow', 'ABC123456', 'tak');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kandydaci`
--

CREATE TABLE `kandydaci` (
  `kandydat_ID` int(10) UNSIGNED NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `pesel` varchar(50) NOT NULL,
  `partia` varchar(50) NOT NULL,
  `lista` varchar(50) NOT NULL,
  `pozycja` varchar(50) NOT NULL,
  `okreg` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `kandydaci`
--

INSERT INTO `kandydaci` (`kandydat_ID`, `imie`, `nazwisko`, `pesel`, `partia`, `lista`, `pozycja`, `okreg`) VALUES
(1, 'Greta', 'Thunder', '49061123543', 'SUPERPARTIA', '1', '5', '1'),
(2, 'Wladyslaw', 'Wsadz', '67111552978', 'SUPERPARTIA', '1', '2', '1'),
(3, 'Lukasz', 'Oleksenko', '81020849756', 'SUPERPARTIA', '2', '2', '1'),
(4, 'Wiktor', 'Korba', '87110437375', 'SUPERPARTIA', '1', '1', '2'),
(5, 'Waldemar', 'Kiepski', '75041835117', 'SUPERPARTIA', '1', '4', '2'),
(6, 'Roza', 'Kun', '59120264467', 'SUPERPARTIA', '2', '4', '2'),
(7, 'Ondriej', 'Duda', '75040913179', 'SUPERPARTIA', '1', '1', '1'),
(8, 'Andzelika', 'Marker', '82050632462', 'SUPERPARTIA', '2', '1', '1'),
(9, 'Donald', 'Kiel', '81101754375', 'SUPERPARTIA', '1', '3', '1'),
(10, 'Jozef', 'Miedzian', '5232865674', 'SUPERPARTIA', '2', '3', '1'),
(11, 'Wieslaw', 'Wszywka', '97090418831', 'SUPERPARTIA', '1', '4', '1'),
(12, 'Janusz', 'Mekka', '89042523773', 'SUPERPARTIA', '2', '4', '1'),
(13, 'Emanuel', 'Makaron', '48110144542', 'SUPERPARTIA', '2', '1', '2'),
(14, 'Marian ', 'Draga', '66090971352', 'SUPERPARTIA', '1', '2', '2'),
(15, 'Jan', 'Uda', '91031213413', 'SUPERPARTIA', '2', '2', '2'),
(16, 'Seweryn', 'Kraj', '67081254812', 'SUPERPARTIA', '1', '3', '2'),
(17, 'Beata', 'Igla', '83082494169', 'SUPERPARTIA', '2', '3', '2');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wyniki`
--

CREATE TABLE `wyniki` (
  `kandydat_ID` int(10) UNSIGNED NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `pesel` varchar(50) NOT NULL,
  `partia` varchar(50) NOT NULL,
  `lista` varchar(50) NOT NULL,
  `pozycja` varchar(50) NOT NULL,
  `okreg` varchar(50) NOT NULL,
  `wynik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wyniki`
--

INSERT INTO `wyniki` (`kandydat_ID`, `imie`, `nazwisko`, `pesel`, `partia`, `lista`, `pozycja`, `okreg`, `wynik`) VALUES
(1, 'Greta', 'Thunder', '49061123543', 'SUPERPARTIA', '1', '5', '1', 6),
(2, 'Wladyslaw', 'Wsadz', '67111552978', 'SUPERPARTIA', '1', '2', '1', 0),
(3, 'Lukasz', 'Oleksenko', '81020849756', 'SUPERPARTIA', '2', '2', '1', 1),
(4, 'Wiktor', 'Korba', '87110437375', 'SUPERPARTIA', '1', '1', '2', 1),
(5, 'Waldemar', 'Kiepski', '75041835117', 'SUPERPARTIA', '1', '4', '2', 1),
(6, 'Roza', 'Kun', '59120264467', 'SUPERPARTIA', '2', '4', '2', 0),
(7, 'Ondriej', 'Duda', '75040913179', 'SUPERPARTIA', '1', '1', '1', 0),
(8, 'Andzelika', 'Marker', '82050632462', 'SUPERPARTIA', '2', '1', '1', 0),
(9, 'Donald', 'Kiel', '81101754375', 'SUPERPARTIA', '1', '3', '1', 0),
(10, 'Jozef', 'Miedzian', '5232865674', 'SUPERPARTIA', '2', '3', '1', 0),
(11, 'Wieslaw', 'Wszywka', '97090418831', 'SUPERPARTIA', '1', '4', '1', 0),
(12, 'Janusz', 'Mekka', '89042523773', 'SUPERPARTIA', '2', '4', '1', 0),
(13, 'Emanuel', 'Makaron', '48110144542', 'SUPERPARTIA', '2', '1', '2', 0),
(14, 'Marian ', 'Draga', '66090971352', 'SUPERPARTIA', '1', '2', '2', 0),
(15, 'Jan', 'Uda', '91031213413', 'SUPERPARTIA', '2', '2', '2', 0),
(16, 'Seweryn', 'Kraj', '67081254812', 'SUPERPARTIA', '1', '3', '2', 1),
(17, 'Beata', 'Igla', '83082494169', 'SUPERPARTIA', '2', '3', '2', 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `glosujacy`
--
ALTER TABLE `glosujacy`
  ADD PRIMARY KEY (`glosujacy_ID`);

--
-- Indexes for table `kandydaci`
--
ALTER TABLE `kandydaci`
  ADD PRIMARY KEY (`kandydat_ID`);

--
-- Indexes for table `wyniki`
--
ALTER TABLE `wyniki`
  ADD PRIMARY KEY (`kandydat_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `glosujacy`
--
ALTER TABLE `glosujacy`
  MODIFY `glosujacy_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT dla tabeli `kandydaci`
--
ALTER TABLE `kandydaci`
  MODIFY `kandydat_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT dla tabeli `wyniki`
--
ALTER TABLE `wyniki`
  MODIFY `kandydat_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
