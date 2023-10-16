-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 07 juil. 2023 à 14:10
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blogue2`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonnee`
--

CREATE TABLE `abonnee` (
  `id_abonnee` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mp` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `abonnee`
--

INSERT INTO `abonnee` (`id_abonnee`, `nom`, `email`, `mp`, `photo`) VALUES
(1, 'Houda', 'houda@gmail.com', 'taratata', 'houda.jpg'),
(2, 'Eloufi', 'eloufi@gmail.com', 'taratata', 'eloufi.png'),
(3, 'Zakaria', 'zaka@gmail.com', 'taratata', 'zaka.jpg'),
(4, 'Houda', 'houda@gmail.com', 'taratata', 'houda.png'),
(5, 'aaa', 'aaa', 'aaa', 'aaaa'),
(6, 'aaaaaaaaaa', 'tyutyut@sdfsdfs', 'aaa', 'person-5.jpg'),
(7, 'xxx', 'xxxx@xxxx', 'xxx', 'person-5.jpg'),
(8, 'zzzz', 'zzzz@zzzz', 'zzz', '1683904125_person-7.jpg'),
(9, 'zzzz', 'zzzz@zzzz', 'zzz', '1683904583_person-7.jpg'),
(10, 'Moujib Abdo', 'Moujib@jmail.com', 'azerty', '1683904643_person-1.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `aimer`
--

CREATE TABLE `aimer` (
  `id_aimer` int(11) NOT NULL,
  `id_abonnee` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `dateaimer` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `aimer`
--

INSERT INTO `aimer` (`id_aimer`, `id_abonnee`, `id_article`, `dateaimer`) VALUES
(2, 1, 8, '2023-05-16 12:30:06'),
(3, 1, 5, '2023-05-16 12:30:30'),
(4, 10, 8, '2023-05-16 12:30:42'),
(5, 2, 9, '2023-05-16 12:49:55'),
(6, 3, 9, '2023-05-16 12:49:55'),
(7, 2, 3, '2023-05-16 17:13:55'),
(34, 1, 9, '2023-05-25 18:01:10'),
(51, 3, 11, '2023-05-25 18:28:42'),
(53, 1, 12, '2023-05-25 18:55:26'),
(54, 3, 3, '2023-05-25 23:28:52'),
(55, 3, 5, '2023-05-25 23:29:21'),
(56, 2, 8, '2023-05-25 23:30:11'),
(57, 10, 5, '2023-05-25 23:31:36'),
(58, 2, 5, '2023-05-25 23:33:07');

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id_article` int(11) NOT NULL,
  `titre` varchar(100) DEFAULT NULL,
  `contenu` text DEFAULT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `categorie` varchar(100) DEFAULT NULL,
  `id_abonnee` int(11) DEFAULT NULL,
  `vues` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id_article`, `titre`, `contenu`, `date`, `categorie`, `id_abonnee`, `vues`) VALUES
(1, 'Essai – Le Yamaha XMAX 300 Tech Max vire résolument « techno »', 'Sunt reprehenderit, hic vel optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, ipsam dicta explicabo nihil, tempore, nulla repellendus eos necessitatibus eligendi corporis cum? Eaque harum, eligendi itaque numquam aliquam soluta.\n\nExplicabo perspiciatis, laborum provident voluptates illum in nulla consectetur atque quaerat excepturi quisquam, veniam velit ex pariatur quos consequuntur? Excepturi reiciendis perferendis, cupiditate dolorem eos illum amet. Beatae voluptates nemo esse ratione voluptate, nesciunt fugit magnam veritatis voluptas dignissimos doloribus maiores? Aliquam, dolores natus exercitationem corrupti blanditiis, consequuntur nihil nobis sed voluptatibus maiores sunt, illo provident aliquid laborum. Vitae, ut.\n\nReprehenderit aut sed doloribus blanditiis, aspernatur magni? In molestias rem, similique ut esse repudiandae quod recusandae dolores neque earum omnis at, suscipit fuga? Minima qui veniam deserunt quisquam error amet at ratione nesciunt porro quis placeat repudiandae voluptatibus officiis fuga necessitatibus, expedita officia adipisci eaque labore accusamus? Nesciunt repellat illo exercitationem facilis similique quaerat, quis sequi? Praesentium nulla ipsam dolor.\n\nDolorum, incidunt! Adipisci harum itaque maxime dolores doloremque porro eligendi quis, doloribus vel sit rerum sunt obcaecati nam suscipit nulla vitae alias blanditiis aliquam debitis atque illo modi et placeat. Ratione iure eveniet provident. Culpa laboriosam sed ad quia. Corrupti, earum, perferendis dolore cupiditate sint nihil maiores iusto tempora nobis porro itaque est. Ut laborum culpa assumenda pariatur et perferendis?\n\nEst soluta veritatis laboriosam, consequuntur temporibus asperiores, fugit id a ullam sed, expedita sequi doloribus fugiat. Odio et necessitatibus enim nam, iste reprehenderit cupiditate omnis ut iure aliquid obcaecati, repellendus nemo provident eveniet tempora minus! Voluptates aut laboriosam, maiores nihil accusantium, a dolorum quaerat tenetur illo eum culpa cum laudantium sunt doloremque modi possimus magni? Perferendis cum repudiandae corrupti porro.\nSunt reprehenderit, hic vel optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, ipsam dicta explicabo nihil, tempore, nulla repellendus eos necessitatibus eligendi corporis cum? Eaque harum, eligendi itaque numquam aliquam soluta.\n\nExplicabo perspiciatis, laborum provident voluptates illum in nulla consectetur atque quaerat excepturi quisquam, veniam velit ex pariatur quos consequuntur? Excepturi reiciendis perferendis, cupiditate dolorem eos illum amet. Beatae voluptates nemo esse ratione voluptate, nesciunt fugit magnam veritatis voluptas dignissimos doloribus maiores? Aliquam, dolores natus exercitationem corrupti blanditiis, consequuntur nihil nobis sed voluptatibus maiores sunt, illo provident aliquid laborum. Vitae, ut.\n\nReprehenderit aut sed doloribus blanditiis, aspernatur magni? In molestias rem, similique ut esse repudiandae quod recusandae dolores neque earum omnis at, suscipit fuga? Minima qui veniam deserunt quisquam error amet at ratione nesciunt porro quis placeat repudiandae voluptatibus officiis fuga necessitatibus, expedita officia adipisci eaque labore accusamus? Nesciunt repellat illo exercitationem facilis similique quaerat, quis sequi? Praesentium nulla ipsam dolor.\n\nDolorum, incidunt! Adipisci harum itaque maxime dolores doloremque porro eligendi quis, doloribus vel sit rerum sunt obcaecati nam suscipit nulla vitae alias blanditiis aliquam debitis atque illo modi et placeat. Ratione iure eveniet provident. Culpa laboriosam sed ad quia. Corrupti, earum, perferendis dolore cupiditate sint nihil maiores iusto tempora nobis porro itaque est. Ut laborum culpa assumenda pariatur et perferendis?\n\nEst soluta veritatis laboriosam, consequuntur temporibus asperiores, fugit id a ullam sed, expedita sequi doloribus fugiat. Odio et necessitatibus enim nam, iste reprehenderit cupiditate omnis ut iure aliquid obcaecati, repellendus nemo provident eveniet tempora minus! Voluptates aut laboriosam, maiores nihil accusantium, a dolorum quaerat tenetur illo eum culpa cum laudantium sunt doloremque modi possimus magni? Perferendis cum repudiandae corrupti porro.', '2023-03-29', 'Tests motos', 1, 0),
(2, 'Nouveau – Triumph se lance dans les petites cylindrées avec la Speed 400 et le Scrambler 400 X', 'Le constructeur britannique lance deux « petites » motos sur le marché mondial, des monocylindres refroidis par liquide qui s’insèrent comme entrées de gamme de Triumph dans le segment néo-rétro. La Speed 400 et le Scrambler 400 X partagent moteur et éclairage, mais les réglages des partie-cycles et les géométries sont différents. Contrôle de traction désactivable à bord, et ABS déconnectable de même pour le Scrambler.\n\nLa marque anglaise Triumph Motorcycles vient de dévoiler deux nouveaux modèles, qui sont des petites cylindrées: la Speed 400 et le Scrambler 400 X.\n\nCes deux motos vont d’abord être distribuées en Inde, dès le milieu de l’été 2023, puis elles arriveront dans le reste du monde, Europe et Suisse compris, au mois de décembre de la même année. L’Inde sera le premier marché servi parce que ces nouvelles 400 ont été développées en partenariat avec le géant indien Bajaj Auto.\n\nCes deux 400 représentent la nouvelle porte d’entrée dans l’univers de Triumph Motorcycles. Ce sont des néo-rétros, dans la droite ligne de la famille Classic du constructeur britannique. La première vient se placer aux côtés des grandes soeurs Speed Twin 900 (ex-Street Twin) et Speed Twin 1200, tandis que le second vient compléter par le bas la gamme comprenant déjà le Scrambler 900 (ex-Street Scrambler) et le Scrambler 1200.La Speed 400 et le Scrambler 400 X sont des machines bâties autour d’un moteur monocylindre refroidi par liquide de 398 cm3.\n\nLa puissance maximale est de 40 chevaux, atteints à 8000 tr/min, et le couple monte à 37,5 Nm, à 6500 tr/min. On est largement dans la limite utilisable pour le permis A limité, passage obligé durant deux ans en Suisse (et ailleurs en Europe) avant de pouvoir piloter un gros cube sans restriction de puissance – lire à ce propos notre article listant les motos bridables à 48 ch pour ce type de permis.', '2023-03-29', 'Nouveautés 2023', 2, 0),
(3, 'Essai pneu – Le nouveau Dunlop Trailmax Raid surprend par sa polyvalence', 'Sunt reprehenderit, hic vel optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, ipsam dicta explicabo nihil, tempore, nulla repellendus eos necessitatibus eligendi corporis cum? Eaque harum, eligendi itaque numquam aliquam soluta.\r\n\r\nExplicabo perspiciatis, laborum provident voluptates illum in nulla consectetur atque quaerat excepturi quisquam, veniam velit ex pariatur quos consequuntur? Excepturi reiciendis perferendis, cupiditate dolorem eos illum amet. Beatae voluptates nemo esse ratione voluptate, nesciunt fugit magnam veritatis voluptas dignissimos doloribus maiores? Aliquam, dolores natus exercitationem corrupti blanditiis, consequuntur nihil nobis sed voluptatibus maiores sunt, illo provident aliquid laborum. Vitae, ut.\r\n\r\nReprehenderit aut sed doloribus blanditiis, aspernatur magni? In molestias rem, similique ut esse repudiandae quod recusandae dolores neque earum omnis at, suscipit fuga? Minima qui veniam deserunt quisquam error amet at ratione nesciunt porro quis placeat repudiandae voluptatibus officiis fuga necessitatibus, expedita officia adipisci eaque labore accusamus? Nesciunt repellat illo exercitationem facilis similique quaerat, quis sequi? Praesentium nulla ipsam dolor.\r\n\r\nDolorum, incidunt! Adipisci harum itaque maxime dolores doloremque porro eligendi quis, doloribus vel sit rerum sunt obcaecati nam suscipit nulla vitae alias blanditiis aliquam debitis atque illo modi et placeat. Ratione iure eveniet provident. Culpa laboriosam sed ad quia. Corrupti, earum, perferendis dolore cupiditate sint nihil maiores iusto tempora nobis porro itaque est. Ut laborum culpa assumenda pariatur et perferendis?\r\n\r\nEst soluta veritatis laboriosam, consequuntur temporibus asperiores, fugit id a ullam sed, expedita sequi doloribus fugiat. Odio et necessitatibus enim nam, iste reprehenderit cupiditate omnis ut iure aliquid obcaecati, repellendus nemo provident eveniet tempora minus! Voluptates aut laboriosam, maiores nihil accusantium, a dolorum quaerat tenetur illo eum culpa cum laudantium sunt doloremque modi possimus magni? Perferendis cum repudiandae corrupti porro.\r\nSunt reprehenderit, hic vel optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, ipsam dicta explicabo nihil, tempore, nulla repellendus eos necessitatibus eligendi corporis cum? Eaque harum, eligendi itaque numquam aliquam soluta.\r\n\r\nExplicabo perspiciatis, laborum provident voluptates illum in nulla consectetur atque quaerat excepturi quisquam, veniam velit ex pariatur quos consequuntur? Excepturi reiciendis perferendis, cupiditate dolorem eos illum amet. Beatae voluptates nemo esse ratione voluptate, nesciunt fugit magnam veritatis voluptas dignissimos doloribus maiores? Aliquam, dolores natus exercitationem corrupti blanditiis, consequuntur nihil nobis sed voluptatibus maiores sunt, illo provident aliquid laborum. Vitae, ut.\r\n\r\nReprehenderit aut sed doloribus blanditiis, aspernatur magni? In molestias rem, similique ut esse repudiandae quod recusandae dolores neque earum omnis at, suscipit fuga? Minima qui veniam deserunt quisquam error amet at ratione nesciunt porro quis placeat repudiandae voluptatibus officiis fuga necessitatibus, expedita officia adipisci eaque labore accusamus? Nesciunt repellat illo exercitationem facilis similique quaerat, quis sequi? Praesentium nulla ipsam dolor.\r\n\r\nDolorum, incidunt! Adipisci harum itaque maxime dolores doloremque porro eligendi quis, doloribus vel sit rerum sunt obcaecati nam suscipit nulla vitae alias blanditiis aliquam debitis atque illo modi et placeat. Ratione iure eveniet provident. Culpa laboriosam sed ad quia. Corrupti, earum, perferendis dolore cupiditate sint nihil maiores iusto tempora nobis porro itaque est. Ut laborum culpa assumenda pariatur et perferendis?\r\n\r\nEst soluta veritatis laboriosam, consequuntur temporibus asperiores, fugit id a ullam sed, expedita sequi doloribus fugiat. Odio et necessitatibus enim nam, iste reprehenderit cupiditate omnis ut iure aliquid obcaecati, repellendus nemo provident eveniet tempora minus! Voluptates aut laboriosam, maiores nihil accusantium, a dolorum quaerat tenetur illo eum culpa cum laudantium sunt doloremque modi possimus magni? Perferendis cum repudiandae corrupti porro.', '2023-03-29', 'Nouveautés 2023', 5, 0),
(4, 'Des CVO Road Glide et Street Glide 2023 révolutionnées chez Harley-Davidson', 'La firme américaine dote ses vaisseaux amiraux custom d’usine de nouveaux carénages aux design entièrement revus, mais aussi de nouveaux éclairages, d’un moteur majoré avec distribution variable, de nouvelles suspensions et d’une nouvelle interface compatible notamment avec Apple CarPlay. La liste des nouveautés …\n\nElles changent vraiment de visage, les Harley-Davidson CVO Road Glide et Street Glide 2023! Ces deux modèles, qui appartiennent à la famille des customs d’usine tout en haut de la gamme du constructeur américain (lire notre présentation des CVO 2022), se démarquent en effet fortement des actuelles Street Glide et Road Glide standard de la famille Grand America Touring. Et il y a fort à parier que ce nouveau look, s’il suscite l’adhésion de la clientèle, soit par la suite adopté aussi sur les modèles de base.\n\nPour employer un mot venu de l’anglais, les carénages avant de ces deux modèles sont beaucoup plus « streamlinés ». Ils sont plus « fluides » dans leurs formes que les versions précédentes. Et cela vaut aussi pour le design des deux valises latérales rigides façon bagger. Elles ont l’air plus compactes et plus élancées, mais sans que la contenance ne diminue pour autant, selon Harley-Davidson. Elle augmente même de 5%.Enfin la signature lumineuse à l’avant est très différente. Au lieu du gros phare rond de la Street Glide et du double optique rond de la Road Glide, on a des unités à LED qui, dans le cas de la Road Glide 2023, forment une barre horizontale, et dans celui de la Street Glide 2023, la barre est aussi là, mais elle est moins large.\n\nLes clignotants avant, également à LED, sont intégrés dans ces carénages.L’autre gros point fort de ces CVO nouveau genre est le moteur. Il s’appelle « Milwaukee-Eight 121 VVT ». La première partie du nom fait comprendre qu’il s’agit à la base du même moteur bicylindre à 45 degrés avec un seul arbre à cames et 4 soupapes par cylindre.\n\nUn très gros moteur\nMais le chiffre indique la cylindrée, 121 « cubic inches » (pouces cubiques, une unité de volume américaine), ce qui correspond à 1977 centimètres cubes, au lieu du précédent Milwaukee-Eight 117 qui équipait jusque là les modèles CVO.\n\nEt « VVT » indique que le timing d’ouverture et de fermeture des soupapes du moteur est variable. On dit aussi que la distribution est variable, à l’admission comme à l’échappement, puisqu’il n’y a qu’un seul arbre à cames. Cela permet d’optimiser le temps d’ouverture desdites soupapes selon le régime moteur utilisé et d’autres paramètres.\n\nCette technique est censée combiner le meilleur de deux mondes, une bonne poussée à bas régime et des prestations convaincantes à mi- et hauts régimes. Dans le cas du nouveau moteur des Harley CVO, cela devrait surtout avoir pour résultat une meilleure économie dans la consommation du carburant.', '2023-03-29', 'Nouveautés 2023', 3, 0),
(5, 'Nouveau – Avec la 890 SMT, KTM relance le Supermoto voyageur', 'La marque autrichienne fait renaître l’appellation SMT, qui avait connu un certain succès dans feu le modèle 990 SMT. La nouvelle 890 SMT mêle les facilités des modèles « Travel » et « Adventure » de KTM à un caractère éminemment routier et sportif. Explications.\n\nSi le nom « SMT » vous rappelle quelque chose, c’est que vous êtes sans doute un bon connaisseur de la marque autrichienne KTM, ou tout au moins de ses modèles destinés à la route.\n\nLa 990 SMT (que l’on écrivait aussi parfois sous la forme de SM-T) était un croisement entre une machine de Supermoto et une moto de Touring. Pour faire du touring sportif en étant haut perché.\n\nCette machine a existé en gros de 2009 à 2013 et était dotée du gros moteur V2 que l’on trouvait également dans toute une famille de modèles, à commencer par le maxi-trail 990 Adventure.\n\nAujourd’hui, après que KTM a développé toute une nouvelle génération de motos de type Adventure, faites pour le voyage et capables de voyager dans le terrain comme sur l’asphalte, la société de Mattighofen (son siège en Autriche) réintroduit un modèle SMT, qui est la 890 SMT.Pas besoin d’un long discours pour comprendre que la base technique est cette fois-ci la 890 Adventure, soit le trail de voyage de cylindrée moyenne (façon de parler, disons en comparaison avec par exemple une BME R 1250 GS).\n\nLe moteur est effectivement identique: c’est le bicylindre en ligne LC8c, extrêmement compact, qui développe 105 chevaux à 8000 tr/min et un couple intéressant de 100 Nm à 6500 tr/min. On le retrouve aussi dans la naked 890 Duke de KTM.De l’Adventure, la 890 SMT reprend également des suspensions à longs débattements, une partie avant relativement protectrice contre les éléments, et des assistances électroniques et une interface dernier cri.', '2023-03-29', 'Nouveautés 2023', 1, 0),
(6, 'Nouveau – Husqvarna dévoile une version Expedition de sa Norden 901', 'La marque d’origine suédoise lance une variante plus robuste encore et plus adaptée au voyage de son maxi-trail de cylindrée moyenne-supérieure. Elle se distingue de la Norden 901 standard par des suspensions plus longues, un pare-brise touring, une selle et des poignées chauffantes, un sabot moteur plus protecteur, le mode Explorer et la connectivité de série, et une nouvelle déco.\n\nElle s’appelle la Norden 901 Expedition, et c’est un nouveau modèle qui vient d’être présenté par la marque d’origine suédoise Husqvarna.\n\nOu plutôt c’est une nouvelle variante de la Husqvarna Norden 901, un maxi-trail de voyage qui reprend toute une liste d’éléments techniques de la KTM 890 Adventure, mais sous un aspect assez différent.\n\nIl est vrai que Husqvarna, tout come KTM et GasGas, fait partie du même groupe, Pierer Mobility, basé en Autriche.Mais la Husqvarna Norden 901 a beau dériver techniquement d’une KTM, elle a son propre caractère (lire notre test comparatif en 2022 contre la Ducati DesertX et la Triumph Tiger 900 Rally Pro).\n\nLa Norden Expedition, comme le laisse présager son nom, accentue les capacités de voyageuse et de baroudeuse de la Norden 901.\n\nIl y a un certain nombre de composants et d’accessoires qui sont réunis dans ce modèle dans cette optique.Certains se trouvent déjà dans le catalogue des accessoires proposés pour la Norden 901 standard. On parle par exemple d’une selle et de poignées chauffantes, mais aussi d’un sabot moteur en aluminium renforcé, plus large et plus protecteur que le sabot moteur d’origine, qui est déjà pas mal dans le genre.\n\nIl y a aussi sur la Norden 901 Expedition un pare-brise touring nettement plus large et haut que l’appendice protecteur de série sur la Norden 901 de base. Ce pare-brise est entièrement nouveau.', '2023-03-29', 'Nouveautés 2023', 3, 0),
(7, 'Prototype BMW M 1000 XR – BMW Motorrad donne suite à la saga M', 'Chez BMW, la lettre M est synonyme de sportivité et représente les modèles hautes performances de la marque. Dès 2019, BMW Motorrad a appliqué la stratégie M du monde automobile à la moto et propose depuis les modèles spécifiques M 1000 RR et la M 1000 R. Avec le prototype de la M 1000 XR, BMW donne, en cette année du centenaire de BMW Motorrad, un aperçu d’une moto supersportive qui maîtrise avec brio les disciplines de la route, de l’endurance et de la compétition à un niveau de performances très élevé.\n\n« Avec le prototype M 1000 XR – en abrégé M XR – nous donnons, en cette année d’anniversaire, un premier aperçu du troisième modèle M chez BMW Motorrad », déclare BMW dans un communiqué qui vien td’être publiée.\n\nEt la marque allemande de poursuivre: « Sur la base des actuelles S 1000 XR, S 1000 RR et M 1000 RR, nous avons développé la M 1000 XR de manière conséquente en tant que sportive au long cours avec une grande aptitude aux longues distances et une dynamique de conduite très sportive pour la route comme pour la piste », déclare Dominik Blass, chef de produit.Le moteur est basé sur le quatre-cylindres en ligne de la supersportive BMW S 1000 RR, doté de la technologie BMW ShiftCam permettant de faire varier le calage et la levée des soupapes. Une technologie qui n’est pas appliquée sur la S 1000 XR, mais que l’on trouve sur les autres motos BMW M, la M 1000 R (lire notre essai) et la M 1000 RR.\n\nAvec une puissance moteur de 210 ch, un poids tous pleins faits de seulement 223 kg, ainsi qu’une technique de châssis, une aérodynamique et des assistances électroniques conçues aussi bien pour une utilisation performante sur route que pour les longs trajets et les tours énervés sur circuit, la nouvelle M XR, en tant que moto crossover dans le segment des motos sportives, ouvre des dimensions de dynamique de conduite jusqu’ici réservées aux supersportives élitistes.\n\nLe pack M Competition, disponible en option départ d’usine, permet de réduire encore le poids et d’augmenter la dynamique de conduite. La vitesse maximale du prototype M XR est d’environ 280 km/h (utile sur circuit, sans aucun doute!).Outre la technique de propulsion et de châssis, l’aérodynamique était un point essentiel du cahier des charges du travail de développement du prototype M XR.\n\nDans le but de garantir une stabilité de conduite en relation aux vitesses pouvant être atteintes, la nouvelle M XR a été équipée de winglets (ailerons). Ils servent notamment à obtenir le meilleur contact possible entre les roues et la route, surtout lors des phases d’accélération et à grande vitesse. La charge supplémentaire sur la roue avant contrecarre la tendance au wheelie à l’accélération, le contrôle de traction est soulagé, et ainsi une plus grande force motrice est convertie en accélération…\n\nLa position d’assise orientée vers la roue avant permet d’améliorer encore le contrôle du véhicule, notamment en conduite sportive.', '2023-03-29', 'Nouveautés 2023', 9, 0),
(8, 'Essai – La KTM 890 SMT, faite pour trancher la route avec confort', 'Nous avons pu mettre la main sur l’un des premiers exemplaires de ce nouveau modèle qui ait posé ses roues sur le bitume suisse. Cette moto offre les avantages d’une Sport-Touring avec un caractère de Supermoto. Et le mix est plutôt plaisant.\n\nAu premier regard, l’exemplaire de la toute nouvelle KTM 890 SMT qui se trouve devant nos yeux, sur le parking en face de l’Auberge communale de Mollens, à l’air d’une KTM Adventure qui a perdu du volume, et qui a de petites roues.\n\nNous sommes au pied du Jura vaudois, et cette moto est l’une des toutes premières 890 SMT qui pose ses roues sur le bitume suisse.La machine est venue de Mattighofen, le siège autrichien de KTM, dans un fourgon, en faisant une étape à Frauenfeld (canton de Thurgovie),  où se trouve le siège de la filiale suisse de la marque autrichienne. Ceci explique pourquoi elle porte une plaque TG.Elle a fait tout ce voyage pour être disponible les lendemain et surlendemain, à l’occasion des essais routiers de la gamme KTM organisés par Adrénaline Motos, le concessionnaire vaudois. Ce nouveau modèle, qui reprend le concept de gros supermotard apte au touring (on pense à son ancêtre, la 990 SMT, disparue vers le milieu des années 2010), est il est vrai très attendu. Beaucoup se demandent s’il s’agit juste d’une 890 Adventure avec des roues de KTM 890 Duke, la naked bien connue de la marque. Question à laquelle KTM répond que c’est plus subtil et qu’elle se situe entre la Duke et l’Adventure…\n\nMais nous ne sommes pas là pour philosopher. Le technicien venu lui aussi d’Autriche nous tend la clé. Nous avons à peine plus de deux heures pour aller faire des photos et voir ce que ce nouveau modèle a dans le ventre. C’est court, mais c’est jouable, tant que la pluie ne vient pas s’ajouter au tableau!', '2023-03-29', 'Tests motos', 1, 0),
(9, 'Essai – Honda CL 500, ou le Scrambler facile pour permis A limité', 'Nous avons pu tester la toute nouvelle CL 500, qui partage une base moteur avec la Honda CMX 500 Rebel, dans la région de Séville, en Espagne. Une moto intuitive, agile, parfaite pour la ville, fun sur les petites routes et capable d’occasionnellement s’aventurer dans le terrain.\n\nElles nous attendent bien sagement devant l’hôtel, les CL 500 de Honda. Les exemplaires dotés du réservoir orange ou bleu, façon Seventies (coloris « Candy »), attirent immédiatement l’oeil.\n\nHonda nous a tester ce nouveau modèle durant une journée, dans la région de Séville, en Andalousie (Espagne). Ces CL 500 ont indéniablement des atouts visuels, pour des motos de cette cylindrée et de cette catégorie.\n\nDeux éléments sont particulièrement remarquables: le réservoir d’essence en forme de goutte d’eau aplatie et la ligne d’échappement qui finit tout en haut sur le côté droite, et qui est dotée d’un pare-chaleur arborant de jolis « trous » à intervalles réguliers.C’est un style rétro, ou plutôt néo-rétro. Avec par exemple un phare avant aux contours ronds mais abritant un quadrille de feux à LED. Et un phare arrière rectangulaire haut sur le garde-boue, qui se marie élégamment avec les clignotants ronds aux verres orangés. Sans parler des fourreaux de fourche noirs. Ce style fait mouche, que ce soit dans les couleurs Candy ou dans les coloris vert kaki ou noir.Mais ce qui nous intéresse ici, c’est de savoir comment cette CL 500 se comporte sur la route. Et en ville. Et en tout-terrain, parce que c’est un Scrambler!\n\nLe mot « Scrambler » fait référence à un type de moto très en vogue dans les années 1950′ et 1960′. Une moto de route légèrement modifiée pour pouvoir passer dans le terrain, mais aussi pour revenir sans transition sur la route. Avec par exemple des suspensions aux débattements plus longs sans être excessifs, avec des pneus mixtes route-terrain, une selle plus ou moins plate, et un échappement haut sur un côté de la moto.Le concept inclut normalement aussi des roues à rayons.\n\nDans le cas de la CL 500, on a presque tout, sauf les jantes à rayons, remplacées ici par des bâtons rectilignes et fins. Mais le moteur, lui, est moderne.\n\nC’est en gros le même propulseur que celui que l’on trouve sur le petit custom Honda, la CMX 500. La démultiplication est un peu différente – il y a une dent en plus sur la couronne. Et l’entrée d’air est plus directe.', '2023-03-29', 'Tests motos', 1, 0),
(10, 'Get 10 informatique to Work, New York', 'Sunt reprehenderit, hic vel optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, ipsam dicta explicabo nihil, tempore, nulla repellendus eos necessitatibus eligendi corporis cum? Eaque harum, eligendi itaque numquam aliquam soluta.\r\n\r\nExplicabo perspiciatis, laborum provident voluptates illum in nulla consectetur atque quaerat excepturi quisquam, veniam velit ex pariatur quos consequuntur? Excepturi reiciendis perferendis, cupiditate dolorem eos illum amet. Beatae voluptates nemo esse ratione voluptate, nesciunt fugit magnam veritatis voluptas dignissimos doloribus maiores? Aliquam, dolores natus exercitationem corrupti blanditiis, consequuntur nihil nobis sed voluptatibus maiores sunt, illo provident aliquid laborum. Vitae, ut.\r\n\r\nReprehenderit aut sed doloribus blanditiis, aspernatur magni? In molestias rem, similique ut esse repudiandae quod recusandae dolores neque earum omnis at, suscipit fuga? Minima qui veniam deserunt quisquam error amet at ratione nesciunt porro quis placeat repudiandae voluptatibus officiis fuga necessitatibus, expedita officia adipisci eaque labore accusamus? Nesciunt repellat illo exercitationem facilis similique quaerat, quis sequi? Praesentium nulla ipsam dolor.\r\n\r\nDolorum, incidunt! Adipisci harum itaque maxime dolores doloremque porro eligendi quis, doloribus vel sit rerum sunt obcaecati nam suscipit nulla vitae alias blanditiis aliquam debitis atque illo modi et placeat. Ratione iure eveniet provident. Culpa laboriosam sed ad quia. Corrupti, earum, perferendis dolore cupiditate sint nihil maiores iusto tempora nobis porro itaque est. Ut laborum culpa assumenda pariatur et perferendis?\r\n\r\nEst soluta veritatis laboriosam, consequuntur temporibus asperiores, fugit id a ullam sed, expedita sequi doloribus fugiat. Odio et necessitatibus enim nam, iste reprehenderit cupiditate omnis ut iure aliquid obcaecati, repellendus nemo provident eveniet tempora minus! Voluptates aut laboriosam, maiores nihil accusantium, a dolorum quaerat tenetur illo eum culpa cum laudantium sunt doloremque modi possimus magni? Perferendis cum repudiandae corrupti porro.\r\nSunt reprehenderit, hic vel optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, ipsam dicta explicabo nihil, tempore, nulla repellendus eos necessitatibus eligendi corporis cum? Eaque harum, eligendi itaque numquam aliquam soluta.\r\n\r\nExplicabo perspiciatis, laborum provident voluptates illum in nulla consectetur atque quaerat excepturi quisquam, veniam velit ex pariatur quos consequuntur? Excepturi reiciendis perferendis, cupiditate dolorem eos illum amet. Beatae voluptates nemo esse ratione voluptate, nesciunt fugit magnam veritatis voluptas dignissimos doloribus maiores? Aliquam, dolores natus exercitationem corrupti blanditiis, consequuntur nihil nobis sed voluptatibus maiores sunt, illo provident aliquid laborum. Vitae, ut.\r\n\r\nReprehenderit aut sed doloribus blanditiis, aspernatur magni? In molestias rem, similique ut esse repudiandae quod recusandae dolores neque earum omnis at, suscipit fuga? Minima qui veniam deserunt quisquam error amet at ratione nesciunt porro quis placeat repudiandae voluptatibus officiis fuga necessitatibus, expedita officia adipisci eaque labore accusamus? Nesciunt repellat illo exercitationem facilis similique quaerat, quis sequi? Praesentium nulla ipsam dolor.\r\n\r\nDolorum, incidunt! Adipisci harum itaque maxime dolores doloremque porro eligendi quis, doloribus vel sit rerum sunt obcaecati nam suscipit nulla vitae alias blanditiis aliquam debitis atque illo modi et placeat. Ratione iure eveniet provident. Culpa laboriosam sed ad quia. Corrupti, earum, perferendis dolore cupiditate sint nihil maiores iusto tempora nobis porro itaque est. Ut laborum culpa assumenda pariatur et perferendis?\r\n\r\nEst soluta veritatis laboriosam, consequuntur temporibus asperiores, fugit id a ullam sed, expedita sequi doloribus fugiat. Odio et necessitatibus enim nam, iste reprehenderit cupiditate omnis ut iure aliquid obcaecati, repellendus nemo provident eveniet tempora minus! Voluptates aut laboriosam, maiores nihil accusantium, a dolorum quaerat tenetur illo eum culpa cum laudantium sunt doloremque modi possimus magni? Perferendis cum repudiandae corrupti porro.', '2023-03-29', 'Electronique', 6, 0),
(11, 'Get 11 Back to Work, New York', 'Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York v', '2023-03-10', 'Technologie', 7, 0),
(12, 'Get toto 11 Back to Work, New York', 'Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York ssssGet Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York v', '2023-03-10', 'xxxxx', 1, 0),
(13, 'Get zzzz 11 Back to Work, New York', 'Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York ssssGet Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York v', '2023-03-10', 'zzzzzzzzzz ', 1, 0),
(14, 'Get zzzz 11 Back to Work, New York', 'Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York ssssGet Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York Get Back to Work, New York v', '2023-03-10', 'ma categorie', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id_comment` int(11) NOT NULL,
  `contenu` text DEFAULT NULL,
  `id_abonnee` int(11) DEFAULT NULL,
  `id_article` int(11) DEFAULT NULL,
  `nbr_aime` int(11) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id_comment`, `contenu`, `id_abonnee`, `id_article`, `nbr_aime`, `date`) VALUES
(1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto laborum in corrupti dolorum, quas delectus nobis porro accusantium molestias sequi.\n', 1, 9, 0, '2023-04-28 00:00:00'),
(5, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto laborum in corrupti dolorum, quas delectus nobis porro accusantium molestias sequi.\r\n', 2, 9, 0, '2023-04-28 00:00:00'),
(6, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto laborum in corrupti dolorum, quas delectus nobis porro accusantium molestias sequi.\n', 2, 10, 0, '2023-04-28 00:00:00'),
(7, 'Voluptates aut laboriosam, maiores nihil accusantium, a dolorum quaerat tenetur illo eum culpa cum laudantium sunt doloremque modi possimus magni? Perferendis cum repudiandae corrupti porro.', 2, 8, 0, '2023-04-28 00:00:00'),
(8, 'am sed ad quia. Corrupti, earum, perferendis dolore cupiditate sint nihil maiores iusto tempora nobis porro itaque est. Ut laborum culpa assu', 2, 8, 0, '2023-04-28 00:00:00'),
(9, 'Voluptates aut laboriosam, maiores nihil accusantium, a dolorum quaerat tenetur illo eum culpa cum laudantium sunt doloremque modi possimus magni? Perferendis cum repudiandae corrupti porro.', 1, 10, 0, '2023-04-28 00:00:00'),
(10, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto laborum in corrupti dolorum, quas delectus nobis porro accusantium molestias sequi.\r\n', 3, 10, 0, '2023-04-28 00:00:00'),
(11, 'Voluptates aut laboriosam, maiores nihil accusantium, a dolorum quaerat tenetur illo eum culpa cum laudantium sunt doloremque modi possimus magni? Perferendis cum repudiandae corrupti porro.', 3, 6, 0, '2023-04-28 00:00:00'),
(12, 'unt reprehenderit, hic vel optio odit est dolore, distinctio iure itaque enim pariatur ducimus. Rerum soluta, perspiciatis voluptatum cupiditate praesentium repellendus quas expedita exercitationem tempora aliquam quaerat in eligendi adipisci harum non omnis reprehenderit quidem beatae modi. Ea fugiat enim libero, \r\n', 3, 7, 0, '2023-04-28 00:00:00'),
(13, 'hfghfghfgh', 3, 9, 0, '2023-04-28 00:00:00'),
(14, 'ghjghjghjghj', 3, 9, 0, '2023-04-28 00:00:00'),
(15, 'ghjghjghjghj', 3, 9, 0, '2023-04-28 00:00:00'),
(16, 'ghjghjghjghj', 3, 9, 0, '2023-04-28 00:00:00'),
(17, 'tyrtyrtyrtyrty', 3, 9, 0, '2023-04-28 00:00:00'),
(18, 'cupiditate omnis ut iure aliquid obcaecati, repellendus nemo provident eveniet tempora minus!', 3, 9, 0, '2023-04-28 00:00:00'),
(20, 'ghgfhfgh fghfgh', 3, 9, 0, '2023-04-28 00:00:00'),
(21, 'aaaaaaaaaa', 3, 9, 0, '2023-05-12 00:00:00'),
(22, 'erterterte', 3, 9, 0, '2023-05-12 00:00:00'),
(24, 'ertertert', 3, 9, 0, '2023-05-12 00:00:00'),
(25, 'tzetztzet', 3, 9, 0, '2023-05-12 00:00:00'),
(26, 'yeryeryeryery', 3, 9, 0, '2023-05-12 00:00:00'),
(29, 'xxxxxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(31, 'xxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(32, 'xxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(34, 'aaaaa', 3, 9, 0, '2023-05-12 00:00:00'),
(35, 'erzerzerzer', 3, 9, 0, '2023-05-12 00:00:00'),
(36, 'aaaaa', 3, 9, 0, '2023-05-12 00:00:00'),
(37, 'aaaaaa', 3, 9, 0, '2023-05-12 00:00:00'),
(38, 'tyrtyrtyrty', 3, 8, 0, '2023-05-12 00:00:00'),
(40, 'dfgdfgdfgdfgdfg', 3, 9, 0, '2023-05-12 00:00:00'),
(41, 'tyrtyrtyrty', 3, 9, 0, '2023-05-12 00:00:00'),
(42, 'rtyrtyrtyrt', 3, 9, 0, '2023-05-12 00:00:00'),
(43, 'rtyrtyrtyrt', 3, 9, 0, '2023-05-12 00:00:00'),
(44, 'dfgdfgdfg', 3, 9, 0, '2023-05-12 00:00:00'),
(45, 'rtyrtyrty', 3, 9, 0, '2023-05-12 00:00:00'),
(46, 'tertertert', 3, 9, 0, '2023-05-12 00:00:00'),
(47, 'xxxxxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(48, 'xxxxxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(49, 'xxxxxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(50, 'xxxxxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(51, 'xxxxxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(52, 'xxxxxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(53, 'xxxxxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(54, 'xxxxxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(55, 'xxxxxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(56, 'xxxxxxxxxxxxxxx', 3, 9, 0, '2023-05-12 00:00:00'),
(60, 'sfdsdfsdfsd', 3, 9, 0, '2023-05-16 00:00:00'),
(66, 'cbcvbcvb', 3, 8, 0, '2023-05-16 18:00:34'),
(67, 'xxxxxxxxxxxx', 3, 8, 0, '2023-05-16 18:01:10'),
(68, 'xxxxxxxxxxxx', 3, 8, 0, '2023-05-16 18:01:25'),
(69, 'xxxxxxxxxxxx', 3, 8, 0, '2023-05-16 18:01:43'),
(70, 'xxxxxxxxxxxx', 3, 8, 0, '2023-05-16 18:02:04'),
(71, 'xxxxxxxxxxxx', 3, 8, 0, '2023-05-16 18:03:14'),
(72, 'xxxxxxxxxxxx', 3, 8, 0, '2023-05-16 18:05:01'),
(73, 'cocowawa', 3, 8, 0, '2023-05-16 18:05:13'),
(74, 'vbnvbnvb', 3, 8, 0, '2023-05-16 18:05:51'),
(75, 'vbnvbnvb', 3, 8, 0, '2023-05-16 18:22:59'),
(76, 'vbnvbnvb', 3, 8, 0, '2023-05-16 18:23:55'),
(77, 'vbnvbnvb', 3, 8, 0, '2023-05-16 18:26:00'),
(78, 'vbnvbnvb', 3, 8, 0, '2023-05-16 18:27:38'),
(79, 'vbnvbnvb', 3, 8, 0, '2023-05-16 18:33:23');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `abonnee`
--
ALTER TABLE `abonnee`
  ADD PRIMARY KEY (`id_abonnee`);

--
-- Index pour la table `aimer`
--
ALTER TABLE `aimer`
  ADD PRIMARY KEY (`id_aimer`),
  ADD KEY `id_abonnee` (`id_abonnee`),
  ADD KEY `id_article` (`id_article`);

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id_article`),
  ADD KEY `id_abonnee` (`id_abonnee`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_article` (`id_article`),
  ADD KEY `id_abonnee` (`id_abonnee`),
  ADD KEY `id_article_2` (`id_article`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `abonnee`
--
ALTER TABLE `abonnee`
  MODIFY `id_abonnee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `aimer`
--
ALTER TABLE `aimer`
  MODIFY `id_aimer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `aimer`
--
ALTER TABLE `aimer`
  ADD CONSTRAINT `aimer_ibfk_1` FOREIGN KEY (`id_abonnee`) REFERENCES `abonnee` (`id_abonnee`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `aimer_ibfk_2` FOREIGN KEY (`id_article`) REFERENCES `articles` (`id_article`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`id_abonnee`) REFERENCES `abonnee` (`id_abonnee`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`id_abonnee`) REFERENCES `abonnee` (`id_abonnee`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`id_article`) REFERENCES `articles` (`id_article`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
