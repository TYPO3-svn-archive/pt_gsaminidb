/******************************************************************************
 * GSA database tables to import into an existing TYPO3 database.
 * 
 * SQL script to import manually to your TYPO3 MySQL database in order to create 
 * all necessary tables to run the "General Shop Applications (GSA)" Extensions 
 * as a TYPO3 standalone version with only _one_ database.
 * 
 * This import has to be done manually since this is just workaround with 
 * no TCA integration for these tables. The recommended procedure is to use 
 * the separate database 'GSAMINIDB' instead of this script.
 * Please refer to the extension manual for details!
 * 
 * $Id: tx_ptgsaminidb_tables.sql,v 1.3 2009/02/27 08:48:41 ry37 Exp $
 *****************************************************************************/






/*********************************************************
 * Table structure for table `tx_ptgsaminidb_ADRESSE`
 ********************************************************/

CREATE TABLE `tx_ptgsaminidb_ADRESSE` (
  `NUMMER` int(11) NOT NULL default '0',
  `NUMMERHAUPTADRESSE` int(11) default NULL,
  `MATCH` varchar(40) default NULL,
  `MATCH2` varchar(40) default NULL,
  `ANREDE` varchar(40) default NULL,
  `TITEL` varchar(40) default NULL,
  `NAME` varchar(60) default NULL,
  `VORNAME` varchar(60) default NULL,
  `ZUSATZ` varchar(60) default NULL,
  `KONTAKT` varchar(60) default NULL,
  `BRANREDE` varchar(80) default NULL,
  `STRASSE` varchar(40) default NULL,
  `POSTFACH` varchar(9) default NULL,
  `LAND` char(3) default NULL,
  `PLZ` varchar(8) default NULL,
  `PPLZ` varchar(8) default NULL,
  `ORT` varchar(40) default NULL,
  `TELEFON1` varchar(40) default NULL,
  `TELEFON2` varchar(40) default NULL,
  `TELEFAX` varchar(40) default NULL,
  `TELEFAX2` varchar(40) default NULL,
  `MOBILTELEFON` varchar(40) default NULL,
  `DFUE` varchar(40) default NULL,
  `VOIP` varchar(40) default NULL,
  `EMAIL1` varchar(60) default NULL,
  `EMAIL2` varchar(60) default NULL,
  `TELEX` varchar(40) default NULL,
  `EKONTAKT` date default NULL,
  `LKONTAKT` date default NULL,
  `GEBURT` date default NULL,
  `TERMIN` date default NULL,
  `TERMZEIT` datetime default NULL,
  `NOTIZ1` varchar(60) default NULL,
  `NOTIZ2` varchar(60) default NULL,
  `POST1` varchar(60) default NULL,
  `POST2` varchar(60) default NULL,
  `POST3` varchar(60) default NULL,
  `POST4` varchar(60) default NULL,
  `POST5` varchar(60) default NULL,
  `POST6` varchar(60) default NULL,
  `POST7` varchar(60) default NULL,
  `POSTMANU` smallint(6) default NULL,
  `BEMERKUNG` longblob,
  `RECHEN1` decimal(15,4) default NULL,
  `RECHEN2` decimal(15,4) default NULL,
  `BILD` longblob,
  `ZUSATZMASKE1` longblob,
  `ZUSATZMASKE2` longblob,
  `ZUSATZMASKE3` longblob,
  `ZUSATZMASKEN` longblob,
  `KUNDNR` varchar(21) default NULL,
  `DEBINR` varchar(5) default NULL,
  `LIEFNR` varchar(21) default NULL,
  `KREDNR` varchar(5) default NULL,
  `ANSPRECHART` varchar(40) default NULL,
  `BUNDESLAND` varchar(30) default NULL,
  `USERNAME` varchar(60) default NULL,
  `PASSWORT` varchar(60) default NULL,
  `ONLINEKUNDE` smallint(6) default NULL,
  `KARTENTYP` char(2) default NULL,
  `KARTENNR` varchar(20) default NULL,
  `VALIDTHRU` varchar(6) default NULL,
  `KARTENINHABER` varchar(61) default NULL,
  `HOMEPAGE` varchar(128) default NULL,
  `NIELSEN` varchar(5) default NULL,
  `KUMSATZ` double(14,4) default NULL,
  `LUMSATZ` double(14,4) default NULL,
  `ANREDEZUSATZ` smallint(6) default NULL,
  `NTFIBUIDNR` int(11) default NULL,
  `FAVORIT` smallint(6) default NULL,
  `NTFIBUIDNRK` int(11) default NULL,
  `OUTLOOKSYNC` smallint(6) default NULL,
  `OSYNCDATE` datetime default NULL,
  PRIMARY KEY  (`NUMMER`),
  KEY `ADRESSEIdx1` (`NTFIBUIDNRK`),
  KEY `ADRESSEIdx2` (`NTFIBUIDNR`),
  KEY `ADRESSEIdx3` (`KUMSATZ`),
  KEY `ADRESSEIdx4` (`LUMSATZ`),
  KEY `ADRESSEIdx5` (`TELEFON1`),
  KEY `ADRESSEIdx6` (`MATCH2`),
  KEY `ADRESSEIdx7` (`MATCH`),
  KEY `ADRESSEIdx8` (`LIEFNR`),
  KEY `ADRESSEIdx9` (`DEBINR`),
  KEY `ADRESSEIdx10` (`LAND`,`PLZ`,`STRASSE`),
  KEY `ADRESSEIdx11` (`NUMMERHAUPTADRESSE`,`MATCH`),
  KEY `ADRESSEIdx12` (`KREDNR`),
  KEY `ADRESSEIdx13` (`TERMIN`,`TERMZEIT`),
  KEY `ADRESSEIdx14` (`KUNDNR`),
  KEY `ADRESSEIdx15` (`TELEFON2`),
  KEY `ADRESSEIdx16` (`TELEFAX`),
  KEY `ADRESSEIdx17` (`MOBILTELEFON`),
  KEY `ADRESSEIdx18` (`DFUE`)
);


/*********************************************************
 * Table structure for table `tx_ptgsaminidb_ANSCH`
 ********************************************************/

CREATE TABLE `tx_ptgsaminidb_ANSCH` (
  `NUMMER` int(11) NOT NULL default '0',
  `BEMERKUNG` varchar(40) default NULL,
  `KUNDNR` double(14,4) default NULL,
  `APARTNER` varchar(40) default NULL,
  `POST1` varchar(40) default NULL,
  `POST2` varchar(40) default NULL,
  `POST3` varchar(40) default NULL,
  `POST4` varchar(40) default NULL,
  `POST5` varchar(40) default NULL,
  `POST6` varchar(40) default NULL,
  `POST7` varchar(40) default NULL,
  `TELEFON` varchar(30) default NULL,
  `FAX` varchar(30) default NULL,
  `MOBIL` varchar(30) default NULL,
  `EMAIL` varchar(30) default NULL,
  `STANDARD` smallint(6) default NULL,
  PRIMARY KEY  (`NUMMER`),
  KEY `ANSCHIdx1` (`KUNDNR`),
  KEY `ANSCHIdx2` (`BEMERKUNG`),
  KEY `ANSCHIdx3` (`APARTNER`)
);


