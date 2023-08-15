-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 15, 2023 at 12:28 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projet`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `mail` varchar(500) NOT NULL,
  `sex` enum('f','m') DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `nom`, `prenom`, `mail`, `sex`, `password`) VALUES
(1, 'admin', 'admin', 'jm_bensalem@esi.dz', 'm', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `composition`
--

DROP TABLE IF EXISTS `composition`;
CREATE TABLE IF NOT EXISTS `composition` (
  `nom` varchar(100) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `quantite` int(50) NOT NULL,
  `unite` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`nom`,`titre`),
  KEY `titre` (`titre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `composition`
--

INSERT INTO `composition` (`nom`, `titre`, `quantite`, `unite`) VALUES
('semoul grosse', 'Kalb El Louz', 500, 'g'),
('beure', 'Kalb El Louz', 125, 'g'),
('sucre', 'Kalb El Louz', 200, 'g'),
('amande', 'Kalb El Louz', 30, 'g'),
('eau', 'Kalb El Louz', 1000, 'ml'),
('eau de fleur d\'oranger', 'Kalb El Louz', 7, 'ml'),
('sucre', 'Ktayef', 30, 'g'),
('amande', 'Ktayef', 150, 'g'),
('beur', 'Ktayef', 500, 'g'),
('miel', 'Ktayef', 300, 'g'),
('eau de fleur d\'oranger', 'Ktayef', 500, 'ml'),
('sucre', 'Baba', 125, 'g'),
('oeuf', 'Baba', 3, ''),
('farine', 'Baba', 125, 'g'),
('levure chimique', 'Baba', 50, 'g'),
('huile de tournesol', 'Baba', 70, 'g'),
('extrait de vanille', 'Baba', 5, 'g'),
('sucre', 'Basboussa', 400, 'g'),
('oeuf', 'Basboussa', 2, ''),
('lait', 'Basboussa', 220, 'ml'),
('farine', 'Basboussa', 500, 'g'),
('noix de coco', 'Basboussa', 100, 'g'),
('semoul moyenne', 'Basboussa', 500, 'g'),
('levure chimique', 'Basboussa', 50, 'g'),
('huile de tournesol', 'Basboussa', 220, 'ml'),
('eau de fleur d\'oranger', 'Cigar', 500, 'ml'),
('amande', 'Cigar', 125, 'g'),
('beur', 'Cigar', 500, 'g'),
('canelle', 'Cigar', 100, 'g'),
('sucre', 'Cigar', 400, 'g'),
('miel', 'Cigar', 500, 'g'),
('eau de fleur d\'oranger', 'Khobz Touness', 300, 'ml'),
('chapelure', 'Khobz Touness', 400, 'g'),
('amande', 'Khobz Touness', 500, 'g'),
('beur', 'Khobz Touness', 250, 'g'),
('levure chimique', 'Khobz Touness', 100, 'g'),
('sucre', 'Khobz Touness', 300, 'g'),
('oeuf', 'Khobz Touness', 4, ''),
('riz', 'Mhalbi', 100, 'g'),
('sucre', 'Mhalbi', 150, 'g'),
('lait', 'Mhalbi', 1000, 'ml'),
('eau de fleur', 'Mhalbi', 100, 'ml'),
('canelle', 'Mhalbi', 20, 'g'),
('farine', 'Les Tartelettes', 250, 'g'),
('beure', 'Les Tartelettes', 150, 'g'),
('sucre', 'Les Tartelettes', 100, 'g'),
('sel', 'Les Tartelettes', 2, 'g'),
('oeuf', 'Les Tartelettes', 1, ''),
('extrait de vanille', 'Les Tartelettes', 1, 'g'),
('biscuits', 'Tiramisu', 20, 'g'),
('beure', 'Tiramisu', 150, 'g'),
('sucre', 'Tiramisu', 100, 'g'),
('cacao', 'Tiramisu', 100, 'g'),
('oeuf', 'Tiramisu', 3, ''),
('cafe', 'Tiramisu', 100, 'g'),
('biscuits', 'Zlabia', 20, 'g'),
('beure', 'Zlabia', 150, 'g'),
('farine', 'Zlabia', 250, 'g'),
('eau', 'Zlabia', 25, 'ml'),
('levure chimique', 'Zlabia', 6, 'g'),
('cafe', 'Zlabia', 100, 'g'),
('safran', 'Zlabia', 2, 'g'),
('miel', 'Zlabia', 100, 'g'),
('sucre', 'Zlabia', 150, 'g'),
('huile de tournesol', 'Zlabia', 1000, 'ml'),
('pommes de terre', 'Batata Flieu', 1000, 'g'),
('ail', 'Batata Flieu', 60, 'g'),
('pouliot', 'Batata Flieu', 400, 'g'),
('paprika', 'Batata Flieu', 40, 'g'),
('levure chimique', 'Batata Flieu', 6, 'g'),
('poivre', 'Batata Flieu', 300, 'g'),
('huile de tournesol', 'Batata Flieu', 50, 'ml'),
('oeuf', 'Batata Flieu', 1, ''),
('eau', 'Batata Flieu', 500, 'ml'),
('tomate', 'Chakchouka', 1000, 'g'),
('ail', 'Chakchouka', 60, 'g'),
('sel', 'Chakchouka', 5, 'g'),
('oeuf', 'Chakchouka', 4, ''),
('oignon', 'Chakchouka', 300, 'g'),
('poivron', 'Chakchouka', 500, 'g'),
('poivre', 'Chakchouka', 50, 'g'),
('huile de tournesol', 'Chakchouka', 50, 'ml'),
('courgette', 'Gratin Courgette', 1000, 'g'),
('oeuf', 'Gratin Courgette', 3, 'g'),
('gruyère', 'Gratin Courgette', 100, 'g'),
('sel', 'Gratin Courgette', 5, 'g'),
('creme fraiche', 'Gratin Courgette', 250, 'g'),
('beure', 'Gratin Courgette', 50, 'g'),
('poivre', 'Gratin Courgette', 50, 'g'),
('couscous', 'Hamama', 500, 'g'),
('lavande', 'Hamama', 300, 'g'),
('huile de tournesol', 'Hamama', 200, 'ml'),
('sel', 'Hamama', 15, 'g'),
('cheveux d\'ange', 'Ktayef', 400, 'g'),
('viande', 'Makaroun bel turk', 300, 'g'),
('pasta', 'Makaroun bel turk', 500, 'g'),
('oeuf', 'Makaroun bel turk', 4, ''),
('oignon', 'Makaroun bel turk', 400, 'g'),
('sel', 'Makaroun bel turk', 2, 'g'),
('huile de tournesol', 'Makaroun bel turk', 100, 'ml'),
('rechta', 'Rachta', 500, 'g'),
('beure', 'Rachta', 100, 'g'),
('poulet', 'Rachta', 1000, 'g'),
('canelle', 'Rachta', 10, 'g'),
('courgette', 'Rachta', 200, 'g'),
('eau de fleur d\'oranger', 'Rachta', 200, 'g'),
('poivre', 'Rachta', 10, 'g'),
('pois chiche', 'Rachta', 300, 'g'),
('artichauts', 'Tbikha', 6, ''),
('feves', 'Tbikha', 500, 'g'),
('pois', 'Tbikha', 500, 'g'),
('piment', 'Tbikha', 10, 'g');

