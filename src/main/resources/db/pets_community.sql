-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.37 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- pets_community 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `pets_community` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pets_community`;

-- 테이블 pets_community.tbl_daily 구조 내보내기
CREATE TABLE IF NOT EXISTS `tbl_daily` (
  `IDX` int unsigned NOT NULL AUTO_INCREMENT,
  `MEMBER_ID` varchar(50) DEFAULT NULL,
  `PET_NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '반려동물선택',
  `WEIGHT` int DEFAULT NULL COMMENT '몸무게',
  `HOS_VISIT` int DEFAULT NULL COMMENT '병원방문 0-미방문,1-방문',
  `TITLE` varchar(255) DEFAULT NULL COMMENT '제목',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '내용',
  `MEMO` varchar(100) DEFAULT NULL COMMENT '한줄메모',
  `STATUS` int DEFAULT NULL COMMENT '사용유무',
  `CREATE_TM` datetime DEFAULT NULL,
  `UPDATE_TM` datetime DEFAULT NULL,
  PRIMARY KEY (`IDX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='일지기록';

-- 테이블 데이터 pets_community.tbl_daily:~0 rows (대략적) 내보내기

-- 테이블 pets_community.tbl_member 구조 내보내기
CREATE TABLE IF NOT EXISTS `tbl_member` (
  `IDX` int unsigned DEFAULT NULL,
  `MEMBER_ID` varchar(50) NOT NULL COMMENT '사용자아이디',
  `PASSWORD` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '패스워드',
  `NAME` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '이름',
  `NICK_NAME` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '닉네임',
  `PET_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '반려동물',
  `LEVEL` int unsigned NOT NULL DEFAULT '10' COMMENT '레벨',
  `CREATE_TM` datetime DEFAULT NULL COMMENT '생성일',
  `UPDATE_TM` datetime DEFAULT NULL COMMENT '수정일',
  `DELETE_TM` datetime DEFAULT NULL COMMENT '삭제시간',
  `DELETE_KEY` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '1' COMMENT '1삭제',
  PRIMARY KEY (`MEMBER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='멤버';

-- 테이블 데이터 pets_community.tbl_member:~0 rows (대략적) 내보내기

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