/*********************************************************
 * Table structure for table `tx_ptgsaminidb_ARTIKEL`
 ********************************************************/

CREATE TABLE `tx_ptgsaminidb_ARTIKEL` (
  `NUMMER` int(11) NOT NULL default '0',
  `MARKIERT` int(11) default NULL,
  `ARTNR` varchar(120) default NULL,
  `MATCH` varchar(255) default NULL,
  `MATCH2` varchar(60) default NULL,
  `SUCHBEGRIFF2` varchar(60) default NULL,
  `PEINHEIT` double(14,4) default NULL,
  `LEINHEIT` double(14,4) default NULL,
  `ZEINHEIT` double(14,4) default NULL,
  `VEINHEIT` double(14,4) default NULL,
  `LAGART` smallint(6) default NULL,
  `BESTZEIGE` smallint(6) default NULL,
  `LAGERNR` varchar(5) default NULL,
  `LAGORT` varchar(20) default NULL,
  `BESTAND` double(14,4) default NULL,
  `RESERVIERT` double(14,4) default NULL,
  `VERFUEGBAR` double(14,4) default NULL,
  `MINDEST` double(14,4) default NULL,
  `MELDE` double(14,4) default NULL,
  `BESTELLT` double(14,4) default NULL,
  `EINHEIT` varchar(20) default NULL,
  `GEWICHT` double(14,4) default NULL,
  `EKPR01` double(14,4) default NULL,
  `EKPR02` double(14,4) default NULL,
  `EKPR03` double(14,4) default NULL,
  `EKMITTEL` double(14,4) default NULL,
  `EKLAGER` double(14,4) default NULL,
  `WAEINGANG` double(14,4) default NULL,
  `RABATTGR` varchar(4) default NULL,
  `UMSATZ` double(14,4) default NULL,
  `ALTUMSATZ` double(14,4) default NULL,
  `EINKAUF` double(14,4) default NULL,
  `ALTEINKAUF` double(14,4) default NULL,
  `USTSATZ` char(2) default NULL,
  `USTAUSLAND` char(2) default NULL,
  `USTEG` double(14,4) default NULL,
  `AKTDAT` datetime default NULL,
  `ZU1` double(14,4) default NULL,
  `ZU2` double(14,4) default NULL,
  `MENGE2` double(14,4) default NULL,
  `MENGE3` double(14,4) default NULL,
  `MENGE4` double(14,4) default NULL,
  `FIXKOST1` double(14,4) default NULL,
  `FIXKOST2` double(14,4) default NULL,
  `FIXPROZ1` double(14,4) default NULL,
  `FIXPROZ2` double(14,4) default NULL,
  `LETZTLIEF` varchar(30) default NULL,
  `LAGINR` int(11) default NULL,
  `ZWSUMME` double(14,4) default NULL,
  `MITGESRAB` smallint(6) default NULL,
  `MITSKONTO` smallint(6) default NULL,
  `PRBRUTTO` smallint(6) default NULL,
  `ZUSTEXT1` longtext,
  `ZUSTEXT2` longtext,
  `LAGER` varchar(30) default NULL,
  `WG` varchar(30) default NULL,
  `BESTNR` varchar(40) default NULL,
  `FLD01` varchar(255) default NULL,
  `FLD02` varchar(255) default NULL,
  `FLD03` varchar(255) default NULL,
  `BILD` longblob,
  `EANNUMMER` varchar(40) default NULL,
  `SNRART` smallint(6) default NULL,
  `GARANTIE` double(14,4) default NULL,
  `LSNR` varchar(40) default NULL,
  `GARANTIEMONATE` double(14,4) default NULL,
  `SNRNULLEN` double(14,4) default NULL,
  `GARANTIEE` double(14,4) default NULL,
  `GARANTIEEMONATE` double(14,4) default NULL,
  `EURO` smallint(6) default NULL,
  `ALTTEIL` smallint(6) default NULL,
  `INVENTURBESTAND` double(14,4) default NULL,
  `STLIST` smallint(6) default NULL,
  `PASSIV` smallint(6) default NULL,
  `ONLINEARTIKEL` smallint(6) default NULL,
  `KOSTART` char(1) default NULL,
  `PROVART` char(1) default NULL,
  `PROVGRUPPE` int(11) default NULL,
  `FORMELINR` int(11) default NULL,
  `BILDDATUM` date default NULL,
  `SHOPTYPE` varchar(30) default NULL,
  `STLISTHAUPTPREIS` smallint(6) default NULL,
  `DPOSTEN` smallint(6) default NULL,
  `NOFAKT` smallint(6) default NULL,
  `VARIANTE1` varchar(30) default NULL,
  `VARIANTE2` varchar(30) default NULL,
  `VARIANTE3` varchar(30) default NULL,
  `VARIANTE4` varchar(30) default NULL,
  `VARIANTE5` varchar(30) default NULL,
  `VARIANTEOBERARTIKEL` smallint(6) default NULL,
  `VARIANTEUNTERARTIKEL` smallint(6) default NULL,
  `VARIANTEDEFAULTID` int(11) default NULL,
  `BILDPATH` varchar(128) default NULL,
  `EKONTOINLAND` varchar(5) default NULL,
  `EKONTOEG` varchar(5) default NULL,
  `KKONTOINLAND` varchar(5) default NULL,
  `KKONTOEG` varchar(5) default NULL,
  `USTCODEEKONTOEG` char(2) default NULL,
  `USTCODEKKONTOINLAND` char(2) default NULL,
  `USTCODEKKONTOEG` char(2) default NULL,
  `AFTERBUYBESTAND` double(14,4) default NULL,
  `WEBADRESSE` varchar(60) default NULL,
  `GEINHEIT` varchar(10) default NULL,
  `GRUNDPREISFAKTOR` double(14,4) default NULL,
  `GRUNDPREISEINHEIT` varchar(20) default NULL,
  `BEWERTUNGSSATZ` double(14,4) default NULL,
  `LETZTERUMSATZ` date default NULL,
  `ABOSTUECKLISTE` smallint(6) default NULL,
  `MONTAGEART` smallint(6) default NULL,
  `GEZAEHLT` smallint(6) default NULL,
  `FAVORIT` smallint(6) default NULL,
  `TMPLAGERUMSCHLAG` double(14,4) default NULL,
  `TMPBESTELLVORSCHLAG` double(14,4) default NULL,
  `TMPBESTELLVORSCHLAGR` double(14,4) default NULL,
  `FLD04` varchar(255) default NULL,
  `FLD05` varchar(255) default NULL,
  `FLD06` varchar(255) default NULL,
  `FLD07` varchar(255) default NULL,
  `FLD08` varchar(255) default NULL,
  PRIMARY KEY  (`NUMMER`),
  KEY `ARTIKELIdx1` (`SUCHBEGRIFF2`),
  KEY `ARTIKELIdx2` (`UMSATZ`),
  KEY `ARTIKELIdx3` (`ARTNR`),
  KEY `ARTIKELIdx4` (`WG`,`ARTNR`),
  KEY `ARTIKELIdx5` (`MATCH`),
  KEY `ARTIKELIdx6` (`BESTNR`),
  KEY `ARTIKELIdx7` (`EANNUMMER`)
);