-- --------------------------------------------------------

--
-- Table structure for table `etape`
--

DROP TABLE IF EXISTS `etape`;
CREATE TABLE IF NOT EXISTS `etape` (
  `ordre` tinyint(4) NOT NULL,
  `titreRecette` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `healthy` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`titreRecette`,`ordre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `etape`
--

INSERT INTO `etape` (`ordre`, `titreRecette`, `description`, `healthy`) VALUES
(1, 'Kalb El Louz', 'Mélangez la semoule, le beurre et le sucre. Bien sabler avec les mains', 0),
(2, 'Kalb El Louz', 'Lancez la cuisson du sirop : Dans une grande casserole, mettre l’eau, le sucre . Portez à ébullition pendant 15 minutes', 0),
(3, 'Kalb El Louz', 'Beurrez un moule de 24 cm et mettez-y votre', 0),
(4, 'Kalb El Louz', 'Découpez à l’aide d’un couteau des carrés ou losanges et Piquez les carrés avec les amandes entières', 0),
(5, 'Kalb El Louz', 'Enfournez dans un four préchauffé à 200°c pendant 1 heure, en tournant le plateau de temps en temps', 0),
(6, 'Kalb El Louz', 'Dés sa sortie du four, arrosez avec le sirop', 0),
(1, 'Ktayef', 'Mélanger les amandes en poudre avec le sucre et un peu d\'eau de fleur d\'oranger', 0),
(2, 'Ktayef', 'Badigeonner généreusement de smen fondu le fond d\'un moule rond, pas trop profond', 0),
(3, 'Ktayef', 'Ouvrir un peu avec les doigts, les deux boules de ktayef pour les aérer.', 0),
(4, 'Ktayef', 'Saupoudrer les amandes en couche sur toute la surface et Arroser d\'eau de fleur d\'oranger, saupoudrer de cannelle et recouvrir avec la seconde couche de ktayef.', 0),
(5, 'Ktayef', 'Tasser encore un peu et arranger les bords avant d\'arroser de smen et Mettre au four 5-6 mn pour que la galette se tienne, puis la sortir et la retourner sur une assiette.', 0),
(6, 'Ktayef', 'Badigeonner encore une fois le fond du moule', 0),
(7, 'Ktayef', 'Remettre au four et laisser cuire, à four moyen. Entre temps, péparer un sirop et Sortir la galette du four quand elle a une jolie couleur dorée', 0),
(8, 'Ktayef', 'Remettre au four et laisser cuire, à four moyen. Entre temps, péparer un sirop', 0),
(9, 'Ktayef', 'Arroser la galette du mélange sirop/miel et la laisser 1h avant de la retourner. Laisser encore 1h pour qu\'elle s\'imprègne bien de miel, avant de la découper en carrés de la même taille et de la déguster.', 0),
(1, 'Baba', 'Préchauffez le four à 170°C', 0),
(2, 'Baba', 'Commencez par fouetter le sucre, les oeufs entiers et la vanille avec un batteur, le mélange doit doubler de volume et être bien mousseux', 0),
(3, 'Baba', 'Ajoutez l\'huile (ou du beurre fondu) et fouettez encore 1 minute', 0),
(4, 'Baba', 'Tamiser la farine, le sel et le levure chimique et mélangez délicatement avec une spatule', 0),
(5, 'Baba', 'Versez dans un moule à baba beurré ou dans des moules à muffin pour une version individuelle', 0),
(6, 'Baba', 'Enfournez pour 35-40 minutes à 170°C pour la version familiale, et 20 minutes pour les muffins', 0),
(7, 'Baba', 'Préparez le sirop 15 minutes avant la fin de la cuisson : faites un caramel dans une casserole chaude en mettant le sucre à fondre. Dès qu\'il prend une jolie couleur ambrée, retirer du feu. Ajoutez alors l\'eau bouillante en faisant très attention aux éclaboussures, et remettez sur le feu pour que le caramel fonde bien.', 0),
(1, 'Basboussa', 'On commence par préparer le sirop pour avoir le temps de tiédir. Mélanger l\'eau et le sucre dans une casserole, la mettre sur le feu puis laisser frémir une quinzaine de minutes, éteindre le feu pour enfin introduire l\'eau de fleur d\'oranger.', 0),
(2, 'Basboussa', 'Dans un saladier mélanger les ingrédients secs, à savoir, farine, semoule, levure, noix de coco et sucre.', 0),
(3, 'Basboussa', 'Dans un autre saladier, mélanger les oeufs, le lait et l\'huile, les introduire dans le premier mélange.', 0),
(4, 'Basboussa', 'Verser ce mélange dans un plat rectangulaire, le faire cuire au four à 180°C (350° F), la pointe d\'un couteau doit en ressortir sèche.', 0),
(5, 'Basboussa', 'Dès sa sortie du four, verser le sirop qui doit être impérativement tiède et laisser le gâteau absorber.', 0),
(6, 'Basboussa', 'Laissez le gâteau refroidir avant de le découper sinon il s\'effrite.', 0),
(1, 'Cigar', 'Dans un saladier, mélanger les amandes, cannelle, le sucre.', 0),
(2, 'Cigar', 'Ajouter l\'eau de fleur d\'oranger et le beurre fondu.', 0),
(3, 'Cigar', 'Travailler bien jusqu’à obtenir une pâte maniable.', 0),
(4, 'Cigar', 'Prélever de petites boules de pâte d\'amande, les rouler entre les mains pour former un bâtonnet, les déposer dans les feuilles de brick.', 0),
(5, 'Cigar', 'Rouler les feuilles de brick pour former des cigares ou façonner des Briouates et Chauffer une petite quantité d\'huile et aussi le miel additionné d\'une c-a-soupe d\'eau de fleur d\'oranger.', 0),
(6, 'Cigar', 'Plonger les cigares dans l\'huile chaude jusqu’à obtenir une couleur dorée (les faire dorer de tous les cotés ).', 0),
(7, 'Cigar', 'Les égoutter dans une passoire et les plonger dans un miel chauffé.', 0),
(1, 'Khobz Touness', 'Commencez par préparer le sirop, faites bouillir le sucre avec l\'eau pendant presque 10 minutes, à la fin de cuisson, ajoutez l\'eau de fleur d\'oranger et retirez du feu..', 0),
(2, 'Khobz Touness', 'pour préparer le gâteau, mélangez tous les ingrédients de la pate.', 0),
(3, 'Khobz Touness', 'versez la pate dans un moule de presque 30 cm de diamètre, sinon dans des moules individuels', 0),
(4, 'Khobz Touness', 'faites cuire dans un four préchauffé à 180 C, jusqu’à ce que le gâteau prenne une belle couleur et que la pointe de couteau insérée dedans ressorte bien sèche', 0),
(5, 'Khobz Touness', 'à la sortie du gateau du four, coupez des carrés ou des losanges et arrosez de sirop toujours dans le moule, laissez bien absorber tout le sirop avant de présenter dans des caissettes si vous avez envie.', 0),
(1, 'Mhalbi', 'Moulez le riz avec le moulin à café et Versez le lait dans une casserole', 0),
(2, 'Mhalbi', 'Ajoutez le sucre et les farines de riz obtenues', 0),
(3, 'Mhalbi', 'Mettez sur feu douxMélangez en continu à l\'aide d\'une cuillère en bois, ( une trentaine de minutes à peut près )', 0),
(4, 'Mhalbi', 'Retirez du feu et ajoutez la fleur d\'oranger et Mélangez bien', 0),
(5, 'Mhalbi', 'Versez la préparation dans des ramequins ou des verrines Lissez la surface à l\'aide du dos d\'une petite cuillère', 0),
(1, 'Les Tartelettes', 'Tamisez d’abord la farine dans un grand saladier, ajoutez en dessus le beurre et mélangez le tout à la main pour avoir une chapelure,Ensuite versez en dessus l’eau et mélangez pour avoir une pâte – n’hésitez pas d’ajouter plus d’eau froide.', 0),
(2, 'Les Tartelettes', 'Formez une boule avec votre pâte, filmez-la puis mettez-la au frigo pour une durée de 30 minutes', 0),
(3, 'Les Tartelettes', 'Faites d’abord chauffer le lait dans une casserole à feu bas – ne pas porter à ébullition,Pendant ce temps fouettez les jaunes d’oeufs avec le sucre dans un saladier puis tamisez en dessus la farine et mélangez le tout', 0),
(4, 'Les Tartelettes', 'Après ajoutez le lait chaud lentement au mélange tout en fouettant puis Remettez votre mélange dans la casserole puis portez doucement à ébullition en fouettant continuellement jusqu’à ce qu’il soit épais et crémeux et Retirez la casserole du feu et laissez-la refroidir', 0),
(5, 'Les Tartelettes', 'Chauffez votre four à 180° et beurrez vos moules à mini tartes et Farinez un plan de travail, abaissez votre pâte avec le rouleau, étalez-la dans les moules et piquez le fond avec une fourchette', 0),
(6, 'Les Tartelettes', 'Ensuite déposez en dessus des morceaux de papier sulfurisé avec un poids – haricots secs – et mettez au four pour 12 minutes', 0),
(7, 'Les Tartelettes', 'Après retirez les haricots et le papier sulfurisé puis remettez au four pour une autre cuisson de 12 minutes, jusqu’à ce que la pâte soit dorée.', 0),
(8, 'Les Tartelettes', 'Une fois votre pâte est cuite laissez-les refroidir complètement.et remplissez-les avec la crème pâtissière et lissez la surface avec une cuillère ou une spatule.', 0),
(9, 'Les Tartelettes', 'Ensuite disposez en dessus votre sélection de tranches de fruits. et Enfin voila votre mini tartelette aux fruits, servez et bon appétit à tous', 0),
(1, 'Tiramisu', 'Fouettez vivement 3 jaunes d \'œufs avec le sucre glace jusqu\'à ce que le mélange blanchisse et devienne mousseux.Ajoutez ensuite le mascarpone puis mélangez jusqu \'à ce que le résultat soit bien homogène.', 0),
(2, 'Tiramisu', 'Montez 3 blancs en neige ferme en y ajoutant une pincée de sel,\r\npuis mélangez - les à la crème au mascarpone.Attention,\r\npour garder un mélange bien mousseux et léger,\r\nles blancs ne doivent pas être \"cassés\".Mélangez délicatement de haut en bas avec une spatule en silicone en tournant votre récipient d \'un quart de tour à chaque fois.', 0),
(3, 'Tiramisu', 'Préparez une grande tasse de café fort,\r\nde préférence un expresso.Ajoutez - y l \'Amaretto, un alcool italien à l\' amande qui parfumera incroyablement votre dessert,\r\npuis mélangez.', 0),
(4, 'Tiramisu', 'Coupez le bout des biscuits afin qu \'ils adhèrent parfaitement à la paroi de votre plat. Utilisez les bouts pour compléter les trous au centre de votre tiramisu. Étalez une couche de crème au mascarpone au fond du plat, puis placez une couche de biscuits légèrement imbibés de café à l\' Amaretto.', 0),
(1, 'Zlabia', 'Mélanger la farine et la levure, puis verser l\'eau et bien mélanger de nouveau pour obtenir une pâte lisse. Filmer cette pâte au contact et la laisser reposer au frais pendant 1 h.Retirer délicatement le film, puis mélanger l’appareil et ajouter le safran. Remettre ensuite un film au contact et laisser de nouveau reposer durant 1 h', 0),
(2, 'Zlabia', 'Mettre l\'eau et le sucre à bouillir dans une casserole, puis cuire pendant 5 min. Ajouter ensuite le miel et l\'eau de fleur d\'oranger, puis laisser tiédir.', 0),
(3, 'Zlabia', 'Préchauffer une friteuse à 180 °C.\r\nRetirer le film de la pâte et placer celle-ci dans une poche à douille. Former ensuite des spirales de pâte (en partant de l’extérieur) directement dans l\'huile chaude et les laisser cuire jusqu\'à obtenir une légère coloration. Égoutter les zlabias sur une plaque garnie de papier absorbant, puis les plonger dans le sirop tiède et les déposer sur une petite grille.', 0),
(1, 'Batata Flieu', 'Dans un fait-tout, faites chauffer l’huile et l’ail écrasé, rajoutez les pommes de terre épluchées et coupées en quartiers ou en rondelles.Ajoutez le paprika, le poivre, salez.', 1),
(2, 'Batata Flieu', 'Incorporez la moitié du pouliot haché ou laissez les feuilles entières (selon goût) et faites revenir quelques instants jusqu’à ce que les pommes de terre commencent à romollir.', 1),
(3, 'Batata Flieu', 'Arrosez d’eau (pas trop car à la fin la sauce doit être réduite) et laissez cuire à couvert.Juste avant la fin de cuisson, introduisez le reste de pouliot.Récupérez une louche de sauce, laissez refroidir.', 1),
(4, 'Batata Flieu', 'Dès que le plat est prêt diluez le jaune d’oeuf dans la louche de sauce refroidie, versez sur les pommes de terre.Remuer et cuire encore quelques secondes et ce afin de lier la sauce, mais vous pouvez ne pas le rajouter et servir ainsi vos pommes de terre.', 1),
(1, 'Chakchouka', 'Émincer l\'oignon et écraser l\'ail au presse ail. Faire cuire 15 minutes avec l\'huile et une cuillère à soupe d\'eau.', 1),
(2, 'Chakchouka', 'Plonger les tomates dans une casserole d\'eau bouillante pendant 15 secondes et les sortir. Les éplucher, les couper en 6 et retirer la pulpe.', 1),
(3, 'Chakchouka', 'Éplucher les poivrons en les plaçant 15 minutes sous le grill du four. Les nettoyer et les couper en petites lamelles.', 1),
(4, 'Chakchouka', 'Ajouter les tomates et les poivrons dans la cocotte, saler et poivrer. Laisser mijoter environ 30 minutes.', 1),
(5, 'Chakchouka', 'Au moment de servir, casser les oeufs sur les légumes et laisser cuire quelques minutes.', 1),
(1, 'Gratin Courgette', 'Lavez les courgettes sans les éplucher.Essuyez - les et coupez - les en rondelles de 1 cm ou en gros cubes.', 1),
(2, 'Gratin Courgette', 'Faites - les cuire 15 à 18 minutes dans 3 litres d \'eau bouillante salée. Égouttez dans une passoire et pressez-les avec une écumoire pour extraire le trop plein d\' eau.', 1),
(3, 'Gratin Courgette', 'Versez les courgettes dans un plat à gratin beurré.Hachez - les grossièrement à la fourchette.', 1),
(4, 'Gratin Courgette', 'Dans un saladier,battez les oeufs en omelette,ajoutez la crème,le gruyère râpé,le sel,le poivre et saupoudrez de muscade râpée.', 1),
(1, 'Hamama', 'Piler les fleurs de lavande et les feuilles des  autres herbes, bien lavez. Égoutter les de leur eau, et passer au mixeur.', 1),
(2, 'Hamama', 'Mettre dans une bassine, couvrir d\'eau, et laisser infuser toutes la nuit. Au matin presser les herbe. Réserver l\'eau.', 1),
(3, 'Hamama', 'Dans une Djefna mettre une quantité de semoule, ajouter une poignée du mélange herbes et commencer à rouler pour former les petites graines du couscous, mouiller un peu avec l\'eau réserver.', 1),
(4, 'Hamama', 'Passer une première fois au tamis  2-3 mm de diamètre.', 1),
(5, 'Hamama', 'Frotter les graines du couscous avec les deux paumes de la mains, passer une 2ème fois dans un tamis, diamètre plus petits, Réserver de coté.', 1),
(6, 'Hamama', 'recommencer les opérations 3-4-5 jusqu\'à épuisement de la semoule et des herbes. huiler à l\'huile.', 1),
(7, 'Hamama', 'remplir le bas du couscoussier (kadra) avec l\'eau réserver,  mettre sur le feu, à ébullition, mettre le couscoussier rempli de couscous au dessus et faire cuire à la vapeur. Recommencer 4 fois l\'opération.', 1),
(8, 'Hamama', 'Une fois terminer, huiler à l\'huile et servie avec du sucre cristallisé, sucre glace, du lait caillé ou du petit lait.', 1),
(1, 'Makaroun bel turk', 'Faire cuire les pâtes dans de l\'eau salée, égoutter, rincer a l\'eau froide puis égoutter a nouveau.', 0),
(2, 'Makaroun bel turk', 'Faire revenir l\'oignon émincé dans l\'huile. Ajouter la viande hachée. Assaisonner et laisser cuire.', 0),
(3, 'Makaroun bel turk', 'Préparer une omelettes avec les oeufs , puis couper-la en petit morceaux.', 0),
(4, 'Makaroun bel turk', 'Ajouter l\'omelette sur la viande et incorporer les pâtes.', 0),
(1, 'Tbikha', 'ecossez les feves et les petits pois. Nettoyez les artichauts, ne conserver que les fonds, laissez-les tremper dans une eau citronnee afin quil ne noircissent pas.', NULL),
(2, 'Tbikha', 'Dans un faitout, chauffez lâ€™huile, ajoutez lâ€™ail Ã©crasÃ© avec les Ã©pices, puis faites revenir 3 minutes en remuant.', NULL),
(3, 'Tbikha', 'Ajoutez le concentrÃ© de tomates diluÃ© dans un peu dâ€™eau puis les fÃ¨ves, faites revenir 3 minutes, incorporez ensuite les petits pois et les fonds dâ€™artichauts entiers ou coupÃ©s en 4, selon goÃ»t', NULL),
(4, 'Tbikha', 'Faites revenir lâ€™ensemble des lÃ©gumes, puis arrosez dâ€™eau (pas trop) et faites cuire Ã  couvert environ 35 minutes (voire plus).Une fois les lÃ©gumes cuits, la sauce doit Ãªtre rÃ©duite, versez le riz et terminez la cuisson. Parsemez de coriandre ou de persil hachÃ©s.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
CREATE TABLE IF NOT EXISTS `ingredient` (
  `nom` varchar(100) NOT NULL,
  `healthy` bit(1) NOT NULL,
  `saison` set('Hiver','Printemps','Ete','Automne') DEFAULT NULL,
  `calorie` float(6,2) DEFAULT NULL,
  `protein` float(6,2) DEFAULT NULL,
  `fibre` float(6,2) DEFAULT NULL,
  `carb` float(6,2) DEFAULT NULL,
  `leau` int(50) DEFAULT NULL,
  `sucre` float(6,2) DEFAULT NULL,
  `sodium` float(6,2) DEFAULT NULL,
  `Fer` float(6,5) DEFAULT NULL,
  `Potassium` float(6,5) DEFAULT NULL,
  `Phosphore` float(6,5) DEFAULT NULL,
  `Magnsium` float(6,5) DEFAULT NULL,
  `Zinc` float(6,5) DEFAULT NULL,
  PRIMARY KEY (`nom`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`nom`, `healthy`, `saison`, `calorie`, `protein`, `fibre`, `carb`, `leau`, `sucre`, `sodium`, `Fer`, `Potassium`, `Phosphore`, `Magnsium`, `Zinc`) VALUES
('semoule grosse', b'1', 'Hiver,Printemps,Ete,Automne', 120.00, 3.75, 1.90, 0.80, 0, 0.00, 1.00, 1.00000, 0.09600, 0.06200, 0.06200, 0.04500),
('beure', b'0', 'Hiver,Printemps,Ete,Automne', 102.00, 0.12, 0.00, 0.01, 0, 16.00, 0.01, 0.00200, 0.00000, 0.00000, 0.00000, 0.00000),
('sucre', b'0', 'Hiver,Printemps,Ete,Automne', 387.00, 0.00, 0.00, 100.00, 0, 99.91, 0.00, 0.00000, 0.00200, 0.00000, 0.00000, 0.00000),
('amande', b'1', 'Hiver,Printemps,Ete,Automne', 600.00, 22.60, 12.50, 100.00, 0, 4.40, 0.00, 0.00000, 0.73300, 0.00000, 0.00000, 0.00000),
('eau', b'1', 'Hiver,Printemps,Ete,Automne', 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.01, 0.00000, 0.00000, 0.00000, 0.00100, 0.00100),
('eau de fleur d\'oranger', b'1', 'Hiver,Printemps,Ete,Automne', 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00000, 0.00000, 0.00000, 0.00000, 0.00000),
('cheveux d\'ange', b'0', 'Hiver,Printemps,Ete,Automne', 365.00, 12.00, 3.00, 2.00, 0, 3.50, 0.00, 0.20000, 0.00000, 0.00000, 0.00000, 0.00000),
('miel', b'0', 'Hiver,Printemps,Ete,Automne', 1229.00, 0.40, 0.00, 76.40, 18, 70.00, 0.00, 0.20000, 0.05200, 0.00000, 0.00000, 0.00700),
('farine', b'1', 'Hiver,Printemps,Ete,Automne', 343.00, 70.00, 4.00, 95.00, 14, 70.00, 0.00, 0.00100, 0.10700, 0.00000, 0.00000, 0.00100),
('oeuf', b'1', 'Hiver,Printemps,Ete,Automne', 75.00, 7.00, 4.00, 1.10, 74, 0.50, 0.12, 0.00100, 0.12600, 0.00000, 0.02000, 0.00100),
('levure chimique', b'0', 'Hiver,Printemps,Ete,Automne', 53.00, 0.00, 0.00, 0.00, 0, 0.00, 10.60, 0.01100, 0.02000, 0.00000, 0.27000, 0.00000),
('huile de tournesol', b'0', 'Hiver,Printemps,Ete,Automne', 884.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00000, 0.00000, 0.00000, 0.00000, 0.00000),
('extrait de vanille', b'0', 'Hiver,Printemps,Ete,Automne', 288.00, 0.10, 0.00, 0.00, 0, 0.00, 0.01, 0.00000, 0.14800, 0.00000, 0.01200, 0.00000),
('sel', b'1', 'Hiver,Printemps,Ete,Automne', 288.00, 0.10, 0.00, 0.00, 0, 0.00, 38.76, 0.00100, 0.02300, 0.00000, 0.02900, 0.00000),
('semoule moyenne', b'1', 'Hiver,Printemps,Ete,Automne', 120.00, 3.75, 1.90, 0.80, 0, 0.00, 1.00, 1.00000, 0.09600, 0.06200, 0.06200, 0.04500),
('noix de coco', b'1', 'Hiver,Printemps,Ete,Automne', 365.00, 3.33, 9.00, 6.22, 47, 0.00, 0.00, 0.00200, 0.36500, 0.11300, 0.03200, 0.00100),
('lait', b'1', 'Hiver,Printemps,Ete,Automne', 152.00, 8.00, 0.00, 12.00, 88, 5.00, 0.04, 0.00200, 0.15000, 0.00000, 0.00000, 0.00000),
('canelle', b'1', 'Hiver,Printemps,Ete,Automne', 247.00, 4.00, 1.30, 16.00, 10, 0.00, 0.01, 0.00200, 0.43600, 0.00000, 0.06000, 0.00000),
('feuilles de bricks', b'0', 'Hiver,Printemps,Ete,Automne', 51.00, 1.41, 0.40, 16.00, 30, 0.04, 0.01, 0.00200, 0.04000, 0.00000, 0.06000, 0.00000),
('citron', b'1', 'Hiver,Printemps', 0.00, 29.00, 0.50, 9.00, 91, 0.00, 0.00, 0.06000, 0.13800, 0.00100, 0.00100, 0.06000),
('chapelure', b'1', 'Hiver,Printemps,Ete,Automne', 395.00, 5.00, 13.00, 72.00, 5, 6.00, 0.19, 0.00000, 0.19300, 0.19600, 0.00000, 0.00000),
('riz', b'1', 'Hiver,Printemps,Ete,Automne', 130.00, 2.70, 0.40, 28.00, 68, 0.10, 0.00, 0.00000, 0.03500, 0.16200, 0.01200, 0.01300),
('pomme', b'1', 'Ete', 55.00, 0.30, 2.40, 14.00, 86, 10.00, 0.00, 0.00100, 0.10700, 0.02000, 0.00500, 0.00000),
('cafe', b'1', 'Hiver,Printemps,Ete,Automne', 5.00, 0.30, 0.00, 0.00, 13, 0.00, 0.01, 0.00100, 0.00700, 0.02000, 0.00500, 0.00100),
('fromage blanc', b'1', 'Hiver,Printemps,Ete,Automne', 98.00, 11.00, 0.42, 320.00, 50, 0.00, 0.36, 0.00100, 0.00700, 0.02000, 0.00800, 0.00400),
('biscuits', b'1', 'Hiver,Printemps,Ete,Automne', 353.00, 7.00, 0.01, 45.00, 32, 14.00, 0.58, 0.00900, 0.12100, 0.02000, 0.00800, 0.00400),
('cacao', b'1', 'Hiver,Printemps,Ete,Automne', 353.00, 22.40, 22.90, 45.00, 32, 14.00, 0.58, 0.04800, 3.90000, 0.96000, 0.50000, 0.01300),
('safran', b'1', 'Hiver,Printemps,Ete,Automne', 352.00, 11.40, 3.90, 0.00, 11, 14.00, 0.12, 0.01100, 1.72000, 0.25000, 0.26400, 0.00100),
('pommes de terre', b'1', 'Hiver,Printemps,Ete,Automne', 77.00, 4.60, 2.20, 79.00, 1, 0.03, 0.02, 0.21100, 0.53000, 0.55000, 0.02300, 0.01800),
('ail', b'1', 'Hiver,Printemps,Ete,Automne', 111.00, 0.30, 0.20, 1.00, 59, 0.00, 0.00, 0.00000, 0.03600, 0.13000, 0.02500, 0.00000),
('pouliot', b'1', 'Hiver', -1.00, -2.00, -2.00, -1.00, -1, -1.00, -2.00, -1.00000, -2.00000, -2.00000, -2.00000, -1.00000),
('paprika', b'1', 'Hiver,Printemps,Ete,Automne', 282.00, 14.00, 35.00, 54.00, 6, 0.00, 0.07, 0.02100, 2.22000, 0.02700, 0.17800, 0.00400),
('poivre', b'1', 'Hiver,Printemps,Ete,Automne', 20.00, 0.90, 2.00, 4.60, 6, 56.00, 2.40, 0.09000, 0.00200, 0.00700, 0.01800, 0.00000),
('tomate', b'1', 'Ete', 18.00, 0.90, 1.00, 4.00, 95, 2.00, 2.40, 0.00600, 0.00300, 0.29200, 0.01100, 0.00000),
('oignon', b'1', 'Hiver,Printemps,Ete,Automne', 40.00, 1.10, 1.70, 4.00, 97, 0.00, 2.40, 0.00600, 0.00300, 0.29200, 0.01100, 0.00000),
('poivron', b'1', 'Hiver,Printemps,Ete,Automne', 20.00, 0.90, 1.70, 4.00, 91, 0.00, 0.00, 0.00600, 0.13000, 0.20200, 0.00100, 0.00100),
('courgette', b'1', 'Ete,Automne', 17.00, 1.20, 1.00, 3.10, 95, 0.00, 0.00, 0.00800, 0.00300, 0.00200, 0.01800, 0.00000),
('gruyère', b'0', 'Hiver,Printemps,Ete,Automne', 413.00, 30.00, 0.00, 0.40, 33, 0.40, 0.34, 0.20000, 0.08100, 0.60600, 0.03600, 0.00500),
('creme fraiche', b'0', 'Hiver,Printemps,Ete,Automne', 149.00, 2.56, 0.02, 2.89, 55, 15.40, 0.01, 0.00200, 0.00100, 0.00600, 0.00000, 0.00000),
('couscous', b'1', 'Hiver,Printemps,Ete,Automne', 112.00, 3.80, 1.40, 23.00, 34, 55.19, 15.40, 0.00000, 0.09600, 0.06200, 0.01600, 0.00000),
('lavande', b'1', 'Printemps', -1.00, -1.00, -1.00, -1.00, -1, -1.00, -1.00, -1.00000, -1.00000, -1.00000, -1.00000, -1.00000),
('viande', b'0', 'Hiver,Printemps,Ete,Automne', 155.00, 35.00, 3.00, 42.00, 66, 0.02, 0.00, 0.00200, 0.00000, 0.00000, 0.00000, 0.00000),
('pasta', b'0', 'Hiver,Printemps,Ete,Automne', 300.00, 10.00, 31.00, 23.00, 75, 0.10, 0.00, 0.00000, 0.00000, 0.00000, 0.00000, 0.00000),
('poulet', b'1', 'Hiver,Printemps,Ete,Automne', 240.00, 27.00, 0.00, 0.00, 30, 0.00, 0.00, 0.00000, 0.00000, 0.00000, 0.00000, 0.00000),
('rechta', b'0', 'Hiver,Printemps,Ete,Automne', 350.00, 9.00, 0.00, 63.00, 40, 0.00, 0.00, 0.00000, 0.00000, 0.01000, 0.00000, 0.00200),
('pois chiche', b'0', 'Hiver,Printemps,Ete,Automne', 364.00, 19.00, 0.00, 23.00, 40, 1.00, 0.02, 0.00100, 0.00000, 0.01000, 0.00100, 0.00000),
('piment', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('test', b'0', 'Hiver', 0.00, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00000, 0.00000, 0.00000, 0.00000, 0.00000),
('cumin', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('artichauts', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('feves', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('pois', b'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `titre` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `video` varchar(500) NOT NULL,
  `description` mediumtext NOT NULL,
  `paragraph` longtext,
  `author` int(11) DEFAULT NULL,
  `publishdate` date DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`titre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`titre`, `image`, `video`, `description`, `paragraph`, `author`, `publishdate`, `display`) VALUES
