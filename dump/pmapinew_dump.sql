CREATE DATABASE  IF NOT EXISTS `pmapinew` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `pmapinew`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: pmapinew
-- ------------------------------------------------------
-- Server version	5.7.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aboutme`
--

DROP TABLE IF EXISTS `aboutme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `aboutme` (
  `abm_id` int(6) NOT NULL AUTO_INCREMENT,
  `abm_emp_id` int(6) NOT NULL,
  `abm_aboutme_text` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`abm_id`),
  UNIQUE KEY `abm_id` (`abm_id`),
  UNIQUE KEY `abm_emp_id` (`abm_emp_id`),
  CONSTRAINT `fk_abm_emp_id_ref_emp_id` FOREIGN KEY (`abm_emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutme`
--

LOCK TABLES `aboutme` WRITE;
/*!40000 ALTER TABLE `aboutme` DISABLE KEYS */;
INSERT INTO `aboutme` VALUES (1,123121,'Madison is a director of brand marketing, with experience managing global teams and multi-million-dollar campaigns. Her background in brand strategy, visual design, and account management inform her mindful but competitive approach.'),(2,112234,'Madison is a director of brand marketing, with experience managing global teams and multi-million-dollar campaigns. Her background in brand strategy, visual design, and account management inform her mindful but competitive approach.'),(3,123456,'Madison is a director of brand marketing, with experience managing global teams and multi-million-dollar campaigns. Her background in brand strategy, visual design, and account management inform her mindful but competitive approach.');
/*!40000 ALTER TABLE `aboutme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `badge`
--

DROP TABLE IF EXISTS `badge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `badge` (
  `bdg_id` int(6) NOT NULL AUTO_INCREMENT,
  `bdg_title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bdg_img` mediumblob NOT NULL,
  `bdg_img_type` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bdg_desc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bdg_type` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`bdg_id`),
  UNIQUE KEY `bdg_id` (`bdg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `badge`
--

LOCK TABLES `badge` WRITE;
/*!40000 ALTER TABLE `badge` DISABLE KEYS */;
INSERT INTO `badge` VALUES (3,'GOLDEN STAR',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0	( \Z%\Z!1\"%)+...383-7(-.+\n\n\n\r\Z-%&.12+-/.----/-0///----------++-----------//--------ÿÀ\0\0±\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0G\0\0\0\0!1A\"Qaq‘2R¡±Á\Ñ#Bb‚3r’¢²\áğ$cs\ÂñCSdtƒ³\Ó4ÿ\Ä\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\02\0\0\0\0\0\0\0\0!A\"1Qa±Á\Ñq‘\áğñ#Br¡4²ÿ\Ú\0\0\0?\0\Üa@B„\0„a´jV\Æ\Ü\î\'4öªÛ¦,m¿\î\í€y[kª\Õ4\ØYE†~¶n­$ƒ¸\0±6\0\\ë•ªb\à–\ÎK0=¼<£z\Ô\ê\æ3^‹ŸiTk’üA€m¿Ujsõ?şj­”4†\äv\êV\Öı\âYvĞ§F™ª\íeÌÁzÉ5TT€T‹\ÂÛ­\"°\Û9ó/;Sœ§Gö\nx_ñ?´\Ë\ê\ëÀ\'v.Õ¨\ÕJ\ÖyÁšû6Ş‡óZ\Ç\ÎO³©•P$¦Î¤2\Ñõ\İ¯´®¬2	\Õ\Ú{`Z5Cˆ¤‡\Øu÷¯ùşoñX\ÕA©½\Â\0\æŠMp\î\0B€„ !B\0Bh\í\n\éˆ\æ\Ó&RÀ`zòóñ€Kâ‘deKmø\Ùö›²•jv$u`D\ÇcÒ’İ§r\çûvÀ$ñµƒ‰‰Ú´Á\Ê/Q½•-ºW±[U\ë^\É\ìß¨ş/‡d“À`*,/Y\Z\åúÀ\Ó5\ßRRŠöô\Ò((\á\Ç\í1Uõ) y(ù\Ïf®ö%\Ï\æ?@\Ü\0ğ€\"W\rÁ÷\æù™\æZ\\\ï4»\'ˆ€$\Ê\ã\Õ\\\Â6}£MMª+§m®<·\Ç|\ÇV‘L\ík:û.8F,Pu¨8\åõ‡zDkU\Í\Í\ï~7\ß\Ø\Ô³\Ó-‡©À‚J}W\ÃHşÏ¢bVüªoó\Ü\Ş0	\ÚX•Tó\Ö6¥µƒ\ÔƒN&Am#¥‰l\é V\ÖÃ¨øbÜ#œ¹6\è`¸F•v•%\Ş\ã\ãğ‹\á\ë‡PË¸\î\áñ€)B\0B€„ \Ê065\ÛÈ­´h½j-N¢±é¡±\àEÇ¼O1t<MD e©÷«p7\îqóˆ\â\ê­5¾PZöQar\Ü \Ğ\Çä²¨\Ì\çrõ~f\ê¾pU+T\Ër\î\Û\Ïù¢¨’\Ôğ­p£¥Z¦¬\Ü\0ù(–MŸ³–’\å]Iõ›‹§dº´h\á,¹MZ\ÙsP:#P	,@PH ©±°\Ğ\Ã·ª÷”T_€c\ÒH\Ê\ç²\â!·\è}û†\ÔCc¨+Í€€õŒÀ\é\×$6®\n˜ •[Jk`4l\Ä(\î ›ß°À$)UFL\àŒ¼I\Ò\İy¯\êÛ¶2©¶0\ãuLÿ\0ò\Õ\ê{\Ğ\ïŒöV\ÊJ\Æõ:A-¡\âOn·\Úı\Ò\ÅO‹¢¨8/üYN\ê5\Ïr\'\ÍÁ‡üPq¡\\~„ÿ\0ô“¥g% ‹µhñ,Ÿ¼ñZ\Şø\àÖ§\Ô\ç Ô¾`Tw‘ğ\ß$ˆ;À=\âAm­ŸI2T\0\\(mf`G]€\'³\\FÜ±i}@bÁ\ØuŠJ¬\Ê;_/„”\Ù[S0Ë”­\ÅÚ“;Ç¼x\Æ[\'O%Gs}\å\Ø\èM%˜\0n\Z\0c°‡Ş¢nŠ3“f`\×\ß\Ø\ï…\nA·ªt*xv±!v¶\ÎjWjdógx\â½ÿ\0–>§u7N“‡]İ„œ …¹=r÷„¥‘z€\éT\ÚxC‡©™E\Ğú¿”õ}?´\çş=_\Ú÷/\Òr„a±ª\Ôzy\ê“»@4\à! 1;b¶vE¦ŠTş&\'C¸€\0\ÒO\ÈNRP\0-`@eĞ‹™Nñ\ÚFøN+¨\èõ*/@’¥·\èEÉ½ŒfjfcP\î\Z(ù÷˜\ãR\ë§\â\ã\Ùl&wGE5ñü?_¾\ÇÀsjY¿hú·`à£º?\Ë:„Ar“fg\âTY­¿-\î\íS3 5¹®d‹Œô\Û÷l\á‰j@&\İrù+| \Ù\nªk©\n¤À›\0¤ƒñ^>\è …G*AV*F\â\r÷‡I!Kn\Ö]\ëN§}é·‰\ÈH\è\ËhWujjŒ«˜µ\Ë)a`·\àE»ä¥YO(\ì5 |*%¼\Û,ğò‹ÿ\0NÃ¾¥?úI•*¸V©›p\Ê\Â*\åBw]µ%ˆ\ê\í(¢©Yra\Î)b?(e#5·k®’t®\Ò2X+m\Ê\í¢¥*}¤½S\à:\ã#\Ş\ì\Ùİ™\Ş\Äb: \êB(P/a­…\ïh\ßf\Ög¤¬Ş±½\ì-¨$n\áº9\Ö	8\Å\âÈ§\ÍX\åf\Ôfªm¥%K±6\Óu\ä\Ç&¶{\0j¿¬\×7\àI\Ğ\åü \0£®\Äñ¶~\Í¹\ÖÀ[\Ü\Ù[‹7™2Ø†\ëò\Ò@ósªWS9\ZõOYóˆ³³\ç\0š\ÇQ¦ÛŸq\ên\ÎTR…ªs—)³vk¼uõ\É:ôy\êMN\ç:t\Ğ\Ü\ßó,kµ\×:S¯ÄŒû\ãqñ³\r‹¤@\ëa¸_\äc©`è³¸U\Şeó†\Ğ \áÇ¬ñ0\á@#6\İJª¹©›/â°»\Ñ~ºÀ˜İ[üeÊµEPKwJ~-“9æ¯î¾–=\0S¸\'²\Ã\ÆXvF%1\Öuú{¤m:gûI\à-§VaA!m|=H¥\ìn¬/»2°a~Ëˆö&\Õ@€R±xG¦B¸± ‘¸‚†\Äw9Ò¥ü\ì¿Äô—]±…5SOYu_˜ñø*C]\nn`A[ğu7ñ=\æLz\Èg˜uÀ(\ršú($8\åÀ\âDæ‡R·‰w¦ş|z\ç›;Nj\ê\0„2=\Ë.ª\nho|\ÃwPñù‰jzgª\Î:;”_\ï\İV:v‘\Ä\Ìñ\È\Ä_d~Æ™\ë¿ˆ–ù\Çô¨3z¢ö‰Ó§¹Tu\0;€I\Ì5‹n;\Ï|Á¼¼™a)”@§~§\Ì\Şt\Æz\Æ&\Í 4IŒ¢l`\n\á«\äun£¯v\ã\î’\Üæª \İ\ë/x\Ô}$+`Á\â/H\Ô/\áÿ\0hcm5¢o’÷½õğ–¼Ö¥SsXõ‡\\¢\Z\'1AÀ‘ï´¶\ìŠ)€\î:\\Wo\Â9BS\Û\ØJªæ£±©O‡Rw \Ó\Æ1Sr;m-ûONŠf¨w\èyc\ÔMZ€¾`¡`BË¬\ÑN¨<}òB6E\éÛ³\çÀ	\Ë5§Œñ0I\ë½\âdÀ™Á0@cpKSx³p#N\ëõˆè˜™0\nj«£s´‚g>½:€\äb®mª¸İ›ˆ\Ğ\Å6n\ç%j•-€°\0~_Âƒ€v½O¾ePš*$5ó5\Ï\áaørŸ\çdz¤¹¯k¨#M-\ë1øÌµ<`Œ¨a•7o\ë;ÿ\0´\è˜1‰±˜’bL\Ğf‰±€bl`\Æ&\Æ\03I›W GaùıdK´q€«`\İ\ĞO‹d¨Ì§şrÇ²9L­Ñ©¡\ëúıe[…j\Õ\n©u\É<4\Z2\å²y=N–¬37n¾}p	?µ\Óö\×\ÌOb¶À*»k`\Ö5Mt~wò6…GR\Ò¾ğAVÕ…ˆğ—\Üf))#TseQr\Î2‹Æµw\çX[‚/²½½§|Ş•At<o\æ/ò‹»F\r\Ã\ÒC\Å.\Ö\İ\î´vğ	œgÀg`\ÆpL\0&5\Æâ–šk\Øp³¢ª,N‚,\Í 6­Tj½\'#›\0£\Â\å³-úYX. Xf±\ÔÀ\Z¦cv{gbY­¨¹°°<B€u\å¿\ï_+X\îm;§Œjj\'şe3ÿ\0ÈŸYÉ¯OZ}\ÙÔŸ\áRI€O1‰3D0•\Ã  “\Â\ä2\ŞİŒñ´\éŒ\0cc160ŒI\Ú\Ñ\n\0*<(Öµ:‡\ÃüóŒ\ëU\ã\Ä\×\ËEW‹›Ÿ\Ò\0Ä•l\ÊlF \Ë\Ç&yEÎ®W¥\ìm\àx„…\ä†\Ê\ÃW¹-QN¨}P?	\0zÀöñõ‡\Â\"*\áğ\ê€/B\0\Ãk\ìµ\Ä&Ff\0Œ¤o\ápF²·Œ\äız`°t¨ o\Ğk=R\ç*Ü±\Çú¸e>·J¡ü£r÷“ğ€%\ÉlgH§¶3(ü\Ã\ê>c\r‹‘½MˆøJ…:…HeĞ‚\ïñ¯\Ì\âW?aˆ\\{ø¼A×¸´\ÈLMŒê¨±øv¸‘0\0˜›1‰\Z‹‹\âúñ\Â\åzÁT³*‚I;€\Z“+\ï\\33•d\Ìo\í\é`£0Qtkqf®I\íJ\Ğ¸2±_k. x6Vı22\0‹biñ«ON·_3\Å\ÆSü.÷/Sú·£ŒÇ®‰\Ş``«\Ü[+)Ô€\ÙnG_D›wb¬Ñ¥1¨·\áŒ\Æ16h3D*<\0¨ñZ“Úµ#,Mp$\è501532§^§±Fø\ÏŠ\Ì\ä\ßE\èş?H‹\âJ©¨}zš \ê>¾Q]…´>\ÍVC¨S\Ó\ãu:1£„O`QÅ­E«B‹µ·\ÜeV^*Y¬-ğ «\áª]A·ü\Ö{Eƒ\0F½»üŒR\0B€3dPªoR’±\ë#_1¬}G”[*…š•v`Iˆ\ë:\ÕñŒ6}u³Q«û7\ã\ì?9!\Êl.\"­u\ÉE™l\r\Ô\Çy\ÔõXH\ê›º©g§•Fş’p0	\\+›#\rTÙ‡\ìÛ‡—ñŒ«\Ö\ËZŸ2í•—öU=“\ì·Zü#M™\Ê\ÃJ¯\Ù1\ßwTh•«Pp\ÌÛµ¶¸\î6;À°\íIµDPÀ…1k`l \Ş\áˆ\Üw]€½\ã<Mjhi\å§LP`\0¨	VRM…ˆo$wõ\ë»\ÙW8e\ÉQ…—[¿\â:q¬	‰\ÚtPµ³\Ôk”§—+ó–~\î\×0˜€7“ ’I1\İ#OZ¾¶\\·\Ê@*\Äh.sZ\Ã}‰~•MÌ¤õ^Í¥Áo¸±Ó²1B´hT­Nš£U ¢€\0\Ì\ÖJBÃ¿1\ï1ºQB!¼«O^%A\Ïrz\ÊS\ÄÀ%u™\Ï0;c]§s\ÎØÂ‘e±\"\Ì3\ê\0;ıY´j¦®5/WMMŠ&f\"×µˆ¦n8\Ş20K6!\Ê\rÏ²½#\ãm\Ş2>¶756©c•I^l­ply\Æü#‰‡^\èm\\\Ê	[\Ù]i]µ\Ó=‰\0‹ZÖS(\nª\ài\Ç]C\êMÍ‰üİ\Ø\êŠ*%B\ê¬3L·\ßô¸;˜\â\Â6\Ä\â\\U)™Ha˜)\Z‹o\rcp:»#:ŠªMZ…±Êƒ³‰\'¯\Ê\ĞuªHJ¸T–&\ÔS[ûd\Ò\'\ëšÀ±&jIÑª}\ã#ªWçˆ°\ËE}Uİ\ÜHà½’H\á\ÜÖ¨PNT¿\áL\ÄvË–5l \èT£³\0ùM«‘xş{\n\Äh~?2< ö\Ïl=¢\Î\\(°b\06\à,:†IB„\0„!\0$7*\ëeÃŸ\ÌÊ¿?”™ñ˜*u@0\à\\\Úû¸o\ß\0Î•	\Ü/\íl:\É\Ì\â0«^™ü¤ğ\ëC5\ndMB÷\0&m¶ê†¬\ÅuI\â	6€E`*\â0–\\\Üõ¢·\âQÕ®\á\Øn:ˆ“\ÇjÓ¬Œ¯uÌ¥K\r\àû\Û\Ş$C]o¨\rl\Ùn3[A|»\í®øŠb²›\Ø\È\Æ:…Z¡l\éQS3cl¢\ë\ê\Üb5ö\ĞC‰K\Ób^‘§|¡\é¶]W&¤i \İf\ã\Ñ\Å\áXı\æz-\í-\í\æ¿1%(`óôûN‘üµ21ñ±\İ#\äÿ\0Š¡¬£=6\\™•´]VÁ:\\¾3Š›U§N›§F›\\‚]ú\08\Ø1ñ’µvF\Ğ\à\ØWx/\î*lÍ¡ÿ\0¥Q\ßPû­#*\ÕC\n`Óª\ÏNŞªf!\éÔ²Ø\"ñ¶\"‰=*¹)¨ K9#ÚªÛ†»€ñ\ãp\ÕZûN…!\ÕL >no\îxŒ^\ÎC{V\Æ\Ô¯™–ş6OŒ`dr›EI)…¦j·\âmrß®¥VõŒc´\nS!±U9Ú¿‚Šj ö/ó§|\çµ±5­M\áĞ¡\Ì\æú}\Ë\àbp\\\Ëde\Ä^ù\É\ë$\ïğ\ÒI‰w¬sV\ÑA\è\Ó¨\ê\Î\ì0\Ï\Ó^ùjô‡§U…*¢\ëTÕ°½µEC+ù\Ë\ÒôoLœ\Ô_+\r@a§šı œŠ{À71L\\¢ğ°[>+ók–ûõ<;\çx\Zl´\ÑZÙ‚¨6\Ô\\\0\rŒ^B„\0„!\0!@\íŒ`£‡­X\è)\Ów?¥K|§\Í\Í\ËLS¥*(E+*£:\ëQ\í¼–>­ú‡œ\Ûı,bù½—‰üÁiÿ\0>\ëÏö-Õ”uf>@ıfŠ\ÒÁĞ´¥&‹?%‰\\R–$š\é’M\É,..N§U–MU¦œ\åWg{¥]\ìeCj\×j\ÕDõ– aË®½’im\Zµ\ÜÔªå›‡R¥]\Ê;¦º5:r¶\ŞI<ğ4&=+Si‚\ì¤\à¾ñ¬>Î®ua©c Q\ÖL«r7Ş‹°U¨.	\Ü.o\â·òPm\Şw\î©\\QS¸\Ô=mùz‡ø7\ë\á“Cµn£Š\ê,õğ©\Ô\Ì>q\\\'\Û®È¥²\r\Å\Ú\ìw\åMukm\Ù\Ûòwqt•.9úVV$úÔ·=ew\ï8\åf\ÑuZfvDÃ¸jl¦Åœ\è\ÕOY\'A\Ù~¸•EŸiª6òspû5%\Ô\"‹q#\ë,•6;SÃ­u\\kSN¬¡Õ‰*ˆÛ…P\09Nûğ†À\Åavº¥i=\0j\ã)Z\ËUT\ç©\r\İ&\02öö\ë›\í­©Sˆ©‰sg¨\åô>¯² şQ`;¤\Êi#:V²œš|0^¶<˜‚\ÕT¨Ã­J\Õskp<oi€\å-fO¿QˆCs’¦Œ·$ô*u÷\ÎjrÚ­L%\\=eU\ÑiŒF‚¡§˜1J§ñ\è4;ú\ï¾1\Øi™ö[\Üuú\Íª´“‰b«„^´[ù\'·ğÿ\0m\Ù\ë@°\í`\Êş²ó‰”_@f\ë>LÃ»añPo¥Q\\~–>\ë\Zn\à€A\ì:‰ºœµ\Zn\èªzq\Õ÷\îuBl)„!B\0B€„ Ç§:\ä`i >½e¿r«·\Ä	”rGz®z“\âG\Òi>\ë…NÚ­\ä‰•.A\áo\Ï7ü±ıFQº—v¨GM¦¯¾¼Ü²§f¤½Œ\Şğ>FV\Í9n\å\Í?õ uR_ys+ÆœÂ“\è\"\Õ*}04\ç…c\ÓJr\Ôo ã§“nL\İ3Œ-V¦Ù•ˆ;®§x=†^6œ¢\à\r\êH\ï¶a ùQ³ù¬UT¶—;ˆ;\Ë&Wœ\ÃS<@\ÈI·\ÂÒµie)\"µeˆ©£3T\ê\ãğ\ê=“¡JI\í7Z¥?e\Ø\ë\İ}\ÄD9¿Qv0\Ê\Ê\ZŠro“\Ódö–ÿ\0\ÃıŒ`)\Ç{-òV¦\çpa~\ã\Ñ>\ã0Ÿ´\'G0h9Eƒ\ËWvŒ üTüœß½\íg\áÜ›°Lû\ÈJé¿Œ\Ê9a³ş\éj[\Ôk\æ\Ó\âµú\Ú=\nøb}R*¯stZ\İ\ÅGñ	¬óƒs\råªš\åøö4\èBñ\ÅB„\0„!\0!@2?Mzøu\ê¦\çÍ€ùF¾p·£Y¿\ÜQ\äƒ\ëô¾\×\Æ ê¤¾öo¤˜ô_…dc\íUsä¨¿)Ë»}g¡q\Óa\Ûï’…\Ë\Äÿ\0Z\ã©i\å¿\ÎWŠK?.Eñø\ÆQ\ä‰ JDE*ÿ\0J?\ä44\â\Û?šµ%·­R˜ó`\'e$—&(\ß†î§¸\Şf\ßR‹d÷¤\í›g¥\\\r53\Şe÷ò‡£‡¸­Dğ\ËQ|z-ğ_99\éi-G:\ê·ô¬©r#\Ích\ß\Õri7s\è?›,¯•,iSulşĞ¯¤\r“•-¥Dşd6>â²°k~’v^l\'8´[ô·A¾ øL·,Î”óÕ‡\êQO³‡ß€€I\é§\É=\É3\É}R4=Ÿ‡û^u½2‡÷×£ı@[ôw´~Ï¤[APó-ÙÀ_õ…–Eø‹Š\ØruU^\ãekv\\)ñ•\îX`P.—+U?WK\Üá¼¦ªR\Ñ6e\Z+{V\ÙóY^?•ò7¸F;hF•aø\ÑXöt‡¸ğ§]<ñ<´¢\ã\'Ö‚„“„!\0!@B[Ò‹\æ\Ú\rùi\Ó_qoú¥\ÇÑ­`µ\ê\æ#\å(¼¾|\ÛCz™•4¥ò…°~\Õ\ÍüLO\Îr\ê-sk¼õ;B*Î¤»tÿ\0\Ë2>U6ln$ÿ\0º\ã\È\åùH¬±öÓ©šµgöª\Ô>n\Æ6´Á3½N† —r\É%ùNø\ì0ÿ\0p{?)–Nr\Zö†÷\ÉşG™g<\r7TñFo¹ùoKã¡†¡şP>s;RA»ÁwG¾h¾—†¸aÿ\00ÿ\0D¡\Ô\ÂJnwTWô¶Sï‘+M“\í¡yófÔq˜@\rz\\x_‘>\é†\ä#C¡\Zñ¡÷\ÍwÑ,\ÔÁ\ä\ãI\Ù?I³¯õ\á(\\¶ÀóX\ê\ËÁˆ¨;œ\\ûóLTt¬š6\\ww5m\ß.+\Ã\è\Ñ–{–ui\í£\' PD·#q¼\Î2‹`Ç›n\ç\èürŸ	mô«³úk\Û\ÕcM»˜f[ø©3<a\çó›\Õ_¶\ì\Æp.^ˆ¨£ı\Å­ß™H£©\åm£ŠTkòÎ—÷\âşC/D»G>¥¾“\\~\ãÜ\æ\rî—¹z2\Ú\Ş5Vı\Z\Ê\É\âuş’<f\Ë:Vò\Õ¶\èn®å©q÷ş\ÓBy\ÈB„\0„\"xš¡œ\îPX÷x%,ğ0^S\×ÍŠ\Ä?û\î6ùMc\Õpt—ÿ\0.‚\ßÁ3K\Ôq}\î\Âı\ìuø\Í\'”;G.µ½‚£õt\Æqmø\ÇkQÔ¨\Ğ_}HÌ¾½zù\Â\Ó\ØH=	å¥‡\Ñøÿ\0_Dõs‡ù\ë+ò{‘Ø¬\Ş\Í7÷\å_œj\ÓÄ©}şµO\âü‰¿K5³UÃÁ*6_¤\Ú;>û+	XV¥U=\Î\Ç\æ€x\Î9yŠ\Ï]³O\â\Íô–ºx<\Û\İTÚ¯“µO„\İI\ï5>\ã“	ÿ\0kmü\×\É\ê÷\"=cr×­H\ît;\Ğ\Øû˜yN½,a\Ç;F°üH\ÈI\Ì?¬\Ê\ß$ñ\\\Ş.‹_BYOs)KG/\ß>O±QOƒ_‰S«…¡“Z­©\n‹÷.?\ÚôEŠ\Ğ\Ã;†(ŒÁf\Ê	Ê»®m\ÂA\ßm.,JjşŒ1Á°f›Ù»/\én˜ş£2|\Ò\İ\è\ï•\ë\'¨Ã¼¹½\Òc=#—¶h\ï-%\Ü\Óôòd%CöLa¶œ\Ícü*\×\Ë7\Äk€Gf\Ëeÿ\0V\ì?FñË”ÿ\0L×¹%‰\ç0Xw;\Í4¼§\á-\Ù\Ë98\Ûqo(Q­\Ï~+>\ä¼!	xóAB\0B€—X\Îk]¯bW \ïr\ç\'¦u\éjTh«9¨Gb‚…\Û\İ0ªñ\\°§¼¹‚\ïò\âgûoY?)\Í\å¯\Æ\Òk”˜»\Ò\í0÷kô›¬Y»,>\'\à\'›c™€\êóÿ\0a8R§ª²\î=t\Şò\î-õGò6¼yKfVj-ˆ\Ø\ÒB\Ú_\æ\Âòw‘|‹©‹\"­[¦¯sT\ìN¡ù¼»5úx\ZkK™¢\\¹-\ÑË¸‹Kôíœ–Y®ûmÂ„” µ<ñ\î]Ÿ#\ç{É®L3·`fÿ\0)\ï-6Á\â\n\Ù=Ú‘ü¼Tö©6\î ñ¶K\åS\Ú~\Ä\Z‹‹-\Ü×…[]P|%Œr‚®j\ìz‚!œÙ¶&\n\Ø\nTHÿ\0ÀU#½,~3?yV\ŞÛ…$(ŸC\ÒLª¨å¤»c/qv\ä·th\Ó\\½>v¢æ›¯Z0¿\é:ü%»oV\ÍB ¿ù~R¥·S.#\Íj\Ã\É\ØIœV\"ô›µ\Âs\î!Ò‹\ï:W’S*‹—Ñ•\â\Óeôk°şÏ†\ç\\Z¥k9¾ğ–\è/f†ş=“;\ä\'\Î/¹¤CT<\ïTñ¶½ƒ´M\È	Ô¶¥û™\ÍÛ·ù[ˆü_¢õùWò\npj\áÀ§[y‘û\Ç\án\Ñ\ã3½„¯Ci\ÔR”©Ğƒ¡ùM\ê@ò›“Tñ6¨\0Z\ÈG\ë#+u„\\\Ûkƒ\Ó\ÖPµÚ³7F«\ÌZ\Â|\×\Ğ\É9_Rõ)·Z‘\ä¼\Ó=b3\ìôğµEşkq+\åj²:£‚K‚Ñš¡ªÙ°uG³]‡šS?34X\'“\ïó._¼\Ø\Åv?rıBt\Ï6„ !0I»[\Ç\Ô\0\İiHu\\\\·ó1nÚ˜–§F¥EB\ìªJ¢‹–n\0ûLbz/\ÅVns\âbY€9\ê1&\çwEnOY\îšj¦ø#§³g\nNUfñ\Éı™‡f\nŠ¥™·($¡/¼”ôu\Òñ u4*:¹\Â4cùFò\í±v\r*Ú’Xñs«óò\ZI9®²‹\Õ.²n6œ\å•O†yóú\"€\0Àh\0\Ğ\Ù=„%£–W¹s°¾×…tP9\Ä\é\Ó?˜~\Ô.<D\ÆT\åMt°÷Ï¡\æ!\é30ø–P,µ~ñ{‰9‡ñ|D¥wO8h\íl»†ÿ\0Eõu¯Q¯ ğœö>‚\Ú\á[œ=\É\ÒÍ–o3)ô/³\îõ±$h R^ófp_35iº„q^Ø¯½¯ÅS\ç¾[ôv†(¸O˜\ró‹l\Ì%J\å(\Óg†\í\äğyœr\ãõ6®\"5,\íQB¨Ô“Í¦\é­ò\'’\ãH±®\Ê°\Ô(Ó¢§ª\ãS\ÆVtw“\î\É~½Ú¥B¸Xù\\šØ‰ƒÃ­\ÖÚ³qv;\Øÿ\0š\0”„%ô±Árss“”º\ØB’bR}&rO\íty\êC\ï\é@ø‹\ÅO\æ\ÓO.1¡!ş’¿ş\àÿ\0õÒš$\Ù;\"\Ö\æÅ…Z¦±\ZX3*+e·’ı\ä\Íz:Z‘m\\·AÒ—!Bl*!B\0B€„ !3¿M[86\"\Ú\Ò{ùCüÁf‰m|V¤i\Ô²:òº°¿eÀ˜\Íe`\İoWuV3\ì\"ù±şË¥L™\ãşûôˆğ_	a„$¥…ƒ	\Í\ÎNO™\Ø4)W«‰U½j¦\ì\çR€\n½CO)IKJN\\XBƒ„!\0!@B„ÿ\Ù','jpg','Golden Star','awards'),(4,'SILVER STAR',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0	( \Z%\Z!1\"%)+...383-7(-.+\n\n\n\r\Z-%&.12+-/.----/-0///----------++-----------//--------ÿÀ\0\0±\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0G\0\0\0\0!1A\"Qaq‘2R¡±Á\Ñ#Bb‚3r’¢²\áğ$cs\ÂñCSdtƒ³\Ó4ÿ\Ä\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\02\0\0\0\0\0\0\0\0!A\"1Qa±Á\Ñq‘\áğñ#Br¡4²ÿ\Ú\0\0\0?\0\Üa@B„\0„a´jV\Æ\Ü\î\'4öªÛ¦,m¿\î\í€y[kª\Õ4\ØYE†~¶n­$ƒ¸\0±6\0\\ë•ªb\à–\ÎK0=¼<£z\Ô\ê\æ3^‹ŸiTk’üA€m¿Ujsõ?şj­”4†\äv\êV\Öı\âYvĞ§F™ª\íeÌÁzÉ5TT€T‹\ÂÛ­\"°\Û9ó/;Sœ§Gö\nx_ñ?´\Ë\ê\ëÀ\'v.Õ¨\ÕJ\ÖyÁšû6Ş‡óZ\Ç\ÎO³©•P$¦Î¤2\Ñõ\İ¯´®¬2	\Õ\Ú{`Z5Cˆ¤‡\Øu÷¯ùşoñX\ÕA©½\Â\0\æŠMp\î\0B€„ !B\0Bh\í\n\éˆ\æ\Ó&RÀ`zòóñ€Kâ‘deKmø\Ùö›²•jv$u`D\ÇcÒ’İ§r\çûvÀ$ñµƒ‰‰Ú´Á\Ê/Q½•-ºW±[U\ë^\É\ìß¨ş/‡d“À`*,/Y\Z\åúÀ\Ó5\ßRRŠöô\Ò((\á\Ç\í1Uõ) y(ù\Ïf®ö%\Ï\æ?@\Ü\0ğ€\"W\rÁ÷\æù™\æZ\\\ï4»\'ˆ€$\Ê\ã\Õ\\\Â6}£MMª+§m®<·\Ç|\ÇV‘L\ík:û.8F,Pu¨8\åõ‡zDkU\Í\Í\ï~7\ß\Ø\Ô³\Ó-‡©À‚J}W\ÃHşÏ¢bVüªoó\Ü\Ş0	\ÚX•Tó\Ö6¥µƒ\ÔƒN&Am#¥‰l\é V\ÖÃ¨øbÜ#œ¹6\è`¸F•v•%\Ş\ã\ãğ‹\á\ë‡PË¸\î\áñ€)B\0B€„ \Ê065\ÛÈ­´h½j-N¢±é¡±\àEÇ¼O1t<MD e©÷«p7\îqóˆ\â\ê­5¾PZöQar\Ü \Ğ\Çä²¨\Ì\çrõ~f\ê¾pU+T\Ër\î\Û\Ïù¢¨’\Ôğ­p£¥Z¦¬\Ü\0ù(–MŸ³–’\å]Iõ›‹§dº´h\á,¹MZ\ÙsP:#P	,@PH ©±°\Ğ\Ã·ª÷”T_€c\ÒH\Ê\ç²\â!·\è}û†\ÔCc¨+Í€€õŒÀ\é\×$6®\n˜ •[Jk`4l\Ä(\î ›ß°À$)UFL\àŒ¼I\Ò\İy¯\êÛ¶2©¶0\ãuLÿ\0ò\Õ\ê{\Ğ\ïŒöV\ÊJ\Æõ:A-¡\âOn·\Úı\Ò\ÅO‹¢¨8/üYN\ê5\Ïr\'\ÍÁ‡üPq¡\\~„ÿ\0ô“¥g% ‹µhñ,Ÿ¼ñZ\Şø\àÖ§\Ô\ç Ô¾`Tw‘ğ\ß$ˆ;À=\âAm­ŸI2T\0\\(mf`G]€\'³\\FÜ±i}@bÁ\ØuŠJ¬\Ê;_/„”\Ù[S0Ë”­\ÅÚ“;Ç¼x\Æ[\'O%Gs}\å\Ø\èM%˜\0n\Z\0c°‡Ş¢nŠ3“f`\×\ß\Ø\ï…\nA·ªt*xv±!v¶\ÎjWjdógx\â½ÿ\0–>§u7N“‡]İ„œ …¹=r÷„¥‘z€\éT\ÚxC‡©™E\Ğú¿”õ}?´\çş=_\Ú÷/\Òr„a±ª\Ôzy\ê“»@4\à! 1;b¶vE¦ŠTş&\'C¸€\0\ÒO\ÈNRP\0-`@eĞ‹™Nñ\ÚFøN+¨\èõ*/@’¥·\èEÉ½ŒfjfcP\î\Z(ù÷˜\ãR\ë§\â\ã\Ùl&wGE5ñü?_¾\ÇÀsjY¿hú·`à£º?\Ë:„Ar“fg\âTY­¿-\î\íS3 5¹®d‹Œô\Û÷l\á‰j@&\İrù+| \Ù\nªk©\n¤À›\0¤ƒñ^>\è …G*AV*F\â\r÷‡I!Kn\Ö]\ëN§}é·‰\ÈH\è\ËhWujjŒ«˜µ\Ë)a`·\àE»ä¥YO(\ì5 |*%¼\Û,ğò‹ÿ\0NÃ¾¥?úI•*¸V©›p\Ê\Â*\åBw]µ%ˆ\ê\í(¢©Yra\Î)b?(e#5·k®’t®\Ò2X+m\Ê\í¢¥*}¤½S\à:\ã#\Ş\ì\Ùİ™\Ş\Äb: \êB(P/a­…\ïh\ßf\Ög¤¬Ş±½\ì-¨$n\áº9\Ö	8\Å\âÈ§\ÍX\åf\Ôfªm¥%K±6\Óu\ä\Ç&¶{\0j¿¬\×7\àI\Ğ\åü \0£®\Äñ¶~\Í¹\ÖÀ[\Ü\Ù[‹7™2Ø†\ëò\Ò@ósªWS9\ZõOYóˆ³³\ç\0š\ÇQ¦ÛŸq\ên\ÎTR…ªs—)³vk¼uõ\É:ôy\êMN\ç:t\Ğ\Ü\ßó,kµ\×:S¯ÄŒû\ãqñ³\r‹¤@\ëa¸_\äc©`è³¸U\Şeó†\Ğ \áÇ¬ñ0\á@#6\İJª¹©›/â°»\Ñ~ºÀ˜İ[üeÊµEPKwJ~-“9æ¯î¾–=\0S¸\'²\Ã\ÆXvF%1\Öuú{¤m:gûI\à-§VaA!m|=H¥\ìn¬/»2°a~Ëˆö&\Õ@€R±xG¦B¸± ‘¸‚†\Äw9Ò¥ü\ì¿Äô—]±…5SOYu_˜ñø*C]\nn`A[ğu7ñ=\æLz\Èg˜uÀ(\ršú($8\åÀ\âDæ‡R·‰w¦ş|z\ç›;Nj\ê\0„2=\Ë.ª\nho|\ÃwPñù‰jzgª\Î:;”_\ï\İV:v‘\Ä\Ìñ\È\Ä_d~Æ™\ë¿ˆ–ù\Çô¨3z¢ö‰Ó§¹Tu\0;€I\Ì5‹n;\Ï|Á¼¼™a)”@§~§\Ì\Şt\Æz\Æ&\Í 4IŒ¢l`\n\á«\äun£¯v\ã\î’\Üæª \İ\ë/x\Ô}$+`Á\â/H\Ô/\áÿ\0hcm5¢o’÷½õğ–¼Ö¥SsXõ‡\\¢\Z\'1AÀ‘ï´¶\ìŠ)€\î:\\Wo\Â9BS\Û\ØJªæ£±©O‡Rw \Ó\Æ1Sr;m-ûONŠf¨w\èyc\ÔMZ€¾`¡`BË¬\ÑN¨<}òB6E\éÛ³\çÀ	\Ë5§Œñ0I\ë½\âdÀ™Á0@cpKSx³p#N\ëõˆè˜™0\nj«£s´‚g>½:€\äb®mª¸İ›ˆ\Ğ\Å6n\ç%j•-€°\0~_Âƒ€v½O¾ePš*$5ó5\Ï\áaørŸ\çdz¤¹¯k¨#M-\ë1øÌµ<`Œ¨a•7o\ë;ÿ\0´\è˜1‰±˜’bL\Ğf‰±€bl`\Æ&\Æ\03I›W GaùıdK´q€«`\İ\ĞO‹d¨Ì§şrÇ²9L­Ñ©¡\ëúıe[…j\Õ\n©u\É<4\Z2\å²y=N–¬37n¾}p	?µ\Óö\×\ÌOb¶À*»k`\Ö5Mt~wò6…GR\Ò¾ğAVÕ…ˆğ—\Üf))#TseQr\Î2‹Æµw\çX[‚/²½½§|Ş•At<o\æ/ò‹»F\r\Ã\ÒC\Å.\Ö\İ\î´vğ	œgÀg`\ÆpL\0&5\Æâ–šk\Øp³¢ª,N‚,\Í 6­Tj½\'#›\0£\Â\å³-úYX. Xf±\ÔÀ\Z¦cv{gbY­¨¹°°<B€u\å¿\ï_+X\îm;§Œjj\'şe3ÿ\0ÈŸYÉ¯OZ}\ÙÔŸ\áRI€O1‰3D0•\Ã  “\Â\ä2\ŞİŒñ´\éŒ\0cc160ŒI\Ú\Ñ\n\0*<(Öµ:‡\ÃüóŒ\ëU\ã\Ä\×\ËEW‹›Ÿ\Ò\0Ä•l\ÊlF \Ë\Ç&yEÎ®W¥\ìm\àx„…\ä†\Ê\ÃW¹-QN¨}P?	\0zÀöñõ‡\Â\"*\áğ\ê€/B\0\Ãk\ìµ\Ä&Ff\0Œ¤o\ápF²·Œ\äız`°t¨ o\Ğk=R\ç*Ü±\Çú¸e>·J¡ü£r÷“ğ€%\ÉlgH§¶3(ü\Ã\ê>c\r‹‘½MˆøJ…:…HeĞ‚\ïñ¯\Ì\âW?aˆ\\{ø¼A×¸´\ÈLMŒê¨±øv¸‘0\0˜›1‰\Z‹‹\âúñ\Â\åzÁT³*‚I;€\Z“+\ï\\33•d\Ìo\í\é`£0Qtkqf®I\íJ\Ğ¸2±_k. x6Vı22\0‹biñ«ON·_3\Å\ÆSü.÷/Sú·£ŒÇ®‰\Ş``«\Ü[+)Ô€\ÙnG_D›wb¬Ñ¥1¨·\áŒ\Æ16h3D*<\0¨ñZ“Úµ#,Mp$\è501532§^§±Fø\ÏŠ\Ì\ä\ßE\èş?H‹\âJ©¨}zš \ê>¾Q]…´>\ÍVC¨S\Ó\ãu:1£„O`QÅ­E«B‹µ·\ÜeV^*Y¬-ğ «\áª]A·ü\Ö{Eƒ\0F½»üŒR\0B€3dPªoR’±\ë#_1¬}G”[*…š•v`Iˆ\ë:\ÕñŒ6}u³Q«û7\ã\ì?9!\Êl.\"­u\ÉE™l\r\Ô\Çy\ÔõXH\ê›º©g§•Fş’p0	\\+›#\rTÙ‡\ìÛ‡—ñŒ«\Ö\ËZŸ2í•—öU=“\ì·Zü#M™\Ê\ÃJ¯\Ù1\ßwTh•«Pp\ÌÛµ¶¸\î6;À°\íIµDPÀ…1k`l \Ş\áˆ\Üw]€½\ã<Mjhi\å§LP`\0¨	VRM…ˆo$wõ\ë»\ÙW8e\ÉQ…—[¿\â:q¬	‰\ÚtPµ³\Ôk”§—+ó–~\î\×0˜€7“ ’I1\İ#OZ¾¶\\·\Ê@*\Äh.sZ\Ã}‰~•MÌ¤õ^Í¥Áo¸±Ó²1B´hT­Nš£U ¢€\0\Ì\ÖJBÃ¿1\ï1ºQB!¼«O^%A\Ïrz\ÊS\ÄÀ%u™\Ï0;c]§s\ÎØÂ‘e±\"\Ì3\ê\0;ıY´j¦®5/WMMŠ&f\"×µˆ¦n8\Ş20K6!\Ê\rÏ²½#\ãm\Ş2>¶756©c•I^l­ply\Æü#‰‡^\èm\\\Ê	[\Ù]i]µ\Ó=‰\0‹ZÖS(\nª\ài\Ç]C\êMÍ‰üİ\Ø\êŠ*%B\ê¬3L·\ßô¸;˜\â\Â6\Ä\â\\U)™Ha˜)\Z‹o\rcp:»#:ŠªMZ…±Êƒ³‰\'¯\Ê\ĞuªHJ¸T–&\ÔS[ûd\Ò\'\ëšÀ±&jIÑª}\ã#ªWçˆ°\ËE}Uİ\ÜHà½’H\á\ÜÖ¨PNT¿\áL\ÄvË–5l \èT£³\0ùM«‘xş{\n\Äh~?2< ö\Ïl=¢\Î\\(°b\06\à,:†IB„\0„!\0$7*\ëeÃŸ\ÌÊ¿?”™ñ˜*u@0\à\\\Úû¸o\ß\0Î•	\Ü/\íl:\É\Ì\â0«^™ü¤ğ\ëC5\ndMB÷\0&m¶ê†¬\ÅuI\â	6€E`*\â0–\\\Üõ¢·\âQÕ®\á\Øn:ˆ“\ÇjÓ¬Œ¯uÌ¥K\r\àû\Û\Ş$C]o¨\rl\Ùn3[A|»\í®øŠb²›\Ø\È\Æ:…Z¡l\éQS3cl¢\ë\ê\Üb5ö\ĞC‰K\Ób^‘§|¡\é¶]W&¤i \İf\ã\Ñ\Å\áXı\æz-\í-\í\æ¿1%(`óôûN‘üµ21ñ±\İ#\äÿ\0Š¡¬£=6\\™•´]VÁ:\\¾3Š›U§N›§F›\\‚]ú\08\Ø1ñ’µvF\Ğ\à\ØWx/\î*lÍ¡ÿ\0¥Q\ßPû­#*\ÕC\n`Óª\ÏNŞªf!\éÔ²Ø\"ñ¶\"‰=*¹)¨ K9#ÚªÛ†»€ñ\ãp\ÕZûN…!\ÕL >no\îxŒ^\ÎC{V\Æ\Ô¯™–ş6OŒ`dr›EI)…¦j·\âmrß®¥VõŒc´\nS!±U9Ú¿‚Šj ö/ó§|\çµ±5­M\áĞ¡\Ì\æú}\Ë\àbp\\\Ëde\Ä^ù\É\ë$\ïğ\ÒI‰w¬sV\ÑA\è\Ó¨\ê\Î\ì0\Ï\Ó^ùjô‡§U…*¢\ëTÕ°½µEC+ù\Ë\ÒôoLœ\Ô_+\r@a§šı œŠ{À71L\\¢ğ°[>+ók–ûõ<;\çx\Zl´\ÑZÙ‚¨6\Ô\\\0\rŒ^B„\0„!\0!@\íŒ`£‡­X\è)\Ów?¥K|§\Í\Í\ËLS¥*(E+*£:\ëQ\í¼–>­ú‡œ\Ûı,bù½—‰üÁiÿ\0>\ëÏö-Õ”uf>@ıfŠ\ÒÁĞ´¥&‹?%‰\\R–$š\é’M\É,..N§U–MU¦œ\åWg{¥]\ìeCj\×j\ÕDõ– aË®½’im\Zµ\ÜÔªå›‡R¥]\Ê;¦º5:r¶\ŞI<ğ4&=+Si‚\ì¤\à¾ñ¬>Î®ua©c Q\ÖL«r7Ş‹°U¨.	\Ü.o\â·òPm\Şw\î©\\QS¸\Ô=mùz‡ø7\ë\á“Cµn£Š\ê,õğ©\Ô\Ì>q\\\'\Û®È¥²\r\Å\Ú\ìw\åMukm\Ù\Ûòwqt•.9úVV$úÔ·=ew\ï8\åf\ÑuZfvDÃ¸jl¦Åœ\è\ÕOY\'A\Ù~¸•EŸiª6òspû5%\Ô\"‹q#\ë,•6;SÃ­u\\kSN¬¡Õ‰*ˆÛ…P\09Nûğ†À\Åavº¥i=\0j\ã)Z\ËUT\ç©\r\İ&\02öö\ë›\í­©Sˆ©‰sg¨\åô>¯² şQ`;¤\Êi#:V²œš|0^¶<˜‚\ÕT¨Ã­J\Õskp<oi€\å-fO¿QˆCs’¦Œ·$ô*u÷\ÎjrÚ­L%\\=eU\ÑiŒF‚¡§˜1J§ñ\è4;ú\ï¾1\Øi™ö[\Üuú\Íª´“‰b«„^´[ù\'·ğÿ\0m\Ù\ë@°\í`\Êş²ó‰”_@f\ë>LÃ»añPo¥Q\\~–>\ë\Zn\à€A\ì:‰ºœµ\Zn\èªzq\Õ÷\îuBl)„!B\0B€„ Ç§:\ä`i >½e¿r«·\Ä	”rGz®z“\âG\Òi>\ë…NÚ­\ä‰•.A\áo\Ï7ü±ıFQº—v¨GM¦¯¾¼Ü²§f¤½Œ\Şğ>FV\Í9n\å\Í?õ uR_ys+ÆœÂ“\è\"\Õ*}04\ç…c\ÓJr\Ôo ã§“nL\İ3Œ-V¦Ù•ˆ;®§x=†^6œ¢\à\r\êH\ï¶a ùQ³ù¬UT¶—;ˆ;\Ë&Wœ\ÃS<@\ÈI·\ÂÒµie)\"µeˆ©£3T\ê\ãğ\ê=“¡JI\í7Z¥?e\Ø\ë\İ}\ÄD9¿Qv0\Ê\Ê\ZŠro“\Ódö–ÿ\0\ÃıŒ`)\Ç{-òV¦\çpa~\ã\Ñ>\ã0Ÿ´\'G0h9Eƒ\ËWvŒ üTüœß½\íg\áÜ›°Lû\ÈJé¿Œ\Ê9a³ş\éj[\Ôk\æ\Ó\âµú\Ú=\nøb}R*¯stZ\İ\ÅGñ	¬óƒs\råªš\åøö4\èBñ\ÅB„\0„!\0!@2?Mzøu\ê¦\çÍ€ùF¾p·£Y¿\ÜQ\äƒ\ëô¾\×\Æ ê¤¾öo¤˜ô_…dc\íUsä¨¿)Ë»}g¡q\Óa\Ûï’…\Ë\Äÿ\0Z\ã©i\å¿\ÎWŠK?.Eñø\ÆQ\ä‰ JDE*ÿ\0J?\ä44\â\Û?šµ%·­R˜ó`\'e$—&(\ß†î§¸\Şf\ßR‹d÷¤\í›g¥\\\r53\Şe÷ò‡£‡¸­Dğ\ËQ|z-ğ_99\éi-G:\ê·ô¬©r#\Ích\ß\Õri7s\è?›,¯•,iSulşĞ¯¤\r“•-¥Dşd6>â²°k~’v^l\'8´[ô·A¾ øL·,Î”óÕ‡\êQO³‡ß€€I\é§\É=\É3\É}R4=Ÿ‡û^u½2‡÷×£ı@[ôw´~Ï¤[APó-ÙÀ_õ…–Eø‹Š\ØruU^\ãekv\\)ñ•\îX`P.—+U?WK\Üá¼¦ªR\Ñ6e\Z+{V\ÙóY^?•ò7¸F;hF•aø\ÑXöt‡¸ğ§]<ñ<´¢\ã\'Ö‚„“„!\0!@B[Ò‹\æ\Ú\rùi\Ó_qoú¥\ÇÑ­`µ\ê\æ#\å(¼¾|\ÛCz™•4¥ò…°~\Õ\ÍüLO\Îr\ê-sk¼õ;B*Î¤»tÿ\0\Ë2>U6ln$ÿ\0º\ã\È\åùH¬±öÓ©šµgöª\Ô>n\Æ6´Á3½N† —r\É%ùNø\ì0ÿ\0p{?)–Nr\Zö†÷\ÉşG™g<\r7TñFo¹ùoKã¡†¡şP>s;RA»ÁwG¾h¾—†¸aÿ\00ÿ\0D¡\Ô\ÂJnwTWô¶Sï‘+M“\í¡yófÔq˜@\rz\\x_‘>\é†\ä#C¡\Zñ¡÷\ÍwÑ,\ÔÁ\ä\ãI\Ù?I³¯õ\á(\\¶ÀóX\ê\ËÁˆ¨;œ\\ûóLTt¬š6\\ww5m\ß.+\Ã\è\Ñ–{–ui\í£\' PD·#q¼\Î2‹`Ç›n\ç\èürŸ	mô«³úk\Û\ÕcM»˜f[ø©3<a\çó›\Õ_¶\ì\Æp.^ˆ¨£ı\Å­ß™H£©\åm£ŠTkòÎ—÷\âşC/D»G>¥¾“\\~\ãÜ\æ\rî—¹z2\Ú\Ş5Vı\Z\Ê\É\âuş’<f\Ë:Vò\Õ¶\èn®å©q÷ş\ÓBy\ÈB„\0„\"xš¡œ\îPX÷x%,ğ0^S\×ÍŠ\Ä?û\î6ùMc\Õpt—ÿ\0.‚\ßÁ3K\Ôq}\î\Âı\ìuø\Í\'”;G.µ½‚£õt\Æqmø\ÇkQÔ¨\Ğ_}HÌ¾½zù\Â\Ó\ØH=	å¥‡\Ñøÿ\0_Dõs‡ù\ë+ò{‘Ø¬\Ş\Í7÷\å_œj\ÓÄ©}şµO\âü‰¿K5³UÃÁ*6_¤\Ú;>û+	XV¥U=\Î\Ç\æ€x\Î9yŠ\Ï]³O\â\Íô–ºx<\Û\İTÚ¯“µO„\İI\ï5>\ã“	ÿ\0kmü\×\É\ê÷\"=cr×­H\ît;\Ğ\Øû˜yN½,a\Ç;F°üH\ÈI\Ì?¬\Ê\ß$ñ\\\Ş.‹_BYOs)KG/\ß>O±QOƒ_‰S«…¡“Z­©\n‹÷.?\ÚôEŠ\Ğ\Ã;†(ŒÁf\Ê	Ê»®m\ÂA\ßm.,JjşŒ1Á°f›Ù»/\én˜ş£2|\Ò\İ\è\ï•\ë\'¨Ã¼¹½\Òc=#—¶h\ï-%\Ü\Óôòd%CöLa¶œ\Ícü*\×\Ë7\Äk€Gf\Ëeÿ\0V\ì?FñË”ÿ\0L×¹%‰\ç0Xw;\Í4¼§\á-\Ù\Ë98\Ûqo(Q­\Ï~+>\ä¼!	xóAB\0B€—X\Îk]¯bW \ïr\ç\'¦u\éjTh«9¨Gb‚…\Û\İ0ªñ\\°§¼¹‚\ïò\âgûoY?)\Í\å¯\Æ\Òk”˜»\Ò\í0÷kô›¬Y»,>\'\à\'›c™€\êóÿ\0a8R§ª²\î=t\Şò\î-õGò6¼yKfVj-ˆ\Ø\ÒB\Ú_\æ\Âòw‘|‹©‹\"­[¦¯sT\ìN¡ù¼»5úx\ZkK™¢\\¹-\ÑË¸‹Kôíœ–Y®ûmÂ„” µ<ñ\î]Ÿ#\ç{É®L3·`fÿ\0)\ï-6Á\â\n\Ù=Ú‘ü¼Tö©6\î ñ¶K\åS\Ú~\Ä\Z‹‹-\Ü×…[]P|%Œr‚®j\ìz‚!œÙ¶&\n\Ø\nTHÿ\0ÀU#½,~3?yV\ŞÛ…$(ŸC\ÒLª¨å¤»c/qv\ä·th\Ó\\½>v¢æ›¯Z0¿\é:ü%»oV\ÍB ¿ù~R¥·S.#\Íj\Ã\É\ØIœV\"ô›µ\Âs\î!Ò‹\ï:W’S*‹—Ñ•\â\Óeôk°şÏ†\ç\\Z¥k9¾ğ–\è/f†ş=“;\ä\'\Î/¹¤CT<\ïTñ¶½ƒ´M\È	Ô¶¥û™\ÍÛ·ù[ˆü_¢õùWò\npj\áÀ§[y‘û\Ç\án\Ñ\ã3½„¯Ci\ÔR”©Ğƒ¡ùM\ê@ò›“Tñ6¨\0Z\ÈG\ë#+u„\\\Ûkƒ\Ó\ÖPµÚ³7F«\ÌZ\Â|\×\Ğ\É9_Rõ)·Z‘\ä¼\Ó=b3\ìôğµEşkq+\åj²:£‚K‚Ñš¡ªÙ°uG³]‡šS?34X\'“\ïó._¼\Ø\Åv?rıBt\Ï6„ !0I»[\Ç\Ô\0\İiHu\\\\·ó1nÚ˜–§F¥EB\ìªJ¢‹–n\0ûLbz/\ÅVns\âbY€9\ê1&\çwEnOY\îšj¦ø#§³g\nNUfñ\Éı™‡f\nŠ¥™·($¡/¼”ôu\Òñ u4*:¹\Â4cùFò\í±v\r*Ú’Xñs«óò\ZI9®²‹\Õ.²n6œ\å•O†yóú\"€\0Àh\0\Ğ\Ù=„%£–W¹s°¾×…tP9\Ä\é\Ó?˜~\Ô.<D\ÆT\åMt°÷Ï¡\æ!\é30ø–P,µ~ñ{‰9‡ñ|D¥wO8h\íl»†ÿ\0Eõu¯Q¯ ğœö>‚\Ú\á[œ=\É\ÒÍ–o3)ô/³\îõ±$h R^ófp_35iº„q^Ø¯½¯ÅS\ç¾[ôv†(¸O˜\ró‹l\Ì%J\å(\Óg†\í\äğyœr\ãõ6®\"5,\íQB¨Ô“Í¦\é­ò\'’\ãH±®\Ê°\Ô(Ó¢§ª\ãS\ÆVtw“\î\É~½Ú¥B¸Xù\\šØ‰ƒÃ­\ÖÚ³qv;\Øÿ\0š\0”„%ô±Árss“”º\ØB’bR}&rO\íty\êC\ï\é@ø‹\ÅO\æ\ÓO.1¡!ş’¿ş\àÿ\0õÒš$\Ù;\"\Ö\æÅ…Z¦±\ZX3*+e·’ı\ä\Íz:Z‘m\\·AÒ—!Bl*!B\0B€„ !3¿M[86\"\Ú\Ò{ùCüÁf‰m|V¤i\Ô²:òº°¿eÀ˜\Íe`\İoWuV3\ì\"ù±şË¥L™\ãşûôˆğ_	a„$¥…ƒ	\Í\ÎNO™\Ø4)W«‰U½j¦\ì\çR€\n½CO)IKJN\\XBƒ„!\0!@B„ÿ\Ù','jpg','Silver Star','awards');
/*!40000 ALTER TABLE `badge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `candidate` (
  `cdt_id` int(6) NOT NULL,
  `cdt_first_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cdt_last_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cdt_email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cdt_passport` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cdt_last_designation` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cdt_date_of_birth` date DEFAULT NULL,
  `cdt_gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cdt_marital_status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cdt_created_date` timestamp NULL DEFAULT NULL,
  `cdt_updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`cdt_id`),
  UNIQUE KEY `cdt_id` (`cdt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (1,'Narayan','Pandit','narayana.pandit@gmail.com','J19876','Project Manager','1986-10-10','male','Married','2018-11-02 04:51:28','2018-12-06 01:15:45');
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidateeducation`
--

DROP TABLE IF EXISTS `candidateeducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `candidateeducation` (
  `ce_id` int(6) NOT NULL,
  `ce_cdt_id` int(6) NOT NULL,
  `ce_qualification_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ce_start_date` date DEFAULT NULL,
  `ce_end_date` date DEFAULT NULL,
  `ce_score` float DEFAULT NULL,
  `ce_score_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ce_institution` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ce_specialization` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ce_id`),
  UNIQUE KEY `ce_id` (`ce_id`),
  KEY `fk_ce_cdt_id_ref_cdt_id` (`ce_cdt_id`),
  CONSTRAINT `fk_ce_cdt_id_ref_cdt_id` FOREIGN KEY (`ce_cdt_id`) REFERENCES `candidate` (`cdt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidateeducation`
--

LOCK TABLES `candidateeducation` WRITE;
/*!40000 ALTER TABLE `candidateeducation` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidateeducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidateemploymenthistory`
--

DROP TABLE IF EXISTS `candidateemploymenthistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `candidateemploymenthistory` (
  `ceh_id` int(6) NOT NULL,
  `ceh_cdt_id` int(6) NOT NULL,
  `ceh_company_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ceh_total_experience_in_months` int(11) DEFAULT NULL,
  `ceh_start_date` date DEFAULT NULL,
  `ceh_end_date` date DEFAULT NULL,
  `ceh_relevant_experience_in_months` int(11) DEFAULT NULL,
  `ceh_designation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ceh_remuneration` decimal(10,2) DEFAULT NULL,
  `ceh_nature_of_employment` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ceh_reason_for_leaving` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ceh_employee_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ceh_supervisor_designation` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ceh_supervisor_email` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ceh_supervisor_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ceh_id`),
  UNIQUE KEY `ceh_id` (`ceh_id`),
  KEY `fk_ceh_cdt_id_ref_cdt_id` (`ceh_cdt_id`),
  CONSTRAINT `fk_ceh_cdt_id_ref_cdt_id` FOREIGN KEY (`ceh_cdt_id`) REFERENCES `candidate` (`cdt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidateemploymenthistory`
--

LOCK TABLES `candidateemploymenthistory` WRITE;
/*!40000 ALTER TABLE `candidateemploymenthistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidateemploymenthistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `company` (
  `comp_id` int(6) NOT NULL,
  `comp_name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`comp_id`),
  UNIQUE KEY `comp_id` (`comp_id`),
  UNIQUE KEY `comp_name` (`comp_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (112244,'Infosys'),(112233,'Wipro');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `cust_id` int(6) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_customer_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_service_type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cust_description` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cust_planned_start_date` date DEFAULT NULL,
  `cust_planned_end_date` date DEFAULT NULL,
  `cust_actual_start_date` date DEFAULT NULL,
  `cust_actual_end_date` date DEFAULT NULL,
  `cust_created_date` timestamp NULL DEFAULT NULL,
  `cust_updated_date` timestamp NULL DEFAULT NULL,
  `cust_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cust_id`),
  UNIQUE KEY `cust_id` (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Huntback','Hunt001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `department` (
  `dept_id` int(6) NOT NULL,
  `dept_name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`dept_id`),
  UNIQUE KEY `dept_id` (`dept_id`),
  UNIQUE KEY `dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (3,'HR'),(1,'ITS'),(2,'RMG');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `emp_id` int(6) NOT NULL,
  `emp_firstname` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_lastname` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_gender` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_dob` date DEFAULT NULL,
  `emp_maritalstatus` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_createddate` timestamp NULL DEFAULT NULL,
  `emp_updateddate` timestamp NULL DEFAULT NULL,
  `emp_designation` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  UNIQUE KEY `emp_id` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (112234,'Veersh','Varma','Male','1986-11-02','Married','2018-11-02 04:51:28','2018-11-02 04:51:28','Project Engineer'),(123121,'Suneel','Varma','Male','1986-11-02','Married','2018-11-02 04:51:28','2018-11-02 04:51:28','Project Manager'),(123456,'Satish','Varma','Male','1986-11-02','Married','2018-11-02 04:51:28','2018-11-02 04:51:28','Sales Engineer');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeaddress`
--

DROP TABLE IF EXISTS `employeeaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employeeaddress` (
  `empaddr_id` int(6) NOT NULL AUTO_INCREMENT,
  `empaddr_ia_id` int(6) NOT NULL,
  `empaddr_emp_id` int(6) NOT NULL,
  PRIMARY KEY (`empaddr_id`),
  UNIQUE KEY `empaddr_id` (`empaddr_id`),
  KEY `fk_empaddr_paddr_id_ref_paddr_id` (`empaddr_ia_id`),
  KEY `fk_empaddr_emp_id_ref_emp_id` (`empaddr_emp_id`),
  CONSTRAINT `fk_empaddr_emp_id_ref_emp_id` FOREIGN KEY (`empaddr_emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `fk_empaddr_paddr_id_ref_paddr_id` FOREIGN KEY (`empaddr_ia_id`) REFERENCES `individualaddress` (`ia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeaddress`
--

LOCK TABLES `employeeaddress` WRITE;
/*!40000 ALTER TABLE `employeeaddress` DISABLE KEYS */;
INSERT INTO `employeeaddress` VALUES (2,2,123456),(3,2,112234),(4,2,123121);
/*!40000 ALTER TABLE `employeeaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeebadge`
--

DROP TABLE IF EXISTS `employeebadge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employeebadge` (
  `eb_id` int(6) NOT NULL AUTO_INCREMENT,
  `eb_emp_id` int(6) NOT NULL,
  `eb_bdg_id` int(6) NOT NULL,
  PRIMARY KEY (`eb_id`),
  UNIQUE KEY `eb_id` (`eb_id`),
  UNIQUE KEY `uk_eb_emp_id_eb_badge_id` (`eb_emp_id`,`eb_bdg_id`),
  KEY `fk_eb_bdg_id_ref_bdg_id` (`eb_bdg_id`),
  CONSTRAINT `fk_eb_bdg_id_ref_bdg_id` FOREIGN KEY (`eb_bdg_id`) REFERENCES `badge` (`bdg_id`),
  CONSTRAINT `fk_eb_emp_id_ref_emp_id` FOREIGN KEY (`eb_emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeebadge`
--

LOCK TABLES `employeebadge` WRITE;
/*!40000 ALTER TABLE `employeebadge` DISABLE KEYS */;
INSERT INTO `employeebadge` VALUES (11,112234,3),(12,123121,3),(13,123456,4);
/*!40000 ALTER TABLE `employeebadge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeecontact`
--

DROP TABLE IF EXISTS `employeecontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employeecontact` (
  `ec_id` int(6) NOT NULL AUTO_INCREMENT,
  `ec_emp_id` int(6) DEFAULT NULL,
  `ec_home_phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ec_home_phone_country_code` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ec_primary_mobile_phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ec_primary_mobile_phone_country_code` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ec_secondary_mobile_phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ec_secondary_mobile_phone_country_code` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ec_office_phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ec_office_phone_country_code` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ec_id`),
  UNIQUE KEY `ec_emp_id_UNIQUE` (`ec_emp_id`),
  CONSTRAINT `fk_ec_emp_id_ref_emp_id` FOREIGN KEY (`ec_emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeecontact`
--

LOCK TABLES `employeecontact` WRITE;
/*!40000 ALTER TABLE `employeecontact` DISABLE KEYS */;
INSERT INTO `employeecontact` VALUES (1,112234,'4044998161','91','7788994413','91','7382109811','91','234412113','91'),(2,123121,'4044002011','91','8899777331','91','7639872921','91','404488921','1'),(3,123456,'4044998161','1','3243224324','2','4534654354','3','234234321','3');
/*!40000 ALTER TABLE `employeecontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeecredits`
--

DROP TABLE IF EXISTS `employeecredits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employeecredits` (
  `ecr_id` int(6) NOT NULL AUTO_INCREMENT,
  `ecr_emp_id` int(6) NOT NULL,
  `ecr_credits` int(6) NOT NULL,
  PRIMARY KEY (`ecr_id`),
  UNIQUE KEY `ecr_id` (`ecr_id`),
  UNIQUE KEY `ecr_emp_id` (`ecr_emp_id`),
  CONSTRAINT `fk_ecr_emp_id_ref_emp_id` FOREIGN KEY (`ecr_emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeecredits`
--

LOCK TABLES `employeecredits` WRITE;
/*!40000 ALTER TABLE `employeecredits` DISABLE KEYS */;
INSERT INTO `employeecredits` VALUES (1,123121,200),(2,112234,150);
/*!40000 ALTER TABLE `employeecredits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeeducation`
--

DROP TABLE IF EXISTS `employeeeducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employeeeducation` (
  `ee_id` int(6) NOT NULL,
  `ee_emp_id` int(6) DEFAULT NULL,
  `ee_qualname` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ee_start_date` date DEFAULT NULL,
  `ee_end_date` date DEFAULT NULL,
  `ee_score` float DEFAULT NULL,
  `ee_score_type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ee_institution` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ee_specialization` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ee_id`),
  UNIQUE KEY `ee_id` (`ee_id`),
  KEY `fk_ee_emp_id_ref_emp_id` (`ee_emp_id`),
  CONSTRAINT `fk_ee_emp_id_ref_emp_id` FOREIGN KEY (`ee_emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeeducation`
--

LOCK TABLES `employeeeducation` WRITE;
/*!40000 ALTER TABLE `employeeeducation` DISABLE KEYS */;
INSERT INTO `employeeeducation` VALUES (112233,123456,'BE','1926-11-02','1986-11-02',8.6,'GPA','gitam1','Bachelors');
/*!40000 ALTER TABLE `employeeeducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeepassport`
--

DROP TABLE IF EXISTS `employeepassport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employeepassport` (
  `epp_id` int(6) NOT NULL,
  `epp_number` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `epp_date_of_issue` date DEFAULT NULL,
  `epp_date_of_expiry` date DEFAULT NULL,
  `epp_emp_id` int(6) DEFAULT NULL,
  PRIMARY KEY (`epp_id`),
  UNIQUE KEY `epp_id` (`epp_id`),
  KEY `fk_epp_emp_id_ref_emp_id` (`epp_emp_id`),
  CONSTRAINT `fk_epp_emp_id_ref_emp_id` FOREIGN KEY (`epp_emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeepassport`
--

LOCK TABLES `employeepassport` WRITE;
/*!40000 ALTER TABLE `employeepassport` DISABLE KEYS */;
INSERT INTO `employeepassport` VALUES (113432,'J2940222','1970-01-01','1970-01-01',123456);
/*!40000 ALTER TABLE `employeepassport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeprevemployment`
--

DROP TABLE IF EXISTS `employeeprevemployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employeeprevemployment` (
  `epe_id` int(6) NOT NULL,
  `epe_company_name` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epe_emp_id` int(6) DEFAULT NULL,
  `epe_total_experience_in_months` int(11) DEFAULT NULL,
  `epe_start_date` date DEFAULT NULL,
  `epe_end_date` date DEFAULT NULL,
  `epe_relevant_experience_in_months` int(11) DEFAULT NULL,
  `epe_designation` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epe_remuneration` decimal(20,2) DEFAULT NULL,
  `epe_nature_of_employment` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epe_supervisor_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epe_supervisor_designation` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epe_reason_for_leaving` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epe_supervisor_emailid` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epe_employee_code` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`epe_id`),
  UNIQUE KEY `epe_id` (`epe_id`),
  KEY `fk_epe_emp_id_ref_emp_id` (`epe_emp_id`),
  KEY `fk_epe_company_name_ref_comp_name` (`epe_company_name`),
  CONSTRAINT `fk_epe_company_name_ref_comp_name` FOREIGN KEY (`epe_company_name`) REFERENCES `company` (`comp_name`),
  CONSTRAINT `fk_epe_emp_id_ref_emp_id` FOREIGN KEY (`epe_emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeprevemployment`
--

LOCK TABLES `employeeprevemployment` WRITE;
/*!40000 ALTER TABLE `employeeprevemployment` DISABLE KEYS */;
INSERT INTO `employeeprevemployment` VALUES (113322,'Infosys',123456,84,'2018-01-01','2018-01-01',80,'Senior Software Engineer',1000000.34,'Permanent','Lloyd Thompson','Project Manager','Family Reunion','lloyd.thompson@cuscal.com','CUS001');
/*!40000 ALTER TABLE `employeeprevemployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeprofilepic`
--

DROP TABLE IF EXISTS `employeeprofilepic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employeeprofilepic` (
  `eprp_id` int(6) NOT NULL AUTO_INCREMENT,
  `eprp_emp_id` int(6) NOT NULL,
  `eprp_img_file` mediumblob NOT NULL,
  `eprp_file_type` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`eprp_id`),
  UNIQUE KEY `eprp_id` (`eprp_id`),
  UNIQUE KEY `eprp_emp_id` (`eprp_emp_id`),
  CONSTRAINT `fk_eprp_emp_id_ref_emp_id` FOREIGN KEY (`eprp_emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeprofilepic`
--

LOCK TABLES `employeeprofilepic` WRITE;
/*!40000 ALTER TABLE `employeeprofilepic` DISABLE KEYS */;
INSERT INTO `employeeprofilepic` VALUES (4,112234,_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0	( \Z%\"1\"%)+...383-7(-.+\n\n\n\r\Z.% %--------------------------------------------------ÿÀ\0\0\é\0\Ø\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0G\0	\0\0\0\0!1AQ\"2aq‘¡±BRÁ\Ñ#$br’ğ3‚¢²Ssƒ\Â\áñTc“³\Ò\âÿ\Ä\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\01\0\0\0\0\0!1AQ\"23q#BRa‘4ÁS±bÿ\Ú\0\0\0?\0÷\0€\0@\0 \0€\0@\0 \0€\0@\0 \0€\0@\0 \0€*€Z TU\0¨\0 \0€\0@\0 \0€\0@\0 \0€ \èW\Û\ï\Û4?½• ğ­O€\ÍqõÇ»:F©Ë²(m?HVq”l’NÀ\Z<\Í|”Ix•k¤z’#…7Ü„\î^\Î\ï\İ\Øü^Ob\äüF~:,%\ë#Ÿú\Ê\Ûÿ\0h\ßü–¿wğ3ğuÿ\03¶ò\æ\Ğ\ß\ŞXü\á\êÅ•\âõ‚¤\ÉV¤\ïb’>\à\á\äk\äº\ÇÄ¡û–ÿ\0oRöÁ\Ê,\ÙG3I\àN\àT¸dU>Ì*gè´ª\ìºö8€Y2*\0@\0 \0€\0@\0 \0€\åÎ¢\Ã	‹\ï–\ĞBK\"ú\é4£z õ»`ªƒ~|!\Ñudª±\'>¯¢3s\Ïx[3{\ÌQŸe§\0§]9\ÎôP\ß\Ä_\×zD4\Õı±¨®‹$]7¼ı2\ëŒ\Ö-_v{gX»\ìú#¤Je²6~\ê³Jù.ñJ µ–²\ë)\n\ë\Ö]\ØG`ÿ\0u\Â^5o\íI†Wû›8şÑ›\ßşPµÿ\0\Ìdÿ\0Fÿ\0ø\ÚN…\ç(\Şk~K+Æ¯õH\Õøe^›\Ş8¿y\ä|\×hø´%÷ i/’ú&F–\Åc“V˜—ˆ¨]£v¯I\éœe^E}\Ö\Ğı™–\Û6vi¶±û8…:Ó¸©Qõuƒ\äÊ³\êZe\í\Ñ\ËhDv†˜_\Äôñ{=\êUYñoŒº2=˜’]c\Õ\Z ú\æ4Ü§§¾¨‰£¥\0 \0€\0@\0 ;\Òñ\Ï’W´x“¸¼®v\Û\Z\ã¹\Â›\ÔO>·\ß6«ÁÅ‘V(4\ë=owúGš¨÷d¾5ö,#Mt-Ë¸¶{<l˜İ¤›\Î\áòõ\\¬·)a]¹º#‹M©\ï\Í\îË€É£õÖª/ñ\ïz\ßOdXÕ‡UK¶\ÙSh½\âfM\ç~<W\ãY.¯¡\ÖW\Æ=Sl\å1i¥XÎ£\Îw‡û)•ø~ú\é²4òõ\êA}ÿ\0!\ÑÒÆ–@¥\Ã\Ãü‘å˜½\È\æû“ÿ\0\'\çoÿ\0e\×ÿ\0ı9ür÷eû \ß(\î\Å\éU¬¼5ÿ\0l³—¹.T:´/i<0‚‹g‡k¼I\ÌO³-\ì÷óNOioX\Ì|\Ô)\áµô²Lr\îZ\Ø\íC¥ÿ\0)õXd_ú6ŒÎª®]Q2I£˜a´0WsÛ»·‡¢¶§>¬–Õ§\îWY‰ejê½…²Z­6\nµŸ{NtZ}ŸE22·ª|¢F”+»ú‘¸¹¯x­,\Ç«\ï\Òi\àB´¦øÚ¶Šû*•oL±]\0 \0€\0@\0 +¯»\Ş;,FIOSZ5q\à®q\äÎ•W+y\Ød\Öù6öƒ†!\\-\Üñ?ğªg•.szŠ,w\Z­È—=°SgÁ\Ş2.ù53Ä£\åĞ´‰x\ØMü÷uşŠ{m\âÈ¹ U\Üƒ·‚¬®‰Xö\Éó±Aik\Âøs\ë 1´õ»y\ê*\ë\Ãß¶Š\Ëó*­–ŠSjúW@q2¿†6\ÖG÷\Ğ+z°\á¶Ì§!û\Ój}M™\á§Ú”¶\Ì\Ó×µ‹Š–£Ø\ä\Ùe\"mo\ÎI,¬=Q¾b;\ßJ­G‡ \æÿ\0½ou’/š‡ò\Ğ4´Àó÷\ì\ál(6MÛ˜9\Ğ2Qÿ\0‚Rs%y,5;\ÑP$Ù»]·2A²\'ğƒX\ß\ÜZz—1«Ÿs¬r%Åšôtn\ç‚\Ò=¦\ÔeÄ·ZuŠ…Y‡=|½Iô\æ¯SSw_ÀÒ‡G·Nÿ\0˜TW\á¸öÿ\0E­Y*] ±\Ú\Ë:4sN­\ÜA\áÀ­ñ3\çC\ã.«\Ø\×#®Q\ï\î+\àtNıª\ÆhGM[Á:¼\Ä÷Púz¢±ÿ\0ë»¿£6ü¿krx\É\ì:´üA\ÜU®>Dm\Ñ_m2®Ze²r\0 \0€\0@-\Ö\ÆC¤Ñ­“úŞ´œ\ÔSl\Ú1rzG˜™x\Îf–­…\îZW‰¥Iù*U\Ë&\ŞO\éEŸJ!¥õ2M²\ÔF3(\Æ@j›\éÃ€U¾!\Ëô«úQ;_<û™\ë\âø5ÀS¤şC¯ô3Q±±\\\Úÿ\0{¯IK\\õ¿šÀ*C‰m\çL\í[]\Ì\çx¯K„£ó>\å%ùN]õ\Ít\Ïk!\Ñ\Ö(FM”´	4û4zD\İy\İ\"7ê¬’K±½›{¯“YF(\â\çd>Gv½ÙÁE˜\'\í\n±½w2“}‰\r²HwS´€¸<˜#ª¢L\æ[;Û«r\â3ô[FøK±‰U$1v\ÙÈm³G3K&cdi\Üğó\Ñ4u\ï\È÷F¬gF³\È\âGù2tn\áŸjÁœ³ZK°U®o\ïbx\Â\æ/o¾\Şğ¢ß‹Q\"¬‰Aš{ú§\ßi‡Võ\Õ\nóyxm>¿\ìº\Ç\È^†º\Çj¥$Œ\Ôx8p?¬”<l™\â\Ùız¢MôBø~ƒ\ÓBñl²ÿ\0˜\Î#{HınW\ÎJ)]OgÜ©qmùVwô=\é¼Yh‰²\Ærp\Óx;\ÚzÂ·ª\ÅdSEmp“Lšºš\0@\0 r\Úóu¦\Ğ,qc\ÆF÷ğ\ìhó¯M›k¶j¨Xµ¨CÌİ¬¶6ˆ#\Ğy\ã\Õß©\îPüC!Q\"¾ş¤¬*]\Óv\Ïü\İ\â¡¥\\}\Ö\Ó\å\äªqhs|™>\ëTVŒ…¦\Ğ\02\Èpµ 8TW\0=–”®\Ïw\Êõ˜˜ªo¹A“\äõ\Ç\\‘¹\ßx=³L\Ú@\×Œ5.\Æ\íòHOLõO’C=\Ş\ç¹YAp\Ô\îH	7\Ó\Ú\Ø]‹†H?T\ä°\ÚKl%·¢ú\Åg]¼ü¨¿\"S—NÅ•U(\"N%h\í\Ø1,§®\ÃI÷*\ïK0\0½¿\Ä>*v.G^2\"_ONHª2+\"†Ts•w´,\'¥™±\ã,Tö\Ä\ÖH]\İn/$‚h\ê$e((:Dw‹wj2Óô\Æ\Ø\ékµÁ\ì\Ø\Ü¸¥}’há½\ãú\Ô//™‰¦\Óÿ\0ö=é­›§©Í\É\ÃPG\Ö\å\Ç\Ãò\İ3ò\çô³|\Ì2<\ã\İ®[Y±Z°õw5Ç¢\ï\ê «\Ê\äè·\í}Š«b­¯’î»†Á\\*\0@\0 G*/Qf³¾_j˜X8¹\Úxf{Š•rª¶Î´\Ö\ç4Œ\'\á\ÙD\ëCó{ë†º’~gâª©~Ur¾e«Ìšª#\ËFÍ…\ç3\ê\ãúò^srºİ²\çJºôŒM²b÷\Ğó¨\ìÁ\ÑòSûŒ\0½\İM§RôşŒ’\ä\×\à£Ì¿*2\ÉÍ²\Ò\È#\'gŒ\æuy=9Ä2\àB¹+v}ô{a`´\0Z8C\ÒišÀ\\\ã@7””—\î\Ù\ØY\ĞhA¬­\ê©ğ\n.\\¸\ÖwÇ\ç£E‰Rlµ^Á‰gfI± u¡ß‘\ïYŒ´öbQ\Ú1ûJeÀ‘\àh½\âŠy¯˜\äÌ¶593 <ó—¶SñÚ¢\æ—\È÷Û¿®£^\Äwu¼\Ù\Ø(\ÓÍ•ƒ\Ù#Zu{Cª£r‡—¬‡öIÆ»„¿£q[1Ö‚­<[Áyºš|‘\è\èÖ‹\ã\ÚDzL™\Ù\Ã\á\à­q,øŒ-ıQ+²!\äZ¥ûY­\ä]\êg³€\ãõ‘œ\ë§E\İ\ã\Ìs‡w™_^\è¬É¯„ÿ\0¢ü)„qP\0@`uôj3Zb²·Fóøòª£>\\\ìU–8‘\ã1«\ÉÀ\ÆŞ‹\Z<H\Ë\Ë>õ[\â÷qQ¦=‘;Ã«\Ûv¾\ì\Èòš\ÚA£sÃ^\ê\0=<\Ô\Ç\äÿ\0?ü;\å\İ\Å~S[P\ìš\îsñ3ò\Ğ\ê\Êÿ\0\ãSğ³¬¯_\\x\Äó“–\Ş\È<…hı ¸\îa§ynhz\ÑIg$\ÆiT\ÖşP\Í7Mùp@Al\Èd›u\Ú\Ã%i:V‡°\ä£\åC•l\íD¸\Í\Z¼k\ÏoOE¾·\Ô1§#:i±£‹E¤1¥\çFŠø-\ë\\¥£I¾1f%“eS¾§\ÅzH.1H¥“\Û9t\ËcSƒ:;\Ëz:\ÊIö^\Ç\ßõ 1÷·g&t$£]\Õî¿¸ùWŠ\ì\İ\\6—F\â\ÃÒˆ\å\Ö\Ş£¼/?\â\é=ú2\ç\æ\Òş@²Z(Y#t×µ®\×\Ë>\åM…k£!¦X\åV­©–wß³\ÛğûŠµu\ÑRü¬>Œ¥±y”\ï\Õğ­\ÊñP\0@+\r\élkg•\\ò\í\í“Z˜œGP­ü´ğTt>yŸ¶\ËK~Z}ô\ÍÓı\ç\ÏøPeO\Í\È’\æˆyu%ıKl| ˜»!Á{*óÜ½†Õ­È§Îú~Ú„“¸· ß«Œpd|\Ö÷*z\ÉW%Q/’³\àœ}\æ‘ñøÙ“ d\Èdu³,6½\0\è•:k¨47=óQ‚J\ä2}	ûôÓµRf\ã(>Qÿ\0E-ü–¤]²@sÕš®lš%´5½\"©\ì\Z•”¤û\r¤e¯›\à\Ìp4Às®E\Äun\n\çEs—r·&şOŠ\ÇJ¬\È(i\Ó t\è`¡\åm«\êC}\ç\Ôü·\Ş\ì¶bl\ï5ŠN\ÑAŸqa\ïPó*\ç[%bÏŒ\ÏD¸\å\Å\ìšwşk\Æ\ä\ÇS\äIK\ÜtY^;¦oN\'Œú\Úrô*õ\ÙÎŠ\îö*8p¶u{e˜=x\Ñ\Í\âªş/qL©’\Ó\Ğ\ê\ØÀ \0€¯¿\í;4\Ï\á©\ÛJ\Æùj¶t©nim\É\Æ\à²\Êı\ç!\áA\æU6;\áD\æYÜ¹]¯wa„4jóøë•›.-zZ0–»F,œ6\å01 ÿ\0…{,j´y¼¹ng4ˆHÅ¤‘\Ú%´=¡\Ã~\î‚%²d»%^æ±º¸€;\×;,ò\à\äÍ«‡9(›;\Í8cvò\ì\Çp^~\ìû$ú=\"\â¼H%Ô²ŒŠ4\08Aä¡»d\Ş\Û$¨EvCn³\Æs,o…=[/qÁ{G[\Ñh€W\ÅaÍ¿QÁ\r\Ú ı65İ â·…ó‡fk*a.­ûò\ékd‹ \Ü\ÜÓ[\ËOÁZ\âg\ÊR\á2N.—(™‡Ì®Z0ù\ÖA–¾­{G\å£r€ªz/ù4\â\èmğÁ#zˆ«]\ê\ßÊµš\Ú\Ó6‹\Ó\Ù\é<˜´b ûñ‡w\ä~%x\Ì\èqZög¥Å–\Í8n(&g\0<)ş•7\Ã\ß<Y\Åús\ã/sgÈ¹ñ\Ø\â<o\å$+\ì9ò©2§\"<lh¼R\0€?Ë¹)a›¬\â\à¢f=T\Îø½lF.\ï±·7úšª&øø|š÷ÿ\0²\Éu\ËE]şy]ğ*—\êe¦GcÎ¯‡ıšN°Áÿ\0²\Ğ\çş0½¶:\Ô/s\ÜÌ“\ì\äg¨ô\í]GLC$û\r °\å¡\Ô|Pp\Ú`Ÿ—\í~1\èT\\ß±#¾7İ‰\èØ—“\Ù\èt&$\Ø\ĞbM˜\Ğ¦Æ\ÓcE}öÿ\0¨—ğ;\ÑI\Å«\ëô\Ù\ç.—.\å\ëc\Ï2®\ßl\'š\Şóğ[¢Dw¡‚ó‘­;gƒ£¡“Ê…»\ä{ò‡±\ÍğÄ¼ŸˆÇ¬‘\èp\ßÊ™»°Š\íÏ•~i\á/p²?\ĞñóAš£—\Ö\ÊG»+Ç\Å^xsı$ŠœÏ¹³T¬€€7ô‚>\Ã\'k?¨(™\ße’1>\â23ö6~&ÿ\0PTöÿ\0À—\çş\Ë*ÿ\0\å¯ÁS\Ê‹?ÁSaıl³\È\ì6¾\Ù]\Ô`ò|\àù½µ?I\å­úŠ˜4]h\æ[&öø|\È\Û5@K…\äh°şMM[L?Œz7\ìH‘‹÷¢z}W‘\Ù\è´MPh\á\ÎM·9gf\n\ëñÿ\0g—ü7z)¯õ£ù8\ä/\Óg—M)!zôy\Â‹`F-$\Ğ \Æn\Ìù0[ò`}§ü©¥­\äp\Ê/\ÄóıK\Êø‹ù\æz?¢&ú\ï\é;ü7-<´ÿ\0\Ş#ûK\ï£qöwÿ\0Š\ïF«\ÏûeFg\ÖkU‰\0@Rr\Î,V)\ÇÜ¯FÊ\ëh\íCÕˆÁ\İ.­\ßt\×À‚©\Ò\ç…8–R|rb\È7\ëkx8y\ä¨ñ^§¢\Û#¬O9½#¬3·x?ú\åkÿ\0¥\Î^\Ó\\«<\ÆJ\Ô\Ê9\ÉI8X†Gv¾(\Ì½cõªÀ-y0~\Õ\ã…D\Íÿ\0/Á#\ïDõ5\äH%8 qCuø~\Ï/\àw¢“‰÷£ù8\ä}¶ykŠöób6\ÊN¹5²˜r\0\Û\Ê,ù2(\é\ä÷ ó\ÑñXfQ°\ä|TuF\\ˆú^G\Äe\Ö_“\Ñ\áÇ¢F\Î\Ì\ê6Wp5]|)~’9g¿Ô‚5G\Ñ\Ò\Æ¼÷Ÿ\æ§Á^xzıÊ¬\Çú¬\Ó)\ÄP@\İ\Ò7°ûMs|E–-Á£h=I3Ê¹-›e„\ëC\ã\Ñ>eRá¯®·\ìZd?¦hK\\x\âpß‡\Ìg\êœŠuÛ§\î\\¿½£i`Ú–Œ€81»ı%z\ï³p×±\ç³!©\èi-:´–\Ğh}’ ’\ÚPFP#(d²\äü Ú¡:cĞ¨™\ßbDŒ_»\Ò\Ü\Âhôiœ¬8%\r¸¡ƒ‚²ù°K_qŞŠV*ıhşNô\Ù\çlŒ4e\ÃU\ë½86ò¶(PÁsu\ÃK#Ïµh™±7ğEZŸ\Ì\ãùW+¥\Â\r*)$où;\r1;p£»?’ñy’\ßOòz|xèºµI†\Í#½÷Pv7/PU2òğ·üŠû\ß,{ƒÉ»6\Ê\Ë7†4\Ò*}Uş<8V‘Qt·6\Ë5\Ü\æ\0  <²ó‹ö[\É\ãF\Èq“3ü\ÕTSı­¾\Ïş\ËX~¦>\í1\á‘\Í\ÜN!\Ø\í|\êª<V—]\î^©eg:µ\ì`ùOb\ÂI§D“ü\Èød…XxmıR÷\"fÕ´\Ì}÷\r$\î”U\Ü6\Éÿ\0›\'ÿ\0^{(ô0Â²ZP\Èû—¥¬\'¼Ñ¡\Õ$\î*6T%:e\Ü\í$¬M›ÿ\0ú\Éıû›\ä¼\ãÁ»ø—K*¿s‡_öC¤\Íşo’\ÇÀİ­ñf~.¿s“|Yÿ\0½oó|–¿w~#\â\ê÷uõf\Z\Ì\ß|–\ßwñW¹\Ïöõ—û\æÿ\07\Éea]üM~*¿r%\ç|\Ù\İl­$´€3\ÌÓ±H\ÇÄ¶6&\ã\êr»\"·“0…\Ë\Ñú£/r\ÈqCA…\Îk\Z*\çÖ%Æ€x”@\Ù[¶dM\èY£¨\Ğ\È\î‘ñª«ñu(Ÿ‡^\å\È\Û]ğ–D9\Ç3\Úwz\ågú·i~ÿ\0·^\Ù>\Óf\ÚMg²-\ÇÙ«€>+\ÒJt®È¥Œ¾Y\Øı{¹K]\n¾ıEY\0€\0@b~“.\Òce¥£8\Íø\\u\îu<UgˆÕ¸©¯Bnš—\êRm¶°²Q«rfó\èT¸|N/%\Ş$\Ìyùñô‘QY13+AG-?¯2©qlp–‹;\á\ÉlÀZlXƒ¬\î:cq\ÜGAÇ´U®ñÜ½–-\êpGœÈ§„™Q—q¨ A¦Dj¢0ûlƒ’-™E…\×s:w\àŒó¨Nt‚›û\×­UÇ”\ê­\Í\é­Ü›’\ãx«w¹®¶‹y•\Ù\Ó\Ô\Ş\Ìi\Åm“›\ÉI€®J\Ó­;?©=u:|%„{‚IX\ÆfŞ•r\rİŸ¢\ífMu\Å6ûœ¡L\å\'‡-÷l°€ç„ûM8‡a¦‹\ä\×c\Ò3:%Z\Øó.)œ\Ğ\àG\0E\\4\"«Ÿ\ÇW\ÉÇ©ºÄŸ•\Ó]‡f\é­qa \çQM\İ\ë¯\ÄÃ—sŸ’ô\äE¼n—D\à×	\Z–\Õ[\ã\èbu:ú3¨y7h‘\íÁ…Â¢®§W¥\Êyµ\ÆNvt4\å^…U²\Ã$n,p\ZĞ‚<TˆMN;G	Ç‹\ÑH\Ü7-\ÍK^NÃ²c­\ì\ã³\íHF>›ğÔÚ­e5¶eE\É\é\Z¾M]š9ò.;~]\Ë\Êgd\ïrÿ\0G¡Å§ŠH\Ù\ÙZ±‹9Ç·põ=\Ë_	\ÇNN\ÙöFs\í\ÒUÇ»-y	f2\Í-©\Ú¹\á@®ğ¢ì›µÿ\0‚«)¨EV\ÈV„P\0@\0Í®\Î\Ù\æ<U®iiDQk8©&™´d\âö*²5\Ö;K\ì\Òôk@N„‹»øªJŸ‘k®]™i?Ö­MwCòÃÅ‡Og­¼;´T¹ø¯İ®Ï±e‡z¶\Z}\Ìo(\îƒ^n¹–¼oaıp*n_¿öG\Ë\Ç\å\Ø\ÏZ!2ŒmZ\ÑG·{\ÃGH}»\Æñ\Ö§„Ô£´QN-KL‡•[\Z\ZnBŸ´ÿ\0–ÿ\0Vªÿ\0\ëQ7\ë¶\Û\ìğ\Ù\æ†>GH\çTP7q\0w.5Qd\æ¥%­\'d#½\ì\ĞÚ™	µB\\]µ\Ö1£\ró­uP¢\ç\å\ËK¡%ğ\æ–ú•BWº\Ík RM«±­\0hğ *F’²	ö9rn¹5Ürû%£pPa¯\Z\ZÓ¿\n\í•\ÇÎ—\ß\Ô\çFü¹s½+>\ßi]“iƒğ6µ\\ªVy³\ã\îoc‡òö ´\Ø$¦›WR¼9«´“ø…ø9¯²ÿ\0!\Ê\Ğv¬ =\r\Õ\â¶ğù%·\êc17$\Òô.‹öH6¡\änÁ­j\íz”yryã£¢qò\"šff\Ø\æ\âv\n\á®X«Zu«z~¥}ŸWA«\r‡ö‡\ã‚ó–Ns\Å\ç†\íWMšè½²0\Ï#d\r\Ã@e1\ì´doû³MŸ•\Ş´\Ã\ÇS6¶6Éº¸\ëM\ä\î‹Ì¾WØ”K•Æ¨rd«puf9$p­8Ÿ€ô\ĞÊ¿.Ç‡ROœ\Ò\í\èz=\Ïw¶Yth¥x“™=\æª\êª\ÕpQEe“s““&®†€€\0@(·.¹?ûD{X‡\×F	\Õ\íÔ··xÿ\0u7Í%\İñoò\å×±’»-B\Ñ\ZHÎ‰?®\ïøPc\Ç&·UŸR\ìKm\ã\Ù\æG³8´À$ic\Å\Èñi\Ç\ë5\ç¥	\ãÙ©”n†Ñ‹¾.§±ø™”ƒ<ÀĞƒ\ïu÷/0³¸\éo§ÿ\0\nÌ¬e/\ÉM5œKWF0\Ë\íFy¡\çyoºú\ê2¨šøN2]\niÁ§£‹®ô’	™\Íx¤8iZTt\ÑkuJ\ÕÅ›Bn¶6\çÔ’w’Ozè–£¦i\'·²\Æk\êg\È\ÉK†6\n4†§½pX°Qp]™\ÚW\ÉË—°G|\Ì\Ù]+]G;¥@0»µº,<Z\Ü8¿@²%\É\Éx_SL0½\ÃŠŠ±+ƒ\Ú]E—\Ù5¡›]\àù\Zò(Á…´\È\nw\èºWD`Ü—s[-”\â“ô[\Ş\"0\Ô`\'\Ë:å¿¹%	O—¨²Qâ‰‡”¶-ü¡pX0\Ş\Ñ\ÑeL(¦¡ ¶‚´«FòOÄ­%.AeOZôl/µ<\Î\ÙC\íIJ‘\ì\Ä\ßhõ\è2ß’\ï\\q\â»e\'\'¶MŠ-°kZÍ™‡\ê\ã\Ô\È}÷Ÿh;÷*\ì\ÌÔ¾X“±q_y+ª\ïÙŒn\êd=\Ñó^bûœ\ß^UZŠ\êZ‰m\Û?ø\Z¨ş½U¾<qkógõ>\ÅnM\Îùùq\í\ê_r\Z\çvvÉ‡=\ã\êÁöZ}®\Ó\éÚ¬ğ¨{vÏ» dÚ¾\Ü{#d‘T\0€\0@\0 <û–œœto6\Ë0\ßYX7}öüGS™Š\Óó+\'\ãŞ¸ùr+,Ö–\ÚZ\Ò w8p=^Š<\ê†t4úI!9bË§\Ò3h²ÇŒ\Æ\í\í\ë\ÏNc\ÏO¡oB\è\ív2w\İÃ¿C¹\àx\×jµ\Ä\Îq\íşˆ9‰”vÁ\ì\ÚZx6Vp\á™wc‡‚¿£.¢\ÜyC¹\×tš\ÄD\Íû¹<v\Æs¯eT¤\È\ï§r#m¥§\'\rAÈ\Ğs wj´2„RZ\Ú5)°=b²\Í0¬l8}÷sÛˆ\ë\İT\èl\ĞF\á_´Ë¹¨…½n:¿\Èv®V[-¶t…r›\ÒEœ	\'xt\Ü÷{1·&0viO.\ÕM“Ÿ¿§±iF«©¬»\î\æ\Ç\Îu¸\îog\Íyûos|Qm\n\Ô\Ùd\Z\Zİ¤¹4f½Ç‰m‡…\Zc\ç]ş]“’\í~]_\å“99sº\Û&\ŞaH\Zy­÷\È\İøFş*ÂŠ¥‘>r\í\èC¶\ÅTxG¹\èVı–‘]\Ü\éd\0@\0 U\0U\ÉX\Öû\Æ•<‘sm6!jø†]ñü¼8*¬œ\'Î¢})®\ÖK\Æ9ù²s$§wû\ÂR«&<.Z~\çd§K\ç[\Ú™…¹H8û\'\å\ØU6W‡[Cäº¯tYÑ™]«O¹Yl¹š\êà ¯²si\î\\kÊ”{l¡>\Æj\İ\É\Ì& Å™·»€\ê\É[Q\â/\Ñì¯·	?B¬´R\ÎÑ x\ÌY\â¬\á\â}úe‡%Ø‰$1ûvG7ü7<Â“\Êß©Á\ãX½\r\ÍıÕ ù-ş&\æ¾Dı\Ùgƒušg~\'¸HZ¼ª×©•7\èK†Œ\â²\Ã÷œ;\İS\ä¸\Ë\ÄkK¡\ÖR}\ÉMº¤˜ıt”ğ¢wˆ·Ø—^\nL¿»ù?„f\æOi\ã\âª.\Í\äûì±¯Hº‚³›s\à3\'¬Ÿš]7d\Ë\åGYYU+m\Ï#!¥ »PÁ <OwN-X‹r\ë\"²Ì‹2£\Ò$û‹“ò\Û\'´‚\Øuk4/\î\Ü\ß2¦U;\å\Î\Î\Ş\Ä[.Kg¡DÀ\Ğ\Z\Ğ\0€€\0V‰%\Ñ\í½­€ \0  \0€B€J 9%\0•N€\Ìò’p\ÚNÑ¿W7¾\İøÛ¿´f¡_‰:®Œ“NL¡\Ó\Ğ\Å\Ú%µXK1G ~­=\ã\Ô|\İO\Ë.¨•ª\î\ëŒ~\Ï,2gğŸtô|7w.6bb\äu\Ê\Î\Ğ\ÈÈ§£\ê‡^Ç·¤\Âz\Û\Îò\ÕV\İ\á7\×ôõü+ñ\n\ç\Ñô\">_¨m)ù¨oÎ«£\Ú%/*}P\Ë\îh÷b†¾¡eeMw0\èƒ8ş\Äo¾\ï%·\Æ?c_‡B‹‘›\Ü\ã\à>2^\Æ|ˆ¡\Ö\İğ3P?ˆ\×\Õk\æ\Û>ˆ\ÛË®=\Éqgû¶’:…\âr]\ëÀÈµöÿ\0g)\å\ÓZ\î, 79^\Z8Ÿy\İÜ¬«ğºj\ët¶ı‘yöYöÖ—¸\Äù&;+D\î\Ü:\Ü\í\İ\êdl”¾J#¤F”bº\ÚöjnG²7	m\'k. ƒ=£\ÖTº0\Ô_)õd{r[Z‡DkC”ä—¡û³ı P\n€T\0€T  \É@rP8 \Zs\ç\Â\àZ\à9@ õV\ZO£FSk±½ùgy.…\Æı\Ü\Ù\ŞÓ§qP\ìÁ„º¢D2¤º2‚{\áf\è–Lßº\ìÿ\0+©O5\Ã\áî¯¬Y\ÛÍªR\"»”\äeh€\Öü\Ö“ığÙ•ş\Ùhéœ¢±Å½„’\ä\Õ2ú«:\'búf:/»¾\ï\Ì~k_#øó2?‘\Ã\ïû\Ş\ã\Ş~k*¼uÚ°\çs\ï1“Ê˜G\îa©\ê]c?\á^M)\ì~+Eº\Ñ\Ñ\rˆ\ïu=3ò[ùwÏ£f¼\é‡]l¹ºù\'\rC­3:gkA\Ìg†¥u¯+¬r\Ë´\ÙØ„lhdm\rh\Ğ4P)±Šb;“—rc$&£\írÀPA\Ò\0@*\0@\"P”@6\äj4±Wzu9lD\ïAÑ&¹ñ{E\ä?%ƒµqñXi3=}\n\é>\áv¤­xG\Õ\å#ôsg\â|V<¨û#<\Ø\äG–q\ÅgË±r÷\'A\È\Ø[¥V\ÚşŒm“\á\äümÒ«;0O†\îhN€™\0 $1¨\ÚP´ ;\Ğ(@-PTU\0•@!(I@!@pP”nP– 81 f€M’\0Ù \ršDh 1\Ğb°\Ô` ;\Ø@(@t\n¤„\0€B€B€D  9!\Éj0 \n0 \0À€L\0Â€\\(Â€P\ÔA¨\0  :¢h€T \0\â\0@ˆö«dq\Óhö2¦ƒšÚº”1Ş—=»F3&¹\Íš¸Š\×Zmw¤‰$cK„UÀfZ\çŠğ0 8†ù³¹¡\âhğ¸\á½¢®÷u\×1—Z\Ù/‹±Œ:½£\riLY\å¨×Š±{\Ùñ9»X\ê\Ö6C\Îm£«])¿¬q@8\ë\Â\Z\ã,a¯4a/mx4×Ü€[5¶92i«\Æ@\ï«yÆš\Ó¥{\ë\Â^±‚ÁW‚öÕƒ‹\Åy£µ\Ë\ïK8\r&h€x%„½€<-ÏBæŒ½\á\Å\0õš\Ó‚±½¯\0Ğ–¸85\èAM¼›‰\Ì1\È\Z^Ö*öµ\ØIf|HÖš„øe\Ø_‚BÀ2n\ÑÁ­\Æ+—9Ào@vo8ö›:;\'ˆË¨0‡–‡†Vµ®”\ÏT,½\Zc’MœŸVHspŒy\0r¦„P\Úï˜£\rq!\Ì\Úd5‚•q©\ë\n¤Ï¼£\ìs/À\ç\ä*(\Ü5m}\î{M8\Ä »í™˜\Ú\ç=¤8\0C˜\â\×Bw‚€“DD\0€\0@]{\İ\î”\Ü+G\ásœ\Úû„= \ĞGR‹E\È/¥d•\æÎ’\Äø\éZ\î\Ä\r~\îˆ?±\ä/l†f\ãk\ØöıQ\r£b’\"v•5¸Ö¹\Zk¢™y:\çƒ#¾::7–˜\ŞA£š%vYöPgº\êÇ´9µt»P\\\×\'/u\í5Ö¡[–GR³pÁR\æL–w\ãk\Í9¤Ö­×\àº\Ç5í•¸ş³c%®\È\ì\r†£‰\ëªn\ë¡\Ğ˜\äX÷½Ø˜Nn•Ï£N,†\ÓJ\ç–`É¹ßÑ‰[‡k¶±’\æ¿m¶\çœt{qeJ4\Ó}s@7\'\'ñŠ@\\\è­LqÁA[K¢qs[‹ 6zTÖºñ\Î\ËdÀ÷º½<R”À\Ü<s@qw\İ1@\é_hf~\ÒLÉ«©J\ç¦\\\ìv	˜ùd|±½Ï¨iØ¸\0jÆŸ­ ´\n\äjs@FşÅ›öX\ìûh\ê\ÇFq\ì]B\"{^Ñƒm‘«s5ß @H\è\Ç3eqe\ZZ\ê5„9\ÏkpÔ¸¼Šg\î\× *€H®\Ù\Ãgiš2e$´ˆ^*\Ğ\ÓQµ8²x\Í\Õ\É÷\È\Æ5ò³c1—lN@œŸ2€Î«³¦\ä–Ü¡³¶f=À5ZIp.”\Æqj(\r7\ÔiD÷5ŠHX\æ\É#^L’<°\ÇM£\Üò/usq\Ï$‚\0@\0 \0€€@\0 \0€€R€@\"P€T\0	úõ@(@*\0@ÿ\Ù','jpg'),(5,123121,_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0	( \Z%\"1\"%)+...383-7(-.+\n\n\n\r\Z.% %--------------------------------------------------ÿÀ\0\0\é\0\Ø\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0G\0	\0\0\0\0!1AQ\"2aq‘¡±BRÁ\Ñ#$br’ğ3‚¢²Ssƒ\Â\áñTc“³\Ò\âÿ\Ä\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\01\0\0\0\0\0!1AQ\"23q#BRa‘4ÁS±bÿ\Ú\0\0\0?\0÷\0€\0@\0 \0€\0@\0 \0€\0@\0 \0€\0@\0 \0€*€Z TU\0¨\0 \0€\0@\0 \0€\0@\0 \0€ \èW\Û\ï\Û4?½• ğ­O€\ÍqõÇ»:F©Ë²(m?HVq”l’NÀ\Z<\Í|”Ix•k¤z’#…7Ü„\î^\Î\ï\İ\Øü^Ob\äüF~:,%\ë#Ÿú\Ê\Ûÿ\0h\ßü–¿wğ3ğuÿ\03¶ò\æ\Ğ\ß\ŞXü\á\êÅ•\âõ‚¤\ÉV¤\ïb’>\à\á\äk\äº\ÇÄ¡û–ÿ\0oRöÁ\Ê,\ÙG3I\àN\àT¸dU>Ì*gè´ª\ìºö8€Y2*\0@\0 \0€\0@\0 \0€\åÎ¢\Ã	‹\ï–\ĞBK\"ú\é4£z õ»`ªƒ~|!\Ñudª±\'>¯¢3s\Ïx[3{\ÌQŸe§\0§]9\ÎôP\ß\Ä_\×zD4\Õı±¨®‹$]7¼ı2\ëŒ\Ö-_v{gX»\ìú#¤Je²6~\ê³Jù.ñJ µ–²\ë)\n\ë\Ö]\ØG`ÿ\0u\Â^5o\íI†Wû›8şÑ›\ßşPµÿ\0\Ìdÿ\0Fÿ\0ø\ÚN…\ç(\Şk~K+Æ¯õH\Õøe^›\Ş8¿y\ä|\×hø´%÷ i/’ú&F–\Åc“V˜—ˆ¨]£v¯I\éœe^E}\Ö\Ğı™–\Û6vi¶±û8…:Ó¸©Qõuƒ\äÊ³\êZe\í\Ñ\ËhDv†˜_\Äôñ{=\êUYñoŒº2=˜’]c\Õ\Z ú\æ4Ü§§¾¨‰£¥\0 \0€\0@\0 ;\Òñ\Ï’W´x“¸¼®v\Û\Z\ã¹\Â›\ÔO>·\ß6«ÁÅ‘V(4\ë=owúGš¨÷d¾5ö,#Mt-Ë¸¶{<l˜İ¤›\Î\áòõ\\¬·)a]¹º#‹M©\ï\Í\îË€É£õÖª/ñ\ïz\ßOdXÕ‡UK¶\ÙSh½\âfM\ç~<W\ãY.¯¡\ÖW\Æ=Sl\å1i¥XÎ£\Îw‡û)•ø~ú\é²4òõ\êA}ÿ\0!\ÑÒÆ–@¥\Ã\Ãü‘å˜½\È\æû“ÿ\0\'\çoÿ\0e\×ÿ\0ı9ür÷eû \ß(\î\Å\éU¬¼5ÿ\0l³—¹.T:´/i<0‚‹g‡k¼I\ÌO³-\ì÷óNOioX\Ì|\Ô)\áµô²Lr\îZ\Ø\íC¥ÿ\0)õXd_ú6ŒÎª®]Q2I£˜a´0WsÛ»·‡¢¶§>¬–Õ§\îWY‰ejê½…²Z­6\nµŸ{NtZ}ŸE22·ª|¢F”+»ú‘¸¹¯x­,\Ç«\ï\Òi\àB´¦øÚ¶Šû*•oL±]\0 \0€\0@\0 +¯»\Ş;,FIOSZ5q\à®q\äÎ•W+y\Ød\Öù6öƒ†!\\-\Üñ?ğªg•.szŠ,w\Z­È—=°SgÁ\Ş2.ù53Ä£\åĞ´‰x\ØMü÷uşŠ{m\âÈ¹ U\Üƒ·‚¬®‰Xö\Éó±Aik\Âøs\ë 1´õ»y\ê*\ë\Ãß¶Š\Ëó*­–ŠSjúW@q2¿†6\ÖG÷\Ğ+z°\á¶Ì§!û\Ój}M™\á§Ú”¶\Ì\Ó×µ‹Š–£Ø\ä\Ùe\"mo\ÎI,¬=Q¾b;\ßJ­G‡ \æÿ\0½ou’/š‡ò\Ğ4´Àó÷\ì\ál(6MÛ˜9\Ğ2Qÿ\0‚Rs%y,5;\ÑP$Ù»]·2A²\'ğƒX\ß\ÜZz—1«Ÿs¬r%Åšôtn\ç‚\Ò=¦\ÔeÄ·ZuŠ…Y‡=|½Iô\æ¯SSw_ÀÒ‡G·Nÿ\0˜TW\á¸öÿ\0E­Y*] ±\Ú\Ë:4sN­\ÜA\áÀ­ñ3\çC\ã.«\Ø\×#®Q\ï\î+\àtNıª\ÆhGM[Á:¼\Ä÷Púz¢±ÿ\0ë»¿£6ü¿krx\É\ì:´üA\ÜU®>Dm\Ñ_m2®Ze²r\0 \0€\0@-\Ö\ÆC¤Ñ­“úŞ´œ\ÔSl\Ú1rzG˜™x\Îf–­…\îZW‰¥Iù*U\Ë&\ŞO\éEŸJ!¥õ2M²\ÔF3(\Æ@j›\éÃ€U¾!\Ëô«úQ;_<û™\ë\âø5ÀS¤şC¯ô3Q±±\\\Úÿ\0{¯IK\\õ¿šÀ*C‰m\çL\í[]\Ì\çx¯K„£ó>\å%ùN]õ\Ít\Ïk!\Ñ\Ö(FM”´	4û4zD\İy\İ\"7ê¬’K±½›{¯“YF(\â\çd>Gv½ÙÁE˜\'\í\n±½w2“}‰\r²HwS´€¸<˜#ª¢L\æ[;Û«r\â3ô[FøK±‰U$1v\ÙÈm³G3K&cdi\Üğó\Ñ4u\ï\È÷F¬gF³\È\âGù2tn\áŸjÁœ³ZK°U®o\ïbx\Â\æ/o¾\Şğ¢ß‹Q\"¬‰Aš{ú§\ßi‡Võ\Õ\nóyxm>¿\ìº\Ç\È^†º\Çj¥$Œ\Ôx8p?¬”<l™\â\Ùız¢MôBø~ƒ\ÓBñl²ÿ\0˜\Î#{HınW\ÎJ)]OgÜ©qmùVwô=\é¼Yh‰²\Ærp\Óx;\ÚzÂ·ª\ÅdSEmp“Lšºš\0@\0 r\Úóu¦\Ğ,qc\ÆF÷ğ\ìhó¯M›k¶j¨Xµ¨CÌİ¬¶6ˆ#\Ğy\ã\Õß©\îPüC!Q\"¾ş¤¬*]\Óv\Ïü\İ\â¡¥\\}\Ö\Ó\å\äªqhs|™>\ëTVŒ…¦\Ğ\02\Èpµ 8TW\0=–”®\Ïw\Êõ˜˜ªo¹A“\äõ\Ç\\‘¹\ßx=³L\Ú@\×Œ5.\Æ\íòHOLõO’C=\Ş\ç¹YAp\Ô\îH	7\Ó\Ú\Ø]‹†H?T\ä°\ÚKl%·¢ú\Åg]¼ü¨¿\"S—NÅ•U(\"N%h\í\Ø1,§®\ÃI÷*\ïK0\0½¿\Ä>*v.G^2\"_ONHª2+\"†Ts•w´,\'¥™±\ã,Tö\Ä\ÖH]\İn/$‚h\ê$e((:Dw‹wj2Óô\Æ\Ø\ékµÁ\ì\Ø\Ü¸¥}’há½\ãú\Ô//™‰¦\Óÿ\0ö=é­›§©Í\É\ÃPG\Ö\å\Ç\Ãò\İ3ò\çô³|\Ì2<\ã\İ®[Y±Z°õw5Ç¢\ï\ê «\Ê\äè·\í}Š«b­¯’î»†Á\\*\0@\0 G*/Qf³¾_j˜X8¹\Úxf{Š•rª¶Î´\Ö\ç4Œ\'\á\ÙD\ëCó{ë†º’~gâª©~Ur¾e«Ìšª#\ËFÍ…\ç3\ê\ãúò^srºİ²\çJºôŒM²b÷\Ğó¨\ìÁ\ÑòSûŒ\0½\İM§RôşŒ’\ä\×\à£Ì¿*2\ÉÍ²\Ò\È#\'gŒ\æuy=9Ä2\àB¹+v}ô{a`´\0Z8C\ÒišÀ\\\ã@7””—\î\Ù\ØY\ĞhA¬­\ê©ğ\n.\\¸\ÖwÇ\ç£E‰Rlµ^Á‰gfI± u¡ß‘\ïYŒ´öbQ\Ú1ûJeÀ‘\àh½\âŠy¯˜\äÌ¶593 <ó—¶SñÚ¢\æ—\È÷Û¿®£^\Äwu¼\Ù\Ø(\ÓÍ•ƒ\Ù#Zu{Cª£r‡—¬‡öIÆ»„¿£q[1Ö‚­<[Áyºš|‘\è\èÖ‹\ã\ÚDzL™\Ù\Ã\á\à­q,øŒ-ıQ+²!\äZ¥ûY­\ä]\êg³€\ãõ‘œ\ë§E\İ\ã\Ìs‡w™_^\è¬É¯„ÿ\0¢ü)„qP\0@`uôj3Zb²·Fóøòª£>\\\ìU–8‘\ã1«\ÉÀ\ÆŞ‹\Z<H\Ë\Ë>õ[\â÷qQ¦=‘;Ã«\Ûv¾\ì\Èòš\ÚA£sÃ^\ê\0=<\Ô\Ç\äÿ\0?ü;\å\İ\Å~S[P\ìš\îsñ3ò\Ğ\ê\Êÿ\0\ãSğ³¬¯_\\x\Äó“–\Ş\È<…hı ¸\îa§ynhz\ÑIg$\ÆiT\ÖşP\Í7Mùp@Al\Èd›u\Ú\Ã%i:V‡°\ä£\åC•l\íD¸\Í\Z¼k\ÏoOE¾·\Ô1§#:i±£‹E¤1¥\çFŠø-\ë\\¥£I¾1f%“eS¾§\ÅzH.1H¥“\Û9t\ËcSƒ:;\Ëz:\ÊIö^\Ç\ßõ 1÷·g&t$£]\Õî¿¸ùWŠ\ì\İ\\6—F\â\ÃÒˆ\å\Ö\Ş£¼/?\â\é=ú2\ç\æ\Òş@²Z(Y#t×µ®\×\Ë>\åM…k£!¦X\åV­©–wß³\ÛğûŠµu\ÑRü¬>Œ¥±y”\ï\Õğ­\ÊñP\0@+\r\élkg•\\ò\í\í“Z˜œGP­ü´ğTt>yŸ¶\ËK~Z}ô\ÍÓı\ç\ÏøPeO\Í\È’\æˆyu%ıKl| ˜»!Á{*óÜ½†Õ­È§Îú~Ú„“¸· ß«Œpd|\Ö÷*z\ÉW%Q/’³\àœ}\æ‘ñøÙ“ d\Èdu³,6½\0\è•:k¨47=óQ‚J\ä2}	ûôÓµRf\ã(>Qÿ\0E-ü–¤]²@sÕš®lš%´5½\"©\ì\Z•”¤û\r¤e¯›\à\Ìp4Às®E\Äun\n\çEs—r·&şOŠ\ÇJ¬\È(i\Ó t\è`¡\åm«\êC}\ç\Ôü·\Ş\ì¶bl\ï5ŠN\ÑAŸqa\ïPó*\ç[%bÏŒ\ÏD¸\å\Å\ìšwşk\Æ\ä\ÇS\äIK\ÜtY^;¦oN\'Œú\Úrô*õ\ÙÎŠ\îö*8p¶u{e˜=x\Ñ\Í\âªş/qL©’\Ó\Ğ\ê\ØÀ \0€¯¿\í;4\Ï\á©\ÛJ\Æùj¶t©nim\É\Æ\à²\Êı\ç!\áA\æU6;\áD\æYÜ¹]¯wa„4jóøë•›.-zZ0–»F,œ6\å01 ÿ\0…{,j´y¼¹ng4ˆHÅ¤‘\Ú%´=¡\Ã~\î‚%²d»%^æ±º¸€;\×;,ò\à\äÍ«‡9(›;\Í8cvò\ì\Çp^~\ìû$ú=\"\â¼H%Ô²ŒŠ4\08Aä¡»d\Ş\Û$¨EvCn³\Æs,o…=[/qÁ{G[\Ñh€W\ÅaÍ¿QÁ\r\Ú ı65İ â·…ó‡fk*a.­ûò\ékd‹ \Ü\ÜÓ[\ËOÁZ\âg\ÊR\á2N.—(™‡Ì®Z0ù\ÖA–¾­{G\å£r€ªz/ù4\â\èmğÁ#zˆ«]\ê\ßÊµš\Ú\Ó6‹\Ó\Ù\é<˜´b ûñ‡w\ä~%x\Ì\èqZög¥Å–\Í8n(&g\0<)ş•7\Ã\ß<Y\Åús\ã/sgÈ¹ñ\Ø\â<o\å$+\ì9ò©2§\"<lh¼R\0€?Ë¹)a›¬\â\à¢f=T\Îø½lF.\ï±·7úšª&øø|š÷ÿ\0²\Éu\ËE]şy]ğ*—\êe¦GcÎ¯‡ıšN°Áÿ\0²\Ğ\çş0½¶:\Ô/s\ÜÌ“\ì\äg¨ô\í]GLC$û\r °\å¡\Ô|Pp\Ú`Ÿ—\í~1\èT\\ß±#¾7İ‰\èØ—“\Ù\èt&$\Ø\ĞbM˜\Ğ¦Æ\ÓcE}öÿ\0¨—ğ;\ÑI\Å«\ëô\Ù\ç.—.\å\ëc\Ï2®\ßl\'š\Şóğ[¢Dw¡‚ó‘­;gƒ£¡“Ê…»\ä{ò‡±\ÍğÄ¼ŸˆÇ¬‘\èp\ßÊ™»°Š\íÏ•~i\á/p²?\ĞñóAš£—\Ö\ÊG»+Ç\Å^xsı$ŠœÏ¹³T¬€€7ô‚>\Ã\'k?¨(™\ße’1>\â23ö6~&ÿ\0PTöÿ\0À—\çş\Ë*ÿ\0\å¯ÁS\Ê‹?ÁSaıl³\È\ì6¾\Ù]\Ô`ò|\àù½µ?I\å­úŠ˜4]h\æ[&öø|\È\Û5@K…\äh°şMM[L?Œz7\ìH‘‹÷¢z}W‘\Ù\è´MPh\á\ÎM·9gf\n\ëñÿ\0g—ü7z)¯õ£ù8\ä/\Óg—M)!zôy\Â‹`F-$\Ğ \Æn\Ìù0[ò`}§ü©¥­\äp\Ê/\ÄóıK\Êø‹ù\æz?¢&ú\ï\é;ü7-<´ÿ\0\Ş#ûK\ï£qöwÿ\0Š\ïF«\ÏûeFg\ÖkU‰\0@Rr\Î,V)\ÇÜ¯FÊ\ëh\íCÕˆÁ\İ.­\ßt\×À‚©\Ò\ç…8–R|rb\È7\ëkx8y\ä¨ñ^§¢\Û#¬O9½#¬3·x?ú\åkÿ\0¥\Î^\Ó\\«<\ÆJ\Ô\Ê9\ÉI8X†Gv¾(\Ì½cõªÀ-y0~\Õ\ã…D\Íÿ\0/Á#\ïDõ5\äH%8 qCuø~\Ï/\àw¢“‰÷£ù8\ä}¶ykŠöób6\ÊN¹5²˜r\0\Û\Ê,ù2(\é\ä÷ ó\ÑñXfQ°\ä|TuF\\ˆú^G\Äe\Ö_“\Ñ\áÇ¢F\Î\Ì\ê6Wp5]|)~’9g¿Ô‚5G\Ñ\Ò\Æ¼÷Ÿ\æ§Á^xzıÊ¬\Çú¬\Ó)\ÄP@\İ\Ò7°ûMs|E–-Á£h=I3Ê¹-›e„\ëC\ã\Ñ>eRá¯®·\ìZd?¦hK\\x\âpß‡\Ìg\êœŠuÛ§\î\\¿½£i`Ú–Œ€81»ı%z\ï³p×±\ç³!©\èi-:´–\Ğh}’ ’\ÚPFP#(d²\äü Ú¡:cĞ¨™\ßbDŒ_»\Ò\Ü\Âhôiœ¬8%\r¸¡ƒ‚²ù°K_qŞŠV*ıhşNô\Ù\çlŒ4e\ÃU\ë½86ò¶(PÁsu\ÃK#Ïµh™±7ğEZŸ\Ì\ãùW+¥\Â\r*)$où;\r1;p£»?’ñy’\ßOòz|xèºµI†\Í#½÷Pv7/PU2òğ·üŠû\ß,{ƒÉ»6\Ê\Ë7†4\Ò*}Uş<8V‘Qt·6\Ë5\Ü\æ\0  <²ó‹ö[\É\ãF\Èq“3ü\ÕTSı­¾\Ïş\ËX~¦>\í1\á‘\Í\ÜN!\Ø\í|\êª<V—]\î^©eg:µ\ì`ùOb\ÂI§D“ü\Èød…XxmıR÷\"fÕ´\Ì}÷\r$\î”U\Ü6\Éÿ\0›\'ÿ\0^{(ô0Â²ZP\Èû—¥¬\'¼Ñ¡\Õ$\î*6T%:e\Ü\í$¬M›ÿ\0ú\Éıû›\ä¼\ãÁ»ø—K*¿s‡_öC¤\Íşo’\ÇÀİ­ñf~.¿s“|Yÿ\0½oó|–¿w~#\â\ê÷uõf\Z\Ì\ß|–\ßwñW¹\Ïöõ—û\æÿ\07\Éea]üM~*¿r%\ç|\Ù\İl­$´€3\ÌÓ±H\ÇÄ¶6&\ã\êr»\"·“0…\Ë\Ñú£/r\ÈqCA…\Îk\Z*\çÖ%Æ€x”@\Ù[¶dM\èY£¨\Ğ\È\î‘ñª«ñu(Ÿ‡^\å\È\Û]ğ–D9\Ç3\Úwz\ågú·i~ÿ\0·^\Ù>\Óf\ÚMg²-\ÇÙ«€>+\ÒJt®È¥Œ¾Y\Øı{¹K]\n¾ıEY\0€\0@b~“.\Òce¥£8\Íø\\u\îu<UgˆÕ¸©¯Bnš—\êRm¶°²Q«rfó\èT¸|N/%\Ş$\Ìyùñô‘QY13+AG-?¯2©qlp–‹;\á\ÉlÀZlXƒ¬\î:cq\ÜGAÇ´U®ñÜ½–-\êpGœÈ§„™Q—q¨ A¦Dj¢0ûlƒ’-™E…\×s:w\àŒó¨Nt‚›û\×­UÇ”\ê­\Í\é­Ü›’\ãx«w¹®¶‹y•\Ù\Ó\Ô\Ş\Ìi\Åm“›\ÉI€®J\Ó­;?©=u:|%„{‚IX\ÆfŞ•r\rİŸ¢\ífMu\Å6ûœ¡L\å\'‡-÷l°€ç„ûM8‡a¦‹\ä\×c\Ò3:%Z\Øó.)œ\Ğ\àG\0E\\4\"«Ÿ\ÇW\ÉÇ©ºÄŸ•\Ó]‡f\é­qa \çQM\İ\ë¯\ÄÃ—sŸ’ô\äE¼n—D\à×	\Z–\Õ[\ã\èbu:ú3¨y7h‘\íÁ…Â¢®§W¥\Êyµ\ÆNvt4\å^…U²\Ã$n,p\ZĞ‚<TˆMN;G	Ç‹\ÑH\Ü7-\ÍK^NÃ²c­\ì\ã³\íHF>›ğÔÚ­e5¶eE\É\é\Z¾M]š9ò.;~]\Ë\Êgd\ïrÿ\0G¡Å§ŠH\Ù\ÙZ±‹9Ç·põ=\Ë_	\ÇNN\ÙöFs\í\ÒUÇ»-y	f2\Í-©\Ú¹\á@®ğ¢ì›µÿ\0‚«)¨EV\ÈV„P\0@\0Í®\Î\Ù\æ<U®iiDQk8©&™´d\âö*²5\Ö;K\ì\Òôk@N„‹»øªJŸ‘k®]™i?Ö­MwCòÃÅ‡Og­¼;´T¹ø¯İ®Ï±e‡z¶\Z}\Ìo(\îƒ^n¹–¼oaıp*n_¿öG\Ë\Ç\å\Ø\ÏZ!2ŒmZ\ÑG·{\ÃGH}»\Æñ\Ö§„Ô£´QN-KL‡•[\Z\ZnBŸ´ÿ\0–ÿ\0Vªÿ\0\ëQ7\ë¶\Û\ìğ\Ù\æ†>GH\çTP7q\0w.5Qd\æ¥%­\'d#½\ì\ĞÚ™	µB\\]µ\Ö1£\ró­uP¢\ç\å\ËK¡%ğ\æ–ú•BWº\Ík RM«±­\0hğ *F’²	ö9rn¹5Ürû%£pPa¯\Z\ZÓ¿\n\í•\ÇÎ—\ß\Ô\çFü¹s½+>\ßi]“iƒğ6µ\\ªVy³\ã\îoc‡òö ´\Ø$¦›WR¼9«´“ø…ø9¯²ÿ\0!\Ê\Ğv¬ =\r\Õ\â¶ğù%·\êc17$\Òô.‹öH6¡\änÁ­j\íz”yryã£¢qò\"šff\Ø\æ\âv\n\á®X«Zu«z~¥}ŸWA«\r‡ö‡\ã‚ó–Ns\Å\ç†\íWMšè½²0\Ï#d\r\Ã@e1\ì´doû³MŸ•\Ş´\Ã\ÇS6¶6Éº¸\ëM\ä\î‹Ì¾WØ”K•Æ¨rd«puf9$p­8Ÿ€ô\ĞÊ¿.Ç‡ROœ\Ò\í\èz=\Ïw¶Yth¥x“™=\æª\êª\ÕpQEe“s““&®†€€\0@(·.¹?ûD{X‡\×F	\Õ\íÔ··xÿ\0u7Í%\İñoò\å×±’»-B\Ñ\ZHÎ‰?®\ïøPc\Ç&·UŸR\ìKm\ã\Ù\æG³8´À$ic\Å\Èñi\Ç\ë5\ç¥	\ãÙ©”n†Ñ‹¾.§±ø™”ƒ<ÀĞƒ\ïu÷/0³¸\éo§ÿ\0\nÌ¬e/\ÉM5œKWF0\Ë\íFy¡\çyoºú\ê2¨šøN2]\niÁ§£‹®ô’	™\Íx¤8iZTt\ÑkuJ\ÕÅ›Bn¶6\çÔ’w’Ozè–£¦i\'·²\Æk\êg\È\ÉK†6\n4†§½pX°Qp]™\ÚW\ÉË—°G|\Ì\Ù]+]G;¥@0»µº,<Z\Ü8¿@²%\É\Éx_SL0½\ÃŠŠ±+ƒ\Ú]E—\Ù5¡›]\àù\Zò(Á…´\È\nw\èºWD`Ü—s[-”\â“ô[\Ş\"0\Ô`\'\Ë:å¿¹%	O—¨²Qâ‰‡”¶-ü¡pX0\Ş\Ñ\ÑeL(¦¡ ¶‚´«FòOÄ­%.AeOZôl/µ<\Î\ÙC\íIJ‘\ì\Ä\ßhõ\è2ß’\ï\\q\â»e\'\'¶MŠ-°kZÍ™‡\ê\ã\Ô\È}÷Ÿh;÷*\ì\ÌÔ¾X“±q_y+ª\ïÙŒn\êd=\Ñó^bûœ\ß^UZŠ\êZ‰m\Û?ø\Z¨ş½U¾<qkógõ>\ÅnM\Îùùq\í\ê_r\Z\çvvÉ‡=\ã\êÁöZ}®\Ó\éÚ¬ğ¨{vÏ» dÚ¾\Ü{#d‘T\0€\0@\0 <û–œœto6\Ë0\ßYX7}öüGS™Š\Óó+\'\ãŞ¸ùr+,Ö–\ÚZ\Ò w8p=^Š<\ê†t4úI!9bË§\Ò3h²ÇŒ\Æ\í\í\ë\ÏNc\ÏO¡oB\è\ív2w\İÃ¿C¹\àx\×jµ\Ä\Îq\íşˆ9‰”vÁ\ì\ÚZx6Vp\á™wc‡‚¿£.¢\ÜyC¹\×tš\ÄD\Íû¹<v\Æs¯eT¤\È\ï§r#m¥§\'\rAÈ\Ğs wj´2„RZ\Ú5)°=b²\Í0¬l8}÷sÛˆ\ë\İT\èl\ĞF\á_´Ë¹¨…½n:¿\Èv®V[-¶t…r›\ÒEœ	\'xt\Ü÷{1·&0viO.\ÕM“Ÿ¿§±iF«©¬»\î\æ\Ç\Îu¸\îog\Íyûos|Qm\n\Ô\Ùd\Z\Zİ¤¹4f½Ç‰m‡…\Zc\ç]ş]“’\í~]_\å“99sº\Û&\ŞaH\Zy­÷\È\İøFş*ÂŠ¥‘>r\í\èC¶\ÅTxG¹\èVı–‘]\Ü\éd\0@\0 U\0U\ÉX\Öû\Æ•<‘sm6!jø†]ñü¼8*¬œ\'Î¢})®\ÖK\Æ9ù²s$§wû\ÂR«&<.Z~\çd§K\ç[\Ú™…¹H8û\'\å\ØU6W‡[Cäº¯tYÑ™]«O¹Yl¹š\êà ¯²si\î\\kÊ”{l¡>\Æj\İ\É\Ì& Å™·»€\ê\É[Q\â/\Ñì¯·	?B¬´R\ÎÑ x\ÌY\â¬\á\â}úe‡%Ø‰$1ûvG7ü7<Â“\Êß©Á\ãX½\r\ÍıÕ ù-ş&\æ¾Dı\Ùgƒušg~\'¸HZ¼ª×©•7\èK†Œ\â²\Ã÷œ;\İS\ä¸\Ë\ÄkK¡\ÖR}\ÉMº¤˜ıt”ğ¢wˆ·Ø—^\nL¿»ù?„f\æOi\ã\âª.\Í\äûì±¯Hº‚³›s\à3\'¬Ÿš]7d\Ë\åGYYU+m\Ï#!¥ »PÁ <OwN-X‹r\ë\"²Ì‹2£\Ò$û‹“ò\Û\'´‚\Øuk4/\î\Ü\ß2¦U;\å\Î\Î\Ş\Ä[.Kg¡DÀ\Ğ\Z\Ğ\0€€\0V‰%\Ñ\í½­€ \0  \0€B€J 9%\0•N€\Ìò’p\ÚNÑ¿W7¾\İøÛ¿´f¡_‰:®Œ“NL¡\Ó\Ğ\Å\Ú%µXK1G ~­=\ã\Ô|\İO\Ë.¨•ª\î\ëŒ~\Ï,2gğŸtô|7w.6bb\äu\Ê\Î\Ğ\ÈÈ§£\ê‡^Ç·¤\Âz\Û\Îò\ÕV\İ\á7\×ôõü+ñ\n\ç\Ñô\">_¨m)ù¨oÎ«£\Ú%/*}P\Ë\îh÷b†¾¡eeMw0\èƒ8ş\Äo¾\ï%·\Æ?c_‡B‹‘›\Ü\ã\à>2^\Æ|ˆ¡\Ö\İğ3P?ˆ\×\Õk\æ\Û>ˆ\ÛË®=\Éqgû¶’:…\âr]\ëÀÈµöÿ\0g)\å\ÓZ\î, 79^\Z8Ÿy\İÜ¬«ğºj\ët¶ı‘yöYöÖ—¸\Äù&;+D\î\Ü:\Ü\í\İ\êdl”¾J#¤F”bº\ÚöjnG²7	m\'k. ƒ=£\ÖTº0\Ô_)õd{r[Z‡DkC”ä—¡û³ı P\n€T\0€T  \É@rP8 \Zs\ç\Â\àZ\à9@ õV\ZO£FSk±½ùgy.…\Æı\Ü\Ù\ŞÓ§qP\ìÁ„º¢D2¤º2‚{\áf\è–Lßº\ìÿ\0+©O5\Ã\áî¯¬Y\ÛÍªR\"»”\äeh€\Öü\Ö“ığÙ•ş\Ùhéœ¢±Å½„’\ä\Õ2ú«:\'búf:/»¾\ï\Ì~k_#øó2?‘\Ã\ïû\Ş\ã\Ş~k*¼uÚ°\çs\ï1“Ê˜G\îa©\ê]c?\á^M)\ì~+Eº\Ñ\Ñ\rˆ\ïu=3ò[ùwÏ£f¼\é‡]l¹ºù\'\rC­3:gkA\Ìg†¥u¯+¬r\Ë´\ÙØ„lhdm\rh\Ğ4P)±Šb;“—rc$&£\írÀPA\Ò\0@*\0@\"P”@6\äj4±Wzu9lD\ïAÑ&¹ñ{E\ä?%ƒµqñXi3=}\n\é>\áv¤­xG\Õ\å#ôsg\â|V<¨û#<\Ø\äG–q\ÅgË±r÷\'A\È\Ø[¥V\ÚşŒm“\á\äümÒ«;0O†\îhN€™\0 $1¨\ÚP´ ;\Ğ(@-PTU\0•@!(I@!@pP”nP– 81 f€M’\0Ù \ršDh 1\Ğb°\Ô` ;\Ø@(@t\n¤„\0€B€B€D  9!\Éj0 \n0 \0À€L\0Â€\\(Â€P\ÔA¨\0  :¢h€T \0\â\0@ˆö«dq\Óhö2¦ƒšÚº”1Ş—=»F3&¹\Íš¸Š\×Zmw¤‰$cK„UÀfZ\çŠğ0 8†ù³¹¡\âhğ¸\á½¢®÷u\×1—Z\Ù/‹±Œ:½£\riLY\å¨×Š±{\Ùñ9»X\ê\Ö6C\Îm£«])¿¬q@8\ë\Â\Z\ã,a¯4a/mx4×Ü€[5¶92i«\Æ@\ï«yÆš\Ó¥{\ë\Â^±‚ÁW‚öÕƒ‹\Åy£µ\Ë\ïK8\r&h€x%„½€<-ÏBæŒ½\á\Å\0õš\Ó‚±½¯\0Ğ–¸85\èAM¼›‰\Ì1\È\Z^Ö*öµ\ØIf|HÖš„øe\Ø_‚BÀ2n\ÑÁ­\Æ+—9Ào@vo8ö›:;\'ˆË¨0‡–‡†Vµ®”\ÏT,½\Zc’MœŸVHspŒy\0r¦„P\Úï˜£\rq!\Ì\Úd5‚•q©\ë\n¤Ï¼£\ìs/À\ç\ä*(\Ü5m}\î{M8\Ä »í™˜\Ú\ç=¤8\0C˜\â\×Bw‚€“DD\0€\0@]{\İ\î”\Ü+G\ásœ\Úû„= \ĞGR‹E\È/¥d•\æÎ’\Äø\éZ\î\Ä\r~\îˆ?±\ä/l†f\ãk\ØöıQ\r£b’\"v•5¸Ö¹\Zk¢™y:\çƒ#¾::7–˜\ŞA£š%vYöPgº\êÇ´9µt»P\\\×\'/u\í5Ö¡[–GR³pÁR\æL–w\ãk\Í9¤Ö­×\àº\Ç5í•¸ş³c%®\È\ì\r†£‰\ëªn\ë¡\Ğ˜\äX÷½Ø˜Nn•Ï£N,†\ÓJ\ç–`É¹ßÑ‰[‡k¶±’\æ¿m¶\çœt{qeJ4\Ó}s@7\'\'ñŠ@\\\è­LqÁA[K¢qs[‹ 6zTÖºñ\Î\ËdÀ÷º½<R”À\Ü<s@qw\İ1@\é_hf~\ÒLÉ«©J\ç¦\\\ìv	˜ùd|±½Ï¨iØ¸\0jÆŸ­ ´\n\äjs@FşÅ›öX\ìûh\ê\ÇFq\ì]B\"{^Ñƒm‘«s5ß @H\è\Ç3eqe\ZZ\ê5„9\ÏkpÔ¸¼Šg\î\× *€H®\Ù\Ãgiš2e$´ˆ^*\Ğ\ÓQµ8²x\Í\Õ\É÷\È\Æ5ò³c1—lN@œŸ2€Î«³¦\ä–Ü¡³¶f=À5ZIp.”\Æqj(\r7\ÔiD÷5ŠHX\æ\É#^L’<°\ÇM£\Üò/usq\Ï$‚\0@\0 \0€€@\0 \0€€R€@\"P€T\0	úõ@(@*\0@ÿ\Ù','jpg'),(6,123456,_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0	( \Z%\"1\"%)+...383-7(-.+\n\n\n\r\Z.% %--------------------------------------------------ÿÀ\0\0\é\0\Ø\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0G\0	\0\0\0\0!1AQ\"2aq‘¡±BRÁ\Ñ#$br’ğ3‚¢²Ssƒ\Â\áñTc“³\Ò\âÿ\Ä\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\01\0\0\0\0\0!1AQ\"23q#BRa‘4ÁS±bÿ\Ú\0\0\0?\0÷\0€\0@\0 \0€\0@\0 \0€\0@\0 \0€\0@\0 \0€*€Z TU\0¨\0 \0€\0@\0 \0€\0@\0 \0€ \èW\Û\ï\Û4?½• ğ­O€\ÍqõÇ»:F©Ë²(m?HVq”l’NÀ\Z<\Í|”Ix•k¤z’#…7Ü„\î^\Î\ï\İ\Øü^Ob\äüF~:,%\ë#Ÿú\Ê\Ûÿ\0h\ßü–¿wğ3ğuÿ\03¶ò\æ\Ğ\ß\ŞXü\á\êÅ•\âõ‚¤\ÉV¤\ïb’>\à\á\äk\äº\ÇÄ¡û–ÿ\0oRöÁ\Ê,\ÙG3I\àN\àT¸dU>Ì*gè´ª\ìºö8€Y2*\0@\0 \0€\0@\0 \0€\åÎ¢\Ã	‹\ï–\ĞBK\"ú\é4£z õ»`ªƒ~|!\Ñudª±\'>¯¢3s\Ïx[3{\ÌQŸe§\0§]9\ÎôP\ß\Ä_\×zD4\Õı±¨®‹$]7¼ı2\ëŒ\Ö-_v{gX»\ìú#¤Je²6~\ê³Jù.ñJ µ–²\ë)\n\ë\Ö]\ØG`ÿ\0u\Â^5o\íI†Wû›8şÑ›\ßşPµÿ\0\Ìdÿ\0Fÿ\0ø\ÚN…\ç(\Şk~K+Æ¯õH\Õøe^›\Ş8¿y\ä|\×hø´%÷ i/’ú&F–\Åc“V˜—ˆ¨]£v¯I\éœe^E}\Ö\Ğı™–\Û6vi¶±û8…:Ó¸©Qõuƒ\äÊ³\êZe\í\Ñ\ËhDv†˜_\Äôñ{=\êUYñoŒº2=˜’]c\Õ\Z ú\æ4Ü§§¾¨‰£¥\0 \0€\0@\0 ;\Òñ\Ï’W´x“¸¼®v\Û\Z\ã¹\Â›\ÔO>·\ß6«ÁÅ‘V(4\ë=owúGš¨÷d¾5ö,#Mt-Ë¸¶{<l˜İ¤›\Î\áòõ\\¬·)a]¹º#‹M©\ï\Í\îË€É£õÖª/ñ\ïz\ßOdXÕ‡UK¶\ÙSh½\âfM\ç~<W\ãY.¯¡\ÖW\Æ=Sl\å1i¥XÎ£\Îw‡û)•ø~ú\é²4òõ\êA}ÿ\0!\ÑÒÆ–@¥\Ã\Ãü‘å˜½\È\æû“ÿ\0\'\çoÿ\0e\×ÿ\0ı9ür÷eû \ß(\î\Å\éU¬¼5ÿ\0l³—¹.T:´/i<0‚‹g‡k¼I\ÌO³-\ì÷óNOioX\Ì|\Ô)\áµô²Lr\îZ\Ø\íC¥ÿ\0)õXd_ú6ŒÎª®]Q2I£˜a´0WsÛ»·‡¢¶§>¬–Õ§\îWY‰ejê½…²Z­6\nµŸ{NtZ}ŸE22·ª|¢F”+»ú‘¸¹¯x­,\Ç«\ï\Òi\àB´¦øÚ¶Šû*•oL±]\0 \0€\0@\0 +¯»\Ş;,FIOSZ5q\à®q\äÎ•W+y\Ød\Öù6öƒ†!\\-\Üñ?ğªg•.szŠ,w\Z­È—=°SgÁ\Ş2.ù53Ä£\åĞ´‰x\ØMü÷uşŠ{m\âÈ¹ U\Üƒ·‚¬®‰Xö\Éó±Aik\Âøs\ë 1´õ»y\ê*\ë\Ãß¶Š\Ëó*­–ŠSjúW@q2¿†6\ÖG÷\Ğ+z°\á¶Ì§!û\Ój}M™\á§Ú”¶\Ì\Ó×µ‹Š–£Ø\ä\Ùe\"mo\ÎI,¬=Q¾b;\ßJ­G‡ \æÿ\0½ou’/š‡ò\Ğ4´Àó÷\ì\ál(6MÛ˜9\Ğ2Qÿ\0‚Rs%y,5;\ÑP$Ù»]·2A²\'ğƒX\ß\ÜZz—1«Ÿs¬r%Åšôtn\ç‚\Ò=¦\ÔeÄ·ZuŠ…Y‡=|½Iô\æ¯SSw_ÀÒ‡G·Nÿ\0˜TW\á¸öÿ\0E­Y*] ±\Ú\Ë:4sN­\ÜA\áÀ­ñ3\çC\ã.«\Ø\×#®Q\ï\î+\àtNıª\ÆhGM[Á:¼\Ä÷Púz¢±ÿ\0ë»¿£6ü¿krx\É\ì:´üA\ÜU®>Dm\Ñ_m2®Ze²r\0 \0€\0@-\Ö\ÆC¤Ñ­“úŞ´œ\ÔSl\Ú1rzG˜™x\Îf–­…\îZW‰¥Iù*U\Ë&\ŞO\éEŸJ!¥õ2M²\ÔF3(\Æ@j›\éÃ€U¾!\Ëô«úQ;_<û™\ë\âø5ÀS¤şC¯ô3Q±±\\\Úÿ\0{¯IK\\õ¿šÀ*C‰m\çL\í[]\Ì\çx¯K„£ó>\å%ùN]õ\Ít\Ïk!\Ñ\Ö(FM”´	4û4zD\İy\İ\"7ê¬’K±½›{¯“YF(\â\çd>Gv½ÙÁE˜\'\í\n±½w2“}‰\r²HwS´€¸<˜#ª¢L\æ[;Û«r\â3ô[FøK±‰U$1v\ÙÈm³G3K&cdi\Üğó\Ñ4u\ï\È÷F¬gF³\È\âGù2tn\áŸjÁœ³ZK°U®o\ïbx\Â\æ/o¾\Şğ¢ß‹Q\"¬‰Aš{ú§\ßi‡Võ\Õ\nóyxm>¿\ìº\Ç\È^†º\Çj¥$Œ\Ôx8p?¬”<l™\â\Ùız¢MôBø~ƒ\ÓBñl²ÿ\0˜\Î#{HınW\ÎJ)]OgÜ©qmùVwô=\é¼Yh‰²\Ærp\Óx;\ÚzÂ·ª\ÅdSEmp“Lšºš\0@\0 r\Úóu¦\Ğ,qc\ÆF÷ğ\ìhó¯M›k¶j¨Xµ¨CÌİ¬¶6ˆ#\Ğy\ã\Õß©\îPüC!Q\"¾ş¤¬*]\Óv\Ïü\İ\â¡¥\\}\Ö\Ó\å\äªqhs|™>\ëTVŒ…¦\Ğ\02\Èpµ 8TW\0=–”®\Ïw\Êõ˜˜ªo¹A“\äõ\Ç\\‘¹\ßx=³L\Ú@\×Œ5.\Æ\íòHOLõO’C=\Ş\ç¹YAp\Ô\îH	7\Ó\Ú\Ø]‹†H?T\ä°\ÚKl%·¢ú\Åg]¼ü¨¿\"S—NÅ•U(\"N%h\í\Ø1,§®\ÃI÷*\ïK0\0½¿\Ä>*v.G^2\"_ONHª2+\"†Ts•w´,\'¥™±\ã,Tö\Ä\ÖH]\İn/$‚h\ê$e((:Dw‹wj2Óô\Æ\Ø\ékµÁ\ì\Ø\Ü¸¥}’há½\ãú\Ô//™‰¦\Óÿ\0ö=é­›§©Í\É\ÃPG\Ö\å\Ç\Ãò\İ3ò\çô³|\Ì2<\ã\İ®[Y±Z°õw5Ç¢\ï\ê «\Ê\äè·\í}Š«b­¯’î»†Á\\*\0@\0 G*/Qf³¾_j˜X8¹\Úxf{Š•rª¶Î´\Ö\ç4Œ\'\á\ÙD\ëCó{ë†º’~gâª©~Ur¾e«Ìšª#\ËFÍ…\ç3\ê\ãúò^srºİ²\çJºôŒM²b÷\Ğó¨\ìÁ\ÑòSûŒ\0½\İM§RôşŒ’\ä\×\à£Ì¿*2\ÉÍ²\Ò\È#\'gŒ\æuy=9Ä2\àB¹+v}ô{a`´\0Z8C\ÒišÀ\\\ã@7””—\î\Ù\ØY\ĞhA¬­\ê©ğ\n.\\¸\ÖwÇ\ç£E‰Rlµ^Á‰gfI± u¡ß‘\ïYŒ´öbQ\Ú1ûJeÀ‘\àh½\âŠy¯˜\äÌ¶593 <ó—¶SñÚ¢\æ—\È÷Û¿®£^\Äwu¼\Ù\Ø(\ÓÍ•ƒ\Ù#Zu{Cª£r‡—¬‡öIÆ»„¿£q[1Ö‚­<[Áyºš|‘\è\èÖ‹\ã\ÚDzL™\Ù\Ã\á\à­q,øŒ-ıQ+²!\äZ¥ûY­\ä]\êg³€\ãõ‘œ\ë§E\İ\ã\Ìs‡w™_^\è¬É¯„ÿ\0¢ü)„qP\0@`uôj3Zb²·Fóøòª£>\\\ìU–8‘\ã1«\ÉÀ\ÆŞ‹\Z<H\Ë\Ë>õ[\â÷qQ¦=‘;Ã«\Ûv¾\ì\Èòš\ÚA£sÃ^\ê\0=<\Ô\Ç\äÿ\0?ü;\å\İ\Å~S[P\ìš\îsñ3ò\Ğ\ê\Êÿ\0\ãSğ³¬¯_\\x\Äó“–\Ş\È<…hı ¸\îa§ynhz\ÑIg$\ÆiT\ÖşP\Í7Mùp@Al\Èd›u\Ú\Ã%i:V‡°\ä£\åC•l\íD¸\Í\Z¼k\ÏoOE¾·\Ô1§#:i±£‹E¤1¥\çFŠø-\ë\\¥£I¾1f%“eS¾§\ÅzH.1H¥“\Û9t\ËcSƒ:;\Ëz:\ÊIö^\Ç\ßõ 1÷·g&t$£]\Õî¿¸ùWŠ\ì\İ\\6—F\â\ÃÒˆ\å\Ö\Ş£¼/?\â\é=ú2\ç\æ\Òş@²Z(Y#t×µ®\×\Ë>\åM…k£!¦X\åV­©–wß³\ÛğûŠµu\ÑRü¬>Œ¥±y”\ï\Õğ­\ÊñP\0@+\r\élkg•\\ò\í\í“Z˜œGP­ü´ğTt>yŸ¶\ËK~Z}ô\ÍÓı\ç\ÏøPeO\Í\È’\æˆyu%ıKl| ˜»!Á{*óÜ½†Õ­È§Îú~Ú„“¸· ß«Œpd|\Ö÷*z\ÉW%Q/’³\àœ}\æ‘ñøÙ“ d\Èdu³,6½\0\è•:k¨47=óQ‚J\ä2}	ûôÓµRf\ã(>Qÿ\0E-ü–¤]²@sÕš®lš%´5½\"©\ì\Z•”¤û\r¤e¯›\à\Ìp4Às®E\Äun\n\çEs—r·&şOŠ\ÇJ¬\È(i\Ó t\è`¡\åm«\êC}\ç\Ôü·\Ş\ì¶bl\ï5ŠN\ÑAŸqa\ïPó*\ç[%bÏŒ\ÏD¸\å\Å\ìšwşk\Æ\ä\ÇS\äIK\ÜtY^;¦oN\'Œú\Úrô*õ\ÙÎŠ\îö*8p¶u{e˜=x\Ñ\Í\âªş/qL©’\Ó\Ğ\ê\ØÀ \0€¯¿\í;4\Ï\á©\ÛJ\Æùj¶t©nim\É\Æ\à²\Êı\ç!\áA\æU6;\áD\æYÜ¹]¯wa„4jóøë•›.-zZ0–»F,œ6\å01 ÿ\0…{,j´y¼¹ng4ˆHÅ¤‘\Ú%´=¡\Ã~\î‚%²d»%^æ±º¸€;\×;,ò\à\äÍ«‡9(›;\Í8cvò\ì\Çp^~\ìû$ú=\"\â¼H%Ô²ŒŠ4\08Aä¡»d\Ş\Û$¨EvCn³\Æs,o…=[/qÁ{G[\Ñh€W\ÅaÍ¿QÁ\r\Ú ı65İ â·…ó‡fk*a.­ûò\ékd‹ \Ü\ÜÓ[\ËOÁZ\âg\ÊR\á2N.—(™‡Ì®Z0ù\ÖA–¾­{G\å£r€ªz/ù4\â\èmğÁ#zˆ«]\ê\ßÊµš\Ú\Ó6‹\Ó\Ù\é<˜´b ûñ‡w\ä~%x\Ì\èqZög¥Å–\Í8n(&g\0<)ş•7\Ã\ß<Y\Åús\ã/sgÈ¹ñ\Ø\â<o\å$+\ì9ò©2§\"<lh¼R\0€?Ë¹)a›¬\â\à¢f=T\Îø½lF.\ï±·7úšª&øø|š÷ÿ\0²\Éu\ËE]şy]ğ*—\êe¦GcÎ¯‡ıšN°Áÿ\0²\Ğ\çş0½¶:\Ô/s\ÜÌ“\ì\äg¨ô\í]GLC$û\r °\å¡\Ô|Pp\Ú`Ÿ—\í~1\èT\\ß±#¾7İ‰\èØ—“\Ù\èt&$\Ø\ĞbM˜\Ğ¦Æ\ÓcE}öÿ\0¨—ğ;\ÑI\Å«\ëô\Ù\ç.—.\å\ëc\Ï2®\ßl\'š\Şóğ[¢Dw¡‚ó‘­;gƒ£¡“Ê…»\ä{ò‡±\ÍğÄ¼ŸˆÇ¬‘\èp\ßÊ™»°Š\íÏ•~i\á/p²?\ĞñóAš£—\Ö\ÊG»+Ç\Å^xsı$ŠœÏ¹³T¬€€7ô‚>\Ã\'k?¨(™\ße’1>\â23ö6~&ÿ\0PTöÿ\0À—\çş\Ë*ÿ\0\å¯ÁS\Ê‹?ÁSaıl³\È\ì6¾\Ù]\Ô`ò|\àù½µ?I\å­úŠ˜4]h\æ[&öø|\È\Û5@K…\äh°şMM[L?Œz7\ìH‘‹÷¢z}W‘\Ù\è´MPh\á\ÎM·9gf\n\ëñÿ\0g—ü7z)¯õ£ù8\ä/\Óg—M)!zôy\Â‹`F-$\Ğ \Æn\Ìù0[ò`}§ü©¥­\äp\Ê/\ÄóıK\Êø‹ù\æz?¢&ú\ï\é;ü7-<´ÿ\0\Ş#ûK\ï£qöwÿ\0Š\ïF«\ÏûeFg\ÖkU‰\0@Rr\Î,V)\ÇÜ¯FÊ\ëh\íCÕˆÁ\İ.­\ßt\×À‚©\Ò\ç…8–R|rb\È7\ëkx8y\ä¨ñ^§¢\Û#¬O9½#¬3·x?ú\åkÿ\0¥\Î^\Ó\\«<\ÆJ\Ô\Ê9\ÉI8X†Gv¾(\Ì½cõªÀ-y0~\Õ\ã…D\Íÿ\0/Á#\ïDõ5\äH%8 qCuø~\Ï/\àw¢“‰÷£ù8\ä}¶ykŠöób6\ÊN¹5²˜r\0\Û\Ê,ù2(\é\ä÷ ó\ÑñXfQ°\ä|TuF\\ˆú^G\Äe\Ö_“\Ñ\áÇ¢F\Î\Ì\ê6Wp5]|)~’9g¿Ô‚5G\Ñ\Ò\Æ¼÷Ÿ\æ§Á^xzıÊ¬\Çú¬\Ó)\ÄP@\İ\Ò7°ûMs|E–-Á£h=I3Ê¹-›e„\ëC\ã\Ñ>eRá¯®·\ìZd?¦hK\\x\âpß‡\Ìg\êœŠuÛ§\î\\¿½£i`Ú–Œ€81»ı%z\ï³p×±\ç³!©\èi-:´–\Ğh}’ ’\ÚPFP#(d²\äü Ú¡:cĞ¨™\ßbDŒ_»\Ò\Ü\Âhôiœ¬8%\r¸¡ƒ‚²ù°K_qŞŠV*ıhşNô\Ù\çlŒ4e\ÃU\ë½86ò¶(PÁsu\ÃK#Ïµh™±7ğEZŸ\Ì\ãùW+¥\Â\r*)$où;\r1;p£»?’ñy’\ßOòz|xèºµI†\Í#½÷Pv7/PU2òğ·üŠû\ß,{ƒÉ»6\Ê\Ë7†4\Ò*}Uş<8V‘Qt·6\Ë5\Ü\æ\0  <²ó‹ö[\É\ãF\Èq“3ü\ÕTSı­¾\Ïş\ËX~¦>\í1\á‘\Í\ÜN!\Ø\í|\êª<V—]\î^©eg:µ\ì`ùOb\ÂI§D“ü\Èød…XxmıR÷\"fÕ´\Ì}÷\r$\î”U\Ü6\Éÿ\0›\'ÿ\0^{(ô0Â²ZP\Èû—¥¬\'¼Ñ¡\Õ$\î*6T%:e\Ü\í$¬M›ÿ\0ú\Éıû›\ä¼\ãÁ»ø—K*¿s‡_öC¤\Íşo’\ÇÀİ­ñf~.¿s“|Yÿ\0½oó|–¿w~#\â\ê÷uõf\Z\Ì\ß|–\ßwñW¹\Ïöõ—û\æÿ\07\Éea]üM~*¿r%\ç|\Ù\İl­$´€3\ÌÓ±H\ÇÄ¶6&\ã\êr»\"·“0…\Ë\Ñú£/r\ÈqCA…\Îk\Z*\çÖ%Æ€x”@\Ù[¶dM\èY£¨\Ğ\È\î‘ñª«ñu(Ÿ‡^\å\È\Û]ğ–D9\Ç3\Úwz\ågú·i~ÿ\0·^\Ù>\Óf\ÚMg²-\ÇÙ«€>+\ÒJt®È¥Œ¾Y\Øı{¹K]\n¾ıEY\0€\0@b~“.\Òce¥£8\Íø\\u\îu<UgˆÕ¸©¯Bnš—\êRm¶°²Q«rfó\èT¸|N/%\Ş$\Ìyùñô‘QY13+AG-?¯2©qlp–‹;\á\ÉlÀZlXƒ¬\î:cq\ÜGAÇ´U®ñÜ½–-\êpGœÈ§„™Q—q¨ A¦Dj¢0ûlƒ’-™E…\×s:w\àŒó¨Nt‚›û\×­UÇ”\ê­\Í\é­Ü›’\ãx«w¹®¶‹y•\Ù\Ó\Ô\Ş\Ìi\Åm“›\ÉI€®J\Ó­;?©=u:|%„{‚IX\ÆfŞ•r\rİŸ¢\ífMu\Å6ûœ¡L\å\'‡-÷l°€ç„ûM8‡a¦‹\ä\×c\Ò3:%Z\Øó.)œ\Ğ\àG\0E\\4\"«Ÿ\ÇW\ÉÇ©ºÄŸ•\Ó]‡f\é­qa \çQM\İ\ë¯\ÄÃ—sŸ’ô\äE¼n—D\à×	\Z–\Õ[\ã\èbu:ú3¨y7h‘\íÁ…Â¢®§W¥\Êyµ\ÆNvt4\å^…U²\Ã$n,p\ZĞ‚<TˆMN;G	Ç‹\ÑH\Ü7-\ÍK^NÃ²c­\ì\ã³\íHF>›ğÔÚ­e5¶eE\É\é\Z¾M]š9ò.;~]\Ë\Êgd\ïrÿ\0G¡Å§ŠH\Ù\ÙZ±‹9Ç·põ=\Ë_	\ÇNN\ÙöFs\í\ÒUÇ»-y	f2\Í-©\Ú¹\á@®ğ¢ì›µÿ\0‚«)¨EV\ÈV„P\0@\0Í®\Î\Ù\æ<U®iiDQk8©&™´d\âö*²5\Ö;K\ì\Òôk@N„‹»øªJŸ‘k®]™i?Ö­MwCòÃÅ‡Og­¼;´T¹ø¯İ®Ï±e‡z¶\Z}\Ìo(\îƒ^n¹–¼oaıp*n_¿öG\Ë\Ç\å\Ø\ÏZ!2ŒmZ\ÑG·{\ÃGH}»\Æñ\Ö§„Ô£´QN-KL‡•[\Z\ZnBŸ´ÿ\0–ÿ\0Vªÿ\0\ëQ7\ë¶\Û\ìğ\Ù\æ†>GH\çTP7q\0w.5Qd\æ¥%­\'d#½\ì\ĞÚ™	µB\\]µ\Ö1£\ró­uP¢\ç\å\ËK¡%ğ\æ–ú•BWº\Ík RM«±­\0hğ *F’²	ö9rn¹5Ürû%£pPa¯\Z\ZÓ¿\n\í•\ÇÎ—\ß\Ô\çFü¹s½+>\ßi]“iƒğ6µ\\ªVy³\ã\îoc‡òö ´\Ø$¦›WR¼9«´“ø…ø9¯²ÿ\0!\Ê\Ğv¬ =\r\Õ\â¶ğù%·\êc17$\Òô.‹öH6¡\änÁ­j\íz”yryã£¢qò\"šff\Ø\æ\âv\n\á®X«Zu«z~¥}ŸWA«\r‡ö‡\ã‚ó–Ns\Å\ç†\íWMšè½²0\Ï#d\r\Ã@e1\ì´doû³MŸ•\Ş´\Ã\ÇS6¶6Éº¸\ëM\ä\î‹Ì¾WØ”K•Æ¨rd«puf9$p­8Ÿ€ô\ĞÊ¿.Ç‡ROœ\Ò\í\èz=\Ïw¶Yth¥x“™=\æª\êª\ÕpQEe“s““&®†€€\0@(·.¹?ûD{X‡\×F	\Õ\íÔ··xÿ\0u7Í%\İñoò\å×±’»-B\Ñ\ZHÎ‰?®\ïøPc\Ç&·UŸR\ìKm\ã\Ù\æG³8´À$ic\Å\Èñi\Ç\ë5\ç¥	\ãÙ©”n†Ñ‹¾.§±ø™”ƒ<ÀĞƒ\ïu÷/0³¸\éo§ÿ\0\nÌ¬e/\ÉM5œKWF0\Ë\íFy¡\çyoºú\ê2¨šøN2]\niÁ§£‹®ô’	™\Íx¤8iZTt\ÑkuJ\ÕÅ›Bn¶6\çÔ’w’Ozè–£¦i\'·²\Æk\êg\È\ÉK†6\n4†§½pX°Qp]™\ÚW\ÉË—°G|\Ì\Ù]+]G;¥@0»µº,<Z\Ü8¿@²%\É\Éx_SL0½\ÃŠŠ±+ƒ\Ú]E—\Ù5¡›]\àù\Zò(Á…´\È\nw\èºWD`Ü—s[-”\â“ô[\Ş\"0\Ô`\'\Ë:å¿¹%	O—¨²Qâ‰‡”¶-ü¡pX0\Ş\Ñ\ÑeL(¦¡ ¶‚´«FòOÄ­%.AeOZôl/µ<\Î\ÙC\íIJ‘\ì\Ä\ßhõ\è2ß’\ï\\q\â»e\'\'¶MŠ-°kZÍ™‡\ê\ã\Ô\È}÷Ÿh;÷*\ì\ÌÔ¾X“±q_y+ª\ïÙŒn\êd=\Ñó^bûœ\ß^UZŠ\êZ‰m\Û?ø\Z¨ş½U¾<qkógõ>\ÅnM\Îùùq\í\ê_r\Z\çvvÉ‡=\ã\êÁöZ}®\Ó\éÚ¬ğ¨{vÏ» dÚ¾\Ü{#d‘T\0€\0@\0 <û–œœto6\Ë0\ßYX7}öüGS™Š\Óó+\'\ãŞ¸ùr+,Ö–\ÚZ\Ò w8p=^Š<\ê†t4úI!9bË§\Ò3h²ÇŒ\Æ\í\í\ë\ÏNc\ÏO¡oB\è\ív2w\İÃ¿C¹\àx\×jµ\Ä\Îq\íşˆ9‰”vÁ\ì\ÚZx6Vp\á™wc‡‚¿£.¢\ÜyC¹\×tš\ÄD\Íû¹<v\Æs¯eT¤\È\ï§r#m¥§\'\rAÈ\Ğs wj´2„RZ\Ú5)°=b²\Í0¬l8}÷sÛˆ\ë\İT\èl\ĞF\á_´Ë¹¨…½n:¿\Èv®V[-¶t…r›\ÒEœ	\'xt\Ü÷{1·&0viO.\ÕM“Ÿ¿§±iF«©¬»\î\æ\Ç\Îu¸\îog\Íyûos|Qm\n\Ô\Ùd\Z\Zİ¤¹4f½Ç‰m‡…\Zc\ç]ş]“’\í~]_\å“99sº\Û&\ŞaH\Zy­÷\È\İøFş*ÂŠ¥‘>r\í\èC¶\ÅTxG¹\èVı–‘]\Ü\éd\0@\0 U\0U\ÉX\Öû\Æ•<‘sm6!jø†]ñü¼8*¬œ\'Î¢})®\ÖK\Æ9ù²s$§wû\ÂR«&<.Z~\çd§K\ç[\Ú™…¹H8û\'\å\ØU6W‡[Cäº¯tYÑ™]«O¹Yl¹š\êà ¯²si\î\\kÊ”{l¡>\Æj\İ\É\Ì& Å™·»€\ê\É[Q\â/\Ñì¯·	?B¬´R\ÎÑ x\ÌY\â¬\á\â}úe‡%Ø‰$1ûvG7ü7<Â“\Êß©Á\ãX½\r\ÍıÕ ù-ş&\æ¾Dı\Ùgƒušg~\'¸HZ¼ª×©•7\èK†Œ\â²\Ã÷œ;\İS\ä¸\Ë\ÄkK¡\ÖR}\ÉMº¤˜ıt”ğ¢wˆ·Ø—^\nL¿»ù?„f\æOi\ã\âª.\Í\äûì±¯Hº‚³›s\à3\'¬Ÿš]7d\Ë\åGYYU+m\Ï#!¥ »PÁ <OwN-X‹r\ë\"²Ì‹2£\Ò$û‹“ò\Û\'´‚\Øuk4/\î\Ü\ß2¦U;\å\Î\Î\Ş\Ä[.Kg¡DÀ\Ğ\Z\Ğ\0€€\0V‰%\Ñ\í½­€ \0  \0€B€J 9%\0•N€\Ìò’p\ÚNÑ¿W7¾\İøÛ¿´f¡_‰:®Œ“NL¡\Ó\Ğ\Å\Ú%µXK1G ~­=\ã\Ô|\İO\Ë.¨•ª\î\ëŒ~\Ï,2gğŸtô|7w.6bb\äu\Ê\Î\Ğ\ÈÈ§£\ê‡^Ç·¤\Âz\Û\Îò\ÕV\İ\á7\×ôõü+ñ\n\ç\Ñô\">_¨m)ù¨oÎ«£\Ú%/*}P\Ë\îh÷b†¾¡eeMw0\èƒ8ş\Äo¾\ï%·\Æ?c_‡B‹‘›\Ü\ã\à>2^\Æ|ˆ¡\Ö\İğ3P?ˆ\×\Õk\æ\Û>ˆ\ÛË®=\Éqgû¶’:…\âr]\ëÀÈµöÿ\0g)\å\ÓZ\î, 79^\Z8Ÿy\İÜ¬«ğºj\ët¶ı‘yöYöÖ—¸\Äù&;+D\î\Ü:\Ü\í\İ\êdl”¾J#¤F”bº\ÚöjnG²7	m\'k. ƒ=£\ÖTº0\Ô_)õd{r[Z‡DkC”ä—¡û³ı P\n€T\0€T  \É@rP8 \Zs\ç\Â\àZ\à9@ õV\ZO£FSk±½ùgy.…\Æı\Ü\Ù\ŞÓ§qP\ìÁ„º¢D2¤º2‚{\áf\è–Lßº\ìÿ\0+©O5\Ã\áî¯¬Y\ÛÍªR\"»”\äeh€\Öü\Ö“ığÙ•ş\Ùhéœ¢±Å½„’\ä\Õ2ú«:\'búf:/»¾\ï\Ì~k_#øó2?‘\Ã\ïû\Ş\ã\Ş~k*¼uÚ°\çs\ï1“Ê˜G\îa©\ê]c?\á^M)\ì~+Eº\Ñ\Ñ\rˆ\ïu=3ò[ùwÏ£f¼\é‡]l¹ºù\'\rC­3:gkA\Ìg†¥u¯+¬r\Ë´\ÙØ„lhdm\rh\Ğ4P)±Šb;“—rc$&£\írÀPA\Ò\0@*\0@\"P”@6\äj4±Wzu9lD\ïAÑ&¹ñ{E\ä?%ƒµqñXi3=}\n\é>\áv¤­xG\Õ\å#ôsg\â|V<¨û#<\Ø\äG–q\ÅgË±r÷\'A\È\Ø[¥V\ÚşŒm“\á\äümÒ«;0O†\îhN€™\0 $1¨\ÚP´ ;\Ğ(@-PTU\0•@!(I@!@pP”nP– 81 f€M’\0Ù \ršDh 1\Ğb°\Ô` ;\Ø@(@t\n¤„\0€B€B€D  9!\Éj0 \n0 \0À€L\0Â€\\(Â€P\ÔA¨\0  :¢h€T \0\â\0@ˆö«dq\Óhö2¦ƒšÚº”1Ş—=»F3&¹\Íš¸Š\×Zmw¤‰$cK„UÀfZ\çŠğ0 8†ù³¹¡\âhğ¸\á½¢®÷u\×1—Z\Ù/‹±Œ:½£\riLY\å¨×Š±{\Ùñ9»X\ê\Ö6C\Îm£«])¿¬q@8\ë\Â\Z\ã,a¯4a/mx4×Ü€[5¶92i«\Æ@\ï«yÆš\Ó¥{\ë\Â^±‚ÁW‚öÕƒ‹\Åy£µ\Ë\ïK8\r&h€x%„½€<-ÏBæŒ½\á\Å\0õš\Ó‚±½¯\0Ğ–¸85\èAM¼›‰\Ì1\È\Z^Ö*öµ\ØIf|HÖš„øe\Ø_‚BÀ2n\ÑÁ­\Æ+—9Ào@vo8ö›:;\'ˆË¨0‡–‡†Vµ®”\ÏT,½\Zc’MœŸVHspŒy\0r¦„P\Úï˜£\rq!\Ì\Úd5‚•q©\ë\n¤Ï¼£\ìs/À\ç\ä*(\Ü5m}\î{M8\Ä »í™˜\Ú\ç=¤8\0C˜\â\×Bw‚€“DD\0€\0@]{\İ\î”\Ü+G\ásœ\Úû„= \ĞGR‹E\È/¥d•\æÎ’\Äø\éZ\î\Ä\r~\îˆ?±\ä/l†f\ãk\ØöıQ\r£b’\"v•5¸Ö¹\Zk¢™y:\çƒ#¾::7–˜\ŞA£š%vYöPgº\êÇ´9µt»P\\\×\'/u\í5Ö¡[–GR³pÁR\æL–w\ãk\Í9¤Ö­×\àº\Ç5í•¸ş³c%®\È\ì\r†£‰\ëªn\ë¡\Ğ˜\äX÷½Ø˜Nn•Ï£N,†\ÓJ\ç–`É¹ßÑ‰[‡k¶±’\æ¿m¶\çœt{qeJ4\Ó}s@7\'\'ñŠ@\\\è­LqÁA[K¢qs[‹ 6zTÖºñ\Î\ËdÀ÷º½<R”À\Ü<s@qw\İ1@\é_hf~\ÒLÉ«©J\ç¦\\\ìv	˜ùd|±½Ï¨iØ¸\0jÆŸ­ ´\n\äjs@FşÅ›öX\ìûh\ê\ÇFq\ì]B\"{^Ñƒm‘«s5ß @H\è\Ç3eqe\ZZ\ê5„9\ÏkpÔ¸¼Šg\î\× *€H®\Ù\Ãgiš2e$´ˆ^*\Ğ\ÓQµ8²x\Í\Õ\É÷\È\Æ5ò³c1—lN@œŸ2€Î«³¦\ä–Ü¡³¶f=À5ZIp.”\Æqj(\r7\ÔiD÷5ŠHX\æ\É#^L’<°\ÇM£\Üò/usq\Ï$‚\0@\0 \0€€@\0 \0€€R€@\"P€T\0	úõ@(@*\0@ÿ\Ù','jpg');
/*!40000 ALTER TABLE `employeeprofilepic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeskill`
--

DROP TABLE IF EXISTS `employeeskill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employeeskill` (
  `es_id` int(6) NOT NULL,
  `es_emp_id` int(6) DEFAULT NULL,
  `es_skl_id` int(45) DEFAULT NULL,
  `es_experience_in_months` int(11) DEFAULT NULL,
  PRIMARY KEY (`es_id`),
  UNIQUE KEY `es_id` (`es_id`),
  KEY `fk_es_emp_id_ref_emp_id` (`es_emp_id`),
  KEY `fk_es_skl_id_ref_skl_id` (`es_skl_id`),
  CONSTRAINT `fk_es_emp_id_ref_emp_id` FOREIGN KEY (`es_emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `fk_es_skl_id_ref_skl_id` FOREIGN KEY (`es_skl_id`) REFERENCES `skill` (`skl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeskill`
--

LOCK TABLES `employeeskill` WRITE;
/*!40000 ALTER TABLE `employeeskill` DISABLE KEYS */;
INSERT INTO `employeeskill` VALUES (123,123456,11223,2),(1243,123456,11224,4);
/*!40000 ALTER TABLE `employeeskill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeevisa`
--

DROP TABLE IF EXISTS `employeevisa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employeevisa` (
  `empvsa_id` int(6) NOT NULL,
  `empvsa_country` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empvsa_type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empvsa_valid_till` date DEFAULT NULL,
  `empvsa_emp_id` int(6) DEFAULT NULL,
  `empvsa_valid_from` date DEFAULT NULL,
  PRIMARY KEY (`empvsa_id`),
  UNIQUE KEY `empvsa_id` (`empvsa_id`),
  KEY `fk_empvsa_emp_id_ref_emp_id` (`empvsa_emp_id`),
  CONSTRAINT `fk_empvsa_emp_id_ref_emp_id` FOREIGN KEY (`empvsa_emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeevisa`
--

LOCK TABLES `employeevisa` WRITE;
/*!40000 ALTER TABLE `employeevisa` DISABLE KEYS */;
INSERT INTO `employeevisa` VALUES (1123,'Indonesia','Visitor-Work','2018-01-01',123456,'2019-01-01');
/*!40000 ALTER TABLE `employeevisa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `individualaddress`
--

DROP TABLE IF EXISTS `individualaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `individualaddress` (
  `ia_id` int(6) NOT NULL AUTO_INCREMENT,
  `ia_street_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ia_building_number` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ia_city` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ia_state` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ia_country` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ia_postal_code` int(10) DEFAULT NULL,
  `ia_addr_line_1` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ia_addr_line_2` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ia_addr_line_3` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ia_addr_type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ia_id`),
  UNIQUE KEY `ia_id` (`ia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `individualaddress`
--

LOCK TABLES `individualaddress` WRITE;
/*!40000 ALTER TABLE `individualaddress` DISABLE KEYS */;
INSERT INTO `individualaddress` VALUES (2,'George','14','Melbourne','Victoria','Australia',2008,'Naveen Kumar','','','Permanent');
/*!40000 ALTER TABLE `individualaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview`
--

DROP TABLE IF EXISTS `interview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `interview` (
  `intvw_id` int(6) NOT NULL,
  `intvw_jc_id` int(6) NOT NULL,
  `intvw_starttime_of_interview` timestamp NULL DEFAULT NULL,
  `intvw_endtime_of_interview` timestamp NULL DEFAULT NULL,
  `intvw_level_of_interview` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intvw_type_of_inteview` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intvw_interview_status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intvw_notes` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`intvw_id`),
  UNIQUE KEY `intvw_id` (`intvw_id`),
  KEY `fk_intvw_jc_id_ref_jc_id` (`intvw_jc_id`),
  CONSTRAINT `fk_intvw_jc_id_ref_jc_id` FOREIGN KEY (`intvw_jc_id`) REFERENCES `jobcandidate` (`jc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview`
--

LOCK TABLES `interview` WRITE;
/*!40000 ALTER TABLE `interview` DISABLE KEYS */;
/*!40000 ALTER TABLE `interview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itshelpdeskattachment`
--

DROP TABLE IF EXISTS `itshelpdeskattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `itshelpdeskattachment` (
  `ihda_id` int(6) NOT NULL AUTO_INCREMENT,
  `ihda_name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ihda_id`),
  UNIQUE KEY `ihda_id` (`ihda_id`),
  UNIQUE KEY `ihda_name` (`ihda_name`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itshelpdeskattachment`
--

LOCK TABLES `itshelpdeskattachment` WRITE;
/*!40000 ALTER TABLE `itshelpdeskattachment` DISABLE KEYS */;
INSERT INTO `itshelpdeskattachment` VALUES (11,'80C-House_Princ_HL-Provisional-2018-2019.pdf'),(12,'HL-Provisional-2018-2019.pdf'),(15,'hlintcertificate_navarum.pdf'),(16,'homeloancertificate_96154558.pdf'),(13,'Huntington_Issues.txt'),(14,'IT_Report.pdf'),(18,'MobileVendorServiceSingle.wsdl'),(17,'RE_ _ITS Helpdesk_ new ticket - Need webex account.msg');
/*!40000 ALTER TABLE `itshelpdeskattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobcandidate`
--

DROP TABLE IF EXISTS `jobcandidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `jobcandidate` (
  `jc_id` int(6) NOT NULL,
  `jc_jp_id` int(6) NOT NULL,
  `jc_cdt_id` int(6) NOT NULL,
  `jc_stage` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jc_notes` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`jc_id`),
  UNIQUE KEY `jc_id` (`jc_id`),
  KEY `fk_jc_jp_id_ref_jp_id` (`jc_jp_id`),
  KEY `fk_jc_cdt_id_ref_cdt_id` (`jc_cdt_id`),
  CONSTRAINT `fk_jc_cdt_id_ref_cdt_id` FOREIGN KEY (`jc_cdt_id`) REFERENCES `candidate` (`cdt_id`),
  CONSTRAINT `fk_jc_jp_id_ref_jp_id` FOREIGN KEY (`jc_jp_id`) REFERENCES `jobpost` (`jp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobcandidate`
--

LOCK TABLES `jobcandidate` WRITE;
/*!40000 ALTER TABLE `jobcandidate` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobcandidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobpost`
--

DROP TABLE IF EXISTS `jobpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `jobpost` (
  `jp_id` int(6) NOT NULL,
  `jp_job_title` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jp_location` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jp_roles` text COLLATE utf8mb4_unicode_ci,
  `jp_number_of_vacancies` int(3) DEFAULT NULL,
  `jp_hiring_manager_employee_id` int(6) NOT NULL,
  `jp_department_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jp_overview` text COLLATE utf8mb4_unicode_ci,
  `jp_responsibilities` text COLLATE utf8mb4_unicode_ci,
  `jp_must_have_experience` text COLLATE utf8mb4_unicode_ci,
  `jp_nice_to_have_experience` text COLLATE utf8mb4_unicode_ci,
  `jp_key_skills` text COLLATE utf8mb4_unicode_ci,
  `jp_desired_education` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`jp_id`),
  UNIQUE KEY `jp_id` (`jp_id`),
  KEY `fk_jp_hiring_manager_employee_id_ref_employee_id` (`jp_hiring_manager_employee_id`),
  CONSTRAINT `fk_jp_hiring_manager_employee_id_ref_employee_id` FOREIGN KEY (`jp_hiring_manager_employee_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobpost`
--

LOCK TABLES `jobpost` WRITE;
/*!40000 ALTER TABLE `jobpost` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priority`
--

DROP TABLE IF EXISTS `priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `priority` (
  `pty_id` int(6) NOT NULL,
  `pty_name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pty_category` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`pty_id`),
  UNIQUE KEY `pty_id` (`pty_id`),
  UNIQUE KEY `pty_name` (`pty_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priority`
--

LOCK TABLES `priority` WRITE;
/*!40000 ALTER TABLE `priority` DISABLE KEYS */;
INSERT INTO `priority` VALUES (1,'High','All'),(2,'Medium','All'),(3,'Normal','All'),(4,'Low','All');
/*!40000 ALTER TABLE `priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `project` (
  `prj_id` int(6) NOT NULL AUTO_INCREMENT,
  `prj_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prj_project_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prj_service_type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prj_description` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prj_planned_start_date` date DEFAULT NULL,
  `prj_planned_end_date` date DEFAULT NULL,
  `prj_actual_start_date` date DEFAULT NULL,
  `prj_actual_end_date` date DEFAULT NULL,
  `prj_created_date` timestamp NULL DEFAULT NULL,
  `prj_updated_date` timestamp NULL DEFAULT NULL,
  `prj_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prj_cust_id` int(6) DEFAULT NULL,
  `prj_notes` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`prj_id`),
  UNIQUE KEY `prj_id` (`prj_id`),
  KEY `fk_prj_cust_id_ref_cust_id_idx` (`prj_cust_id`),
  CONSTRAINT `fk_prj_cust_id_ref_cust_id` FOREIGN KEY (`prj_cust_id`) REFERENCES `customer` (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'HuntingtonBankUpdated','HuntBegin001UPdated','Time and Metarial','Banking application','2019-01-11','2019-05-25','2019-02-01','2019-05-01','2018-11-26 18:30:00','2018-11-26 18:30:00','New',1,'The project deal has be signed and yet to allocate resources updated'),(2,'Global','Global','NA','Global','2018-01-01','2018-12-31','2018-01-01','2018-12-31','2018-11-26 18:30:00','2018-11-26 18:30:00','Open',1,'Test notes2'),(3,'Cuscal','Cus001','TimeAndMoney','Finance','2018-03-01','2018-04-01','2018-03-01','2018-04-01','2018-11-26 18:30:00','2018-11-26 18:30:00','Open',1,'Notes 3'),(4,'HuntingtonBank','HuntBegin001','Time and Metarial','Banking application','2019-01-11','2019-05-25','2019-02-01','2019-05-01','2018-11-26 18:30:00','2018-11-26 18:30:00','New',1,'The project deal has be signed and yet to allocate resources');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourceallocation`
--

DROP TABLE IF EXISTS `resourceallocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `resourceallocation` (
  `ra_id` int(6) NOT NULL AUTO_INCREMENT,
  `ra_emp_id` int(6) NOT NULL,
  `ra_tsk_id` int(6) NOT NULL,
  `ra_notes` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ra_id`),
  UNIQUE KEY `ra_id` (`ra_id`),
  KEY `fk_ra_emp_id_ref_emp_id` (`ra_emp_id`),
  KEY `fk_ra_tsk_id_ref_tsk_id` (`ra_tsk_id`),
  CONSTRAINT `fk_ra_emp_id_ref_emp_id` FOREIGN KEY (`ra_emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `fk_ra_tsk_id_ref_tsk_id` FOREIGN KEY (`ra_tsk_id`) REFERENCES `task` (`tsk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourceallocation`
--

LOCK TABLES `resourceallocation` WRITE;
/*!40000 ALTER TABLE `resourceallocation` DISABLE KEYS */;
INSERT INTO `resourceallocation` VALUES (4,123456,2,'Testing notes'),(6,123456,2,NULL),(8,123456,2,NULL),(9,123456,1,'Testing resource allocations to task'),(10,112234,1,'Testing resource allocations to task');
/*!40000 ALTER TABLE `resourceallocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role` (
  `role_id` int(6) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_category` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_EMPLOYEE','ItsHelpDesk'),(2,'ROLE_MANAGER','ItsHelpDesk'),(3,'ROLE_ENGINEER','ItsHelpDesk'),(4,'ROLE_CANDIDATE','ROB');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicetype`
--

DROP TABLE IF EXISTS `servicetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `servicetype` (
  `svctype_id` int(6) NOT NULL,
  `svctype_name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`svctype_id`),
  UNIQUE KEY `svctype_id` (`svctype_id`),
  UNIQUE KEY `svctype_name` (`svctype_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicetype`
--

LOCK TABLES `servicetype` WRITE;
/*!40000 ALTER TABLE `servicetype` DISABLE KEYS */;
INSERT INTO `servicetype` VALUES (3,'Desktop/Laptop'),(1,'Network'),(2,'Printer'),(4,'Software/OS');
/*!40000 ALTER TABLE `servicetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `skill` (
  `skl_id` int(6) NOT NULL,
  `skl_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skl_desc` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skl_category` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skl_createddate` date DEFAULT NULL,
  `skl_modifieddate` date DEFAULT NULL,
  `skl_deleted` binary(1) DEFAULT NULL,
  PRIMARY KEY (`skl_id`),
  UNIQUE KEY `skl_id` (`skl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (11223,'Pure Payments','Finanical domains core skill','Financial',NULL,NULL,NULL),(11224,'Java','Programming language','Language',NULL,NULL,NULL);
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `status` (
  `sts_id` int(6) NOT NULL,
  `sts_name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sts_category` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`sts_id`),
  UNIQUE KEY `sts_id` (`sts_id`),
  UNIQUE KEY `sts_name` (`sts_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'New','All'),(2,'Open','All'),(3,'Processing','All'),(4,'Hold','All'),(5,'Closed','All'),(6,'AwaitingResponse','All');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `task` (
  `tsk_id` int(6) NOT NULL AUTO_INCREMENT,
  `tsk_prj_id` int(6) NOT NULL,
  `tsk_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tsk_description` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tsk_start_date` date NOT NULL,
  `tsk_end_date` date NOT NULL,
  PRIMARY KEY (`tsk_id`),
  UNIQUE KEY `tsk_id` (`tsk_id`),
  KEY `fk_tsk_prj_id_ref_prj_id` (`tsk_prj_id`),
  CONSTRAINT `fk_tsk_prj_id_ref_prj_id` FOREIGN KEY (`tsk_prj_id`) REFERENCES `project` (`prj_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,1,'HeadsUpUpdated','HeadsUpPhase2','2018-10-10','2018-12-10'),(2,1,'Personetics','Personetics Phase 3','2018-02-10','2018-03-10'),(3,2,'Leave','Personal Leave','2018-03-10','2018-04-10'),(4,3,'OnlineBanking','Desktop version','2018-04-10','2018-05-10');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ticket` (
  `tkt_id` int(6) NOT NULL AUTO_INCREMENT,
  `tkt_title` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tkt_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `tkt_dept_id` int(6) DEFAULT NULL,
  `tkt_pty_id` int(6) NOT NULL,
  `tkt_tkttype_id` int(6) NOT NULL,
  `tkt_svctype_id` int(6) NOT NULL,
  `tkt_created_by` int(6) NOT NULL,
  `tkt_sts_id` int(6) NOT NULL,
  `tkt_created_date` timestamp NULL DEFAULT NULL,
  `tkt_updated_date` timestamp NULL DEFAULT NULL,
  `tkt_updated_by` int(6) DEFAULT NULL,
  `tkt_additional_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`tkt_id`),
  UNIQUE KEY `tkt_id` (`tkt_id`),
  KEY `fk_tkt_dept_id_ref_dept_id` (`tkt_dept_id`),
  KEY `fk_tkt_svctype_id_ref_svctype_id` (`tkt_svctype_id`),
  KEY `fk_tkt_pty_id_ref_pty_id` (`tkt_pty_id`),
  KEY `fk_tkt_tkttype_id_ref_tkttype_id` (`tkt_tkttype_id`),
  KEY `fk_tkt_sts_id_ref_sts_id` (`tkt_sts_id`),
  KEY `fk_tkt_created_by_ref_u_id` (`tkt_created_by`),
  KEY `fk_tkt_updated_by_ref_u_id_idx` (`tkt_updated_by`),
  CONSTRAINT `fk_tkt_created_by_ref_u_id` FOREIGN KEY (`tkt_created_by`) REFERENCES `user` (`u_id`),
  CONSTRAINT `fk_tkt_dept_id_ref_dept_id` FOREIGN KEY (`tkt_dept_id`) REFERENCES `department` (`dept_id`),
  CONSTRAINT `fk_tkt_pty_id_ref_pty_id` FOREIGN KEY (`tkt_pty_id`) REFERENCES `priority` (`pty_id`),
  CONSTRAINT `fk_tkt_sts_id_ref_sts_id` FOREIGN KEY (`tkt_sts_id`) REFERENCES `status` (`sts_id`),
  CONSTRAINT `fk_tkt_svctype_id_ref_svctype_id` FOREIGN KEY (`tkt_svctype_id`) REFERENCES `servicetype` (`svctype_id`),
  CONSTRAINT `fk_tkt_tkttype_id_ref_tkttype_id` FOREIGN KEY (`tkt_tkttype_id`) REFERENCES `tickettype` (`tkttype_id`),
  CONSTRAINT `fk_tkt_updated_by_ref_u_id` FOREIGN KEY (`tkt_updated_by`) REFERENCES `user` (`u_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (3,'Need internet conneciton to Personal device','Need internet conneciton to Personal device as per project demand.',1,1,1,1,1,6,'2018-11-02 04:51:28','2019-03-01 12:12:43',1,NULL),(4,'Unable to connect to VDI','Unable to Connect to clients VDI on wifi.',1,1,2,1,1,3,'2018-11-02 04:51:28','2019-07-09 04:50:59',4,NULL),(5,'sdfsd','dfs',3,3,1,3,1,5,'2019-02-27 07:47:39','2019-07-09 04:50:55',3,NULL),(6,'Need extra monitor','Need extra monitor to extend the display from laptop',1,2,1,2,1,4,'2019-02-27 09:28:30','2019-02-27 09:28:30',1,NULL),(7,'System is performing at the slowest best','Its not working now...',1,2,2,3,1,2,'2019-03-03 11:04:58','2019-03-03 11:04:58',4,NULL),(8,'Just a sample','klsdjflksdjflsdk',1,3,2,4,1,5,'2019-03-25 12:48:59','2019-03-25 12:48:59',3,NULL),(9,'Testing the flow','Testing the flow',1,1,1,1,1,5,'2019-03-27 08:30:00','2019-03-26 03:02:53',1,NULL),(10,'jlkdfsd','',2,4,2,3,3,5,'2019-04-03 12:45:41','2019-06-01 12:00:16',4,NULL),(11,'Need additional seats for new resources','Need additional seats for new resources due to recruitment',2,1,1,3,4,5,'2019-04-25 02:50:33','2019-07-10 00:40:42',3,NULL),(12,'Manager Create Ticket Test','Manager Create Ticket Test',1,1,1,1,4,2,'2019-04-25 07:27:06','2019-05-26 23:50:08',1,NULL),(13,'Create Ticket Form UI In Progress','Create Ticket Form UI In Progress',1,1,1,1,3,5,'2019-05-03 06:20:21','2019-06-17 23:20:29',4,NULL),(14,'Toggle testing New Ticket','The test is to check if the Success or Failure alert not displaying during Fresh New Ticket Form.',2,4,1,2,3,5,'2019-05-03 12:43:50','2019-06-18 00:23:57',3,NULL),(15,'Test for dismiss alert to navigate to MyTickets','Test for dismiss alert to navigate to MyTickets',1,1,2,2,3,5,'2019-05-03 12:47:18','2019-06-17 23:17:36',1,NULL),(16,'Create Ticket Form UI In Progresssss','Create Ticket Form UI In Progresssss',1,2,1,2,3,5,'2019-05-05 02:51:06','2019-06-01 22:42:02',1,NULL),(17,'Testing the reaload','Testing the reaload',2,1,2,1,3,5,'2019-05-05 02:52:38','2019-06-17 23:30:18',4,NULL),(18,'Trying reload','Trying reload',2,4,1,2,3,5,'2019-05-05 02:56:25','2019-07-22 06:57:30',3,NULL),(19,'Fixed reload my tickets','Fixed reload my tickets',1,4,2,4,3,5,'2019-05-05 02:58:21','2019-07-22 06:51:52',1,NULL),(20,'Create Ticket Form UI In Progress','New ticket for mousenot working',2,1,1,3,3,2,'2019-05-17 00:00:33','2019-06-13 03:32:24',4,NULL),(21,'Need new laptop','Need new laptop',2,4,2,2,4,2,'2019-05-20 04:20:36','2019-06-10 05:10:37',3,NULL),(22,'Ticket to check if On and Off Success Alert','Testing to see if Success alert is visible',2,2,2,3,4,2,'2019-05-30 07:49:57','2019-05-30 07:50:37',1,NULL),(23,'Verify the changes from Manager role','Verify the changes from Manager role as well. To ensure that the changes done in manager section are reflected in here.',3,4,2,3,3,1,'2019-05-31 22:31:43','2019-05-31 22:31:43',4,NULL),(24,'Employee view is completed','Employee view is completed. Next is to Workflow and Policy pages.',2,4,1,4,3,1,'2019-06-15 04:08:15','2019-06-15 04:08:15',4,NULL),(25,'Need new keyboard for the purpose of testing the site','As per the project, need new keyboard.',1,1,1,4,3,2,'2019-07-02 12:52:18','2019-07-04 06:21:38',3,NULL),(26,'Testing the ticket with hamburger menu','Testing the ticket with hamburger menu',2,4,1,3,3,1,'2019-07-03 00:15:53','2019-07-03 00:15:53',4,NULL),(27,'Test to check if this is coming in Manager\'s list','Test to check if this is coming in Manager\'s list',2,1,1,3,3,1,'2019-07-04 08:58:35','2019-07-04 08:58:35',NULL,NULL),(28,'Ticket to check if it is coming under manager\'s list','Ticket to check if it is coming under manager\'s list',3,2,2,3,3,2,'2019-07-04 09:08:01','2019-07-04 09:08:58',3,NULL),(29,'To be found in last hour tickets','To be found in last hour tickets',2,4,2,3,4,2,'2019-07-09 04:45:19','2019-07-09 09:32:01',4,NULL),(30,'Test dynamic contnet','Test dynamic contnet',2,4,2,2,4,2,'2019-07-18 06:15:15','2019-07-18 06:15:58',4,NULL),(31,'Testing the CustomAlert','Testing the CustomAlert as part of made available as common component.',2,1,2,2,3,1,'2019-07-19 04:07:03','2019-07-19 04:07:03',3,NULL),(32,'Testing the CustomAlert again','Testing the CustomAlert as part of made available as common component again',3,1,2,2,3,1,'2019-07-19 04:08:09','2019-07-19 04:08:09',3,NULL),(33,'Test the custom alert if it is closed are not','Test the custom alert if it is closed are not',3,1,1,1,3,1,'2019-07-19 04:24:49','2019-07-19 04:24:49',3,NULL),(34,'Testing niki','Testing niki',1,4,1,2,3,5,'2019-07-21 00:18:52','2019-07-21 00:20:56',3,NULL),(35,'gdfgdfsf','fgrg',1,4,2,3,3,1,'2019-07-21 00:54:20','2019-07-21 00:54:20',3,NULL),(36,'fsfsf','ssgsg',1,1,1,1,3,1,'2019-07-21 01:02:07','2019-07-21 01:02:07',3,NULL),(37,'creating','same',2,1,1,1,3,5,'2019-07-21 01:03:13','2019-07-23 03:14:51',3,NULL),(38,'fvfvdfvdfbv','vdfvfdvdfv',3,4,2,1,3,1,'2019-07-21 01:04:21','2019-07-23 03:37:39',3,NULL),(39,'Fix for Ticket creating with Problem','Fix for Ticket creating with Problem',2,1,3,2,3,5,'2019-07-22 04:00:36','2019-07-22 07:11:09',3,NULL),(40,'Unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields.','Unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields.Unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields.Unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields.Unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields.Unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields.Unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields.Unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields.Unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields.Unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields.Unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields.Unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields,unable to create ticket when we give more characters in all the text fields.',2,4,2,2,3,5,'2019-07-22 04:13:31','2019-07-22 07:02:33',3,NULL),(41,'Testing LocalTimestamp','Testing LocalTimestamp',2,1,2,2,3,1,'2019-07-24 03:43:21','2019-07-24 06:04:48',3,NULL),(42,'Testing to check the graphs are working','Testing to check the graphs are working',2,1,3,2,4,2,'2019-07-24 22:36:38','2019-07-24 22:37:29',4,NULL),(43,'Testing to dismiss alert','Testing to dismiss alert',2,1,3,2,3,1,'2019-07-24 22:42:45','2019-07-24 22:43:24',3,NULL),(44,'Testing the additional information','Testing the additional information',1,1,3,1,3,1,'2019-07-24 22:53:15','2019-07-24 22:53:15',3,'Testing the additional information updated in database. Testing the additional information updated in database.Testing the additional information updated in database.Testing the additional information updated in database.Testing the additional information updated in database.');
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketassignment`
--

DROP TABLE IF EXISTS `ticketassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ticketassignment` (
  `ta_id` int(6) NOT NULL AUTO_INCREMENT,
  `ta_tkt_id` int(6) NOT NULL,
  `ta_assigned_to` int(6) NOT NULL,
  `ta_created_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ta_id`),
  UNIQUE KEY `ta_id` (`ta_id`),
  KEY `fk_ta_tkt_id_ref_tkt_id` (`ta_tkt_id`),
  KEY `fk_ta_assigned_to_ref_u_id` (`ta_assigned_to`),
  CONSTRAINT `fk_ta_assigned_to_ref_u_id` FOREIGN KEY (`ta_assigned_to`) REFERENCES `user` (`u_id`),
  CONSTRAINT `fk_ta_tkt_id_ref_tkt_id` FOREIGN KEY (`ta_tkt_id`) REFERENCES `ticket` (`tkt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketassignment`
--

LOCK TABLES `ticketassignment` WRITE;
/*!40000 ALTER TABLE `ticketassignment` DISABLE KEYS */;
INSERT INTO `ticketassignment` VALUES (2,6,2,'2019-02-27 09:28:30'),(3,6,2,'2019-03-27 09:28:30'),(4,7,2,'2019-03-27 09:28:30'),(5,6,2,'2019-02-28 09:28:30'),(6,6,2,'2018-02-27 09:18:30'),(7,7,2,'2019-04-27 09:28:30'),(8,6,2,'2019-02-27 09:20:30'),(9,6,2,'2018-03-27 09:28:30'),(10,6,2,'2019-04-27 09:28:30'),(11,7,2,'2019-05-27 09:28:30'),(12,6,2,'2019-04-27 08:28:30'),(13,7,2,'2019-06-27 09:28:30'),(14,3,1,'2019-06-27 09:28:30'),(15,5,2,'2019-07-27 09:28:30'),(16,11,2,'2019-08-27 09:28:30'),(17,14,1,'2019-08-27 09:28:30'),(21,10,1,NULL),(22,12,1,NULL),(23,13,1,NULL),(24,14,1,NULL),(25,16,1,NULL),(26,17,1,NULL),(27,18,1,NULL),(28,20,1,NULL),(29,19,1,NULL),(30,21,1,NULL),(31,19,1,NULL),(32,17,1,NULL),(33,18,1,NULL),(34,19,1,NULL),(35,21,1,NULL),(36,20,1,NULL),(37,16,1,NULL),(38,17,1,NULL),(39,18,1,NULL),(40,19,1,NULL),(41,20,1,NULL),(42,21,1,NULL),(43,16,1,NULL),(44,18,1,NULL),(45,17,1,NULL),(46,20,1,NULL),(47,19,1,NULL),(48,21,1,NULL),(49,18,1,NULL),(50,19,1,NULL),(51,20,1,NULL),(52,21,1,NULL),(53,17,1,NULL),(54,22,1,NULL),(55,18,1,NULL),(56,19,1,NULL),(57,21,1,NULL),(58,20,1,NULL),(59,25,1,NULL),(60,28,1,NULL),(61,29,1,NULL),(62,30,1,NULL),(63,42,1,NULL);
/*!40000 ALTER TABLE `ticketassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketconversation`
--

DROP TABLE IF EXISTS `ticketconversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ticketconversation` (
  `tktconv_id` int(6) NOT NULL AUTO_INCREMENT,
  `tktconv_tkt_id` int(6) NOT NULL,
  `tktconv_author` int(6) NOT NULL,
  `tktconv_message` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tktconv_commented_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`tktconv_id`),
  UNIQUE KEY `tktconv_id` (`tktconv_id`),
  KEY `fk_tktconv_tkt_id_ref_tkt_id` (`tktconv_tkt_id`),
  KEY `fk_tktconv_author_ref_u_id` (`tktconv_author`),
  CONSTRAINT `fk_tktconv_author_ref_u_id` FOREIGN KEY (`tktconv_author`) REFERENCES `user` (`u_id`),
  CONSTRAINT `fk_tktconv_tkt_id_ref_tkt_id` FOREIGN KEY (`tktconv_tkt_id`) REFERENCES `ticket` (`tkt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketconversation`
--

LOCK TABLES `ticketconversation` WRITE;
/*!40000 ALTER TABLE `ticketconversation` DISABLE KEYS */;
INSERT INTO `ticketconversation` VALUES (1,3,1,'Pls provide the RMG and DM approval.Pls provide the RMG and DM approvalPls provide the RMG and DM approvalPls provide the RMG and DM approval.','2018-11-02 04:51:28'),(2,3,2,'Approval provided in the attachment.','2018-11-02 04:51:28'),(3,3,1,'Provided the internet and closed the ticket.','2018-11-02 04:51:28'),(4,3,1,'Updated and closed....','2019-02-13 12:37:17'),(5,3,1,'kljsflksdjflsd','2019-02-15 01:36:39'),(6,3,1,'This is the final test to close','2019-02-24 06:09:26'),(7,3,1,'temporary','2019-02-24 06:25:52'),(8,3,1,'temporary','2019-02-24 06:25:52'),(9,3,1,'dfsdfsd','2019-02-24 06:35:50'),(10,3,1,'kjsdflsjflkd','2019-02-24 06:40:50'),(11,3,1,'jkmkfgf9898fdgldfmgdfl','2019-02-24 06:43:00'),(12,3,1,'Lets see if 3 are down','2019-02-25 11:09:38'),(13,3,1,'Test multiple...','2019-02-25 11:18:31'),(19,3,1,'Fingers crossed','2019-02-25 12:05:39'),(20,3,1,'Test timestamp','2019-02-25 12:22:34'),(21,3,1,'Not yet resolved mate...','2019-03-01 17:42:43'),(22,4,1,'See whats happening...','2019-03-02 16:26:43'),(23,4,1,'Okay. Alright it seems working as expected but need to fix the same at Add Message box as it is hardcoded in the HTTP request.','2019-03-02 16:27:59'),(24,5,1,'The sdsdf is now on the fly..with add message test..','2019-03-02 16:47:15'),(25,6,1,'This is the success message test for adding the message at first time when there is no history.','2019-03-02 16:54:14'),(26,6,1,'This is the add message with attachment. Fingers crossed.','2019-03-02 17:03:30'),(27,5,1,'What is the ETA?','2019-03-03 11:28:19'),(28,7,1,'Yet another mssage','2019-03-15 11:43:34'),(29,5,1,'ALright...','2019-03-15 11:44:18'),(30,3,1,'Yet antoher mesage...','2019-03-15 11:44:48'),(31,9,1,'jsdklfsd','2019-04-03 16:53:03'),(32,5,1,'CLosing now','2019-04-03 17:56:55'),(33,3,1,'Updating to check if modified updateTicket code is working fine','2019-04-25 06:30:01'),(34,3,1,'Testing for ticketid10','2019-04-25 07:06:36'),(35,10,1,'Testing for ticket id in state','2019-04-25 07:11:13'),(36,10,1,'Yet another time to test the change of id properly...','2019-04-25 07:16:20'),(37,4,1,'Now it should update for Ticket id 4','2019-04-25 07:16:56'),(38,10,3,'Han is updating it now...','2019-04-25 08:12:56'),(39,11,4,'Pls see if this can be done at the earliset','2019-04-25 08:20:50'),(40,11,4,'Now it should still show the success alert.','2019-04-25 09:22:33'),(41,11,4,'Testing the loading screen','2019-04-25 10:05:13'),(42,11,4,'The refactored code is now does not show the success alert.','2019-04-25 10:41:50'),(43,11,4,'Exclusive switches are in place. This should fix the ON and OFF issue.','2019-04-25 10:54:57'),(44,11,4,'Random fix...','2019-04-25 10:59:40'),(45,11,4,'Testing back if as usual.','2019-04-25 12:09:30'),(46,12,4,'Test','2019-04-29 16:08:21'),(47,12,4,'Test','2019-04-29 16:08:24'),(48,14,3,'Test adding message.','2019-05-05 04:25:00'),(49,14,3,'Adding yet another message...','2019-05-05 04:25:20'),(50,14,3,'Now checking if access is denied.','2019-05-05 05:58:41'),(51,13,3,'Checking the add','2019-05-05 06:04:53'),(52,15,3,'Closing the ticket now.','2019-05-05 06:45:27'),(53,15,3,'Is it still working, the add message.','2019-06-01 04:06:08'),(54,10,3,'Test now','2019-06-01 17:00:25'),(55,10,3,'Another test','2019-06-01 17:30:16'),(56,19,3,'Adding a message to fix the reload my tickets. This should result in Success.','2019-06-02 03:44:17'),(57,16,3,'Closing now.','2019-06-02 04:12:02'),(58,14,3,'Attaching further documentation.','2019-06-02 09:21:05'),(59,13,3,'Now this should come as latest...','2019-06-10 10:28:16'),(60,13,3,'Cool..this is working...','2019-06-10 10:28:29'),(61,13,3,'Now this is the top most comment...','2019-06-13 08:47:08'),(62,24,3,'Checking if attachements working or not.','2019-06-15 09:39:19'),(63,13,3,'And this too..','2019-06-16 13:30:32'),(64,15,3,'Closing now...','2019-06-18 04:47:36'),(65,13,3,'Closing now...','2019-06-18 04:48:24'),(66,13,3,'Closing now...','2019-06-18 04:50:29'),(67,17,3,'Closing the ticket...','2019-06-18 04:55:54'),(68,17,3,'Message added. Now actually closing the ticket.','2019-06-18 04:58:23'),(69,17,3,'Testing to check...closing happening for the first time or not.','2019-06-18 05:00:18'),(70,14,3,'Closing now..to test first time closing...','2019-06-18 05:53:57'),(71,25,3,'Pls fix it asap.','2019-07-02 18:24:45'),(72,25,3,'This should come first.','2019-07-02 18:25:07'),(73,11,4,'test','2019-07-10 06:10:42'),(74,18,3,'Testing the latest updated as 18','2019-07-20 17:06:08'),(75,18,3,'Testing the last updated date issue.','2019-07-20 17:19:00'),(76,25,3,'Fixing the date issue','2019-07-20 17:21:17'),(77,32,3,'ASAP','2019-07-21 05:37:37'),(78,33,3,'first alert fix this issue','2019-07-21 05:38:34'),(79,33,3,'second time reminder','2019-07-21 05:39:12'),(80,34,3,'Closting the tickt','2019-07-21 05:50:56'),(81,33,3,'This is latest now.','2019-07-21 05:56:10'),(82,33,3,'fhjsdfhjskfh sdjkfsssssssssssssssss djjjjjjjjjjjjjjjjjjjjjj%^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjfh jfhhhhhhhhhhhhhhhhhhhhhhhhhhhhh fjjjjjjjjjjjjjjjjjjjjjjjjjjjfhhhhhhhhhhhhhhhhhhhhhj 3847238723987238957238jfdsbjgbsjg','2019-07-21 05:59:56'),(83,33,3,'working fine....','2019-07-21 06:02:12'),(84,18,3,'Testing to check if updated date is coming or not.','2019-07-22 09:26:58'),(85,19,3,'sdfsd','2019-07-22 12:21:52'),(86,18,3,'Empty comment test','2019-07-22 12:27:30'),(87,40,3,'All good','2019-07-22 12:32:33'),(88,39,3,'sdfsdfds','2019-07-22 12:41:09'),(89,37,3,'Tesing the add message for ','2019-07-22 12:44:08'),(90,37,3,'Testing for attachments.','2019-07-23 08:44:51'),(91,38,3,'Testing success message','2019-07-23 09:07:39'),(92,41,3,'Testing timestamp of conversation','2019-07-24 09:20:43'),(93,41,3,'Testing conv timestamp...','2019-07-24 05:56:04'),(94,41,3,'Testing once again..the conv timestamp...','2019-07-24 05:56:49'),(95,41,3,'This should be on top...','2019-07-24 06:04:48'),(96,43,3,'Checking to see if this shows the alert with dismissable button.','2019-07-24 22:43:24');
/*!40000 ALTER TABLE `ticketconversation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickettype`
--

DROP TABLE IF EXISTS `tickettype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tickettype` (
  `tkttype_id` int(6) NOT NULL,
  `tkttype_name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`tkttype_id`),
  UNIQUE KEY `tkttype_id` (`tkttype_id`),
  UNIQUE KEY `tkttype_name` (`tkttype_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickettype`
--

LOCK TABLES `tickettype` WRITE;
/*!40000 ALTER TABLE `tickettype` DISABLE KEYS */;
INSERT INTO `tickettype` VALUES (2,'Issue'),(3,'Problem'),(1,'Task');
/*!40000 ALTER TABLE `tickettype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheet`
--

DROP TABLE IF EXISTS `timesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `timesheet` (
  `tmesht_id` int(6) NOT NULL AUTO_INCREMENT,
  `tmesht_tsk_id` int(6) NOT NULL,
  `tmesht_emp_id` int(6) NOT NULL,
  `tmesht_date` date NOT NULL,
  `tmesht_start_time` time NOT NULL,
  `tmesht_end_time` time NOT NULL,
  `tmesht_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`tmesht_id`),
  UNIQUE KEY `tmesht_id` (`tmesht_id`),
  KEY `fk_tmesht_emp_id_ref_emp_id` (`tmesht_emp_id`),
  KEY `fk_tmesht_tsk_id_ref_tsk_id` (`tmesht_tsk_id`),
  CONSTRAINT `fk_tmesht_emp_id_ref_emp_id` FOREIGN KEY (`tmesht_emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `fk_tmesht_tsk_id_ref_tsk_id` FOREIGN KEY (`tmesht_tsk_id`) REFERENCES `task` (`tsk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheet`
--

LOCK TABLES `timesheet` WRITE;
/*!40000 ALTER TABLE `timesheet` DISABLE KEYS */;
INSERT INTO `timesheet` VALUES (1,1,123456,'2018-01-01','10:00:00','18:00:00','Pending'),(2,2,123456,'2018-01-02','10:00:00','18:00:00','Pending'),(3,3,123456,'2018-01-01','12:00:00','18:00:00',NULL),(4,4,123456,'2018-01-01','14:00:00','18:00:00',NULL),(5,1,123456,'2018-01-02','10:00:00','18:00:00',''),(6,2,123456,'2018-01-03','10:00:00','18:00:00',NULL),(7,2,123456,'2018-01-04','10:00:00','18:00:00',NULL),(8,3,123456,'2018-02-01','10:00:00','18:00:00',NULL),(9,4,123456,'2018-02-01','10:00:00','18:00:00',NULL),(10,3,123456,'2018-02-01','10:00:00','18:00:00',NULL),(11,4,123456,'2018-02-01','10:00:00','18:00:00',NULL),(12,3,123456,'2018-02-01','10:00:00','18:00:00',NULL),(13,4,123456,'2018-02-01','10:00:00','18:00:00',NULL);
/*!40000 ALTER TABLE `timesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheetapproval`
--

DROP TABLE IF EXISTS `timesheetapproval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `timesheetapproval` (
  `tsa_id` int(6) NOT NULL AUTO_INCREMENT,
  `tsa_tmesht_id` int(6) NOT NULL,
  `tsa_approver_emp_id` int(6) NOT NULL,
  `tsa_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`tsa_id`),
  UNIQUE KEY `tsa_id` (`tsa_id`),
  KEY `fk_tsa_tmesht_id_ref_tmesht_id` (`tsa_tmesht_id`),
  KEY `fk_tsa_approver_emp_id_ref_emp_id` (`tsa_approver_emp_id`),
  CONSTRAINT `fk_tsa_approver_emp_id_ref_emp_id` FOREIGN KEY (`tsa_approver_emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `fk_tsa_tmesht_id_ref_tmesht_id` FOREIGN KEY (`tsa_tmesht_id`) REFERENCES `timesheet` (`tmesht_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheetapproval`
--

LOCK TABLES `timesheetapproval` WRITE;
/*!40000 ALTER TABLE `timesheetapproval` DISABLE KEYS */;
INSERT INTO `timesheetapproval` VALUES (79,11,112234,'Pending'),(80,11,112234,'Pending'),(81,11,112234,'Pending'),(82,12,112234,'Pending'),(83,12,112234,'Pending'),(84,12,112234,'Pending'),(85,13,112234,'Pending'),(86,13,112234,'Pending'),(87,13,112234,'Pending');
/*!40000 ALTER TABLE `timesheetapproval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheetstatuscodes`
--

DROP TABLE IF EXISTS `timesheetstatuscodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `timesheetstatuscodes` (
  `tssc_code` int(2) NOT NULL,
  `tssc_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tssc_desc` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`tssc_code`),
  UNIQUE KEY `tssc_code` (`tssc_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheetstatuscodes`
--

LOCK TABLES `timesheetstatuscodes` WRITE;
/*!40000 ALTER TABLE `timesheetstatuscodes` DISABLE KEYS */;
INSERT INTO `timesheetstatuscodes` VALUES (0,'Pending','Newly created'),(1,'Submitted','Submitted for approval'),(2,'Approved','Approved by manager'),(3,'Reverted','Rejected for correction'),(4,'Saved','Saved by employee for further submission');
/*!40000 ALTER TABLE `timesheetstatuscodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tktconvattachment`
--

DROP TABLE IF EXISTS `tktconvattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tktconvattachment` (
  `tca_id` int(6) NOT NULL AUTO_INCREMENT,
  `tca_tktconv_id` int(6) NOT NULL,
  `tca_ihda_id` int(6) NOT NULL,
  PRIMARY KEY (`tca_id`),
  UNIQUE KEY `tca_id` (`tca_id`),
  KEY `fk_tca_tktconv_id_ref_tktconv_id` (`tca_tktconv_id`),
  KEY `fk_tca_ihda_id_ref_ihda_id` (`tca_ihda_id`),
  CONSTRAINT `fk_tca_ihda_id_ref_ihda_id` FOREIGN KEY (`tca_ihda_id`) REFERENCES `itshelpdeskattachment` (`ihda_id`),
  CONSTRAINT `fk_tca_tktconv_id_ref_tktconv_id` FOREIGN KEY (`tca_tktconv_id`) REFERENCES `ticketconversation` (`tktconv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tktconvattachment`
--

LOCK TABLES `tktconvattachment` WRITE;
/*!40000 ALTER TABLE `tktconvattachment` DISABLE KEYS */;
INSERT INTO `tktconvattachment` VALUES (1,19,11),(2,19,12),(3,21,13),(4,26,14),(5,58,15),(6,58,16),(7,62,17),(8,90,18);
/*!40000 ALTER TABLE `tktconvattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `u_id` int(6) NOT NULL AUTO_INCREMENT,
  `u_username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `u_id` (`u_id`),
  UNIQUE KEY `u_username` (`u_username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (5,'ablakey'),(7,'ejones'),(2,'erin'),(3,'han'),(6,'jcobb'),(1,'mike'),(8,'mroach'),(4,'sandra'),(9,'twilliams');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useremployee`
--

DROP TABLE IF EXISTS `useremployee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `useremployee` (
  `ue_id` int(6) NOT NULL AUTO_INCREMENT,
  `ue_u_id` int(6) NOT NULL,
  `ue_emp_id` int(6) NOT NULL,
  `ue_created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ue_updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ue_id`),
  UNIQUE KEY `ue_id` (`ue_id`),
  UNIQUE KEY `ue_u_id` (`ue_u_id`),
  UNIQUE KEY `ue_emp_id` (`ue_emp_id`),
  CONSTRAINT `fk_ue_emp_id_ref_emp_id` FOREIGN KEY (`ue_emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `fk_ue_u_id_ref_u_id` FOREIGN KEY (`ue_u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useremployee`
--

LOCK TABLES `useremployee` WRITE;
/*!40000 ALTER TABLE `useremployee` DISABLE KEYS */;
INSERT INTO `useremployee` VALUES (1,3,112234,'2018-11-02 04:51:28','2018-11-02 04:51:28'),(2,4,123121,'2018-11-02 04:51:28','2018-11-02 04:51:28'),(3,1,123456,'2018-11-02 04:51:28','2018-11-02 04:51:28');
/*!40000 ALTER TABLE `useremployee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `userrole` (
  `ur_id` int(6) NOT NULL AUTO_INCREMENT,
  `ur_u_id` int(6) NOT NULL,
  `ur_role_id` int(6) NOT NULL,
  `ur_created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ur_updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ur_id`),
  UNIQUE KEY `ur_id` (`ur_id`),
  KEY `fk_ur_u_id_ref_u_id` (`ur_u_id`),
  KEY `fk_ur_role_id_ref_role_id` (`ur_role_id`),
  CONSTRAINT `fk_ur_role_id_ref_role_id` FOREIGN KEY (`ur_role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `fk_ur_u_id_ref_u_id` FOREIGN KEY (`ur_u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrole`
--

LOCK TABLES `userrole` WRITE;
/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` VALUES (1,1,3,'2018-11-02 04:51:28','2018-11-02 04:51:28'),(2,3,1,'2018-11-02 04:51:28','2018-11-02 04:51:28'),(4,5,1,'2018-11-02 04:51:28','2018-11-02 04:51:28'),(5,7,1,'2018-11-02 04:51:28','2018-11-02 04:51:28'),(6,2,1,'2018-11-02 04:51:28','2018-11-02 04:51:28'),(7,6,3,'2018-11-02 04:51:28','2018-11-02 04:51:28'),(8,8,3,'2018-11-02 04:51:28','2018-11-02 04:51:28'),(9,4,2,'2018-11-02 04:51:28','2018-11-02 04:51:28'),(10,9,2,'2018-11-02 04:51:28','2018-11-02 04:51:28');
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `viewclosedticketsinlasthour`
--

DROP TABLE IF EXISTS `viewclosedticketsinlasthour`;
/*!50001 DROP VIEW IF EXISTS `viewclosedticketsinlasthour`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `viewclosedticketsinlasthour` AS SELECT 
 1 AS `closed_ticket_count_last_hour`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewdepartmentwiseworkload`
--

DROP TABLE IF EXISTS `viewdepartmentwiseworkload`;
/*!50001 DROP VIEW IF EXISTS `viewdepartmentwiseworkload`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `viewdepartmentwiseworkload` AS SELECT 
 1 AS `ticket_count`,
 1 AS `dept_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewnewticketsinlasthour`
--

DROP TABLE IF EXISTS `viewnewticketsinlasthour`;
/*!50001 DROP VIEW IF EXISTS `viewnewticketsinlasthour`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `viewnewticketsinlasthour` AS SELECT 
 1 AS `new_ticket_count_last_hour`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewticketsassignedtouser`
--

DROP TABLE IF EXISTS `viewticketsassignedtouser`;
/*!50001 DROP VIEW IF EXISTS `viewticketsassignedtouser`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `viewticketsassignedtouser` AS SELECT 
 1 AS `tatu_tkt_id`,
 1 AS `tatu_assigned_to`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewticketsbymonthandstatus`
--

DROP TABLE IF EXISTS `viewticketsbymonthandstatus`;
/*!50001 DROP VIEW IF EXISTS `viewticketsbymonthandstatus`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `viewticketsbymonthandstatus` AS SELECT 
 1 AS `sts_name`,
 1 AS `last_day_of_month`,
 1 AS `tkt_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewtotalticketcountfromstart`
--

DROP TABLE IF EXISTS `viewtotalticketcountfromstart`;
/*!50001 DROP VIEW IF EXISTS `viewtotalticketcountfromstart`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `viewtotalticketcountfromstart` AS SELECT 
 1 AS `total_ticket_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'pmapinew'
--

--
-- Dumping routines for database 'pmapinew'
--
/*!50003 DROP FUNCTION IF EXISTS `fnStrSplit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fnStrSplit`(x VARCHAR(255), delim VARCHAR(12), pos int) RETURNS varchar(255) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
   RETURN 
   CAST(replace(substring(substring_index(x, delim, pos), 
      length(substring_index(x, delim, pos - 1)) + 1), delim, '') AS UNSIGNED);
	
-- end the stored function code block
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spInsertTimesheetApprovals` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertTimesheetApprovals`(
IN in_tmsht_id_list VARCHAR(1000), 
IN in_mgr_emp_id_list VARCHAR(1000),
IN in_tmsht_id_count INT,
IN in_mgr_emp_id_count INT,
OUT out_result BOOLEAN
)
BLOCK1: BEGIN
-- Temporary variables for outer loop: tmsht_id_loop
DECLARE tmp_tmsht_id INT(6);
DECLARE tmp_result TEXT;
DECLARE tmsht_id_counter INT DEFAULT 0;

-- The following loops runs through all the timesheetids
tmsht_id_loop: LOOP
-- split the tmshtids list
SET tmsht_id_counter = tmsht_id_counter + 1;
SELECT fnStrSplit(in_tmsht_id_list, ',', tmsht_id_counter) INTO tmp_tmsht_id;
	
    BLOCK2 :BEGIN
    DECLARE mgr_emp_id_counter INT DEFAULT 0;
    DECLARE tmp_mgr_emp_id INT(6);
	
	-- The following loops runs through all the managerids for each timesheetid
	mgr_emp_id_loop: LOOP	
	SET mgr_emp_id_counter = mgr_emp_id_counter +1;
	SELECT fnStrSplit(in_mgr_emp_id_list, ',', mgr_emp_id_counter) INTO tmp_mgr_emp_id;
	INSERT INTO timesheetapproval (tsa_tmesht_id, tsa_approver_emp_id, tsa_status) VALUES (tmp_tmsht_id, tmp_mgr_emp_id, 'Pending');
    
	IF mgr_emp_id_counter = in_mgr_emp_id_count THEN
      LEAVE mgr_emp_id_loop;
	END IF;
	
	END LOOP mgr_emp_id_loop;
	END BLOCK2;


IF tmsht_id_counter = in_tmsht_id_count THEN
      LEAVE tmsht_id_loop;
   END IF;

END LOOP tmsht_id_loop;
SET out_result = 1;
END BLOCK1 ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `viewclosedticketsinlasthour`
--

/*!50001 DROP VIEW IF EXISTS `viewclosedticketsinlasthour`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewclosedticketsinlasthour` AS select count(0) AS `closed_ticket_count_last_hour` from `ticket` where ((`ticket`.`tkt_sts_id` = 5) and (`ticket`.`tkt_updated_date` between (utc_timestamp() - interval 60 minute) and utc_timestamp())) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewdepartmentwiseworkload`
--

/*!50001 DROP VIEW IF EXISTS `viewdepartmentwiseworkload`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewdepartmentwiseworkload` AS select count(0) AS `ticket_count`,`department`.`dept_name` AS `dept_name` from (`ticket` join `department` on((`ticket`.`tkt_dept_id` = `department`.`dept_id`))) group by `department`.`dept_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewnewticketsinlasthour`
--

/*!50001 DROP VIEW IF EXISTS `viewnewticketsinlasthour`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewnewticketsinlasthour` AS select count(0) AS `new_ticket_count_last_hour` from `ticket` where ((`ticket`.`tkt_sts_id` = 1) and (`ticket`.`tkt_created_date` between (utc_timestamp() - interval 60 minute) and utc_timestamp())) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewticketsassignedtouser`
--

/*!50001 DROP VIEW IF EXISTS `viewticketsassignedtouser`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewticketsassignedtouser` AS select `a`.`ta_tkt_id` AS `tatu_tkt_id`,`a`.`ta_assigned_to` AS `tatu_assigned_to` from (`pmapinew`.`ticketassignment` `a` join (select `pmapinew`.`ticketassignment`.`ta_tkt_id` AS `ticketId`,max(`pmapinew`.`ticketassignment`.`ta_created_date`) AS `latest_assigned_date` from `pmapinew`.`ticketassignment` group by `pmapinew`.`ticketassignment`.`ta_tkt_id`) `b` on((`a`.`ta_tkt_id` = `b`.`ticketId`))) where (`a`.`ta_created_date` = `b`.`latest_assigned_date`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewticketsbymonthandstatus`
--

/*!50001 DROP VIEW IF EXISTS `viewticketsbymonthandstatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewticketsbymonthandstatus` AS select `status`.`sts_name` AS `sts_name`,last_day(`ticket`.`tkt_updated_date`) AS `last_day_of_month`,count(0) AS `tkt_count` from (`ticket` join `status` on((`status`.`sts_id` = `ticket`.`tkt_sts_id`))) group by `status`.`sts_name`,`last_day_of_month` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewtotalticketcountfromstart`
--

/*!50001 DROP VIEW IF EXISTS `viewtotalticketcountfromstart`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewtotalticketcountfromstart` AS select count(0) AS `total_ticket_count` from `ticket` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-25 10:07:21