/*********************************************************
 * Table structure for table `tx_ptgsaminidb_BHSTEUER`
 ********************************************************/

CREATE TABLE `tx_ptgsaminidb_BHSTEUER` (
  `NUMMER` int(11) default NULL,
  `STEUERSATZCODE` varchar(4) default NULL,
  `STEUERSATZPROZ` double(14,4) default NULL,
  `GUELTIGABTTMMJJJJ` date default NULL
);

/**
 * Data for table `tx_ptgsaminidb_BHSTEUER`
 */

INSERT INTO `tx_ptgsaminidb_BHSTEUER` VALUES (1, '00', '0.0000', '1993-01-01');
INSERT INTO `tx_ptgsaminidb_BHSTEUER` VALUES (2, '01', '15.0000', '1980-01-01');
INSERT INTO `tx_ptgsaminidb_BHSTEUER` VALUES (3, '01', '16.0000', '1998-04-01');
INSERT INTO `tx_ptgsaminidb_BHSTEUER` VALUES (4, '01', '19.0000', '2007-01-01');
INSERT INTO `tx_ptgsaminidb_BHSTEUER` VALUES (5, '02', '6.5000', '1980-01-01');
INSERT INTO `tx_ptgsaminidb_BHSTEUER` VALUES (6, '02', '7.0000', '1993-01-01');


/*********************************************************
 * Table structure for table `tx_ptgsaminidb_DEBITOR`
 ********************************************************/

CREATE TABLE `tx_ptgsaminidb_DEBITOR` (
  `NUMMER` int(11) NOT NULL default '0',
  `ADRINR` int(11) default NULL,
  `GEBUCHT` smallint(6) default NULL,
  `DEBINR` varchar(5) default NULL,
  `NAME` varchar(40) default NULL,
  `ORT` varchar(40) default NULL,
  `TAGNETTO` smallint(6) default NULL,
  `SKONTO1` double(14,4) default NULL,
  `SKTAGE1` smallint(6) default NULL,
  `SKONTO2` double(14,4) default NULL,
  `SKTAGE2` smallint(6) default NULL,
  `BANK1` varchar(40) default NULL,
  `BLZ1` varchar(10) default NULL,
  `KONTO1` varchar(30) default NULL,
  `BANK2` varchar(40) default NULL,
  `BLZ2` varchar(10) default NULL,
  `KONTO2` varchar(30) default NULL,
  `BANK3` varchar(40) default NULL,
  `BLZ3` varchar(10) default NULL,
  `KONTO3` varchar(30) default NULL,
  `EGIDENTNR` varchar(15) default NULL,
  `AUSLAND` smallint(6) default NULL,
  `KTOBEZ` varchar(50) default NULL,
  `MAHNART` varchar(20) default NULL,
  `MAHNTAGE` int(11) default NULL,
  `MAHNGEB1` double(14,4) default NULL,
  `MAHNGEB2` double(14,4) default NULL,
  `MAHNGEB3` double(14,4) default NULL,
  `EGAUSLAND` smallint(6) default NULL,
  `LMAHNUNG` date default NULL,
  `DTAKTO` smallint(6) default NULL,
  `DTAUSER` varchar(27) default NULL,
  `DTAZWECK` varchar(27) default NULL,
  `EURO` smallint(6) default NULL,
  `STNR` varchar(20) default NULL,
  `IBAN1` varchar(34) default NULL,
  `IBAN2` varchar(34) default NULL,
  `IBAN3` varchar(34) default NULL,
  `BIC1` varchar(11) default NULL,
  `BIC2` varchar(11) default NULL,
  `BIC3` varchar(11) default NULL,
  PRIMARY KEY  (`NUMMER`),
  KEY `DEBITORIdx1` (`DEBINR`),
  KEY `DEBITORIdx2` (`ORT`),
  KEY `DEBITORIdx3` (`NAME`),
  KEY `DEBITORIdx4` (`ADRINR`)
);


/*********************************************************
 * Table structure for table `tx_ptgsaminidb_FPOS`
 ********************************************************/