('Danger Glutamate de sodium', 'media/images/news/SODIUM.jpg', 'media/videos/news/sodium.mp4', 'Le glutamate monosodique, un additif alimentaire contenant une très forte teneur en sel est dangereux,', 'Le glutamate de sodium ou glutamate monosodique, également immatriculé E621, est un renforçateur de goût au cœur des préoccupations. C’est le plus controversé des additifs. Peut-on le consommer sans risque ?Cet exhausteur de goût d’origine synthétique a la particularité de conférer aux aliments une saveur salée caractéristique. Il est associé au fameux « syndrome du restaurant chinois » décrit comme un ensemble de symptômes qui apparaissent quelques minutes après son ingestion chez certaines personnes.\r\nCitons des maux de tête, des bouffées de chaleur, le visage rougit, des palpitations cardiaques, des nausées… Les manifestations, qui peuvent être spectaculaires, font la mauvaise réputation du glutamate mais elles sont en réalité sans gravité.D’origine végétale ou animale, il peut également être issu d’OGM. Il se présente sous la forme d’une poudre blanche.\r\n\r\nDans l’organisme, il joue le rôle de neurotransmetteur en permettant aux cellules nerveuses (neurones) de communiquer entre elles. Il est contenu naturellement dans beaucoup d’aliments comme la pomme de terre ou la tomate. C’est la surconsommation de tous les produits qui contiennent du glutamate qui fait le poison.Les glutamates sont très controversés de par leur potentielle neurotoxicité, leur lien avec des maladies neurodégénératives (maladie d’Alzheimer et maladie de Parkinson). En effet, il serait responsable de la destruction de cellules nerveuses en les surexcitant et d’aggravation des troubles neurologiques existants. Beaucoup d’informations circulent au sujet de ce composé.Le glutamate de sodium est largement utilisé dans les produits alimentaires industriels mais pas en alimentation infantile. Il est partout donc on en absorbe en grande quantité.', 0, '2023-01-13', 1),
('Retour du Chef Hichem', 'media/images/news/HICHEM.jpg', '', 'Hicham Cook est un chef cuisinier très connu an Algérie. Il a bâti sa notoriété en partageant ses délicieuses recettes 100% halal sur les réseaux sociaux', 'Ce fut terrible pour Hicham Cook d’avoir vu son restaurant totalement brulé le 22 juin dernier dans la commune de Ouled Fayet. Il l’a inauguré il y a tout juste 3 mois avec toute son équipe. En voyant les pompiers mettre du temps pour arriver, il a demandé l’aide de ses fans en faisant un live, pour partager l’incident et attirer l’attention des autorités compétentes. Ses abonnés ont vite relayé l’information malgré tout, le feu a mis du temps à s’éteindre. Il a quand même tout perdu.Malgré l’épreuve qu’il a subi, il a voulu remercier ses followers pour l’aide qu’ils lui ont apporté. Une fois le feu éteint, il a organisé un gigantesque barbecue gratuit qui a réuni toutes les personnes qui l’ont soutenu. En effet, plusieurs volontaires sont venus sur place pour lui prêter main forte. Ce moment pénible a donné suite à une fête conviviale et chaleureuse. Cela lui a bien sûr remonté le moral et lui a donné du courage pour affronter la suite.Devant le soutien de tous ses abonnés et aussi grâce à son talent reconnu, Hicham Cook annonce qu’il ouvrira un nouveau restaurant. Beaucoup seraient anéantis après avoir vu tous leurs efforts partir en fumée du jour au lendemain. Mais jour après jour, avec son équipe, ils remettent de l’ordre dans les décombres et nettoient les lieux avec sourire et confiance. Par ailleurs, il continue à poster des vidéos de ses recettes de cuisine. Ses admirateurs offrent tous de lui apporter leur aide dans la construction de son prochain restaurant.', 0, '2023-01-18', 1),
('Vente Viande Chat', 'media/images/news/CHAT.PNG', 'https://www.lexpress.fr/styles/plaisirs/saveurs/video-vietnam-le-chat-plat-de-gourmets_1562351.html', 'Vente viande de chat â€“ Alger : les autoritÃ©s prennent des mesures', 'Via un communiquÃ© rendu public aujourdâ€™hui, repris par lâ€™APOCE, lâ€™APC de GuÃ© de Constantine a mis en garde contre la vente de la viande des chats comme Ã©tant celle du lapin. En effet, plusieurs boucheries dans cette commune ont eu recours Ã  cette pratique frauduleuse en vue dâ€™induire les consommateurs en erreur. De ce fait, lâ€™association de la protection des consommateurs algÃ©riens a lancÃ© une alerte sur sa page Facebook officielle. \r\n\r\nEn fait, lâ€™AlgÃ©rie a connu dÃ©jÃ  ce genre de pratiques. Dans le dÃ©tail, des vendeurs malhonnÃªtes ont commercialisÃ© la viande de lâ€™Ã¢ne en tant que celle de lâ€™agneau. Ã€ vrai dire cette mauvaise nouvelle a fait lâ€™effet dâ€™une bombe sur la toile. En effet, derniÃ¨rement le manque dâ€™hygiÃ¨ne au niveau des fast-food et mÃªme des boucheries a fait couler beaucoup dâ€™encre.', NULL, '2023-01-20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `preference`
--

DROP TABLE IF EXISTS `preference`;
CREATE TABLE IF NOT EXISTS `preference` (
  `titre` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`titre`),
  KEY `titre` (`titre`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preference`
--

INSERT INTO `preference` (`titre`, `id`) VALUES
('Chakchouka', '1'),
('Ktayef', '1'),
('Les Tartelettes', '1');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE IF NOT EXISTS `rating` (
  `titre` varchar(100) NOT NULL,
  `id` int(50) NOT NULL,
  `rating` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`titre`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`titre`, `id`, `rating`) VALUES
('Ktayef', 1, 2),
('Chakchouka', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `recette`
--

DROP TABLE IF EXISTS `recette`;
CREATE TABLE IF NOT EXISTS `recette` (
  `titre` varchar(100) NOT NULL,
  `categorie` enum('entree','plat','desert','boisson') NOT NULL,
  `valider` bit(1) NOT NULL,
  `userid` int(50) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `ddescription` text NOT NULL,
  `description` mediumtext NOT NULL,
  `tpreparation` time NOT NULL,
  `trepos` time NOT NULL,
  `tcuisson` time NOT NULL,
  `notation` float(4,3) DEFAULT NULL,
  `defficulte` enum('Facile','Moyenne','Difficile') NOT NULL,
  `fetes` set('Mariage','Mouloud','Circoncision','Aid','Achoura','Ramdan') DEFAULT NULL,
  `video` varchar(500) DEFAULT NULL,
  `nbCalorie` float(12,6) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`titre`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recette`
--

INSERT INTO `recette` (`titre`, `categorie`, `valider`, `userid`, `image`, `ddescription`, `description`, `tpreparation`, `trepos`, `tcuisson`, `notation`, `defficulte`, `fetes`, `video`, `nbCalorie`, `display`) VALUES
('Kalb El Louz', 'desert', b'1', NULL, 'media/images/deserts/9ALBLOUZ.jpg', 'Kalb el louz est une pâtisserie à base de semoule, d\'amandes, de fleur d\'oranger et très fondante grâce au sirop de miel', 'Kalb el louz est une pâtisserie très consistante, à base de semoule, d\'amandes, de fleur d\'oranger et très fondante grâce au sirop de miel (cherbette) dont elle est abondamment arrosée.\r\n\r\nElle ressemble dans sa forme à la basboussa du Levant, car elle est carrée et a des ingrédients similaires, mais elle a un goût et une méthode de préparation différents. Dans le passé, elle était farcie uniquement d\'amandes, ce qui est à l\'origine de son nom. De nos jours, les amandes sont remplacées par des cacahuètes, des pistaches ou des noisettes, et même du chocolat ', '00:15:00', '00:00:00', '01:00:00', 4.000, 'Difficile', 'Ramdan', NULL, 1081.500000, 0),
('Ktayef', 'desert', b'1', NULL, 'media/images/deserts/9TAYF.jpg', ' pâtisserie levantine à base de pâte à crêpe, farcie de crème de lait, de pistache ou de noix', 'Les Qtaief sont une pâtisserie algerienne et orientale à base de cheveux d’anges de miel et de fruits secs. Se déguste le plus souvent pendant le ramadan. La farce est traditionnellement composée d’amandes et de noix, mais l’on peut utiliser d’autres fruits secs tel que les noisettes ou les pistaches.', '00:15:00', '00:00:00', '00:15:00', 2.000, 'Facile', 'Mariage,Mouloud,Ramdan', NULL, 4703.100098, NULL),
('Baba ', 'desert', b'1', NULL, 'media/images/deserts/BABAZ.jpg', ' un savarin servi imbibé d\'un sirop, généralement au rhum, et parfois fourré de crème fouettée ou de crème pâtissière.', 'Le baba au rhum est un savarin servi imbibé d\'un sirop, généralement au rhum, et parfois fourré de crème fouettée ou de crème pâtissière. Il est le plus souvent confectionné en portions individuelles (un cylindre d\'environ 5 cm de haut, légèrement effilé) mais peut parfois être confectionné dans des formes plus grandes semblables à celles utilisées pour les Bundt cakes.', '00:02:00', '00:00:00', '00:30:00', 3.000, 'Facile', 'Mariage,Ramdan', NULL, 1797.199951, 1),
('Basboussa', 'desert', b'1', NULL, 'media/images/deserts/BESBOUSSA.jpg', 'pâtisserie préparée à base de semoule fine de blé, de sucre et de fruits secs ', 'asboussa ou Besboussa une délicieuse pâtisserie orientale, appelée aussi Namoura au Liban. Elle est préparée à base de semoule de sucre et de fruits secs au choix, pour ma part, j’ai choisi la noix de coco. Après cuisson cette pâtisserie est ensuite imbibée de sirop de sucre, qu’on peut aromatiser de cannelle, clous de girofle ou d’eau de fleur d’oranger.', '00:10:00', '00:10:00', '00:35:00', 5.000, 'Facile', 'Ramdan', NULL, 6083.700195, NULL),
('Cigar', 'desert', b'1', NULL, 'media/images/deserts/CIGAR.jpg', 'une pâtisserie traditionnelle algérienne, à base de feuille de brick, fourrée avec une farce d\'amande, de noix de coco et de cannelle', 'Le bourek renna est une pâtisserie traditionnelle algérienne, à base de feuille de brick, fourrée avec une farce d\'amande, de noix de coco et de cannelle. Cette pâtisserie, en forme de cigare, est enrobée de miel après friture1.', '00:10:00', '00:00:00', '00:10:00', 5.000, 'Facile', 'Mariage,Mouloud,Achoura,Ramdan', NULL, 8690.000000, 0),
('Khobz Tounes', 'desert', b'1', NULL, 'media/images/deserts/KHOBZTOUNESS.jpg', 'gâteau à base d\'amandes et de chapelure ou de brioche émiettée, arrosé d\'un sirop sucré parfumé à l\'eau de fleur d\'oranger', 'Khobz el bey, ou encore khobz tounes, est un gâteau algérien à base d\'amandes et de chapelure ou de brioche émiettée, arrosé d\'un sirop sucré parfumé à l\'eau de fleur d\'oranger. Par sa texture, très fondante, il ressemble beaucoup aux babas au rhum.', '00:15:00', '00:10:00', '00:40:00', 4.000, 'Facile', '', NULL, 0.000000, NULL),
('Mhalbi', 'desert', b'1', NULL, 'media/images/deserts/MHALBI.jpg', 'Mhalbi ou M’halbi un entremet ou une crème au riz à l’algérienne, à base de poudre de riz', 'Mhalbi ou M’halbi un entremet ou une crème au riz à l’algérienne, à base de poudre de riz. Un dessert frais incontournable des soirées ramadanesques qui s’annoncent chaudes cette année.', '00:10:00', '01:00:00', '00:15:00', 4.000, 'Facile', 'Ramdan', NULL, 2279.899902, NULL),
('Les Tartelettes', 'desert', b'1', NULL, 'media/images/deserts/TARTE.jpg', 'Une pâte brisée qui peut être réalisée avec ou sans oeuf.', 'Petite tarte individuelle, sucrée ou salée, pouvant avoir une forme allongée.C\'est un dessert assez facile à réaliser : une pâte brisée, une couche de confiture', '00:10:00', '00:00:00', '00:10:00', 5.000, 'Facile', 'Mariage,Ramdan', NULL, 1481.140015, NULL),
('Tiramisu', 'desert', b'1', NULL, 'media/images/deserts/TIRAMISU.jpg', 'dessert italien au café', 'est un dessert italien aromatisé au café. Il est composé d\'un gâteau trempé dans du café, recouvert d\'un mélange fouetté d\'œufs, de sucre et de fromage mascarpone, aromatisé au cacao. La recette a été adaptée dans de nombreuses variétés de gâteaux et autres desserts. Ses origines sont souvent contestées entre les régions italiennes de la Vénétie et du Frioul-Vénétie Julienne.', '00:10:00', '00:00:00', '00:10:00', 5.000, 'Facile', '', NULL, 1193.599976, NULL),
('Zlabia', 'desert', b'1', NULL, 'media/images/deserts/ZLABIA.jpg', 'une pâtisserie type de l\'est algérien et de la Tunisie pour ramadan, à base de farine et de semoule ', 'Zlabia, une pâtisserie type de l\'est algérien et de la Tunisie pour ramadan, à base de farine et de semoule ou farine seulement sel et eau qu\'on laisse un peu fermenter un à deux jours au frais pour obtenir un goût assez typique, au miel sans colorant ni autre additif à l\'origine.', '01:00:00', '00:00:00', '00:20:00', 3.000, 'Facile', 'Mariage,Mouloud,Circoncision,Aid,Achoura,Ramdan', NULL, 11745.820312, NULL),
('Batata Flieu', 'plat', b'1', NULL, 'media/images/dishes/BATATAFLIEU.jpg', 'un ragoût de pommes de terre à la menthe pouliot. C\'est un plat traditionnel algérien, originaire de la région de Blida', 'Le batata fliou est un ragoût de pommes de terre à la menthe pouliot1. C\'est un plat traditionnel algérien, originaire de la région de Blida, située dans la plaine de la Mitidja, zone marécageuse où pousse cette plante. Le mot batata est l\'équivalent du mot « patate » en arabe.', '00:30:00', '00:00:00', '01:30:00', 5.000, 'Moyenne', '', NULL, 1525.579956, NULL),
('Chakchouka', 'plat', b'1', NULL, 'media/images/dishes/CHECKCHOUKA.jpg', 'une sorte de poêlée de poivrons ou de piments verts ou rouges, tomates, oignons et à laquelle s\'ajoutent à la fin des œufs', 'Il s\'agit d\'une sorte de poêlée de poivrons ou de piments verts ou rouges, tomates, oignons et à laquelle s\'ajoutent à la fin des œufs. Elle est proche de la frita et du pisto manchego, ou encore de la ojja.Le saksuka en Turquie est un plat différent, à base de légumes cuits dans l\'huile d\'olive. Il se mange froid et ne contient pas doeuf.', '00:10:00', '00:00:00', '00:30:00', 4.000, 'Facile', '', NULL, 1233.000000, NULL),
('Gratin Courgette', 'plat', b'1', NULL, 'media/images/dishes/GRATIN9AR3A.jpg', 'Délicieux gratin sain avec courgettes ,fromage', 'une recette à petit prix, simple et idéale pour accompagner vos viandes et poissons pour un repas léger et équilibré.', '00:05:00', '00:00:00', '00:30:00', 4.000, 'Facile', '', NULL, 1033.150024, NULL),
('Hamama', 'plat', b'1', NULL, 'media/images/dishes/HAMAMA.jpeg', 'Couscous à la lavande sauvage Taam Bel Halhal ou El Hamama', 'Ce plat ancestral est à base de semoule mélangée à des herbes sauvages comme le Halhal (lavande sauvage), Fliou (menthe de pouliot), Timersat (marrube noir), Benaâman (Coquelicot), Zeitra (Thym), Aklil (Romarin). Une fois que le printemps s’installe, la cueillette des plantes et ingrédients constituant ses ingrédients commence. C’est pour cette raison que ce plat est qualifié de couscous du printemps. On raconte que ce plat contenait jusqu’à 70 variétés de plantes et herbes lorsqu’il était préparé par les montagnardes', '00:30:00', '00:00:00', '01:00:00', 5.000, 'Difficile', 'Mariage,Mouloud,Achoura', NULL, 2368.199951, NULL),
('Khalouta', 'plat', b'1', NULL, 'media/images/dishes/KHALOUTA.jpg', 'Khalouta aux légumes de saison,', 'Plat Algerois Khalouta. Recette à base d\'aubergines courgette pomme de terre .foule yabesse 24h dans l\'eau faire bouillir ensuite mettre dans la marmite.', '00:40:00', '00:00:00', '01:05:00', 5.000, 'Facile', '', NULL, 0.000000, 1),
('Makaroun bel turk', 'plat', b'1', NULL, 'media//images//dishes//MAKAROUNLA3MA.jpg', 'une petite pâte fait maison qui ressemble au vermicelles mais en plus gros avec viande', 'un plat traditionnel Algérien très ancien, des pâtes  a la viande hachée et oeufs en omelette. Autrefois on préparer ces pâtes ber turk a la maison, c\'est des pâtes un peu plus épaisse que la vermicelle ou mkatfa mais qu\'on trouve maintenant dans le commerce.  Vous pouvez remplacer ces pâtes par  des pâtes coquillettes, langues d\'oiseaux tlitli', '00:10:00', '00:00:00', '00:45:00', 4.000, 'Facile', 'Circoncision', NULL, NULL, NULL),
('Rachta', 'plat', b'1', NULL, 'media/images/dishes/RACHTA.jpg', 'La rechta est un plat Algérien, typique de l\'est du Maghreb.', 'Ce plat de pâtes algérois par excellence est très savoureux. Au visuel, on peut dire que ce sont des pâtes qui ressemblent aux nouilles, de longues bandes de pâtes passées à la machine à pâte pour obtenir de longues bandelettes que l’on fera sécher avant de les découper.\r\n\r\nUne pâte maison à base de semoule de blé dur, farine, œuf. C’est un plat généralement accompagné d’une sauce blanche délicatement parfumée de cannelle.', '00:30:00', '00:00:00', '01:00:00', 5.000, 'Difficile', 'Mariage,Mouloud,Achoura', NULL, 1200.000000, NULL),
('Tbikha', 'plat', b'0', 1, 'media/images/dishes/TBIKHA.jpg', 'une sorte de jardiniÃ¨re de lÃ©gumes de saiso', 'La Tbikha est plat algÃ©rien en sauce Ã  base de fÃ¨ves, une sorte de jardiniÃ¨re de lÃ©gumes Ã  laquelle on peut rajouter petits pois', '00:30:00', '00:00:00', '01:00:00', 4.000, 'Moyenne', '', NULL, 950.000000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userid` int(50) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `mail` varchar(500) NOT NULL,
  `sex` enum('f','m') NOT NULL,
  `password` varchar(500) NOT NULL,
  `dateN` date DEFAULT NULL,
  `etat` tinyint(4) DEFAULT NULL,
  `valider` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `nom`, `prenom`, `mail`, `sex`, `password`, `dateN`, `etat`, `valider`) VALUES
(1, 'bensalem', 'bensalem', 'jm_bensalem@esi.dz', 'm', 'lbp6020SM', '2001-12-05', 1, 1),
(2, 'djamel', 'attaher', 'canonisensys14@gmail.com', 'm', 'lbp6020SM', '2001-05-12', 1, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
