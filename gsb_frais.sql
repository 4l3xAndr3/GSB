
CREATE DATABASE IF NOT EXISTS `gsb_frais` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `gsb_frais`;

-- --------------------------------------------------------

--
-- Structure de la table `etat`
--

CREATE TABLE `etat` (
  `id` char(2) NOT NULL,
  `libelle` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `etat`
--

INSERT INTO `etat` (`id`, `libelle`) VALUES
('CL', 'Saisie cloturee'),
('CR', 'Fiche cree, saisie en cours'),
('RB', 'Remboursee'),
('VA', 'Validee et mise en paiement');

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

CREATE TABLE `visiteur` (
  `id` char(4) NOT NULL,
  `nom` char(30) DEFAULT NULL,
  `prenom` char(30) DEFAULT NULL,
  `adresse` char(30) DEFAULT NULL,
  `cp` char(30) DEFAULT NULL,
  `ville` char(30) DEFAULT NULL,
  `dateEmbauche` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `visiteur`
--

INSERT INTO `visiteur` (`id`, `nom`, `prenom`, `adresse`, `cp`, `ville`, `dateEmbauche`) VALUES
('1', 'Humbert', 'Mohamed', '16 r Doct Bouquet \r\n', '2130\n', 'COULONGES COHAN\r\n', NULL),
('10', 'Rolland', 'Romo', '4 r Edmond Audran \r\n', '54200\n', 'MOSTUEJOULS\r\n', NULL),
('100', 'Muller', 'Paul', '83 r Suzanne Guiganton \r\n', '15800\n', 'DONZY LE PERTUIS\r\n', NULL),
('11', 'Huet', 'Victor', '100 r Antoine Vitez \r\n', '55190\n', 'VERT EN DROUAIS\r\n', NULL),
('12', 'Boyer', 'Evan', '3 r Michel Ollivier \r\n', '68121\n', 'ESCLAUZELS\r\n', NULL),
('13', 'Lacroix', 'Jordan', '4 av Canada \r\n', '1260\n', 'SAUCHY LESTREE\r\n', NULL),
('14', 'Michaud', 'Eric', '4 r Boieldieu \r\n', '57190\n', 'GRANDLUP ET FAY\r\n', NULL),
('15', 'Guillot', 'Baptiste', '100 r Antoine Vitez \r\n', '37140\n', 'AVESNES SUR HELPE\r\n', NULL),
('16', 'Henry', 'Malo', '49 r Calvaire \r\n', '14260\n', 'GIRAUMONT\r\n', NULL),
('17', 'Etienne', 'Marwane', '23 r Jean Mac \r\n', '76730\n', 'ST CHRISTOPHE EN BRIONNAIS\r\n', NULL),
('18', 'Fournier', 'Evan', '2 r Pablo Neruda \r\n', '39300\n', 'BELLEBAT\r\n', NULL),
('19', 'Renard', 'Jordan', '36 r Champagne \r\n', '40330\n', 'EMBERMENIL\r\n', NULL),
('2', 'Boucher', 'Valentin', '4 Bis pl Maurice Gillet \r\n', '64660\n', 'ROUMENS\r\n', NULL),
('20', 'Briand', 'Baptiste', '207 r Gouesnou \r\n', '50390\n', 'WISSANT\r\n', NULL),
('21', 'Allain', 'Amaury', '6 sq Le Gal La Salle \r\n', '70000\n', 'LAUZUN\r\n', NULL),
('22', 'Gillet', 'Diego', '136 r Valy Hir \r\n', '30170\n', 'MAISONCELLES\r\n', NULL),
('23', 'Fabre', 'Lorenzo', '6 all Krigonan \r\n', '31360\n', 'BEY\r\n', NULL),
('24', 'Boyer', 'Gabin', '2 r Commdt Somme Py \r\n', '69210\n', 'AINAY LE VIEIL\r\n', NULL),
('25', 'Carlier', 'Kylian', '9 r Krampr\r\n', '57130\n', 'PENTA DI CASINCA\r\n', NULL),
('26', 'Roy', 'Lucas', '20 r Simon \r\n', '83840\n', 'ST SAUVEUR D EMALLEVILLE\r\n', NULL),
('27', 'Bertin', 'Dorian', '47 bd Montaigne \r\n', '45460\n', 'APCHAT\r\n', NULL),
('28', 'Chauvin', 'Flix', '6 r Frdric Le Guyader\r\n', '74210\n', 'SOULAINES SUR AUBANCE\r\n', NULL),
('29', 'Schmitt', 'Corentin', '3 r Kersaint \r\n', '11140\n', 'LE PLESSIS GROHAN\r\n', NULL),
('3', 'Didier', 'Jules', 'Et 3 6 r Loctudy \r\n', '79360\n', 'CHAMBILLY\r\n', NULL),
('30', 'Mercier', 'Adrien', '33 r Maurice Ravel \r\n', '27460\n', 'LANDOS\r\n', NULL),
('31', 'Julien', 'Noah', '3 sq Macdoine  \r\n', '13280\n', 'NOYERS\r\n', NULL),
('32', 'Rolland', 'Marwane', '42 r Marceau \r\n', '2320\n', 'WISSIGNICOURT\r\n', NULL),
('33', 'Tessier', 'Lonard', '175 r Marrgus\r\n', '80200\n', 'THYEZ\r\n', NULL),
('34', 'Leveque', 'Zacharis', '16 r Doct Bouquet \r\n', '67250\n', 'LES EGLISES D ARGENTEUIL\r\n', NULL),
('35', 'Laurent', 'Timo', '22 r Berthollet \r\n', '66360\n', 'VERANNE\r\n', NULL),
('36', 'Clement', 'Gabriel', '4 Bis pl Maurice Gillet \r\n', '67390\n', 'ST MICHEL CHEF CHEF\r\n', NULL),
('37', 'Boyer', 'louan', '18 r Duhamel \r\n', '11500\n', 'POURCY\r\n', NULL),
('38', 'Paul', 'Kevin', 'Le Grand Large 2 quai Douane \r', '62380\n', 'PLOEVEN\r\n', NULL),
('39', 'Ollivier', 'Yanis', '2 r Pablo Neruda \r\n', '79140\n', 'DAMVIX\r\n', NULL),
('4', 'Leroy', 'Nicolas', '20 r Simon \r\n', '72370\n', 'NOALHAC\r\n', NULL),
('40', 'Deschamps', 'Yohan', '3 r Victor Eusen \r\n', '84530\n', 'GUILLAUCOURT\r\n', NULL),
('41', 'Henry', 'Antonin', '4 r Boieldieu \r\n', '17460\n', 'MEZIDON VALLEE D AUGE\r\n', NULL),
('42', 'Ferrand', 'Nolan', '72 r Auguste Pavie \r\n', '26200\n', 'ST JULIEN EN BORN\r\n', NULL),
('43', 'Caron', 'Yohan', '175 r Marrgus\r\n', '27150\n', 'ST VICTOR SUR RHINS\r\n', NULL),
('44', 'Leger', 'Clment', '8 r Navarin \r\n', '64470\n', 'BEAURAINS LES NOYON\r\n', NULL),
('45', 'Vidal', 'Lorenzo', '11 sq Luxembourg \r\n', '79600\n', 'BOSC BORDEL\r\n', NULL),
('46', 'Bonnet', 'Aaron', '175 r Marrgus\r\n', '44520\n', 'SAINS LES FRESSIN\r\n', NULL),
('47', 'Vaillant', 'Matto', '3 r Penthivre \r\n', '3250\n', 'ESTERRE\r\n', NULL),
('48', 'Robin', 'Dorian', '3 r Michel Ollivier \r\n', '28700\n', 'ST MAYEUX\r\n', NULL),
('49', 'Mercier', 'Titouan', '9 r Krampr\r\n', '59134\n', 'MONT L ETROIT\r\n', NULL),
('5', 'Lebrun', 'Renaud', '2 r Commdt Somme Py \r\n', '7140\n', 'DAUPHIN\r\n', NULL),
('50', 'Raymond', 'Tristan', '17 r Lyon \r\n', '53260\n', 'ST PERREUX\r\n', NULL),
('51', 'Duval', 'Gilbert', '20 r Corentin Carr \r\n', '69430\n', 'ST VITAL\r\n', NULL),
('52', 'Henry', 'Robin', '26 r Paul Fval \r\n', '83400\n', 'BIENCOURT\r\n', NULL),
('53', 'Bourdon', 'Adrien', '3 r Kersaint \r\n', '39210\n', 'MACHEMONT\r\n', NULL),
('54', 'Perez', 'Rmi', '3 r Penthivre \r\n', '39200\n', 'ASSENCIERES\r\n', NULL),
('55', 'Garcia', 'Lo', '8 r Chteau \r\n', '17270\n', 'ST ELIX THEUX\r\n', NULL),
('56', 'Loiseau', 'Robin', '22 r Berthollet \r\n', '23220\n', 'BOUGE CHAMBALUD\r\n', NULL),
('57', 'Charles', 'Tristan', '1 r Gents \r\n', '80140\n', 'ST CHRISTOPHE\r\n', NULL),
('58', 'Weber', 'Alexandre', '8 r Yves Collet\r\n', '72310\n', 'NAYEMONT LES FOSSES\r\n', NULL),
('59', 'Marques', 'mile', '6 r Frdric Le Guyader\r\n', '3340\n', 'BESMONT\r\n', NULL),
('6', 'Gay', 'Clment', '10 r Doct Roux \r\n', '47230\n', 'TERNANT\r\n', NULL),
('60', 'Camus', 'Julien', '4 Bis pl Maurice Gillet \r\n', '64130\n', 'FONTAINE ST LUCIEN\r\n', NULL),
('61', 'Gonzalez', 'Lon', '18 r Duhamel \r\n', '14260\n', 'JEANDELAINCOURT\r\n', NULL),
('62', 'Gonzalez', 'Guillaume', '175 r Marrgus\r\n', '67340\n', 'ROYAN\r\n', NULL),
('63', 'Robert', 'Quentin', '47 bd Montaigne \r\n', '21580\n', 'STE MARIE DES CHAMPS\r\n', NULL),
('64', 'Nguyen', 'Nathan', 'Et 3 6 r Loctudy \r\n', '62124\n', 'LUGO DI NAZZA\r\n', NULL),
('65', 'Raymond', 'Lucas', '3 r Paris \r\n', '67390\n', 'PORNICHET\r\n', NULL),
('66', 'Lamy', 'Valentin', '9 av Tarente \r\n', '38160\n', 'ARSAC EN VELAY\r\n', NULL),
('67', 'Dumas', 'Rmi', '5 A r Gn Audibert \r\n', '45500\n', 'POLEYMIEUX AU MONT D OR\r\n', NULL),
('68', 'Leclerc', 'Samuel', '6 r Frdric Le Guyader\r\n', '14350\n', 'HUPARLAC\r\n', NULL),
('69', 'Morin', 'Flix', '3 r Kersaint \r\n', '53150\n', 'PERPIGNAN\r\n', NULL),
('7', 'Le roux', 'Esteban', '4 r Rennes \r\n', '49450\n', 'LA CHAPELLE D ALIGNE\r\n', NULL),
('70', 'Gay', 'Antoine', '10 r Doct Roux \r\n', '8230\n', 'BEZAUDUN SUR BINE\r\n', NULL),
('71', 'Leveque', 'Simon', '4 r Edmond Audran \r\n', '55170\n', 'BOUGLAINVAL\r\n', NULL),
('72', 'Leclercq', 'Matto', '5 A r Gn Audibert \r\n', '29870\n', 'BOURGNAC\r\n', NULL),
('73', 'Perret', 'Timo', '2 r Commdt Somme Py \r\n', '74150\n', 'VEZINNES\r\n', NULL),
('74', 'Barre', 'Mathis', '5 A r Gn Audibert \r\n', '28500\n', 'LE TANU\r\n', NULL),
('75', 'Levy', 'Alban', '3 r Michel Ollivier \r\n', '77540\n', 'NUKU HIVA\r\n', NULL),
('76', 'Dupond', 'Fabrice', '13 r Nomino \r\n', '9100\n', 'FLAVIAC\r\n', NULL),
('77', 'Leblanc', 'Mehdi', '3 r Paris \r\n', '28150\n', 'BEZANNES\r\n', NULL),
('78', 'Reynaud', 'Amaury', '3 r Kersaint \r\n', '31380\n', 'ROUSSAS\r\n', NULL),
('79', 'Roger', 'Lon', '10 r Doct Roux \r\n', '21270\n', 'FONTGUENAND\r\n', NULL),
('8', 'Nicolas', 'Maxence', 'Et 3 6 r Loctudy \r\n', '97400\n', 'MARMEAUX\r\n', NULL),
('80', 'Perrot', 'Mehdi', '4 r Yves Collet \r\n', '11140\n', 'ZEHNACKER\r\n', NULL),
('81', 'Lopez', 'Quentin', '26 r Paul Fval \r\n', '11150\n', 'ANDELAT\r\n', NULL),
('82', 'Mathieu', 'Kevin', '6 sq Le Gal La Salle \r\n', '64410\n', 'MEZIDON VALLEE D AUGE\r\n', NULL),
('83', 'Lenoir', 'Adrien', '9 av Tarente \r\n', '57320\n', 'VAUDESSON\r\n', NULL),
('84', 'Boucher', 'Maxence', '14 r Grand Kerzu \r\n', '2130\n', 'LABEYRIE\r\n', NULL),
('85', 'Fleury', 'Timo', '19 r Gallini \r\n', '52230\n', 'AIROUX\r\n', NULL),
('86', 'Girard', 'Arthur', '92 r Richelieu \r\n', '60220\n', 'LA HAYE MALHERBE\r\n', NULL),
('87', 'Devaux', 'Jrmy', '3 r Michel Ollivier \r\n', '42430\n', 'COUPELLE NEUVE\r\n', NULL),
('88', 'Besnard', 'Colin', '20 r Corentin Carr \r\n', '16350\n', 'HAIRONVILLE\r\n', NULL),
('89', 'Lacombe', 'Timothe', '3 sq Macdoine  \r\n', '39210\n', 'BARBEREY ST SULPICE\r\n', NULL),
('9', 'Brunet', 'Nicolas', '22 r Berthollet \r\n', '42220\n', 'POUILLY SUR MEUSE\r\n', NULL),
('90', 'Bouchet', 'Killian', '6 sq Le Gal La Salle \r\n', '87440\n', 'MEILHAC\r\n', NULL),
('91', 'Roche', 'Lucas', '13 r Aristide Briand \r\n', '33190\n', 'LE BOUCHAGE\r\n', NULL),
('92', 'Baron', 'Flix', '4 r Yves Collet \r\n', '54700\n', 'VEXIN SUR EPTE\r\n', NULL),
('93', 'Morvan', 'Lonard', '92 r Richelieu \r\n', '74570\n', 'MONTFERRAND DU PERIGORD\r\n', NULL),
('94', 'Marchal', 'Tristan', '3 r Michel Ollivier \r\n', '6340\n', 'WANGENBOURG ENGENTHAL\r\n', NULL),
('95', 'Dupuis', 'Amine', '136 r Valy Hir \r\n', '17470\n', 'LAVEISSIERE\r\n', NULL),
('96', 'Launay', 'Titouan', '13 r Aristide Briand \r\n', '57580\n', 'PINO\r\n', NULL),
('97', 'Coste', 'Zacharis', '3 r Victor Eusen \r\n', '89240\n', 'CHEISSOUX\r\n', NULL),
('98', 'Didier', 'Lilian', '136 r Valy Hir \r\n', '62760\n', 'PAU\r\n', NULL),
('99', 'Huet', 'Adrien', '4 r Yves Collet \r\n', '21700\n', 'FOUGEROLLES\r\n', NULL);




-- --------------------------------------------------------

--
-- Structure de la table `fichefrais`
--

CREATE TABLE `fichefrais` (
  `id` int NOT NULL,
  `idVisiteur` char(4) NOT NULL,
  `mois` tinyint DEFAULT NULL,
  `annee` smallint DEFAULT NULL,
  `nbJustificatifs` int DEFAULT NULL,
  `montantValide` decimal(10,2) NOT NULL,
  `dateModif` date DEFAULT NULL,
  `idEtat` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `fichefrais`
--

INSERT INTO `fichefrais` (`id`, `idVisiteur`, `mois`, `annee`, `nbJustificatifs`, `montantValide`, `dateModif`, `idEtat`) VALUES
(1, '1', 12, 2021, NULL, '387.00', '2022-03-24', 'CL'),
(2, '1', 1, 2022, NULL, '387.00', '2022-03-24', 'CR'),
(3, '2', 12, 2021, NULL, '235.00', '2022-03-24', 'CL'),
(4, '2', 1, 2022, NULL, '235.00', '2022-03-24', 'CR'),
(5, '3', 12, 2021, NULL, '922.00', '2022-03-24', 'CL'),
(6, '3', 1, 2022, NULL, '922.00', '2022-03-24', 'CR'),
(7, '4', 12, 2021, NULL, '778.00', '2022-03-24', 'CL'),
(8, '4', 1, 2022, NULL, '778.00', '2022-03-24', 'CR'),
(9, '5', 12, 2021, NULL, '495.00', '2022-03-24', 'CL'),
(10, '5', 1, 2022, NULL, '495.00', '2022-03-24', 'CR'),
(11, '6', 12, 2021, NULL, '207.00', '2022-03-24', 'CL'),
(12, '6', 1, 2022, NULL, '207.00', '2022-03-24', 'CR'),
(13, '7', 12, 2021, NULL, '193.00', '2022-03-24', 'CL'),
(14, '7', 1, 2022, NULL, '193.00', '2022-03-24', 'CR'),
(15, '8', 12, 2021, NULL, '212.00', '2022-03-24', 'CL'),
(16, '8', 1, 2022, NULL, '212.00', '2022-03-24', 'CR'),
(17, '9', 12, 2021, NULL, '195.00', '2022-03-24', 'CL'),
(18, '9', 1, 2022, NULL, '195.00', '2022-03-24', 'CR'),
(19, '10', 12, 2021, NULL, '862.00', '2022-03-24', 'CL'),
(20, '10', 1, 2022, NULL, '862.00', '2022-03-24', 'CR'),
(21, '11', 12, 2021, NULL, '715.00', '2022-03-24', 'CL'),
(22, '11', 1, 2022, NULL, '715.00', '2022-03-24', 'CR'),
(23, '12', 12, 2021, NULL, '721.00', '2022-03-24', 'CL'),
(24, '12', 1, 2022, NULL, '721.00', '2022-03-24', 'CR'),
(25, '13', 12, 2021, NULL, '948.00', '2022-03-24', 'CL'),
(26, '13', 1, 2022, NULL, '948.00', '2022-03-24', 'CR'),
(27, '14', 12, 2021, NULL, '992.00', '2022-03-24', 'CL'),
(28, '14', 1, 2022, NULL, '992.00', '2022-03-24', 'CR'),
(29, '15', 12, 2021, NULL, '397.00', '2022-03-24', 'CL'),
(30, '15', 1, 2022, NULL, '397.00', '2022-03-24', 'CR'),
(31, '16', 12, 2021, NULL, '215.00', '2022-03-24', 'CL'),
(32, '16', 1, 2022, NULL, '215.00', '2022-03-24', 'CR'),
(33, '17', 12, 2021, NULL, '521.00', '2022-03-24', 'CL'),
(34, '17', 1, 2022, NULL, '521.00', '2022-03-24', 'CR'),
(35, '18', 12, 2021, NULL, '52.00', '2022-03-24', 'CL'),
(36, '18', 1, 2022, NULL, '52.00', '2022-03-24', 'CR'),
(37, '19', 12, 2021, NULL, '546.00', '2022-03-24', 'CL'),
(38, '19', 1, 2022, NULL, '546.00', '2022-03-24', 'CR'),
(39, '20', 12, 2021, NULL, '924.00', '2022-03-24', 'CL'),
(40, '20', 1, 2022, NULL, '924.00', '2022-03-24', 'CR'),
(41, '21', 12, 2021, NULL, '671.00', '2022-03-24', 'CL'),
(42, '21', 1, 2022, NULL, '671.00', '2022-03-24', 'CR'),
(43, '22', 12, 2021, NULL, '810.00', '2022-03-24', 'CL'),
(44, '22', 1, 2022, NULL, '810.00', '2022-03-24', 'CR'),
(45, '23', 12, 2021, NULL, '704.00', '2022-03-24', 'CL'),
(46, '23', 1, 2022, NULL, '704.00', '2022-03-24', 'CR'),
(47, '24', 12, 2021, NULL, '990.00', '2022-03-24', 'CL'),
(48, '24', 1, 2022, NULL, '990.00', '2022-03-24', 'CR'),
(49, '25', 12, 2021, NULL, '423.00', '2022-03-24', 'CL'),
(50, '25', 1, 2022, NULL, '423.00', '2022-03-24', 'CR'),
(51, '26', 12, 2021, NULL, '965.00', '2022-03-24', 'CL'),
(52, '26', 1, 2022, NULL, '965.00', '2022-03-24', 'CR'),
(53, '27', 12, 2021, NULL, '145.00', '2022-03-24', 'CL'),
(54, '27', 1, 2022, NULL, '145.00', '2022-03-24', 'CR'),
(55, '28', 12, 2021, NULL, '80.00', '2022-03-24', 'CL'),
(56, '28', 1, 2022, NULL, '80.00', '2022-03-24', 'CR'),
(57, '29', 12, 2021, NULL, '244.00', '2022-03-24', 'CL'),
(58, '29', 1, 2022, NULL, '244.00', '2022-03-24', 'CR'),
(59, '30', 12, 2021, NULL, '36.00', '2022-03-24', 'CL'),
(60, '30', 1, 2022, NULL, '36.00', '2022-03-24', 'CR'),
(61, '31', 12, 2021, NULL, '42.00', '2022-03-24', 'CL'),
(62, '31', 1, 2022, NULL, '42.00', '2022-03-24', 'CR'),
(63, '32', 12, 2021, NULL, '838.00', '2022-03-24', 'CL'),
(64, '32', 1, 2022, NULL, '838.00', '2022-03-24', 'CR'),
(65, '33', 12, 2021, NULL, '314.00', '2022-03-24', 'CL'),
(66, '33', 1, 2022, NULL, '314.00', '2022-03-24', 'CR'),
(67, '34', 12, 2021, NULL, '576.00', '2022-03-24', 'CL'),
(68, '34', 1, 2022, NULL, '576.00', '2022-03-24', 'CR'),
(69, '35', 12, 2021, NULL, '753.00', '2022-03-24', 'CL'),
(70, '35', 1, 2022, NULL, '753.00', '2022-03-24', 'CR'),
(71, '36', 12, 2021, NULL, '176.00', '2022-03-24', 'CL'),
(72, '36', 1, 2022, NULL, '176.00', '2022-03-24', 'CR'),
(73, '37', 12, 2021, NULL, '690.00', '2022-03-24', 'CL'),
(74, '37', 1, 2022, NULL, '690.00', '2022-03-24', 'CR'),
(75, '38', 12, 2021, NULL, '14.00', '2022-03-24', 'CL'),
(76, '38', 1, 2022, NULL, '14.00', '2022-03-24', 'CR'),
(77, '39', 12, 2021, NULL, '867.00', '2022-03-24', 'CL'),
(78, '39', 1, 2022, NULL, '867.00', '2022-03-24', 'CR'),
(79, '40', 12, 2021, NULL, '276.00', '2022-03-24', 'CL'),
(80, '40', 1, 2022, NULL, '276.00', '2022-03-24', 'CR'),
(81, '41', 12, 2021, NULL, '593.00', '2022-03-24', 'CL'),
(82, '41', 1, 2022, NULL, '593.00', '2022-03-24', 'CR'),
(83, '42', 12, 2021, NULL, '28.00', '2022-03-24', 'CL'),
(84, '42', 1, 2022, NULL, '28.00', '2022-03-24', 'CR'),
(85, '43', 12, 2021, NULL, '445.00', '2022-03-24', 'CL'),
(86, '43', 1, 2022, NULL, '445.00', '2022-03-24', 'CR'),
(87, '44', 12, 2021, NULL, '514.00', '2022-03-24', 'CL'),
(88, '44', 1, 2022, NULL, '514.00', '2022-03-24', 'CR'),
(89, '45', 12, 2021, NULL, '508.00', '2022-03-24', 'CL'),
(90, '45', 1, 2022, NULL, '508.00', '2022-03-24', 'CR'),
(91, '46', 12, 2021, NULL, '273.00', '2022-03-24', 'CL'),
(92, '46', 1, 2022, NULL, '273.00', '2022-03-24', 'CR'),
(93, '47', 12, 2021, NULL, '157.00', '2022-03-24', 'CL'),
(94, '47', 1, 2022, NULL, '157.00', '2022-03-24', 'CR'),
(95, '48', 12, 2021, NULL, '4.00', '2022-03-24', 'CL'),
(96, '48', 1, 2022, NULL, '4.00', '2022-03-24', 'CR'),
(97, '49', 12, 2021, NULL, '230.00', '2022-03-24', 'CL'),
(98, '49', 1, 2022, NULL, '230.00', '2022-03-24', 'CR'),
(99, '50', 12, 2021, NULL, '445.00', '2022-03-24', 'CL'),
(100, '50', 1, 2022, NULL, '445.00', '2022-03-24', 'CR'),
(101, '51', 12, 2021, NULL, '623.00', '2022-03-24', 'CL'),
(102, '51', 1, 2022, NULL, '623.00', '2022-03-24', 'CR'),
(103, '52', 12, 2021, NULL, '538.00', '2022-03-24', 'CL'),
(104, '52', 1, 2022, NULL, '538.00', '2022-03-24', 'CR'),
(105, '53', 12, 2021, NULL, '802.00', '2022-03-24', 'CL'),
(106, '53', 1, 2022, NULL, '802.00', '2022-03-24', 'CR'),
(107, '54', 12, 2021, NULL, '205.00', '2022-03-24', 'CL'),
(108, '54', 1, 2022, NULL, '205.00', '2022-03-24', 'CR'),
(109, '55', 12, 2021, NULL, '918.00', '2022-03-24', 'CL'),
(110, '55', 1, 2022, NULL, '918.00', '2022-03-24', 'CR'),
(111, '56', 12, 2021, NULL, '123.00', '2022-03-24', 'CL'),
(112, '56', 1, 2022, NULL, '123.00', '2022-03-24', 'CR'),
(113, '57', 12, 2021, NULL, '581.00', '2022-03-24', 'CL'),
(114, '57', 1, 2022, NULL, '581.00', '2022-03-24', 'CR'),
(115, '58', 12, 2021, NULL, '465.00', '2022-03-24', 'CL'),
(116, '58', 1, 2022, NULL, '465.00', '2022-03-24', 'CR'),
(117, '59', 12, 2021, NULL, '563.00', '2022-03-24', 'CL'),
(118, '59', 1, 2022, NULL, '563.00', '2022-03-24', 'CR'),
(119, '60', 12, 2021, NULL, '639.00', '2022-03-24', 'CL'),
(120, '60', 1, 2022, NULL, '639.00', '2022-03-24', 'CR'),
(121, '61', 12, 2021, NULL, '234.00', '2022-03-24', 'CL'),
(122, '61', 1, 2022, NULL, '234.00', '2022-03-24', 'CR'),
(123, '62', 12, 2021, NULL, '721.00', '2022-03-24', 'CL'),
(124, '62', 1, 2022, NULL, '721.00', '2022-03-24', 'CR'),
(125, '63', 12, 2021, NULL, '854.00', '2022-03-24', 'CL'),
(126, '63', 1, 2022, NULL, '854.00', '2022-03-24', 'CR'),
(127, '64', 12, 2021, NULL, '49.00', '2022-03-24', 'CL'),
(128, '64', 1, 2022, NULL, '49.00', '2022-03-24', 'CR'),
(129, '65', 12, 2021, NULL, '985.00', '2022-03-24', 'CL'),
(130, '65', 1, 2022, NULL, '985.00', '2022-03-24', 'CR'),
(131, '66', 12, 2021, NULL, '230.00', '2022-03-24', 'CL'),
(132, '66', 1, 2022, NULL, '230.00', '2022-03-24', 'CR'),
(133, '67', 12, 2021, NULL, '748.00', '2022-03-24', 'CL'),
(134, '67', 1, 2022, NULL, '748.00', '2022-03-24', 'CR'),
(135, '68', 12, 2021, NULL, '603.00', '2022-03-24', 'CL'),
(136, '68', 1, 2022, NULL, '603.00', '2022-03-24', 'CR'),
(137, '69', 12, 2021, NULL, '675.00', '2022-03-24', 'CL'),
(138, '69', 1, 2022, NULL, '675.00', '2022-03-24', 'CR'),
(139, '70', 12, 2021, NULL, '563.00', '2022-03-24', 'CL'),
(140, '70', 1, 2022, NULL, '563.00', '2022-03-24', 'CR'),
(141, '71', 12, 2021, NULL, '926.00', '2022-03-24', 'CL'),
(142, '71', 1, 2022, NULL, '926.00', '2022-03-24', 'CR'),
(143, '72', 12, 2021, NULL, '494.00', '2022-03-24', 'CL'),
(144, '72', 1, 2022, NULL, '494.00', '2022-03-24', 'CR'),
(145, '73', 12, 2021, NULL, '513.00', '2022-03-24', 'CL'),
(146, '73', 1, 2022, NULL, '513.00', '2022-03-24', 'CR'),
(147, '74', 12, 2021, NULL, '301.00', '2022-03-24', 'CL'),
(148, '74', 1, 2022, NULL, '301.00', '2022-03-24', 'CR'),
(149, '75', 12, 2021, NULL, '798.00', '2022-03-24', 'CL'),
(150, '75', 1, 2022, NULL, '798.00', '2022-03-24', 'CR'),
(151, '76', 12, 2021, NULL, '576.00', '2022-03-24', 'CL'),
(152, '76', 1, 2022, NULL, '576.00', '2022-03-24', 'CR'),
(153, '77', 12, 2021, NULL, '151.00', '2022-03-24', 'CL'),
(154, '77', 1, 2022, NULL, '151.00', '2022-03-24', 'CR'),
(155, '78', 12, 2021, NULL, '413.00', '2022-03-24', 'CL'),
(156, '78', 1, 2022, NULL, '413.00', '2022-03-24', 'CR'),
(157, '79', 12, 2021, NULL, '464.00', '2022-03-24', 'CL'),
(158, '79', 1, 2022, NULL, '464.00', '2022-03-24', 'CR'),
(159, '80', 12, 2021, NULL, '320.00', '2022-03-24', 'CL'),
(160, '80', 1, 2022, NULL, '320.00', '2022-03-24', 'CR'),
(161, '81', 12, 2021, NULL, '938.00', '2022-03-24', 'CL'),
(162, '81', 1, 2022, NULL, '938.00', '2022-03-24', 'CR'),
(163, '82', 12, 2021, NULL, '232.00', '2022-03-24', 'CL'),
(164, '82', 1, 2022, NULL, '232.00', '2022-03-24', 'CR'),
(165, '83', 12, 2021, NULL, '503.00', '2022-03-24', 'CL'),
(166, '83', 1, 2022, NULL, '503.00', '2022-03-24', 'CR'),
(167, '84', 12, 2021, NULL, '28.00', '2022-03-24', 'CL'),
(168, '84', 1, 2022, NULL, '28.00', '2022-03-24', 'CR'),
(169, '85', 12, 2021, NULL, '123.00', '2022-03-24', 'CL'),
(170, '85', 1, 2022, NULL, '123.00', '2022-03-24', 'CR'),
(171, '86', 12, 2021, NULL, '937.00', '2022-03-24', 'CL'),
(172, '86', 1, 2022, NULL, '937.00', '2022-03-24', 'CR'),
(173, '87', 12, 2021, NULL, '66.00', '2022-03-24', 'CL'),
(174, '87', 1, 2022, NULL, '66.00', '2022-03-24', 'CR'),
(175, '88', 12, 2021, NULL, '818.00', '2022-03-24', 'CL'),
(176, '88', 1, 2022, NULL, '818.00', '2022-03-24', 'CR'),
(177, '89', 12, 2021, NULL, '876.00', '2022-03-24', 'CL'),
(178, '89', 1, 2022, NULL, '876.00', '2022-03-24', 'CR'),
(179, '90', 12, 2021, NULL, '268.00', '2022-03-24', 'CL'),
(180, '90', 1, 2022, NULL, '268.00', '2022-03-24', 'CR'),
(181, '91', 12, 2021, NULL, '683.00', '2022-03-24', 'CL'),
(182, '91', 1, 2022, NULL, '683.00', '2022-03-24', 'CR'),
(183, '92', 12, 2021, NULL, '54.00', '2022-03-24', 'CL'),
(184, '92', 1, 2022, NULL, '54.00', '2022-03-24', 'CR'),
(185, '93', 12, 2021, NULL, '321.00', '2022-03-24', 'CL'),
(186, '93', 1, 2022, NULL, '321.00', '2022-03-24', 'CR'),
(187, '94', 12, 2021, NULL, '38.00', '2022-03-24', 'CL'),
(188, '94', 1, 2022, NULL, '38.00', '2022-03-24', 'CR'),
(189, '95', 12, 2021, NULL, '460.00', '2022-03-24', 'CL'),
(190, '95', 1, 2022, NULL, '460.00', '2022-03-24', 'CR'),
(191, '96', 12, 2021, NULL, '523.00', '2022-03-24', 'CL'),
(192, '96', 1, 2022, NULL, '523.00', '2022-03-24', 'CR'),
(193, '97', 12, 2021, NULL, '793.00', '2022-03-24', 'CL'),
(194, '97', 1, 2022, NULL, '793.00', '2022-03-24', 'CR'),
(195, '98', 12, 2021, NULL, '459.00', '2022-03-24', 'CL'),
(196, '98', 1, 2022, NULL, '459.00', '2022-03-24', 'CR'),
(197, '99', 12, 2021, NULL, '143.00', '2022-03-24', 'CL'),
(198, '99', 1, 2022, NULL, '143.00', '2022-03-24', 'CR'),
(199, '100', 12, 2021, NULL, '893.00', '2022-03-24', 'CL'),
(200, '100', 1, 2022, NULL, '893.00', '2022-03-24', 'CR');

-- --------------------------------------------------------

--
-- Structure de la table `forfait`
--

CREATE TABLE `forfait` (
  `id` char(3) NOT NULL,
  `libelle` char(20) DEFAULT NULL,
  `montant` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `forfait`
--

INSERT INTO `forfait` (`id`, `libelle`, `montant`) VALUES
('ETP', 'Forfait Etape', '110.00'),
('KM', 'Frais Kilométrique', '0.62'),
('NUI', 'Nuitée Hôtel', '80.00'),
('REP', 'Repas Restaurant', '25.00');

-- --------------------------------------------------------

--
-- Structure de la table `lignefraisforfait`
--

CREATE TABLE `lignefraisforfait` (
  `idFicheFrais` int NOT NULL,
  `idForfait` char(3) NOT NULL,
  `quantite` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `lignefraisforfait`
--

INSERT INTO `lignefraisforfait` (`idFicheFrais`, `idForfait`, `quantite`) VALUES
(1, 'ETP', 10),
(1, 'KM', 7),
(1, 'NUI', 7),
(1, 'REP', 1),
(2, 'ETP', 3),
(2, 'KM', 4),
(2, 'NUI', 1),
(2, 'REP', 8),
(3, 'ETP', 8),
(3, 'KM', 5),
(3, 'NUI', 1),
(3, 'REP', 8),
(4, 'ETP', 2),
(4, 'KM', 2),
(4, 'NUI', 7),
(4, 'REP', 5),
(5, 'ETP', 10),
(5, 'KM', 6),
(5, 'NUI', 7),
(5, 'REP', 4),
(6, 'ETP', 7),
(6, 'KM', 3),
(6, 'NUI', 2),
(6, 'REP', 5),
(7, 'ETP', 6),
(7, 'KM', 8),
(7, 'NUI', 10),
(7, 'REP', 4),
(8, 'ETP', 6),
(8, 'KM', 6),
(8, 'NUI', 7),
(8, 'REP', 1),
(9, 'ETP', 8),
(9, 'KM', 3),
(9, 'NUI', 1),
(9, 'REP', 2),
(10, 'ETP', 5),
(10, 'KM', 4),
(10, 'NUI', 6),
(10, 'REP', 1),
(11, 'ETP', 7),
(11, 'KM', 9),
(11, 'NUI', 8),
(11, 'REP', 4),
(12, 'ETP', 2),
(12, 'KM', 1),
(12, 'NUI', 6),
(12, 'REP', 6),
(13, 'ETP', 7),
(13, 'KM', 3),
(13, 'NUI', 8),
(13, 'REP', 7),
(14, 'ETP', 2),
(14, 'KM', 6),
(14, 'NUI', 3),
(14, 'REP', 8),
(15, 'ETP', 8),
(15, 'KM', 2),
(15, 'NUI', 2),
(15, 'REP', 3),
(16, 'ETP', 1),
(16, 'KM', 5),
(16, 'NUI', 9),
(16, 'REP', 1),
(17, 'ETP', 8),
(17, 'KM', 6),
(17, 'NUI', 4),
(17, 'REP', 3),
(18, 'ETP', 1),
(18, 'KM', 2),
(18, 'NUI', 8),
(18, 'REP', 1),
(19, 'ETP', 2),
(19, 'KM', 5),
(19, 'NUI', 9),
(19, 'REP', 5),
(20, 'ETP', 7),
(20, 'KM', 4),
(20, 'NUI', 5),
(20, 'REP', 4),
(21, 'ETP', 9),
(21, 'KM', 6),
(21, 'NUI', 9),
(21, 'REP', 2),
(22, 'ETP', 8),
(22, 'KM', 4),
(22, 'NUI', 1),
(22, 'REP', 7),
(23, 'ETP', 5),
(23, 'KM', 10),
(23, 'NUI', 4),
(23, 'REP', 10),
(24, 'ETP', 4),
(24, 'KM', 6),
(24, 'NUI', 2),
(24, 'REP', 2),
(25, 'ETP', 5),
(25, 'KM', 6),
(25, 'NUI', 2),
(25, 'REP', 3),
(26, 'ETP', 10),
(26, 'KM', 8),
(26, 'NUI', 2),
(26, 'REP', 1),
(27, 'ETP', 10),
(27, 'KM', 6),
(27, 'NUI', 8),
(27, 'REP', 3),
(28, 'ETP', 9),
(28, 'KM', 5),
(28, 'NUI', 3),
(28, 'REP', 1),
(29, 'ETP', 7),
(29, 'KM', 3),
(29, 'NUI', 3),
(29, 'REP', 7),
(30, 'ETP', 2),
(30, 'KM', 1),
(30, 'NUI', 7),
(30, 'REP', 4),
(31, 'ETP', 10),
(31, 'KM', 3),
(31, 'NUI', 1),
(31, 'REP', 9),
(32, 'ETP', 8),
(32, 'KM', 3),
(32, 'NUI', 6),
(32, 'REP', 10),
(33, 'ETP', 1),
(33, 'KM', 6),
(33, 'NUI', 8),
(33, 'REP', 1),
(34, 'ETP', 1),
(34, 'KM', 1),
(34, 'NUI', 9),
(34, 'REP', 10),
(35, 'ETP', 1),
(35, 'KM', 5),
(35, 'NUI', 10),
(35, 'REP', 1),
(36, 'ETP', 1),
(36, 'KM', 4),
(36, 'NUI', 10),
(36, 'REP', 8),
(37, 'ETP', 2),
(37, 'KM', 2),
(37, 'NUI', 10),
(37, 'REP', 4),
(38, 'ETP', 2),
(38, 'KM', 1),
(38, 'NUI', 10),
(38, 'REP', 9),
(39, 'ETP', 7),
(39, 'KM', 3),
(39, 'NUI', 2),
(39, 'REP', 7),
(40, 'ETP', 3),
(40, 'KM', 3),
(40, 'NUI', 1),
(40, 'REP', 2),
(41, 'ETP', 10),
(41, 'KM', 10),
(41, 'NUI', 10),
(41, 'REP', 3),
(42, 'ETP', 2),
(42, 'KM', 2),
(42, 'NUI', 3),
(42, 'REP', 8),
(43, 'ETP', 7),
(43, 'KM', 2),
(43, 'NUI', 5),
(43, 'REP', 3),
(44, 'ETP', 6),
(44, 'KM', 6),
(44, 'NUI', 6),
(44, 'REP', 9),
(45, 'ETP', 7),
(45, 'KM', 7),
(45, 'NUI', 8),
(45, 'REP', 4),
(46, 'ETP', 4),
(46, 'KM', 7),
(46, 'NUI', 4),
(46, 'REP', 9),
(47, 'ETP', 7),
(47, 'KM', 5),
(47, 'NUI', 9),
(47, 'REP', 8),
(48, 'ETP', 3),
(48, 'KM', 4),
(48, 'NUI', 8),
(48, 'REP', 3),
(49, 'ETP', 4),
(49, 'KM', 5),
(49, 'NUI', 10),
(49, 'REP', 9),
(50, 'ETP', 6),
(50, 'KM', 7),
(50, 'NUI', 5),
(50, 'REP', 7),
(51, 'ETP', 4),
(51, 'KM', 1),
(51, 'NUI', 6),
(51, 'REP', 5),
(52, 'ETP', 7),
(52, 'KM', 3),
(52, 'NUI', 5),
(52, 'REP', 1),
(53, 'ETP', 2),
(53, 'KM', 5),
(53, 'NUI', 3),
(53, 'REP', 6),
(54, 'ETP', 8),
(54, 'KM', 8),
(54, 'NUI', 7),
(54, 'REP', 5),
(55, 'ETP', 6),
(55, 'KM', 4),
(55, 'NUI', 6),
(55, 'REP', 2),
(56, 'ETP', 10),
(56, 'KM', 2),
(56, 'NUI', 4),
(56, 'REP', 6),
(57, 'ETP', 3),
(57, 'KM', 3),
(57, 'NUI', 2),
(57, 'REP', 10),
(58, 'ETP', 6),
(58, 'KM', 2),
(58, 'NUI', 4),
(58, 'REP', 6),
(59, 'ETP', 3),
(59, 'KM', 8),
(59, 'NUI', 4),
(59, 'REP', 9),
(60, 'ETP', 9),
(60, 'KM', 1),
(60, 'NUI', 3),
(60, 'REP', 4),
(61, 'ETP', 1),
(61, 'KM', 4),
(61, 'NUI', 8),
(61, 'REP', 5),
(62, 'ETP', 1),
(62, 'KM', 2),
(62, 'NUI', 9),
(62, 'REP', 4),
(63, 'ETP', 7),
(63, 'KM', 8),
(63, 'NUI', 8),
(63, 'REP', 7),
(64, 'ETP', 3),
(64, 'KM', 3),
(64, 'NUI', 5),
(64, 'REP', 4),
(65, 'ETP', 2),
(65, 'KM', 10),
(65, 'NUI', 9),
(65, 'REP', 8),
(66, 'ETP', 4),
(66, 'KM', 1),
(66, 'NUI', 3),
(66, 'REP', 6),
(67, 'ETP', 1),
(67, 'KM', 6),
(67, 'NUI', 1),
(67, 'REP', 10),
(68, 'ETP', 8),
(68, 'KM', 6),
(68, 'NUI', 6),
(68, 'REP', 6),
(69, 'ETP', 4),
(69, 'KM', 9),
(69, 'NUI', 3),
(69, 'REP', 2),
(70, 'ETP', 4),
(70, 'KM', 10),
(70, 'NUI', 5),
(70, 'REP', 2),
(71, 'ETP', 3),
(71, 'KM', 3),
(71, 'NUI', 4),
(71, 'REP', 2),
(72, 'ETP', 5),
(72, 'KM', 10),
(72, 'NUI', 6),
(72, 'REP', 6),
(73, 'ETP', 6),
(73, 'KM', 6),
(73, 'NUI', 7),
(73, 'REP', 10),
(74, 'ETP', 7),
(74, 'KM', 9),
(74, 'NUI', 2),
(74, 'REP', 9),
(75, 'ETP', 5),
(75, 'KM', 1),
(75, 'NUI', 10),
(75, 'REP', 5),
(76, 'ETP', 3),
(76, 'KM', 7),
(76, 'NUI', 10),
(76, 'REP', 3),
(77, 'ETP', 1),
(77, 'KM', 6),
(77, 'NUI', 9),
(77, 'REP', 7),
(78, 'ETP', 6),
(78, 'KM', 10),
(78, 'NUI', 7),
(78, 'REP', 8),
(79, 'ETP', 6),
(79, 'KM', 3),
(79, 'NUI', 4),
(79, 'REP', 1),
(80, 'ETP', 2),
(80, 'KM', 3),
(80, 'NUI', 8),
(80, 'REP', 7),
(81, 'ETP', 10),
(81, 'KM', 6),
(81, 'NUI', 9),
(81, 'REP', 2),
(82, 'ETP', 5),
(82, 'KM', 6),
(82, 'NUI', 3),
(82, 'REP', 8),
(83, 'ETP', 9),
(83, 'KM', 3),
(83, 'NUI', 9),
(83, 'REP', 1),
(84, 'ETP', 6),
(84, 'KM', 1),
(84, 'NUI', 5),
(84, 'REP', 4),
(85, 'ETP', 3),
(85, 'KM', 10),
(85, 'NUI', 6),
(85, 'REP', 9),
(86, 'ETP', 10),
(86, 'KM', 1),
(86, 'NUI', 6),
(86, 'REP', 1),
(87, 'ETP', 4),
(87, 'KM', 1),
(87, 'NUI', 3),
(87, 'REP', 1),
(88, 'ETP', 6),
(88, 'KM', 5),
(88, 'NUI', 10),
(88, 'REP', 7),
(89, 'ETP', 8),
(89, 'KM', 5),
(89, 'NUI', 4),
(89, 'REP', 1),
(90, 'ETP', 2),
(90, 'KM', 8),
(90, 'NUI', 3),
(90, 'REP', 6),
(91, 'ETP', 1),
(91, 'KM', 7),
(91, 'NUI', 6),
(91, 'REP', 5),
(92, 'ETP', 6),
(92, 'KM', 2),
(92, 'NUI', 10),
(92, 'REP', 7),
(93, 'ETP', 2),
(93, 'KM', 10),
(93, 'NUI', 2),
(93, 'REP', 8),
(94, 'ETP', 7),
(94, 'KM', 2),
(94, 'NUI', 9),
(94, 'REP', 3),
(95, 'ETP', 10),
(95, 'KM', 7),
(95, 'NUI', 4),
(95, 'REP', 10),
(96, 'ETP', 7),
(96, 'KM', 9),
(96, 'NUI', 3),
(96, 'REP', 10),
(97, 'ETP', 8),
(97, 'KM', 3),
(97, 'NUI', 1),
(97, 'REP', 6),
(98, 'ETP', 1),
(98, 'KM', 6),
(98, 'NUI', 3),
(98, 'REP', 2),
(99, 'ETP', 6),
(99, 'KM', 8),
(99, 'NUI', 6),
(99, 'REP', 1),
(100, 'ETP', 7),
(100, 'KM', 1),
(100, 'NUI', 8),
(100, 'REP', 1),
(101, 'ETP', 3),
(101, 'KM', 8),
(101, 'NUI', 9),
(101, 'REP', 8),
(102, 'ETP', 2),
(102, 'KM', 7),
(102, 'NUI', 5),
(102, 'REP', 4),
(103, 'ETP', 6),
(103, 'KM', 9),
(103, 'NUI', 5),
(103, 'REP', 10),
(104, 'ETP', 4),
(104, 'KM', 4),
(104, 'NUI', 6),
(104, 'REP', 7),
(105, 'ETP', 5),
(105, 'KM', 7),
(105, 'NUI', 5),
(105, 'REP', 9),
(106, 'ETP', 6),
(106, 'KM', 7),
(106, 'NUI', 1),
(106, 'REP', 7),
(107, 'ETP', 1),
(107, 'KM', 6),
(107, 'NUI', 10),
(107, 'REP', 3),
(108, 'ETP', 4),
(108, 'KM', 5),
(108, 'NUI', 5),
(108, 'REP', 7),
(109, 'ETP', 5),
(109, 'KM', 1),
(109, 'NUI', 4),
(109, 'REP', 10),
(110, 'ETP', 3),
(110, 'KM', 8),
(110, 'NUI', 5),
(110, 'REP', 2),
(111, 'ETP', 4),
(111, 'KM', 9),
(111, 'NUI', 4),
(111, 'REP', 10),
(112, 'ETP', 10),
(112, 'KM', 9),
(112, 'NUI', 5),
(112, 'REP', 9),
(113, 'ETP', 9),
(113, 'KM', 6),
(113, 'NUI', 10),
(113, 'REP', 8),
(114, 'ETP', 2),
(114, 'KM', 10),
(114, 'NUI', 7),
(114, 'REP', 5),
(115, 'ETP', 6),
(115, 'KM', 8),
(115, 'NUI', 4),
(115, 'REP', 5),
(116, 'ETP', 2),
(116, 'KM', 4),
(116, 'NUI', 1),
(116, 'REP', 2),
(117, 'ETP', 7),
(117, 'KM', 2),
(117, 'NUI', 10),
(117, 'REP', 2),
(118, 'ETP', 1),
(118, 'KM', 4),
(118, 'NUI', 10),
(118, 'REP', 7),
(119, 'ETP', 2),
(119, 'KM', 6),
(119, 'NUI', 1),
(119, 'REP', 1),
(120, 'ETP', 9),
(120, 'KM', 7),
(120, 'NUI', 1),
(120, 'REP', 4),
(121, 'ETP', 4),
(121, 'KM', 3),
(121, 'NUI', 5),
(121, 'REP', 3),
(122, 'ETP', 8),
(122, 'KM', 3),
(122, 'NUI', 3),
(122, 'REP', 3),
(123, 'ETP', 3),
(123, 'KM', 6),
(123, 'NUI', 3),
(123, 'REP', 3),
(124, 'ETP', 3),
(124, 'KM', 7),
(124, 'NUI', 8),
(124, 'REP', 10),
(125, 'ETP', 10),
(125, 'KM', 2),
(125, 'NUI', 4),
(125, 'REP', 5),
(126, 'ETP', 4),
(126, 'KM', 3),
(126, 'NUI', 7),
(126, 'REP', 5),
(127, 'ETP', 6),
(127, 'KM', 7),
(127, 'NUI', 5),
(127, 'REP', 5),
(128, 'ETP', 2),
(128, 'KM', 10),
(128, 'NUI', 3),
(128, 'REP', 3),
(129, 'ETP', 2),
(129, 'KM', 1),
(129, 'NUI', 1),
(129, 'REP', 5),
(130, 'ETP', 3),
(130, 'KM', 3),
(130, 'NUI', 9),
(130, 'REP', 10),
(131, 'ETP', 10),
(131, 'KM', 10),
(131, 'NUI', 3),
(131, 'REP', 4),
(132, 'ETP', 1),
(132, 'KM', 10),
(132, 'NUI', 9),
(132, 'REP', 9),
(133, 'ETP', 2),
(133, 'KM', 9),
(133, 'NUI', 2),
(133, 'REP', 5),
(134, 'ETP', 3),
(134, 'KM', 1),
(134, 'NUI', 8),
(134, 'REP', 4),
(135, 'ETP', 7),
(135, 'KM', 1),
(135, 'NUI', 9),
(135, 'REP', 4),
(136, 'ETP', 3),
(136, 'KM', 8),
(136, 'NUI', 4),
(136, 'REP', 2),
(137, 'ETP', 9),
(137, 'KM', 4),
(137, 'NUI', 6),
(137, 'REP', 4),
(138, 'ETP', 7),
(138, 'KM', 2),
(138, 'NUI', 9),
(138, 'REP', 10),
(139, 'ETP', 8),
(139, 'KM', 10),
(139, 'NUI', 9),
(139, 'REP', 3),
(140, 'ETP', 1),
(140, 'KM', 8),
(140, 'NUI', 8),
(140, 'REP', 5),
(141, 'ETP', 6),
(141, 'KM', 5),
(141, 'NUI', 8),
(141, 'REP', 7),
(142, 'ETP', 8),
(142, 'KM', 6),
(142, 'NUI', 4),
(142, 'REP', 4),
(143, 'ETP', 1),
(143, 'KM', 4),
(143, 'NUI', 8),
(143, 'REP', 6),
(144, 'ETP', 3),
(144, 'KM', 8),
(144, 'NUI', 7),
(144, 'REP', 7),
(145, 'ETP', 4),
(145, 'KM', 4),
(145, 'NUI', 9),
(145, 'REP', 9),
(146, 'ETP', 6),
(146, 'KM', 4),
(146, 'NUI', 8),
(146, 'REP', 4),
(147, 'ETP', 10),
(147, 'KM', 4),
(147, 'NUI', 2),
(147, 'REP', 2),
(148, 'ETP', 3),
(148, 'KM', 1),
(148, 'NUI', 10),
(148, 'REP', 10),
(149, 'ETP', 6),
(149, 'KM', 10),
(149, 'NUI', 7),
(149, 'REP', 8),
(150, 'ETP', 10),
(150, 'KM', 9),
(150, 'NUI', 6),
(150, 'REP', 3),
(151, 'ETP', 1),
(151, 'KM', 4),
(151, 'NUI', 2),
(151, 'REP', 2),
(152, 'ETP', 5),
(152, 'KM', 5),
(152, 'NUI', 4),
(152, 'REP', 5),
(153, 'ETP', 3),
(153, 'KM', 1),
(153, 'NUI', 5),
(153, 'REP', 2),
(154, 'ETP', 7),
(154, 'KM', 10),
(154, 'NUI', 9),
(154, 'REP', 8),
(155, 'ETP', 8),
(155, 'KM', 1),
(155, 'NUI', 7),
(155, 'REP', 7),
(156, 'ETP', 4),
(156, 'KM', 6),
(156, 'NUI', 1),
(156, 'REP', 3),
(157, 'ETP', 7),
(157, 'KM', 9),
(157, 'NUI', 8),
(157, 'REP', 5),
(158, 'ETP', 5),
(158, 'KM', 7),
(158, 'NUI', 1),
(158, 'REP', 10),
(159, 'ETP', 9),
(159, 'KM', 7),
(159, 'NUI', 2),
(159, 'REP', 10),
(160, 'ETP', 9),
(160, 'KM', 3),
(160, 'NUI', 10),
(160, 'REP', 9),
(161, 'ETP', 2),
(161, 'KM', 8),
(161, 'NUI', 2),
(161, 'REP', 1),
(162, 'ETP', 2),
(162, 'KM', 3),
(162, 'NUI', 1),
(162, 'REP', 2),
(163, 'ETP', 5),
(163, 'KM', 1),
(163, 'NUI', 10),
(163, 'REP', 9),
(164, 'ETP', 5),
(164, 'KM', 10),
(164, 'NUI', 7),
(164, 'REP', 9),
(165, 'ETP', 2),
(165, 'KM', 10),
(165, 'NUI', 8),
(165, 'REP', 7),
(166, 'ETP', 6),
(166, 'KM', 1),
(166, 'NUI', 4),
(166, 'REP', 6),
(167, 'ETP', 7),
(167, 'KM', 5),
(167, 'NUI', 5),
(167, 'REP', 1),
(168, 'ETP', 6),
(168, 'KM', 2),
(168, 'NUI', 6),
(168, 'REP', 9),
(169, 'ETP', 10),
(169, 'KM', 10),
(169, 'NUI', 1),
(169, 'REP', 10),
(170, 'ETP', 1),
(170, 'KM', 3),
(170, 'NUI', 6),
(170, 'REP', 8),
(171, 'ETP', 7),
(171, 'KM', 9),
(171, 'NUI', 10),
(171, 'REP', 2),
(172, 'ETP', 3),
(172, 'KM', 4),
(172, 'NUI', 9),
(172, 'REP', 2),
(173, 'ETP', 3),
(173, 'KM', 6),
(173, 'NUI', 4),
(173, 'REP', 8),
(174, 'ETP', 2),
(174, 'KM', 5),
(174, 'NUI', 1),
(174, 'REP', 2),
(175, 'ETP', 9),
(175, 'KM', 10),
(175, 'NUI', 5),
(175, 'REP', 2),
(176, 'ETP', 3),
(176, 'KM', 5),
(176, 'NUI', 4),
(176, 'REP', 3),
(177, 'ETP', 4),
(177, 'KM', 6),
(177, 'NUI', 6),
(177, 'REP', 9),
(178, 'ETP', 1),
(178, 'KM', 6),
(178, 'NUI', 10),
(178, 'REP', 5),
(179, 'ETP', 3),
(179, 'KM', 10),
(179, 'NUI', 1),
(179, 'REP', 3),
(180, 'ETP', 9),
(180, 'KM', 3),
(180, 'NUI', 5),
(180, 'REP', 4),
(181, 'ETP', 10),
(181, 'KM', 5),
(181, 'NUI', 6),
(181, 'REP', 7),
(182, 'ETP', 5),
(182, 'KM', 1),
(182, 'NUI', 10),
(182, 'REP', 2),
(183, 'ETP', 4),
(183, 'KM', 3),
(183, 'NUI', 2),
(183, 'REP', 3),
(184, 'ETP', 5),
(184, 'KM', 10),
(184, 'NUI', 3),
(184, 'REP', 6),
(185, 'ETP', 1),
(185, 'KM', 10),
(185, 'NUI', 5),
(185, 'REP', 4),
(186, 'ETP', 7),
(186, 'KM', 10),
(186, 'NUI', 8),
(186, 'REP', 1),
(187, 'ETP', 5),
(187, 'KM', 2),
(187, 'NUI', 8),
(187, 'REP', 1),
(188, 'ETP', 2),
(188, 'KM', 9),
(188, 'NUI', 8),
(188, 'REP', 2),
(189, 'ETP', 6),
(189, 'KM', 8),
(189, 'NUI', 6),
(189, 'REP', 10),
(190, 'ETP', 10),
(190, 'KM', 7),
(190, 'NUI', 5),
(190, 'REP', 1),
(191, 'ETP', 2),
(191, 'KM', 2),
(191, 'NUI', 9),
(191, 'REP', 9),
(192, 'ETP', 5),
(192, 'KM', 4),
(192, 'NUI', 1),
(192, 'REP', 5),
(193, 'ETP', 4),
(193, 'KM', 8),
(193, 'NUI', 8),
(193, 'REP', 6),
(194, 'ETP', 1),
(194, 'KM', 6),
(194, 'NUI', 8),
(194, 'REP', 8),
(195, 'ETP', 8),
(195, 'KM', 3),
(195, 'NUI', 6),
(195, 'REP', 2),
(196, 'ETP', 6),
(196, 'KM', 2),
(196, 'NUI', 7),
(196, 'REP', 3),
(197, 'ETP', 2),
(197, 'KM', 1),
(197, 'NUI', 6),
(197, 'REP', 9),
(198, 'ETP', 2),
(198, 'KM', 5),
(198, 'NUI', 8),
(198, 'REP', 5),
(199, 'ETP', 8),
(199, 'KM', 10),
(199, 'NUI', 2),
(199, 'REP', 4),
(200, 'ETP', 7),
(200, 'KM', 1),
(200, 'NUI', 4),
(200, 'REP', 1);


--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etat`
--
ALTER TABLE `etat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fichefrais`
--
ALTER TABLE `fichefrais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idVisiteur` (`idVisiteur`),
  ADD KEY `idEtat` (`idEtat`);

--
-- Index pour la table `forfait`
--
ALTER TABLE `forfait`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lignefraisforfait`
--
ALTER TABLE `lignefraisforfait`
  ADD PRIMARY KEY (`idFicheFrais`,`idForfait`),
  ADD KEY `idForfait` (`idForfait`);

--
-- Index pour la table `visiteur`
--
ALTER TABLE `visiteur`
  ADD PRIMARY KEY (`id`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `fichefrais`
--
ALTER TABLE `fichefrais`
  ADD CONSTRAINT `fichefrais_ibfk_1` FOREIGN KEY (`idVisiteur`) REFERENCES `visiteur` (`id`),
  ADD CONSTRAINT `fichefrais_ibfk_2` FOREIGN KEY (`idEtat`) REFERENCES `etat` (`id`);

--
-- Contraintes pour la table `lignefraisforfait`
--
ALTER TABLE `lignefraisforfait`
  ADD CONSTRAINT `lignefraisforfait_ibfk_1` FOREIGN KEY (`idFicheFrais`) REFERENCES `fichefrais` (`id`),
  ADD CONSTRAINT `lignefraisforfait_ibfk_2` FOREIGN KEY (`idForfait`) REFERENCES `forfait` (`id`);
COMMIT;