CREATE TABLE `tx_ptgsaminidb_FPOS` (
  `AUFINR` int(11) NOT NULL default '0',
  `POSINR` int(11) NOT NULL default '0',
  `NUMMER` double(14,4) default NULL,
  `ALTAUFINR` int(11) default NULL,
  `ALTNUMMER` double(14,4) default NULL,
  `FORTNUMMER` double(14,4) default NULL,
  `ALTERFART` varchar(4) default NULL,
  `POSART` char(2) default NULL,
  `POSNR` varchar(10) default NULL,
  `SNRPOSINR` double(14,4) default NULL,
  `ADRINR` int(11) default NULL,
  `ARTNR` varchar(80) default NULL,
  `ARTINR` int(11) default NULL,
  `BESTNR` varchar(80) default NULL,
  `MATCH` varchar(80) default NULL,
  `WG` varchar(30) default NULL,
  `EINHEIT` varchar(20) default NULL,
  `GEWICHT` double(14,4) default NULL,
  `MENGE` double(14,4) default NULL,
  `AUFTRAG` double(14,4) default NULL,
  `LIEFERUNG` double(14,4) default NULL,
  `RECHNUNG` double(14,4) default NULL,
  `GUTSCHRIFT` double(14,4) default NULL,
  `STORNO` double(14,4) default NULL,
  `BESTELLT` double(14,4) default NULL,
  `BESTORNO` double(14,4) default NULL,
  `EINGANG` double(14,4) default NULL,
  `TEILMENGE` double(14,4) default NULL,
  `MANUELLOK` smallint(6) default NULL,
  `NEUERWERT` smallint(6) default NULL,
  `MENGE2` double(14,4) default NULL,
  `MENGE3` double(14,4) default NULL,
  `MENGE4` double(14,4) default NULL,
  `SNRMENGE` double(14,4) default NULL,
  `SNRSTORNO` double(14,4) default NULL,
  `RABATT` double(14,4) default NULL,
  `ZU1` double(14,4) default NULL,
  `ZU2` double(14,4) default NULL,
  `EKPREIS` double(14,4) default NULL,
  `EP` double(14,4) default NULL,
  `UREP` double(14,4) default NULL,
  `GP` double(14,4) default NULL,
  `USTSATZ` char(2) default NULL,
  `USTCODEEKONTOEG` char(2) default NULL,
  `USTCODEKKONTOINLAND` char(2) default NULL,
  `USTCODEKKONTOEG` char(2) default NULL,
  `PEINHEIT` double(14,4) default NULL,
  `LEINHEIT` double(14,4) default NULL,
  `LAGART` smallint(6) default NULL,
  `VEINHEIT` double(14,4) default NULL,
  `LAGER` varchar(30) default NULL,
  `ZWSUMME` double(14,4) default NULL,
  `MITGESRAB` smallint(6) default NULL,
  `MITSKONTO` smallint(6) default NULL,
  `FLD1C` varchar(20) default NULL,
  `FLD2C` varchar(20) default NULL,
  `FLD1N` double(14,4) default NULL,
  `FLD2N` double(14,4) default NULL,
  `FIXKOST1` double(14,4) default NULL,
  `FIXKOST2` double(14,4) default NULL,
  `FIXPROZ1` double(14,4) default NULL,
  `FIXPROZ2` double(14,4) default NULL,
  `USTEG` double(14,4) default NULL,
  `USTAUSLAND` char(2) default NULL,
  `ZUSTEXT1` longblob,
  `ZUSTEXT2` longblob,
  `RABATTGR` varchar(4) default NULL,
  `SONPREIS` smallint(6) default NULL,
  `SONRABATT` smallint(6) default NULL,
  `SNRART` smallint(6) default NULL,
  `TERMIN` date default NULL,
  `ALTTEIL` smallint(6) default NULL,
  `STLISTPOSITION` smallint(6) default NULL,
  `UNTERPOSITION` smallint(6) default NULL,
  `HNUMMER` int(11) default NULL,
  `UNTERDRUECKEN` smallint(6) default NULL,
  `ARTSCH` char(1) default NULL,
  `STLISTTEXT1` varchar(60) default NULL,
  `STLISTTEXT2` varchar(60) default NULL,
  `STLISTTEXT3` varchar(60) default NULL,
  `STLISTTEXT4` varchar(60) default NULL,
  `PROVART` char(1) default NULL,
  `PROVGRUPPE` int(11) default NULL,
  `PROVWERT` double(14,4) default NULL,
  `PROVMANU` smallint(6) default NULL,
  `FORMELINR` int(11) default NULL,
  `DRUCKFORMEL` varchar(255) default NULL,
  `V1` double(14,4) default NULL,
  `V2` double(14,4) default NULL,
  `V3` double(14,4) default NULL,
  `V4` double(14,4) default NULL,
  `V5` double(14,4) default NULL,
  `V6` double(14,4) default NULL,
  `V7` double(14,4) default NULL,
  `V8` double(14,4) default NULL,
  `V9` double(14,4) default NULL,
  `V10` double(14,4) default NULL,
  `V11` double(14,4) default NULL,
  `V12` double(14,4) default NULL,
  `ARTNRSONPREIS` varchar(40) default NULL,
  `REINGANGSDATUM` date default NULL,
  `RSNR` varchar(40) default NULL,
  `RZUSTAND` varchar(128) default NULL,
  `RZUBEHOER` varchar(128) default NULL,
  `RGARANTIE` smallint(6) default NULL,
  `RREKLAMATION` smallint(6) default NULL,
  `RSTATUS` char(1) default NULL,
  `RBEMERKUNG` longblob,
  `RKOSTENPFLICHT` smallint(6) default NULL,
  `RFEHLER` varchar(128) default NULL,
  `RTEXTKUNDE` longblob,
  `RTEXTBERICHT` longblob,
  `DPOSTEN` smallint(6) default NULL,
  `WARZUSTEXT` smallint(6) default NULL,
  `WARLEERZEILE` smallint(6) default NULL,
  `WARSEITENVORSCHUB` smallint(6) default NULL,
  `WARZWISCHENSUMME` smallint(6) default NULL,
  `REALMENGE` double(14,4) default NULL,
  `ZWSNUMMER` int(11) default NULL,
  `EKONTOINLAND` varchar(5) default NULL,
  `EKONTOEG` varchar(5) default NULL,
  `KKONTOINLAND` varchar(5) default NULL,
  `KKONTOEG` varchar(5) default NULL,
  `NRESERVIERT` double(14,4) default NULL,
  `NGEBUCHT` double(14,4) default NULL,
  `GESPEICHERT` smallint(6) default NULL,
  `KMENGE` double(14,4) default NULL,
  `GEINHEIT` varchar(10) default NULL,
  `GRUNDPREISEINHEIT` varchar(20) default NULL,
  `GRUNDPREISFAKTOR` double(14,4) default NULL,
  `ABOSTUECKLISTE` smallint(6) default NULL,
  `MONTAGEART` smallint(6) default NULL,
  `LDATUM` date default NULL,
  `CGP` double(14,4) default NULL,
  `CMENGE` double(14,4) default NULL,
  `CBEZEICHNUNG` varchar(60) default NULL,
  `CNUMMER` varchar(60) default NULL,
  `USTCODEEKONTOINLAND` char(2) default NULL,
  `INSZAEHLER` double(14,4) default NULL,
  PRIMARY KEY  (`AUFINR`,`POSINR`),
  KEY `FPOSIdx1` (`NUMMER`),
  KEY `FPOSIdx2` (`ADRINR`),
  KEY `FPOSIdx3` (`ARTINR`)
);


/*********************************************************
 * Table structure for table `tx_ptgsaminidb_FSCHRIFT`
 ********************************************************/

