/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : localhost:3306
 Source Schema         : data_maoyan

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 25/12/2023 15:18:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cinema
-- ----------------------------
DROP TABLE IF EXISTS `cinema`;
CREATE TABLE `cinema`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `cinema` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `discount` double(255, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cinema
-- ----------------------------
INSERT INTO `cinema` VALUES (1, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 0.90);
INSERT INTO `cinema` VALUES (2, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 0.95);
INSERT INTO `cinema` VALUES (3, 'CGV影城（奥山IMAX店）', '青山区和平大道奥山世纪广场三楼', '改签,折扣卡,IMAX厅,4DX厅,60帧厅', 0.55);
INSERT INTO `cinema` VALUES (4, 'UME影城（CGS中国巨幕厅武汉青山店）', '青山区和平大道武汉印象城3楼', '改签,折扣卡,CGS中国巨幕厅,杜比全景声厅,4D厅', 0.66);
INSERT INTO `cinema` VALUES (5, '万影汇影城（华发中城荟店）', '江汉区青年路华发中城荟B9三楼（大兔子观光电梯三楼）', '退,改签,折扣, 杜比全景声厅', 0.88);
INSERT INTO `cinema` VALUES (6, '万福国际影城', '汉阳区鹦鹉大道518号万福国际广场B区3楼', '退,改签,折扣卡', 0.50);
INSERT INTO `cinema` VALUES (7, '万象影城(武汉江宸天街HALO巨幕店)', '江汉区青年路518号龙湖江宸天街5F万象影城', '退,改签,折扣卡', 0.88);
INSERT INTO `cinema` VALUES (8, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 0.90);
INSERT INTO `cinema` VALUES (9, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 0.95);
INSERT INTO `cinema` VALUES (10, 'CGV影城（奥山IMAX店）', '青山区和平大道奥山世纪广场三楼', '改签,折扣卡,IMAX厅,4DX厅,60帧厅', 0.55);
INSERT INTO `cinema` VALUES (11, 'UME影城（CGS中国巨幕厅武汉青山店）', '青山区和平大道武汉印象城3楼', '改签,折扣卡,CGS中国巨幕厅,杜比全景声厅,4D厅', 0.66);
INSERT INTO `cinema` VALUES (12, '万影汇影城（华发中城荟店）', '江汉区青年路华发中城荟B9三楼（大兔子观光电梯三楼）', '退,改签,折扣, 杜比全景声厅', 0.88);
INSERT INTO `cinema` VALUES (13, '万福国际影城', '汉阳区鹦鹉大道518号万福国际广场B区3楼', '退,改签,折扣卡', 0.50);
INSERT INTO `cinema` VALUES (14, '万象影城(武汉江宸天街HALO巨幕店)', '江汉区青年路518号龙湖江宸天街5F万象影城', '退,改签,折扣卡', 0.88);
INSERT INTO `cinema` VALUES (15, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 0.90);
INSERT INTO `cinema` VALUES (16, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 0.95);
INSERT INTO `cinema` VALUES (17, 'CGV影城（奥山IMAX店）', '青山区和平大道奥山世纪广场三楼', '改签,折扣卡,IMAX厅,4DX厅,60帧厅', 0.55);
INSERT INTO `cinema` VALUES (18, 'UME影城（CGS中国巨幕厅武汉青山店）', '青山区和平大道武汉印象城3楼', '改签,折扣卡,CGS中国巨幕厅,杜比全景声厅,4D厅', 0.66);
INSERT INTO `cinema` VALUES (19, '万影汇影城（华发中城荟店）', '江汉区青年路华发中城荟B9三楼（大兔子观光电梯三楼）', '退,改签,折扣, 杜比全景声厅', 0.88);
INSERT INTO `cinema` VALUES (20, '万福国际影城', '汉阳区鹦鹉大道518号万福国际广场B区3楼', '退,改签,折扣卡', 0.50);
INSERT INTO `cinema` VALUES (21, '万象影城(武汉江宸天街HALO巨幕店)', '江汉区青年路518号龙湖江宸天街5F万象影城', '退,改签,折扣卡', 0.88);
INSERT INTO `cinema` VALUES (22, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 0.90);
INSERT INTO `cinema` VALUES (23, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 0.95);
INSERT INTO `cinema` VALUES (24, 'CGV影城（奥山IMAX店）', '青山区和平大道奥山世纪广场三楼', '改签,折扣卡,IMAX厅,4DX厅,60帧厅', 0.55);
INSERT INTO `cinema` VALUES (25, 'UME影城（CGS中国巨幕厅武汉青山店）', '青山区和平大道武汉印象城3楼', '改签,折扣卡,CGS中国巨幕厅,杜比全景声厅,4D厅', 0.66);
INSERT INTO `cinema` VALUES (26, '万影汇影城（华发中城荟店）', '江汉区青年路华发中城荟B9三楼（大兔子观光电梯三楼）', '退,改签,折扣, 杜比全景声厅', 0.88);
INSERT INTO `cinema` VALUES (27, '万福国际影城', '汉阳区鹦鹉大道518号万福国际广场B区3楼', '退,改签,折扣卡', 0.50);
INSERT INTO `cinema` VALUES (28, '万象影城(武汉江宸天街HALO巨幕店)', '江汉区青年路518号龙湖江宸天街5F万象影城', '退,改签,折扣卡', 0.88);
INSERT INTO `cinema` VALUES (29, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 0.90);
INSERT INTO `cinema` VALUES (31, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 0.95);
INSERT INTO `cinema` VALUES (32, 'CGV影城（奥山IMAX店）', '青山区和平大道奥山世纪广场三楼', '改签,折扣卡,IMAX厅,4DX厅,60帧厅', 0.55);
INSERT INTO `cinema` VALUES (33, 'UME影城（CGS中国巨幕厅武汉青山店）', '青山区和平大道武汉印象城3楼', '改签,折扣卡,CGS中国巨幕厅,杜比全景声厅,4D厅', 0.66);
INSERT INTO `cinema` VALUES (34, '万影汇影城（华发中城荟店）', '江汉区青年路华发中城荟B9三楼（大兔子观光电梯三楼）', '退,改签,折扣, 杜比全景声厅', 0.88);
INSERT INTO `cinema` VALUES (35, '万福国际影城', '汉阳区鹦鹉大道518号万福国际广场B区3楼', '退,改签,折扣卡', 0.50);
INSERT INTO `cinema` VALUES (36, '万象影城(武汉江宸天街HALO巨幕店)', '江汉区青年路518号龙湖江宸天街5F万象影城', '退,改签,折扣卡', 0.88);
INSERT INTO `cinema` VALUES (37, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 0.90);
INSERT INTO `cinema` VALUES (38, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 0.95);
INSERT INTO `cinema` VALUES (39, 'CGV影城（奥山IMAX店）', '青山区和平大道奥山世纪广场三楼', '改签,折扣卡,IMAX厅,4DX厅,60帧厅', 0.55);
INSERT INTO `cinema` VALUES (40, 'UME影城（CGS中国巨幕厅武汉青山店）', '青山区和平大道武汉印象城3楼', '改签,折扣卡,CGS中国巨幕厅,杜比全景声厅,4D厅', 0.66);
INSERT INTO `cinema` VALUES (41, '万影汇影城（华发中城荟店）', '江汉区青年路华发中城荟B9三楼（大兔子观光电梯三楼）', '退,改签,折扣, 杜比全景声厅', 0.88);
INSERT INTO `cinema` VALUES (42, '万福国际影城', '汉阳区鹦鹉大道518号万福国际广场B区3楼', '退,改签,折扣卡', 0.50);
INSERT INTO `cinema` VALUES (43, '万象影城(武汉江宸天街HALO巨幕店)', '江汉区青年路518号龙湖江宸天街5F万象影城', '退,改签,折扣卡', 0.88);
INSERT INTO `cinema` VALUES (44, '1929电影公园（武汉光谷店）', '洪山区珞喻路889号融众国际6层', '退,改签,折扣卡,激光厅', 0.90);
INSERT INTO `cinema` VALUES (45, 'CGV影城（凯德西城IMAX店）', '硚口区解放大道十八号凯德广场05层。古田二路入口（古田二路生活一村公交站，古田小学斜对面）', '改签,折扣卡,IMAX厅', 0.95);
INSERT INTO `cinema` VALUES (46, 'CGV影城（奥山IMAX店）', '青山区和平大道奥山世纪广场三楼', '改签,折扣卡,IMAX厅,4DX厅,60帧厅', 0.55);
INSERT INTO `cinema` VALUES (47, 'UME影城（CGS中国巨幕厅武汉青山店）', '青山区和平大道武汉印象城3楼', '改签,折扣卡,CGS中国巨幕厅,杜比全景声厅,4D厅', 0.66);
INSERT INTO `cinema` VALUES (48, '万影汇影城（华发中城荟店）', '江汉区青年路华发中城荟B9三楼（大兔子观光电梯三楼）', '退,改签,折扣, 杜比全景声厅', 0.88);
INSERT INTO `cinema` VALUES (49, '万福国际影城', '汉阳区鹦鹉大道518号万福国际广场B区3楼', '退,改签,折扣卡', 0.50);
INSERT INTO `cinema` VALUES (50, '万象影城(武汉江宸天街HALO巨幕店)', '江汉区青年路518号龙湖江宸天街5F万象影城', '退,改签,折扣卡', 0.88);

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `movieName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `movieImg` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES (1, '第九嫌疑人', 'gaoqing.jpg', 60.00);
INSERT INTO `movie` VALUES (2, '鹦鹉杀', 'yingwusha_2.jpg', 31.27);
INSERT INTO `movie` VALUES (3, '封神第99部', 'fengshen_3.jpg', 40.00);
INSERT INTO `movie` VALUES (4, '敢死队四：最终章', 'gansidui_4.jpg', 30.50);
INSERT INTO `movie` VALUES (5, '威尼斯惊魂夜', 'weinisi_5.jpg', 50.00);
INSERT INTO `movie` VALUES (6, '奥本海默', 'aobenhaimo_6.jpg', 33.00);
INSERT INTO `movie` VALUES (7, '学爸', 'xueba_7.jpg', 55.90);
INSERT INTO `movie` VALUES (8, '好像没那么热血沸腾', 'haoxiangmeinameren_8.jpg', 23.75);

-- ----------------------------
-- Table structure for playingtime
-- ----------------------------
DROP TABLE IF EXISTS `playingtime`;
CREATE TABLE `playingtime`  (
  `id` int(0) NOT NULL,
  `playingTime` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '播放时间',
  `yingtingId` int(0) NULL DEFAULT NULL COMMENT '影厅id',
  `movieId` int(0) NULL DEFAULT NULL COMMENT '电影id',
  `discount` double(255, 2) NULL DEFAULT NULL COMMENT '影厅折扣',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of playingtime
-- ----------------------------
INSERT INTO `playingtime` VALUES (1, '2023-11-08 08:30:00', 1, 1, 1.00);
INSERT INTO `playingtime` VALUES (2, '2023-11-09 12:30:00', 1, 1, 1.00);
INSERT INTO `playingtime` VALUES (3, '2023-11-09 15:00:00', 1, 1, 1.00);
INSERT INTO `playingtime` VALUES (4, '2023-11-09 21:50:00', 1, 1, 1.10);
INSERT INTO `playingtime` VALUES (5, '2023-11-08 11:50:00', 2, 1, 1.30);
INSERT INTO `playingtime` VALUES (6, '2023-11-11 09:30:00', 2, 2, 0.90);
INSERT INTO `playingtime` VALUES (7, '2023-11-11 21:50:00', 2, 2, 0.80);
INSERT INTO `playingtime` VALUES (8, '2023-11-12 11:20:00', 3, 1, 0.90);
INSERT INTO `playingtime` VALUES (9, '2023-11-12 13:40:00', 7, 1, 1.00);
INSERT INTO `playingtime` VALUES (10, '2023-11-12 19:50:00', 6, 1, 1.50);

-- ----------------------------
-- Table structure for seat
-- ----------------------------
DROP TABLE IF EXISTS `seat`;
CREATE TABLE `seat`  (
  `id` int(0) NOT NULL,
  `playingId` int(0) NULL DEFAULT NULL,
  `seat` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seat
-- ----------------------------
INSERT INTO `seat` VALUES (1, 1, '[[0,0,0,0,1,1,1,0,0,0],[0,1,1,1,1,1,1,0,0,0],[0,1,1,1,1,1,1,0,0,0],[1,1,1,1,1,1,1,0,0,0],[0,1,1,1,1,1,1,0,0,0],[0,1,1,1,0,0,1,0,0,0],[0,1,1,0,1,1,1,0,0,0],[0,1,1,1,1,1,1,1,1,0],[0,0,1,1,0,0,0,0,0,0]]');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123456');

-- ----------------------------
-- Table structure for yingting
-- ----------------------------
DROP TABLE IF EXISTS `yingting`;
CREATE TABLE `yingting`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `yingting` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '影厅',
  `cinemaId` int(0) NULL DEFAULT NULL COMMENT '影院id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yingting
-- ----------------------------
INSERT INTO `yingting` VALUES (1, '一号厅', 1);
INSERT INTO `yingting` VALUES (2, '二号厅', 1);
INSERT INTO `yingting` VALUES (3, '三号厅', 1);
INSERT INTO `yingting` VALUES (4, '四号厅', 1);
INSERT INTO `yingting` VALUES (5, '五号厅', 1);
INSERT INTO `yingting` VALUES (6, 'IMAX厅', 1);
INSERT INTO `yingting` VALUES (7, '私人定制厅', 1);
INSERT INTO `yingting` VALUES (8, '一号厅', 2);
INSERT INTO `yingting` VALUES (9, '二号厅', 2);

SET FOREIGN_KEY_CHECKS = 1;
