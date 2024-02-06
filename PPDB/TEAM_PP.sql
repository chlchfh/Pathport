CREATE DATABASE TEAM_PP DEFAULT CHARACTER SET utf8;
USE TEAM_PP;

/*
 Navicat Premium Data Transfer

 Source Server         : PPDB
 Source Server Type    : MariaDB
 Source Server Version : 100614
 Source Host           : pathport.cuj4cotn525c.ap-northeast-2.rds.amazonaws.com:3306
 Source Schema         : TEAM_PP

 Target Server Type    : MariaDB
 Target Server Version : 100614
 File Encoding         : 65001

 Date: 06/02/2024 14:00:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bookmark
-- ----------------------------
DROP TABLE IF EXISTS `bookmark`;
CREATE TABLE `bookmark`  (
  `bm_code` int(11) NOT NULL AUTO_INCREMENT,
  `bm_cls` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bm_nn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `des_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`bm_code`) USING BTREE,
  INDEX `FKbetw4coojiubnthi0221y1q`(`des_code`) USING BTREE,
  INDEX `FK72ux9h903oo291lnwdpxj7r1e`(`email`) USING BTREE,
  CONSTRAINT `FK72ux9h903oo291lnwdpxj7r1e` FOREIGN KEY (`email`) REFERENCES `user` (`user_email`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKbetw4coojiubnthi0221y1q` FOREIGN KEY (`des_code`) REFERENCES `destination` (`des_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for des_cls
-- ----------------------------
DROP TABLE IF EXISTS `des_cls`;
CREATE TABLE `des_cls`  (
  `d_cls_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `d_cls_country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `d_cls_addr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '시도구분',
  `d_cls_lat` double NULL DEFAULT NULL,
  `d_cls_lng` double NULL DEFAULT NULL,
  `des_addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`d_cls_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of des_cls
-- ----------------------------
INSERT INTO `des_cls` VALUES ('2001', '한국', '서울특별시', 38, 127, NULL);
INSERT INTO `des_cls` VALUES ('2002', '한국', '인천광역시', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2003', '한국', '대전광역시', 36, 127, NULL);
INSERT INTO `des_cls` VALUES ('2004', '한국', '대구광역시', 36, 129, NULL);
INSERT INTO `des_cls` VALUES ('2005', '한국', '광주광역시', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2006', '한국', '부산광역시', 35, 129, NULL);
INSERT INTO `des_cls` VALUES ('2007', '한국', '울산광역시', 36, 129, NULL);
INSERT INTO `des_cls` VALUES ('2008', '한국', '제주도', 33, 126, NULL);
INSERT INTO `des_cls` VALUES ('2009', '한국', '제주도 서귀포', 33, 127, NULL);
INSERT INTO `des_cls` VALUES ('2010', '한국', '제주도 제주', 33, 127, NULL);
INSERT INTO `des_cls` VALUES ('2100', '한국', '경기도', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2101', '한국', '경기도 수원', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2102', '한국', '경기도 성남', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2103', '한국', '경기도 용인', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2104', '한국', '경기도 안양', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2105', '한국', '경기도 안산', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2106', '한국', '경기도 과천', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2107', '한국', '경기도 광명', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2108', '한국', '경기도 광주', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2109', '한국', '경기도 군포', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2110', '한국', '경기도 부천', 38, 127, NULL);
INSERT INTO `des_cls` VALUES ('2111', '한국', '경기도 시흥', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2112', '한국', '경기도 김포', 38, 127, NULL);
INSERT INTO `des_cls` VALUES ('2113', '한국', '경기도 안성', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2114', '한국', '경기도 오산', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2115', '한국', '경기도 의왕', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2116', '한국', '경기도 이천', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2117', '한국', '경기도 평택', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2118', '한국', '경기도 하남', 38, 127, NULL);
INSERT INTO `des_cls` VALUES ('2119', '한국', '경기도 화성', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2120', '한국', '경기도 여주', 37, 128, NULL);
INSERT INTO `des_cls` VALUES ('2121', '한국', '경기도 양평', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2122', '한국', '경기도 고양', 38, 127, NULL);
INSERT INTO `des_cls` VALUES ('2123', '한국', '경기도 구리', 38, 127, NULL);
INSERT INTO `des_cls` VALUES ('2124', '한국', '경기도 남양주', 38, 127, NULL);
INSERT INTO `des_cls` VALUES ('2125', '한국', '경기도 동두천', 38, 127, NULL);
INSERT INTO `des_cls` VALUES ('2126', '한국', '경기도 양주', 38, 127, NULL);
INSERT INTO `des_cls` VALUES ('2127', '한국', '경기도 의정부', 38, 127, NULL);
INSERT INTO `des_cls` VALUES ('2128', '한국', '경기도 파주', 38, 127, NULL);
INSERT INTO `des_cls` VALUES ('2129', '한국', '경기도 포천', 38, 127, NULL);
INSERT INTO `des_cls` VALUES ('2130', '한국', '경기도 연천', 38, 127, NULL);
INSERT INTO `des_cls` VALUES ('2131', '한국', '경기도 가평', 38, 128, NULL);
INSERT INTO `des_cls` VALUES ('2200', '한국', '강원도', 38, 128, NULL);
INSERT INTO `des_cls` VALUES ('2201', '한국', '강원도 춘천', 38, 128, NULL);
INSERT INTO `des_cls` VALUES ('2202', '한국', '강원도 원주', 37, 128, NULL);
INSERT INTO `des_cls` VALUES ('2203', '한국', '강원도 강릉', 38, 129, NULL);
INSERT INTO `des_cls` VALUES ('2204', '한국', '강원도 동해', 38, 129, NULL);
INSERT INTO `des_cls` VALUES ('2205', '한국', '강원도 태백', 37, 129, NULL);
INSERT INTO `des_cls` VALUES ('2206', '한국', '강원도 속초', 38, 129, NULL);
INSERT INTO `des_cls` VALUES ('2207', '한국', '강원도 삼척', 37, 129, NULL);
INSERT INTO `des_cls` VALUES ('2208', '한국', '강원도 홍천', 38, 128, NULL);
INSERT INTO `des_cls` VALUES ('2209', '한국', '강원도 횡성', 37, 128, NULL);
INSERT INTO `des_cls` VALUES ('2210', '한국', '강원도 영월', 37, 128, NULL);
INSERT INTO `des_cls` VALUES ('2211', '한국', '강원도 평창', 37, 128, NULL);
INSERT INTO `des_cls` VALUES ('2212', '한국', '강원도 정선', 37, 129, NULL);
INSERT INTO `des_cls` VALUES ('2213', '한국', '강원도 철원', 38, 127, NULL);
INSERT INTO `des_cls` VALUES ('2214', '한국', '강원도 화천', 38, 128, NULL);
INSERT INTO `des_cls` VALUES ('2215', '한국', '강원도 양구', 38, 128, NULL);
INSERT INTO `des_cls` VALUES ('2216', '한국', '강원도 인제', 38, 128, NULL);
INSERT INTO `des_cls` VALUES ('2217', '한국', '강원도 고성', 38, 128, NULL);
INSERT INTO `des_cls` VALUES ('2218', '한국', '강원도 양양', 38, 129, NULL);
INSERT INTO `des_cls` VALUES ('2300', '한국', '경상북도', 37, 129, NULL);
INSERT INTO `des_cls` VALUES ('2301', '한국', '경상북도 포항', 36, 129, NULL);
INSERT INTO `des_cls` VALUES ('2302', '한국', '경상북도 경주', 36, 129, NULL);
INSERT INTO `des_cls` VALUES ('2303', '한국', '경상북도 김천', 36, 128, NULL);
INSERT INTO `des_cls` VALUES ('2304', '한국', '경상북도 안동', 37, 129, NULL);
INSERT INTO `des_cls` VALUES ('2305', '한국', '경상북도 구미', 36, 128, NULL);
INSERT INTO `des_cls` VALUES ('2306', '한국', '경상북도 영주', 37, 129, NULL);
INSERT INTO `des_cls` VALUES ('2307', '한국', '경상북도 영천', 36, 129, NULL);
INSERT INTO `des_cls` VALUES ('2308', '한국', '경상북도 상주', 36, 128, NULL);
INSERT INTO `des_cls` VALUES ('2309', '한국', '경상북도 문경', 37, 128, NULL);
INSERT INTO `des_cls` VALUES ('2310', '한국', '경상북도 경산', 36, 129, NULL);
INSERT INTO `des_cls` VALUES ('2311', '한국', '경상북도 의성', 36, 129, NULL);
INSERT INTO `des_cls` VALUES ('2312', '한국', '경상북도 청송', 36, 129, NULL);
INSERT INTO `des_cls` VALUES ('2313', '한국', '경상북도 영양', 37, 129, NULL);
INSERT INTO `des_cls` VALUES ('2314', '한국', '경상북도 영덕', 36, 129, NULL);
INSERT INTO `des_cls` VALUES ('2315', '한국', '경상북도 청도', 36, 129, NULL);
INSERT INTO `des_cls` VALUES ('2316', '한국', '경상북도 고령', 36, 128, NULL);
INSERT INTO `des_cls` VALUES ('2317', '한국', '경상북도 성주', 36, 128, NULL);
INSERT INTO `des_cls` VALUES ('2318', '한국', '경상북도 칠곡', 36, 128, NULL);
INSERT INTO `des_cls` VALUES ('2319', '한국', '경상북도 예천', 37, 128, NULL);
INSERT INTO `des_cls` VALUES ('2320', '한국', '경상북도 봉화', 37, 129, NULL);
INSERT INTO `des_cls` VALUES ('2321', '한국', '경상북도 울진', 37, 129, NULL);
INSERT INTO `des_cls` VALUES ('2322', '한국', '경상북도 울릉도', 37, 131, NULL);
INSERT INTO `des_cls` VALUES ('2350', '한국', '경상남도', 35, 129, NULL);
INSERT INTO `des_cls` VALUES ('2351', '한국', '경상남도 창원', 35, 129, NULL);
INSERT INTO `des_cls` VALUES ('2352', '한국', '경상남도 김해', 35, 129, NULL);
INSERT INTO `des_cls` VALUES ('2353', '한국', '경상남도 진주', 35, 128, NULL);
INSERT INTO `des_cls` VALUES ('2354', '한국', '경상남도 양산', 35, 129, NULL);
INSERT INTO `des_cls` VALUES ('2355', '한국', '경상남도 거제', 35, 129, NULL);
INSERT INTO `des_cls` VALUES ('2356', '한국', '경상남도 통영', 35, 128, NULL);
INSERT INTO `des_cls` VALUES ('2357', '한국', '경상남도 사천', 35, 128, NULL);
INSERT INTO `des_cls` VALUES ('2358', '한국', '경상남도 밀양', 36, 129, NULL);
INSERT INTO `des_cls` VALUES ('2359', '한국', '경상남도 함안', 35, 128, NULL);
INSERT INTO `des_cls` VALUES ('2360', '한국', '경상남도 거창', 36, 128, NULL);
INSERT INTO `des_cls` VALUES ('2361', '한국', '경상남도 창녕', 36, 128, NULL);
INSERT INTO `des_cls` VALUES ('2362', '한국', '경상남도 고성', 35, 128, NULL);
INSERT INTO `des_cls` VALUES ('2363', '한국', '경상남도 하성', 35, 128, NULL);
INSERT INTO `des_cls` VALUES ('2364', '한국', '경상남도 합천', 36, 128, NULL);
INSERT INTO `des_cls` VALUES ('2365', '한국', '경상남도 남해', 35, 128, NULL);
INSERT INTO `des_cls` VALUES ('2366', '한국', '경상남도 함양', 36, 128, NULL);
INSERT INTO `des_cls` VALUES ('2367', '한국', '경상남도 산청', 35, 128, NULL);
INSERT INTO `des_cls` VALUES ('2368', '한국', '경상남도 의령', 35, 128, NULL);
INSERT INTO `des_cls` VALUES ('2400', '한국', '충청북도 ', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2401', '한국', '충청북도 충주', 37, 128, NULL);
INSERT INTO `des_cls` VALUES ('2402', '한국', '충청북도 제천', 37, 128, NULL);
INSERT INTO `des_cls` VALUES ('2403', '한국', '충청북도 보은', 36, 128, NULL);
INSERT INTO `des_cls` VALUES ('2404', '한국', '충청북도 옥천', 36, 128, NULL);
INSERT INTO `des_cls` VALUES ('2405', '한국', '충청북도 영동', 36, 128, NULL);
INSERT INTO `des_cls` VALUES ('2406', '한국', '충청북도 증평', 37, 128, NULL);
INSERT INTO `des_cls` VALUES ('2407', '한국', '충청북도 진천', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2408', '한국', '충청북도 괴산', 37, 128, NULL);
INSERT INTO `des_cls` VALUES ('2409', '한국', '충청북도 음성', 37, 128, NULL);
INSERT INTO `des_cls` VALUES ('2410', '한국', '충청북도 단양', 37, 128, NULL);
INSERT INTO `des_cls` VALUES ('2411', '한국', '충청북도 청주', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2450', '한국', '충청남도', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2451', '한국', '충청남도 공주', 36, 127, NULL);
INSERT INTO `des_cls` VALUES ('2452', '한국', '충청남도 보령', 36, 127, NULL);
INSERT INTO `des_cls` VALUES ('2453', '한국', '충청남도 아산', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2454', '한국', '충청남도 서산', 37, 126, NULL);
INSERT INTO `des_cls` VALUES ('2455', '한국', '충청남도 논산', 36, 127, NULL);
INSERT INTO `des_cls` VALUES ('2456', '한국', '충청남도 계룡', 36, 127, NULL);
INSERT INTO `des_cls` VALUES ('2457', '한국', '충청남도 당진', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2458', '한국', '충청남도 금산', 36, 127, NULL);
INSERT INTO `des_cls` VALUES ('2459', '한국', '충청남도 부여', 36, 127, NULL);
INSERT INTO `des_cls` VALUES ('2460', '한국', '충청남도 서천', 36, 127, NULL);
INSERT INTO `des_cls` VALUES ('2461', '한국', '충청남도 청양', 36, 127, NULL);
INSERT INTO `des_cls` VALUES ('2462', '한국', '충청남도 홍성', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2463', '한국', '충청남도 예산', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2464', '한국', '충청남도 태안', 37, 126, NULL);
INSERT INTO `des_cls` VALUES ('2465', '한국', '충청남도 천안', 37, 127, NULL);
INSERT INTO `des_cls` VALUES ('2500', '한국', '전라북도', 36, 127, NULL);
INSERT INTO `des_cls` VALUES ('2501', '한국', '전라북도 전주', 36, 127, NULL);
INSERT INTO `des_cls` VALUES ('2502', '한국', '전라북도 익산', 36, 127, NULL);
INSERT INTO `des_cls` VALUES ('2503', '한국', '전라북도 군산', 36, 127, NULL);
INSERT INTO `des_cls` VALUES ('2504', '한국', '전라북도 정읍', 36, 127, NULL);
INSERT INTO `des_cls` VALUES ('2505', '한국', '전라북도 김제', 36, 127, NULL);
INSERT INTO `des_cls` VALUES ('2506', '한국', '전라북도 남원', 35, 127, NULL);
INSERT INTO `des_cls` VALUES ('2507', '한국', '전라북도 완주', 36, 127, NULL);
INSERT INTO `des_cls` VALUES ('2508', '한국', '전라북도 고창', 35, 127, NULL);
INSERT INTO `des_cls` VALUES ('2509', '한국', '전라북도 부안', 36, 127, NULL);
INSERT INTO `des_cls` VALUES ('2510', '한국', '전라북도 임실', 36, 127, NULL);
INSERT INTO `des_cls` VALUES ('2511', '한국', '전라북도 순창', 35, 127, NULL);
INSERT INTO `des_cls` VALUES ('2512', '한국', '전라북도 진안', 36, 127, NULL);
INSERT INTO `des_cls` VALUES ('2513', '한국', '전라북도 무주', 36, 128, NULL);
INSERT INTO `des_cls` VALUES ('2514', '한국', '전라북도 장수', 36, 128, NULL);
INSERT INTO `des_cls` VALUES ('2550', '한국', '전라남도', 35, 126, NULL);
INSERT INTO `des_cls` VALUES ('2551', '한국', '전라남도 목포', 35, 126, NULL);
INSERT INTO `des_cls` VALUES ('2552', '한국', '전라남도 여수', 35, 128, NULL);
INSERT INTO `des_cls` VALUES ('2553', '한국', '전라남도 순천', 35, 127, NULL);
INSERT INTO `des_cls` VALUES ('2554', '한국', '전라남도 나주', 35, 127, NULL);
INSERT INTO `des_cls` VALUES ('2555', '한국', '전라남도 광양', 35, 128, NULL);
INSERT INTO `des_cls` VALUES ('2556', '한국', '전라남도 담양군', 35, 127, NULL);
INSERT INTO `des_cls` VALUES ('2557', '한국', '전라남도 곡성', 35, 127, NULL);
INSERT INTO `des_cls` VALUES ('2558', '한국', '전라남도 구례', 35, 127, NULL);
INSERT INTO `des_cls` VALUES ('2559', '한국', '전라남도 고흥', 35, 127, NULL);
INSERT INTO `des_cls` VALUES ('2560', '한국', '전라남도 보성', 35, 127, NULL);
INSERT INTO `des_cls` VALUES ('2561', '한국', '전라남도 화순', 35, 127, NULL);
INSERT INTO `des_cls` VALUES ('2562', '한국', '전라남도 장흥', 35, 127, NULL);
INSERT INTO `des_cls` VALUES ('2563', '한국', '전라남도 강진', 35, 127, NULL);
INSERT INTO `des_cls` VALUES ('2564', '한국', '전라남도 영암', 35, 127, NULL);
INSERT INTO `des_cls` VALUES ('2565', '한국', '전라남도 해남', 35, 127, NULL);
INSERT INTO `des_cls` VALUES ('2566', '한국', '전라남도 무안', 35, 126, NULL);
INSERT INTO `des_cls` VALUES ('2567', '한국', '전라남도 함평', 35, 127, NULL);
INSERT INTO `des_cls` VALUES ('2568', '한국', '전라남도 영광', 35, 127, NULL);
INSERT INTO `des_cls` VALUES ('2569', '한국', '전라남도 장성', 35, 127, NULL);
INSERT INTO `des_cls` VALUES ('2570', '한국', '전라남도 완도', 34, 127, NULL);
INSERT INTO `des_cls` VALUES ('2571', '한국', '전라남도 진도', 34, 126, NULL);
INSERT INTO `des_cls` VALUES ('2572', '한국', '전라남도 신안', 35, 126, NULL);

-- ----------------------------
-- Table structure for destination
-- ----------------------------
DROP TABLE IF EXISTS `destination`;
CREATE TABLE `destination`  (
  `des_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `d_cls_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `des_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `des_addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `des_lat` double NULL DEFAULT NULL,
  `des_lng` double NULL DEFAULT NULL,
  `des_cont` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `des_like` int(11) NULL DEFAULT 0 COMMENT '0-5',
  `d_cls_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`des_code`) USING BTREE,
  INDEX `FK_DES_CLS_TO_DESTINATION_1`(`d_cls_code`) USING BTREE,
  INDEX `DES_CODE`(`des_code`) USING BTREE,
  INDEX `FK4visnp9cqnvchrnitp765531u`(`d_cls_country`) USING BTREE,
  CONSTRAINT `FK4visnp9cqnvchrnitp765531u` FOREIGN KEY (`d_cls_country`) REFERENCES `des_cls` (`d_cls_code`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_DES_CLS_TO_DESTINATION_1` FOREIGN KEY (`d_cls_code`) REFERENCES `des_cls` (`d_cls_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of destination
-- ----------------------------
INSERT INTO `destination` VALUES ('200-000-000', '2401', '활옥동굴', '목벌안길 26', 36.961536, 128.006986, '투명카약과 신비로운 동굴 탐험이 가능한 충주에 위치한 활옥동굴!', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-001', '2401', '고구려천문과학관', '묘곡내동길 100', 37.040076, 127.848406, '2008년부터 시작하여 최첨단 장비를 갖고 있는 고구려과학관!', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-002', '2401', '충주호', '지등로 882', 36.959927, 128.066659, '충주호수에서 유람선 여행', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-003', '2401', '충주 탑평리 칠층석탑', '탑정안길 6', 37.015844, 127.866755, '국보 제6호를 보호중인 중앙탑!', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-004', '2401', '중원고구려비', '용전리 280-11', 37.028043, 127.848535, '2008년부터 시작하여 최첨단 장비를 갖고 있는 고구려과학관!', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-005', '2401', '충주라바랜드', '남한강로 30', 36.989295, 127.907831, '아이들과 산책하기 딱 좋은 충주에 위치한 라바랜드!', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-006', '2401', '충주댐', '조동리 산 180-11', 37.006094, 127.992639, '벚꽃야경으로 유명한 충주댐 벚꽃길!', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-007', '2401', '호암지 생태공원', '호암동 산 124-16', 36.9599721, 127.9228333, '충주에 위치한 호암지 생태공원으로 가을에 반딧불이가 예술인 공원!', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-008', '2401', '수안보 온천 관광특구', '주정산로 12', 36.8469494, 127.9908385, '우리나라 최초의 자연 용출 온천수! 충주 수안보온천!', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-009', '2401', '계명산 캠핑장', '용탄동 410', 37.0063073, 127.9589343, '숲의 에너지로 힐링하고 싶으신 분들이 찾는 곳! 충주 계명산 캠핑장!', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-010', '2101', '수원화성', '팔달구 정조로 825', 37.2871202, 127.0119379, '수원 화성행궁은 정조가 능원에 참배할 때 머물던 임시 처소로서, 평소에는 부사 또는 유수가 집무하던 곳으로 활용되던 행궁이다. 1789년 수원 신읍치 건설 후 팔달산 동쪽 기슭에 건립되었다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-011', '2101', '광교호수공원', '영통구 하동 광교호수로 102', 37.2830911, 127.0659215, '광교호수공원은  영통구 하동 일대에 위치한 공원이다. 매년 300 만명 이상이 방문한다. 농업을 위해 만들어둔 원천호수와 신대호수를 광교신도시 개발에 맞추어 공원으로 정비했다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-012', '2101', '방화수류정', '팔달구 수원천로392번길 44-6', 37.2875289, 127.0180362, '수원 방화수류정은  팔달구 매향동에 있는 조선시대의 건축물이다. 2011년 3월 3일 대한민국의 보물 제1709호로 지정되었다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-013', '2101', '팔달문', '팔달구 정조로 780', 37.2775525, 127.0167348, '팔달문은 수원 화성의 남문이다. 1964년 9월 3일 대한민국의 보물 제402호로 지정되었다. 문루의 규모는 높이 9m, 너비 25m로, 누상에 종이 걸려 있다. 수원 화성은 정조 18년에 이궁으로 축성되었다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-014', '2101', '화홍문', '팔달구 북수동 33-4', 37.28746, 127.0176056, '강 다리 위의 18세기 성곽을 보호하는 수문으로, 아치 7개가 있고 야간 조명이 설치되어 있습니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-015', '2101', '장안문', '팔달구 장안동 정조로 910', 37.2888038, 127.0142055, '18세기 후반의 웅장한 성문으로 거대한 석재 기단부 위에 곡선 지붕을 얹은 형태입니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-016', '2101', '화서문', '팔달구 장안동 334', 37.285556, 127.0096641, '수원 화서문는  팔달구, 수원 화성의 서문이다. 1964년 9월 3일 대한민국의 보물 제403호로 지정되었다. 좌우 성벽에 연결되는 돌로 된 기부에 홍예문을 두어 그 위에 단층의 문루를 세웠다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-017', '2101', '월화원', '팔달구 동수원로 399', 37.2652416, 127.0377224, '2006년 중국 광둥성과 경기도간 우호교류 협력 체결에 따라 이를 기념하여 기존 효원공원 안에 개장한 중국 정원으로, 중국 광동식으로 꾸며진 전통정원과 건축물들을 볼 수 있다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-018', '2101', '만석공원', '송죽동 434', 37.3002941, 126.9984513, '만석공원은  장안구 송죽동 일대에 위치한 공원이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-019', '2101', '수원화성박물관', '팔달구 창룡대로 21', 37.2826917, 127.018956, '수원화성박물관은  팔달구 소재의 박물관이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-020', '2302', '불국사', '불국로 385', 35.7900971, 129.3320924, '유네스코 세계문화유산', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-021', '2302', '동궁과 월지', '원화로 102', 35.8341593, 129.2265835, '경주 월성의 별궁 터', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-022', '2302', '석굴암', '석굴로 238', 35.79515, 129.3503795, '불국사 소속 호국암자', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-023', '2302', '첨성대', '인왕동 839-1', 35.8346828, 129.2190631, '세계에서 현존하는 가장 오래된 천문대', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-024', '2302', '경주월드', '보문로 544', 35.8363095, 129.2830502, '경주시의 테마파크', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-025', '2302', '경주교촌마을', '교동 교촌길 39-2', 35.8295398, 129.2148298, '신라문화 속 조선문화가 공존하는 특별한 곳', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-026', '2302', '문무대왕릉', '문무대왕면 봉길리 26', 35.7381122, 129.4868089, '신라 문무대왕의 해중왕릉', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-027', '2302', '경주 동궁원', '북군동 보문로 74-14', 35.8507088, 129.2645067, '경주시의 식물원', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-028', '2302', '경주양동마을', '강동면 양동마을안길 91', 36.002445, 129.2550876, '양반 집성촌. 유네스코 세계문화유산', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-029', '2302', '국립경주박물관', '일정로 186', 35.8293965, 129.2279056, '국립중앙박물관의 소속기관', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-030', '2004', '이월드', '달서구 두류공원로 200', 35.8533511, 128.5638836, '유럽식 도시공원, 이월드(구 우방타워랜드)', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-031', '2004', '송해공원', '달성군 옥포읍 기세리 306', 35.7804052, 128.4801515, '송해공원은 달성군 명예군민인 방송인 송해 선생의 이름을 따 명칭한 곳', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-032', '2004', '대구아쿠아리움', '동구 동부로 149', 35.8778124, 128.6284527, '새로움을 창조하는 대구아쿠아리움은 매일매일 색다른 즐거움을\r\n느낄 수 있고, 체험과 동물들과의 교감을 통해 특별한 경험과 잊지 못할 감동을 선사합니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-033', '2004', '83타워', '달서구 두류공원로 200', 35.8533043, 35.8533043, '대구의 랜드마크! 83타워에서 최고의 전망과 멋진 데이트 소중한 사람들과 아름다운 추억을 남겨보세요.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-034', '2004', '국립대구박물관', '수성구 청호로 321', 35.8460881, 128.6385098, '1994년 개관한 국립대구박물관은 대구와 경상북도의 문화유산을 체계적으로 보존, 연구, 전시, 교육하는 종합문화기관입니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-035', '2004', '국채보상운동기념공원', '중구 국채보상로 670', 35.8689974, 128.6017305, '지금의 명칭은 한말에 고종 황제로부터 천민에 이르기까지 담배를 끊고 금가락지를 모아 일본에 진 빚을 갚자며 벌인 국채보상운동의 정신을 기리고, IMF(국제통화기금)라는 외환위기를 맞아 신국채보상운동으로 이를 극복하자는 뜻을 담고 있다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-036', '2004', '네이처파크', '달성군 가창면 가창로 891', 35.7878935, 128.6359076, '12만평 부지의 식물원 내 초대형 글라스하우스 동물원과 방사형 야외 동물원으로 구성된 네이처파크는 50여종, 300마리 이상의 동물. 350여종의 수목, 100여종 이상의 다양한 꽃들이 공존하는 전국 최초 교감형 생태 동물원 입니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-037', '2004', '삼국유사테마파크', '군위군 의흥면 일연테마로 100', 36.1614559, 128.6968856, '삼국유사 테마파크는 삼국유사(三國遺事) 속 콘텐츠를 시각화한 다양한 전시‧조형물을 감상할 수 있다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-038', '2004', '앞산해넘이전망대', '남구 대명동 1501-2', 35.831792, 128.565553, '일몰과 함께 대구의 경관을 한눈에 담을 수 있는‘앞산 해넘이전망대’는 남구의 앞산빨래터공원에 위치한다. 앞산빨래터공원의 역사와 상징을 담아 전망대 디자인은 빨래 짜는 모습을 형상화했다. 전망대를 향하는 경사로는 앞산의 전경과 주변 경관을 볼 수 있어 산책하기 좋다.\r\n[네이버 지식백과] 앞산 해넘이전망대 (대한민국 구석구석, 한국관광공사)\r\n\r\n', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-039', '2004', '워터파크 스파밸리', '가창면 가창로 891', 35.7880646, 128.635446, '대구 도심에서 많이 떨어져 있지 않아 어렵지 않게 찾을 수 있는 곳이다.[1] 대구광역시와 경상북도 경산시에서 가장 규모가 큰 워터파크 이자 대구광역시에서 유일무이 하게 야외 시설, 실내 시설을 모두 갖춘 워터파크', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-040', '2010', '삼성혈', '삼성로 22', 33.5047027, 126.529358, '3개의 혈을 향해 마치 주변 나무들이 우거져 있는 곳', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-041', '2010', '성산일출봉', '성산읍 성산리 1', 33.458056, 126.9425, '푸른 바다 사이에 우뚝 솟은 성채와 같은 모양, 봉우리 정상에 있는 거대한 사발 모양의 분화구, 그리고 그 위에서 맞이하는 일출의 장관 때문에 성산일출봉은 많은 사람들의 탄성을 자아내는 곳', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-042', '2010', '만장굴', '구좌읍 만장굴길 182', 33.5282463, 126.7702874, '1962년 12월 7일 김녕사굴과 함께 천연기념물로 지정되었다. 제주에는 화산 용암의 침하운동으로 생성된 천연동굴이 많은데, 만장굴도 그 중의 하나로 동굴 내부의 규모는 세계적이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-043', '2010', '천지연폭포', '천제연로 132', 33.246944, 126.554417, '중문관광단지 부근, 천제교 아래쪽에 상 ·중 ·하의 3단 폭포로 이어져 있다. 천제연 제1폭포는 길이 22 m, 수심 21 m의 소를 이루며, 이 물이 흘러내려 다시 제2 ·제3의 폭포를 만든다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-044', '2010', '사려니 숲길', '조천읍 교래리 산137-1', 33.4273021, 126.6616589, '비자림로에서 사려니오름까지 이어지는 숲길.  청정한 공기를 마시며 이 숲길을 걸으면 스트레스 해소에 좋고 장과 심폐 기능이 향상된다고 알려져 있어 많은 사람들이 찾는 명소', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-045', '2010', '스누피가든', '구좌읍 금백조로 930', 33.4441972, 126.7783058, '스누피 가든 하우스는 감정에 솔직하고 개성있는 피너츠 친구들을 만나 그들 간의 상호 관계를 통한 공감과 위로의 메세지를 얻는 곳', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-046', '2010', '비밀의 숲', '구좌읍 송당리 2173', 33.4535329, 126.7557039, '울창한 나무로 둘러싸여 신비한 분위기를 나타내고 특유의 이국적인 분위기가 있는 곳', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-047', '2010', '약천사', '이어도로 293-28', 33.2461544, 126.4494597, '사찰 이름은 봄부터 가을까지 물이 솟는 샘물과 사철 흐르는 약수가 있는 연못 때문에 붙여졌다. 1996년 단일 사찰로는 동양 최대의 규모를 자랑하는 대적광전이 세워져 유명해졌다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-048', '2010', '신창풍차해안도로', '한경면 신창리 1481-23', 33.3433637, 126.173963, '제주도 서쪽 끝을 따라 연결된 신창 풍차 해안도로는 해상풍력단지가 조성되어 있어 해안도로를 따라 줄지어 서 있는 풍차를 만날 수 있다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-049', '2010', '도두동 무지개해안도로', '도두일동 1734', 33.509258, 126.4719749, '파란 제주 하늘과 그 아래로 끝없이 펼쳐진 수평선을 마주할 수 있는 용담이호해안도로', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-050', '2010', '큰엉해안경승지', '남원읍 태위로 522-17', 33.2733222, 126.7037752, '해안절벽 위로 2㎞에 걸친 아름다운 산책로가 만들어져 있고 주변에 부드러운 잔디가 자라 있다. 잔디밭의 끝에 서면 시커멓고 까마득한 기암절벽 아래로 탁트인 바다가 시원하게 펼쳐진다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-051', '2001', '서울식물원', '마곡동로 161 서울식물원', 37.5694332, 126.8350132, '서울식물원은 세계 12개 도시 식물과 식물 문화를 소개하고 도시의 생태감수성을 높이기 위해 서울에 남은 마지막 개발지 마곡에 조성되었다. 식물원과 공원을 결합한 이른바 ‘보타닉 공원’으로서 면적은 축구장 70개 크기에 달한다.\r\n[네이버 지식백과] 서울식물원 (대한민국 구석구석, 한국관광공사)\r\n\r\n', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-052', '2001', '롯데월드 어드벤처', '올림픽로 240', 37.5111158, 127.098167, '365일 즐거움이 가득한 공간, 롯데월드!', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-053', '2001', '국립중앙박물관', '서빙고로 137 국립중앙박물관', 37.5238506, 126.9804702, '국립중앙박물관 전시실에는 아주 먼 옛날부터 가까운 옛날에 이르기까지 그리고 세계 유산을 포함하여 수많은 사람들이 남긴 발자취와 전통이 여러분을 기다리고 있습니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-054', '2001', '코엑스아쿠아리움', '영동대로 513', 37.513131, 127.0582827, '다양한 이벤트와 \'아쿠아리스트\' 직업 체험까지,\r\n\r\n코엑스 아쿠아리움에서는 다양하고 신나는 액티비티가 여러분을 기다리고 있습니다.\r\n\r\n가족, 커플 등이 함께 즐길 수 있는 코엑스 아쿠아리움에서 진행되는 이벤트를 소개합니다!', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-055', '2001', '국립고궁박물관', '효자로 12 국립고궁박물관', 37.5766084, 126.974951, '전시실은 조선의 국왕실, 조선의 궁궐실, 왕실의 생활실, 대한제국실, 궁중서화실, 왕실의례실, 과학문화실로 구성되어 궁중 유물을 전시하고 있다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-056', '2001', '창덕궁', '율곡로 99', 37.5794309, 126.9910426, '창덕궁(昌德宮)은 대한민국 서울특별시의 북악산 왼쪽 봉우리인 응봉자락에 자리 잡고 있는 조선 시대 궁궐로 동쪽으로 창경궁과 맞닿아 있다. 경복궁의 동쪽에 있어서 조선 시대에는 창경궁과 더불어 동궐(東闕)이라 불렀다.[2] 창덕궁은 비교적 원형이 잘 보존되어 있는 중요한 고궁이며, 특히 창덕궁 후원은 한국의 유일한 궁궐후원이라는 점과 한국의 정원을 대표한다는 점에서 그 가치가 높다.[3] 1997년에 유네스코가 지정한 세계문화유산으로 등록되었다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-057', '2001', '여의도 한강공원', '여의동로 330', 37.5284304, 126.9330781, '여의도한강공원은 정치, 금융, 언론의 중심지인 여의도에 자리하고 지하철, 버스 등 대중교통으로 접근성이 좋아 직장인과 일반시민들이 즐겨찾는 명소이자 봄꽃축제, 세계불꽃축제, 각종 공연 및 마라톤행사 등 다양한 행사가 이어져 볼거리와 즐길거리가 풍부한 휴식공간입니다.\r\n\r\n', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-058', '2001', '서울역사박물관', '새문안로 55', 37.5704837, 126.9705674, '서울역사박물관은 조선시대부터 현재에 이르기까지의 서울의 역사와 문화를 정리하여 보여주는 서울도시역사박물관입니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-059', '2001', '북촌 한옥마을', '계동길 37', 37.5814696, 126.9849519, '총 2,297동의 건물이 있는데, 이 가운데 1,408동이 한옥이고 나머지는 일반 건물이다. 북촌 거리에는 북촌양반생활문화전시관과 북촌 한옥촌 상징조형물을 설치되어 있고, 옛 선조의 생활모습을 구경할 수 있는 가회동 전통 마을축제가 열린다. 주변에 경복궁 창덕궁 덕수궁 금원 삼청공원 국립중앙박물관 등의 관광지가 있다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-060', '2002', '인천대공원', '무네미로 236', 37.459244, 126.7522197, '인천대공원은 인천광역시에서 가장 큰 공원이며 인천광역시 인천대공원사업소가 운영을 담당하고 있다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-061', '2002', '송도 센트럴파크', '송도동 컨벤시아대로 160', 37.3925126, 126.6393808, '연수구 송도국제도시 국제업무지구에 위치한 대형 공원이며, 센트럴공원으로도 불린다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-062', '2002', '자유공원', '자유공원남로 25', 37.4754315, 126.6217678, '대한민국 최초의 서구식 공원이며, 인천역과 차이나타운이 가까이 있다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-063', '2002', '수도국산 달동네 박물관', '솔빛로 51', 37.4779185, 126.6392528, '수도국산 달동네 박물관은 인천광역시 동구 송현근린공원 내에 위치한 박물관으로 1960 ~ 1970년대의 수도국산 달동네 서민생활상을 재현하였다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-064', '2002', '월미도', '월미로 131-31', 37.4754003, 126.5978148, '월미도는 월미산을 중심으로 남북으로 긴 삼각형 모양을 이루었으나 지금은 간척되어 육지가 된 인천 앞바다의 육계도이다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-065', '2002', '인천 차이나타운', '차이나타운로26번길 12-17', 37.475589, 126.6178849, '인천 차이나타운은 인천역 앞에 있는 차이나타운이다. 중국 음식점이나 기념품 등을 파는 상점이 많은 편이다. 화교중산학교가 있다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-066', '2002', '인천상륙작전기념관', '청량로 138', 37.4196092, 126.6542628, '인천상륙작전기념관은 6·25 전쟁 때 연합군 상륙작전을 기리기 위하여 세운 기념관으로, 인천광역시 연수구 옥련동에 있다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-067', '2002', '신포국제시장', '신포동 6-6', 37.4713875, 126.6272078, '신포국제시장은 인천광역시 중구 신포동에 있는 시장이다. 원래 신포시장으로 불렸으나 2010년 3월 중소기업청의 문화관광시장 지원대상으로 선정되어 이름을 바꾸었다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-068', '2002', '인천대교', '대교고속도로 3', 37.4136893, 126.5665206, '인천대교는 대한민국 인천광역시에 있는 다리로, 중구 운서동 영종 나들목과 연수구 송도동 연수 분기점을 연결한다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-069', '2002', '송월동 동화마을', '송월동3가 자유공원서로45번길', 37.4776611, 126.6205827, '송월동 동화마을은 인천광역시 중구 송월동에 있는 동화를 주제로 한 마을이다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-070', '2003', '국립중앙과학관', '대덕대로 481 국립중앙과학관', 37.5822617, 126.9975593, '생물학, 물리학, 기술 관련 체험형 전시가 이뤄지며 천문관이 있는 어린이 박물관입니다.\r\n\r\n생물학, 물리학, 기술 관련 체험형 전시가 이뤄지며 천문관이 있는 어린이 박물관입니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-071', '2003', '한밭수목원', '둔산대로 169', 36.3683723, 127.3880555, '다양한 종의 나무와 식물을 볼 수 있는 도심 속 공원으로 놀이 시설과 큰 연못, 산책로가 있습니다.\r\n\r\n다양한 종의 나무와 식물을 볼 수 있는 도심 속 공원으로 놀이 시설과 큰 연못, 산책로가 있습', 10, NULL);
INSERT INTO `destination` VALUES ('200-000-072', '2003', '장태산자연휴양림', '장안로 461', 36.2187201, 127.3401569, '\r\n산책로, 휴양객용 통나무집, 높이 솟은 나무 사이를 걷는 구름다리가 있는 숲입니다.', 11, NULL);
INSERT INTO `destination` VALUES ('200-000-073', '2003', '대전 엑스포 아쿠아리움', '엑스포로 1 대전 신세계 Art&Science 지하 1층', 36.3749407, 127.3807957, '국내 최초 신화 속 바다를 담은 대전 엑스포 아쿠아리움\r\n살아있는 생물과 미디어아트 콜라보 복합문화공간\r\n신개념 아쿠아리움', 12, NULL);
INSERT INTO `destination` VALUES ('200-000-074', '2003', '대전오월드', '사정공원로 70', 36.2886167, 127.3969124, '도심 속에서 즐기는 놀랍고 즐거운 세상!!\r\n\r\n주랜드+플라워랜드+조이랜드+버드랜드+나이트유니버스의\r\n종합테마파크\r\n\r\n사랑스러운 동물들과 재미 넘치는 놀이기구가 가득한 대규모 테마파크 오월드로 초대합니다~!!!\r\n\r\n오월드에 아득한 어둠이 내려 앉으면 파란 달이 뜨는 세상으로 통하는 차원의 문이 열린다!!\r\n\r\n밤이 되면 깨어나는 환상의 축제! 마법의 세계에 빠져봐!', 30, NULL);
INSERT INTO `destination` VALUES ('200-000-075', '2003', '상소동 산림욕장', '산내로 714', 36.2352607, 127.4712365, '가족이나 연인 등 각계각층에서 가족의 건강이나 여러 가지 염원을 담은 돌탑을 쌓을 수 있는 공간이 있어 뜻깊은 기회를 제공하여 주기도 하고, 봄부터 가을까지 수많은 야생화를 감상할 수 있으며 가벼운 마음으로 찾아와 산책과 등산과 휴양을 즐길 수 있는 곳이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-076', '2003', '대전광역시어린이회관', '드컵대로 32 동관 1층', 36.3652077, 127.3261285, '대전 유성구 월드컵대로 32, 월드컵경기장 동관 1층에 실내5,383㎡, 야외2,250㎡ 규모로 설립된 대전광역시어린이회관은 전체면적의 40%이상이 다양한 체험공간으로 꾸며져 있습니다. 어린이들의 꿈과 희망을 키워가는 체험형 학습, 놀이 중심의 복합 문화 시설로 만12세 이하의 어린이를 대상으로 합니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-077', '2003', '대전시민천문대', '과학로 213-48 대전시민천문대', 36.3815644, 127.353895, '대전광역시가 건립하여 2001년 5월 3일 개관한 시민천문대이다. 시민천문대란 천문학자들이 연구를 목적으로 사용하는 천문대와는 달리 일반인이 자유롭게 별을 볼 수 있는 곳으로 주로 지방자치단체에서 건립하는 천문대를 말하는데, 대전시민천문대는 국내에서 최초로 세워진 시민천문대이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-078', '2003', '천연기념물센터', '유등로 927 천연기념물센터', 36.3676596, 127.3925611, '천연기념물센터 전시관에는 자연유산에 대한 연구 결과물인 공룡알·발자국 등의 화석, 반달가슴곰, 수달, 독수리 등의 동물 박제 표본, 존도리 소나무 등의 식물 표본 등을 전시하여 전문연구자와 청소년의 학습에 도움을 주고 있으며, 체험 공간, 검색 키오스크, 영상실 등을 통하여 독창적인 체험학습 기회를 제공하고 있습니다.\r\n\r\n', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-079', '2003', '대전시립박물관', '도안대로 398', 36.3364439, 127.335137, '대전시립박물관은 대전광역시 내의 문화유산의 수집과 보존, 전시 및 교육, 대전의 역사와 문화연구를 위하여 대전광역시청 산하에 설치된 박물관이다. 박물관장은 지방행정사무관이나 지방학예연구관으로 보한다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-080', '2005', '광주패밀리랜드', '우치로 677 광주패밀리랜드', 35.223688, 126.891617, '광주패밀리랜드는 광주광역시 북구 우치로에 위치한 호남 최대 규모의 놀이공원으로서 놀이기구 24종, 국내 최고 높이 관람차 \'빅아이\', 호남 최장 슬로프의 눈썰매장, 최신형 카라반 캠핑장, 각종 공연/오락/체험시설 등을 갖춘 최고의 테마파크입니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-081', '2005', '펭귄마을', '천변좌로446번길 7', 35.140536, 126.9175563, '전남 광주 양림동은 과거로 떠나는 타임머신 여행지다. 광주 근현대사 여행지로 인기가 높은 이곳엔 옛 추억을 불러일으키는 또 다른 시간 여행지가 있다. 이름도 재밌는 펭귄마을. 비록 펭귄은 살지 않지만 그보다 더 눈길을 끄는 잡다한 볼거리들이 가득하다. 시간 여행 속 색다른 여행지로 떠오르는 곳이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-082', '2005', '국립광주과학관', '첨단과기로 235', 35.2296488, 126.8500641, '국립광주과학관은 정부의 2003년 과학관 육성계획에 따라 추진 설립되었다. 광주 첨단산업단지에 조성된 광주과학관은 빛과 과학과 예술에 특화된 과학관으로서 우주선 모양의 건물 외형에 미래를 향한 꿈과 희망을 담았으며, 체험 중심 전시물들로 주로 구성되어 관람객들이 오감으로 체험하면서 상상력과 창의력을 키우고 미래지향적 사고를 키우고 과학에 대한 이해와 호기심을 충족할 수 있다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-083', '2005', '우치공원 동물원', '우치로 677', 35.223688, 126.891617, '광주 우치공원 내에 위치한 동물원이다. 국내 멸종 위기 동물인 반달가슴곰, 원앙, 수달 등을 보호·연구해 나가고 있으며, 이를 바탕으로 다양한 교육 프로그램을 운영하여 시민에게 다양한 정보를 제공한다. 2015년 신원숭이사, 해양동물사, 재규어사, 파충류사, 소맹수 및 무플론사를 리모델링하여 동물들을 위한 쾌적한 환경을 마련하였다. 입장요금은 무료이며, 가족과 함께 방문하기 좋은 나들이 명소이다.\r\n\r\n', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-084', '2005', '광주시립수목원', '도동길 142', 35.0900219, 126.8825582, '\r\n남구 양과동에 자리한 광주시립수목원은 망고·파파야 등 열대식물을 볼 수 있는 전시온실과 우리나라 전통의 멋을 느낄 수 있는 한국정원, 아이들이 자유롭게 마음껏 뛰어놀 수 있는 잔디광장, 초화원‧오감정원·관목원 등 주제정원 등이 있어 계절마다 변화된 모습을 볼 수 있다.\r\n\r\n', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-085', '2005', '국립광주박물관', '하서로 110', 35.1887107, 126.8835323, '총면적 80,444㎡(24,334평)에 지상 2층, 지하 4층의 누각 형태를 본뜬 국립광주박물관은 국보·보물 등의 지정 문화재를 포함하여 160,000여 점의 유물을 소장하고 있다. 전시뿐만 아니라 다채로운 맞춤형 교육·체험프로그램과 문화행사를 연중 운영하고 있다.\r\n박물관은 선사ㆍ고대문화실, 농경문화실, 도자실, 불교미술실, 서화실, 신안해저문화재실, 중앙홀의 7개 상설전시실과 야외전시장이 있다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-086', '2005', '5.18기념공원', '상무민주로 61', 35.1556848, 126.8572119, '5.18기념공원은 1980년 광주 5.18민주화운동을 기념하기 위해 조성한 공원이다. 5.18민주화운동이 전개될 당시 군사시설이었던 상무대가 이전하자 정부가 공원 부지를 제공하였다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-087', '2005', '광주사직공원', '사직길 49', 35.1416389, 126.9114294, '사직공원의 터는 원래 사직단이 있던 곳이다. 사직단이란 삼국시대부터 나라의 안녕과 풍년을 기원하여 땅의 신과 곡식의 신에게 제사를 올리는 곳이다. 이 장소는 조선 태조 3년에 토지의 신과 곡식의 신에게 제사를 지냈던 사직단을 설치한 것으로부터 유래되었다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-088', '2005', '광주역사민속박물관', '서하로 48-25', 35.1837944, 126.8881762, '광주역사민속박물관은 생활문화의 변화로 사라져가는 민속자료의 수집, 민속문화 원형의 발굴과 보존, 민속문화의 전승을 위한 전시장의 필요성 등이 증대됨에 따라 설립한 박물관이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-089', '2005', '광주시민의 숲', '추암로 190', 35.2342843, 126.8672499, '광주시민의 숲은 영산강을 따라 오룡동에서 월출동에 걸쳐 있다. 광주 첨단지구로 향하는 첨단대교를 건너면 다리 오른편 끝부분에 ‘광주시민의 숲’이라고 쓴 커다란 간판이 보이는데, 여기서부터 영산강 상류 쪽으로 숲길이 조성되어 있다. 대구시와 맺은 ‘달빛동맹’의 상징으로 대구시와 광주시에 각각 시민의 숲을 조성했다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-090', '2006', '감천문화마을', '감내2로 203', 35.0973904, 129.0105924, '다채로운 주택, 벽화, 상점, 카페 등이 있는 그림 같은 명소입니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-091', '2006', '해동용궁사', '용궁길 86', 35.1883491, 129.2233197, '해동용궁사는 부산광역시 기장군 기장읍 시랑리에 있는 절이다. 바다와 가장 가까운 사찰로 알려져 있고, 대한민국의 관음성지의 하나다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-092', '2006', '태종대유원지', '전망로 24', 35.05307, 129.0872, '태종대는 부산광역시 영도구 동삼동에 있는 명승지이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-093', '2006', '송도해상케이블카 송도베이스테이션', '송도해변로 171', 35.0763878, 129.0236192, '오늘날 유리 바닥으로 된 케이블카를 타고 주변 바다와 산 풍경을 감상할 수 있는 케이블카 정류장입니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-094', '2006', '용두산공원', '용두산길 37-55', 35.1006536, 129.0326226, '용두산공원은 부산광역시 중구에 있는 공원으로 부산시설공단에서 관리하고 있다. 용두산으로 불리는 언덕이 공원이고, 정상에는 다이아몬드 타워가 있다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-095', '2006', '흰여울문화마을', '영선동4가 1043', 35.0782798, 129.0453198, '재개발된 예술적인 문화 마을로 좁은 골목, 거리 벽화, 해안 산책로가 있습니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-096', '2006', '해운대 블루라인파크', '청사포로 116 청사포정거장 2F', 35.1613733, 129.1918758, '해운대 블루라인파크는 해운대 동해남부선 폐선 구간을 활용한 부산광역시 해운대구의 공원이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-097', '2006', '부산 엑스 더 스카이', '달맞이길 30', 35.159848, 129.1697909, '한국에서 서울스카이 다음으로 2번째로 높은 전망대이며 랜드마크 타워 98층~100층에 위치하고 있다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-098', '2006', '다이아몬드타워 (부산타워)', '용두산길 37-55', 35.1011934, 129.0323676, '다이아몬드 타워는 부산광역시 중구 광복동의 용두산공원에 세워진 부산을 상징하는 관광탑으로 1973년 10월 11일에 완공되었다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-099', '2006', '광안리해수욕장', '광안2동', 35.1531696, 129.118666, '이 곳에는 300여개의 고급 레스토랑, 카페, 횟집 등이 있고, 활어시장과 민락수변공원이 해수욕장 바로 옆에 있다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-100', '2006', '국제시장', '국제시장2길 25', 35.1470892, 129.0219095, '국제시장은 부산광역시 중구 신창동 1~4가 일대에 있는 재래시장이다. 오전 9시 30분부터 오후 7시 30분까지 문을 열며, 첫째 주, 셋째 주 일요일은 쉰다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-101', '2007', '대왕암공원', '등대로 95', 35.4923951, 129.4395603, '대왕암공원은 울산광역시 동구 일산동 해안에 있는 공원이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-102', '2007', '태화강 국가정원', '태화강 국가정원길 154', 35.54777, 129.2962236, '태화강 국가정원은 울산광역시 중구에 위치한 국가정원이다. 태화강 일부 구역 근처에 만들어 졌으며 생태정원, 대나무정원, 계절정원 등과 같은 시설이 있다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-103', '2007', '울산대공원', '대공원로 94', 35.530972, 129.2939697, '울산대공원은 울산광역시 남구 대공원로 94에 있으며, 옥동과 신정동에 걸쳐 있는 도심 공원이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-104', '2007', '태화강 십리 대숲', '태화동 650-26', 35.5461188, 129.2956365, '태화강 십리대숲은 울산광역시 중구 태화강 국가정원 내에 위치한 대나무숲이다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-105', '2007', '간월재', '상북면 등억알프스리', 35.5477127, 129.0452648, '간월재는 넓이가 무려 33만 ㎡(약 10만 평)에 이른다. 산 위에 끝없이 펼쳐진 평원이 온통 억새로 뒤덮였다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-106', '2007', '장생포 고래문화마을', '장생포고래로 271-1', 35.5058099, 129.3826032, '고래문화마을은 국내 유일의 고래 테마 문화관광 시설로 포경 전성기 장생포 마을 주민들의 실제 생활상을 그대로 복원하여 기존에 운영 중인 고래 관광 시설과 연계', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-107', '2007', '일산해수욕장', '일산동', 35.4959363, 129.4310005, '울산의 대표적인 해수욕장으로, 진하해수욕장과 함께 울산의 양대 해수욕장.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-108', '2007', '울산대교 전망대', '대송동 봉수로 155-1', 35.5017615, 129.4061609, '울산대교전망대는 삼면이 바다로 둘러싸인 동구의 해발 140m 지점에 위치한다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-109', '2007', '간절곶', '서생면 대송리', 35.3591413, 129.3617978, '새해 해돋이 축제로 유명한 바다로 뻗어 나온 육지로 등대와 거대한 우체통이 있습니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-110', '2007', '울주 대곡리 반구대 암각화', '언양읍 반구대안길 285', 35.6039396, 129.1784121, '울주 대곡리 반구대 암각화는 울산광역시 울주군 언양읍에 위치한 암각화이다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-111', '2102', '율동공원', '율동 399', 37.3774802, 127.1514852, '율동공원은 경기도 성남시 분당구 문정로 145에 위치한 공원으로 율동과 분당동을 경계로 하고 있다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-112', '2102', '분당 중앙공원', '성남대로 550', 37.3770785, 127.1237901, '성남중앙공원은 경기도 성남시 분당구 수내동에 위치한 공원이다. 1994년 7월 31일에 개원했다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-113', '2102', '성남아트센터', '성남대로 808', 37.4029976, 127.1314306, '성남아트센터는 경기도 성남시 분당구 성남대로 808에 위치한 대한민국의 복합 문화예술 공간이다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-114', '2102', '희망대공원', '공원로370번길 30', 37.4472469, 127.1504561, '희망대공원은 경기도 성남시 수정구 공원로370번길 26에 있는 공원이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-115', '2102', '신구대학교 식물원', '상적동 적푸리로 9', 37.4339552, 127.080805, '신구대학교식물원은 우리나라의 자연을 체험할 수 있는 자생식물과 식용, 약용, 섬유 등 생활자원으로 활용될 수 있는 식물로 조성되어 있다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-116', '2102', '율동공원책테마파크', '율동 412', 37.3803384, 127.1489026, '책테마파크도서관 이용 시간은 화~일요일 오전 9시부터 오후 6시까지다. 매주 월요일은 정기 휴관 일이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-117', '2102', '남한산성 전승문 (북문)', '산성리 661', 37.4815526, 127.1847874, '남한산성은 대한민국 경기도 광주시 남한산성면에 있는 남한산을 중심으로 하는 산성이며 경기도의 도립공원이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-118', '2102', '새소리물소리', '오야남로38번길 10', 37.4544559, 127.1018575, '깊은 산속 한옥에서 즐기는 전통찻집입니다. 경기, 성남 모란 복정 청계산에 위치하고 있습니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-119', '2102', '천주교 분당 성요한 성당', '서현로 498', 37.3690994, 127.1478576, '분당요한성당은 동양 최대의 성당답게 전 세계에서 가장 많은 세례자가 나온 곳입니다. 천주교 신자가 아니더라도 누구나 방문해서 구경할 수 있습니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-120', '2102', '대광사', '구미로185번길 30', 37.3463572, 127.1273243, '성남 불곡산 중턱에 자리 잡고 있는 대광사는 천태종 수도권 사찰로서 대광사는 분당신도시 포교를 목적으로 1997년 6월 19일 기공식과 함께 창립 ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-121', '2103', '에버랜드', '포곡읍 에버랜드로 199', 37.2899137, 127.2166214, '1년 365일, 계절별 다채롭게 펼쳐지는 축제와 어트랙션, 동물, 식물 등 다양한 시설로 즐거운 휴식과 기쁨을 선사하는 테마파크이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-122', '2103', '한국민속촌', '민속촌로 90 한국민속촌', 37.258939, 127.1181126, '높은 교육적 가치와 관광적 가치를 지닌 한국민속촌은 설립 이후부터 지금까지 생생한 문화체험과 아름다운 자연 속의 전통문화 관광지로서 사랑받고 있다.\r\n', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-123', '2103', '판다월드', '포곡읍 에버랜드로 199', 37.2929371, 127.2028171, '판다월드는 3월 초 22년 만에 국내에 들어온 판다 \'러바오\'(남)와 \'아이바오\'(여) 한 쌍을 수용하기 위해 에버랜드가 삼성전자 등 그룹 계열사의 역량을 결집시켜 건설한 테마관이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-124', '2103', '케리비안베이', '포곡읍 에버랜드로 199', 37.2971295, 127.2008973, '캐리비안베이는 카리브 해안을 테마로 구성한 각종 어트랙션과 건강시설을 갖춘 세계적 수준의 워터파크다. 폭 120m, 길이 104m의 인공파도풀에서부터 실내외를 자유로이 넘나드는 유수풀, 그리고 모험과 스릴을 극대화한 각종 슬라이드가 총집합되어 있으며, 실내에는 실내 파도풀, 슬라이드, 스파, 사우나가 구비되어 있다. 2015년에 도입한 메가스톰은 초대형 복합 워터 슬라이드다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-125', '2103', '삼성화재 모빌리티뮤지엄', ' 포곡읍 에버랜드로376번길 171 삼성화재 모빌리티뮤지엄', 37.2993534, 127.2185665, '에버랜드 인근에 있는 삼성화재 모빌리티뮤지엄은 모빌리티 어트랙션을 체험하고 클래식카를 감상하며 자연 속에서 휴식할 수 있는 공간이다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-126', '2103', '경기도어린이박물관', '기흥구 상갈로 6', 37.2673404, 127.1097952, '경기도박물관 내에 있는 경기도어린이박물관은 어린이들을 위한 체험식 박물관으로 2011년 9월 개관하였다. 어린이들이 전시물과의 상호작용을 통해 스스로 배우고 알아가는 재미를 느낄 수 있도록 고안되어 개인뿐 아니라 어린이집, 유치원, 학교 등의 기관 및 단체 체험학습장으로도 많은 사랑을 받는 곳이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-127', '2103', '포레스트벨 딸기체험농장', '원삼면 맹리로 85-1 포레스트 벨', 37.1970278, 127.334486, '실내 공간인 유리온실에서 음료 판매 및 딸기 체험이 이루어지고 미니 동물원에서는 동물 먹이주기, 양 산책 및 목욕 시켜주기 체험을 할 수 있다. 이 밖에 모래놀이, 트램펄린, 유아 롤러코스터 등의 놀거리가 있다. 불멍 체험도 인기가 많은데 농장에서 판매하는 꿀고구마와 감자를 야외 화로에서 직접 구워 먹을 수 있다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-128', '2103', '하이브패밀리테마파크', '기흥역로 63 AK프라자 6층', 37.2728968, 127.1189116, '하이브패밀리테마파크는 1200평규모로 동물생태수업이 있는 동물원과 롤러스케이트장, VR체험, 에어바운스,ufo범퍼카,레이져 서바이벌~~!!! 가족 모두 함께 즐길수 있는 실내 테마파크 입니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-129', '2103', '용인농촌테마파크', ' 원삼면 농촌파크로 80-1 농촌테마파크', 37.1709389, 127.2972197, '용인농촌테마파크는 주변 관광자원과 연계를 고려한 농촌, 전원 특성에 맞는 규모 있는 종합 체험 시설물이다. 도시민에게 차별화된 ‘일상을 벗어난 체험 공간’과 ‘가족단위의 쾌적한 휴식 공간’을 테마별로 제공하는 공간으로, 도시민들이 농촌 생활을 체험하면서 휴식을 취할 수 있도록 각종 농장과 휴식 공간이 마련되어 있다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-130', '2103', '용인대장금파크', '백암면 용천드라마길 25', 37.1212087, 127.3368503, '우리나라 최대 규모의 오픈 세트장이다. 꼼꼼한 고증을 통해 삼국시대에서 조선시대까지 시대별 거리와 집들을 재현하였다. 사극 뿐 아니라 현대극, 영화, CF 촬영이 활발히 이루어지고 있으며 <주몽>, <이산>, <동이>, <역적>, <군주> 등 다수의 MBC 사극을 촬영 한 곳이기도 하다. 세트장 관람과 궁중의상 체험이 흥미로워 한류팬들의 발길이 이어지고 있다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-131', '2351', '마산로봇랜드', '로봇랜드로 250', 35.0771221, 128.5869958, '공공부문에서는 로봇 연구개발 센터, 컨벤션센터, 로봇전시체험시설을 건립할 예정이며, 민간부문에서는 테마파크와 숙박시설(호텔, 콘도)를 건립할 계획이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-132', '2351', '해양드라마세트장', '구산면 석곡리 산183-2', 35.1099097, 128.5413306, '2010년 4월 조성된 이후 각종 드라마와 영화의 촬영지로 이용 중이다. 2010년 MBC 드라마 <김수로>가 처음 촬영되었고, 이후 <무사 백동수>, <기황후>, <역적:백성을 훔친 도적>, <징비록>, <육룡이 나르샤> 등의 드라마와 영화가 촬영됐다. 해양드라마세트장에서는 지금도 여전히 새로운 드라마 촬영을 위한 준비가 한창이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-133', '2351', '진해드림파크', '로봇랜드로 250', 35.0771221, 128.5869958, '뒤로는 아름다운 숲과 앞에는 진해만의 파노라믹한 바다 경관을 한눈에 조망할 수 있는 천혜의 아름다운 지역에 위치하고 있으며 진해만 생태숲, 목재문화체험장, 광석골 쉼터, 진해 청소년야영장의 4대사업을 통합하여 시민의 공모를 통하여 명명된 대규모 산림휴양 시설입니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-134', '2351', '천주산', '북면', 35.2718125, 128.5907399, '천주산은 진달래와 철쭉꽃이 만발한 봄이나 억새가 장관인 가을에 산행하기 좋은 산이다. 봄이면 붉게 피어 있는 진달래와 오가는 사람들의 울긋불긋한 옷차림으로 온 산이 불타는 듯하다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-135', '2351', '진해 보타닉뮤지엄', '진해대로1137번길 89', 35.1300149, 128.7175656, '명례성당은 1897년 순교자 신석복 마르코(1828~1866년)의 출생지 바로 옆에 서 있는 성당으로 경남지역에서 가장 일찍 설립된 천주교회 본당이다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-136', '2351', '창원의집', '사림로16번길 59', 35.2444855, 128.6816148, '경상남도 창원시 의창구 사림동에 있는 조선 후기 전통 가옥.\r\n\r\n', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-137', '2351', '진해해양공원', '웅천동 명동로 62', 35.0924364, 128.719728, '해양솔라파크는 음지도 해양공원 내에 건축연면적 7,702.96㎡ 건축물로, 전시동과 태양광 타워로 구성되어 있다. 창원의 랜드마크인 창원솔라타워는 단일 건물로는 국내 최대 규모(600kW/h), 최대 높이(136m)의 태양광 발전시설을 갖추고 있다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-138', '2351', '단감테마공원', '동읍 동읍로359번길 27', 35.2992075, 128.6632266, '전국 최대의 단감 생산지이자 우리나라에서 최초로 단감을 재배한 창원단감의 역사적 가치를 홍보하기 위해 조성한 농촌테마공원이다. 단감에 대한 모든 것을 알려주는 홍보관과 100년 창원 단감의 역사를 증명하는 시배목, 가족들과 전통놀이를 즐기며 휴식할 수 있는 잔디광장과 초가집, 감식초 체험장과 단감 과수원 등에서 농촌의 정취와 풍경을 느낄 수 있다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-139', '2351', '경화역공원', '경화동 진해대로 665', 35.1594532, 128.6862097, '경남의 벚꽃명소로 유명해진 경화역은 경남 창원시 진해구 경화동에 있는 작은 간이역으로 2006년부터 여객업무는 하지 않고 있다. 성주사역과 진해역 사이에 위치하고 있으며 철길따라 쭉 펼쳐진 벚꽃이 터널을 이루어, 안민고개나 진해 여좌천 다리와 함께 벚꽃 사진명소로도 유명하다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-140', '2351', '마빈온천', '진전면 팔의사로 457', 35.1200213, 128.3907627, '양촌마을의 온천수는 미네랄이 풍부해 음용수로도 인기가 높다.\r\n\r\n물의 성질이 부드러워 혈액의 증진을 돕고 신경통, 류마티즘성질환, 신경마비, 불면증, 신경쇠약, 부인생식기병, 피부병 등에 효험이 있다.\r\n주위에 인성산, 적석산, 깃대봉 등 아름다운 산이 많아 산행 후 온천욕을 할 수 있는 최상의 조건을 갖추고 있다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-141', '2552', '오동도', '수정동 산1-11', 34.7446658, 127.7664977, '다리로 연결된 자그마한 섬으로 전망대가 있으며 동백꽃과 대나무로 유명합니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-142', '2552', '여수해상케이블카', '자산4길 39', 34.7402686, 127.7528868, '아시아에서는 홍콩, 싱가폴, 베트남에 이어 네번째로 바다위를 통과하는 해상케이블카로써, 이제 국내에서도 바다위를 통과하는 해상케이블카에서 바람을 가르는 짜릿한 스릴감과 함께 아름다운 바다와 하늘을 온 몸으로 느낄 수 있습니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-143', '2552', '아쿠아플라넷 여수', '오동도로 61-11 아쿠아리움', 34.7465059, 127.7483324, '큰 물고기와 상어 탱크가 있는 수족관으로 벨루가 고래 쇼, 먹이주기 시연, 터치풀을 즐길 수 있습니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-144', '2552', '좌수영바게트버거', '동문로 10 1층 좌수영바게트버거', 34.7408275, 127.7367527, '안녕하세요^^\r\n\r\n이순신광장과 진남관이 위치한 중앙동에서\r\n영업중인 여수 바게트버거의 원조\r\n(SINCE 2016)\r\n여수 대표먹거리\r\n여수 좌수영 바게트버거입니다\r\n\r\n여수시민들이 즐겨찾고 드셔본 분들이\r\n추천하는 여수에서는 비교불가!!', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-145', '2552', '여수 유월드 루지 테마파크', '소라면 안심산길 155', 34.7477947, 127.6412509, '유월드 루지는 도심 속 초대형 1.3km의 트랙을 특수 제작된 무동력 카트를 타고 경사면을 따라 조성된 터널, 어트랙션 구간, 스카이브리지 활강구간, 자연숲구간 등 다양하고 박진감 넘치는 트랙을 중력만을 이용해 내려오는 체험활동으로 남녀노소 누구나 스릴을 즐길 수 있다. 유월드 탑라이더는 해발 347m의 일출 명소인 여수 안심산 중산간 지대에 위치하여, 산과 바다, 자연 암벽이 어우러진 천혜의 자연환경, 사방이 막힘없는 바다를 조망할 수 있다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-146', '2552', '디오션 워터파크', '소라면 안심산길 155', 34.731332, 127.643954, '누구도 상상하지 못한 스릴의 색다른 물의 유혹! 다양한 물놀이 시설부터 유아 전용풀까지! 온 가족이 함께 즐기는 워터파크!', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-147', '2552', '아르떼뮤지엄 여수', '박람회길 1 국제관 A동 3층', 34.7505794, 127.7457573, '아르떼뮤지엄 여수(ARTE MUSEUM YEOSU)는 디스트릭트가 2021년 여수 엑스포 국제관에 선보이는 두 번째 몰입형 미디어아트 상설 전시관입니다.\r\n', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-148', '2552', '이사부크루즈 국동유람선', '돌산읍 돌산로 3617-18', 34.7298614, 127.7369175, '이사부크루즈와 함께 여수시의 해안가를 따라 이어지는 아름다운 여수밤바다와 함께 여수여행의 하이라이트 선상불꽃쇼를 즐기며 로맨틱한 시간을 만끽하세요.(*폭우가 아닌 이상 비가와도 정상출항합니다.)', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-149', '2552', '이순신광장', '선어시장길 6', 34.7395111, 127.7360119, '이순신광장은 여수해전에서 왜군에게 11전 전승을 거둔 역사적 위업을 기리기 위해 2010년 3월 27일 개장한 광장이다. 여수 해변이 바라보이는 중앙동 해안가에 자리해 전망도 탁월하다. 광장의 넓이는 약 1만4000㎡이며 곳곳에 이순신 장군과 관련한 상징물이 설치되어 있다. 가장 먼저 눈에 띠는 것은 광장 입구에 길게 설치된 분수이다. ‘환영의 분수’라는 이름답게 두 팔을 벌려 여행자를 맞는 느낌이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-150', '2552', '만성리검은모래해변', '여수시 만흥동', 34.7773837, 127.7448878, '만성리 검은모래해변은 여수엑스포역에서 해안도로를 타고 북쪽으로 3km쯤 떨어진 곳에 위치해 있어서 교통이 편리하다. 길이 540m, 폭 25m 정도의 백사장과 평균수온 25℃로 따뜻해서 해수욕장으로는 최적지이다', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-151', '2501', '전주 한옥마을', '기린대로 99', 35.818799, 127.1537905, '전주 풍남동 일대에 700여 채의 한옥이 군락을 이루고 있는 국내 최대 규모의 전통 한옥촌이며, 전국 유일의 도심 한옥군입니다. 1910년 조성되기 시작한 우리나라 근대 주거문화 발달과정의 중요한 공간으로, 경기전, 오목대, 향교 등 중요 문화재와 20여개의 문화시설이 산재되어 있으며, 한옥, 한식, 한지, 한소리, 한복, 한방 등 韓스타일이 집약된 대한민국 대표 여행지입니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-152', '2501', '전주 남부시장', '풍남문1길 19-3', 35.8126868, 127.1468566, '농산물, 수공예품, 길거리 음식 등 다양한 물건을 판매하는 한국 전통 시장입니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-153', '2501', '전주 풍남문', '풍남문3길 1', 35.813494, 127.1475931, '전주 풍남문(全州 豊南門)은 조선 시대 전라감영의 소재지였던 전주를 둘러싼 성곽의 남쪽 출입문으로 성벽이 헐린 후에 유일하게 남아 있는 문이다. 1963년 1월 21일 대한민국의 보물 제308호로 지정되었다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-154', '2501', '전주 오송제 생태공원', '덕진구 송천1동 9-6', 35.860089, 127.1371522, '도심의 생태공간으로 다시 태어나게 될 전북 전주 오송제는 산소공장으로 불리는 오리나무가 군락을 이루고 있는 곳으로 유명하다. 또 이곳에서는 청정지역에서 서식하는 각종 곤충들도 서식하고 있어 도심 속 생태의 ‘보고(寶庫)’로 남겨진 생태습지이다. 오송제는 만수면적이 3.5㏊, 총저수량 4만 7,200㎥, 유효저수량은 4만 5,400㎥로 주변에 과수원과 논이 인접하고 있으며 상류지역에는 산림청의 희귀 및 멸종위기식물종인 ‘낙지다리’가 군락을 이루고 있다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-155', '2501', '전주 이팝나무 기찻길', '팔복동1가 263-32', 35.8568142, 127.1002328, '오전에는 화물열차가 다니지만, 그 이후에는 사진 명소가 되어버린 전주 이팝나무 철길!', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-156', '2501', '전주한지박물관', '팔복동 팔복로 59', 35.8489359, 127.10024, '전주한지박물관은 국내 제지업계의 선두주자로 신문용지와 출판용지를 생산하는 전주페이퍼를 운영하고 있다. 2007년부터 종이박물관에서 전주한지박물관으로 명칭을 변경하여 운영하고 있다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-157', '2501', '전주 객리단길', '중앙동2가 10-1', 35.8200343, 127.1398344, '이 지역의 명칭은 객사 인근이며, 서울의 경리단길과 분위기가 매우 비슷하다 하여 \'객리단길\' 이라고 지어진 것이다. 객사길 서쪽에 있으며, 오래되고 빈티지한 거리에 다양한 펍과 양식 레스토랑 등이 몰려 있다. 상권은 전반적으로 경리단길과 매우 비슷하다. 덕분인지 2010년대 후반 새롭게 떠오른 전주의 핫플레이스 중 하나.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-158', '2501', '국립전주박물관', '쑥고개로 249', 35.8013219, 127.0896983, '전북특별자치도 전주시 완산구 효자동에 있는 국립중앙박물관 산하 국립 박물관. 전북에서 발굴조사된 고고유적과 미술 공예품, 조선왕조와 관련된 유물 전시를 하는 곳이다. 호남권 국립중앙박물관 산하 국립박물관 중 국립광주박물관에 이어서 두번째로 지어졌다. 일부 소장품은 국립익산박물관으로 이관되었다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-159', '2501', '전주 동고산성', '교동 산9-1번지 대성동 산25', 35.8108897, 127.1723041, '동고산성은 통일신라시대에 쌓은 산성으로, 조선 순조 때 건너 편 산성을 ｢남고산성｣이라 부르면서 붙여진 이름이다. 이곳은 예로부터 후백제를 세운 견훤왕의 궁성터라는 말이 전해왔다. 백제 재건의 기치를 든 견훤왕은 신라 효공왕 4년(900)에 완산주를 점령하고, 이곳에 도읍을 정해 37년간 존속했다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-160', '2501', '전주한옥 레일바이크', '우아동1가 동부대로 420 한옥레일바이크', 35.82953, 127.1761274, '국내 최초 전구간 KTX와 함께 달리는 레일바이크! 아중역 패션부지에서 왜망실까지 왕복 3.4km를 시속 15~20km로 운행할 수 있도록 제작된 철길', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-161', '2213', '철원 평화전망대', '동송읍 중강리 588-14', 38.3091899, 127.2513203, '철원평화전망대는 강원 철원군 동송읍 중강리에 위치해 있는 대한민국의 전망대로 관광지로 활용되고 있다. 강원특별자치도 철원군 중부전선의 비무장지대와 북한지역을 한눈에 바라볼 수 있는 곳이며 제2땅굴 등 한국 전쟁과 관련된 전시물과 비무장지대 사진, 모노레일 등이 갖춰져 있다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-162', '2213', '철원 제2땅굴', '동송읍 이길리 47', 38.2972522, 127.3022573, '제2땅굴은 북한군이 남한을 침략하기 위하여 파 놓은 땅굴로 군사분계선 비무장지대에서 발견되었다. 당시 국군 초병이 경계근무를 서던 중 땅속에서 울리는 폭음을 듣게 됨에 따라 시추작업이 실시되었고, 이후 굴착 작업 끝에 1975년 3월 19일 제2땅굴이 발견되었다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-163', '2213', '철원 백마고지 전적지', '철원읍 산명리', 38.2693798, 127.1653543, '백마고지 전투는 1952년 10월 6일부터 15일까지 철원평야의 요충지인 백마고지[395고지]를 쟁탈하기 위하여 한국군과 중공군이 벌인 전투이다. 김종오 사단장이 이끄는 국군 제9사단이 중공군 1만 4000여 명을 격멸하여 한국군의 전투 능력과 지휘관들의 부대 지휘 능력을 과시하였다. 백마고지 위령비(白馬高地慰靈碑)는 백마고지 전투 희생자를 기리기 위하여 건립하였다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-164', '2213', '철원 고석정 꽃밭', '동송읍 장흥리 25-126', 38.1885943, 127.2943887, '강원 철원군 고석정 꽃밭에서 불꽃 맨드라미 등 가을꽃들이 화려한 색을 뽐내고 있다. \'고석정 꽃밭\'은 철원의 대표 관광지인 고석정 근처에 조성된 공간으로 계절마다 특색 있는 꽃을 볼 수 있다. 18종, 100만 송이의 다양한 꽃묘를 식재한 이번 행사는 다음달 1일부터 정식 개장한다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-165', '2213', '철원 순담계곡', '갈말읍 군탄리', 38.1750399, 127.2979808, '순담계곡은 한탄강 물줄기 중 화산활동으로 인해 형성된 절벽과 주상절리가 가장 아름다운 계곡으로 알려져 있다. 순담이라는 이름은 조선시대 정조 때 김관주가 이곳에 연못을 파고 순약초를 재배하면서 복용을 한데서 유래했다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-166', '2213', '철원 소이산 전망대', '철원읍 사요리 산4', 38.2547039, 127.1896265, '소이산(所伊山)은 강원도 철원군 철원읍 사요리에 있는 해발고도 362m의 산이다. 고도는 높지 않아도 소이산 정상에 서면 백마고지, 철원역, 제2땅굴, 노동당사 등이 한눈에 들어온다. 6·25전쟁과 관련된 사연이 많이 있는 곳이며, 민간인 통행이 금지되었던 군사지역으로 곳곳에서 군사시설을 볼 수 있다.\r\n\r\n', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-167', '2213', '철원 구 제일교회', '철원읍 관전리 102', 38.2505265, 127.2036633, '강원도 철원군 구 철원읍의 철원 제일 교회는 1905년 장로교회로 출발하여 1907년 감리교회가 되었다. 3·1운동에 적극적으로 앞장서는 등 활발한 활동으로 교인이 계속 늘어 1937년 교회 창립 30주년에 맞추어 새 예배당을 건립했다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-168', '2213', '철원 매월대폭포', '근남면 잠곡리', 38.1971056, 127.4817353, '강원도 철원군 근남면에 위치한 매월대 폭포의 소 모습이다. 매월대 폭포는 6~7m 높이에서 떨어지며, 폭포에서 쏟아진 물은 작은 소를 이룬다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-169', '2213', '철원 두루웰 숲속문화촌', '갈말읍 지경1길 69', 38.2268502, 127.3559694, '도심 속에서 지친 몸과 마음을\r\n깨끗한 자연 속에서 치유하고,\r\n자연을 만끽하며 다양한 숲 속 문화를 즐기는 곳!', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-170', '2213', '철원 놈스톤화덕피자앤파스타', '동송읍 금학로210번길 7-14', 38.2082203, 127.2194467, '생활의 달인에 소개도 되었던 철원의 명소가 되어버린 화덕피자 전문점!', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-171', '2551', '목포 스카이워크', '죽교동 465-151', 34.787728, 126.367374, '목포해양대학교와 신안비치호텔 사이 대반동 해변도로와 유원지에 조성된 다리로서 목포 앞 바다 전망를 제대로 볼 수 있는 명소다.\r\n길이 54m 높이 15m로 상공 15m에서 바다 위를 걷는 듯한 아찔한 스릴을 즐길 수 있고 목포대교와 고하도를 배경으로 하는 기막힌 포토존이다.\r\n특히 석양에 가면 서해안 다도해의 낙조를 제대로 감상할 수 있다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-172', '2551', '목포 바다분수', '미항로 115', 34.7946525, 126.4339407, '수반길이 150m, 최대분사 높이 70m 규모의 세계 최대 초대형 바다분수로\r\n음악과 분수, 영상 레이저 빛이 뿜어내는 다이내믹한 연출은\r\n목포 여행의 색다른 낭만을 안겨드릴 것입니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-173', '2551', '목포 국립해양문화재연구소', '남농로 136', 34.7921525, 126.4215005, '1975년, 어부의 우연한 발견으로 한국의 수중문화재 역사가 시작되었습니다. 이 신안해저의 중세 동아시아 무역선 발굴은 세계적인 이슈가 되었으며, 한국뿐만 아니라 동아시아 여러 나라에서 전시와 국제심포지엄이 개최되었습니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-174', '2551', '목포 구목포 근대역사관 제1관', '영산로29번길 6', 34.7875705, 126.3820869, '1897년 10월 1일 목포가 개항되면서 주한일본공사는 자국민의 보호를 위해 인천영사관 직원 3명을 목포로 파견하여 10월 26일 목포 일본영사관을 개설했다. 동양척식주식회사 목포지점(목포근대역사관 제2관)과 함께 목포의 개항과 근대화, 일제의 침략과 수탈을 상징하는 시설이자 교육의 장소로 활용되고 있다.  ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-175', '2551', '목포항', ' 해안로 182', 34.7809719, 126.383266, '전라남도 목포시 죽교동에 위치한 무역항. 전라남도 서부 지역의 관문이며 그리고 단연 목포의 마스코트이자 랜드마크이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-176', '2551', '목포 유달산', '유달로 180', 34.7919978, 126.3725722, '전라남도 목포시에 있는 높이 228.3m의 산이다. 전라남도 목포시에서 가장 높은 산이며, 무안반도 남단의 노령산맥에서의 가장 마지막 봉우리이다. 이 산의 왼쪽에는 국도 1호선과 목포대교가 있다. 임진왜란때 이순신 장군이 바위 벽면에 군량미를 쌓아 일본군의 사기를 저하시켰다는 노적봉이 있는 산이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-177', '2551', '목포 해상케이블카', '해양대학로 240', 34.79841, 126.3693527, '목포해상케이블카는 목포 시내 북항스테이션을 출발하여 유달산 정상부에서 ‘ㄱ’자로 꺾여, 해상을 지나 반달섬 고하도에 이르는 국내 최장 케이블카입니다. 목포해상케이블카는 총 길이 3.23km의 압도적인 탑승거리와 볼거리로 베트남 빈펄케이블카를 능가하는 아시아 최고의 노선으로 평가되고 있습니다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-178', '2551', '목포진 역사공원', '만호동 1-126', 34.7857894, 126.3845013, '목포진은 조선시대 수군의 진영(鎭營)이며 목포영·목포대라고 불렀고 만호(萬戶)가 배치되었다고 해서 만호영·만호진·만호청이라 부르기도 했다. 지리상으로 볼 때 목포는 영산강 하구를 안고 있으며, 바다로 연결되는 지리적인 요충지에 위치하고 있으며, 호남과 경상남부지역으로 통하는 세곡 운반로로 사용되는 길목에 자리하고 있다. 그러한 이유로 목포는 조선초기부터 그 중요성이 부각되어 주목받게 되었다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-179', '2551', '목포 시화골목길', '보리마당로 14', 34.7826568, 126.3765916, '영화 1987, 1박2일, 김영철의 동네 한바퀴 등 다양한 곳에서 소개되는 벽화가 아름다운 목포 필수 여행지이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-180', '2551', '목포 코롬방제과점', '영산로75번길 7', 34.7898523, 126.3844179, '1949년 개업하여 75년을 이어가는 목포의 명품제과집! 새우바케트가 맛있는 전국  5대 빵집!!', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-181', '2322', '울릉도 송곳봉', '북면 현포리 산2', 37.5319691, 130.8516195, '송곳봉은 해발 430m의 큰 암벽으로, 노인봉과 마찬가지로 마그마의 통로인 화도가 굳어서 생성된 바위이다, 뾰족한 봉우리가 마치 송곳을 세워 놓은 것 같다 하여 붙여진 이름이다. 상대적으로 점성이 높은 조면암질 용암은 쉽게 흐르지 못하기 때문에 지표에 봉긋하게 올라와 용암돔을 만들었다. 이후 오랜 세월 동안 용암돔 상부와 주변을 감싸고 있던 집괴암 상부가 침식되어 현재와 같이 경사가 가파르고 뾰족한 형태를 갖게 된 것이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-182', '2322', '울릉도 독도박물관', '울릉읍 약수터길 90-17', 37.4833768, 130.9010847, '독도는 서기 512년(신라 지증왕 13)이래 울릉도와 함께 우산국의 영토로서 우리의 역사와 문화권에 편입된 후 지금까지 면면히 이어져 온 우리의 고유영토다. 과거의 독도는 바다 가운데의 작은 외딴섬으로 크게 주목받지 못했지만, 청정수역으로 알려진 오늘날에는 지질학적, 생태학적, 사회학적인 가치는 물론, 군사전략적 가치에서도 큰 의미를 지니고 있다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-183', '2322', '울릉도 독도', '울릉읍 독도이사부길 55', 37.2429362, 31.8668421, '우리나라 가장 동쪽 끝에 있는 섬으로 동도는 동경 131도 52, 북위 37도 14 그리고 서도는 동경 131도 51, 북위 37도 14에 있다. 비교적 큰 두 개의 섬과 작은 바위섬으로 이루어진 화산 섬이다. 동해의 맑은 바다와 외로이 떠 있는 섬과 해조류들이 어우러져 매우 아름다운 광경이다. 2005년 3월 24일 정부 방침이 변경됨에 따라 제한지역(동도, 서도) 중 동도에 한하여 일반인의 출입이 가능하도록 공개 제한지역에서 해제되었다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-184', '2322', '울릉도 독립문바위', '울릉읍 독도리', 37.5418182, 130.9127685, '독도 동도에 위치해 있는 독립문 바위는 파도에 해식 되어 형성된 시아치 바위로 울릉도, 독도국가지질공원에 속해 있다. 해안침식에 의해 바다 쪽으로 툭 튀어나온 부분(곶)이 깎여나가 해식동굴이 생성되는데, 이 해식동굴이 계속 깎여나가 양쪽에서 연결되면 윗부분은 자연스레 아치형 다리 형태로 연결이 된다. 이렇게 형성된 아치형 다리의 형태가 독립문의 형상과 닮았다고 해서 독립문바위라 하며, 뚜렷한 수평층리 및 수직절리가 매우 발달한 응회암이다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-185', '2322', '울릉도 황토구미 동굴', '서면 태하리', 37.5140619, 130.7947305, '화산이 폭발할 때 뿜어져 나온 화산재들이 굳어져 형성된 응회암이 파도에 의한 차별침식을 받아 형성된 해식동굴이다. 동굴의 크기는 높이 6m, 폭 32m, 길이 44m로 바닥은 평탄하고 천장은 반구형 또는 둥근 덮개모양이며, 천장을 이루는 조면암은 냉각되는 과정에서 수축하여 울퉁불퉁한 벽면을 만들었다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-186', '2322', '울릉도 삼선암 ', '북면 천부리', 37.5494444, 130.9080556, '삼선암은 울릉도의 아름다운 해양 절경을 자랑하는 곳으로 일선암, 이선암, 삼선암으로 이루어져 있다. 삼선암은 발달된 주상절리가 파도의 작용을 받아 떨어져나가면서 기둥의 시스택을 이루고 있으며 표면에는 풍화에 의해 벌집처럼 구멍이 생긴 지형인 타포니가 발달해 있다.', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-187', '2322', '울릉도 죽도', '울릉읍 죽도길 59-9', 37.5294206, 130.937628, '울릉도 저동항에서 북동쪽으로 4㎞, 도동항에서 7㎞ 떨어진 해상에 있는 섬으로 울릉도 부속 섬 중 가장 큰 섬이다. 원래는 울릉도와 한 섬이었으나 오랜 세월 파도의 침식으로 현재의 모습으로 분리된 지질명소이다. 개척 당시 죽도에는 대나무가 많이 자생하였기에 대섬, 대나무 섬, 댓섬이라고도 한다. 도동항에서 배로 15분 소요되는 곳으로, 죽도항에 도착하면 처음 만나는 365개의 나선형 계단을 올라 죽도 전체를 돌아볼 수 있는 트레킹 코스가 있다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-188', '2322', '울릉도 코끼리바위 ', '북면 현포리 36-2', 37.5403061, 30.8469286, '울릉도 선창 항구로 부터 약 500m 떨어진 바다에 있는 코끼리바위는 약 높이 50m, 길이 80m이다. 바위의 표면에는 여러 방향으로 주상절리가 발달하였으며, 코 부근에는 높이 약 10m의 아치형 해식동굴이 있다. 이로 인해 바위의 모습이 마치 물속에 코를 박고 있는 코끼리 형상으로 보여 [코끼리바위]라 하며, 구멍바위라는 뜻으로 [공암]이라고도 부른다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-189', '2322', '울릉도 태하 등대', '울릉읍 독도이사부길 63', 37.518111, 130.7978471, '바다 한복판에 두 기둥이 우뚝 서서 위풍당당하게 바다를 바라보는 웅장한 모습의 독도! 거기에 우리의 바다를 비추는 독도등대가 서 있다. 독도는 망망대해 위에 깎아지른 바위 봉우리로 규모는 작지만 거제의 해금강이나 여수의 백도 못지않게 독도의 풍광은 웅장하여 관광지로도 손색이 없으며, 코끼리를 닮은 독립문바위와 주변에 크고 작은 암봉, 가제바위와 탕건봉 등은 바다 한가운데 펼쳐진 기암 전시장처럼 보인다. ', 0, NULL);
INSERT INTO `destination` VALUES ('200-000-190', '2322', '울릉도 봉래폭포', '울릉읍 도동리', 37.4964356, 130.89226, '울릉도, 독도 국가지질공원에서 선정한 23개의 지질명소 중 하나인 봉래폭포는 낙차가 30m에 이르는 암석의 차별 침식에 의해 형성된 삼단 폭포로 주변에 수직에 가까운 절벽과 울창한 원시림과 더불어 빼어난 자연 경관을 이루는 곳이다. 과거에는 이곳을 굴등이라 불렀는데, 봉래폭포가 있는 꼭대기에 굴이 있고, 그 굴속에 절이 있었다고 한다. ', 0, NULL);

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `img_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '파일 경로 및 URL',
  `i_cls_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `des_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rv_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sup_code` int(255) NULL DEFAULT NULL,
  `image_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`img_code`) USING BTREE,
  INDEX `FK_IMAGE_CLS_TO_IMAGE_1`(`i_cls_code`) USING BTREE,
  INDEX `FK_DESTINATION_TO_IMAGE_1`(`des_code`) USING BTREE,
  INDEX `FK_SUPPORT_TO_IMAGE_1`(`sup_code`) USING BTREE,
  INDEX `FKpw3tf7kbkt9q0qdxmoar75xtn`(`rv_code`) USING BTREE,
  CONSTRAINT `FK_IMAGE_CLS_TO_IMAGE_1` FOREIGN KEY (`i_cls_code`) REFERENCES `image_cls` (`i_cls_code`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_SUPPORT_TO_IMAGE_1` FOREIGN KEY (`sup_code`) REFERENCES `support` (`sup_code`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKpw3tf7kbkt9q0qdxmoar75xtn` FOREIGN KEY (`rv_code`) REFERENCES `review` (`rv_code`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('http://hankuknews.com/data/tmp/2112/20211222000952_cmowlklv.png', '5002', '', '300-000-003', NULL, '활옥동굴', NULL);
INSERT INTO `image` VALUES ('http://www.cjlarvaland.co.kr/_upload/kntools/pagemaker/1/%EC%95%BC%EC%99%B8%EC%8B%9C%EC%84%A4%5F03.png', '5002', NULL, '300-000-005', NULL, '충주라바랜드', NULL);
INSERT INTO `image` VALUES ('http://www.cjlarvaland.co.kr/_upload/kntools/pagemaker/10/%EC%8B%9C%EC%84%A4%EB%91%98%EB%9F%AC%EB%B3%B4%EA%B8%B02.jpg', '5002', '', '300-000-000', NULL, '충주라바랜드', NULL);
INSERT INTO `image` VALUES ('http://www.foresttrail.co.kr/images/img_sub2_4.jpg', '5001', '200-000-009', NULL, NULL, '계명산 캠핑장', NULL);
INSERT INTO `image` VALUES ('http://www.mmcablecar.com/upload/bbs_data/252023051202173.jpg', '5001', '200-000-177', NULL, NULL, '목포 해상케이블카', NULL);
INSERT INTO `image` VALUES ('http://www.suanboland.co.kr/images/gallery/s030104-03.png', '5001', '200-000-008', NULL, NULL, '수안보 온천 관광특구', NULL);
INSERT INTO `image` VALUES ('https://applications-media.feverup.com/image/upload/f_auto/fever2/plan/photo/eb920d04-dd35-11ed-884b-b27929160d2a.jpg', '5001', '200-000-147', NULL, NULL, '아르떼뮤지엄 여수', NULL);
INSERT INTO `image` VALUES ('https://blog.kakaocdn.net/dn/AueZX/btrZiP0P7gj/VKcjNnBDQMIFnwCoj71J4k/img.jpg', '5002', NULL, '300-000-019', NULL, '중앙탑사적공원', NULL);
INSERT INTO `image` VALUES ('https://blog.kakaocdn.net/dn/Drd7E/btqXTnx7O8e/qM5TJRsyE04K6SNdmMmHAK/img.jpg', '5002', NULL, '300-000-047', NULL, '광교호수공원', NULL);
INSERT INTO `image` VALUES ('https://blog.kakaocdn.net/dn/Ib9tc/btrja9kZBjI/3wcz5REboUHXbRr2rJgUhK/img.jpg', '5002', NULL, '300-000-012', NULL, '충주호', NULL);
INSERT INTO `image` VALUES ('https://blog.kakaocdn.net/dn/QAijW/btrAR89634s/EZqpMscowESK2M6oZLdzT1/img.jpg', '5001', '200-000-180', NULL, NULL, '목포 코롬방제과', NULL);
INSERT INTO `image` VALUES ('https://cdn.ccdn.co.kr/news/photo/202007/653827_278900_1520.jpg', '5002', NULL, '300-000-006', NULL, '활옥동굴', NULL);
INSERT INTO `image` VALUES ('https://cdn.ccdn.co.kr/news/photo/202212/795504_349818_1417.jpg', '5002', NULL, '300-000-017', NULL, '중앙탑사적공원', NULL);
INSERT INTO `image` VALUES ('https://cdn.dominilbo.com/news/photo/202107/6261_4958_356.jpg', '5002', NULL, '300-000-015', NULL, '충주호', NULL);
INSERT INTO `image` VALUES ('https://cdn.kbmaeil.com/news/photo/202201/919087_911126_5133.jpg', '5001', '200-000-189', NULL, NULL, '울릉도 태하 등대', NULL);
INSERT INTO `image` VALUES ('https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=1049e64f-243c-4e1b-8347-7af72d4555d3', '5001', '200-000-184', NULL, NULL, '울릉도 독립문바위', NULL);
INSERT INTO `image` VALUES ('https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=291166f8-035f-4f9c-b0da-6956e01cecfb', '5001', '200-000-181', NULL, NULL, '울릉도 송곳봉', NULL);
INSERT INTO `image` VALUES ('https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=2cd7b343-47a4-4922-9d0c-d713212d0da5', '5001', '200-000-187', NULL, NULL, '울릉도 죽도', NULL);
INSERT INTO `image` VALUES ('https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=3f1b94ff-5a5d-4ffe-8275-9d3a066a03fe', '5001', '200-000-071', NULL, NULL, '한밭수목원', NULL);
INSERT INTO `image` VALUES ('https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=50793bc7-4b6a-4247-84c3-16b31c0933c5', '5001', '200-000-183', NULL, NULL, '울릉도 독도', NULL);
INSERT INTO `image` VALUES ('https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=6a72e024-f097-4c04-b3a4-7b0ee3a8ef52', '5001', '200-000-186', NULL, NULL, '울릉도 삼선암', NULL);
INSERT INTO `image` VALUES ('https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=7535ed90-f444-49ea-9081-c2b98cbebced', '5001', '200-000-190', NULL, NULL, '울릉도 봉래폭포', NULL);
INSERT INTO `image` VALUES ('https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=8e6670ca-3416-448d-9d61-383684bbbeb5', '5002', NULL, '300-000-016', NULL, '중앙탑사적공원', NULL);
INSERT INTO `image` VALUES ('https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=9d213f25-78bd-400e-8c69-6c6de28b37d5', '5002', NULL, '300-000-045', NULL, '광교호수공원', NULL);
INSERT INTO `image` VALUES ('https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=ab583239-8d0e-4a2c-b26f-97332546aa2e', '5001', '200-000-188', NULL, NULL, '울릉도 코끼리바위', NULL);
INSERT INTO `image` VALUES ('https://culture.changwon.go.kr/cmm/fms/getImage.do?atchFileId=FILE_000000000000859&fileSn=3', '5001', '200-000-134', NULL, NULL, '천주산', NULL);
INSERT INTO `image` VALUES ('https://d2gfz7wkiigkmv.cloudfront.net/pickin/2/1/2/p7QtpBnWT1yUXd4Cz9qO5A', '5001', '200-000-096', NULL, NULL, '해운대 블루라인파크', NULL);
INSERT INTO `image` VALUES ('https://d2mgzmtdeipcjp.cloudfront.net/files/good/2023/12/24/17034032392313.jpg', '5001', '200-000-128', NULL, NULL, '하이브패밀리테마파크', NULL);
INSERT INTO `image` VALUES ('https://d2u3dcdbebyaiu.cloudfront.net/uploads/atch_img/492/84034dbea798eec8dc07bf01978f7966_res.jpeg', '5002', NULL, '300-000-022', NULL, '충주고구려비', NULL);
INSERT INTO `image` VALUES ('https://dimg.donga.com/wps/NEWS/IMAGE/2023/07/11/120177484.2.jpg', '5002', NULL, '300-000-026', NULL, '충주댐', NULL);
INSERT INTO `image` VALUES ('https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/39/fd/68/2.jpg?w=1200&h=1200&s=1', '5001', '200-000-162', NULL, NULL, '철원 제2땅굴', NULL);
INSERT INTO `image` VALUES ('https://dynamic-media-cdn.tripadvisor.com/media/photo-o/18/18/c3/3d/caption.jpg?w=1200&h=-1&s=1', '5001', '200-000-150', NULL, NULL, '만성리검은모래해변', NULL);
INSERT INTO `image` VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfhj_OzIgOctF0-QZLgaH887iow1rpnUdjIdjg3dAuVRzb9w-4lZWUlVeXSxzr1RmXLWo&usqp=CAU', '5002', NULL, '300-000-096', NULL, '경주월드', NULL);
INSERT INTO `image` VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFIVjpOsrS8dmpsEdbg1g1NJsP2SwzAU6p_P4vy_ysiQ&s', '5001', '200-000-120', NULL, NULL, '대광사', NULL);
INSERT INTO `image` VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoygN6hdFwPAjzjpYaDhpkRxXAyd3eY9zwGkG4SvZp35TlghNfE8YjStvTvUa_2fVYvuA&usqp=CAU', '5002', NULL, '300-000-032', NULL, '수안보 온천 관광특구', NULL);
INSERT INTO `image` VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXAprrhWlbI869WufO7iHHQfw9WxNaws40Uxp7TdPppYXmfDaza-sTUuICVZHuaZQCE4U&usqp=CAU', '5002', NULL, '300-000-099', NULL, '경주월드', NULL);
INSERT INTO `image` VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAyr_TlDy4bzAKDPZsJo2DWsoi91KFXmx8-1wYJv_iFD44YxoeLcPDqC3WGyBuSVrASV0&usqp=CAU', '5002', NULL, '300-000-089', NULL, '석굴암', NULL);
INSERT INTO `image` VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkQA9_ntcIjsUsxm7RryV7KYSoLDvf_e7ohQ&usqp=CAU', '5002', NULL, '300-000-007', NULL, '활옥동굴', NULL);
INSERT INTO `image` VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLJAvTR6rG16eFeBqO4Ju1xVCi0RZj0yrg7-kiPyloFA&s', '5001', '200-000-060', NULL, NULL, '인천대공원', NULL);
INSERT INTO `image` VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX23Dw7-Ug3MSKfeQRXm7IC4HtKysM3WtSPLwc7krskje-3ukkzMhSiAkOiXUf-5VLyV0&usqp=CAU', '5002', NULL, '300-000-091', NULL, '석굴암', NULL);
INSERT INTO `image` VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9A8B-5hPh1D_AhChaJ3cSHQP19F_RKwvn4jKILK5FzKmU6W31TqBVPLBXCxXTSh___iU&usqp=CAU', '5002', NULL, '300-000-094', NULL, '첨성대', NULL);
INSERT INTO `image` VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI-rwcdMpxeRYEBylagOfeW2ig2tdZPazcvlwFuldbZeMWWrRtcieAPb30TOIg1CDdOQc&usqp=CAU', '5001', '200-000-127', NULL, NULL, '포레스트벨 딸기체험농장', NULL);
INSERT INTO `image` VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmLN07r3CL4jH1RupoIaRelm-nQpY18jG5SYedk1Nyi4f_XD7V0jSX7gbNuJjUnQ43lAU&usqp=CAU', '5002', NULL, '300-000-098', NULL, '경주월드', NULL);
INSERT INTO `image` VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsGpFWcDLfIGUemJDLwydNO8SBEObfWTseN1kFNTHv_26KFJricXICpaSM4FI2GP6kplk&usqp=CAU', '5002', NULL, '300-000-093', NULL, '첨성대', NULL);
INSERT INTO `image` VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuPvfMyY4ONyQtsktWkxdSs19YKI5Kve6N4YQcouCpuGQQRe_xiBOemmGVEzrHUIf3tFU&usqp=CAU', '5002', NULL, '300-000-039', NULL, '계명산 캠핑장', NULL);
INSERT INTO `image` VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX2ftuJ60-Cw8uQnx3bpFJ1VzjIpxs-SjN7w&usqp=CAU', '5002', NULL, '300-000-004', NULL, '활옥동굴', NULL);
INSERT INTO `image` VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyL2JmgPZMie8X3yu8gx187p9S8GL0AZcs_TUpNTnCFGqOonGjMK_Fc2gyfwfo8scxWO8&usqp=CAU', '5002', NULL, '300-000-046', NULL, '광교호수공원', NULL);
INSERT INTO `image` VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9lnN0Zev2QOd6-znqQG7oVssTEUvzW6KkJNvnPt1iWcnsu3qXbanTKL2tlivG8Q9-TSs&usqp=CAU', '5002', NULL, '300-000-014', NULL, '충주호', NULL);
INSERT INTO `image` VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ3SdH27c1QJtKnoy4UzmlaxQLUDCGbknuDMlQ6Ip_FG6hlYpP9trd6lC2p5q4uYam8ro&usqp=CAU', '5002', NULL, '300-000-092', NULL, '첨성대', NULL);
INSERT INTO `image` VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUDV-Bq7WmD-_PapZhT7c2qaDLhQ8RucrcMX3h7LGY0ZEb2Fv-ANtFX3Y9kBBc0X6GsEk&usqp=CAU', '5002', NULL, '300-000-037', NULL, '계명산 캠핑장', NULL);
INSERT INTO `image` VALUES ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw33YznQ7_UNCAmRmwh2A9UUnvDel648AYYCMIcWCeHWR74VzObSVzy_r2nGKDOlYFXtg&usqp=CAU', '5002', NULL, '300-000-083', NULL, '석굴암', NULL);
INSERT INTO `image` VALUES ('https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSA2wEVAQcDrnFcCkjGgNRC-u4bNGczEklwjnNEjbB82gBvZnBaFc7vFd799P3TCWjoulRKCS4n_sjl0mebxnQiIP0H2Es_YDmAntw3_w', '5001', '200-000-064', NULL, NULL, '월미도', NULL);
INSERT INTO `image` VALUES ('https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSVzj-zjJ-KdE3vDAFOdSvfA8tRDSpQ6xghAPt7wK5gzYd7Zl5WcFo8yNi1Z6ONGxsVS8spEIeZAJOhEISReBt7QYp-n2PxZJsIbYByBw', '5001', '200-000-041', NULL, NULL, '성산일출봉', NULL);
INSERT INTO `image` VALUES ('https://freetour.chungbuk.go.kr/DATA/tour/368/thumb/p_F33B18AF-30ED-3D7A-E4B8-F42667D04619.jpg', '5002', NULL, '300-000-008', NULL, '고구려과학관', NULL);
INSERT INTO `image` VALUES ('https://gongu.copyright.or.kr/gongu/wrt/cmmn/wrtFileImageView.do?wrtSn=11017770&filePath=L2Rpc2sxL25ld2RhdGEvMjAxNC8yMS9DTFM2L2RpZ2lfMTEwMTc3NzBfMDEyMDE0MTAxMA==&thumbAt=Y&thumbSe=b_tbumb&wrtTy=10006', '5001', '200-000-153', NULL, NULL, '전주풍남문', NULL);
INSERT INTO `image` VALUES ('https://hanok.jeonju.go.kr/uploads/editor/2019/12/08847ebd8a96fe9c3969155049ce06c9.jpg', '5001', '200-000-151', NULL, NULL, '전주 한옥마을', NULL);
INSERT INTO `image` VALUES ('https://herewego.link/data/item/KK_105514/8.jpg', '5001', '200-000-097', NULL, NULL, '부산 엑스 더 스카이', NULL);
INSERT INTO `image` VALUES ('https://heritage.unesco.or.kr/wp-content/uploads/2019/04/hd6_393_i1.jpg', '5001', '200-000-056', NULL, NULL, '창덕궁', NULL);
INSERT INTO `image` VALUES ('https://home-ticket.co.kr/yscable/assets/image/main-slider-image-3.JPG', '5001', '200-000-142', NULL, NULL, '여수해상케이블카', NULL);
INSERT INTO `image` VALUES ('https://i.namu.wiki/i/0owfre9kQNjbY553D_W3VYVLZIux_kES04KVK4lAH5NyiYdvQC9ZkmCaiCl2FWDK-879B38XKNPAO_C9GymWRg.webp', '5002', NULL, '300-000-024', NULL, '충주댐', NULL);
INSERT INTO `image` VALUES ('https://i.namu.wiki/i/AT4vvhHQkUJpy6447QoB8XD76LPpsSOw12YUNYSHDSDyNuJ6GoopxO51Q4nYr4dp3jxxTku1UbBbs2xkTZaC1Q.webp', '5002', NULL, '300-000-095', NULL, '첨성대', NULL);
INSERT INTO `image` VALUES ('https://i.namu.wiki/i/gwfxJBJYJkQyfyWayMfLWIRaP4f_q2XXC5dCkT4BJB3mFJ6G0LPCjSNT2yaaD1lEPa6g5nVe3PT5WomC3KElTA.webp', '5001', '200-000-103', NULL, NULL, '울산대공원', NULL);
INSERT INTO `image` VALUES ('https://i.namu.wiki/i/L18x7SmLTgxtPwCsjevBmOy1G6KkAVc2jXkBtHVW1OaeHe35EPebCyc82EEyeCCllOwuuKqhr3YB2Tfr8NFTDA.webp', '5001', '200-000-175', NULL, NULL, '목포항', NULL);
INSERT INTO `image` VALUES ('https://i.namu.wiki/i/oSwOanrbShYo97Kw6HIIdDYqbZnMb3OTCG3SIDl5nWRKfkOnJyQ_do0xD7nxAN6zzY_HXc34vrSODjcyy_bHew.webp', '5001', '200-000-087', NULL, NULL, '광주사직공원', NULL);
INSERT INTO `image` VALUES ('https://i1.wp.com/hanulful.com/wp-content/uploads/2021/06/SAM_6973.jpg?ssl=1', '5002', NULL, '300-000-025', NULL, '충주댐', NULL);
INSERT INTO `image` VALUES ('https://image.여기유.com/content_travel/2728294297_y75PNaKY_1d6f2235d47e1ff80fc0dd0873e6c2914d71ebc5.jpg', '5001', '200-000-048', NULL, NULL, '신창풍차해안도로', NULL);
INSERT INTO `image` VALUES ('https://images.unsplash.com/2/03.jpg?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '5002', '', '300-000-002', NULL, '충주라바랜드', NULL);
INSERT INTO `image` VALUES ('https://images.unsplash.com/2/07.jpg?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', '5002', '', '300-000-001', NULL, '충주라바랜드', NULL);
INSERT INTO `image` VALUES ('https://img.khan.co.kr/news/2017/10/18/l_2017101901001531800145211.jpg', '5001', '200-000-157', NULL, NULL, '전주 객리단길', NULL);
INSERT INTO `image` VALUES ('https://img.khan.co.kr/news/2023/08/23/news-p.v1.20230823.42ef458e58e1436cabadd5d5e7c4b477_P1.jpg', '5001', '200-000-164', NULL, NULL, '철원 고석정 꽃밭', NULL);
INSERT INTO `image` VALUES ('https://img7.yna.co.kr/photo/yna/YH/2015/05/14/PYH2015051402540080500_P2.jpg', '5001', '200-000-149', NULL, NULL, '이순신광장', NULL);
INSERT INTO `image` VALUES ('https://itour.incheon.go.kr/common/viewImg.do?imgId=DBI21122715221628538', '5001', '200-000-100', NULL, NULL, '국제시장', NULL);
INSERT INTO `image` VALUES ('https://ktkart01.cafe24.com/data/editor/1903/2095694285a990cef757a02cc0a7cd60_1551594220_3935.jpg', '5002', NULL, '300-000-034', NULL, '수안보 온천 관광특구', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipM-e1KBPFcQ8v1tFvctxsF19jIJ8b_X1m66UKYn=s1360-w1360-h1020', '5001', '200-000-043', NULL, NULL, '천지연폭포', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipM0X3QF7VhE9_KCXGafzzSiE6A4FLgz2-OnMUXw=s1360-w1360-h1020', '5001', '200-000-007', NULL, NULL, '호암지 생태공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipM3MUPzO6h2wGIg2VmD_LY1PZT_gIcU1BfuHBsd=s1360-w1360-h1020', '5002', NULL, '300-000-065', NULL, '화서문', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipM3qYIm3BhSDi56at1UmohD6lzWGDPCmhW4MjQO=s1360-w1360-h1020', '5001', '200-000-073', NULL, NULL, '대전 엑스포 아쿠아리움', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipM4lBhjntHeZZTIRQxpTJJ9JOJR53o2BboVo5M=s1360-w1360-h1020', '5002', NULL, '300-000-031', NULL, '호암지 생태공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipM4SqHHZe6VDlyRQ0JONQnv0k5p_S_m5_DaWzZL=s1360-w1360-h1020', '5001', '200-000-040', NULL, NULL, '삼성혈', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipM5yU3S_D55EvKezau1NBA0bHvek-Xtz36UDe04=s1360-w1360-h1020', '5001', '200-000-118', NULL, NULL, '새소리물소리', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipM6QK4wSnKBNvYJJcIN2_SDOxc7ArqLU-4iUkaA=s1360-w1360-h1020', '5001', '200-000-066', NULL, NULL, '인천상륙작전기념관', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipM9e2cwtGdihJqf8VxrVwfd7-378ZR1WBuDIzKr=s1360-w1360-h1020', '5001', '200-000-037', NULL, NULL, '삼국유사테마파크', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMakeGL2gvcOHXNgUYXV1mlMw_GZMSAmQCp9pOG=s1360-w1360-h1020', '5002', NULL, '300-000-082', NULL, '만석공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMaVntzvjQIBSlqA83IL51VJhu2cDngrsF6kr-y=s1360-w1360-h1020', '5001', '200-000-054', NULL, NULL, '코엑스아쿠아리움', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMEySqq-uWX8xVM6q_PiQpBrpcoM5nxak6IvVU3=s1360-w1360-h1020', '5001', '200-000-107', NULL, NULL, '일산해수욕장', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMf2cve83m8b3UrrrD-ILdAyHJnsHpVyxT92Km4=s1360-w1360-h1020', '5001', '200-000-036', NULL, NULL, '네이처파크', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMfAF3dOEikxx2H45Di7m0JiiDJSRMw_HY0TDPV=s1360-w1360-h1020', '5001', '200-000-080', NULL, NULL, '광주패밀리랜드', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMfKM4kfbFd3v61ufKX0S2wtg4ry6ZTspwNXJrc=s1360-w1360-h1020', '5002', NULL, '300-000-052', NULL, '팔달문', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMflzmE9T1CExtcNhTRIplGv0oofoRWO95TxeEh=s1360-w1360-h1020', '5001', '200-000-106', NULL, NULL, '장생포 고래문화마을', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMguYaX2JwecbYFFcc0GmhaRr8qmJmE5fdhnOJs=s1360-w1360-h1020', '5001', '200-000-124', NULL, NULL, '케리비안베이', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMh9MvYoBwua7keP-Go2bSvUuhCqSGSRwB7WHMJ=s1360-w1360-h1020', '5002', NULL, '300-000-063', NULL, '장안문 ', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMhy4fZ04KfIFoXNehio1zR5C0G9YDicbngtiPs=s1360-w1360-h1020', '5001', '200-000-082', NULL, NULL, '국립광주과학관', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMhYGu4FYtkHyNIA6rbBOorGHJIggF7hdNSGdsl=s1360-w1360-h1020', '5001', '200-000-123', NULL, NULL, '판다월드', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMkiK-bdV7kreDd0zvi7RPKO3YQZOaHErsUuO_l=s1360-w1360-h1020', '5001', '200-000-105', NULL, NULL, '간월재', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMLm-uB27h1eg0berCoZFRjZm2GDoXzDWOc6U2b=s1360-w1360-h1020', '5002', NULL, '300-000-049', NULL, '방화수류정', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMLnCGc0BAwIJcd9KFpW7l4SsWwZLly0MlPceLw=s1360-w1360-h1020', '5001', '200-000-146', NULL, NULL, '디오션 워터파크', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMOGKm2vAXNKK9I5c8itiKVwPEsFzJ_wRxPYSoh=s1360-w1360-h1020', '5001', '200-000-011', NULL, NULL, '광교호수공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMP-LxQRELNUKd80MXaXkH63T-MpH8-A6vRmpkH=s1360-w1360-h1020', '5001', '200-000-010', NULL, NULL, '수원화성', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMpXRXESyhP2iJr0hKJI5dfrATTXEXQltG334aM=s1360-w1360-h1020', '5001', '200-000-002', NULL, NULL, '충주호', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMr6TZE-FZWTgBfhy9ZTlqYycrYAnyqqFLsafYa=s1360-w1360-h1020', '5001', '200-000-067', NULL, NULL, '신포국제시장', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMRc9suxB6Gs6vRvgwIFljKQE2Rmz-2GG8MBLKq=s1360-w1360-h1020', '5001', '200-000-004', NULL, NULL, '충주고구려비', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMRZJ1TSfCZWD0V7kOkSqWPQr6e5oKGtSuN_ZfY=s1360-w1360-h1020', '5002', NULL, '300-000-078', NULL, '수원화성박물관', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMUDI7ypdODAg4h6mXqzDiexrydDcSiveKaCxc8=s1360-w1360-h1020', '5001', '200-000-069', NULL, NULL, '송월동 동화마을', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMW_ZPpreyPH1FY9kTVh34CjjhP13MP_F5FMqWi=s1360-w1360-h1020', '5001', '200-000-178', NULL, NULL, '목포 역사공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMX0eSuPeozWB1yak84KCmmURH6JwmqEEtx6tFL=s1360-w1360-h1020', '5001', '200-000-117', NULL, NULL, '남한산성 전승문(북문)', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMXTGkFzblbcnoqsgugWPbpEMrVIJcBPRefipBa=s680-w680-h510', '5001', '200-000-044', NULL, NULL, '사려니 숲길', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMxtJ4mOvOG9gCHe7VeoGYb-R8E9oPujjxmMwOE=s1360-w1360-h1020', '5002', NULL, '300-000-029', NULL, '호암지 생태공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMXUuiin2hHueY9XtUcBA_7L86_iTMsyaOo3VBy=s1360-w1360-h1020', '5001', '200-000-129', NULL, NULL, '용인농촌테마파크', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipMzeDMCWOpXl8Y8iFxgv7Xkw24yLdmUQ6TSYJuq=s1360-w1360-h1020', '5001', '200-000-013', NULL, NULL, '팔달문', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipM_x8_goHuWy8nf5mes_5QcK8p8XP7qbj83MooL=s1360-w1360-h1020', '5002', NULL, '300-000-028', NULL, '호암지 생태공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipN0gP9i52EXGQHXZBQc9O8atxCU6X5nOhph9JE=s1360-w1360-h1020', '5001', '200-000-171', NULL, NULL, '목포 스카이워크', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipN13ZTQW00G6v3G2IuW_9deYowBTmDpbBoePgoB=s680-w680-h510', '5001', '200-000-029', NULL, NULL, '국립경주박물관', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipN4HkQzekBENOl72EKksw0RcZXt2zT981i5tntj=s680-w680-h510', '5001', '200-000-020', NULL, NULL, '불국사', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipN80bAoB3i0Pcu1AEeUvhf_q0x8iQ7YmGbdMAU=s1360-w1360-h1020', '5001', '200-000-081', NULL, NULL, '펭귄마을', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipN8xM5homE3rbKFJL6cDKRpvjjul9Bw2IpYPyWc=s1360-w1360-h1020', '5002', NULL, '300-000-061', NULL, '장안문 ', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipN934EP86YkMerGwKQvuv3snRKAjZYpQK7KX_P7=s1360-w1360-h1020', '5002', NULL, '300-000-079', NULL, '수원화성박물관', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNbElBKoNe9TFirJcLhTZ5eAixPlsrNnTGTCsQh=s1360-w1360-h1020', '5001', '200-000-077', NULL, NULL, '대전시민천문대', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNbWMcSEJsHIazWejiR08C8oIFmZq6SzvgbCKWI=s1360-w1360-h1020', '5002', NULL, '300-000-051', NULL, '방화수류정', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNcCX3TdnA-P2CGwtroL35DxHl_gCIGPHecwKBW=s1360-w1360-h1020', '5002', NULL, '300-000-030', NULL, '호암지 생태공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNcUZiI9B49QJvU0Q_71uQLiFbj_itir9XfafsZ=s1360-w1360-h1020', '5001', '200-000-042', NULL, NULL, '만장굴', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNd4BvYANzUHfHLI_VrGhjYUvC496W2Pw8nC_Y=s680-w680-h510', '5001', '200-000-024', NULL, NULL, '경주월드', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNd6xEzQDM8qVhmpw8r0SMLnz3oz44F4RgVnA67=s1360-w1360-h1020', '5001', '200-000-125', NULL, NULL, '삼성화재 모빌리티뮤지엄', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNdab34zvfO5aePq_jNBtLiiUHmRxaWH9U1Vjvy=s680-w680-h510', '5001', '200-000-046', NULL, NULL, '비밀의 숲', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNeC0uk8czr4kvDyrT5oB3OzFNeArxvm6gc8OHs=s1360-w1360-h1020', '5002', NULL, '300-000-064', NULL, '화서문', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNE_ZTJTDVtZPZXRgzPqaiPuh21qlpIztKkwWhQ=s1360-w1360-h1020', '5001', '200-000-101', NULL, NULL, '대왕암공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNFLgW5eS2DqkfauZOeO6bKwPEN3zmkbdt_Glnx=s1360-w1360-h1020', '5002', NULL, '300-000-048', NULL, '방화수류정', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNG7japReoPT_fxnb3uoW4gUJqHcqjaHY_vPbxR=s1360-w1360-h1020', '5002', NULL, '300-000-062', NULL, '장안문 ', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNgoN2TFeep1Qg3wRiVw-wr0t2JJlb6J6JvV90T=s1360-w1360-h1020', '5002', NULL, '300-000-102', NULL, '경주교촌마을', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNgTTx5yX6g6Dgj47xzINNpCKhBFrGeWlxTz2Gy=s1360-w1360-h1020', '5001', '200-000-005', NULL, NULL, '충주라바랜드', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNguSr8V9ma-oReNRJp9pDx1veTobkj16ZyArxc=s1360-w1360-h1020', '5001', '200-000-063', NULL, NULL, '수도국산 달동네 박물관', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNHjBHTJ55n_NQbnPTzDMftPDeGPF9fTCAv-bT4=s1360-w1360-h1020', '5002', NULL, '300-000-088', NULL, '만석공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNHYjgI738knaOkubt1zeyPsladtyaC_hyKpXvR=s1360-w1360-h1020', '5002', NULL, '300-000-101', NULL, '경주교촌마을', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNHYjgI738knaOkubt1zeyPsladtyaC_hyKpXvR=s680-w680-h510', '5001', '200-000-025', NULL, NULL, '경주교촌마을', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNI9zrdOQBA2PD-QcFLDQVIbXye2bVIAKXSaEto=s1360-w1360-h1020', '5001', '200-000-119', NULL, NULL, '천주교 분당 성요한 성당', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNjC2dZSDuqr8e-EY1VWRu52Xh8dabVzrbXkC5e=s1360-w1360-h1020', '5001', '200-000-137', NULL, NULL, '진해해양공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNKw9-0XYxSqNdgs3HBLRy5QmQ5yOk9P1NEnmur=s1360-w1360-h1020', '5001', '200-000-091', NULL, NULL, '해동용궁사', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNLypUlE5F_mxh0mhD3SPsv-ZGOzMX6jrjukdty=s1360-w1360-h1020', '5001', '200-000-172', NULL, NULL, '목포 춤추는 바다분수', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNm2LDXFdQ_iSFOItRH_vGrSzgJNL1l9aFWRBky=s1360-w1360-h1020', '5001', '200-000-065', NULL, NULL, '인천 차이나타운', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNoC_dZQfHqNiacq7lEG5uj6PbQAeJ2-Rn7ouE8=s1360-w1360-h1020', '5001', '200-000-145', NULL, NULL, '여수 유월드 루지 테마파크', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNQuYq3HekATSsZXWDtCwBRAA4kGQPh7d6j89Es=s1360-w1360-h1020', '5002', NULL, '300-000-072', NULL, '월화원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNuK0tiIhCoWlTeU6OsCI-YnZ_drRenrJQGer3v=s1360-w1360-h1020', '5001', '200-000-075', NULL, NULL, '상소동 산림욕장', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNWfXUpJECzhxz16B3T_LH5cTAut4V_Kz7nwatm=s1360-w1360-h1020', '5001', '200-000-015', NULL, NULL, '장안문', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNWJISiMoQFHWP5K3x9RxfXX8RuiIU-S4EiOrPW=s1360-w1360-h1020', '5001', '200-000-086', NULL, NULL, '5.18기념공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNYFPo4mF2-mQJx0D-AVZ0Dcm2orgBtNPz_Vhbk=s680-w680-h510', '5001', '200-000-028', NULL, NULL, '경주 양동마을', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNZ6hpX5SVuXIj4i0upzQKZmFUZREB7fxLsXI9C=s1360-w1360-h1020', '5002', NULL, '300-000-053', NULL, '팔달문', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipNZd817YkL6s2Lb5Gxwwm5yMuXd6DE3lqFdxmPf=s1360-w1360-h1020', '5001', '200-000-057', NULL, NULL, '여의도 한강공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipO25OcVdyGDHgPtdTIfA1p_T_mmfQ51kZOUUtms=s1360-w1360-h1020', '5001', '200-000-055', NULL, NULL, '국립고궁박물관', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipO2Jrm7plZV_TAzJhcSq57bW95RrxjWuLnbEGGB=s1360-w1360-h1020', '5001', '200-000-115', NULL, NULL, '신구대학교 식물원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipO2TTfz_LI2nYNvWiBXea5OErSCvA4lwp7I4LQU=s1360-w1360-h1020', '5001', '200-000-131', NULL, NULL, '마산로봇랜드', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipO3jEsVx8gIQkvmcnJCAzA5jOEsBlMOT2kWDH6_=s1360-w1360-h1020', '5001', '200-000-053', NULL, NULL, '국립중앙박물관', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipO5mCP-yzFp7Cix18iuR2uF1vqrBJKpPtTXgj5h=s1360-w1360-h1020', '5001', '200-000-014', NULL, NULL, '화홍문', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipO5YmWorK6x7l1yq8gT1Q0LyIjWfms9N08IgdzR=s1360-w1360-h1020', '5001', '200-000-085', NULL, NULL, '국립광주박물관', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipO7kpgnL7808JELuiS-QfWyEa6jgMs0lTDiIBfY=s1360-w1360-h1020', '5002', NULL, '300-000-056', NULL, '화홍문 ', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipO8aRs_TcVCcJovU-tOtm_H2NrXDSFKDaR__8q0=s680-w680-h510', '5001', '200-000-026', NULL, NULL, '문무대왕릉', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipO8g2r9UTCAmI_o1-Rff-0xXpJJ2l02Ug2wnETP=s1360-w1360-h1020', '5002', NULL, '300-000-060', NULL, '장안문 ', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipO8sQaycAt8zDl4wPfqFM56Pp_kc9LXDkdzNo6X=s1360-w1360-h1020', '5001', '200-000-126', NULL, NULL, '경기도어린이박물관', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipO9mUvXAsZtPai_BHctW825JOG1BB3JPTLpq421=s1360-w1360-h1020', '5001', '200-000-111', NULL, NULL, '율동공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOCnQdHMlgvhQNcRy5qpbc5MJs2axAyMya_f7fF=s1360-w1360-h1020', '5001', '200-000-136', NULL, NULL, '창원의집', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOd7h8EkGGGkC443G2er9RnolmXsghfMSBkGtSP=s1360-w1360-h1020', '5002', NULL, '300-000-071', NULL, '불국사', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOeeq-XIRYP-ABRlxiBK_PhAMoi2Kyon5zscyXL=s1360-w1360-h1020', '5002', NULL, '300-000-055', NULL, '팔달문', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOFRs2Oqtwu_jRPGoHPBR8zP4SgK0aXbBQp5cM5=s1360-w1360-h1020', '5001', '200-000-139', NULL, NULL, '경화역공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOgcWZtw9ZDV7KjUPX-EqMtmhcxxx4MJ68UAz9s=s1360-w1360-h1020', '5002', NULL, '300-000-043', NULL, '수원화성', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOggRWoD_QEnbL6k21lUucE1PKHX7xXaGrrvXxz=s1360-w1360-h1020', '5002', NULL, '300-000-075', NULL, '월화원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOioHyR-lQY5sgiqbuLt9HITn5Ihi69ydLfwTDQ=s1360-w1360-h1020', '5001', '200-000-112', NULL, NULL, '분당 중앙공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOje9zqIBBJxhARYcCXxGL4Qz_9aT8OEVZ5ypro=s1360-w1360-h1020', '5002', NULL, '300-000-067', NULL, '화서문', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOKbg0iswUSFCpsc6kHcMDA_InpTSo3iPrI_1pr=s680-w680-h510', '5001', '200-000-022', NULL, NULL, '석굴암', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOKIhPPKJVoo-XdJul-qJInLaQP3umJsqkMKaC7=s1360-w1360-h1020', '5001', '200-000-061', NULL, NULL, '송도 센트럴파크', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOL8NwsAJPT20bXN3Q-VMEgKEdI5HM3FMWgvIiK=s1360-w1360-h1020', '5001', '200-000-017', NULL, NULL, '월화원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOM3vgYj83W5is9M-1So514-Gs1rgYJW2xgI3N4=s1360-w1360-h1020', '5001', '200-000-090', NULL, NULL, '감천문화마을', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOM4HKt4PsC7nzxRQFCj_AXzP3a389J-PSQPVNZ=s1360-w1360-h1020', '5001', '200-000-016', NULL, NULL, '화서문', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOmqaVfxwnMSWbTVeK8fpmOBslNaEkUNKuR5Asz=s1360-w1360-h1020', '5001', '200-000-033', NULL, NULL, '83타워', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOMuFUoP2yH3mxt4ERg2J4pC7DkP8r-eAXu70BU=s1360-w1360-h1020', '5001', '200-000-051', NULL, NULL, '서울식물원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOnVhT9EP8eK5ZaEuaTRMOOUpB8fefo79L5DZYC=s1360-w1360-h1020', '5001', '200-000-070', NULL, NULL, '국립중앙과학관', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOOCLt5PUKNxEQkrDYkR1H7cnWYpR2jI6gQerAo=s1360-w1360-h1020', '5001', '200-000-034', NULL, NULL, '국립대구박물관', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOpCXuzVW1DH5XKF-nxMbBpTRYWaryJkiOBLI9V=s680-w680-h510', '5001', '200-000-021', NULL, NULL, '동궁과 월지(안압지)', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOPKCsHJnDINLRZcizRDHAqPWRiOyiGuuWoLMXT=s1360-w1360-h1020', '5002', NULL, '300-000-054', NULL, '팔달문', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOQ3XGCFA9RjJYaoHMkTLSg6RLL5g5zIxcZwDap=s1360-w1360-h1020', '5002', NULL, '300-000-040', NULL, '수원화성', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOqlomhHhuOxEsayMQgIBzS5Gy7L4Usd_B15l4x=s1360-w1360-h1020', '5001', '200-000-130', NULL, NULL, '용인대장금파크', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOr4KKdHLJShYvAwL720rlzdgHPZsX_kG6jwPAL=s1360-w1360-h1020', '5002', NULL, '300-000-069', NULL, '불국사', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOrygJK6wC3oov53N5yrChYw7ibgL7YAz1A3qco=s1360-w1360-h1020', '5001', '200-000-068', NULL, NULL, '인천대교', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOSjsR2shBoGign9UQWGwunhn0wUnbHa76T2rCS=s1360-w1360-h1020', '5001', '200-000-052', NULL, NULL, '롯데월드 어드벤처', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOtDJ2D6l_l0FHqmDQlB1c_-Nwbec9COWi37la4=s1360-w1360-h1020', '5002', NULL, '300-000-041', NULL, '수원화성', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOTzaRQm_DG8uYS73UY2T7ijF66kbJi7n6V_64r=s1360-w1360-h1020', '5002', NULL, '300-000-103', NULL, '경주교촌마을', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOu0bau7MZuP9UT-BeQEpwd0XkM7Mok39afupoM=s1360-w1360-h1020', '5002', NULL, '300-000-058', NULL, '화홍문 ', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOwUSlF0Ep_hcuMNDRL0dZQ3WAW_msLu18qwlL8=s1360-w1360-h1020', '5001', '200-000-032', NULL, NULL, '대구아쿠아리움', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOYeZPXPI2Bz5_MiqM7wMo-mQiGFhcydkMLDkjl=s1360-w1360-h1020', '5002', NULL, '300-000-076', NULL, '수원화성박물관', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipOZw0mkUGamIXHvCq2A5Ba0xPjcW8ymM-P-bh_r=s1360-w1360-h1020', '5002', NULL, '300-000-074', NULL, '월화원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipO_ptML9uu1BTakWnwZvstDH4aWLYrJaWjaz2rp=s1360-w1360-h1020', '5001', '200-000-012', NULL, NULL, '방화수류정', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipP-eW8foXmNFoWsOp2dnTyt4BMhp7iiSzTLtThn=s1360-w1360-h1020', '5002', NULL, '300-000-066', NULL, '화서문', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipP-R7RlOht_aLBlCzJF8rZ8zjaIXIeXj4ZXOjEg=s1360-w1360-h1020', '5001', '200-000-003', NULL, NULL, '중앙탑사적공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipP0TEYjbQOMII3VbvvP6_zMf1ETrQv41X5OfuM4=s1360-w1360-h1020', '5001', '200-000-140', NULL, NULL, '마빈온천', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipP2LQDefthNled7iiCFcV5ONpsXxa8uBch8LUsQ=s1360-w1360-h1020', '5001', '200-000-074', NULL, NULL, '대전오월드', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipP3Rk8ipOd5lYvvedgTgTj82t0ooKnTUmovB6zo=s680-w680-h510', '5001', '200-000-023', NULL, NULL, '첨성대', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipP4ZmaE_ve101Dhnzt0CaqatXIyc2LCtjNyPJzU=s1360-w1360-h1020', '5001', '200-000-076', NULL, NULL, '대전광역시어린이회관', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipP7N-mHHHCI_PRAR6mnyUSzOVfzmwjl-A6lPk9d=s1360-w1360-h1020', '5001', '200-000-072', NULL, NULL, '장태산자연휴양림', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipP8ck3fbysiPzJ_HRP6AbS_rhkN_8ycZPguldec=s1360-w1360-h1020', '5001', '200-000-059', NULL, NULL, '북촌 한옥마을', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipP9YqotkSoJkKolX1bchOrkSadtKY68XzogZ6hZ=s1360-w1360-h1020', '5001', '200-000-018', NULL, NULL, '만석공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPA6XfiI7w7nRLxjJfuHH8DX9l2RBG3fPGi6Pq_=s1360-w1360-h1020', '5001', '200-000-108', NULL, NULL, '울산대교 전망대', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPb6-MNUx2WsJbdndpYMVEto19YvC91HsexjzLf=s1360-w1360-h1020', '5002', NULL, '300-000-057', NULL, '화홍문 ', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPBtfmyiz9HQEIwwg6ms0LZFRIdBojRC5EPu9wn=s1360-w1360-h1020', '5002', NULL, '300-000-068', NULL, '불국사', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPC5ISXLMHKPV-q-GG8a_XREG4JrxIqICgkrvHY=s1360-w1360-h1020', '5002', NULL, '300-000-050', NULL, '방화수류정', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPcsKdJ3ncS4fyufqFInTV28Azb0fsmwcEZGI5M=s1360-w1360-h1020', '5001', '200-000-084', NULL, NULL, '광주시립수목원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPDGlAEQN4PLA-Cd2lukHspFUar0GJVvJPpnnjx=s1360-w1360-h1020', '5002', NULL, '300-000-081', NULL, '만석공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPDgu9Zvhjsn4LiZifq3cEBsghN4a-Fbs-4WBrW=s1360-w1360-h1020', '5001', '200-000-039', NULL, NULL, '워터파크 스파밸리', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPDtAdYdgiU_P9K2adHST-c0dVqbVrwt-vefIwA=s1360-w1360-h1020', '5001', '200-000-138', NULL, NULL, '단감테마공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPeDEGKJzBlwEMrEyPpJgq4lXpz4I_mLfuXHKki=s1360-w1360-h1020', '5002', NULL, '300-000-100', NULL, '경주교촌마을', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPe_E7VQV3MYNgk5xegtjT5VUdMXL1nLqukFs0c=s1360-w1360-h1020', '5001', '200-000-104', NULL, NULL, '태화강 십리 대숲', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPF6CpPf8MquA6yu5CG3HKH0J2Nqq6ibXe3Iekv=s1360-w1360-h1020', '5001', '200-000-000', NULL, NULL, '활옥 동굴', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPF9Xp1Ag_FmUuQR6qakuR_BF8goXl_2a3gIczV=s1360-w1360-h1020', '5001', '200-000-110', NULL, NULL, '울주 대곡리 반구대 암각화', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPFDPf5pzvBjQUe1kJurOW9_oEvbixjquZdQ73-=s1360-w1360-h1020', '5001', '200-000-019', NULL, NULL, '수원화성박물관', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPGe10kLsbTeZNulTnUU-5P9j3vcoXlYJpqzC4y=s1360-w1360-h1020', '5001', '200-000-079', NULL, NULL, '대전시립박물관', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPhE0WzxAcL1DSaetuahnqZt9qvwISvOiL0w5ZW=s1360-w1360-h1020', '5001', '200-000-088', NULL, NULL, '광주역사민속박물관', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPIGe7H6-iM7nCMkeBOX4tDTr4NEsJLKUbLVv7n=s1360-w1360-h1020', '5002', NULL, '300-000-070', NULL, '불국사', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPIMQZ7-rA6af0zj-POhs8zT9KW2UFgTBbo87YP=s1360-w1360-h1020', '5001', '200-000-038', NULL, NULL, '앞산해넘이전망대', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPlg25tZDLtKXLgWxjh729OqGis55EzDn5DQV9o=s1360-w1360-h1020', '5001', '200-000-132', NULL, NULL, '해양드라마세트장', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPm2zALsjnREUeRLOIbJWfa3GLiQn2_0ltT7Qtl=s1360-w1360-h1020', '5001', '200-000-031', NULL, NULL, '송해공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPmaI7Frsq5nxzIHAMNvkmBuO6dMceZaCH4dFlF=s680-w680-h510', '5001', '200-000-027', NULL, NULL, '경주 동궁원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPmIrUqDmcwBaGdrasHPIohROg9Hpl9p7FREN7w=s680-w680-h510', '5001', '200-000-114', NULL, NULL, '희망대공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPmJjadU2JK7OYdcuDGpcfwzRFXPA530J6F-DfI=s1360-w1360-h1020', '5002', NULL, '300-000-059', NULL, '화홍문 ', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPNE4nnMBV_Bh57fnCPwOMv-eAF-6IUqQYlPnjd=s1360-w1360-h1020', '5001', '200-000-170', NULL, NULL, '철원 놈스톤화덕피자앤파스타', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPO8aH1h34lmYHdCt4nmuKxRJZXlwLn7PWOcasC=s1360-w1360-h1020', '5002', NULL, '300-000-042', NULL, '수원화성', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPocbvec5yKeB75qzISRRfCtCidfOixn8Y_y1Kx=s1360-w1360-h1020', '5001', '200-000-035', NULL, NULL, '국채보상운동기념공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPoQTdCqFg3jZeglVxztfoujW1nekbAJAxnXOei=s1360-w1360-h1020', '5002', NULL, '300-000-073', NULL, '월화원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPpxqk-Lp19GNlOs0bTTMYj1uD3HQhvVzDE155n=s1360-w1360-h1020', '5001', '200-000-144', NULL, NULL, '좌수영바게트버거', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPRDXZj55bkZWtcVA9ZpGtnNtV-FHNFdLvEwePT=s1360-w1360-h1020', '5001', '200-000-058', NULL, NULL, '서울역사박물관', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPswr2xF2yooEjSE8BQjIqYgb4cHlOYaat4OLjw=s1360-w1360-h1020', '5001', '200-000-122', NULL, NULL, '한국민속촌', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPtAA7AY3D7KNxL1WVE2syKNnYqNYYc4hjsJJr2=s1360-w1360-h1020', '5002', NULL, '300-000-080', NULL, '만석공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPU-H2oI0p3Zr4Hup__n8URHCKgzktiP-pVZNyP=s1360-w1360-h1020', '5001', '200-000-001', NULL, NULL, '고구려 과학관', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPUZLlUq7o_QR0L9iG002Se6QIDDK1q8-zTPmTT=s1360-w1360-h1020', '5001', '200-000-062', NULL, NULL, '자유공원', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPW90QoyiK6kvTIkYqXXLU4UlYdlieA_vvSSUrt=s1360-w1360-h1020', '5002', NULL, '300-000-077', NULL, '수원화성박물관', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPwPA53WheounnHGFFnH0wrkYSBH76FT-DyGBvf=s1360-w1360-h1020', '5001', '200-000-030', NULL, NULL, '이월드', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPZf_DlYrO0SFLetExV9Cf-wqzG-K_0JRWCrBN4=s1360-w1360-h1020', '5001', '200-000-143', NULL, NULL, '아쿠아플라넷 여수', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPzheZ12AmnlFxBqW_lEei70C05uB3dQM8B8TXL=s1360-w1360-h1020', '5001', '200-000-089', NULL, NULL, '광주시민의 숲', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/p/AF1QipPz_mOrz6cigpLtkikuQInuDHmlZ7JFJ-wf_qQY=s1360-w1360-h1020', '5001', '200-000-078', NULL, NULL, '천연기념물센터', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/proxy/aQk4b5nwNZIuWm5vpXG0IY7H7dVQtfKyi_tmBfBq9XC4F-aG4MAZXdYbnAjhA77Z-7289F59vpBdS_Wx1CtzRAUDirIlqSUJkWB71V_wog', '5001', '200-000-176', NULL, NULL, '목포 유달산', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/proxy/CVezhnXWAIY6afEijksjx5QGLBggtUbOCfL_092_LG-F5u-x7AvAbjAjn3io8qcrPRrBhioY5BXuxC7g03eELWyYgLx-3DT09mXTSzYYgcS9zuZ48DJm19h-WTHjhoP36XpwONnWedhPh5OwYFdB6OxpOMQYWP1X', '5001', '200-000-155', NULL, NULL, '전주 이팝나무 기찻길', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/proxy/ucRnoyGfvEDd2SLxIktYx3q4FyRubNiIP5XEAxtrXZONVZKuF_qrqTdxoRBvCLrOiamUqG0LQNwZ2j_43uVPs6QCE611Co-31WjNn4p0uq5FTQBV8uWQtqLTuX4nRmOniJAauTbYl1O-5MDBa7odpn4', '5002', NULL, '300-000-036', NULL, '계명산 캠핑장', NULL);
INSERT INTO `image` VALUES ('https://lh3.googleusercontent.com/proxy/uH2lBMUGicCcaTmNOkYAPJmEBkbQTQCVs6UJBHalLZKMAbnEtcK8OFeyu9YQw_2dkwmjILSw9wXsOgLQEB261dGEBtqlzSpw4nl-M1LjA9-S4vnAWMl5QywoWZw8TUHxFJzmwpLhVNrcODSV8_zrpaF3QTzU', '5001', '200-000-158', NULL, NULL, '국립전주박물관', NULL);
INSERT INTO `image` VALUES ('https://lh5.googleusercontent.com/p/AF1QipNN8075Bl96s7vBu4be5cfWmhbs5SVvKID1s9Y7=w408-h306-k-no', '5001', '200-000-006', NULL, NULL, '충주댐', NULL);
INSERT INTO `image` VALUES ('https://m.segye.com/content/image/2022/10/07/20221007514643.jpg', '5002', NULL, '300-000-021', NULL, '충주고구려비', NULL);
INSERT INTO `image` VALUES ('https://mblogthumb-phinf.pstatic.net/20120727_289/kwontor55_1343397647093vQ58k_JPEG/%C8%B2%C5%E4%B1%BCDSC_5493.jpg?type=w420', '5001', '200-000-185', NULL, NULL, '울릉도 황토구미 동굴', NULL);
INSERT INTO `image` VALUES ('https://mblogthumb-phinf.pstatic.net/MjAxODA1MjBfMjIg/MDAxNTI2NzgyNTU1MjAw._tnEwJUqbV_gbaiIfWQwV0wPEVE-Qhei_6lT7leWYtAg.zGKVvPkfaGzdWNzjF171Y5e-Syhuzlaa3-CInKNyYZcg.JPEG.woals111/20180519_151735.jpg?type=w800', '5001', '200-000-083', NULL, NULL, '우치공원 동물원', NULL);
INSERT INTO `image` VALUES ('https://mblogthumb-phinf.pstatic.net/MjAxODA4MDJfMjM1/MDAxNTMzMTkxOTQzMDcw.1epj1Uf8N8tYip285Dq0RhIHyjzcp1Ge8zUBph368Wsg.-4NzzfBL1JC8C6DGBr8Ha0NEQweIH-1Ixi1y9HQR_skg.JPEG.kcgnmpa/3.JPG?type=w800', '5001', '200-000-150', NULL, NULL, '만성리검은모래해변', NULL);
INSERT INTO `image` VALUES ('https://mblogthumb-phinf.pstatic.net/MjAxOTA2MTBfMTk4/MDAxNTYwMTQ4NTg4Mzkw.tRqDbwnmZr0DaFGGw_vaPIJCsjsg0YEp4qVn336N49wg.qRkTgmlwbBuNIUPLDONTu9q_rZ_LTxQplXg2wfQycWog.JPEG.jcjkks/20190509-DSC07812.jpg?type=w800', '5001', '200-000-154', NULL, NULL, '전주 오송제 생태공원', NULL);
INSERT INTO `image` VALUES ('https://mblogthumb-phinf.pstatic.net/MjAxOTA5MDZfMjE2/MDAxNTY3NzQ5MTg4Mjkz.1K1zZuZP1VOAgxNeOqqdhDUNuvAeN-sn0IXbiQd1f2Qg.qC4FO8ZJAtqQhniFcwyEQT7SsOX_LECencgjCAvFKsQg.JPEG.findjeju/SE-84ccd09e-df0b-4db2-ad9f-8e609e30da95.jpg?type=w800', '5001', '200-000-049', NULL, NULL, '도두동 무지개해안도로', NULL);
INSERT INTO `image` VALUES ('https://mblogthumb-phinf.pstatic.net/MjAxOTEyMjZfMjUw/MDAxNTc3MzMxMTc1Nzcw.FKvQrVN902JmjYH7afrNoBEGRjrCdBMJZw2hAOAu_5kg.c1f0uzVZDflccQzvXz8u2mqYsRRhEMczLUD8x_9MR1Mg.JPEG.austinwine/20191125_161017.jpg?type=w800', '5001', '200-000-152', NULL, NULL, '전주남부시장', NULL);
INSERT INTO `image` VALUES ('https://mblogthumb-phinf.pstatic.net/MjAyMjA3MjhfMjM5/MDAxNjU4OTQ0MDI1NzE2.RwCFL3H3bERzBcU4Kl8WR6SafEOJOWw4tgkPOHd-KvAg.QkbRuHJtaf1EGQe1Y6v69JCcTuDF18IFSzAg8ZcHM90g.JPEG.mainsource/SE-51FB60BB-F643-42F9-A43A-C8CDEBD9EB47.jpg?type=w800', '5001', '200-000-148', NULL, NULL, '이사부크루즈 국동유람선', NULL);
INSERT INTO `image` VALUES ('https://mblogthumb-phinf.pstatic.net/MjAyMjA5MThfMjY4/MDAxNjYzNTA5ODIwNzg2.ebanxscScOmHa6tGtAcsZJ5CML5gB1eZ0rI3TcOUf_gg.-LpWE1kYRm4E_483PKbYYCgLui2F_qT1ORXYWR2-rD4g.JPEG.suk4408/20220915_192436_1.jpg?type=w800', '5002', NULL, '300-000-086', NULL, '동궁과 월지', NULL);
INSERT INTO `image` VALUES ('https://mblogthumb-phinf.pstatic.net/MjAyMjEwMjdfMjEg/MDAxNjY2ODc1NTQwMTI3.GMduTM0NCfUM9AsHeAkzqFzs6koUuViEtSH1dpak1bEg.dC6bFBb0aOE-5dBsTY39xfe6L9qAg-E9QYL-QMjUo1Eg.JPEG.olbom/20221017%EF%BC%BF173638.jpg?type=w800', '5001', '200-000-169', NULL, NULL, '철원 두루웰 숲속문화촌', NULL);
INSERT INTO `image` VALUES ('https://mblogthumb-phinf.pstatic.net/MjAyMjExMDFfMzkg/MDAxNjY3MjgwOTI0NzYw.yhJ2QIeDIOCy8glmMekTxRn1i-PoShZGygPKyv1xd04g.4wV_wretJTcgyZuhG6Etwn0m6mRhBjb53r1LPF4izxQg.JPEG.goodchungju/%EC%82%AC%EC%A7%841.jpg?type=w800', '5002', NULL, '300-000-009', NULL, '고구려과학관', NULL);
INSERT INTO `image` VALUES ('https://mblogthumb-phinf.pstatic.net/MjAyMTA2MDlfMjMg/MDAxNjIzMjQwNzIyNzk0.3ho8XNVrd1z2n9CcetrllargBJaLsWnewtMBZOD-CW4g.GS8f424mLxG7pbY4k6WlVmYtApUE63M2GTOjtmq2LpIg.JPEG.kayak71/P1978665.JPG?type=w800', '5001', '200-000-133', NULL, NULL, '진해드림파크', NULL);
INSERT INTO `image` VALUES ('https://mblogthumb-phinf.pstatic.net/MjAyMTA2MTdfMjE3/MDAxNjIzOTA4OTgwODk4.f8oDTfcjdRkeiVwouZQeHpFgm2rp1b2nhqZEIaqxwysg.Gkpt4hnxtumAMSz5C69VI3zlMMXKWx716vhMvuAcM48g.JPEG.6a_daddy/SE-fd00d79c-3f0a-4c23-9017-e128ec4c403c.jpg?type=w800', '5002', NULL, '300-000-085', NULL, '동궁과 월지', NULL);
INSERT INTO `image` VALUES ('https://mblogthumb-phinf.pstatic.net/MjAyMTExMjRfMjIx/MDAxNjM3NzI1NzIxODc3.vOrSD4srZzImAFM9WfR_d8jf1WmHJojg4DlhyGU415Qg.BiGF48IpPsUv9WsMw0nnHn4OnCon00bHFIPPM0Sm7b8g.JPEG.bl85219/IMG%EF%BC%BF20211106%EF%BC%BF163141.jpg?type=w800', '5001', '200-000-166', NULL, NULL, '철원 소이산 전망대', NULL);
INSERT INTO `image` VALUES ('https://mblogthumb-phinf.pstatic.net/MjAyMzAzMTlfMjg4/MDAxNjc5MjMzNjQyMjg5.CUna-wt4syIWjuvuy2iOuYpYGSP4cxUV1CwZhn7DFckg.Igl9ettFlFyYbNalSt2nhECa_8UHWjZ8x5nbMwnk-X4g.JPEG.hororok2020/3472502646327154240_20230319221055015.JPG?type=w800', '5001', '200-000-161', NULL, NULL, '철원 평화전망대', NULL);
INSERT INTO `image` VALUES ('https://mblogthumb-phinf.pstatic.net/MjAyMzExMDFfMzAg/MDAxNjk4ODA0MTUzODIy.Z-2YIPbHJ2LAT69TK_sjRubI5EwqS8-ePkXHfsNDjpQg.OQZ8Qe_261tyu-8wy4XypYMHc7B8BPSesjHQYsuNvOUg.JPEG.suk4408/20231005_185939.jpg?type=w800', '5002', NULL, '300-000-087', NULL, '동궁과 월지', NULL);
INSERT INTO `image` VALUES ('https://media.triple.guide/triple-cms/c_limit,f_auto,h_1024,w_1024/33be50e1-80f2-459a-a978-1ec248f21a5b.jpeg', '5001', '200-000-098', NULL, NULL, '다이아몬드타워 (부산타워)', NULL);
INSERT INTO `image` VALUES ('https://netbus.co.kr/files/thumbnails/666/005//377/007/98378f59c710ed00f1081c63dd71fd41_r720x480.png', '5001', '200-000-165', NULL, NULL, '철원 순담계곡', NULL);
INSERT INTO `image` VALUES ('https://ocamp.net/files/cache/5f/28/5f288f11b71930af19fcf0cefdc3b2be.jpg', '5002', NULL, '300-000-038', NULL, '계명산 캠핑장', NULL);
INSERT INTO `image` VALUES ('https://ojsfile.ohmynews.com/STD_IMG_FILE/2010/0607/IE001205663_STD.jpg', '5001', '200-000-159', NULL, NULL, '전주 동고산성', NULL);
INSERT INTO `image` VALUES ('https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/201207/12/htm_2012071219037003720.jpg', '5002', NULL, '300-000-023', NULL, '충주고구려비', NULL);
INSERT INTO `image` VALUES ('https://post-phinf.pstatic.net/MjAyMTA3MTVfMjYg/MDAxNjI2MzI3ODg5MTk5.cGGMS6fOysg90PX05ruXzqux93YdsUsh7bSRa_VghOYg.OgxPTLePZHbG4xAcgfLKtg3ZMN8XtyXdDwiVr1DYlp8g.JPEG/output_3318088792.jpg?type=w800_q75', '5002', NULL, '300-000-033', NULL, '수안보 온천 관광특구', NULL);
INSERT INTO `image` VALUES ('https://snvision.seongnam.go.kr/imgdata/snvision/202210/2022102757467284.jpg', '5001', '200-000-116', NULL, NULL, '율동공원책테마파크', NULL);
INSERT INTO `image` VALUES ('https://static.news.zumst.com/images/51/2019/12/08/d77071ca3d9d452ca4492cd4553eeff2.jpg', '5001', '200-000-179', NULL, NULL, '목포 시화골목길', NULL);
INSERT INTO `image` VALUES ('https://t1.daumcdn.net/cfile/tistory/211FA050587E1A0728', '5002', NULL, '300-000-084', NULL, '동궁과 월지', NULL);
INSERT INTO `image` VALUES ('https://t1.daumcdn.net/cfile/tistory/23597D435432274805', '5002', NULL, '300-000-035', NULL, '수안보 온천 관광특구', NULL);
INSERT INTO `image` VALUES ('https://t1.daumcdn.net/cfile/tistory/9942DC435BBAE4F519', '5001', '200-000-121', NULL, NULL, '에버랜드', NULL);
INSERT INTO `image` VALUES ('https://t1.daumcdn.net/cfile/tistory/9970233E5B9F5AC12B', '5001', '200-000-163', NULL, NULL, '철원 백마고지 전적지', NULL);
INSERT INTO `image` VALUES ('https://t1.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/2NR7/image/zEoEaWHp4emXmZpFptO703jkN28.jpg', '5001', '200-000-156', NULL, NULL, '전주한지박물관', NULL);
INSERT INTO `image` VALUES ('https://t1.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/6pEv/image/f2PL7O3jOcNxn-Df8PkbC-foUCQ.jpg', '5001', '200-000-050', NULL, NULL, '큰엉해안경승지', NULL);
INSERT INTO `image` VALUES ('https://tong.visitkorea.or.kr/cms/resource/39/1135739_image2_1.jpg', '5001', '200-000-168', NULL, NULL, '철원 매월대폭포', NULL);
INSERT INTO `image` VALUES ('https://tong.visitkorea.or.kr/cms/resource/71/2034671_image2_1.jpg', '5001', '200-000-167', NULL, NULL, '철원 구 제일교회', NULL);
INSERT INTO `image` VALUES ('https://tour.jb.go.kr/attachfiles/ctnt/20160919/20160919173018497.jpg', '5001', '200-000-160', NULL, NULL, '전주한옥 레일바이크', NULL);
INSERT INTO `image` VALUES ('https://upload.wikimedia.org/wikipedia/commons/2/2a/Yeosu_Odongdo_20180929_002.jpg', '5001', '200-000-141', NULL, NULL, '오동도', NULL);
INSERT INTO `image` VALUES ('https://upload.wikimedia.org/wikipedia/commons/8/81/Gg_08.png', '5002', NULL, '300-000-044', NULL, '광교호수공원', NULL);
INSERT INTO `image` VALUES ('https://upload.wikimedia.org/wikipedia/commons/b/b2/%EC%95%BD%EC%B2%9C%EC%82%AC1.jpeg', '5001', '200-000-047', NULL, NULL, '약천사', NULL);
INSERT INTO `image` VALUES ('https://www.gyeongju.go.kr/upload/content/thumb/20200324/EB23B5F099F24FDFAB413CDC32EFC039.jpg', '5002', NULL, '300-000-090', NULL, '석굴암', NULL);
INSERT INTO `image` VALUES ('https://www.gyeongju.go.kr/upload/content/thumb/20200625/D2B1B07FDDAE42639D179009999E5017.jpg', '5002', NULL, '300-000-097', NULL, '경주월드', NULL);
INSERT INTO `image` VALUES ('https://www.inews365.com/data/photos/200806/pp_37323_1.jpg', '5002', NULL, '300-000-010', NULL, '고구려과학관', NULL);
INSERT INTO `image` VALUES ('https://www.inews365.com/data/photos/20200103/art_15790531770969.jpg', '5002', NULL, '300-000-018', NULL, '중앙탑사적공원', NULL);
INSERT INTO `image` VALUES ('https://www.jbnews.com/news/photo/202208/1367884_1174438_2728.jpg', '5002', NULL, '300-000-027', NULL, '충주댐', NULL);
INSERT INTO `image` VALUES ('https://www.jejumobile.kr/datas/b6914338e57f12b6ec9c693a35b56c5a.jpg', '5001', '200-000-045', NULL, NULL, '스누피 가든', NULL);
INSERT INTO `image` VALUES ('https://www.koya-culture.com/data/photos/20170518/art_14938210988903_fb3a82.jpg', '5002', NULL, '300-000-020', NULL, '충주고구려비', NULL);
INSERT INTO `image` VALUES ('https://www.ktsketch.co.kr/news/photo/201904/3532_10879_4937.jpg', '5001', '200-000-160', NULL, NULL, '전주 한옥레일바이크', NULL);
INSERT INTO `image` VALUES ('https://www.ktsketch.co.kr/news/photo/202206/7078_35393_949.jpg', '5001', '200-000-109', NULL, NULL, '간절곶', NULL);
INSERT INTO `image` VALUES ('https://www.lavalsehotel.co.kr/storage/app/public/lavalse/contents/documents/ko/3aa79af3-065d-4b69-bd49-22c6ba5cdcd3/db/6e/201909200945095d71fc83087891b84263425dd8556be9139194ba.jpg', '5001', '200-000-092', NULL, NULL, '\r\n태종대유원지', NULL);
INSERT INTO `image` VALUES ('https://www.much.go.kr/cooperation/images/introimg_dok.jpg', '5001', '200-000-182', NULL, NULL, '울릉도 독도박물관', NULL);
INSERT INTO `image` VALUES ('https://www.seamuse.go.kr/images/mokpo/kr/page/img_info1.png', '5001', '200-000-173', NULL, NULL, '목포 국립해양문화재연구소', NULL);
INSERT INTO `image` VALUES ('https://www.shouse.garden/data/photo/s210805_1437464464.jpeg', '5001', '200-000-135', NULL, NULL, '진해 보타닉뮤지엄', NULL);
INSERT INTO `image` VALUES ('https://www.snart.or.kr/rental/concerthall/info/process.print.do?TP=img&sq=10481', '5001', '200-000-113', NULL, NULL, '성남아트센터', NULL);
INSERT INTO `image` VALUES ('https://www.tournews21.com/news/photo/201912/40691_71550_13.jpg', '5001', '200-000-174', NULL, NULL, '목포 구목포 근대역사관 제1관', NULL);
INSERT INTO `image` VALUES ('https://www.ulsan.go.kr/s/storyCms/garden/assets/images/main/m_visual_01.jpg', '5001', '200-000-102', NULL, NULL, '태화강 국가정원', NULL);
INSERT INTO `image` VALUES ('https://www.visitbusan.net/uploadImgs/files/cntnts/20191222164810698_oen', '5001', '200-000-095', NULL, NULL, '흰여울문화마을', NULL);
INSERT INTO `image` VALUES ('https://www.visitbusan.net/uploadImgs/files/cntnts/20191229145729221_oen', '5001', '200-000-094', NULL, NULL, '용두산공원', NULL);
INSERT INTO `image` VALUES ('https://www.visitbusan.net/uploadImgs/files/cntnts/20191229160530047_oen', '5001', '200-000-099', NULL, NULL, '광안리해수욕장', NULL);
INSERT INTO `image` VALUES ('https://www.visitbusan.net/uploadImgs/files/cntnts/20230508183215090_wufrotr', '5001', '200-000-093', NULL, NULL, '송도해상케이블카', NULL);
INSERT INTO `image` VALUES ('https://www.woorinews.co.kr/news/photo/202309/42032_43958_5352.jpg', '5002', NULL, '300-000-011', NULL, '고구려과학관', NULL);
INSERT INTO `image` VALUES ('https://www.yeongnam.com/mnt/file/201703/20170310.010330821110001i1.jpg', '5002', NULL, '300-000-013', NULL, '충주호', NULL);

-- ----------------------------
-- Table structure for image_cls
-- ----------------------------
DROP TABLE IF EXISTS `image_cls`;
CREATE TABLE `image_cls`  (
  `i_cls_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `i_cls_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '사이트 이미지\r\n고객지원 이미지\r\n여행지 이미지\r\n여행상품 이미지\r\n후기글 이미지',
  PRIMARY KEY (`i_cls_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image_cls
-- ----------------------------
INSERT INTO `image_cls` VALUES ('5001', NULL);
INSERT INTO `image_cls` VALUES ('5002', '후기');

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review`  (
  `rv_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `des_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rv_title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rv_cont` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rv_like` int(11) NULL DEFAULT 0,
  `rv_date` date NULL DEFAULT NULL,
  `rv_mdate` date NULL DEFAULT NULL,
  PRIMARY KEY (`rv_code`, `des_code`) USING BTREE,
  INDEX `FK1`(`des_code`) USING BTREE,
  INDEX `rv_code`(`rv_code`) USING BTREE,
  INDEX `FK2`(`user_email`) USING BTREE,
  CONSTRAINT `FK1` FOREIGN KEY (`des_code`) REFERENCES `destination` (`des_code`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK2` FOREIGN KEY (`user_email`) REFERENCES `user` (`user_email`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of review
-- ----------------------------
INSERT INTO `review` VALUES ('300-000-000', '200-000-005', 'USER_001@gmail.com', '라바랜드 후기', '국무총리 또는 행정각부의 장은 소관사무에 관하여 법률이나 대통령령의 위임 또는 직권으로 총리령 또는 부령을 발할 수 있다. 선거운동은 각급 선거관리위원회의 관리하에 법률이 정하는 범위안에서 하되, 균등한 기회가 보장되어야 한다. 모든 국민은 주거의 자유를 침해받지 아니한다. 주거에 대한 압수나 수색을 할 때에는 검사의 신청에 의하여 법관이 발부한 영장을 제시하여야 한다.', 0, '2024-02-01', NULL);
INSERT INTO `review` VALUES ('300-000-001', '200-000-005', 'USER_002@gmail.com', '라바 후기', '모든 국민은 근로의 의무를 진다. 국가는 근로의 의무의 내용과 조건을 민주주의원칙에 따라 법률로 정한다. 국무위원은 국정에 관하여 대통령을 보좌하며, 국무회의의 구성원으로서 국정을 심의한다. 모든 국민은 법률이 정하는 바에 의하여 선거권을 가진다. 정당의 설립은 자유이며, 복수정당제는 보장된다.', 0, '2024-02-01', NULL);
INSERT INTO `review` VALUES ('300-000-002', '200-000-005', 'USER_003@gmail.com', '라바랜드 갔다옴', '이 헌법공포 당시의 국회의원의 임기는 제1항에 의한 국회의 최초의 집회일 전일까지로 한다. 대통령의 임기연장 또는 중임변경을 위한 헌법개정은 그 헌법개정 제안 당시의 대통령에 대하여는 효력이 없다. 중앙선거관리위원회는 대통령이 임명하는 3인, 국회에서 선출하는 3인과 대법원장이 지명하는 3인의 위원으로 구성한다. 위원장은 위원중에서 호선한다.', 0, '2024-02-01', NULL);
INSERT INTO `review` VALUES ('300-000-003', '200-000-000', 'USER_004@gmail.com', '활옥동굴은 정말 쉬원했어요!', '각급 선거관리위원회의 조직·직무범위 기타 필요한 사항은 법률로 정한다. 모든 국민은 거주·이전의 자유를 가진다. 법률은 특별한 규정이 없는 한 공포한 날로부터 20일을 경과함으로써 효력을 발생한다.\r\n\r\n한 회계연도를 넘어 계속하여 지출할 필요가 있을 때에는 정부는 연한을 정하여 계속비로서 국회의 의결을 얻어야 한다. 연소자의 근로는 특별한 보호를 받는다.', 0, '2024-01-02', NULL);
INSERT INTO `review` VALUES ('300-000-004', '200-000-000', 'USER_005@gmail.com', '여름을 이겨내게 해준 나만의 동굴!', '헌법재판소는 법관의 자격을 가진 9인의 재판관으로 구성하며, 재판관은 대통령이 임명한다. 행정각부의 장은 국무위원 중에서 국무총리의 제청으로 대통령이 임명한다.\r\n\r\n군사재판을 관할하기 위하여 특별법원으로서 군사법원을 둘 수 있다. 모든 국민은 그 보호하는 자녀에게 적어도 초등교육과 법률이 정하는 교육을 받게 할 의무를 진다.', 0, '2024-01-05', NULL);
INSERT INTO `review` VALUES ('300-000-005', '200-000-005', 'USER_006@gmail.com', '라바랜드 가족과 함께!', '통신·방송의 시설기준과 신문의 기능을 보장하기 위하여 필요한 사항은 법률로 정한다. \r\n\r\n대통령은 제1항과 제2항의 처분 또는 명령을 한 때에는 지체없이 국회에 보고하여 그 승인을 얻어야 한다. 중앙선거관리위원회는 법령의 범위안에서 선거관리·국민투표관리 또는 정당사무에 관한 규칙을 제정할 수 있으며, 법률에 저촉되지 아니하는 범위안에서 내부규율에 관한 규칙을 제정할 수 있다.', 0, '2024-01-06', NULL);
INSERT INTO `review` VALUES ('300-000-006', '200-000-000', 'USER_007@gmail.com', '활옥동굴 너무 신비했어요!', '법률이 헌법에 위반되는 여부가 재판의 전제가 된 경우에는 법원은 헌법재판소에 제청하여 그 심판에 의하여 재판한다. 모든 국민은 양심의 자유를 가진다.\r\n\r\n대법원과 각급법원의 조직은 법률로 정한다. 대한민국의 경제질서는 개인과 기업의 경제상의 자유와 창의를 존중함을 기본으로 한다. 전직대통령의 신분과 예우에 관하여는 법률로 정한다.', 0, '2023-08-25', NULL);
INSERT INTO `review` VALUES ('300-000-007', '200-000-000', 'USER_008@gmail.com', '여름에 너무 시원했어요!', '이 헌법중 공무원의 임기 또는 중임제한에 관한 규정은 이 헌법에 의하여 그 공무원이 최초로 선출 또는 임명된 때로부터 적용한다. 군인 또는 군무원이 아닌 국민은 대한민국의 영역안에서는 중대한 군사상 기밀·초병·초소·유독음식물공급·포로·군용물에 관한 죄중 법률이 정한 경우와 비상계엄이 선포된 경우를 제외하고는 군사법원의 재판을 받지 아니한다.', 0, '2023-08-27', NULL);
INSERT INTO `review` VALUES ('300-000-008', '200-000-001', 'USER_009@gmail.com', '고구려천문과학관 다녀왔어요!', '모든 국민은 신체의 자유를 가진다. 누구든지 법률에 의하지 아니하고는 체포·구속·압수·수색 또는 심문을 받지 아니하며, 법률과 적법한 절차에 의하지 아니하고는 처벌·보안처분 또는 강제노역을 받지 아니한다.', 0, '2023-07-21', NULL);
INSERT INTO `review` VALUES ('300-000-009', '200-000-001', 'USER_001@gmail.com', '과학관 재밌었어요!', '이 헌법은 1988년 2월 25일부터 시행한다. 다만, 이 헌법을 시행하기 위하여 필요한 법률의 제정·개정과 이 헌법에 의한 대통령 및 국회의원의 선거 기타 이 헌법시행에 관한 준비는 이 헌법시행 전에 할 수 있다.', 0, '2023-06-12', NULL);
INSERT INTO `review` VALUES ('300-000-010', '200-000-001', 'USER_010@gmail.com', '날씨가 너무 좋은 날이었어요!', '국가는 지역간의 균형있는 발전을 위하여 지역경제를 육성할 의무를 진다. 군인은 현역을 면한 후가 아니면 국무위원으로 임명될 수 없다. 정부는 예산에 변경을 가할 필요가 있을 때에는 추가경정예산안을 편성하여 국회에 제출할 수 있다.', 0, '2023-06-14', NULL);
INSERT INTO `review` VALUES ('300-000-011', '200-000-001', 'USER_011@gmail.com', '별똥별 관측할 수 있어서 좋았어요!', '감사원의 조직·직무범위·감사위원의 자격·감사대상공무원의 범위 기타 필요한 사항은 법률로 정한다. 대통령은 헌법과 법률이 정하는 바에 의하여 공무원을 임면한다.', 0, '2023-07-13', NULL);
INSERT INTO `review` VALUES ('300-000-012', '200-000-002', 'USER_012@gmail.com', '유람선을 탔어요!', '혼인과 가족생활은 개인의 존엄과 양성의 평등을 기초로 성립되고 유지되어야 하며, 국가는 이를 보장한다. 대한민국의 주권은 국민에게 있고, 모든 권력은 국민으로부터 나온다.', 0, '2023-08-11', NULL);
INSERT INTO `review` VALUES ('300-000-013', '200-000-002', 'USER_013@gmail.com', '충주호 다녀왔어요.', '대법원장과 대법관이 아닌 법관의 임기는 10년으로 하며, 법률이 정하는 바에 의하여 연임할 수 있다. 대통령의 임기연장 또는 중임변경을 위한 헌법개정은 그 헌법개정 제안 당시의 대통령에 대하여는 효력이 없다.', 0, '2023-09-01', NULL);
INSERT INTO `review` VALUES ('300-000-014', '200-000-002', 'USER_014@gmail.com', '충주호수에서 힐링하고 왔어요.', '국회는 국가의 예산안을 심의·확정한다. 저작자·발명가·과학기술자와 예술가의 권리는 법률로써 보호한다. 혼인과 가족생활은 개인의 존엄과 양성의 평등을 기초로 성립되고 유지되어야 하며, 국가는 이를 보장한다.', 0, '2023-09-11', NULL);
INSERT INTO `review` VALUES ('300-000-015', '200-000-002', 'USER_015@gmail.com', '충주호 참 웅장하더군요!', '대통령은 법률이 정하는 바에 의하여 사면·감형 또는 복권을 명할 수 있다. 국민경제의 발전을 위한 중요정책의 수립에 관하여 대통령의 자문에 응하기 위하여 국민경제자문회의를 둘 수 있다.', 0, '2023-10-20', NULL);
INSERT INTO `review` VALUES ('300-000-016', '200-000-003', 'USER_016@gmail.com', '칠층석탑 구경했어요!', '선거와 국민투표의 공정한 관리 및 정당에 관한 사무를 처리하기 위하여 선거관리위원회를 둔다. 감사원의 조직·직무범위·감사위원의 자격·감사대상공무원의 범위 기타 필요한 사항은 법률로 정한다.', 0, '2023-04-05', NULL);
INSERT INTO `review` VALUES ('300-000-017', '200-000-003', 'USER_017@gmail.com', '날씨가 좋았어요.', '공무원인 근로자는 법률이 정하는 자에 한하여 단결권·단체교섭권 및 단체행동권을 가진다. 국군의 조직과 편성은 법률로 정한다. 대통령은 국회에 출석하여 발언하거나 서한으로 의견을 표시할 수 있다.', 0, '2023-04-30', NULL);
INSERT INTO `review` VALUES ('300-000-018', '200-000-003', 'USER_018@gmail.com', '비가와서 별로였어요.', '국회는 국민의 보통·평등·직접·비밀선거에 의하여 선출된 국회의원으로 구성한다. 재판의 전심절차로서 행정심판을 할 수 있다. 행정심판의 절차는 법률로 정하되, 사법절차가 준용되어야 한다.', 0, '2023-05-01', NULL);
INSERT INTO `review` VALUES ('300-000-019', '200-000-003', 'USER_019@gmail.com', '어떻게 쌓았을지 궁금하던구요.', '대통령이 임시회의 집회를 요구할 때에는 기간과 집회요구의 이유를 명시하여야 한다. 제2항과 제3항의 처분에 대하여는 법원에 제소할 수 없다. 대통령은 조국의 평화적 통일을 위한 성실한 의무를 진다.', 0, '2023-05-03', NULL);
INSERT INTO `review` VALUES ('300-000-020', '200-000-004', 'USER_020@gmail.com', '고구려의 유물!', '대통령은 국민의 보통·평등·직접·비밀선거에 의하여 선출한다. 국가는 전통문화의 계승·발전과 민족문화의 창달에 노력하여야 한다. 선거에 관한 경비는 법률이 정하는 경우를 제외하고는 정당 또는 후보자에게 부담시킬 수 없다.', 0, '2023-06-10', NULL);
INSERT INTO `review` VALUES ('300-000-021', '200-000-004', 'USER_021@gmail.com', '보존이 잘되어있어요!', '헌법에 의하여 체결·공포된 조약과 일반적으로 승인된 국제법규는 국내법과 같은 효력을 가진다. 훈장등의 영전은 이를 받은 자에게만 효력이 있고, 어떠한 특권도 이에 따르지 아니한다.', 0, '2023-01-08', NULL);
INSERT INTO `review` VALUES ('300-000-022', '200-000-004', 'USER_022@gmail.com', '고구려비 구경했어요!', '국가는 법률이 정하는 바에 의하여 재외국민을 보호할 의무를 진다. 국가는 건전한 소비행위를 계도하고 생산품의 품질향상을 촉구하기 위한 소비자보호운동을 법률이 정하는 바에 의하여 보장한다.', 0, '2023-03-01', NULL);
INSERT INTO `review` VALUES ('300-000-023', '200-000-004', 'USER_023@gmail.com', '중원 고구려비 짱!', '모든 국민은 법률이 정하는 바에 의하여 공무담임권을 가진다. 한 회계연도를 넘어 계속하여 지출할 필요가 있을 때에는 정부는 연한을 정하여 계속비로서 국회의 의결을 얻어야 한다.', 0, '2023-03-05', NULL);
INSERT INTO `review` VALUES ('300-000-024', '200-000-006', 'USER_024@gmail.com', '충주댐 다녀왔어요.', '국가는 법률이 정하는 바에 의하여 재외국민을 보호할 의무를 진다. 국가는 건전한 소비행위를 계도하고 생산품의 품질향상을 촉구하기 위한 소비자보호운동을 법률이 정하는 바에 의하여 보장한다.', 0, '2023-04-10', NULL);
INSERT INTO `review` VALUES ('300-000-025', '200-000-006', 'USER_025@gmail.com', '충주댐에서 야경 산책했어요', '연소자의 근로는 특별한 보호를 받는다. 행정권은 대통령을 수반으로 하는 정부에 속한다. 국가안전보장회의는 대통령이 주재한다. 대한민국은 민주공화국이다.', 0, '2023-04-11', NULL);
INSERT INTO `review` VALUES ('300-000-026', '200-000-006', 'USER_026@gmail.com', '벚꽃이 활짝폈어요!', '전직대통령의 신분과 예우에 관하여는 법률로 정한다. 광물 기타 중요한 지하자원·수산자원·수력과 경제상 이용할 수 있는 자연력은 법률이 정하는 바에 의하여 일정한 기간 그 채취·개발 또는 이용을 특허할 수 있다.', 0, '2023-03-30', NULL);
INSERT INTO `review` VALUES ('300-000-027', '200-000-006', 'USER_027@gmail.com', '재밌었어요!', '이 헌법에 의한 최초의 대통령의 임기는 이 헌법시행일로부터 개시한다. 대통령은 제4항과 제5항의 규정에 의하여 확정된 법률을 지체없이 공포하여야 한다.', 0, '2023-03-31', NULL);
INSERT INTO `review` VALUES ('300-000-028', '200-000-007', 'USER_028@gmail.com', '반딧불이가 많아요!', '위원은 탄핵 또는 금고 이상의 형의 선고에 의하지 아니하고는 파면되지 아니한다. 제1항의 지시를 받은 당해 행정기관은 이에 응하여야 한다. 국군은 국가의 안전보장과 국토방위의 신성한 의무를 수행함을 사명으로 하며, 그 정치적 중립성은 준수된다.', 0, '2023-09-29', NULL);
INSERT INTO `review` VALUES ('300-000-029', '200-000-007', 'USER_029@gmail.com', '조류가 많아요!', '대통령은 법률이 정하는 바에 의하여 사면·감형 또는 복권을 명할 수 있다. 공무원의 직무상 불법행위로 손해를 받은 국민은 법률이 정하는 바에 의하여 국가 또는 공공단체에 정당한 배상을 청구할 수 있다. 이 경우 공무원 자신의 책임은 면제되지 아니한다.', 0, '2023-10-01', NULL);
INSERT INTO `review` VALUES ('300-000-030', '200-000-007', 'USER_030@gmail.com', '조깅하고 왔어요!', '대통령은 제1항과 제2항의 처분 또는 명령을 한 때에는 지체없이 국회에 보고하여 그 승인을 얻어야 한다. 대통령은 필요하다고 인정할 때에는 외교·국방·통일 기타 국가안위에 관한 중요정책을 국민투표에 붙일 수 있다.', 0, '2023-05-01', NULL);
INSERT INTO `review` VALUES ('300-000-031', '200-000-007', 'USER_031@gmail.com', '벌레가 많았어요!', '사회적 특수계급의 제도는 인정되지 아니하며, 어떠한 형태로도 이를 창설할 수 없다. 국가는 청원에 대하여 심사할 의무를 진다. 누구든지 체포 또는 구속을 당한 때에는 즉시 변호인의 조력을 받을 권리를 가진다. ', 0, '2023-06-07', NULL);
INSERT INTO `review` VALUES ('300-000-032', '200-000-008', 'USER_032@gmail.com', '역시 겨울엔 온천이죠!', '타인의 범죄행위로 인하여 생명·신체에 대한 피해를 받은 국민은 법률이 정하는 바에 의하여 국가로부터 구조를 받을 수 있다. 비상계엄이 선포된 때에는 법률이 정하는 바에 의하여 영장제도, 언론·출판·집회·결사의 자유, 정부나 법원의 권한에 관하여 특별한 조치를 할 수 있다.', 0, '2023-01-12', NULL);
INSERT INTO `review` VALUES ('300-000-033', '200-000-008', 'USER_033@gmail.com', '날씨가 추워서 온천 다녀왔어요!', '국가는 사회보장·사회복지의 증진에 노력할 의무를 진다. 이 헌법시행 당시에 이 헌법에 의하여 새로 설치될 기관의 권한에 속하는 직무를 행하고 있는 기관은 이 헌법에 의하여 새로운 기관이 설치될 때까지 존속하며 그 직무를 행한다.', 0, '2023-01-15', NULL);
INSERT INTO `review` VALUES ('300-000-034', '200-000-008', 'USER_034@gmail.com', '역시 수안보 온천 짱이에요!', '군인 또는 군무원이 아닌 국민은 대한민국의 영역안에서는 중대한 군사상 기밀·초병·초소·유독음식물공급·포로·군용물에 관한 죄중 법률이 정한 경우와 비상계엄이 선포된 경우를 제외하고는 군사법원의 재판을 받지 아니한다.', 0, '2023-12-23', NULL);
INSERT INTO `review` VALUES ('300-000-035', '200-000-008', 'USER_035@gmail.com', '크리스마스엔 수안보 온천이죠!', '국가는 농지에 관하여 경자유전의 원칙이 달성될 수 있도록 노력하여야 하며, 농지의 소작제도는 금지된다. 중앙선거관리위원회는 법령의 범위안에서 선거관리·국민투표관리 또는 정당사무에 관한 규칙을 제정할 수 있으며, 법률에 저촉되지 아니하는 범위안에서 내부규율에 관한 규칙을 제정할 수 있다.', 0, '2023-12-25', NULL);
INSERT INTO `review` VALUES ('300-000-036', '200-000-009', 'USER_036@gmail.com', '자연에서 힐링하며 캠핑하고 왔어요!', '대통령이 궐위된 때 또는 대통령 당선자가 사망하거나 판결 기타의 사유로 그 자격을 상실한 때에는 60일 이내에 후임자를 선거한다. 법관이 중대한 심신상의 장해로 직무를 수행할 수 없을 때에는 법률이 정하는 바에 의하여 퇴직하게 할 수 있다.', 0, '2023-07-21', NULL);
INSERT INTO `review` VALUES ('300-000-037', '200-000-009', 'USER_037@gmail.com', '산에서 힐링하고 왔어요!', '법률이 헌법에 위반되는 여부가 재판의 전제가 된 경우에는 법원은 헌법재판소에 제청하여 그 심판에 의하여 재판한다. 대통령은 국무총리·국무위원·행정각부의 장 기타 법률이 정하는 공사의 직을 겸할 수 없다.', 0, '2023-08-10', NULL);
INSERT INTO `review` VALUES ('300-000-038', '200-000-009', 'USER_038@gmail.com', '가족들과 캠핑하기 좋더군요!', '전직대통령의 신분과 예우에 관하여는 법률로 정한다. 선거에 관한 경비는 법률이 정하는 경우를 제외하고는 정당 또는 후보자에게 부담시킬 수 없다. 타인의 범죄행위로 인하여 생명·신체에 대한 피해를 받은 국민은 법률이 정하는 바에 의하여 국가로부터 구조를 받을 수 있다.', 0, '2023-09-11', NULL);
INSERT INTO `review` VALUES ('300-000-039', '200-000-009', 'USER_039@gmail.com', '캠핑 처음해보는데, 너무 좋았어요!', '대통령은 취임에 즈음하여 다음의 선서를 한다. 국가유공자·상이군경 및 전몰군경의 유가족은 법률이 정하는 바에 의하여 우선적으로 근로의 기회를 부여받는다.', 0, '2023-08-22', NULL);
INSERT INTO `review` VALUES ('300-000-040', '200-000-010', 'USER_040@gmail.com', '수원에 있는 우리 문화재! 수원화성!', '모든 국민은 인간으로서의 존엄과 가치를 가지며, 행복을 추구할 권리를 가진다. 국가는 개인이 가지는 불가침의 기본적 인권을 확인하고 이를 보장할 의무를 진다.', 0, '2023-04-16', NULL);
INSERT INTO `review` VALUES ('300-000-041', '200-000-010', 'USER_041@gmail.com', '수원화성에 장엄함!', '모든 국민은 언론·출판의 자유와 집회·결사의 자유를 가진다. 국군의 조직과 편성은 법률로 정한다. 정부는 회계연도마다 예산안을 편성하여 회계연도 개시 90일전까지 국회에 제출하고, 국회는 회계연도 개시 30일전까지 이를 의결하여야 한다.', 0, '2023-05-12', NULL);
INSERT INTO `review` VALUES ('300-000-042', '200-000-010', 'USER_042@gmail.com', '수원화성 다녀왔어요!', '대통령은 국무회의의 의장이 되고, 국무총리는 부의장이 된다. 국회는 헌법개정안이 공고된 날로부터 60일 이내에 의결하여야 하며, 국회의 의결은 재적의원 3분의 2 이상의 찬성을 얻어야 한다.', 0, '2023-08-29', NULL);
INSERT INTO `review` VALUES ('300-000-043', '200-000-010', 'USER_043@gmail.com', '화성은 수원에도 있다!!', '국회의원은 그 지위를 남용하여 국가·공공단체 또는 기업체와의 계약이나 그 처분에 의하여 재산상의 권리·이익 또는 직위를 취득하거나 타인을 위하여 그 취득을 알선할 수 없다.\r\n\r\n', 0, '2023-06-10', NULL);
INSERT INTO `review` VALUES ('300-000-044', '200-000-011', 'USER_044@gmail.com', '수원에 위치한 광교호수공원 다녀옴!', '평화통일정책의 수립에 관한 대통령의 자문에 응하기 위하여 민주평화통일자문회의를 둘 수 있다. 모든 국민은 능력에 따라 균등하게 교육을 받을 권리를 가진다.', 0, '2023-05-30', NULL);
INSERT INTO `review` VALUES ('300-000-045', '200-000-011', 'USER_045@gmail.com', '호수공원 뜀박질하고 오기!', '국민의 모든 자유와 권리는 국가안전보장·질서유지 또는 공공복리를 위하여 필요한 경우에 한하여 법률로써 제한할 수 있으며, 제한하는 경우에도 자유와 권리의 본질적인 내용을 침해할 수 없다.', 0, '2023-04-30', NULL);
INSERT INTO `review` VALUES ('300-000-046', '200-000-011', 'USER_046@gmail.com', '드넓은 공원에 맘껏 뛰놀다 왔어요!', '대한민국의 영토는 한반도와 그 부속도서로 한다. 국가는 대외무역을 육성하며, 이를 규제·조정할 수 있다. 사면·감형 및 복권에 관한 사항은 법률로 정한다.', 0, '2023-07-11', NULL);
INSERT INTO `review` VALUES ('300-000-047', '200-000-011', 'USER_047@gmail.com', '공원이  참 좋더라구요!', '국토와 자원은 국가의 보호를 받으며, 국가는 그 균형있는 개발과 이용을 위하여 필요한 계획을 수립한다. 국가는 평생교육을 진흥하여야 한다. 헌법재판소 재판관의 임기는 6년으로 하며, 법률이 정하는 바에 의하여 연임할 수 있다.', 0, '2023-08-01', NULL);
INSERT INTO `review` VALUES ('300-000-048', '200-000-012', 'USER_048@gmail.com', '야경이 멋진 방화수류정', '제1항의 해임건의는 국회재적의원 3분의 1 이상의 발의에 의하여 국회재적의원 과반수의 찬성이 있어야 한다. 제안된 헌법개정안은 대통령이 20일 이상의 기간 이를 공고하여야 한다.', 0, '2023-07-18', NULL);
INSERT INTO `review` VALUES ('300-000-049', '200-000-012', 'USER_049@gmail.com', '야경맛집이라고 해서 다녀와쑤~', '헌법재판소의 장은 국회의 동의를 얻어 재판관중에서 대통령이 임명한다. 헌법재판소는 법관의 자격을 가진 9인의 재판관으로 구성하며, 재판관은 대통령이 임명한다.', 0, '2023-09-11', NULL);
INSERT INTO `review` VALUES ('300-000-050', '200-000-012', 'USER_050@gmail.com', '뷰가 아주 좋더군요!', '헌법재판소에서 법률의 위헌결정, 탄핵의 결정, 정당해산의 결정 또는 헌법소원에 관한 인용결정을 할 때에는 재판관 6인 이상의 찬성이 있어야 한다. 국군의 조직과 편성은 법률로 정한다.', 0, '2023-04-29', NULL);
INSERT INTO `review` VALUES ('300-000-051', '200-000-012', 'USER_051@gmail.com', '방화수류정 다녀왔어요', '모든 국민은 행위시의 법률에 의하여 범죄를 구성하지 아니하는 행위로 소추되지 아니하며, 동일한 범죄에 대하여 거듭 처벌받지 아니한다. 국회나 그 위원회의 요구가 있을 때에는 국무총리·국무위원 또는 정부위원은 출석·답변하여야 하며, 국무총리 또는 국무위원이 출석요구를 받은 때에는 국무위원 또는 정부위원으로 하여금 출석·답변하게 할 수 있다.', 0, '2023-05-25', NULL);
INSERT INTO `review` VALUES ('300-000-052', '200-000-013', 'USER_052@gmail.com', '우리의 문화유산 팔달문!', '국회의원은 국회에서 직무상 행한 발언과 표결에 관하여 국회외에서 책임을 지지 아니한다. 법률이 헌법에 위반되는 여부가 재판의 전제가 된 경우에는 법원은 헌법재판소에 제청하여 그 심판에 의하여 재판한다.', 0, '2023-06-02', NULL);
INSERT INTO `review` VALUES ('300-000-053', '200-000-013', 'USER_053@gmail.com', '야경 사진 찍으로 다녀왔어요!', '모든 국민은 건강하고 쾌적한 환경에서 생활할 권리를 가지며, 국가와 국민은 환경보전을 위하여 노력하여야 한다. 국가는 청원에 대하여 심사할 의무를 진다.', 0, '2023-07-05', NULL);
INSERT INTO `review` VALUES ('300-000-054', '200-000-013', 'USER_054@gmail.com', '견고하더군요!', '모든 국민은 법률이 정하는 바에 의하여 선거권을 가진다. 각급 선거관리위원회의 조직·직무범위 기타 필요한 사항은 법률로 정한다. 국가원로자문회의의 의장은 직전대통령이 된다. 다만, 직전대통령이 없을 때에는 대통령이 지명한다.', 0, '2023-08-14', NULL);
INSERT INTO `review` VALUES ('300-000-055', '200-000-013', 'USER_055@gmail.com', '웅장했어요!', '헌법재판소의 장은 국회의 동의를 얻어 재판관중에서 대통령이 임명한다. 국가는 청원에 대하여 심사할 의무를 진다. 대통령의 임기는 5년으로 하며, 중임할 수 없다.', 0, '2023-09-22', NULL);
INSERT INTO `review` VALUES ('300-000-056', '200-000-014', 'USER_056@gmail.com', '화홍문 다녀왔어요!', '신체장애자 및 질병·노령 기타의 사유로 생활능력이 없는 국민은 법률이 정하는 바에 의하여 국가의 보호를 받는다. 정당의 설립은 자유이며, 복수정당제는 보장된다.', 0, '2023-09-25', NULL);
INSERT INTO `review` VALUES ('300-000-057', '200-000-014', 'USER_057@gmail.com', '화! 홍! 문!', '헌법재판소에서 법률의 위헌결정, 탄핵의 결정, 정당해산의 결정 또는 헌법소원에 관한 인용결정을 할 때에는 재판관 6인 이상의 찬성이 있어야 한다. 언론·출판에 대한 허가나 검열과 집회·결사에 대한 허가는 인정되지 아니한다.', 0, '2023-10-11', NULL);
INSERT INTO `review` VALUES ('300-000-058', '200-000-014', 'USER_058@gmail.com', '수원에 있는 문화유적지 시리즈!', '모든 국민은 법률이 정하는 바에 의하여 납세의 의무를 진다. 국회에서 의결된 법률안은 정부에 이송되어 15일 이내에 대통령이 공포한다. 대통령은 법률이 정하는 바에 의하여 사면·감형 또는 복권을 명할 수 있다.', 0, '2023-05-24', NULL);
INSERT INTO `review` VALUES ('300-000-059', '200-000-014', 'USER_059@gmail.com', '야경이 좋아요!', '제1항의 탄핵소추는 국회재적의원 3분의 1 이상의 발의가 있어야 하며, 그 의결은 국회재적의원 과반수의 찬성이 있어야 한다. 다만, 대통령에 대한 탄핵소추는 국회재적의원 과반수의 발의와 국회재적의원 3분의 2 이상의 찬성이 있어야 한다.', 0, '2023-06-12', NULL);
INSERT INTO `review` VALUES ('300-000-060', '200-000-015', 'USER_060@gmail.com', '장안문 다녀온 후기!!', '모든 국민은 소급입법에 의하여 참정권의 제한을 받거나 재산권을 박탈당하지 아니한다. 국무총리·국무위원 또는 정부위원은 국회나 그 위원회에 출석하여 국정처리상황을 보고하거나 의견을 진술하고 질문에 응답할 수 있다.', 0, '2023-08-29', NULL);
INSERT INTO `review` VALUES ('300-000-061', '200-000-015', 'USER_061@gmail.com', '장안문 다녀왔어요!', '제1항의 탄핵소추는 국회재적의원 3분의 1 이상의 발의가 있어야 하며, 그 의결은 국회재적의원 과반수의 찬성이 있어야 한다. 다만, 대통령에 대한 탄핵소추는 국회재적의원 과반수의 발의와 국회재적의원 3분의 2 이상의 찬성이 있어야 한다.', 0, '2023-09-30', NULL);
INSERT INTO `review` VALUES ('300-000-062', '200-000-015', 'USER_062@gmail.com', '장!~안문!이 잘지어졌구만!', '행정권은 대통령을 수반으로 하는 정부에 속한다. 국가원로자문회의의 의장은 직전대통령이 된다. 다만, 직전대통령이 없을 때에는 대통령이 지명한다.', 0, '2023-01-12', NULL);
INSERT INTO `review` VALUES ('300-000-063', '200-000-015', 'USER_063@gmail.com', '장안문의 역사는...더보기', '대법관의 임기는 6년으로 하며, 법률이 정하는 바에 의하여 연임할 수 있다. 예비비는 총액으로 국회의 의결을 얻어야 한다. 예비비의 지출은 차기국회의 승인을 얻어야 한다.', 0, '2023-02-17', NULL);
INSERT INTO `review` VALUES ('300-000-064', '200-000-016', 'USER_064@gmail.com', '화서문 역사...더보기', '대통령은 법률안의 일부에 대하여 또는 법률안을 수정하여 재의를 요구할 수 없다. 지방의회의 조직·권한·의원선거와 지방자치단체의 장의 선임방법 기타 지방자치단체의 조직과 운영에 관한 사항은 법률로 정한다.', 0, '2023-03-17', NULL);
INSERT INTO `review` VALUES ('300-000-065', '200-000-016', 'USER_065@gmail.com', '화서문 언제쯤...더보기', '원장은 국회의 동의를 얻어 대통령이 임명하고, 그 임기는 4년으로 하며, 1차에 한하여 중임할 수 있다. 중앙선거관리위원회는 대통령이 임명하는 3인, 국회에서 선출하는 3인과 대법원장이 지명하는 3인의 위원으로 구성한다. 위원장은 위원중에서 호선한다.', 0, '2023-03-20', NULL);
INSERT INTO `review` VALUES ('300-000-066', '200-000-016', 'USER_066@gmail.com', '화서문 다녀왔는데..', '사법권은 법관으로 구성된 법원에 속한다. 헌법재판소 재판관의 임기는 6년으로 하며, 법률이 정하는 바에 의하여 연임할 수 있다. 타인의 범죄행위로 인하여 생명·신체에 대한 피해를 받은 국민은 법률이 정하는 바에 의하여 국가로부터 구조를 받을 수 있다.', 0, '2023-07-18', NULL);
INSERT INTO `review` VALUES ('300-000-067', '200-000-016', 'USER_067@gmail.com', '집 근처라 자주 산책해요.', '국민경제자문회의의 조직·직무범위 기타 필요한 사항은 법률로 정한다. 대법원은 법률에 저촉되지 아니하는 범위안에서 소송에 관한 절차, 법원의 내부규율과 사무처리에 관한 규칙을 제정할 수 있다.', 0, '2023-08-04', NULL);
INSERT INTO `review` VALUES ('300-000-068', '200-000-020', 'USER_068@gmail.com', '안가봤으면 말을...더보기', '대통령으로 선거될 수 있는 자는 국회의원의 피선거권이 있고 선거일 현재 40세에 달하여야 한다. 선거에 관한 경비는 법률이 정하는 경우를 제외하고는 정당 또는 후보자에게 부담시킬 수 없다.', 0, '2023-04-10', NULL);
INSERT INTO `review` VALUES ('300-000-069', '200-000-020', 'USER_069@gmail.com', '다녀와보셨어요?', '국민의 자유와 권리는 헌법에 열거되지 아니한 이유로 경시되지 아니한다. 군인·군무원·경찰공무원 기타 법률이 정하는 자가 전투·훈련등 직무집행과 관련하여 받은 손해에 대하여는 법률이 정하는 보상외에 국가 또는 공공단체에 공무원의 직무상 불법행위로 인한 배상은 청구할 수 없다.', 0, '2023-04-15', NULL);
INSERT INTO `review` VALUES ('300-000-070', '200-000-020', 'USER_070@gmail.com', '아 그러셨구나', '법률안에 이의가 있을 때에는 대통령은 제1항의 기간내에 이의서를 붙여 국회로 환부하고, 그 재의를 요구할 수 있다. 국회의 폐회중에도 또한 같다. 원장은 국회의 동의를 얻어 대통령이 임명하고, 그 임기는 4년으로 하며, 1차에 한하여 중임할 수 있다.', 0, '2023-05-10', NULL);
INSERT INTO `review` VALUES ('300-000-071', '200-000-020', 'USER_071@gmail.com', '언제 다녀오셨어요?', '국가는 청원에 대하여 심사할 의무를 진다. 국가는 노인과 청소년의 복지향상을 위한 정책을 실시할 의무를 진다. 국회는 상호원조 또는 안전보장에 관한 조약, 중요한 국제조직에 관한 조약, 우호통상항해조약, 주권의 제약에 관한 조약, 강화조약, 국가나 국민에게 중대한 재정적 부담을 지우는 조약 또는 입법사항에 관한 조약의 체결·비준에 대한 동의권을 가진다', 0, '2023-06-11', NULL);
INSERT INTO `review` VALUES ('300-000-072', '200-000-017', 'USER_072@gmail.com', '월화원도 다녀오셨어요?', '법률안에 이의가 있을 때에는 대통령은 제1항의 기간내에 이의서를 붙여 국회로 환부하고, 그 재의를 요구할 수 있다. 국회의 폐회중에도 또한 같다. 원장은 국회의 동의를 얻어 대통령이 임명하고, 그 임기는 4년으로 하며, 1차에 한하여 중임할 수 있다.', 0, '2023-07-30', NULL);
INSERT INTO `review` VALUES ('300-000-073', '200-000-017', 'USER_073@gmail.com', '지난주 월요일에 다녀왔어요.', '대통령·국무총리·국무위원·행정각부의 장·헌법재판소 재판관·법관·중앙선거관리위원회 위원·감사원장·감사위원 기타 법률이 정한 공무원이 그 직무집행에 있어서 헌법이나 법률을 위배한 때에는 국회는 탄핵의 소추를 의결할 수 있다.', 0, '2023-08-04', NULL);
INSERT INTO `review` VALUES ('300-000-074', '200-000-017', 'USER_074@gmail.com', '어느 시기가 가기가 더 좋아요?', '농업생산성의 제고와 농지의 합리적인 이용을 위하거나 불가피한 사정으로 발생하는 농지의 임대차와 위탁경영은 법률이 정하는 바에 의하여 인정된다.', 0, '2023-08-05', NULL);
INSERT INTO `review` VALUES ('300-000-075', '200-000-017', 'USER_075@gmail.com', '글쎄요.. 저도 한번 다녀온거라', '국방상 또는 국민경제상 긴절한 필요로 인하여 법률이 정하는 경우를 제외하고는, 사영기업을 국유 또는 공유로 이전하거나 그 경영을 통제 또는 관리할 수 없다.', 0, '2023-08-06', NULL);
INSERT INTO `review` VALUES ('300-000-076', '200-000-019', 'USER_076@gmail.com', '박물관에는 가보셨어요?', '누구든지 체포 또는 구속을 당한 때에는 적부의 심사를 법원에 청구할 권리를 가진다. 국가는 국민 모두의 생산 및 생활의 기반이 되는 국토의 효율적이고 균형있는 이용·개발과 보전을 위하여 법률이 정하는 바에 의하여 그에 관한 필요한 제한과 의무를 과할 수 있다.', 0, '2023-09-11', NULL);
INSERT INTO `review` VALUES ('300-000-077', '200-000-019', 'USER_077@gmail.com', '아직요!', '헌법재판소는 법관의 자격을 가진 9인의 재판관으로 구성하며, 재판관은 대통령이 임명한다. 모든 국민은 법률이 정하는 바에 의하여 납세의 의무를 진다.', 0, '2023-09-12', NULL);
INSERT INTO `review` VALUES ('300-000-078', '200-000-019', 'USER_078@gmail.com', '박물관에 설명이 다 있어요!', '정당의 설립은 자유이며, 복수정당제는 보장된다. 국회는 상호원조 또는 안전보장에 관한 조약, 중요한 국제조직에 관한 조약, 우호통상항해조약, 주권의 제약에 관한 조약, 강화조약, 국가나 국민에게 중대한 재정적 부담을 지우는 조약 또는 입법사항에 관한 조약의 체결·비준에 대한 동의권을 가진다.', 0, '2023-09-22', NULL);
INSERT INTO `review` VALUES ('300-000-079', '200-000-019', 'USER_079@gmail.com', '그럼 박물관을 가야겠네요.', '대한민국의 영토는 한반도와 그 부속도서로 한다. 모든 국민은 인간다운 생활을 할 권리를 가진다. 국가는 재해를 예방하고 그 위험으로부터 국민을 보호하기 위하여 노력하여야 한다.', 0, '2023-10-01', NULL);
INSERT INTO `review` VALUES ('300-000-080', '200-000-018', 'USER_080@gmail.com', '만석공원도 추천합니다!', '법률이 정하는 주요방위산업체에 종사하는 근로자의 단체행동권은 법률이 정하는 바에 의하여 이를 제한하거나 인정하지 아니할 수 있다. 모든 국민의 재산권은 보장된다. 그 내용과 한계는 법률로 정한다.', 0, '2023-02-01', NULL);
INSERT INTO `review` VALUES ('300-000-081', '200-000-018', 'USER_081@gmail.com', '지금은 추워서..', '이 헌법시행 당시의 법령과 조약은 이 헌법에 위배되지 아니하는 한 그 효력을 지속한다. 감사위원은 원장의 제청으로 대통령이 임명하고, 그 임기는 4년으로 하며, 1차에 한하여 중임할 수 있다.', 0, '2023-02-05', NULL);
INSERT INTO `review` VALUES ('300-000-082', '200-000-018', 'USER_082@gmail.com', '나중에 함 가보셔요.', '국가는 노인과 청소년의 복지향상을 위한 정책을 실시할 의무를 진다. 모든 국민은 법 앞에 평등하다. 누구든지 성별·종교 또는 사회적 신분에 의하여 정치적·경제적·사회적·문화적 생활의 모든 영역에 있어서 차별을 받지 아니한다.', 0, '2023-02-22', NULL);
INSERT INTO `review` VALUES ('300-000-083', '200-000-022', 'USER_083@gmail.com', '특별한게 있나요?', '공개하지 아니한 회의내용의 공표에 관하여는 법률이 정하는 바에 의한다. 지방의회의 조직·권한·의원선거와 지방자치단체의 장의 선임방법 기타 지방자치단체의 조직과 운영에 관한 사항은 법률로 정한다.', 0, '2023-04-12', NULL);
INSERT INTO `review` VALUES ('300-000-084', '200-000-021', 'USER_084@gmail.com', '동궁과 월지도 가보세요.', '감사위원은 원장의 제청으로 대통령이 임명하고, 그 임기는 4년으로 하며, 1차에 한하여 중임할 수 있다. 위원은 정당에 가입하거나 정치에 관여할 수 없다.', 0, '2023-04-09', NULL);
INSERT INTO `review` VALUES ('300-000-085', '200-000-021', 'USER_085@gmail.com', '아직 안가본 곳이 많네요.', '국가는 대외무역을 육성하며, 이를 규제·조정할 수 있다. 공무원은 국민전체에 대한 봉사자이며, 국민에 대하여 책임을 진다. 국군은 국가의 안전보장과 국토방위의 신성한 의무를 수행함을 사명으로 하며, 그 정치적 중립성은 준수된다.', 0, '2023-04-15', NULL);
INSERT INTO `review` VALUES ('300-000-086', '200-000-021', 'USER_086@gmail.com', '어떤 면에서 추천하는건가요?', '중앙선거관리위원회는 법령의 범위안에서 선거관리·국민투표관리 또는 정당사무에 관한 규칙을 제정할 수 있으며, 법률에 저촉되지 아니하는 범위안에서 내부규율에 관한 규칙을 제정할 수 있다.', 0, '2023-05-18', NULL);
INSERT INTO `review` VALUES ('300-000-087', '200-000-021', 'USER_087@gmail.com', '문화유적지 코스라고 보시면되요.', '국가는 농업 및 어업을 보호·육성하기 위하여 농·어촌종합개발과 그 지원등 필요한 계획을 수립·시행하여야 한다. 모든 국민은 법률이 정하는 바에 의하여 국방의 의무를 진다.', 0, '2023-06-30', NULL);
INSERT INTO `review` VALUES ('300-000-088', '200-000-018', 'USER_088@gmail.com', '만석공원 다녀왔습니다!', '국가는 사회보장·사회복지의 증진에 노력할 의무를 진다. 헌법개정안이 제2항의 찬성을 얻은 때에는 헌법개정은 확정되며, 대통령은 즉시 이를 공포하여야 한다.', 0, '2023-06-21', NULL);
INSERT INTO `review` VALUES ('300-000-089', '200-000-022', 'USER_089@gmail.com', '석굴암 다녀왔어요.', '헌법재판소 재판관은 정당에 가입하거나 정치에 관여할 수 없다. 대법관은 대법원장의 제청으로 국회의 동의를 얻어 대통령이 임명한다. 법관은 탄핵 또는 금고 이상의 형의 선고에 의하지 아니하고는 파면되지 아니하며, 징계처분에 의하지 아니하고는 정직·감봉 기타 불리한 처분을 받지 아니한다.', 0, '2023-07-10', NULL);
INSERT INTO `review` VALUES ('300-000-090', '200-000-022', 'USER_090@gmail.com', '경주하면 석굴암이죠!', '국가는 농업 및 어업을 보호·육성하기 위하여 농·어촌종합개발과 그 지원등 필요한 계획을 수립·시행하여야 한다. 국가는 여자의 복지와 권익의 향상을 위하여 노력하여야 한다.', 0, '2023-08-10', NULL);
INSERT INTO `review` VALUES ('300-000-091', '200-000-022', 'USER_091@gmail.com', '경주 여행은 ... 더보기', '선거와 국민투표의 공정한 관리 및 정당에 관한 사무를 처리하기 위하여 선거관리위원회를 둔다. 국민경제의 발전을 위한 중요정책의 수립에 관하여 대통령의 자문에 응하기 위하여 국민경제자문회의를 둘 수 있다.', 0, '2023-09-22', NULL);
INSERT INTO `review` VALUES ('300-000-092', '200-000-023', 'USER_092@gmail.com', '경주의 밤을 책임진다! 첨성대!', '대한민국의 국민이 되는 요건은 법률로 정한다. 대법원장과 대법관이 아닌 법관의 임기는 10년으로 하며, 법률이 정하는 바에 의하여 연임할 수 있다. 위원은 정당에 가입하거나 정치에 관여할 수 없다.', 0, '2023-09-23', NULL);
INSERT INTO `review` VALUES ('300-000-093', '200-000-023', 'USER_093@gmail.com', '첨성대란...더보기', '대통령은 국민의 보통·평등·직접·비밀선거에 의하여 선출한다. 광물 기타 중요한 지하자원·수산자원·수력과 경제상 이용할 수 있는 자연력은 법률이 정하는 바에 의하여 일정한 기간 그 채취·개발 또는 이용을 특허할 수 있다.', 0, '2023-09-18', NULL);
INSERT INTO `review` VALUES ('300-000-094', '200-000-023', 'USER_094@gmail.com', '첨성대 가보셨다면..좋아요.', '대한민국의 국민이 되는 요건은 법률로 정한다. 대법원장과 대법관이 아닌 법관의 임기는 10년으로 하며, 법률이 정하는 바에 의하여 연임할 수 있다. 위원은 정당에 가입하거나 정치에 관여할 수 없다.', 0, '2023-09-19', NULL);
INSERT INTO `review` VALUES ('300-000-095', '200-000-023', 'USER_095@gmail.com', '내 생년별자리를 눈으로 확인했어요!', '대통령은 헌법과 법률이 정하는 바에 의하여 공무원을 임면한다. 모든 국민은 그 보호하는 자녀에게 적어도 초등교육과 법률이 정하는 교육을 받게 할 의무를 진다.', 0, '2023-04-17', NULL);
INSERT INTO `review` VALUES ('300-000-096', '200-000-024', 'USER_096@gmail.com', '경주에도 롯데월드 있거든요?', '공무원의 직무상 불법행위로 손해를 받은 국민은 법률이 정하는 바에 의하여 국가 또는 공공단체에 정당한 배상을 청구할 수 있다. 이 경우 공무원 자신의 책임은 면제되지 아니한다.', 0, '2023-05-19', NULL);
INSERT INTO `review` VALUES ('300-000-097', '200-000-024', 'USER_097@gmail.com', '경주 많이 변했네요.', '사회적 특수계급의 제도는 인정되지 아니하며, 어떠한 형태로도 이를 창설할 수 없다. 국무총리 또는 행정각부의 장은 소관사무에 관하여 법률이나 대통령령의 위임 또는 직권으로 총리령 또는 부령을 발할 수 있다.', 0, '2023-08-10', NULL);
INSERT INTO `review` VALUES ('300-000-098', '200-000-024', 'USER_098@gmail.com', '경주에 롤러코스터 생길줄 누가..', '국가는 농수산물의 수급균형과 유통구조의 개선에 노력하여 가격안정을 도모함으로써 농·어민의 이익을 보호한다. 국회는 정부의 동의없이 정부가 제출한 지출예산 각항의 금액을 증가하거나 새 비목을 설치할 수 없다.', 0, '2023-08-22', NULL);
INSERT INTO `review` VALUES ('300-000-099', '200-000-024', 'USER_099@gmail.com', '악명높은 높이! 드라켄이 즐겁다!', '훈장등의 영전은 이를 받은 자에게만 효력이 있고, 어떠한 특권도 이에 따르지 아니한다. 대통령이 궐위된 때 또는 대통령 당선자가 사망하거나 판결 기타의 사유로 그 자격을 상실한 때에는 60일 이내에 후임자를 선거한다.', 0, '2023-09-09', NULL);
INSERT INTO `review` VALUES ('300-000-100', '200-000-025', 'USER_100@gmail.com', '교촌치킨 검색했다가 발견했어요!', '이 헌법시행 당시에 이 헌법에 의하여 새로 설치될 기관의 권한에 속하는 직무를 행하고 있는 기관은 이 헌법에 의하여 새로운 기관이 설치될 때까지 존속하며 그 직무를 행한다.', 0, '2023-10-10', NULL);
INSERT INTO `review` VALUES ('300-000-101', '200-000-025', 'USER_001@gmail.com', '조선시대 온거 같쥬?', '모든 국민은 자기의 행위가 아닌 친족의 행위로 인하여 불이익한 처우를 받지 아니한다. 명령·규칙 또는 처분이 헌법이나 법률에 위반되는 여부가 재판의 전제가 된 경우에는 대법원은 이를 최종적으로 심사할 권한을 가진다.', 0, '2023-10-12', NULL);
INSERT INTO `review` VALUES ('300-000-102', '200-000-025', 'USER_002@gmail.com', '여기 맛집이 그리 많다던데!', '대통령은 조국의 평화적 통일을 위한 성실한 의무를 진다. 한 회계연도를 넘어 계속하여 지출할 필요가 있을 때에는 정부는 연한을 정하여 계속비로서 국회의 의결을 얻어야 한다.', 0, '2023-05-27', NULL);
INSERT INTO `review` VALUES ('300-000-103', '200-000-025', 'USER_003@gmail.com', '맛집 추천합니다... 더보기', '국회나 그 위원회의 요구가 있을 때에는 국무총리·국무위원 또는 정부위원은 출석·답변하여야 하며, 국무총리 또는 국무위원이 출석요구를 받은 때에는 국무위원 또는 정부위원으로 하여금 출석·답변하게 할 수 있다.', 0, '2023-06-18', NULL);

-- ----------------------------
-- Table structure for support
-- ----------------------------
DROP TABLE IF EXISTS `support`;
CREATE TABLE `support`  (
  `sup_code` int(11) NOT NULL AUTO_INCREMENT,
  `sc_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sup_title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sup_cont` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sup_ref` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sup_date` date NULL DEFAULT sysdate,
  PRIMARY KEY (`sup_code`) USING BTREE,
  INDEX `FK_SUPPORT_CLS_TO_SUPPORT_1`(`sc_code`) USING BTREE,
  INDEX `FK_USER_TO_SUPPORT_1`(`user_email`) USING BTREE,
  INDEX `SUP_CODE`(`sup_code`) USING BTREE,
  CONSTRAINT `FK_SUPPORT_CLS_TO_SUPPORT_1` FOREIGN KEY (`sc_code`) REFERENCES `support_cls` (`sc_code`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_USER_TO_SUPPORT_1` FOREIGN KEY (`user_email`) REFERENCES `user` (`user_email`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of support
-- ----------------------------
INSERT INTO `support` VALUES (1, '001', 'testuser@gmail.com', '테스트입니다 감사합니다.', '테스트용내용입니다. 감사합니다.', '테스트 답변글입니다 감사합니다.', '2024-01-24');
INSERT INTO `support` VALUES (2, '001', 'testuser@gmail.com', '테스트2입니다 감사합니다', '테스트내용2입니다. 감사합니다', '테스트 답변글2입니다 감사합니다', '2024-01-24');
INSERT INTO `support` VALUES (18, '003', 'USER_001@gmail.com', '글제목ddd', 'dddd', NULL, '2024-02-05');
INSERT INTO `support` VALUES (19, '003', 'USER_001@gmail.com', '글제목asdfasdf', 'asdfasdfasdf', NULL, '2024-02-05');
INSERT INTO `support` VALUES (20, '001', 'testuser@gmail.com', '테스트3입니다 감사합니다', '테스트내용3입니다. 감사합니다', '테스트 답변글3입니다 감사합니다.\n', '2024-02-05');
INSERT INTO `support` VALUES (21, '003', 'USER_007@gmail.com', '글제목ddd', 'dddddd', NULL, '2024-02-05');
INSERT INTO `support` VALUES (22, '003', 'USER_002@gmail.com', '글제목12313123123', '1124123412313423412', NULL, '2024-02-05');
INSERT INTO `support` VALUES (23, '003', 'USER_002@gmail.com', '글제목qqqqqq', 'qqqqqq', NULL, '2024-02-05');
INSERT INTO `support` VALUES (24, '003', 'testuser@gmail.com', '테스트4입니다.', '본문 테스트4입니다.', NULL, '2024-02-05');
INSERT INTO `support` VALUES (25, '003', 'testuser@gmail.com', '테스트5입니다...', '테스트5입니다...', '안녕', '2024-02-05');
INSERT INTO `support` VALUES (26, '003', 'USER_002@gmail.com', '글제목ㅁㄴㅇㄻㄴㅇㄻㄴㅇㄻ', 'ㅁㄴㅇㄻㄴㅇㄻㄴㅇㄻ', NULL, '2024-02-06');

-- ----------------------------
-- Table structure for support_cls
-- ----------------------------
DROP TABLE IF EXISTS `support_cls`;
CREATE TABLE `support_cls`  (
  `sc_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sc_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '공지사항, 일반문의, 여행지문의, 상품문의',
  PRIMARY KEY (`sc_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of support_cls
-- ----------------------------
INSERT INTO `support_cls` VALUES ('001', '공지사항');
INSERT INTO `support_cls` VALUES ('002', 'FAQ');
INSERT INTO `support_cls` VALUES ('003', '문의사항');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'user/admin',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nn` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pwd` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '8자 이상 영대소문자(구분O), 특수문자, 숫자',
  `birth` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '6자리(예 000101)',
  `gen` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `crdate` datetime(6) NULL DEFAULT NULL,
  `profile_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('test@gmail.com', 'admin', 'test_user', '배진현테스트', 'qwer1234!', '991217', 'male', '2024-01-24 10:36:18.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('testuser@gmail.com', 'admin', 'USER_TEST', '테스트', 'qwer1234!', '000101', 'male', '2024-01-22 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_001@gmail.com', 'user', 'USER_001', '파지굿', 'qwer1234!', '990119', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_002@gmail.com', 'user', 'USER_002', '울림도', 'qwer1234!', '990119', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_003@gmail.com', 'user', 'USER_003', '증력기', 'qwer1234!', '990119', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_004@gmail.com', 'user', 'USER_004', '나비장', 'qwer1234!', '990119', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_005@gmail.com', 'user', 'USER_005', '퇴석층', 'qwer1234!', '990119', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_006@gmail.com', 'user', 'USER_006', '족발이', 'qwer1234!', '990119', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_007@gmail.com', 'user', 'USER_007', '도감사', 'qwer1234!', '990119', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_008@gmail.com', 'user', 'USER_008', '가봉녀', 'qwer1234!', '990119', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_009@gmail.com', 'user', 'USER_009', '우점종', 'qwer1234!', '990119', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_010@gmail.com', 'user', 'USER_010', '채자공', 'qwer1234!', '990119', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_011@gmail.com', 'user', 'USER_011', '호화판', 'qwer1234!', '000119', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_012@gmail.com', 'user', 'USER_012', '미래상', 'qwer1234!', '000119', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_013@gmail.com', 'user', 'USER_013', '흰수작', 'qwer1234!', '000119', '남male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_014@gmail.com', 'user', 'USER_014', '타태죄', 'qwer1234!', '000119', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_015@gmail.com', 'user', 'USER_015', '두께살', 'qwer1234!', '000119', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_016@gmail.com', 'user', 'USER_016', '골미로', 'qwer1234!', '000119', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_017@gmail.com', 'user', 'USER_017', '대마초', 'qwer1234!', '000119', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_018@gmail.com', 'user', 'USER_018', '거적쌈', 'qwer1234!', '000119', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_019@gmail.com', 'user', 'USER_019', '소모율', 'qwer1234!', '000119', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_020@gmail.com', 'user', 'USER_020', '질나발', 'qwer1234!', '000119', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_021@gmail.com', 'user', 'USER_021', '고춧물', 'qwer1234!', '100119', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_022@gmail.com', 'user', 'USER_022', '차례건', 'qwer1234!', '100119', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_023@gmail.com', 'user', 'USER_023', '듬부기', 'qwer1234!', '100119', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_024@gmail.com', 'user', 'USER_024', '광평성', 'qwer1234!', '100119', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_025@gmail.com', 'user', 'USER_025', '헛돈질', 'qwer1234!', '100119', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_026@gmail.com', 'user', 'USER_026', '보리주', 'qwer1234!', '100119', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_027@gmail.com', 'user', 'USER_027', '횡중성', 'qwer1234!', '100119', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_028@gmail.com', 'user', 'USER_028', '단물겁', 'qwer1234!', '100119', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_029@gmail.com', 'user', 'USER_029', '논고사', 'qwer1234!', '100119', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_030@gmail.com', 'user', 'USER_030', '북가재', 'qwer1234!', '100119', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_031@gmail.com', 'user', 'USER_031', '스토니', 'qwer1234!', '890119', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_032@gmail.com', 'user', 'USER_032', '퀴놀린', 'qwer1234!', '890119', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_033@gmail.com', 'user', 'USER_033', '직아장', 'qwer1234!', '890119', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_034@gmail.com', 'user', 'USER_034', '철갑어', 'qwer1234!', '890119', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_035@gmail.com', 'user', 'USER_035', '무명것', 'qwer1234!', '890119', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_036@gmail.com', 'user', 'USER_036', '머더구', 'qwer1234!', '890119', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_037@gmail.com', 'user', 'USER_037', '속도광', 'qwer1234!', '890119', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_038@gmail.com', 'user', 'USER_038', '민화투', 'qwer1234!', '890119', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_039@gmail.com', 'user', 'USER_039', '도관서', 'qwer1234!', '890119', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_040@gmail.com', 'user', 'USER_040', '할무이', 'qwer1234!', '890119', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_041@gmail.com', 'user', 'USER_041', '집행부', 'qwer1234!', '970401', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_042@gmail.com', 'user', 'USER_042', '남챗방', 'qwer1234!', '970401', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_043@gmail.com', 'user', 'USER_043', '쏠소조', 'qwer1234!', '970401', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_044@gmail.com', 'user', 'USER_044', '망건당', 'qwer1234!', '970401', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_045@gmail.com', 'user', 'USER_045', '이디시', 'qwer1234!', '970401', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_046@gmail.com', 'user', 'USER_046', '상선암', 'qwer1234!', '970401', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_047@gmail.com', 'user', 'USER_047', '의화단', 'qwer1234!', '970401', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_048@gmail.com', 'user', 'USER_048', '더벅지', 'qwer1234!', '970401', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_049@gmail.com', 'user', 'USER_049', '귓바위', 'qwer1234!', '970401', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_050@gmail.com', 'user', 'USER_050', '봉총찜', 'qwer1234!', '970401', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_051@gmail.com', 'user', 'USER_051', '우사리', 'qwer1234!', '070401', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_052@gmail.com', 'user', 'USER_052', '순맥반', 'qwer1234!', '070401', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_053@gmail.com', 'user', 'USER_053', '매문가', 'qwer1234!', '070401', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_054@gmail.com', 'user', 'USER_054', '버금상', 'qwer1234!', '070401', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_055@gmail.com', 'user', 'USER_055', '같기식', 'qwer1234!', '070401', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_056@gmail.com', 'user', 'USER_056', '소방법', 'qwer1234!', '070401', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_057@gmail.com', 'user', 'USER_057', '묻을무', 'qwer1234!', '070401', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_058@gmail.com', 'user', 'USER_058', '애국심', 'qwer1234!', '070401', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_059@gmail.com', 'user', 'USER_059', '메달밭', 'qwer1234!', '070401', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_060@gmail.com', 'user', 'USER_060', '오원환', 'qwer1234!', '070401', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_061@gmail.com', 'user', 'USER_061', '모래색', 'qwer1234!', '870401', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_062@gmail.com', 'user', 'USER_062', '세균론', 'qwer1234!', '870401', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_063@gmail.com', 'user', 'USER_063', '추복곡', 'qwer1234!', '870401', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_064@gmail.com', 'user', 'USER_064', '초세원', 'qwer1234!', '870401', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_065@gmail.com', 'user', 'USER_065', '카센터', 'qwer1234!', '870401', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_066@gmail.com', 'user', 'USER_066', '무데기', 'qwer1234!', '870401', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_067@gmail.com', 'user', 'USER_067', '각화사', 'qwer1234!', '870401', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_068@gmail.com', 'user', 'USER_068', '여우팥', 'qwer1234!', '870401', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_069@gmail.com', 'user', 'USER_069', '물수레', 'qwer1234!', '870401', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_070@gmail.com', 'user', 'USER_070', '인진술', 'qwer1234!', '870401', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_071@gmail.com', 'user', 'USER_071', '영유권', 'qwer1234!', '980505', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_072@gmail.com', 'user', 'USER_072', '통벨트', 'qwer1234!', '980505', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_073@gmail.com', 'user', 'USER_073', '단계석', 'qwer1234!', '980505', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_074@gmail.com', 'user', 'USER_074', '쌍곡선', 'qwer1234!', '980505', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_075@gmail.com', 'user', 'USER_075', '천리채', 'qwer1234!', '980505', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_076@gmail.com', 'user', 'USER_076', '백전계', 'qwer1234!', '980505', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_077@gmail.com', 'user', 'USER_077', '종순랑', 'qwer1234!', '980505', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_078@gmail.com', 'user', 'USER_078', '졸업생', 'qwer1234!', '980505', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_079@gmail.com', 'user', 'USER_079', '얼맹이', 'qwer1234!', '980505', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_080@gmail.com', 'user', 'USER_080', '믈구븨', 'qwer1234!', '980505', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_081@gmail.com', 'user', 'USER_081', '연대순', 'qwer1234!', '080505', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_082@gmail.com', 'user', 'USER_082', '연발총', 'qwer1234!', '080505', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_083@gmail.com', 'user', 'USER_083', '편의점', 'qwer1234!', '080505', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_084@gmail.com', 'user', 'USER_084', '케이싱', 'qwer1234!', '080505', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_085@gmail.com', 'user', 'USER_085', '막대표', 'qwer1234!', '080505', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_086@gmail.com', 'user', 'USER_086', '쩡냥깐', 'qwer1234!', '080505', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_087@gmail.com', 'user', 'USER_087', '류객주', 'qwer1234!', '080505', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_088@gmail.com', 'user', 'USER_088', '탄산기', 'qwer1234!', '080505', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_089@gmail.com', 'user', 'USER_089', '선관위', 'qwer1234!', '080505', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_090@gmail.com', 'user', 'USER_090', '혈구계', 'qwer1234!', '080505', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_091@gmail.com', 'user', 'USER_091', '온건파', 'qwer1234!', '880505', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_092@gmail.com', 'user', 'USER_092', '차렵것', 'qwer1234!', '880505', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_093@gmail.com', 'user', 'USER_093', '사공탄', 'qwer1234!', '880505', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_094@gmail.com', 'user', 'USER_094', '바라밀', 'qwer1234!', '880505', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_095@gmail.com', 'user', 'USER_095', '방애물', 'qwer1234!', '880505', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_096@gmail.com', 'user', 'USER_096', '반죽선', 'qwer1234!', '880505', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_097@gmail.com', 'user', 'USER_097', '뒤풀이', 'qwer1234!', '880505', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_098@gmail.com', 'user', 'USER_098', '국화못', 'qwer1234!', '880505', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');
INSERT INTO `user` VALUES ('USER_099@gmail.com', 'user', 'USER_099', '느렁테', 'qwer1234!', '880505', 'male', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/ddd9ac8dd08343f1819fb9aecd5676fe_1440.jpg');
INSERT INTO `user` VALUES ('USER_100@gmail.com', 'user', 'USER_100', '오긍선', 'qwer1234!', '880505', 'female', '2024-01-17 00:00:00.000000', 'https://image.idus.com/image/files/9e3e83f9ac8148078dd987587ad0272d_1440.jpg');

-- ----------------------------
-- Procedure structure for INSERT_USER_PROCEDURE
-- ----------------------------
DROP PROCEDURE IF EXISTS `INSERT_USER_PROCEDURE`;
delimiter ;;
CREATE PROCEDURE `INSERT_USER_PROCEDURE`()
BEGIN
  DECLARE i INT DEFAULT 1;
	DECLARE user_gen varchar(10); -- 변수 선언과 초기화
	
  WHILE (i <= 100) DO
    -- USER_GEN을 홀수일 때 '남자', 짝수일 때 '여자'로 설정
    IF i % 2 = 1 THEN
      SET user_gen = '남';
    ELSE
      SET user_gen = '여';
    END IF;
    
    INSERT INTO USER (USER_EMAIL, USER_NAME, USER_PWD, USER_GEN)
			VALUES (CONCAT('USER_', LPAD(i, 3, '0'), '@gmail.com'), CONCAT('USER_', LPAD(i, 3, '0')), '12345', user_gen);
    
    SET i = i + 1;
  END WHILE;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