CREATE TABLE `tx_ptgsaminidb_FSCHRIFT` (
  `NUMMER` int(11) NOT NULL default '0',
  `MARKIERT` smallint(6) default NULL,
  `ALTNUMMER` int(11) default NULL,
  `SCHRIFTNR` int(11) default NULL,
  `ERFART` varchar(4) default NULL,
  `ALTERFART` varchar(4) default NULL,
  `OPNUMMER` int(11) default NULL,
  `USER` varchar(8) default NULL,
  `GEBUCHT` smallint(6) default NULL,
  `GEDRUCKT` smallint(6) default NULL,
  `AUFTRAGOK` smallint(6) default NULL,
  `FORTGEFUEHRT` smallint(6) default NULL,
  `RESTOK` smallint(6) default NULL,
  `GEMAILT` smallint(6) default NULL,
  `DATUM` date default NULL,
  `AUFNR` varchar(25) default NULL,
  `ALTAUFNR` varchar(25) default NULL,
  `AUFBEZ` varchar(40) default NULL,
  `ADRINR` int(11) default NULL,
  `LIEFERINR` int(11) default NULL,
  `ENDPRB` double(14,4) default NULL,
  `ENDPRN` double(14,4) default NULL,
  `PRBRUTTO` smallint(6) default NULL,
  `GUTSUMME` double(14,4) default NULL,
  `BEZSUMME` double(14,4) default NULL,
  `LTERMIN` varchar(20) default NULL,
  `SKONTO1` double(14,4) default NULL,
  `SKTAGE1` double(14,4) default NULL,
  `SKONTO2` double(14,4) default NULL,
  `SKTAGE2` double(14,4) default NULL,
  `TAGNETTO` double(14,4) default NULL,
  `VERSART` varchar(30) default NULL,
  `ZAHLART` varchar(30) default NULL,
  `GESRAB` double(14,4) default NULL,
  `GESRABTYPE` smallint(6) default NULL,
  `PREISGR` double(14,4) default NULL,
  `RABATTGR` double(14,4) default NULL,
  `AUSLAND` smallint(6) default NULL,
  `EGAUSLAND` smallint(6) default NULL,
  `FLDC01` varchar(25) default NULL,
  `FLDC02` varchar(25) default NULL,
  `FLDC03` varchar(25) default NULL,
  `FLDC04` varchar(25) default NULL,
  `FLDN01` double(14,4) default NULL,
  `FLDN02` double(14,4) default NULL,
  `FLDN03` double(14,4) default NULL,
  `FLDN04` double(14,4) default NULL,
  `INKOPF` longblob,
  `INFUSS` longblob,
  `BEMERKUNG` longblob,
  `KENNUNG1` varchar(20) default NULL,
  `KENNUNG2` varchar(20) default NULL,
  `MKZ` int(11) default NULL,
  `MAHNDATUM` date default NULL,
  `ANZAHLUNG` double(14,4) default NULL,
  `MAHNFRIST` date default NULL,
  `EARBELEG` varchar(20) default NULL,
  `FIBUBELEG` varchar(20) default NULL,
  `MAHNGEB` double(14,4) default NULL,
  `EURO` smallint(6) default NULL,
  `AUSSHOP` smallint(6) default NULL,
  `PKWNUMMER` int(11) default NULL,
  `IVERTNR` int(11) default NULL,
  `VERTRETER` varchar(30) default NULL,
  `KUNDGR` varchar(20) default NULL,
  `KAKENNNR` int(11) default NULL,
  `KBKENNNR` int(11) default NULL,
  `KAKENN` varchar(6) default NULL,
  `KBKENN` varchar(6) default NULL,
  `LMAHNGEB` double(14,4) default NULL,
  `AUSKASSE` smallint(6) default NULL,
  `ONLINEID` int(11) default NULL,
  `WIEDERVORLAGE` varchar(30) default NULL,
  `VORLAGEENDE` date default NULL,
  `VORLAGEERLEDIGT` smallint(6) default NULL,
  `KARTE` varchar(20) default NULL,
  `TRACENR` varchar(20) default NULL,
  `STORNIERT` smallint(6) default NULL,
  `EGIDENTNR` varchar(15) default NULL,
  `SKONTOBETRAG` double(14,4) default NULL,
  `INKASSOAUFTRAG` smallint(6) default NULL,
  `RADRINR` double(14,4) default NULL,
  `LETZTERUSER` varchar(30) default NULL,
  `LETZTERUSERDATE` datetime default NULL,
  `IMPORTIERT` smallint(6) default NULL,
  `ERINNERUNG` date default NULL,
  `ERINNERT` smallint(6) default NULL,
  `GUTSCHRIFTZAHLUNG` double(14,4) default NULL,
  `NAME` varchar(60) default NULL,
  `GELDKONTO` varchar(4) default NULL,
  `GESGEWICHT` double(14,4) default NULL,
  `NEUGU` smallint(6) default NULL,
  `TERMINAL` varchar(30) default NULL,
  `OBESTID` int(11) default NULL,
  `VERSANDCODE` varchar(30) default NULL,
  `TERMINVERGEBEN` smallint(6) default NULL,
  `P13B` smallint(6) default NULL,
  `AKTIONSVORGANG` smallint(6) default NULL,
  `RMNEU` smallint(6) default NULL,
  `GESPEICHERT` smallint(6) default NULL,
  `UHRZEIT` datetime default NULL,
  `ERNUMMER` varchar(30) default NULL,
  `KLASSIFIKATION` varchar(20) default NULL,
  `NETTOUMRECHNUNG` smallint(6) default NULL,
  `AUFTRAGSSTATUS` char(2) default NULL,
  `AUFTRAGSART` char(2) default NULL,
  `KUNDEBEZEICHNUNG` varchar(30) default NULL,
  PRIMARY KEY  (`NUMMER`),
  KEY `FSCHRIFTIdx1` (`NAME`),
  KEY `FSCHRIFTIdx2` (`ZAHLART`),
  KEY `FSCHRIFTIdx3` (`WIEDERVORLAGE`),
  KEY `FSCHRIFTIdx4` (`IVERTNR`),
  KEY `FSCHRIFTIdx5` (`OPNUMMER`,`ERFART`),
  KEY `FSCHRIFTIdx6` (`KENNUNG2`),
  KEY `FSCHRIFTIdx7` (`KENNUNG1`),
  KEY `FSCHRIFTIdx8` (`DATUM`,`ERFART`),
  KEY `FSCHRIFTIdx9` (`SCHRIFTNR`),
  KEY `FSCHRIFTIdx10` (`ADRINR`,`ERFART`,`DATUM`),
  KEY `FSCHRIFTIdx11` (`ERFART`,`DATUM`),
  KEY `FSCHRIFTIdx12` (`AUSSHOP`),
  KEY `FSCHRIFTIdx13` (`ONLINEID`),
  KEY `FSCHRIFTIdx14` (`AUFNR`),
  KEY `FSCHRIFTIdx15` (`OBESTID`)
);


/*********************************************************
 * Table structure for table `tx_ptgsaminidb_KUNDE`
 ********************************************************/

CREATE TABLE `tx_ptgsaminidb_KUNDE` (
  `NUMMER` int(11) NOT NULL default '0',
  `ADRINR` int(11) default NULL,
  `KUNDGR` varchar(18) default NULL,
  `UMSATZ` double(14,4) default NULL,
  `ALTUMSATZ` double(14,4) default NULL,
  `SALDO` double(14,4) default NULL,
  `ALTSALDO` double(14,4) default NULL,
  `FREMDNR` varchar(21) default NULL,
  `PRBRUTTO` smallint(6) default NULL,
  `PREISGR` smallint(6) default NULL,
  `RABATTGR` smallint(6) default NULL,
  `LIEFSPERRE` smallint(6) default NULL,
  `KREDLIMIT` double(14,4) default NULL,
  `GESRAB` double(14,4) default NULL,
  `GESRABTYPE` smallint(6) default NULL,
  `KENNUNG1` varchar(40) default NULL,
  `KENNUNG2` varchar(40) default NULL,
  `ZAHLART` varchar(30) default NULL,
  `VERSART` varchar(30) default NULL,
  `KENNZ` varchar(20) default NULL,
  `FLD01` varchar(30) default NULL,
  `FLD02` varchar(30) default NULL,
  `FLD03` varchar(30) default NULL,
  `FLD04` varchar(30) default NULL,
  `FLD05` varchar(30) default NULL,
  `FLD06` varchar(30) default NULL,
  `FLD07` varchar(30) default NULL,
  `FLD08` varchar(30) default NULL,
  `FLD09` varchar(30) default NULL,
  `FLD10` varchar(30) default NULL,
  `FLD11` varchar(30) default NULL,
  `FLD12` varchar(30) default NULL,
  `VERTRETER` varchar(30) default NULL,
  `IVERTNR` int(11) default NULL,
  `EURO` smallint(6) default NULL,
  `NACECODE` varchar(128) default NULL,
  `LETZTERUMSATZ` date default NULL,
  `ENDVERBRAUCHER` smallint(6) default NULL,
  PRIMARY KEY  (`NUMMER`),
  KEY `KUNDEIdx1` (`PREISGR`),
  KEY `KUNDEIdx2` (`ADRINR`)
);


/*********************************************************
 * Table structure for table `tx_ptgsaminidb_KUNPREIS`
 ********************************************************/

