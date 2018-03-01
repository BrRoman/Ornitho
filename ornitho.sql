-- MySQL dump 10.13  Distrib 5.7.19, for macos10.12 (x86_64)
--
-- Host: localhost    Database: ornitho
-- ------------------------------------------------------
-- Server version	5.7.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Especes`
--

DROP TABLE IF EXISTS `Especes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Especes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `groupe` enum('Oiseaux','Mammifères','Reptiles','Amphibiens','Libellules','Papillons','Sauterelles','') NOT NULL DEFAULT 'Oiseaux',
  `descr_rapide` text NOT NULL,
  `abreviation` varchar(255) NOT NULL,
  `ou_trouver` text NOT NULL,
  `descr_son` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Especes`
--

LOCK TABLES `Especes` WRITE;
/*!40000 ALTER TABLE `Especes` DISABLE KEYS */;
INSERT INTO `Especes` VALUES (1,'Bergeronnette grise','Oiseaux','Grise, élancée, longue queue remuante.','berg_grise','Proche des bâtiments, souvent sur les toits.','Tsi-wi (0:15).'),(2,'Écureuil','Mammifères','Bien connu.','ecureuil','Partout où il y a des arbres.','Gloussement amusé.'),(3,'Buse variable','Oiseaux','Brune avec un V blanc sur la poitrine, trapue, ailes rondes.','buse','Prés, champs, lisière de forêts.','Miaulement (0:00).'),(4,'Rougequeue noir','Oiseaux','Noir (mâle) ou brun (femelle, jeune), queue rouge.','rq','Bâtiments.','Chant (0:29) : Trille rocailleux.'),(9,'Grive draine','Oiseaux','Un peu plus grande que le merle, brune.','draine','Bois, parcs. En hiver sur les arbres à gui, ou dans les prés exposés au soleil.','Cri de contact (0:00) : mitraillette.'),(10,'Grive musicienne','Oiseaux','Plus petite que le merle, brune.','musicienne','Haies, sous-bois.','Chant (0:12) caractérisé par la répétition d\'un motif (variable) entre 3 et 5 fois en général.'),(11,'Merle noir','Oiseaux','Bien connu : mâle tout noir avec un bec jaune.','merle','Partout.','Chant flûté (0:56) bien connu au printemps.'),(12,'Mésange bleue','Oiseaux','Petite, très nerveuse. Béret bleu.','bleue','Partout.','Chant (1:05) : ti… tututututututu.'),(13,'Mésange charbonnière','Oiseaux','Assez grande, dessous jaune avec raie noire. Joues blanches très visibles.','charbo','Partout.','Chant (2:02) : titi-piu, titi-piu. Répertoire très varié.'),(14,'Choucas','Oiseaux','Assez petit et trapu.','choucas','Villages (clochers), souvent en groupe.','Cri de contact (0:00) : \"tchac\" caractéristique.'),(15,'Corbeau freux','Oiseaux','Bec blanc et pointu.','freux','Champs cultivés. Presque toujours en groupes, parfois très importants.',''),(16,'Corneille noire','Oiseaux','Plus grosse que le corbeau freux, bec noir et fort.','corneille','Partout, seule ou en couple, parfois en petit groupe.',''),(17,'Geai des chênes','Oiseaux','Beau plumage contrasté.','geai','Forêts et sous-bois.','Cri bien connu (0:00), l\'un des plus désagréables de la création. Parfois imitation (buse 0:10 par exemple).'),(18,'Loriot','Oiseaux','Jaune citron pour le mâle, plus verdâtre pour la femelle','loriot','Forêts. Rarement visible, mais plusieurs fois entendu dans le parc','Chant (0:28) : très beaux sifflements coulants.'),(19,'Pie bavarde','Oiseaux','Blanche et noire, longue queue, bec fort, vol lent et légèrement ondulant.','pie','Forêts, parcs, jardins.','Jacassement caractéristique (0:00).'),(20,'Étourneau sansonnet','Oiseaux','Petit et noir à peu près comme un merle (mais bec noir, et comportement très différent, tant au sol que perché)','etourneau','Partout. Se rassemble en hiver (jusqu\'à plusieurs milliers d\'individus)','Incroyable richesse de répertoire.\nImite nombre d\'oiseaux (milans, buse, chouettes, pics, faucon crécerelle, hirondelle, merle, grives, caille etc.) voire de mammifères (renard).\nIl faut parfois une oreille exercée pour s\'apercevoir de la supercherie.'),(21,'Mésange à longue queue','Oiseaux','Longue queue caractéristique.','malq','Buissons. Surtout aperçue en hiver, se déplaçant de buisson en buisson par bandes de 6-10 individus.','Cri de contact (0:08) \"tsli, tsli\" mouillé.'),(22,'Mésange huppée','Oiseaux','Brune. La huppe et la tête richement décorée sont caractéristiques.','mesange_huppee','Assez rare. Surtout dans les conifères, souvent avec d\'autres oiseaux (mésanges, roitelets…).',''),(23,'Mésange nonnette','Oiseaux','Brune avec calotte noire.','nonnette','Buissons. Souvent aperçue à la mangeoire.','Chant (0:31) : \"tiu-tiu-tiu-tiu-tiu\".'),(24,'Pic cendré','Oiseaux','Vert sombre et gris.','pic_cendre','Bois et sous-bois. Rare.','Chant (0:10) : ressemble au rire du pic vert, mais en plus triste, plus lent, et moins long.'),(25,'Pic épeiche','Oiseaux','Noir, blanc et rouge.','pic_epeiche','Parcs, jardins, forêts. Fréquent à la mangeoire.','Cri (0:16) : \"ki… ki…\".'),(26,'Pic épeichette','Oiseaux','Tout petit (taille d\'un moineau), dos fortement marqueté de blanc.','epeichette','Sur les arbres, bouts de branches.','Chant (0:16) souvent imité par l\'étourneau : \"kikikikikikikiki\" (cf. Faucon crécerelle et Torcol).'),(27,'Pic mar','Oiseaux','Comme le pic épeiche mais flancs roses et calotte entièrement rouge.','pic_mar','Comme le pic épeiche. Parfois à la mangeoire.','Très semblable au pic épeiche.'),(28,'Pic noir','Oiseaux','Grand, tout noir avec une petite calotte rouge. Peut facilement être pris pour un corbeau.','pic_noir','Vastes forêts.','Plusieurs cris caractéristiques : 0:08 et 0:18.'),(29,'Pic vert','Oiseaux','Assez grand, vert avec calotte rouge.','pic_vert','Parcs, jardins, vergers.','Cri caractéristique (0:00) : \"klu klu klu klu klu\".'),(30,'Pigeon ramier','Oiseaux','Gros, barres alaires blanches bien visibles en vol.','ramier','Bois et champs. Très commun.','Chant (00:12) : 5 \"ou\", avec le 2e plus haut et plus fort, les 2 derniers bas et faibles.'),(31,'Tourterelle turque','Oiseaux','Taille moyennes, entièrement grise avec des nuances. Collier noir entier chez les adultes, partiel chez les jeunes.','turque','Toujours proche des humains, généralement dans les villes et villages.','Le chant (00:00) est un roucoulement bien connu.'),(32,'Bruant zizi','Oiseaux','Masque noir et jaune du mâle typique.','zizi','Arbres et buissons, généralement en hauteur.','Chant (0:22) : Son métallique : \"tsi-tsi-tsi-tsi-tsi\".'),(33,'Linotte','Oiseaux','Mâle à teintes rousses et brunes, femelle brune.','linotte','Buissons bas, peut nicher à quelques centimètres du sol','Chant (0:07) : Sons variés exécutés sans ordre.'),(34,'Pinson des arbres','Oiseaux','Barre alaire blanche caractéristique et visible de loin.','pinson','Partout où il y a des arbres.','Chant typique et omniprésent au printemps (0:51) : cascade.'),(35,'Pinson du Nord','Oiseaux','Couleurs orangées pour le mâle.','pinson_nord','Parfois à la mangeoire, seulement en hiver.',''),(36,'Serin','Oiseaux','Petit, jaune et brun.','serin','Mâle chanteur souvent posté sur un arbre ou un mur au printemps.','Chant (0:23) : Long trille métallique monocorde.'),(37,'Verdier','Oiseaux','Massif, vert olive, gros bec, bord de l\'aile jaune.','verdier','Grands arbres : tilleuls ND de Lourdes.',''),(39,'Fauvette à tête noire','Oiseaux','Plumage gris avec un béret noir (marron clair pour la femelle et les jeunes de l\'année).','fatn','Buissons et sous-bois - Très commune mais difficile à voir (cachée dans la frondaison).','Chant (0:35) : d\'abord son râpeux puis mélodie flûtée et coulante.'),(40,'Pouillot véloce','Oiseaux','Teinte générale assez neutre (marron à olive), discret sourcil clair.','pv','Buissons et sous-bois - Très commun mais difficile à voir (caché dans la frondaison)','Cri (0:00) : \"huît ?\" interrogatif, très fréquent en automne.\r\nChant (0:20) : \"chif-chaf\", qui lui a valu son nom anglais (chiffchaff), omniprésent au printemps.'),(41,'Faucon crécerelle','Oiseaux','Ailes fines (ce que ne montre pas la photo), longue queue.','crecerelle','Champs cultivés, prés, milieux ouverts.','Cri (0:00) : \"kikikikikiki\".'),(42,'Faucon pèlerin','Oiseaux','Plus massif et ailes plus larges que le F. crécerelle.','pelerin','Falaises uniquement.',''),(43,'Milan noir','Oiseaux','Grand, très sombre, queue moyennement fourchue.','milan_noir','Milieux aquatiques, canal de Bourgogne.','Trémolos aigus (0:00).'),(44,'Milan royal','Oiseaux','Grand, queue rouge très fourchue.','milan_royal','Bocages, prés, vallons ouverts.','Cris aigus et \"secoués\".'),(45,'Chouette chevêche','Oiseaux','Petite (une grosse balle de tennis), vol ondulant.','cheveche','Autrefois surtout dans les saules têtards, les vieux pommiers.\r\nAujourd\'hui de plus en plus dans les grands bâtiments de ferme avec des trous dans les murs, voire en plein village.\r\nFacilement audible depuis les terrasses au mois de mars (Ferme Gros, Château des Prés).','Chant (0:54) : \"tihou ?\" interrogatif'),(46,'Chouette effraie','Oiseaux','Blanche avec un visage en forme de cœur.','effraie','Vieux bâtiments, ruines, clochers.','Chant (0:00) : long \"shhhhh\" lugubre faisant penser à la respiration bruyante d\'un dormeur, souvent en plein milieu de la nuit.'),(47,'Chouette hulotte','Oiseaux','Teinte générale marron. Vol ample et souple.','hulotte','Arbres, vieux bâtiments.','Le chant du mâle et la réponse de la femelle (0:27) sont bien connus.'),(48,'Roitelet huppé','Oiseaux','Teinte vert olivâtre, raie jaune bordée de noir.','roitelet','Apprécie surtout les arbres résineux (sapins de la terrasse ND de Lourdes).','Chant (0:10) : motif aigu répété 4 à 6 fois, avec un trille à la fin.'),(49,'Roitelet à triple bandeau','Oiseaux','Semblable au roitelet huppé, mais avec sourcil blanc bien visible.\r\nCrête orange chez le mâle.','rtb','Buissons, lierre, haies de charme des terrasses.','Chant (0:21) : répétition rapide d\'un même son fin avec léger accroissement de l\'intensité, légère montée, et parfois bref trille final.'),(50,'Troglodyte mignon','Oiseaux','Tout petit, marron, queue dressée à la perpendiculaire du corps, souvent penché en avant.','troglo','Forêts et sous-bois (pentes).','Chant (0:30) : incroyablement fort pour un si petit oiseau.\r\nSérie de sons métalliques et de trilles, avec toujours des répétitions de motifs.'),(51,'Rougequeue à front blanc','Oiseaux','Ressemble au R. noir, mais tout le dessous est rouge, et un sourcil blanc et large barre le front du mâle.','rqafb','Arbres.',''),(52,'Hibou grand-duc','Oiseaux','Très grand (une grosse buse), yeux rouges.','gd','Falaises uniquement. Chante aux alentours (cimetière, clapiers…) pour marquer son territoire.','Chant (0:00) : \"ouhou\", avec 2e \"ou\" plus grave, mais pas toujours audible.\nRires \"sataniques\" (c\'est le terme scientifique !) (0:33): \"hin-hin-hin\".'),(53,'Rougegorge','Oiseaux','Rond, marron, gorge rouge. Souvent peu farouche.','rougegorge','Buissons, potager, jardins.','Chant timide (0:23).'),(54,'Lérot','Mammifères','Masque noir et blanc.','lerot','Vergers, habitations.',''),(55,'Loir','Mammifères','Plus grand que le lérot, gris uniforme dessus.','loir','Vergers, habitations.',''),(56,'Renard','Mammifères','Bien connu.','renard','Partout.','Jappements (0:00) fréquemment audibles en hiver/début de printemps.'),(57,'Couleuvre à collier','Reptiles','Avec une tâche blanche à l\'oreille. Queue à rétrécissement progressif.','coul_a_collier','Milieux humides.',''),(58,'Vipère aspic','Reptiles','Tête triangulaire, queue à rétrécissement brusque.','vipere','Endroits secs et caillouteux.',''),(59,'Lézard des murailles','Reptiles','Bien connu.','lezard','Partout.',''),(60,'Citron','Papillons','Jaune avec une petite pointe au bout des ailes.','citron','',''),(61,'Paon du jour','Papillons','2 grands ocelles bleus au bout des ailes.','paon','',''),(62,'Grande sauterelle verte','Sauterelles','Sauterelle grande et verte :-)','gde_sauterelle_verte','',''),(64,'Grillon champêtre','Sauterelles','Bien connu, souvent entendu mais très difficile à voir.','grillon_champetre','Prairies.',''),(65,'Crapaud commun','Amphibiens','Gros avec des verrues','crapaud','Milieux ouverts, potager.',''),(66,'Salamandre','Amphibiens','Jaune et noire','salamandre','Potager, également sous les plaques des regards de conduites d\'eau.',''),(67,'Grenouille verte','Amphibiens','Très connue','gren_verte','Milieux humides.','Coassement bien connu.'),(68,'Grenouille agile','Amphibiens','Brune et noire. Lignes dorsales symétriques.','gren_agile','',''),(69,'Grenouille rousse','Amphibiens','Brune et noire. Lignes dorsales se rejoignant au niveau de la nuque','gren_rousse','',''),(70,'Sittelle torchepot','Oiseaux','Comme un petit pic. Évolue le long des troncs d\'arbres, parfois la tête en bas.\r\nBleu-gris dessus, rose-orange dessous.','sittelle','Partout où il y a des arbres.',''),(71,'Grimpereau des jardins','Oiseaux','Un peu comme la sittelle, mais brun moucheté, et bec très fin et arqué.','grimpereau','Partout où il y a des arbres. Également capable de parcourir les murs à la recherche d\'insectes.',''),(72,'Couleuvre d\'Esculape','Reptiles','Grande couleuvre sombre.','coul_esculape','',''),(73,'Lièvre','Mammifères','Grand, longues oreilles.','lievre','Champs, lisières de forêts.',''),(74,'Flambé','Papillons','Grand, blanc et rayé.','flambe','',''),(75,'Machaon','Papillons','Grand, arrière des ailes sombre.','machaon','',''),(76,'Hirondelle rustique','Oiseaux','Gorge rouge, filets à la queue. Vole à faible hauteur.','hir_rust','Près des bâtiments.',''),(77,'Hirondelle de fenêtres','Oiseaux','Ressemble à l\'hirondelle rustique, mais plus trapue et vole plus haut.','hir_fen','Près des bâtiments.',''),(78,'Martinet noir','Oiseaux','Tout noir, ailes en faux, extrêmement rapide. Vole très haut.','martinet','Toujours en vol à proximité des villages.','Cris suraigus.'),(79,'Torcol','Oiseaux','Gris et marron, parfaitement camouflé et immobile sur les branches.','torcol','Vergers.','Le chant du mâle se fait parfois entendre dans le parc au printemps.'),(80,'Chardonneret','Oiseaux','Petit et très coloré.','chardo','Buissons, rosiers, arbres isolés.','Comme un tintement de clochettes.'),(81,'Moineau','Oiseaux','Petit, marron, gros bec','moineau','Près des bâtiments.',''),(82,'Sympétrum sanguin','Libellules','Rouge avec du noir.','symp_sanguin','',''),(83,'Libellule déprimée','Libellules','Corps épais, bleu-gris.','lib_depr','',''),(84,'Caloptéryx éclatant','Libellules','Fin, bleu métallique, ailes partiellement noires.','calopt_eclatant','',''),(85,'Héron','Oiseaux','Grand échassier de couleur grise. Cris audibles dans la vallée de l\'Ozerain, même la nuit.','heron','Lieux humides, prairies.','Cri sonore, aigre et croassant (0:00).'),(86,'Coucou','Oiseaux','Taille d\'un pigeon, gris. Souvent entendu mais difficile à voir.','coucou','Forêts.','Le chant du mâle au printemps est bien connu.'),(87,'Rossignol','Oiseaux','Marron, sans caractère particulier.','rossi','Buissons épais. Difficile à voir.','Très beau chant (0:15), audible tant de jour que de nuit, par les chaudes nuits de fin de printemps.'),(88,'Huppe','Oiseaux','Taille d\'un merle. Très colorée, avec une huppe repliable sur la tête.','huppe','Vergers, vieux arbres fruitiers. Très farouche.','\"Oup-oup-oup\" (0:00) caractéristique, audible d\'assez loin.'),(89,'Œdipode turquoise','Sauterelles','Criquet assez gros, parfaitement camouflé. Le \"turquoise\" n\'apparaît qu\'en vol.','oedipode','Terrasses ensoleillées.',''),(90,'Grillon des bois','Sauterelles','Plus petit que le grillon champêtre.','grillon_bois','Lisières de forêts.','\"Rrruuu, rrruu\" très doux et paisible (ce que ne rend pas l\'enregistrement).'),(91,'Decticelle cendrée','Sauterelles','Trapue avec de grandes antennes.','decticelle_cendree','Clairières et bordures de forêts.',''),(92,'Æschne bleue','Libellules','Grande libellule avec des tâches bleues et vertes','aeschne_bleue','Bassin',''),(93,'Gomphe à pattes noires','Libellules','Grande libellule sombre avec des pattes noires.','gomphe_pattes_noires','Bassin, potager',''),(94,'Piéride du chou','Papillons','La plus grande Piéride, grandes tâches noires','pieride_chou','Partout',''),(95,'Mante religieuse','Sauterelles','Bien connue, grande et verte','mante','Milieux herbacés.',''),(96,'Mulot','Mammifères','Petit, teinte marron, grandes oreilles et longue queue','mulot','Milieux forestiers, à la mauvaise saison également proche des bâtiments.',''),(97,'Piéride du navet','Papillons','Blanc avec des nervures soulignées de gris.','pieride_navet','Lavandes.',''),(98,'Bouvreuil pivoine','Oiseaux','Trapu, bec épais, béret noir, dessous rouge chez le mâle, brun chez la femelle.','bouvreuil','Arbres et buissons. Très farouche.','Petites strophes tristes (00:16).');
/*!40000 ALTER TABLE `Especes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-01 20:45:08
