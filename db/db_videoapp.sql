-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 21-04-2018 a las 02:57:52
-- Versión del servidor: 5.7.19
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_videoapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_comments`
--

DROP TABLE IF EXISTS `tbl_comments`;
CREATE TABLE IF NOT EXISTS `tbl_comments` (
  `comments_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comments_auth` varchar(125) DEFAULT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comments_movie` int(11) NOT NULL,
  `comments_rating` int(11) NOT NULL,
  PRIMARY KEY (`comments_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_comments`
--

INSERT INTO `tbl_comments` (`comments_id`, `comments_auth`, `comments_copy`, `comments_date`, `comments_movie`, `comments_rating`) VALUES
(1, NULL, 'Loved it.', '2018-03-26 19:08:41', 1, 5),
(2, NULL, 'Pretty bad in my opinion', '2018-03-26 19:09:57', 1, 4),
(3, NULL, 'It sucked.', '2018-04-01 14:54:32', 1, 1),
(4, NULL, 'It was amazing. I really liked this way better than any Tarantino movie that\'s ever been made, EVER.\r\n\r\nCuz Tarantino is crap', '2018-04-01 14:55:29', 1, 3),
(5, NULL, 'I can\'t remember it but they say it was nice', '2018-04-01 14:56:55', 3, 4),
(6, NULL, 'Such an evil lookie movie', '2018-04-01 14:57:35', 3, 1),
(7, NULL, 'The memories are too great!', '2018-04-01 15:11:30', 7, 5),
(8, NULL, 'Really nice, shows society\'s darkest face', '2018-04-01 15:51:58', 3, 4),
(9, NULL, 'Nostalgia', '2018-04-19 16:01:22', 4, 5),
(10, NULL, 'The memories of CRINGE', '2018-04-19 16:27:01', 5, 4),
(11, NULL, 'This gave me nightmares', '2018-04-19 16:38:00', 8, 1),
(12, NULL, 'Superman looked so weird in this movie', '2018-04-19 22:42:27', 6, 2),
(13, NULL, 'A masterpiece', '2018-04-20 01:56:53', 3, 4),
(14, NULL, 'Beautiful directing', '2018-04-20 01:57:15', 3, 5),
(15, NULL, 'Sorry, wrong comment but its still great. LOVE YOU FLINTSTONES', '2018-04-20 02:02:01', 7, 5),
(16, NULL, 'Pretty annoying with all that crap', '2018-04-20 22:53:54', 4, 1),
(17, NULL, 'Liked it buuuut...', '2018-04-21 02:49:54', 3, 2),
(18, NULL, 'It is meant for a maturer audience', '2018-04-21 02:50:19', 3, 4),
(19, NULL, 'Could have been better', '2018-04-21 02:50:46', 3, 2),
(20, NULL, 'help', '2018-04-21 02:51:31', 3, 0),
(21, NULL, 'this aint working', '2018-04-21 02:51:37', 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_content`
--

DROP TABLE IF EXISTS `tbl_content`;
CREATE TABLE IF NOT EXISTS `tbl_content` (
  `con_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `con_name` varchar(200) NOT NULL,
  `con_video` varchar(70) NOT NULL,
  `con_image` varchar(70) NOT NULL,
  `con_desc` text NOT NULL,
  `con_section` varchar(20) NOT NULL,
  `con_runtime` varchar(20) NOT NULL,
  `con_year` varchar(10) NOT NULL,
  `con_type` varchar(10) NOT NULL,
  PRIMARY KEY (`con_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_content`
--

INSERT INTO `tbl_content` (`con_id`, `con_name`, `con_video`, `con_image`, `con_desc`, `con_section`, `con_runtime`, `con_year`, `con_type`) VALUES
(1, 'The Good, the Bad and the Ugly', 'gbu.mp4', 'gbu.jpg', 'The Good, the Bad and the Ugly is a 1966 epic Spaghetti Western film directed by Sergio Leone and starring Clint Eastwood, Lee Van Cleef, and Eli Wallach in their respective title roles. Its screenplay was written by Age & Scarpelli, Luciano Vincenzoni and Leone, based on a story by Vincenzoni and Leone. Director of photography Tonino Delli Colli was responsible for the film\'s sweeping widescreen cinematography, and Ennio Morricone composed the film\'s score including its main theme. It was an international co-production between Italy, Spain, West Germany and the United States.', 'parents', '3h 2min', '1966', 'movie'),
(2, 'Jaws', 'jaws.mp4', 'jaws.jpg', 'Jaws is a 1975 American thriller film directed by Steven Spielberg and based on Peter Benchley\'s 1974 novel of the same name. In the story, a giant man-eating great white shark attacks beachgoers on Amity Island, a fictional New England summer resort town, prompting the local police chief to hunt it with the help of a marine biologist and a professional shark hunter. ', 'parents', '2h 4min', '1975', 'movie'),
(3, 'Pulp Fiction', 'pulp.mp4', 'pulp.jpg', 'Pulp Fiction is a 1994 American crime film written and directed by Quentin Tarantino, based on a story by Tarantino and Roger Avary, and starring John Travolta, Samuel L. Jackson, Bruce Willis, Ving Rhames, and Uma Thurman. The film tells a few stories of criminal Los Angeles. The film\'s title refers to the pulp magazines and hardboiled crime novels popular during the mid-20th century, known for their graphic violence and punchy dialogue.', 'home', '2h 34min', '1994', 'movie'),
(4, 'The Three Stooges', '3stro.mp4', '3stro.jpg', 'The Three Stooges were an American vaudeville and comedy team active from 1922 until 1970, best known for their 190 short subject films by Columbia Pictures that have been regularly airing on television since 1958. Their hallmark was physical farce and slapstick. In films, the stooges were commonly known by their actual first names. There were a total of six stooges over the act\'s run (with only three active at any given time), but Moe Howard and Larry Fine were the mainstays throughout the ensemble\'s nearly fifty-year run.', 'home', '1h 27min', '1932', 'series'),
(5, 'Superman (TV)', 'tv-superman.mp4', 'tv-superman.jpg', 'Superman: The Animated Series is an American animated television series based on the DC Comics\'s flagship character, Superman. It was produced by Warner Bros. Animation and originally aired on The WB from September 6, 1996 to February 12, 2000. The series was the first of several followups of the acclaimed Batman: The Animated Series, and was equally praised for its thematic complexity, quality animation, maturity and modernization of its title character.', 'home', '30min', '1996', 'series'),
(6, 'Superman (1950)', 'superman.mp4', '1950.jpg', 'Adventures of Superman is an American television series based on comic book characters and concepts created in 1938 by Jerry Siegel and Joe Shuster. The show was the first television series to feature Superman and began filming in 1951 in California on RKO-Pathé stages and the RKO Forty Acres back lot. It was sponsored by cereal manufacturer Kellogg\'s. The show, which was produced for first-run television syndication rather than a network, has disputed first and last air dates, but they are generally accepted as September 19, 1952, and April 28, 1958.', 'kids', '30 min', '1950', 'series'),
(7, 'The Flinstones', 'flint.mp4', '1960.jpg', 'The Flintstones is an American animated sitcom produced by Hanna-Barbera for ABC. The series takes place in a romanticized Stone Age setting, depicts the lives of the titular characters and their next-door neighbors and best friends. It was originally broadcast from September 30, 1960, to April 1, 1966, in a prime time schedule, the first such instance for an animated series.', 'kids', '30 min', '1960', 'series'),
(8, 'Santa Claus is Comin\' to Town', 'santa.mp4', '1970.jpg', 'Santa Claus Is Comin\' to Town is a 1970 stop motion Christmas television special produced by Rankin/Bass Productions. The film stars Fred Astaire as the narrator S.D. Kluger, Mickey Rooney as Kris Kringle / Santa Claus, Keenan Wynn as the Winter Warlock, and Paul Frees in various roles. The film tells the story of how Santa Claus and several Claus-related Christmas traditions came to be. It is based on the hit Christmas song Santa Claus Is Comin\' to Town, which was introduced on radio by Eddie Cantor in 1934, and the story of Saint Nicholas.', 'kids', '48 min', '1970', 'movie'),
(9, 'Back to The Future', 'future.mp4', '1980.jpg', 'Back to the Future is a 1985 American science-fiction adventure comedy film directed by Robert Zemeckis and written by Zemeckis and Bob Gale. It stars Michael J. Fox as teenager Marty McFly, who is sent back in time to 1955, where he meets his future parents in high school and accidentally becomes his mother\'s romantic interest.', 'kids', '1h 56min', '1985', 'movie'),
(10, 'Home Alome', 'alone.mp4', '1990.jpg', 'Home Alone is a 1990 American comedy film written and produced by John Hughes and directed by Chris Columbus. The film stars Macaulay Culkin as Kevin McCallister, a boy who is mistakenly left behind when his family flies to Paris for their Christmas vacation. Kevin initially relishes being home alone, but soon has to contend with two would-be burglars played by Joe Pesci and Daniel Stern.', 'kids', '1h 43 min', '1990', 'movie'),
(11, 'Vertigo', 'vertigo.mp4', 'vertigo.jpg', 'A San Francisco detective suffering from acrophobia investigates the strange activities of an old friend\'s wife, all the while becoming dangerously obsessed with her.', 'parents', '2h 8min', '1958', 'movie'),
(12, 'The Blues Brothers', 'blues.mp4', 'bbros.jpg', 'The story is a tale of redemption for paroled convict Jake and his brother Elwood, who set out on \"a mission from God\" to save from foreclosure the Catholic orphanage in which they were raised. To do so, they must reunite their R&B band and organize a performance to earn $5,000 needed to pay the orphanage\'s property tax bill. Along the way, they are targeted by a destructive \"mystery woman\", Neo-Nazis, and a country and western band—all while being relentlessly pursued by the police.', 'parents', '2h 13min', '1980', 'movie'),
(13, 'The Godfather Part II', 'godfather2.mp4', 'godfather.jpg', 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.', 'parents', '3h 22min', '1974', 'movie');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_con_genre`
--

DROP TABLE IF EXISTS `tbl_con_genre`;
CREATE TABLE IF NOT EXISTS `tbl_con_genre` (
  `cg_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `con_id` smallint(6) NOT NULL,
  `genre_id` smallint(6) NOT NULL,
  PRIMARY KEY (`cg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_con_genre`
--

INSERT INTO `tbl_con_genre` (`cg_id`, `con_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 2, 3),
(5, 2, 7),
(6, 3, 1),
(7, 3, 4),
(8, 4, 3),
(9, 4, 13),
(10, 5, 1),
(11, 5, 2),
(12, 5, 3),
(13, 5, 14),
(14, 6, 1),
(15, 6, 2),
(16, 6, 3),
(17, 6, 14),
(18, 6, 13),
(19, 5, 13),
(20, 7, 3),
(21, 7, 12),
(22, 7, 13),
(23, 8, 2),
(24, 8, 3),
(25, 8, 13),
(26, 9, 2),
(27, 9, 3),
(28, 9, 9),
(29, 9, 13),
(30, 10, 3),
(31, 10, 13),
(32, 11, 7),
(33, 11, 15),
(34, 12, 2),
(35, 12, 3),
(36, 12, 4),
(37, 13, 4),
(38, 13, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sport');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