CREATE TABLE `tx_ptgsaminidb_KUNPREIS` (
  `NUMMER` int(11) NOT NULL default '0',
  `ADRINR` int(11) default NULL,
  `ARTINR` int(11) default NULL,
  `PREIS` double(14,4) default NULL,
  `RABATT` double(14,4) default NULL,
  `PRBRUTTO` smallint(6) default NULL,
  `AKTION` smallint(6) default NULL,
  `DATUMVON` date default NULL,
  `DATUMBIS` date default NULL,
  `EURO` smallint(6) default NULL,
  `ARTNRSONPREIS` varchar(40) default NULL,
  `EKPREIS` double(14,4) default NULL,
  `ARTIKELPREIS` double(14,4) default NULL,
  `ARTIKELEURO` smallint(6) default NULL,
  PRIMARY KEY  (`NUMMER`),
  KEY `KUNPREISIdx1` (`ADRINR`,`ARTINR`),
  KEY `KUNPREISIdx2` (`ARTINR`,`ADRINR`)
);


/*********************************************************
 * Table structure for table `tx_ptgsaminidb_LIEFART`
 ********************************************************/

CREATE TABLE `tx_ptgsaminidb_LIEFART` (
  `NUMMER` int(11) NOT NULL default '0',
  `ILIEFNR` int(11) default NULL,
  `IARTNR` int(11) default NULL,
  `BESTELLNUMMER` varchar(40) default NULL,
  `EANNUMMER` varchar(20) default NULL,
  `EKPREIS1` double(14,4) default NULL,
  `EKPREIS2` double(14,4) default NULL,
  `EKPREIS3` double(14,4) default NULL,
  `RAB1` double(14,4) default NULL,
  `RAB2` double(14,4) default NULL,
  `RAB3` double(14,4) default NULL,
  `PRBRUTTO` smallint(6) default NULL,
  `EURO` smallint(6) default NULL,
  `LIEFERTAGE1` int(11) default NULL,
  `LIEFERTAGE2` int(11) default NULL,
  `LIEFERTAGE3` int(11) default NULL,
  `MINDESTMENGE` double(14,4) default NULL,
  PRIMARY KEY  (`NUMMER`),
  KEY `LIEFARTIdx1` (`LIEFERTAGE3`),
  KEY `LIEFARTIdx2` (`LIEFERTAGE2`),
  KEY `LIEFARTIdx3` (`LIEFERTAGE1`),
  KEY `LIEFARTIdx4` (`EKPREIS3`),
  KEY `LIEFARTIdx5` (`EKPREIS2`),
  KEY `LIEFARTIdx6` (`EKPREIS1`),
  KEY `LIEFARTIdx7` (`ILIEFNR`,`IARTNR`),
  KEY `LIEFARTIdx8` (`EANNUMMER`),
  KEY `LIEFARTIdx9` (`BESTELLNUMMER`),
  KEY `LIEFARTIdx10` (`IARTNR`),
  KEY `LIEFARTIdx11` (`ILIEFNR`)
);


/*********************************************************
 * Table structure for table `tx_ptgsaminidb_NUMMERN`
 ********************************************************/

CREATE TABLE `tx_ptgsaminidb_NUMMERN` (
  `ANENDLOS` int(11) default NULL,
  `ANJAHR` int(11) default NULL,
  `ANMONAT` int(11) default NULL,
  `ANTAG` int(11) default NULL,
  `ANDATUM` date default NULL,
  `AUENDLOS` int(11) default NULL,
  `AUJAHR` int(11) default NULL,
  `AUMONAT` int(11) default NULL,
  `AUTAG` int(11) default NULL,
  `AUDATUM` date default NULL,
  `LIENDLOS` int(11) default NULL,
  `LIJAHR` int(11) default NULL,
  `LIMONAT` int(11) default NULL,
  `LITAG` int(11) default NULL,
  `LIDATUM` date default NULL,
  `REENDLOS` int(11) default NULL,
  `REJAHR` int(11) default NULL,
  `REMONAT` int(11) default NULL,
  `RETAG` int(11) default NULL,
  `REDATUM` date default NULL,
  `GUENDLOS` int(11) default NULL,
  `GUJAHR` int(11) default NULL,
  `GUMONAT` int(11) default NULL,
  `GUTAG` int(11) default NULL,
  `GUDATUM` date default NULL,
  `STENDLOS` int(11) default NULL,
  `STJAHR` int(11) default NULL,
  `STMONAT` int(11) default NULL,
  `STTAG` int(11) default NULL,
  `STDATUM` date default NULL,
  `BEENDLOS` int(11) default NULL,
  `BEJAHR` int(11) default NULL,
  `BEMONAT` int(11) default NULL,
  `BETAG` int(11) default NULL,
  `BEDATUM` date default NULL,
  `BSENDLOS` double(14,4) default NULL,
  `BSJAHR` double(14,4) default NULL,
  `BSMONAT` double(14,4) default NULL,
  `BSTAG` double(14,4) default NULL,
  `BSDATUM` date default NULL,
  `WEENDLOS` double(14,4) default NULL,
  `WEJAHR` double(14,4) default NULL,
  `WEMONAT` double(14,4) default NULL,
  `WETAG` double(14,4) default NULL,
  `WEDATUM` date default NULL,
  `MAENDLOS` double(14,4) default NULL,
  `MAJAHR` double(14,4) default NULL,
  `MAMONAT` double(14,4) default NULL,
  `MATAG` double(14,4) default NULL,
  `MADATUM` date default NULL,
  `BAENDLOS` double(14,4) default NULL,
  `BAJAHR` double(14,4) default NULL,
  `BAMONAT` double(14,4) default NULL,
  `BATAG` double(14,4) default NULL,
  `BADATUM` date default NULL,
  `SOENDLOS` double(14,4) default NULL,
  `SOJAHR` double(14,4) default NULL,
  `SOMONAT` double(14,4) default NULL,
  `SOTAG` double(14,4) default NULL,
  `SODATUM` date default NULL,
  `RAENDLOS` double(14,4) default NULL,
  `RAJAHR` double(14,4) default NULL,
  `RAMONAT` double(14,4) default NULL,
  `RATAG` double(14,4) default NULL,
  `RADATUM` date default NULL,
  `RLENDLOS` double(14,4) default NULL,
  `RLJAHR` double(14,4) default NULL,
  `RLMONAT` double(14,4) default NULL,
  `RLTAG` double(14,4) default NULL,
  `RLDATUM` date default NULL,
  `KAENDLOS` double(14,4) default NULL,
  `KAJAHR` double(14,4) default NULL,
  `KAMONAT` double(14,4) default NULL,
  `KATAG` double(14,4) default NULL,
  `KADATUM` date default NULL,
  `WDENDLOS` double(14,4) default NULL,
  `WDJAHR` double(14,4) default NULL,
  `WDMONAT` double(14,4) default NULL,
  `WDTAG` double(14,4) default NULL,
  `WDDATUM` date default NULL,
  `POSZAEHLER` double(14,4) default NULL,
  `VORGANG` int(11) default NULL,
  `AFENDLOS` double(14,4) default NULL,
  `AFJAHR` double(14,4) default NULL,
  `AFMONAT` double(14,4) default NULL,
  `AFTAG` double(14,4) default NULL,
  `AFDATUM` date default NULL,
  `NUMMER` int(11) default NULL
);


/*********************************************************
 * Table structure for table `tx_ptgsaminidb_RAMATRIX`
 ********************************************************/

