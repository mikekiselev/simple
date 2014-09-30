SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- База данных: `test1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tariff`
--

CREATE TABLE IF NOT EXISTS `tariff` (
  `id_tariff` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tariff` varchar(30) NOT NULL,
  PRIMARY KEY (`id_tariff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`),
  KEY `login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `user_tarif`
--

CREATE TABLE IF NOT EXISTS `user_tarif` (
  `id_user` int(11) NOT NULL,
  `id_tariff` int(11) NOT NULL,
  PRIMARY KEY (`id_user`,`id_tariff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
