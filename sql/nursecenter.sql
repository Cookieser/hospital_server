/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.19 : Database - nursecenter
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`nursecenter` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `nursecenter`;

/*Table structure for table `accommodation` */

DROP TABLE IF EXISTS `accommodation`;

CREATE TABLE `accommodation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Start_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `End_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `bed_id` int(11) DEFAULT NULL,
  `principal` int(11) DEFAULT NULL,
  `operate_time` varchar(20) DEFAULT NULL,
  `Delmark` int(11) DEFAULT NULL,
  `remarks` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `principal` (`principal`),
  CONSTRAINT `principal` FOREIGN KEY (`principal`) REFERENCES `doctor_chart` (`principal`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `accommodation` */

insert  into `accommodation`(`ID`,`Start_time`,`End_time`,`bed_id`,`principal`,`operate_time`,`Delmark`,`remarks`) values (1,'2020/1/30','2020/1/23',10,3,'2019-01-03',0,NULL),(2,'06/15/2022','12-02-2012',1,1,'12-02-2012',1,'null'),(3,'2021/4/9','2021/4/10',15,2,'2012-01-02',0,NULL),(4,'2021/6/9','2021/6/16',25,3,'2016-01-02',1,NULL),(5,'2021/6/26','2021/8/2',30,1,'2018-01-02',1,NULL),(6,'2020/1/2','2020/1/22',1,2,'2019-01-02',0,NULL),(7,'2020/1/2','2020/1/22',1,2,'2019-01-02',1,NULL),(10,'2020/2/2','2021/2/2',5,1,'2020-02-02',1,'null'),(11,'2020/2/2','2021/2/2',5,1,'2020-02-02',1,'null'),(12,'2020/5/6','2021/7/8',9,2,'2020-05-06',1,'null'),(13,'2020/2/2','2021/2/2',5,1,'2020-02-02',1,'null'),(14,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'07/26/2022','null',1,2,'12-02-2012',0,'null'),(16,'12-02-2012','null',12,6,'12-02-2012',0,'null'),(17,'12-02-2012','null',12,8,'12-02-2012',0,'null'),(18,'06/11/2022','null',12,1,'06/08/2022',1,'null'),(19,'12-02-2012','null',1,1,'12-02-2012',1,'null');

/*Table structure for table `answer` */

DROP TABLE IF EXISTS `answer`;

CREATE TABLE `answer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '???????????????',
  `QuestionID` int(11) DEFAULT NULL,
  `Content` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Delmark` int(11) DEFAULT NULL COMMENT '0-?????????;1-??????',
  `User_ID` int(11) DEFAULT NULL,
  `remarks` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `answer` (`QuestionID`),
  KEY `User_ID` (`User_ID`),
  CONSTRAINT `QuestionID` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`ID`),
  CONSTRAINT `User_ID` FOREIGN KEY (`User_ID`) REFERENCES `patient` (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `answer` */

insert  into `answer`(`ID`,`QuestionID`,`Content`,`Delmark`,`User_ID`,`remarks`) values (1,10,'??????????????????????????????????????????',1,2,NULL),(2,10,'??????????????????????????????????????????',1,3,NULL),(4,4,'???????????????????????????',1,4,NULL),(5,5,'????????????????????????????????????',1,1,NULL),(6,4,'??????',0,3,NULL);

/*Table structure for table `bed` */

DROP TABLE IF EXISTS `bed`;

CREATE TABLE `bed` (
  `ID` int(20) NOT NULL AUTO_INCREMENT COMMENT '???????????????',
  `Bed_Number` int(11) DEFAULT NULL,
  `State` int(11) DEFAULT NULL COMMENT '0????????????1?????????',
  `Room_ID` int(20) DEFAULT NULL,
  `Room_Clean` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Delmark` int(11) DEFAULT NULL COMMENT '0???????????????1?????????',
  `remarks` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PatientID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `room` (`Room_ID`),
  KEY `patientID` (`PatientID`),
  CONSTRAINT `patientID` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`User_ID`),
  CONSTRAINT `room` FOREIGN KEY (`Room_ID`) REFERENCES `room` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf16;

/*Data for the table `bed` */

insert  into `bed`(`ID`,`Bed_Number`,`State`,`Room_ID`,`Room_Clean`,`Delmark`,`remarks`,`PatientID`) values (2,11017,1,1,'12-02-2012',1,NULL,2),(6,12041,1,6,'2022/5/29',1,NULL,2),(7,11019,1,1,'12-02-2012',1,NULL,2),(8,61011,1,1,'12-02-2012',1,NULL,2),(10,11011,1,1,'12-02-2012',1,NULL,16),(11,11011,0,1,'12-02-2012',1,NULL,2),(12,6129,1,2,'12-02-2012',1,NULL,2);

/*Table structure for table `doctor_chart` */

DROP TABLE IF EXISTS `doctor_chart`;

CREATE TABLE `doctor_chart` (
  `principal` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_num` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `work_year` varchar(20) DEFAULT NULL,
  `Account` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `Title` varchar(20) DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL,
  `Delmark` varchar(1) DEFAULT NULL,
  `remarks` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`principal`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `doctor_chart` */

insert  into `doctor_chart`(`principal`,`doctor_num`,`name`,`age`,`work_year`,`Account`,`password`,`gender`,`birthday`,`Title`,`department`,`Delmark`,`remarks`) values (1,125,'?????????',34,'10','cookies','679543','???','1988/8/5','??????','??????','1',NULL),(2,246,'?????????',45,'15','xiaoxiao','492873','???','1979/6/8','??????','??????','1',NULL),(3,576,'??????',32,'9','qihao','240250','???','1990/10/18','??????','??????','1',NULL),(4,580,'cheng',35,'11','dada','537468','???','1987/12/1','??????','??????','0',NULL),(5,234,'??????',89,'70','wangYuPu','234567','???','1933/3/4','??????','??????','1','null'),(6,254,'??????',39,'6','ying','785375','???','1983/6/21','??????','??????','1',NULL),(7,511,'??????',58,'30','heng','900546','???','1964/9/10','??????','??????','1',NULL),(8,12123,'?????????',30,'20','admin','1450575459','???','2001/02/01','??????','??????','1','null');

/*Table structure for table `patient` */

DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `User_ID` int(11) NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `gender` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `principal` int(11) DEFAULT NULL,
  `load_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Idcard` varchar(18) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `home_address` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Account` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Password` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Delmark` int(11) DEFAULT NULL,
  `remarks` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `patient` */

insert  into `patient`(`User_ID`,`patient_name`,`gender`,`principal`,`load_time`,`Idcard`,`home_address`,`phone`,`Account`,`Password`,`Delmark`,`remarks`) values (1,'?????????','???',2,'2019/1/1','130925199106132623','???????????????????????????','14176507215','xinrei','135984',0,NULL),(2,'?????????','???',5,'2015/1/2','360428197205147527','???????????????????????????','17890346176','null','null',0,NULL),(3,'?????????','???',3,'2012/1/2','350322197801261718','???????????????????????????','19340038054','fanfan','246891',1,NULL),(4,'?????????','???',3,'2016/1/2','44172119720310362X','???????????????????????????','18120244613','tiantian','324235',1,NULL),(5,'?????????','???',3,'2018/1/2','510623198601073613','???????????????????????????','18379413070','dada','435788',0,NULL),(10,'ALICE','???',3,'2018/1/2','510623198601073613','???????????????????????????','18379413070','alice','435788',0,NULL),(15,'?????????','???',1,'12-02-2012','360428197205147527','???????????????','13569845269','null','null',1,NULL),(16,'?????????','???',6,'12-02-2012','546546544646654653','??????????????????','12387951685','null','null',1,NULL),(17,'?????????','???',6,'12-02-2012','546546544646654654','???????????????','17890346177','null','null',1,NULL),(18,'wqeq','???',6,'12-02-2012','360428197205147527','???????????????','111','null','null',0,NULL),(19,'?????????','???',5,'12-02-2012','360428197205147527','??????????????????','77558268','null','null',1,NULL),(20,'?????????','???',1,'12-02-2012','360428197205147527','?????????','111','null','null',1,NULL);

/*Table structure for table `question` */

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '???????????????',
  `Title` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DelMark` int(11) DEFAULT NULL COMMENT '0-????????????1-??????',
  `Module_Name` int(11) DEFAULT NULL COMMENT '1?????????;2?????????;3???????????????;4???????????????',
  `remarks` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `question` */

insert  into `question`(`ID`,`Title`,`DelMark`,`Module_Name`,`remarks`) values (1,'????????????????????????????????????',0,1,NULL),(2,'??????????????????????????????',1,1,NULL),(3,'?????????????????????????????????',0,1,NULL),(4,'???????????????????????????',0,1,NULL),(5,'??????????????????????????????',0,1,NULL),(6,'???????????????????????????',1,1,NULL),(7,'??????',0,1,NULL),(8,'????????????????????????????????????',1,1,NULL),(9,'???????????????????????????',1,2,NULL),(10,'???????????????????????????',0,2,NULL),(11,'???????????????????????????',1,2,NULL),(12,'???????????????????????????',1,2,NULL),(13,'?????????????????????',1,2,NULL);

/*Table structure for table `rare_equipment_management_table` */

DROP TABLE IF EXISTS `rare_equipment_management_table`;

CREATE TABLE `rare_equipment_management_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto_increment',
  `equipment_name` varchar(16) DEFAULT NULL,
  `equipment_type` varchar(16) DEFAULT NULL,
  `in_use` int(11) DEFAULT NULL COMMENT '0-nonuse;1-in_use',
  `Delmark` int(11) DEFAULT NULL COMMENT '0-delete;1-normal',
  `Room_ID` int(20) NOT NULL,
  `remarks` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `roomid` (`Room_ID`),
  CONSTRAINT `roomid` FOREIGN KEY (`Room_ID`) REFERENCES `room` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `rare_equipment_management_table` */

insert  into `rare_equipment_management_table`(`ID`,`equipment_name`,`equipment_type`,`in_use`,`Delmark`,`Room_ID`,`remarks`) values (1,'?????????','?????????',1,1,6,NULL),(2,'?????????','?????????',0,1,6,NULL),(3,'?????????','?????????',0,1,2,NULL),(4,'?????????','?????????',0,1,3,NULL),(5,'????????????','?????????',0,1,5,NULL),(6,'????????????','?????????',0,1,6,NULL),(7,'?????????','?????????',0,1,7,NULL),(8,'???','?????????',0,1,5,NULL),(9,'?????????','?????????',0,0,5,NULL),(10,'??????','?????????',1,0,2,'null'),(11,'','?????????',0,0,6,'null');

/*Table structure for table `rare_equipment_use_table` */

DROP TABLE IF EXISTS `rare_equipment_use_table`;

CREATE TABLE `rare_equipment_use_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto_increment',
  `Start_time` varchar(20) DEFAULT NULL,
  `End_time` varchar(20) DEFAULT NULL,
  `user_ID` int(11) DEFAULT NULL,
  `Delmark` int(11) DEFAULT NULL,
  `remarks` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `In_use` (`user_ID`),
  CONSTRAINT `In_use` FOREIGN KEY (`user_ID`) REFERENCES `patient` (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `rare_equipment_use_table` */

insert  into `rare_equipment_use_table`(`ID`,`Start_time`,`End_time`,`user_ID`,`Delmark`,`remarks`) values (1,'2022-6-1','2022-6-11',1,1,NULL),(2,'2022-6-1','2022-6-2',2,1,NULL),(3,'2022-6-4','2022-6-9',3,1,NULL),(4,'2022-6-4','2022-6-9',2,1,NULL),(5,'2022-6-5','2022-6-6',5,1,NULL),(6,'2022-06-10','2022-06-15',2,1,NULL),(7,'2022-6-1','2022-6-11',1,0,NULL),(8,'2022-06-10','2022-06-15',10,1,'null'),(9,'2022-06-18','2022-06-26',15,1,'null');

/*Table structure for table `room` */

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
  `ID` int(20) NOT NULL AUTO_INCREMENT COMMENT '???????????????',
  `Type` int(11) DEFAULT NULL COMMENT '1????????????????????????2????????????????????????3???????????????4????????????',
  `Max` int(11) DEFAULT NULL,
  `Remark` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `department` int(11) DEFAULT NULL COMMENT '0????????????1????????????2???????????????????????????3???_???4??????????????????',
  `Room_ID` int(20) NOT NULL,
  `principal` int(11) DEFAULT NULL,
  `Delmark` int(11) DEFAULT NULL COMMENT '0???????????????1?????????',
  `remarkS` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `principal` (`principal`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `room` */

insert  into `room`(`ID`,`Type`,`Max`,`Remark`,`department`,`Room_ID`,`principal`,`Delmark`,`remarkS`) values (1,1,4,'??????????????????',3,1201,5,0,NULL),(2,1,4,'??????????????????',3,4,7,1,NULL),(3,1,3,'???????????????',3,8,2,1,NULL),(4,2,1,'??????',0,1200,1,1,NULL),(5,2,2,'??????',1,2205,3,1,NULL),(6,3,10,'????????????',2,3101,6,1,NULL),(7,4,10,'????????????',4,4101,4,1,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