CREATE TABLE `tx_ptgsaminidb_RAMATRIX` (
  `NUMMER` int(11) NOT NULL default '0',
  `ARTINR` int(11) default NULL,
  `WG` varchar(20) default NULL,
  `RAB01` double(14,4) default NULL,
  `RAB02` double(14,4) default NULL,
  `RAB03` double(14,4) default NULL,
  `RAB04` double(14,4) default NULL,
  `RAB05` double(14,4) default NULL,
  `ERAB01` double(14,4) default NULL,
  `ERAB02` double(14,4) default NULL,
  `ERAB03` double(14,4) default NULL,
  `ERAB04` double(14,4) default NULL,
  `ERAB05` double(14,4) default NULL,
  PRIMARY KEY  (`NUMMER`),
  KEY `RAMATRIXIdx1` (`WG`),
  KEY `RAMATRIXIdx2` (`ARTINR`)
);


/*********************************************************
 * Table structure for table `tx_ptgsaminidb_STEUER`
 ********************************************************/

CREATE TABLE `tx_ptgsaminidb_STEUER` (
  `CODE` char(2) NOT NULL default '',
  `ASATZ` double(14,4) default NULL,
  `BEMERKUNG` varchar(30) default NULL,
  `DATUM` date default NULL,
  `NSATZ` double(14,4) default NULL,
  `REISE` smallint(6) default NULL,
  `DATUM2` date default NULL,
  `NSATZ2` double(14,4) default NULL,
  PRIMARY KEY  (`CODE`),
  KEY `STEUERIdx1` (`CODE`)
);

/**
 * Data for table `tx_ptgsaminidb_STEUER`
 */

INSERT INTO `tx_ptgsaminidb_STEUER` VALUES ('00', '0.0000', 'Steuerfrei', NULL, NULL, 0, '1993-01-01', '0.0000');
INSERT INTO `tx_ptgsaminidb_STEUER` VALUES ('01', '16.0000', 'Allgemeiner Steuersatz', NULL, NULL, 0, '2007-01-01', '19.0000');
INSERT INTO `tx_ptgsaminidb_STEUER` VALUES ('02', '6.5000', 'Ermässigter Steuersatz', NULL, NULL, 0, '1993-01-01', '7.0000');


/*********************************************************
 * Table structure for table `tx_ptgsaminidb_SYNEWNUMBER`
 ********************************************************/

CREATE TABLE `tx_ptgsaminidb_SYNEWNUMBER` (
  `TABLENAME` varchar(64) default NULL,
  `LASTNUMBER` int(11) default NULL
);

/**
 * Data for table `tx_ptgsaminidb_SYNEWNUMBER`
 */

INSERT INTO `tx_ptgsaminidb_SYNEWNUMBER` VALUES ('VERSART', 5);
INSERT INTO `tx_ptgsaminidb_SYNEWNUMBER` VALUES ('BHSTEUER', 6);


/*********************************************************
 * Table structure for table `tx_ptgsaminidb_VERSART`
 ********************************************************/

CREATE TABLE `tx_ptgsaminidb_VERSART` (
  `NUMMER` int(11) NOT NULL default '0',
  `VERSART` varchar(30) default NULL,
  `FLDN01` double(14,4) default NULL,
  `FLDN02` double(14,4) default NULL,
  `FLDN03` double(14,4) default NULL,
  `FLDN04` double(14,4) default NULL,
  `EURO` smallint(6) default NULL,
  `FREIAB01` double(14,4) default NULL,
  `FREIAB02` double(14,4) default NULL,
  `FREIAB03` double(14,4) default NULL,
  `FREIAB04` double(14,4) default NULL,
  PRIMARY KEY  (`NUMMER`),
  KEY `VERSARTIdx1` (`VERSART`)
);

/**
 * Data for table `tx_ptgsaminidb_VERSART`
 */

INSERT INTO `tx_ptgsaminidb_VERSART` VALUES (1, 'Shop Inland (netto)', '4.1200', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tx_ptgsaminidb_VERSART` VALUES (2, 'Shop Inland (brutto)', '4.9000', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tx_ptgsaminidb_VERSART` VALUES (3, 'Shop Ausland (netto)', '7.4800', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tx_ptgsaminidb_VERSART` VALUES (4, 'Shop Ausland (brutto)', '8.9000', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);
INSERT INTO `tx_ptgsaminidb_VERSART` VALUES (5, 'frei', '0.0000', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL);


/*********************************************************
 * Table structure for table `tx_ptgsaminidb_VKPREIS`
 ********************************************************/

CREATE TABLE `tx_ptgsaminidb_VKPREIS` (
  `NUMMER` int(11) NOT NULL default '0',
  `ARTINR` int(11) default NULL,
  `ABMENGE` double(14,4) default NULL,
  `PR01` double(14,4) default NULL,
  `ART01` char(1) default NULL,
  `DB01` double(14,4) default NULL,
  `PR02` double(14,4) default NULL,
  `ART02` char(1) default NULL,
  `DB02` double(14,4) default NULL,
  `PR03` double(14,4) default NULL,
  `ART03` char(1) default NULL,
  `DB03` double(14,4) default NULL,
  `PR04` double(14,4) default NULL,
  `ART04` char(1) default NULL,
  `DB04` double(14,4) default NULL,
  `PR05` double(14,4) default NULL,
  `ART05` char(1) default NULL,
  `DB05` double(14,4) default NULL,
  `PR99` double(14,4) default NULL,
  `DATUMVON` date default NULL,
  `DATUMBIS` date default NULL,
  `AKTION` smallint(6) default NULL,
  `SWLAUF` smallint(6) default NULL,
  `PR99_2` double(14,4) default NULL,
  `PR99_3` double(14,4) default NULL,
  `PR99_4` double(14,4) default NULL,
  `PR99_5` double(14,4) default NULL,
  `DATUMVON2` date default NULL,
  `DATUMBIS2` date default NULL,
  `DATUMVON3` date default NULL,
  `DATUMBIS3` date default NULL,
  `DATUMVON4` date default NULL,
  `DATUMBIS4` date default NULL,
  `DATUMVON5` date default NULL,
  `DATUMBIS5` date default NULL,
  PRIMARY KEY  (`NUMMER`),
  KEY `VKPREISIdx1` (`ARTINR`,`ABMENGE`)
);


/*********************************************************
 * Table structure for table `tx_ptgsaminidb_ZAHLUNG`
 ********************************************************/

CREATE TABLE `tx_ptgsaminidb_ZAHLUNG` (
  `NUMMER` int(11) NOT NULL default '0',
  `AUFINR` int(11) default NULL,
  `OPNUMMER` int(11) default NULL,
  `BETRAG` double(14,4) default NULL,
  `DATUM` date default NULL,
  `BEMERKUNG` varchar(40) default NULL,
  `BANK` varchar(40) default NULL,
  `KONTO` varchar(30) default NULL,
  `FIBUKTO` varchar(4) default NULL,
  `EARKTO` varchar(4) default NULL,
  `MAHNGEB` double(14,4) default NULL,
  `GUTHABEN` double(14,4) default NULL,
  `BANKGEB` double(14,4) default NULL,
  `EURO` smallint(6) default NULL,
  `AUSGUTSCHRIFTEN` double(14,4) default NULL,
  `RBEMERKUNG` varchar(255) default NULL,
  `RUECKGAENGIG` smallint(6) default NULL,
  PRIMARY KEY  (`NUMMER`),
  KEY `ZAHLUNGIdx1` (`AUFINR`),
  KEY `ZAHLUNGIdx2` (`OPNUMMER`)
);


/*********************************************************************
 * Table structure for table `tx_ptgsaminidb_pt_gsashop_supplierControl`
 ********************************************************/

CREATE TABLE `tx_ptgsaminidb_pt_gsashop_supplierControl` (
  `uid` int(11) NOT NULL auto_increment,
  `invoiceDocNumber` varchar(25) default NULL,
  `bookingDate` date default NULL,
  `articleUid` int(11) default NULL,
  `articleNumber` varchar(120) default NULL,
  `articleQty` int(11) default NULL,
  `supplierUid` int(11) default NULL,
  `supplierArticleNumber` varchar(40) default NULL,
  `supplierEanNumber` varchar(20) default NULL,
  `supplierUnitPrice1` double(14,4) default NULL,
  `supplierUnitPrice2` double(14,4) default NULL,
  `supplierUnitPrice3` double(14,4) default NULL,
  `supplierDiscount1` double(14,4) default NULL,
  `supplierDiscount2` double(14,4) default NULL,
  `supplierDiscount3` double(14,4) default NULL,
  `isGrossPrice` tinyint(3) default NULL,
  PRIMARY KEY  (`uid`)
);


/*********************************************************
 * Table structure for table `tx_ptgsaminidb_px_DTABUCH`
 ********************************************************/

CREATE TABLE `tx_ptgsaminidb_px_DTABUCH` (
  `NUMMER` int(11) NOT NULL auto_increment,
  `NAME` varchar(27) default NULL,
  `NAME2` varchar(27) default NULL,
  `BLZ` varchar(8) default NULL,
  `KONTO` varchar(10) default NULL,
  `TYP` varchar(20) default NULL,
  `BETRAG` decimal(12,2) default NULL,
  `ZWECK` varchar(27) default NULL,
  `ZWECK2` varchar(27) default NULL,
  `PROGRAMM` varchar(10) default NULL,
  `DATUM` date default NULL,
  `FAELLIG` date default NULL,
  `BUCHDAT` date default NULL,
  `DISKID` char(3) default NULL,
  `MEHRZWECK` blob,
  `EURO` int(1) default NULL,
  PRIMARY KEY  (`NUMMER`)
);


/*********************************************************
 * Table structure for table `tx_ptgsaminidb_px_laender`
 ********************************************************/

CREATE TABLE `tx_ptgsaminidb_px_laender` (
  `NUMMER` int(11) default NULL,
  `KUERZEL` char(3) default NULL,
  `NAME` varchar(35) default NULL,
  `WEBLKZ` char(2) default NULL,
  `VWREIN` varchar(4) default NULL,
  `VWRAUS` varchar(4) default NULL
);

/**
 * Data for table `tx_ptgsaminidb_px_laender`
 */

INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (0, 'D', 'Deutschland', 'de', '49', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (1, 'CH', 'Schweiz', 'ch', '41', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (2, 'B', 'Belgien', 'be', '32', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (3, 'DK', 'Dänemark', 'dk', '45', '009');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (4, 'FIN', 'Finnland', 'fi', '358', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (5, 'F', 'Frankreich', 'fr', '33', '19');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (6, 'GR', 'Griechenland', 'gr', '30', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (7, 'GB', 'Großbritannien', 'uk', '44', '010');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (8, 'IRL', 'Irland', 'ie', '353', '16');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (9, 'IL', 'Israel', 'il', '972', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (10, 'I', 'Italien', 'it', '39', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (11, 'NL', 'Niederlande', 'nl', '31', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (12, 'N', 'Norwegen', 'no', '47', '095');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (13, 'P', 'Portugal', 'pt', '351', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (14, 'S', 'Schweden', 'se', '46', '009');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (15, 'E', 'Spanien', 'es', '34', '07');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (16, 'TR', 'Türkei', 'tr', '90', '99');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (17, 'HU', 'Ungarn', 'hu', '36', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (18, 'USA', 'Usa', 'us', '1', '011');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (19, 'CDN', 'Kanada', 'ca', '1', '011');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (20, 'L', 'Luxemburg', 'lu', '35', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (21, 'A', 'Österreich', 'at', '43', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (22, 'FL', 'Liechtenstein', 'li', '41', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (23, 'CZ', 'Tschechien', 'cz', '42', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (24, 'PL', 'Polen', 'pl', '48', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (25, 'AL', 'Albanien', 'al', '355', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (26, 'AND', 'Andorra', 'an', '367', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (27, 'ARM', 'Armenien', 'am', '7', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (28, 'AUS', 'Australien', 'au', '61', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (29, 'BG', 'Bulgarien', 'bg', '359', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (30, 'BIH', 'Bosnien Herzegowina', 'bi', '387', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (31, 'BY', 'Weißrussland', 'by', '7', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (32, 'CY', 'Zypern', 'cy', '357', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (33, 'DZ', 'Algerien', 'dz', '213', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (34, 'EST', 'Estland', 'ee', '372', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (35, 'FJI', 'Fidschi', 'fj', '679', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (36, 'GBZ', 'Gibraltar', 'gi', '350', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (37, 'GE', 'Georgien', 'ge', '995', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (38, 'HR', 'Kroatien', 'hr', '385', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (39, 'IS', 'Island', 'is', '354', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (40, 'J', 'Japan', 'jp', '81', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (41, 'JOR', 'Jordanien', 'jo', '962', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (42, 'KS', 'Kirgistan', 'ks', '7', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (43, 'KZ', 'Kasachstan', 'kz', '7', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (44, 'LT', 'Litauen', 'lt', '370', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (45, 'LV', 'Lettland', 'lv', '371', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (46, 'M', 'Malta', 'mt', '356', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (47, 'MA', 'Marokko', 'ma', '212', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (48, 'MC', 'Monaco', 'mc', '33', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (49, 'MD', 'Moldau', 'md', '691', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (50, 'NZ', 'Neuseeland', 'nz', '64', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (51, 'RC', 'Taiwan', 'tw', '886', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (52, 'RO', 'Rumänien', 'ro', '40', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (53, 'RUS', 'Russland', 'ru', '7', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (54, 'SK', 'Slowakei', 'sk', '42', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (55, 'SLO', 'Slowenien', 'si', '386', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (56, 'TJ', 'Tadschikistan', 'tj', '7', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (57, 'TN', 'Tunesien', 'tn', '216', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (58, 'TO', 'Tonga', 'to', '676', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (59, 'UA', 'Ukraine', 'ua', '70', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (60, 'UZB', 'Usbekistan', 'uz', '7', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (61, 'VN', 'Vietnam', 'vn', '84', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (62, 'YU', 'Jugoslawien', 'yu', '38', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (63, 'ZA', 'Südafrika', 'za', '27', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (64, 'VRC', 'Volksrepublik China', 'cn', '86', '');
INSERT INTO `tx_ptgsaminidb_px_laender` VALUES (65, 'BR', 'Brasilien', 'br', '55', '');

