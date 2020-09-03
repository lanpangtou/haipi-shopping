/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : haipi

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 29/08/2020 23:45:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '品牌id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '品牌名称',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品牌图片地址',
  `letter` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '品牌首字母',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES (13, 'haipi', '', 'H');
INSERT INTO `brand` VALUES (1115, 'HTC', 'http://img20.360buyimg.com/popshop/jfs/t1/6618/13/1920/2981/5bcec7bbEab64679e/f8d2747d8d6e389b.jpg', 'H');
INSERT INTO `brand` VALUES (1430, '酷比（koobee）', '', 'K');
INSERT INTO `brand` VALUES (2032, 'OPPO', 'http://img20.360buyimg.com/popshop/jfs/t1/22465/2/10288/3283/5c860ac9E1bbb5da9/33ffbca794e7b965.jpg', 'O');
INSERT INTO `brand` VALUES (2266, 'ROG', 'http://img20.360buyimg.com/popshop/jfs/t25714/151/2114096477/2971/2c57ec07/5bc467c2Ned5a3c61.jpg', 'R');
INSERT INTO `brand` VALUES (4986, '波导（BiRD）', 'http://img20.360buyimg.com/popshop/g15/M06/1E/18/rBEhWlK6ozQIAAAAAAAG4ikE47sAAHN8wIhV8EAAAb6077.png', 'B');
INSERT INTO `brand` VALUES (5565, '创维（Skyworth）', 'http://img20.360buyimg.com/popshop/jfs/t1/53478/21/9148/4976/5d68e51dE84132ea9/4dc268e67891cceb.png', 'C');
INSERT INTO `brand` VALUES (6522, '朵唯（DOOV）', '', 'D');
INSERT INTO `brand` VALUES (6742, '飞利浦（PHILIPS）', 'http://img30.360buyimg.com/popshop/jfs/t1/5932/28/11176/6002/5bce822bE4be57b0c/162d6a5b24eb2ab7.jpg', 'F');
INSERT INTO `brand` VALUES (7888, '海信（Hisense）', 'http://img20.360buyimg.com/popshop/jfs/t19360/352/2305554545/5388/7fed869c/5aefeb9bN1c82297b.jpg', 'H');
INSERT INTO `brand` VALUES (8214, '黑莓（BlackBerry）', 'http://img30.360buyimg.com/popshop/jfs/t2815/64/1277517721/2672/ece33803/57396d92N3e802994.png', 'H');
INSERT INTO `brand` VALUES (8557, '华为（HUAWEI）', 'http://img30.360buyimg.com/popshop/jfs/t1/21713/1/5027/5175/5c38740eE4ccfc381/0bedaba1e05119ac.jpg', 'H');
INSERT INTO `brand` VALUES (9420, '金立（Gionee）', 'http://img20.360buyimg.com/popshop/jfs/t2413/204/2928322939/11997/1a757fce/56fc94e0Nc4581b2a.jpg', 'J');
INSERT INTO `brand` VALUES (10089, 'CAT', 'http://img20.360buyimg.com/popshop/jfs/t3688/45/560406428/4181/ea913769/58107169N97fbd5c3.jpg', 'K');
INSERT INTO `brand` VALUES (10317, '康佳（KONKA）', 'http://img20.360buyimg.com/popshop/jfs/t1/39450/35/11890/1756/5d8b1ba9E5c839db8/735009863988f8b0.jpg', 'K');
INSERT INTO `brand` VALUES (10640, '酷派（Coolpad）', 'http://img20.360buyimg.com/popshop/jfs/t2521/347/883897149/3732/91c917ec/5670cf96Ncffa2ae6.jpg', 'K');
INSERT INTO `brand` VALUES (11516, '联想（Lenovo）', 'http://img20.360buyimg.com/popshop/jfs/t1/7730/1/1440/6292/5bce7447E8c0dc0cf/15668b30fabe0850.jpg', 'L');
INSERT INTO `brand` VALUES (12669, '魅族（MEIZU）', 'http://img30.360buyimg.com/popshop/jfs/t23308/338/2405488313/4879/86ef646d/5b7e7f1fNddb8e4ff.jpg', 'M');
INSERT INTO `brand` VALUES (13066, '摩托罗拉（Motorola）', 'http://img20.360buyimg.com/popshop/jfs/t24682/107/1373450238/16268/2827346f/5baddd0eN1b9a7b91.jpg', 'M');
INSERT INTO `brand` VALUES (13539, '诺基亚（NOKIA）', 'http://img20.360buyimg.com/popshop/jfs/t1/1035/26/11181/2858/5bce7321E51f2c59e/0c685f39d86436dd.jpg', 'N');
INSERT INTO `brand` VALUES (14026, 'Apple', 'http://img20.360buyimg.com/popshop/jfs/t2989/240/151377693/3895/30ad9044/574d36dbN262ef26d.jpg', 'A');
INSERT INTO `brand` VALUES (15127, '三星（SAMSUNG）', 'http://img30.360buyimg.com/popshop/jfs/t1/1534/38/9873/3556/5bc93df2E73c40121/74dc92d16e483509.jpg', 'S');
INSERT INTO `brand` VALUES (16506, '索爱（soaiy）', 'http://img30.360buyimg.com/popshop/jfs/t2038/259/119166510/17973/32f59905/55efe697Naf90dce5.jpg', 'S');
INSERT INTO `brand` VALUES (16538, '索尼（SONY）', 'http://img30.360buyimg.com/popshop/jfs/t1/175/26/11602/2671/5bce70a1Ecd95c076/4d7f4f80f80c5a1c.jpg', 'S');
INSERT INTO `brand` VALUES (18362, '小辣椒', 'http://img20.360buyimg.com/popshop/jfs/t1/8465/31/13429/3339/5c41d139E0f569651/8109d53385693f46.jpg', 'X');
INSERT INTO `brand` VALUES (18374, '小米（MI）', 'http://img30.360buyimg.com/popshop/jfs/t1/906/28/10166/2645/5bc93b63Eb0813c2e/600c61f344607414.jpg', 'X');
INSERT INTO `brand` VALUES (21011, '中兴（ZTE）', 'http://img30.360buyimg.com/popshop/jfs/t1/1509/30/11025/1890/5bcda60dEe221df01/b9ea1c771f750731.png', 'Z');
INSERT INTO `brand` VALUES (22252, '中国移动', '', 'Z');
INSERT INTO `brand` VALUES (25591, 'vivo', 'http://img20.360buyimg.com/popshop/jfs/t1/115757/4/9851/3464/5ee0af9bEc6576114/0dfceda9f7809bb5.jpg', 'V');
INSERT INTO `brand` VALUES (27094, '努比亚（nubia）', 'http://img30.360buyimg.com/popshop/jfs/t1/120249/21/3094/5968/5eccc12fE7584d212/4361db800ef9bcd6.jpg', 'N');
INSERT INTO `brand` VALUES (27306, '360', 'http://img30.360buyimg.com/popshop/jfs/t1/5870/5/9962/7213/5bc93baeEee154554/3544a909fb55f1b1.png', 'S');
INSERT INTO `brand` VALUES (36658, '乐丰（lephone）', 'http://img30.360buyimg.com/popshop/g13/M02/0E/05/rBEhU1K6oFcIAAAAAAAEaHmRPA0AAHO0APesmwAAASA439.png', 'L');
INSERT INTO `brand` VALUES (38125, 'SUGAR', 'http://img30.360buyimg.com/popshop/jfs/t19666/23/1414857174/6332/b295d8af/5ac9b90fN0a66d3bc.jpg', 'S');
INSERT INTO `brand` VALUES (38126, '美图（meitu）', 'http://img20.360buyimg.com/popshop/jfs/t1/16499/6/14897/3459/5cac7aaaEa660b929/87a13d76760b2ebf.jpg', 'M');
INSERT INTO `brand` VALUES (38605, 'MANN', 'http://img30.360buyimg.com/popshop/g14/M0A/09/0F/rBEhVVK6oIIIAAAAAAAIviNGda8AAHWDwND6f8AAAjW195.png', 'M');
INSERT INTO `brand` VALUES (43644, '21KE', 'http://img20.360buyimg.com/popshop/jfs/t1/21399/22/5656/2335/5c41d084E0ed3f23d/fdd638d46944e8c1.png', 'E');
INSERT INTO `brand` VALUES (45227, '易百年', 'http://img20.360buyimg.com/popshop/g15/M03/02/07/rBEhWVLVHkkIAAAAAAAKJMIcK2gAAH5UwP_7wkAAAo8610.png', 'Y');
INSERT INTO `brand` VALUES (51040, 'BIHEE', '', 'B');
INSERT INTO `brand` VALUES (52302, '优购（UooGou）', 'http://img20.360buyimg.com/popshop/g14/M01/09/10/rBEhVlK6uccIAAAAAAAMWBwpYlcAAHWZAMwJWwAAAxw358.png', 'Y');
INSERT INTO `brand` VALUES (54347, '尼凯恩（neken）', 'http://img20.360buyimg.com/popshop/g13/M01/11/10/rBEhVFLTwJsIAAAAAACMa1M83DoAAH4hALKkNgAAIyD151.png', 'N');
INSERT INTO `brand` VALUES (56411, '誉品（YEPEN）', 'http://img20.360buyimg.com/popshop/jfs/t2545/149/1116371247/18351/ed366389/568c84a1N4f8982e2.jpg', 'Y');
INSERT INTO `brand` VALUES (59110, '诺亚信（NOAIN）', 'http://img30.360buyimg.com/popshop/jfs/t1/63988/30/9244/13534/5d70b5fcE3e1921ac/fb931837bd6b3ab5.jpg', 'N');
INSERT INTO `brand` VALUES (63032, '一加', 'http://img30.360buyimg.com/popshop/jfs/t1/107402/12/9169/5006/5e71bd33E393eb258/d8fe13f59e6cc2ed.jpg', 'Y');
INSERT INTO `brand` VALUES (70405, 'SOYES', 'http://img30.360buyimg.com/popshop/jfs/t1780/125/1084144636/46580/4da0711d/55e1555eN7ab371f3.jpg', 'S');
INSERT INTO `brand` VALUES (84048, '硕王', '', 'S');
INSERT INTO `brand` VALUES (89010, '纽曼（Newman）', 'http://img30.360buyimg.com/popshop/jfs/t2500/94/1639638599/22578/814ed39b/5668f2afN632b91c6.jpg', 'N');
INSERT INTO `brand` VALUES (91515, '锤子（smartisan）', 'http://img20.360buyimg.com/popshop/jfs/t1954/102/907711365/5487/9f26868f/5631ccdeNe8df5efb.jpg', 'C');
INSERT INTO `brand` VALUES (104490, '谷歌（Google）', '', 'G');
INSERT INTO `brand` VALUES (109705, 'GlocalMe', 'http://img20.360buyimg.com/popshop/jfs/t775/195/944834427/20510/7adc34d6/550807c8Nbe9680f1.jpg', 'G');
INSERT INTO `brand` VALUES (129096, '米蓝（MLLED）', 'http://img20.360buyimg.com/popshop/jfs/t1249/196/1091337532/11732/201af6cf/5570605eN110a8f64.jpg', 'M');
INSERT INTO `brand` VALUES (144162, '华硕（ASUS）', 'http://img30.360buyimg.com/popshop/jfs/t16144/164/7107303/3935/b968dfb9/5a25249dN279cc35d.jpg', 'A');
INSERT INTO `brand` VALUES (149070, 'AGM', 'http://img30.360buyimg.com/popshop/jfs/t7672/5/613320372/3853/5bcb2027/59956bc5Na0e765cd.png', 'A');
INSERT INTO `brand` VALUES (156386, 'APPLE', '', 'A');
INSERT INTO `brand` VALUES (158021, '关爱心', 'http://img30.360buyimg.com/popshop/jfs/t2257/337/616585047/52348/193b9c53/5619e867N45f05a86.jpg', 'G');
INSERT INTO `brand` VALUES (159313, 'MOQI', 'http://img30.360buyimg.com/popshop/jfs/t649/307/1175530042/23090/c59c9bc3/54b5c8b1N693fe0f3.jpg', 'M');
INSERT INTO `brand` VALUES (164920, 'LG', 'http://img30.360buyimg.com/popshop/jfs/t2830/42/1246856630/3519/736447b0/5739678aN679faf0d.jpg', 'L');
INSERT INTO `brand` VALUES (179105, '小霸王', 'http://img30.360buyimg.com/popshop/jfs/t2086/238/1910096857/9206/faddd8bd/568f74d1N06bdb36d.png', 'X');
INSERT INTO `brand` VALUES (180944, '柔宇（ROYOLE）', 'http://img20.360buyimg.com/popshop/jfs/t1/3703/11/10048/5225/5bc9aea2E104ce981/6bff372e6c2773c0.jpg', 'R');
INSERT INTO `brand` VALUES (191133, '天语（K-Touch）', 'http://img20.360buyimg.com/popshop/jfs/t1/14033/34/5735/3344/5c41d0f9Eb0710525/2e7c09aba0e52cc5.jpg', 'K');
INSERT INTO `brand` VALUES (202282, '欧奇（OUKI）', '', 'O');
INSERT INTO `brand` VALUES (202805, '詹姆士（GERMY）', 'http://img30.360buyimg.com/popshop/g15/M06/1B/12/rBEhWlNl-RYIAAAAAAEviId4eVQAAM1pgE_A5AAAS-g022.jpg', 'G');
INSERT INTO `brand` VALUES (215841, '索野（SOYES）', 'http://img30.360buyimg.com/popshop/jfs/t2353/320/2116080472/69234/74208f02/5698b806N6c6276b7.png', 'S');
INSERT INTO `brand` VALUES (219484, 'CONQUEST', 'http://img20.360buyimg.com/popshop/jfs/t1/76706/25/7872/4894/5d5cb425Ec94d887c/784ee2f841450b03.jpg', 'C');
INSERT INTO `brand` VALUES (221149, '铂爵（BIOJUET）', 'http://img30.360buyimg.com/popshop/jfs/t1/25659/4/13087/10150/5c9dbd79E71a5fe88/3958b59ba24ba1fb.jpg', 'B');
INSERT INTO `brand` VALUES (221691, '捷语（gofly）', '', 'F');
INSERT INTO `brand` VALUES (223199, 'BLU', '', 'B');
INSERT INTO `brand` VALUES (228280, '守护宝', 'http://img30.360buyimg.com/popshop/jfs/t4759/158/117484384/5124/74c314d7/58db2764N71d59f1b.png', 'S');
INSERT INTO `brand` VALUES (228816, 'unruly', 'http://img30.360buyimg.com/popshop/jfs/t3661/188/611455571/38385/4afdc0f9/580e203bNececf9b0.jpg', 'B');
INSERT INTO `brand` VALUES (231550, 'VETAS', 'http://img30.360buyimg.com/popshop/jfs/t18274/275/657202034/3787/35c253c5/5a9f7b79Nf580f962.png', 'V');
INSERT INTO `brand` VALUES (233984, '8848', 'http://img20.360buyimg.com/popshop/jfs/t1/17462/1/6098/2529/5c46f52cEcf07df42/3f6e36540af3b563.jpg', 'B');
INSERT INTO `brand` VALUES (238798, 'HONOR', '', 'H');
INSERT INTO `brand` VALUES (249404, '创星', 'http://img20.360buyimg.com/popshop/jfs/t22042/209/1053901270/2983/3a8a25b6/5b1f6474Nae7bf493.png', 'C');
INSERT INTO `brand` VALUES (253520, 'VERTU', 'http://img30.360buyimg.com/popshop/jfs/t5836/31/951952716/2427/77f5df19/5922ce08N0ec247a1.png', 'V');
INSERT INTO `brand` VALUES (271696, '红鸟', '', 'H');
INSERT INTO `brand` VALUES (276780, '海语（HAIYU）', '', 'H');
INSERT INTO `brand` VALUES (280152, 'YOTA', 'http://img20.360buyimg.com/popshop/jfs/t8812/41/1745658365/7482/edca3c29/59c89c68N7f5527f9.jpg', 'Y');
INSERT INTO `brand` VALUES (298340, '黑鲨', 'http://img30.360buyimg.com/popshop/jfs/t1/127625/14/6555/2975/5f0586e9E79a4494c/39171d455c14a878.png', 'H');
INSERT INTO `brand` VALUES (316578, '克里特（kreta）', '', 'K');
INSERT INTO `brand` VALUES (319968, '飞利浦（philips）', 'http://img20.360buyimg.com/popshop/jfs/t22009/94/2602996727/5954/9e45a88b/5b5fbcc8N6ec5451a.jpg', 'F');
INSERT INTO `brand` VALUES (321167, '捷语（GoFly）', 'http://img20.360buyimg.com/popshop/jfs/t2089/112/2080812475/67851/c98ec207/569db257N5bbb8680.jpg', 'G');
INSERT INTO `brand` VALUES (326447, '爱户外（ioutdoor）', 'http://img20.360buyimg.com/popshop/jfs/t15025/267/2711762048/21755/97388b/5ab0ddeaN67e8e8b4.jpg', 'A');
INSERT INTO `brand` VALUES (382193, '多亲（QIN）', '', 'D');
INSERT INTO `brand` VALUES (396640, '遨游（AORO）', '', 'A');
INSERT INTO `brand` VALUES (413457, '荣耀（HONOR）', '', 'R');
INSERT INTO `brand` VALUES (417249, '荣耀（honor）', 'http://img30.360buyimg.com/popshop/jfs/t1/18622/4/3466/13591/5c27251eEc931095d/a9c302d84c16b3bd.jpg', 'R');
INSERT INTO `brand` VALUES (428767, 'LGRAVER', '', 'L');
INSERT INTO `brand` VALUES (428905, '乐易', '', 'L');
INSERT INTO `brand` VALUES (435415, '好尔美', 'http://img30.360buyimg.com/popshop/jfs/t1/25984/3/11380/47062/5c8f762bEb6595423/6177b9b0ee72e1d5.jpg', 'H');
INSERT INTO `brand` VALUES (438621, '真我（realme）', 'http://img20.360buyimg.com/popshop/jfs/t1/48763/28/366/4349/5cd4d321E3de63480/bb6bd8cb1169483f.jpg', 'R');
INSERT INTO `brand` VALUES (446223, 'Unihertz', 'http://img30.360buyimg.com/popshop/jfs/t1/31090/12/12359/21288/5cb6f736Effd8a657/e0da7726692f1c99.jpg', 'U');
INSERT INTO `brand` VALUES (480353, '京崎（TOOKY）', '', 'J');
INSERT INTO `brand` VALUES (491243, '坚果（smartisan）', 'http://img20.360buyimg.com/popshop/jfs/t1/73853/17/9179/5487/5d6f6cebE265bcfa3/7198021246585798.jpg', 'J');
INSERT INTO `brand` VALUES (494937, 'PALM', '', 'P');
INSERT INTO `brand` VALUES (501092, '皓轩（Hoswn）', '', 'H');
INSERT INTO `brand` VALUES (532320, 'oppo', '', 'O');
INSERT INTO `brand` VALUES (534982, 'miue', '', 'M');
INSERT INTO `brand` VALUES (536885, 'iQOO', 'http://img20.360buyimg.com/popshop/jfs/t1/85225/8/14158/5207/5e605ee5E9efd9c75/76e7e84ece7ea070.jpg', 'I');
INSERT INTO `brand` VALUES (561030, '苹果（Apple）', '', 'P');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `sku_id` int(11) NOT NULL COMMENT '商品id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名字',
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片',
  `price` bigint(10) NULL DEFAULT NULL COMMENT '价格',
  `count` int(11) NULL DEFAULT NULL COMMENT '数量',
  `own_spec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品规格参数',
  PRIMARY KEY (`sku_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` bigint(20) NOT NULL COMMENT '类目id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类目名称',
  `parent_id` bigint(20) NOT NULL COMMENT '父类目id,顶级类目填0',
  `is_parent` tinyint(1) NOT NULL COMMENT '是否为父节点，0为否，1为是',
  `sort` int(4) NOT NULL COMMENT '排序指数，越小越靠前',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `key_parent_id`(`parent_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品类目表，类目和商品(spu)是一对多关系，类目与品牌是多对多关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '图书、音像、电子书刊', 0, 1, 1);
INSERT INTO `category` VALUES (2, '电子书刊', 1, 1, 1);
INSERT INTO `category` VALUES (3, '电子书', 2, 0, 1);
INSERT INTO `category` VALUES (4, '网络原创', 2, 0, 2);
INSERT INTO `category` VALUES (5, '数字杂志', 2, 0, 3);
INSERT INTO `category` VALUES (6, '多媒体图书', 2, 0, 4);
INSERT INTO `category` VALUES (7, '音像', 1, 1, 2);
INSERT INTO `category` VALUES (8, '音乐', 7, 0, 1);
INSERT INTO `category` VALUES (9, '影视', 7, 0, 2);
INSERT INTO `category` VALUES (10, '教育音像', 7, 0, 3);
INSERT INTO `category` VALUES (11, '英文原版', 1, 1, 3);
INSERT INTO `category` VALUES (12, '少儿', 11, 0, 1);
INSERT INTO `category` VALUES (13, '商务投资', 11, 0, 2);
INSERT INTO `category` VALUES (14, '英语学习与考试', 11, 0, 3);
INSERT INTO `category` VALUES (15, '文学', 11, 0, 4);
INSERT INTO `category` VALUES (16, '传记', 11, 0, 5);
INSERT INTO `category` VALUES (17, '励志', 11, 0, 6);
INSERT INTO `category` VALUES (18, '文艺', 1, 1, 4);
INSERT INTO `category` VALUES (19, '小说', 18, 0, 1);
INSERT INTO `category` VALUES (20, '文学', 18, 0, 2);
INSERT INTO `category` VALUES (21, '青春文学', 18, 0, 3);
INSERT INTO `category` VALUES (22, '传记', 18, 0, 4);
INSERT INTO `category` VALUES (23, '艺术', 18, 0, 5);
INSERT INTO `category` VALUES (24, '少儿', 1, 1, 5);
INSERT INTO `category` VALUES (25, '少儿', 24, 0, 1);
INSERT INTO `category` VALUES (26, '0-2岁', 24, 0, 2);
INSERT INTO `category` VALUES (27, '3-6岁', 24, 0, 3);
INSERT INTO `category` VALUES (28, '7-10岁', 24, 0, 4);
INSERT INTO `category` VALUES (29, '11-14岁', 24, 0, 5);
INSERT INTO `category` VALUES (30, '人文社科', 1, 1, 6);
INSERT INTO `category` VALUES (31, '历史', 30, 0, 1);
INSERT INTO `category` VALUES (32, '哲学', 30, 0, 2);
INSERT INTO `category` VALUES (33, '国学', 30, 0, 3);
INSERT INTO `category` VALUES (34, '政治/军事', 30, 0, 4);
INSERT INTO `category` VALUES (35, '法律', 30, 0, 5);
INSERT INTO `category` VALUES (36, '人文社科', 30, 0, 6);
INSERT INTO `category` VALUES (37, '心理学', 30, 0, 7);
INSERT INTO `category` VALUES (38, '文化', 30, 0, 8);
INSERT INTO `category` VALUES (39, '社会科学', 30, 0, 9);
INSERT INTO `category` VALUES (40, '经管励志', 1, 1, 7);
INSERT INTO `category` VALUES (41, '经济', 40, 0, 1);
INSERT INTO `category` VALUES (42, '金融与投资', 40, 0, 2);
INSERT INTO `category` VALUES (43, '管理', 40, 0, 3);
INSERT INTO `category` VALUES (44, '励志与成功', 40, 0, 4);
INSERT INTO `category` VALUES (45, '生活', 1, 1, 8);
INSERT INTO `category` VALUES (46, '生活', 45, 0, 1);
INSERT INTO `category` VALUES (47, '健身与保健', 45, 0, 2);
INSERT INTO `category` VALUES (48, '家庭与育儿', 45, 0, 3);
INSERT INTO `category` VALUES (49, '旅游', 45, 0, 4);
INSERT INTO `category` VALUES (50, '烹饪美食', 45, 0, 5);
INSERT INTO `category` VALUES (51, '科技', 1, 1, 9);
INSERT INTO `category` VALUES (52, '工业技术', 51, 0, 1);
INSERT INTO `category` VALUES (53, '科普读物', 51, 0, 2);
INSERT INTO `category` VALUES (54, '建筑', 51, 0, 3);
INSERT INTO `category` VALUES (55, '医学', 51, 0, 4);
INSERT INTO `category` VALUES (56, '科学与自然', 51, 0, 5);
INSERT INTO `category` VALUES (57, '计算机与互联网', 51, 0, 6);
INSERT INTO `category` VALUES (58, '电子通信', 51, 0, 7);
INSERT INTO `category` VALUES (59, '教育', 1, 1, 10);
INSERT INTO `category` VALUES (60, '中小学教辅', 59, 0, 1);
INSERT INTO `category` VALUES (61, '教育与考试', 59, 0, 2);
INSERT INTO `category` VALUES (62, '外语学习', 59, 0, 3);
INSERT INTO `category` VALUES (63, '大中专教材', 59, 0, 4);
INSERT INTO `category` VALUES (64, '字典词典', 59, 0, 5);
INSERT INTO `category` VALUES (65, '港台图书', 1, 1, 11);
INSERT INTO `category` VALUES (66, '艺术/设计/收藏', 65, 0, 1);
INSERT INTO `category` VALUES (67, '经济管理', 65, 0, 2);
INSERT INTO `category` VALUES (68, '文化/学术', 65, 0, 3);
INSERT INTO `category` VALUES (69, '少儿', 65, 0, 4);
INSERT INTO `category` VALUES (70, '其他', 1, 1, 12);
INSERT INTO `category` VALUES (71, '工具书', 70, 0, 1);
INSERT INTO `category` VALUES (72, '杂志/期刊', 70, 0, 2);
INSERT INTO `category` VALUES (73, '套装书', 70, 0, 3);
INSERT INTO `category` VALUES (74, '手机', 0, 1, 2);
INSERT INTO `category` VALUES (75, '手机通讯', 74, 1, 1);
INSERT INTO `category` VALUES (76, '手机', 75, 0, 1);
INSERT INTO `category` VALUES (77, '对讲机', 75, 0, 2);
INSERT INTO `category` VALUES (78, '运营商', 74, 1, 2);
INSERT INTO `category` VALUES (79, '合约机', 78, 0, 1);
INSERT INTO `category` VALUES (80, '选号中心', 78, 0, 2);
INSERT INTO `category` VALUES (81, '装宽带', 78, 0, 3);
INSERT INTO `category` VALUES (82, '办套餐', 78, 0, 4);
INSERT INTO `category` VALUES (83, '手机配件', 74, 1, 3);
INSERT INTO `category` VALUES (84, '移动电源', 83, 0, 1);
INSERT INTO `category` VALUES (85, '电池/移动电源', 83, 0, 2);
INSERT INTO `category` VALUES (86, '蓝牙耳机', 83, 0, 3);
INSERT INTO `category` VALUES (87, '充电器/数据线', 83, 0, 4);
INSERT INTO `category` VALUES (88, '苹果周边', 83, 0, 5);
INSERT INTO `category` VALUES (89, '手机耳机', 83, 0, 6);
INSERT INTO `category` VALUES (90, '手机贴膜', 83, 0, 7);
INSERT INTO `category` VALUES (91, '手机存储卡', 83, 0, 8);
INSERT INTO `category` VALUES (92, '充电器', 83, 0, 9);
INSERT INTO `category` VALUES (93, '数据线', 83, 0, 10);
INSERT INTO `category` VALUES (94, '手机保护套', 83, 0, 11);
INSERT INTO `category` VALUES (95, '车载配件', 83, 0, 12);
INSERT INTO `category` VALUES (96, 'iPhone 配件', 83, 0, 13);
INSERT INTO `category` VALUES (97, '手机电池', 83, 0, 14);
INSERT INTO `category` VALUES (98, '创意配件', 83, 0, 15);
INSERT INTO `category` VALUES (99, '便携/无线音响', 83, 0, 16);
INSERT INTO `category` VALUES (100, '手机饰品', 83, 0, 17);
INSERT INTO `category` VALUES (101, '拍照配件', 83, 0, 18);
INSERT INTO `category` VALUES (102, '手机支架', 83, 0, 19);
INSERT INTO `category` VALUES (103, '家用电器', 0, 1, 3);
INSERT INTO `category` VALUES (104, '大 家 电', 103, 1, 1);
INSERT INTO `category` VALUES (105, '平板电视', 104, 0, 1);
INSERT INTO `category` VALUES (106, '空调', 104, 0, 2);
INSERT INTO `category` VALUES (107, '冰箱', 104, 0, 3);
INSERT INTO `category` VALUES (108, '洗衣机', 104, 0, 4);
INSERT INTO `category` VALUES (109, '家庭影院', 104, 0, 5);
INSERT INTO `category` VALUES (110, 'DVD/电视盒子', 104, 0, 6);
INSERT INTO `category` VALUES (111, '迷你音响', 104, 0, 7);
INSERT INTO `category` VALUES (112, '冷柜/冰吧', 104, 0, 8);
INSERT INTO `category` VALUES (113, '家电配件', 104, 0, 9);
INSERT INTO `category` VALUES (114, '功放', 104, 0, 10);
INSERT INTO `category` VALUES (115, '回音壁/Soundbar', 104, 0, 11);
INSERT INTO `category` VALUES (116, 'Hi-Fi专区', 104, 0, 12);
INSERT INTO `category` VALUES (117, '电视盒子', 104, 0, 13);
INSERT INTO `category` VALUES (118, '酒柜', 104, 0, 14);
INSERT INTO `category` VALUES (119, '厨卫大电', 103, 1, 2);
INSERT INTO `category` VALUES (120, '燃气灶', 119, 0, 1);
INSERT INTO `category` VALUES (121, '油烟机', 119, 0, 2);
INSERT INTO `category` VALUES (122, '热水器', 119, 0, 3);
INSERT INTO `category` VALUES (123, '消毒柜', 119, 0, 4);
INSERT INTO `category` VALUES (124, '洗碗机', 119, 0, 5);
INSERT INTO `category` VALUES (125, '厨房小电', 103, 1, 3);
INSERT INTO `category` VALUES (126, '料理机', 125, 0, 1);
INSERT INTO `category` VALUES (127, '榨汁机', 125, 0, 2);
INSERT INTO `category` VALUES (128, '电饭煲', 125, 0, 3);
INSERT INTO `category` VALUES (129, '电压力锅', 125, 0, 4);
INSERT INTO `category` VALUES (130, '豆浆机', 125, 0, 5);
INSERT INTO `category` VALUES (131, '咖啡机', 125, 0, 6);
INSERT INTO `category` VALUES (132, '微波炉', 125, 0, 7);
INSERT INTO `category` VALUES (133, '电烤箱', 125, 0, 8);
INSERT INTO `category` VALUES (134, '电磁炉', 125, 0, 9);
INSERT INTO `category` VALUES (135, '面包机', 125, 0, 10);
INSERT INTO `category` VALUES (136, '煮蛋器', 125, 0, 11);
INSERT INTO `category` VALUES (137, '酸奶机', 125, 0, 12);
INSERT INTO `category` VALUES (138, '电炖锅', 125, 0, 13);
INSERT INTO `category` VALUES (139, '电水壶/热水瓶', 125, 0, 14);
INSERT INTO `category` VALUES (140, '电饼铛', 125, 0, 15);
INSERT INTO `category` VALUES (141, '多用途锅', 125, 0, 16);
INSERT INTO `category` VALUES (142, '电烧烤炉', 125, 0, 17);
INSERT INTO `category` VALUES (143, '果蔬解毒机', 125, 0, 18);
INSERT INTO `category` VALUES (144, '其它厨房电器', 125, 0, 19);
INSERT INTO `category` VALUES (145, '养生壶/煎药壶', 125, 0, 20);
INSERT INTO `category` VALUES (146, '电热饭盒', 125, 0, 21);
INSERT INTO `category` VALUES (147, '生活电器', 103, 1, 4);
INSERT INTO `category` VALUES (148, '取暖电器', 147, 0, 1);
INSERT INTO `category` VALUES (149, '净化器', 147, 0, 2);
INSERT INTO `category` VALUES (150, '加湿器', 147, 0, 3);
INSERT INTO `category` VALUES (151, '扫地机器人', 147, 0, 4);
INSERT INTO `category` VALUES (152, '吸尘器', 147, 0, 5);
INSERT INTO `category` VALUES (153, '挂烫机/熨斗', 147, 0, 6);
INSERT INTO `category` VALUES (154, '插座', 147, 0, 7);
INSERT INTO `category` VALUES (155, '电话机', 147, 0, 8);
INSERT INTO `category` VALUES (156, '清洁机', 147, 0, 9);
INSERT INTO `category` VALUES (157, '除湿机', 147, 0, 10);
INSERT INTO `category` VALUES (158, '干衣机', 147, 0, 11);
INSERT INTO `category` VALUES (159, '收录/音机', 147, 0, 12);
INSERT INTO `category` VALUES (160, '电风扇', 147, 0, 13);
INSERT INTO `category` VALUES (161, '冷风扇', 147, 0, 14);
INSERT INTO `category` VALUES (162, '其它生活电器', 147, 0, 15);
INSERT INTO `category` VALUES (163, '生活电器配件', 147, 0, 16);
INSERT INTO `category` VALUES (164, '净水器', 147, 0, 17);
INSERT INTO `category` VALUES (165, '饮水机', 147, 0, 18);
INSERT INTO `category` VALUES (166, '个护健康', 103, 1, 5);
INSERT INTO `category` VALUES (167, '剃须刀', 166, 0, 1);
INSERT INTO `category` VALUES (168, '剃/脱毛器', 166, 0, 2);
INSERT INTO `category` VALUES (169, '口腔护理', 166, 0, 3);
INSERT INTO `category` VALUES (170, '电吹风', 166, 0, 4);
INSERT INTO `category` VALUES (171, '美容器', 166, 0, 5);
INSERT INTO `category` VALUES (172, '理发器', 166, 0, 6);
INSERT INTO `category` VALUES (173, '卷/直发器', 166, 0, 7);
INSERT INTO `category` VALUES (174, '按摩椅', 166, 0, 8);
INSERT INTO `category` VALUES (175, '按摩器', 166, 0, 9);
INSERT INTO `category` VALUES (176, '足浴盆', 166, 0, 10);
INSERT INTO `category` VALUES (177, '血压计', 166, 0, 11);
INSERT INTO `category` VALUES (178, '电子秤/厨房秤', 166, 0, 12);
INSERT INTO `category` VALUES (179, '血糖仪', 166, 0, 13);
INSERT INTO `category` VALUES (180, '体温计', 166, 0, 14);
INSERT INTO `category` VALUES (181, '其它健康电器', 166, 0, 15);
INSERT INTO `category` VALUES (182, '计步器/脂肪检测仪', 166, 0, 16);
INSERT INTO `category` VALUES (183, '五金家装', 103, 1, 6);
INSERT INTO `category` VALUES (184, '电动工具', 183, 0, 1);
INSERT INTO `category` VALUES (185, '手动工具', 183, 0, 2);
INSERT INTO `category` VALUES (186, '仪器仪表', 183, 0, 3);
INSERT INTO `category` VALUES (187, '浴霸/排气扇', 183, 0, 4);
INSERT INTO `category` VALUES (188, '灯具', 183, 0, 5);
INSERT INTO `category` VALUES (189, 'LED灯', 183, 0, 6);
INSERT INTO `category` VALUES (190, '洁身器', 183, 0, 7);
INSERT INTO `category` VALUES (191, '水槽', 183, 0, 8);
INSERT INTO `category` VALUES (192, '龙头', 183, 0, 9);
INSERT INTO `category` VALUES (193, '淋浴花洒', 183, 0, 10);
INSERT INTO `category` VALUES (194, '厨卫五金', 183, 0, 11);
INSERT INTO `category` VALUES (195, '家具五金', 183, 0, 12);
INSERT INTO `category` VALUES (196, '门铃', 183, 0, 13);
INSERT INTO `category` VALUES (197, '电气开关', 183, 0, 14);
INSERT INTO `category` VALUES (198, '插座', 183, 0, 15);
INSERT INTO `category` VALUES (199, '电工电料', 183, 0, 16);
INSERT INTO `category` VALUES (200, '监控安防', 183, 0, 17);
INSERT INTO `category` VALUES (201, '电线/线缆', 183, 0, 18);
INSERT INTO `category` VALUES (202, '数码', 0, 1, 4);
INSERT INTO `category` VALUES (203, '摄影摄像', 202, 1, 1);
INSERT INTO `category` VALUES (204, '数码相机', 203, 0, 1);
INSERT INTO `category` VALUES (205, '单电/微单相机', 203, 0, 2);
INSERT INTO `category` VALUES (206, '单反相机', 203, 0, 3);
INSERT INTO `category` VALUES (207, '摄像机', 203, 0, 4);
INSERT INTO `category` VALUES (208, '拍立得', 203, 0, 5);
INSERT INTO `category` VALUES (209, '运动相机', 203, 0, 6);
INSERT INTO `category` VALUES (210, '镜头', 203, 0, 7);
INSERT INTO `category` VALUES (211, '户外器材', 203, 0, 8);
INSERT INTO `category` VALUES (212, '影棚器材', 203, 0, 9);
INSERT INTO `category` VALUES (213, '冲印服务', 203, 0, 10);
INSERT INTO `category` VALUES (214, '数码相框', 203, 0, 11);
INSERT INTO `category` VALUES (215, '数码配件', 202, 1, 2);
INSERT INTO `category` VALUES (216, '存储卡', 215, 0, 1);
INSERT INTO `category` VALUES (217, '读卡器', 215, 0, 2);
INSERT INTO `category` VALUES (218, '滤镜', 215, 0, 3);
INSERT INTO `category` VALUES (219, '闪光灯/手柄', 215, 0, 4);
INSERT INTO `category` VALUES (220, '相机包', 215, 0, 5);
INSERT INTO `category` VALUES (221, '三脚架/云台', 215, 0, 6);
INSERT INTO `category` VALUES (222, '相机清洁/贴膜', 215, 0, 7);
INSERT INTO `category` VALUES (223, '机身附件', 215, 0, 8);
INSERT INTO `category` VALUES (224, '镜头附件', 215, 0, 9);
INSERT INTO `category` VALUES (225, '电池/充电器', 215, 0, 10);
INSERT INTO `category` VALUES (226, '移动电源', 215, 0, 11);
INSERT INTO `category` VALUES (227, '数码支架', 215, 0, 12);
INSERT INTO `category` VALUES (228, '智能设备', 202, 1, 3);
INSERT INTO `category` VALUES (229, '智能手环', 228, 0, 1);
INSERT INTO `category` VALUES (230, '智能手表', 228, 0, 2);
INSERT INTO `category` VALUES (231, '智能眼镜', 228, 0, 3);
INSERT INTO `category` VALUES (232, '运动跟踪器', 228, 0, 4);
INSERT INTO `category` VALUES (233, '健康监测', 228, 0, 5);
INSERT INTO `category` VALUES (234, '智能配饰', 228, 0, 6);
INSERT INTO `category` VALUES (235, '智能家居', 228, 0, 7);
INSERT INTO `category` VALUES (236, '体感车', 228, 0, 8);
INSERT INTO `category` VALUES (237, '其他配件', 228, 0, 9);
INSERT INTO `category` VALUES (238, '智能机器人', 228, 0, 10);
INSERT INTO `category` VALUES (239, '无人机', 228, 0, 11);
INSERT INTO `category` VALUES (240, '影音娱乐', 202, 1, 4);
INSERT INTO `category` VALUES (241, 'MP3/MP4', 240, 0, 1);
INSERT INTO `category` VALUES (242, '智能设备', 240, 0, 2);
INSERT INTO `category` VALUES (243, '耳机/耳麦', 240, 0, 3);
INSERT INTO `category` VALUES (244, '便携/无线音箱', 240, 0, 4);
INSERT INTO `category` VALUES (245, '音箱/音响', 240, 0, 5);
INSERT INTO `category` VALUES (246, '高清播放器', 240, 0, 6);
INSERT INTO `category` VALUES (247, '收音机', 240, 0, 7);
INSERT INTO `category` VALUES (248, 'MP3/MP4配件', 240, 0, 8);
INSERT INTO `category` VALUES (249, '麦克风', 240, 0, 9);
INSERT INTO `category` VALUES (250, '专业音频', 240, 0, 10);
INSERT INTO `category` VALUES (251, '苹果配件', 240, 0, 11);
INSERT INTO `category` VALUES (252, '电子教育', 202, 1, 5);
INSERT INTO `category` VALUES (253, '学生平板', 252, 0, 1);
INSERT INTO `category` VALUES (254, '点读机/笔', 252, 0, 2);
INSERT INTO `category` VALUES (255, '早教益智', 252, 0, 3);
INSERT INTO `category` VALUES (256, '录音笔', 252, 0, 4);
INSERT INTO `category` VALUES (257, '电纸书', 252, 0, 5);
INSERT INTO `category` VALUES (258, '电子词典', 252, 0, 6);
INSERT INTO `category` VALUES (259, '复读机', 252, 0, 7);
INSERT INTO `category` VALUES (260, '虚拟商品', 202, 1, 6);
INSERT INTO `category` VALUES (261, '延保服务', 260, 0, 1);
INSERT INTO `category` VALUES (262, '杀毒软件', 260, 0, 2);
INSERT INTO `category` VALUES (263, '积分商品', 260, 0, 3);
INSERT INTO `category` VALUES (264, '家居家装', 0, 1, 5);
INSERT INTO `category` VALUES (265, '家纺', 264, 1, 1);
INSERT INTO `category` VALUES (266, '桌布/罩件', 265, 0, 1);
INSERT INTO `category` VALUES (267, '地毯地垫', 265, 0, 2);
INSERT INTO `category` VALUES (268, '沙发垫套/椅垫', 265, 0, 3);
INSERT INTO `category` VALUES (269, '床品套件', 265, 0, 4);
INSERT INTO `category` VALUES (270, '被子', 265, 0, 5);
INSERT INTO `category` VALUES (271, '枕芯', 265, 0, 6);
INSERT INTO `category` VALUES (272, '床单被罩', 265, 0, 7);
INSERT INTO `category` VALUES (273, '毯子', 265, 0, 8);
INSERT INTO `category` VALUES (274, '床垫/床褥', 265, 0, 9);
INSERT INTO `category` VALUES (275, '蚊帐', 265, 0, 10);
INSERT INTO `category` VALUES (276, '抱枕靠垫', 265, 0, 11);
INSERT INTO `category` VALUES (277, '毛巾浴巾', 265, 0, 12);
INSERT INTO `category` VALUES (278, '电热毯', 265, 0, 13);
INSERT INTO `category` VALUES (279, '窗帘/窗纱', 265, 0, 14);
INSERT INTO `category` VALUES (280, '布艺软饰', 265, 0, 15);
INSERT INTO `category` VALUES (281, '凉席', 265, 0, 16);
INSERT INTO `category` VALUES (282, '灯具', 264, 1, 2);
INSERT INTO `category` VALUES (283, '台灯', 282, 0, 1);
INSERT INTO `category` VALUES (284, '节能灯', 282, 0, 2);
INSERT INTO `category` VALUES (285, '装饰灯', 282, 0, 3);
INSERT INTO `category` VALUES (286, '落地灯', 282, 0, 4);
INSERT INTO `category` VALUES (287, '应急灯/手电', 282, 0, 5);
INSERT INTO `category` VALUES (288, 'LED灯', 282, 0, 6);
INSERT INTO `category` VALUES (289, '吸顶灯', 282, 0, 7);
INSERT INTO `category` VALUES (290, '五金电器', 282, 0, 8);
INSERT INTO `category` VALUES (291, '筒灯射灯', 282, 0, 9);
INSERT INTO `category` VALUES (292, '吊灯', 282, 0, 10);
INSERT INTO `category` VALUES (293, '氛围照明', 282, 0, 11);
INSERT INTO `category` VALUES (294, '生活日用', 264, 1, 3);
INSERT INTO `category` VALUES (295, '保暖防护', 294, 0, 1);
INSERT INTO `category` VALUES (296, '收纳用品', 294, 0, 2);
INSERT INTO `category` VALUES (297, '雨伞雨具', 294, 0, 3);
INSERT INTO `category` VALUES (298, '浴室用品', 294, 0, 4);
INSERT INTO `category` VALUES (299, '缝纫/针织用品', 294, 0, 5);
INSERT INTO `category` VALUES (300, '洗晒/熨烫', 294, 0, 6);
INSERT INTO `category` VALUES (301, '净化除味', 294, 0, 7);
INSERT INTO `category` VALUES (302, '家装软饰', 264, 1, 4);
INSERT INTO `category` VALUES (303, '相框/照片墙', 302, 0, 1);
INSERT INTO `category` VALUES (304, '装饰字画', 302, 0, 2);
INSERT INTO `category` VALUES (305, '节庆饰品', 302, 0, 3);
INSERT INTO `category` VALUES (306, '手工/十字绣', 302, 0, 4);
INSERT INTO `category` VALUES (307, '装饰摆件', 302, 0, 5);
INSERT INTO `category` VALUES (308, '帘艺隔断', 302, 0, 6);
INSERT INTO `category` VALUES (309, '墙贴/装饰贴', 302, 0, 7);
INSERT INTO `category` VALUES (310, '钟饰', 302, 0, 8);
INSERT INTO `category` VALUES (311, '花瓶花艺', 302, 0, 9);
INSERT INTO `category` VALUES (312, '香薰蜡烛', 302, 0, 10);
INSERT INTO `category` VALUES (313, '创意家居', 302, 0, 11);
INSERT INTO `category` VALUES (314, '宠物生活', 264, 1, 5);
INSERT INTO `category` VALUES (315, '宠物主粮', 314, 0, 1);
INSERT INTO `category` VALUES (316, '宠物零食', 314, 0, 2);
INSERT INTO `category` VALUES (317, '医疗保健', 314, 0, 3);
INSERT INTO `category` VALUES (318, '家居日用', 314, 0, 4);
INSERT INTO `category` VALUES (319, '宠物玩具', 314, 0, 5);
INSERT INTO `category` VALUES (320, '出行装备', 314, 0, 6);
INSERT INTO `category` VALUES (321, '洗护美容', 314, 0, 7);
INSERT INTO `category` VALUES (322, '', 0, 1, 6);
INSERT INTO `category` VALUES (323, '电脑整机', 322, 1, 1);
INSERT INTO `category` VALUES (324, '笔记本', 323, 0, 1);
INSERT INTO `category` VALUES (325, '超极本', 323, 0, 2);
INSERT INTO `category` VALUES (326, '游戏本', 323, 0, 3);
INSERT INTO `category` VALUES (327, '平板电脑', 323, 0, 4);
INSERT INTO `category` VALUES (328, '平板电脑配件', 323, 0, 5);
INSERT INTO `category` VALUES (329, '台式机', 323, 0, 6);
INSERT INTO `category` VALUES (330, '服务器/工作站', 323, 0, 7);
INSERT INTO `category` VALUES (331, '笔记本配件', 323, 0, 8);
INSERT INTO `category` VALUES (332, '一体机', 323, 0, 9);
INSERT INTO `category` VALUES (333, '电脑配件', 322, 1, 2);
INSERT INTO `category` VALUES (334, 'CPU', 333, 0, 1);
INSERT INTO `category` VALUES (335, '主板', 333, 0, 2);
INSERT INTO `category` VALUES (336, '显卡', 333, 0, 3);
INSERT INTO `category` VALUES (337, '硬盘', 333, 0, 4);
INSERT INTO `category` VALUES (338, 'SSD固态硬盘', 333, 0, 5);
INSERT INTO `category` VALUES (339, '内存', 333, 0, 6);
INSERT INTO `category` VALUES (340, '机箱', 333, 0, 7);
INSERT INTO `category` VALUES (341, '电源', 333, 0, 8);
INSERT INTO `category` VALUES (342, '显示器', 333, 0, 9);
INSERT INTO `category` VALUES (343, '刻录机/光驱', 333, 0, 10);
INSERT INTO `category` VALUES (344, '散热器', 333, 0, 11);
INSERT INTO `category` VALUES (345, '声卡/扩展卡', 333, 0, 12);
INSERT INTO `category` VALUES (346, '装机配件', 333, 0, 13);
INSERT INTO `category` VALUES (347, '组装电脑', 333, 0, 14);
INSERT INTO `category` VALUES (348, '外设产品', 322, 1, 3);
INSERT INTO `category` VALUES (349, '移动硬盘', 348, 0, 1);
INSERT INTO `category` VALUES (350, 'U盘', 348, 0, 2);
INSERT INTO `category` VALUES (351, '鼠标', 348, 0, 3);
INSERT INTO `category` VALUES (352, '键盘', 348, 0, 4);
INSERT INTO `category` VALUES (353, '鼠标垫', 348, 0, 5);
INSERT INTO `category` VALUES (354, '摄像头', 348, 0, 6);
INSERT INTO `category` VALUES (355, '手写板', 348, 0, 7);
INSERT INTO `category` VALUES (356, '硬盘盒', 348, 0, 8);
INSERT INTO `category` VALUES (357, '插座', 348, 0, 9);
INSERT INTO `category` VALUES (358, '线缆', 348, 0, 10);
INSERT INTO `category` VALUES (359, 'UPS电源', 348, 0, 11);
INSERT INTO `category` VALUES (360, '电脑工具', 348, 0, 12);
INSERT INTO `category` VALUES (361, '游戏设备', 348, 0, 13);
INSERT INTO `category` VALUES (362, '电玩', 348, 0, 14);
INSERT INTO `category` VALUES (363, '电脑清洁', 348, 0, 15);
INSERT INTO `category` VALUES (364, '网络仪表仪器', 348, 0, 16);
INSERT INTO `category` VALUES (365, '游戏设备', 322, 1, 4);
INSERT INTO `category` VALUES (366, '游戏机', 365, 0, 1);
INSERT INTO `category` VALUES (367, '游戏耳机', 365, 0, 2);
INSERT INTO `category` VALUES (368, '手柄/方向盘', 365, 0, 3);
INSERT INTO `category` VALUES (369, '游戏软件', 365, 0, 4);
INSERT INTO `category` VALUES (370, '游戏周边', 365, 0, 5);
INSERT INTO `category` VALUES (371, '网络产品', 322, 1, 5);
INSERT INTO `category` VALUES (372, '路由器', 371, 0, 1);
INSERT INTO `category` VALUES (373, '网卡', 371, 0, 2);
INSERT INTO `category` VALUES (374, '交换机', 371, 0, 3);
INSERT INTO `category` VALUES (375, '网络存储', 371, 0, 4);
INSERT INTO `category` VALUES (376, '4G/3G上网', 371, 0, 5);
INSERT INTO `category` VALUES (377, '网络盒子', 371, 0, 6);
INSERT INTO `category` VALUES (378, '网络配件', 371, 0, 7);
INSERT INTO `category` VALUES (379, '办公设备', 322, 1, 6);
INSERT INTO `category` VALUES (380, '投影机', 379, 0, 1);
INSERT INTO `category` VALUES (381, '投影配件', 379, 0, 2);
INSERT INTO `category` VALUES (382, '多功能一体机', 379, 0, 3);
INSERT INTO `category` VALUES (383, '打印机', 379, 0, 4);
INSERT INTO `category` VALUES (384, '传真设备', 379, 0, 5);
INSERT INTO `category` VALUES (385, '验钞/点钞机', 379, 0, 6);
INSERT INTO `category` VALUES (386, '扫描设备', 379, 0, 7);
INSERT INTO `category` VALUES (387, '复合机', 379, 0, 8);
INSERT INTO `category` VALUES (388, '碎纸机', 379, 0, 9);
INSERT INTO `category` VALUES (389, '考勤机', 379, 0, 10);
INSERT INTO `category` VALUES (390, '收款/POS机', 379, 0, 11);
INSERT INTO `category` VALUES (391, '会议音频视频', 379, 0, 12);
INSERT INTO `category` VALUES (392, '保险柜', 379, 0, 13);
INSERT INTO `category` VALUES (393, '装订/封装机', 379, 0, 14);
INSERT INTO `category` VALUES (394, '安防监控', 379, 0, 15);
INSERT INTO `category` VALUES (395, '办公家具', 379, 0, 16);
INSERT INTO `category` VALUES (396, '白板', 379, 0, 17);
INSERT INTO `category` VALUES (397, '文具/耗材', 322, 1, 7);
INSERT INTO `category` VALUES (398, '硒鼓/墨粉', 397, 0, 1);
INSERT INTO `category` VALUES (399, '墨盒', 397, 0, 2);
INSERT INTO `category` VALUES (400, '色带', 397, 0, 3);
INSERT INTO `category` VALUES (401, '纸类', 397, 0, 4);
INSERT INTO `category` VALUES (402, '办公文具', 397, 0, 5);
INSERT INTO `category` VALUES (403, '学生文具', 397, 0, 6);
INSERT INTO `category` VALUES (404, '财会用品', 397, 0, 7);
INSERT INTO `category` VALUES (405, '文件管理', 397, 0, 8);
INSERT INTO `category` VALUES (406, '本册/便签', 397, 0, 9);
INSERT INTO `category` VALUES (407, '计算器', 397, 0, 10);
INSERT INTO `category` VALUES (408, '笔类', 397, 0, 11);
INSERT INTO `category` VALUES (409, '画具画材', 397, 0, 12);
INSERT INTO `category` VALUES (410, '刻录碟片/附件', 397, 0, 13);
INSERT INTO `category` VALUES (411, '服务产品', 322, 1, 8);
INSERT INTO `category` VALUES (412, '上门安装', 411, 0, 1);
INSERT INTO `category` VALUES (413, '延保服务', 411, 0, 2);
INSERT INTO `category` VALUES (414, '维修保养', 411, 0, 3);
INSERT INTO `category` VALUES (415, '电脑软件', 411, 0, 4);
INSERT INTO `category` VALUES (416, '京东服务', 411, 0, 5);
INSERT INTO `category` VALUES (417, '厨具', 0, 1, 7);
INSERT INTO `category` VALUES (418, '烹饪锅具', 417, 1, 1);
INSERT INTO `category` VALUES (419, '炒锅', 418, 0, 1);
INSERT INTO `category` VALUES (420, '煎锅', 418, 0, 2);
INSERT INTO `category` VALUES (421, '压力锅', 418, 0, 3);
INSERT INTO `category` VALUES (422, '蒸锅', 418, 0, 4);
INSERT INTO `category` VALUES (423, '汤锅', 418, 0, 5);
INSERT INTO `category` VALUES (424, '奶锅', 418, 0, 6);
INSERT INTO `category` VALUES (425, '锅具套装', 418, 0, 7);
INSERT INTO `category` VALUES (426, '煲类', 418, 0, 8);
INSERT INTO `category` VALUES (427, '水壶', 418, 0, 9);
INSERT INTO `category` VALUES (428, '火锅', 418, 0, 10);
INSERT INTO `category` VALUES (429, '刀剪菜板', 417, 1, 2);
INSERT INTO `category` VALUES (430, '菜刀', 429, 0, 1);
INSERT INTO `category` VALUES (431, '剪刀', 429, 0, 2);
INSERT INTO `category` VALUES (432, '刀具套装', 429, 0, 3);
INSERT INTO `category` VALUES (433, '砧板', 429, 0, 4);
INSERT INTO `category` VALUES (434, '瓜果刀/刨', 429, 0, 5);
INSERT INTO `category` VALUES (435, '多功能刀', 429, 0, 6);
INSERT INTO `category` VALUES (436, '厨房配件', 417, 1, 3);
INSERT INTO `category` VALUES (437, '保鲜盒', 436, 0, 1);
INSERT INTO `category` VALUES (438, '烘焙/烧烤', 436, 0, 2);
INSERT INTO `category` VALUES (439, '饭盒/提锅', 436, 0, 3);
INSERT INTO `category` VALUES (440, '储物/置物架', 436, 0, 4);
INSERT INTO `category` VALUES (441, '厨房DIY/小工具', 436, 0, 5);
INSERT INTO `category` VALUES (442, '水具酒具', 417, 1, 4);
INSERT INTO `category` VALUES (443, '塑料杯', 442, 0, 1);
INSERT INTO `category` VALUES (444, '运动水壶', 442, 0, 2);
INSERT INTO `category` VALUES (445, '玻璃杯', 442, 0, 3);
INSERT INTO `category` VALUES (446, '陶瓷/马克杯', 442, 0, 4);
INSERT INTO `category` VALUES (447, '保温杯', 442, 0, 5);
INSERT INTO `category` VALUES (448, '保温壶', 442, 0, 6);
INSERT INTO `category` VALUES (449, '酒杯/酒具', 442, 0, 7);
INSERT INTO `category` VALUES (450, '杯具套装', 442, 0, 8);
INSERT INTO `category` VALUES (451, '餐具', 417, 1, 5);
INSERT INTO `category` VALUES (452, '餐具套装', 451, 0, 1);
INSERT INTO `category` VALUES (453, '碗/碟/盘', 451, 0, 2);
INSERT INTO `category` VALUES (454, '筷勺/刀叉', 451, 0, 3);
INSERT INTO `category` VALUES (455, '一次性用品', 451, 0, 4);
INSERT INTO `category` VALUES (456, '果盘/果篮', 451, 0, 5);
INSERT INTO `category` VALUES (457, '酒店用品', 417, 1, 6);
INSERT INTO `category` VALUES (458, '自助餐炉', 457, 0, 1);
INSERT INTO `category` VALUES (459, '酒店餐具', 457, 0, 2);
INSERT INTO `category` VALUES (460, '酒店水具', 457, 0, 3);
INSERT INTO `category` VALUES (461, '茶具/咖啡具', 417, 1, 7);
INSERT INTO `category` VALUES (462, '整套茶具', 461, 0, 1);
INSERT INTO `category` VALUES (463, '茶杯', 461, 0, 2);
INSERT INTO `category` VALUES (464, '茶壶', 461, 0, 3);
INSERT INTO `category` VALUES (465, '茶盘茶托', 461, 0, 4);
INSERT INTO `category` VALUES (466, '茶叶罐', 461, 0, 5);
INSERT INTO `category` VALUES (467, '茶具配件', 461, 0, 6);
INSERT INTO `category` VALUES (468, '茶宠摆件', 461, 0, 7);
INSERT INTO `category` VALUES (469, '咖啡具', 461, 0, 8);
INSERT INTO `category` VALUES (470, '其他', 461, 0, 9);
INSERT INTO `category` VALUES (471, '个护化妆', 0, 1, 8);
INSERT INTO `category` VALUES (472, '清洁用品', 471, 1, 1);
INSERT INTO `category` VALUES (473, '纸品湿巾', 472, 0, 1);
INSERT INTO `category` VALUES (474, '衣物清洁', 472, 0, 2);
INSERT INTO `category` VALUES (475, '清洁工具', 472, 0, 3);
INSERT INTO `category` VALUES (476, '驱虫用品', 472, 0, 4);
INSERT INTO `category` VALUES (477, '家庭清洁', 472, 0, 5);
INSERT INTO `category` VALUES (478, '皮具护理', 472, 0, 6);
INSERT INTO `category` VALUES (479, '一次性用品', 472, 0, 7);
INSERT INTO `category` VALUES (480, '面部护肤', 471, 1, 2);
INSERT INTO `category` VALUES (481, '洁面', 480, 0, 1);
INSERT INTO `category` VALUES (482, '乳液面霜', 480, 0, 2);
INSERT INTO `category` VALUES (483, '面膜', 480, 0, 3);
INSERT INTO `category` VALUES (484, '剃须', 480, 0, 4);
INSERT INTO `category` VALUES (485, '套装', 480, 0, 5);
INSERT INTO `category` VALUES (486, '精华', 480, 0, 6);
INSERT INTO `category` VALUES (487, '眼霜', 480, 0, 7);
INSERT INTO `category` VALUES (488, '卸妆', 480, 0, 8);
INSERT INTO `category` VALUES (489, '防晒', 480, 0, 9);
INSERT INTO `category` VALUES (490, '防晒隔离', 480, 0, 10);
INSERT INTO `category` VALUES (491, 'T区护理', 480, 0, 11);
INSERT INTO `category` VALUES (492, '眼部护理', 480, 0, 12);
INSERT INTO `category` VALUES (493, '精华露', 480, 0, 13);
INSERT INTO `category` VALUES (494, '爽肤水', 480, 0, 14);
INSERT INTO `category` VALUES (495, '身体护理', 471, 1, 3);
INSERT INTO `category` VALUES (496, '沐浴', 495, 0, 1);
INSERT INTO `category` VALUES (497, '润肤', 495, 0, 2);
INSERT INTO `category` VALUES (498, '颈部', 495, 0, 3);
INSERT INTO `category` VALUES (499, '手足', 495, 0, 4);
INSERT INTO `category` VALUES (500, '纤体塑形', 495, 0, 5);
INSERT INTO `category` VALUES (501, '美胸', 495, 0, 6);
INSERT INTO `category` VALUES (502, '套装', 495, 0, 7);
INSERT INTO `category` VALUES (503, '精油', 495, 0, 8);
INSERT INTO `category` VALUES (504, '洗发护发', 495, 0, 9);
INSERT INTO `category` VALUES (505, '染发/造型', 495, 0, 10);
INSERT INTO `category` VALUES (506, '香薰精油', 495, 0, 11);
INSERT INTO `category` VALUES (507, '磨砂/浴盐', 495, 0, 12);
INSERT INTO `category` VALUES (508, '手工/香皂', 495, 0, 13);
INSERT INTO `category` VALUES (509, '洗发', 495, 0, 14);
INSERT INTO `category` VALUES (510, '护发', 495, 0, 15);
INSERT INTO `category` VALUES (511, '染发', 495, 0, 16);
INSERT INTO `category` VALUES (512, '磨砂膏', 495, 0, 17);
INSERT INTO `category` VALUES (513, '香皂', 495, 0, 18);
INSERT INTO `category` VALUES (514, '口腔护理', 471, 1, 4);
INSERT INTO `category` VALUES (515, '牙膏/牙粉', 514, 0, 1);
INSERT INTO `category` VALUES (516, '牙刷/牙线', 514, 0, 2);
INSERT INTO `category` VALUES (517, '漱口水', 514, 0, 3);
INSERT INTO `category` VALUES (518, '套装', 514, 0, 4);
INSERT INTO `category` VALUES (519, '女性护理', 471, 1, 5);
INSERT INTO `category` VALUES (520, '卫生巾', 519, 0, 1);
INSERT INTO `category` VALUES (521, '卫生护垫', 519, 0, 2);
INSERT INTO `category` VALUES (522, '私密护理', 519, 0, 3);
INSERT INTO `category` VALUES (523, '脱毛膏', 519, 0, 4);
INSERT INTO `category` VALUES (524, '其他', 519, 0, 5);
INSERT INTO `category` VALUES (525, '洗发护发', 471, 1, 6);
INSERT INTO `category` VALUES (526, '洗发', 525, 0, 1);
INSERT INTO `category` VALUES (527, '护发', 525, 0, 2);
INSERT INTO `category` VALUES (528, '染发', 525, 0, 3);
INSERT INTO `category` VALUES (529, '造型', 525, 0, 4);
INSERT INTO `category` VALUES (530, '假发', 525, 0, 5);
INSERT INTO `category` VALUES (531, '套装', 525, 0, 6);
INSERT INTO `category` VALUES (532, '美发工具', 525, 0, 7);
INSERT INTO `category` VALUES (533, '脸部护理', 525, 0, 8);
INSERT INTO `category` VALUES (534, '香水彩妆', 471, 1, 7);
INSERT INTO `category` VALUES (535, '香水', 534, 0, 1);
INSERT INTO `category` VALUES (536, '底妆', 534, 0, 2);
INSERT INTO `category` VALUES (537, '腮红', 534, 0, 3);
INSERT INTO `category` VALUES (538, '眼影', 534, 0, 4);
INSERT INTO `category` VALUES (539, '唇部', 534, 0, 5);
INSERT INTO `category` VALUES (540, '美甲', 534, 0, 6);
INSERT INTO `category` VALUES (541, '眼线', 534, 0, 7);
INSERT INTO `category` VALUES (542, '美妆工具', 534, 0, 8);
INSERT INTO `category` VALUES (543, '套装', 534, 0, 9);
INSERT INTO `category` VALUES (544, '防晒隔离', 534, 0, 10);
INSERT INTO `category` VALUES (545, '卸妆', 534, 0, 11);
INSERT INTO `category` VALUES (546, '眉笔', 534, 0, 12);
INSERT INTO `category` VALUES (547, '睫毛膏', 534, 0, 13);
INSERT INTO `category` VALUES (548, '服饰内衣', 0, 1, 9);
INSERT INTO `category` VALUES (549, '女装', 548, 1, 1);
INSERT INTO `category` VALUES (550, 'T恤', 549, 0, 1);
INSERT INTO `category` VALUES (551, '衬衫', 549, 0, 2);
INSERT INTO `category` VALUES (552, '针织衫', 549, 0, 3);
INSERT INTO `category` VALUES (553, '雪纺衫', 549, 0, 4);
INSERT INTO `category` VALUES (554, '卫衣', 549, 0, 5);
INSERT INTO `category` VALUES (555, '马甲', 549, 0, 6);
INSERT INTO `category` VALUES (556, '连衣裙', 549, 0, 7);
INSERT INTO `category` VALUES (557, '半身裙', 549, 0, 8);
INSERT INTO `category` VALUES (558, '牛仔裤', 549, 0, 9);
INSERT INTO `category` VALUES (559, '休闲裤', 549, 0, 10);
INSERT INTO `category` VALUES (560, '打底裤', 549, 0, 11);
INSERT INTO `category` VALUES (561, '正装裤', 549, 0, 12);
INSERT INTO `category` VALUES (562, '小西装', 549, 0, 13);
INSERT INTO `category` VALUES (563, '短外套', 549, 0, 14);
INSERT INTO `category` VALUES (564, '风衣', 549, 0, 15);
INSERT INTO `category` VALUES (565, '毛呢大衣', 549, 0, 16);
INSERT INTO `category` VALUES (566, '真皮皮衣', 549, 0, 17);
INSERT INTO `category` VALUES (567, '棉服', 549, 0, 18);
INSERT INTO `category` VALUES (568, '羽绒服', 549, 0, 19);
INSERT INTO `category` VALUES (569, '大码女装', 549, 0, 20);
INSERT INTO `category` VALUES (570, '中老年女装', 549, 0, 21);
INSERT INTO `category` VALUES (571, '婚纱', 549, 0, 22);
INSERT INTO `category` VALUES (572, '打底衫', 549, 0, 23);
INSERT INTO `category` VALUES (573, '旗袍/唐装', 549, 0, 24);
INSERT INTO `category` VALUES (574, '加绒裤', 549, 0, 25);
INSERT INTO `category` VALUES (575, '吊带/背心', 549, 0, 26);
INSERT INTO `category` VALUES (576, '羊绒衫', 549, 0, 27);
INSERT INTO `category` VALUES (577, '短裤', 549, 0, 28);
INSERT INTO `category` VALUES (578, '皮草', 549, 0, 29);
INSERT INTO `category` VALUES (579, '礼服', 549, 0, 30);
INSERT INTO `category` VALUES (580, '仿皮皮衣', 549, 0, 31);
INSERT INTO `category` VALUES (581, '羊毛衫', 549, 0, 32);
INSERT INTO `category` VALUES (582, '设计师/潮牌', 549, 0, 33);
INSERT INTO `category` VALUES (583, '男装', 548, 1, 2);
INSERT INTO `category` VALUES (584, '衬衫', 583, 0, 1);
INSERT INTO `category` VALUES (585, 'T恤', 583, 0, 2);
INSERT INTO `category` VALUES (586, 'POLO衫', 583, 0, 3);
INSERT INTO `category` VALUES (587, '针织衫', 583, 0, 4);
INSERT INTO `category` VALUES (588, '羊绒衫', 583, 0, 5);
INSERT INTO `category` VALUES (589, '卫衣', 583, 0, 6);
INSERT INTO `category` VALUES (590, '马甲/背心', 583, 0, 7);
INSERT INTO `category` VALUES (591, '夹克', 583, 0, 8);
INSERT INTO `category` VALUES (592, '风衣', 583, 0, 9);
INSERT INTO `category` VALUES (593, '毛呢大衣', 583, 0, 10);
INSERT INTO `category` VALUES (594, '仿皮皮衣', 583, 0, 11);
INSERT INTO `category` VALUES (595, '西服', 583, 0, 12);
INSERT INTO `category` VALUES (596, '棉服', 583, 0, 13);
INSERT INTO `category` VALUES (597, '羽绒服', 583, 0, 14);
INSERT INTO `category` VALUES (598, '牛仔裤', 583, 0, 15);
INSERT INTO `category` VALUES (599, '休闲裤', 583, 0, 16);
INSERT INTO `category` VALUES (600, '西裤', 583, 0, 17);
INSERT INTO `category` VALUES (601, '西服套装', 583, 0, 18);
INSERT INTO `category` VALUES (602, '大码男装', 583, 0, 19);
INSERT INTO `category` VALUES (603, '中老年男装', 583, 0, 20);
INSERT INTO `category` VALUES (604, '唐装/中山装', 583, 0, 21);
INSERT INTO `category` VALUES (605, '工装', 583, 0, 22);
INSERT INTO `category` VALUES (606, '真皮皮衣', 583, 0, 23);
INSERT INTO `category` VALUES (607, '加绒裤', 583, 0, 24);
INSERT INTO `category` VALUES (608, '卫裤/运动裤', 583, 0, 25);
INSERT INTO `category` VALUES (609, '短裤', 583, 0, 26);
INSERT INTO `category` VALUES (610, '设计师/潮牌', 583, 0, 27);
INSERT INTO `category` VALUES (611, '羊毛衫', 583, 0, 28);
INSERT INTO `category` VALUES (612, '内衣', 548, 1, 3);
INSERT INTO `category` VALUES (613, '文胸', 612, 0, 1);
INSERT INTO `category` VALUES (614, '女式内裤', 612, 0, 2);
INSERT INTO `category` VALUES (615, '男式内裤', 612, 0, 3);
INSERT INTO `category` VALUES (616, '睡衣/家居服', 612, 0, 4);
INSERT INTO `category` VALUES (617, '塑身美体', 612, 0, 5);
INSERT INTO `category` VALUES (618, '泳衣', 612, 0, 6);
INSERT INTO `category` VALUES (619, '吊带/背心', 612, 0, 7);
INSERT INTO `category` VALUES (620, '抹胸', 612, 0, 8);
INSERT INTO `category` VALUES (621, '连裤袜/丝袜', 612, 0, 9);
INSERT INTO `category` VALUES (622, '美腿袜', 612, 0, 10);
INSERT INTO `category` VALUES (623, '商务男袜', 612, 0, 11);
INSERT INTO `category` VALUES (624, '保暖内衣', 612, 0, 12);
INSERT INTO `category` VALUES (625, '情侣睡衣', 612, 0, 13);
INSERT INTO `category` VALUES (626, '文胸套装', 612, 0, 14);
INSERT INTO `category` VALUES (627, '少女文胸', 612, 0, 15);
INSERT INTO `category` VALUES (628, '休闲棉袜', 612, 0, 16);
INSERT INTO `category` VALUES (629, '大码内衣', 612, 0, 17);
INSERT INTO `category` VALUES (630, '内衣配件', 612, 0, 18);
INSERT INTO `category` VALUES (631, '打底裤袜', 612, 0, 19);
INSERT INTO `category` VALUES (632, '打底衫', 612, 0, 20);
INSERT INTO `category` VALUES (633, '秋衣秋裤', 612, 0, 21);
INSERT INTO `category` VALUES (634, '情趣内衣', 612, 0, 22);
INSERT INTO `category` VALUES (635, '洗衣服务', 548, 1, 4);
INSERT INTO `category` VALUES (636, '服装洗护', 635, 0, 1);
INSERT INTO `category` VALUES (637, '服饰配件', 548, 1, 5);
INSERT INTO `category` VALUES (638, '太阳镜', 637, 0, 1);
INSERT INTO `category` VALUES (639, '光学镜架/镜片', 637, 0, 2);
INSERT INTO `category` VALUES (640, '围巾/手套/帽子套装', 637, 0, 3);
INSERT INTO `category` VALUES (641, '袖扣', 637, 0, 4);
INSERT INTO `category` VALUES (642, '棒球帽', 637, 0, 5);
INSERT INTO `category` VALUES (643, '毛线帽', 637, 0, 6);
INSERT INTO `category` VALUES (644, '遮阳帽', 637, 0, 7);
INSERT INTO `category` VALUES (645, '老花镜', 637, 0, 8);
INSERT INTO `category` VALUES (646, '装饰眼镜', 637, 0, 9);
INSERT INTO `category` VALUES (647, '防辐射眼镜', 637, 0, 10);
INSERT INTO `category` VALUES (648, '游泳镜', 637, 0, 11);
INSERT INTO `category` VALUES (649, '女士丝巾/围巾/披肩', 637, 0, 12);
INSERT INTO `category` VALUES (650, '男士丝巾/围巾', 637, 0, 13);
INSERT INTO `category` VALUES (651, '鸭舌帽', 637, 0, 14);
INSERT INTO `category` VALUES (652, '贝雷帽', 637, 0, 15);
INSERT INTO `category` VALUES (653, '礼帽', 637, 0, 16);
INSERT INTO `category` VALUES (654, '真皮手套', 637, 0, 17);
INSERT INTO `category` VALUES (655, '毛线手套', 637, 0, 18);
INSERT INTO `category` VALUES (656, '防晒手套', 637, 0, 19);
INSERT INTO `category` VALUES (657, '男士腰带/礼盒', 637, 0, 20);
INSERT INTO `category` VALUES (658, '女士腰带/礼盒', 637, 0, 21);
INSERT INTO `category` VALUES (659, '钥匙扣', 637, 0, 22);
INSERT INTO `category` VALUES (660, '遮阳伞/雨伞', 637, 0, 23);
INSERT INTO `category` VALUES (661, '口罩', 637, 0, 24);
INSERT INTO `category` VALUES (662, '耳罩/耳包', 637, 0, 25);
INSERT INTO `category` VALUES (663, '假领', 637, 0, 26);
INSERT INTO `category` VALUES (664, '毛线/布面料', 637, 0, 27);
INSERT INTO `category` VALUES (665, '领带/领结/领带夹', 637, 0, 28);
INSERT INTO `category` VALUES (666, '钟表', 0, 1, 10);
INSERT INTO `category` VALUES (667, '钟表', 666, 1, 1);
INSERT INTO `category` VALUES (668, '男表', 667, 0, 1);
INSERT INTO `category` VALUES (669, '瑞表', 667, 0, 2);
INSERT INTO `category` VALUES (670, '女表', 667, 0, 3);
INSERT INTO `category` VALUES (671, '国表', 667, 0, 4);
INSERT INTO `category` VALUES (672, '日韩表', 667, 0, 5);
INSERT INTO `category` VALUES (673, '欧美表', 667, 0, 6);
INSERT INTO `category` VALUES (674, '德表', 667, 0, 7);
INSERT INTO `category` VALUES (675, '儿童手表', 667, 0, 8);
INSERT INTO `category` VALUES (676, '智能手表', 667, 0, 9);
INSERT INTO `category` VALUES (677, '闹钟', 667, 0, 10);
INSERT INTO `category` VALUES (678, '座钟挂钟', 667, 0, 11);
INSERT INTO `category` VALUES (679, '钟表配件', 667, 0, 12);
INSERT INTO `category` VALUES (680, '鞋靴', 0, 1, 11);
INSERT INTO `category` VALUES (681, '流行男鞋', 680, 1, 1);
INSERT INTO `category` VALUES (682, '商务休闲鞋', 681, 0, 1);
INSERT INTO `category` VALUES (683, '正装鞋', 681, 0, 2);
INSERT INTO `category` VALUES (684, '休闲鞋', 681, 0, 3);
INSERT INTO `category` VALUES (685, '凉鞋/沙滩鞋', 681, 0, 4);
INSERT INTO `category` VALUES (686, '男靴', 681, 0, 5);
INSERT INTO `category` VALUES (687, '功能鞋', 681, 0, 6);
INSERT INTO `category` VALUES (688, '拖鞋/人字拖', 681, 0, 7);
INSERT INTO `category` VALUES (689, '雨鞋/雨靴', 681, 0, 8);
INSERT INTO `category` VALUES (690, '传统布鞋', 681, 0, 9);
INSERT INTO `category` VALUES (691, '鞋配件', 681, 0, 10);
INSERT INTO `category` VALUES (692, '帆布鞋', 681, 0, 11);
INSERT INTO `category` VALUES (693, '增高鞋', 681, 0, 12);
INSERT INTO `category` VALUES (694, '工装鞋', 681, 0, 13);
INSERT INTO `category` VALUES (695, '定制鞋', 681, 0, 14);
INSERT INTO `category` VALUES (696, '时尚女鞋', 680, 1, 2);
INSERT INTO `category` VALUES (697, '高跟鞋', 696, 0, 1);
INSERT INTO `category` VALUES (698, '单鞋', 696, 0, 2);
INSERT INTO `category` VALUES (699, '休闲鞋', 696, 0, 3);
INSERT INTO `category` VALUES (700, '凉鞋', 696, 0, 4);
INSERT INTO `category` VALUES (701, '女靴', 696, 0, 5);
INSERT INTO `category` VALUES (702, '雪地靴', 696, 0, 6);
INSERT INTO `category` VALUES (703, '拖鞋/人字拖', 696, 0, 7);
INSERT INTO `category` VALUES (704, '踝靴', 696, 0, 8);
INSERT INTO `category` VALUES (705, '筒靴', 696, 0, 9);
INSERT INTO `category` VALUES (706, '帆布鞋', 696, 0, 10);
INSERT INTO `category` VALUES (707, '雨鞋/雨靴', 696, 0, 11);
INSERT INTO `category` VALUES (708, '妈妈鞋', 696, 0, 12);
INSERT INTO `category` VALUES (709, '鞋配件', 696, 0, 13);
INSERT INTO `category` VALUES (710, '特色鞋', 696, 0, 14);
INSERT INTO `category` VALUES (711, '鱼嘴鞋', 696, 0, 15);
INSERT INTO `category` VALUES (712, '布鞋/绣花鞋', 696, 0, 16);
INSERT INTO `category` VALUES (713, '马丁靴', 696, 0, 17);
INSERT INTO `category` VALUES (714, '坡跟鞋', 696, 0, 18);
INSERT INTO `category` VALUES (715, '松糕鞋', 696, 0, 19);
INSERT INTO `category` VALUES (716, '内增高', 696, 0, 20);
INSERT INTO `category` VALUES (717, '防水台', 696, 0, 21);
INSERT INTO `category` VALUES (718, '母婴', 0, 1, 12);
INSERT INTO `category` VALUES (719, '奶粉', 718, 1, 1);
INSERT INTO `category` VALUES (720, '婴幼奶粉', 719, 0, 1);
INSERT INTO `category` VALUES (721, '孕妈奶粉', 719, 0, 2);
INSERT INTO `category` VALUES (722, '营养辅食', 718, 1, 2);
INSERT INTO `category` VALUES (723, '益生菌/初乳', 722, 0, 1);
INSERT INTO `category` VALUES (724, '米粉/菜粉', 722, 0, 2);
INSERT INTO `category` VALUES (725, '果泥/果汁', 722, 0, 3);
INSERT INTO `category` VALUES (726, 'DHA', 722, 0, 4);
INSERT INTO `category` VALUES (727, '宝宝零食', 722, 0, 5);
INSERT INTO `category` VALUES (728, '钙铁锌/维生素', 722, 0, 6);
INSERT INTO `category` VALUES (729, '清火/开胃', 722, 0, 7);
INSERT INTO `category` VALUES (730, '面条/粥', 722, 0, 8);
INSERT INTO `category` VALUES (731, '尿裤湿巾', 718, 1, 3);
INSERT INTO `category` VALUES (732, '婴儿尿裤', 731, 0, 1);
INSERT INTO `category` VALUES (733, '拉拉裤', 731, 0, 2);
INSERT INTO `category` VALUES (734, '婴儿湿巾', 731, 0, 3);
INSERT INTO `category` VALUES (735, '成人尿裤', 731, 0, 4);
INSERT INTO `category` VALUES (736, '喂养用品', 718, 1, 4);
INSERT INTO `category` VALUES (737, '奶瓶奶嘴', 736, 0, 1);
INSERT INTO `category` VALUES (738, '吸奶器', 736, 0, 2);
INSERT INTO `category` VALUES (739, '暖奶消毒', 736, 0, 3);
INSERT INTO `category` VALUES (740, '儿童餐具', 736, 0, 4);
INSERT INTO `category` VALUES (741, '水壶/水杯', 736, 0, 5);
INSERT INTO `category` VALUES (742, '牙胶安抚', 736, 0, 6);
INSERT INTO `category` VALUES (743, '围兜/防溅衣', 736, 0, 7);
INSERT INTO `category` VALUES (744, '辅食料理机', 736, 0, 8);
INSERT INTO `category` VALUES (745, '食物存储', 736, 0, 9);
INSERT INTO `category` VALUES (746, '洗护用品', 718, 1, 5);
INSERT INTO `category` VALUES (747, '宝宝护肤', 746, 0, 1);
INSERT INTO `category` VALUES (748, '洗发沐浴', 746, 0, 2);
INSERT INTO `category` VALUES (749, '奶瓶清洗', 746, 0, 3);
INSERT INTO `category` VALUES (750, '驱蚊防晒', 746, 0, 4);
INSERT INTO `category` VALUES (751, '理发器', 746, 0, 5);
INSERT INTO `category` VALUES (752, '洗澡用具', 746, 0, 6);
INSERT INTO `category` VALUES (753, '婴儿口腔清洁', 746, 0, 7);
INSERT INTO `category` VALUES (754, '洗衣液/皂', 746, 0, 8);
INSERT INTO `category` VALUES (755, '日常护理', 746, 0, 9);
INSERT INTO `category` VALUES (756, '座便器', 746, 0, 10);
INSERT INTO `category` VALUES (757, '童车童床', 718, 1, 6);
INSERT INTO `category` VALUES (758, '婴儿推车', 757, 0, 1);
INSERT INTO `category` VALUES (759, '餐椅摇椅', 757, 0, 2);
INSERT INTO `category` VALUES (760, '婴儿床', 757, 0, 3);
INSERT INTO `category` VALUES (761, '学步车', 757, 0, 4);
INSERT INTO `category` VALUES (762, '三轮车', 757, 0, 5);
INSERT INTO `category` VALUES (763, '自行车', 757, 0, 6);
INSERT INTO `category` VALUES (764, '电动车', 757, 0, 7);
INSERT INTO `category` VALUES (765, '扭扭车', 757, 0, 8);
INSERT INTO `category` VALUES (766, '滑板车', 757, 0, 9);
INSERT INTO `category` VALUES (767, '婴儿床垫', 757, 0, 10);
INSERT INTO `category` VALUES (768, '寝居服饰', 718, 1, 7);
INSERT INTO `category` VALUES (769, '婴儿外出服', 768, 0, 1);
INSERT INTO `category` VALUES (770, '婴儿内衣', 768, 0, 2);
INSERT INTO `category` VALUES (771, '婴儿礼盒', 768, 0, 3);
INSERT INTO `category` VALUES (772, '婴儿鞋帽袜', 768, 0, 4);
INSERT INTO `category` VALUES (773, '安全防护', 768, 0, 5);
INSERT INTO `category` VALUES (774, '家居床品', 768, 0, 6);
INSERT INTO `category` VALUES (775, '睡袋/抱被', 768, 0, 7);
INSERT INTO `category` VALUES (776, '爬行垫', 768, 0, 8);
INSERT INTO `category` VALUES (777, '妈妈专区', 718, 1, 8);
INSERT INTO `category` VALUES (778, '妈咪包/背婴带', 777, 0, 1);
INSERT INTO `category` VALUES (779, '产后塑身', 777, 0, 2);
INSERT INTO `category` VALUES (780, '文胸/内裤', 777, 0, 3);
INSERT INTO `category` VALUES (781, '防辐射服', 777, 0, 4);
INSERT INTO `category` VALUES (782, '孕妈装', 777, 0, 5);
INSERT INTO `category` VALUES (783, '孕期营养', 777, 0, 6);
INSERT INTO `category` VALUES (784, '孕妇护肤', 777, 0, 7);
INSERT INTO `category` VALUES (785, '待产护理', 777, 0, 8);
INSERT INTO `category` VALUES (786, '月子装', 777, 0, 9);
INSERT INTO `category` VALUES (787, '防溢乳垫', 777, 0, 10);
INSERT INTO `category` VALUES (788, '童装童鞋', 718, 1, 9);
INSERT INTO `category` VALUES (789, '套装', 788, 0, 1);
INSERT INTO `category` VALUES (790, '上衣', 788, 0, 2);
INSERT INTO `category` VALUES (791, '裤子', 788, 0, 3);
INSERT INTO `category` VALUES (792, '裙子', 788, 0, 4);
INSERT INTO `category` VALUES (793, '内衣/家居服', 788, 0, 5);
INSERT INTO `category` VALUES (794, '羽绒服/棉服', 788, 0, 6);
INSERT INTO `category` VALUES (795, '亲子装', 788, 0, 7);
INSERT INTO `category` VALUES (796, '儿童配饰', 788, 0, 8);
INSERT INTO `category` VALUES (797, '礼服/演出服', 788, 0, 9);
INSERT INTO `category` VALUES (798, '运动鞋', 788, 0, 10);
INSERT INTO `category` VALUES (799, '皮鞋/帆布鞋', 788, 0, 11);
INSERT INTO `category` VALUES (800, '靴子', 788, 0, 12);
INSERT INTO `category` VALUES (801, '凉鞋', 788, 0, 13);
INSERT INTO `category` VALUES (802, '功能鞋', 788, 0, 14);
INSERT INTO `category` VALUES (803, '户外/运动服', 788, 0, 15);
INSERT INTO `category` VALUES (804, '安全座椅', 718, 1, 10);
INSERT INTO `category` VALUES (805, '提篮式', 804, 0, 1);
INSERT INTO `category` VALUES (806, '安全座椅', 804, 0, 2);
INSERT INTO `category` VALUES (807, '增高垫', 804, 0, 3);
INSERT INTO `category` VALUES (808, '礼品箱包', 0, 1, 13);
INSERT INTO `category` VALUES (809, '潮流女包', 808, 1, 1);
INSERT INTO `category` VALUES (810, '钱包', 809, 0, 1);
INSERT INTO `category` VALUES (811, '手拿包', 809, 0, 2);
INSERT INTO `category` VALUES (812, '单肩包', 809, 0, 3);
INSERT INTO `category` VALUES (813, '双肩包', 809, 0, 4);
INSERT INTO `category` VALUES (814, '手提包', 809, 0, 5);
INSERT INTO `category` VALUES (815, '斜挎包', 809, 0, 6);
INSERT INTO `category` VALUES (816, '钥匙包', 809, 0, 7);
INSERT INTO `category` VALUES (817, '卡包/零钱包', 809, 0, 8);
INSERT INTO `category` VALUES (818, '精品男包', 808, 1, 2);
INSERT INTO `category` VALUES (819, '男士钱包', 818, 0, 1);
INSERT INTO `category` VALUES (820, '男士手包', 818, 0, 2);
INSERT INTO `category` VALUES (821, '卡包名片夹', 818, 0, 3);
INSERT INTO `category` VALUES (822, '商务公文包', 818, 0, 4);
INSERT INTO `category` VALUES (823, '双肩包', 818, 0, 5);
INSERT INTO `category` VALUES (824, '单肩/斜挎包', 818, 0, 6);
INSERT INTO `category` VALUES (825, '钥匙包', 818, 0, 7);
INSERT INTO `category` VALUES (826, '功能箱包', 808, 1, 3);
INSERT INTO `category` VALUES (827, '电脑包', 826, 0, 1);
INSERT INTO `category` VALUES (828, '拉杆箱', 826, 0, 2);
INSERT INTO `category` VALUES (829, '旅行包', 826, 0, 3);
INSERT INTO `category` VALUES (830, '旅行配件', 826, 0, 4);
INSERT INTO `category` VALUES (831, '休闲运动包', 826, 0, 5);
INSERT INTO `category` VALUES (832, '拉杆包', 826, 0, 6);
INSERT INTO `category` VALUES (833, '登山包', 826, 0, 7);
INSERT INTO `category` VALUES (834, '妈咪包', 826, 0, 8);
INSERT INTO `category` VALUES (835, '书包', 826, 0, 9);
INSERT INTO `category` VALUES (836, '相机包', 826, 0, 10);
INSERT INTO `category` VALUES (837, '腰包/胸包', 826, 0, 11);
INSERT INTO `category` VALUES (838, '礼品', 808, 1, 4);
INSERT INTO `category` VALUES (839, '火机烟具', 838, 0, 1);
INSERT INTO `category` VALUES (840, '礼品文具', 838, 0, 2);
INSERT INTO `category` VALUES (841, '军刀军具', 838, 0, 3);
INSERT INTO `category` VALUES (842, '收藏品', 838, 0, 4);
INSERT INTO `category` VALUES (843, '工艺礼品', 838, 0, 5);
INSERT INTO `category` VALUES (844, '创意礼品', 838, 0, 6);
INSERT INTO `category` VALUES (845, '礼盒礼券', 838, 0, 7);
INSERT INTO `category` VALUES (846, '鲜花绿植', 838, 0, 8);
INSERT INTO `category` VALUES (847, '婚庆节庆', 838, 0, 9);
INSERT INTO `category` VALUES (848, '京东卡', 838, 0, 10);
INSERT INTO `category` VALUES (849, '美妆礼品', 838, 0, 11);
INSERT INTO `category` VALUES (850, '礼品定制', 838, 0, 12);
INSERT INTO `category` VALUES (851, '京东福卡', 838, 0, 13);
INSERT INTO `category` VALUES (852, '古董文玩', 838, 0, 14);
INSERT INTO `category` VALUES (853, '奢侈品', 808, 1, 5);
INSERT INTO `category` VALUES (854, '箱包', 853, 0, 1);
INSERT INTO `category` VALUES (855, '钱包', 853, 0, 2);
INSERT INTO `category` VALUES (856, '服饰', 853, 0, 3);
INSERT INTO `category` VALUES (857, '腰带', 853, 0, 4);
INSERT INTO `category` VALUES (858, '太阳镜/眼镜框', 853, 0, 5);
INSERT INTO `category` VALUES (859, '配件', 853, 0, 6);
INSERT INTO `category` VALUES (860, '鞋靴', 853, 0, 7);
INSERT INTO `category` VALUES (861, '饰品', 853, 0, 8);
INSERT INTO `category` VALUES (862, '名品腕表', 853, 0, 9);
INSERT INTO `category` VALUES (863, '高档化妆品', 853, 0, 10);
INSERT INTO `category` VALUES (864, '婚庆', 808, 1, 6);
INSERT INTO `category` VALUES (865, '婚嫁首饰', 864, 0, 1);
INSERT INTO `category` VALUES (866, '婚纱摄影', 864, 0, 2);
INSERT INTO `category` VALUES (867, '婚纱礼服', 864, 0, 3);
INSERT INTO `category` VALUES (868, '婚庆服务', 864, 0, 4);
INSERT INTO `category` VALUES (869, '婚庆礼品/用品', 864, 0, 5);
INSERT INTO `category` VALUES (870, '婚宴', 864, 0, 6);
INSERT INTO `category` VALUES (871, '食品饮料、保健食品', 0, 1, 14);
INSERT INTO `category` VALUES (872, '进口食品', 871, 1, 1);
INSERT INTO `category` VALUES (873, '饼干蛋糕', 872, 0, 1);
INSERT INTO `category` VALUES (874, '糖果/巧克力', 872, 0, 2);
INSERT INTO `category` VALUES (875, '休闲零食', 872, 0, 3);
INSERT INTO `category` VALUES (876, '冲调饮品', 872, 0, 4);
INSERT INTO `category` VALUES (877, '粮油调味', 872, 0, 5);
INSERT INTO `category` VALUES (878, '牛奶', 872, 0, 6);
INSERT INTO `category` VALUES (879, '地方特产', 871, 1, 2);
INSERT INTO `category` VALUES (880, '其他特产', 879, 0, 1);
INSERT INTO `category` VALUES (881, '新疆', 879, 0, 2);
INSERT INTO `category` VALUES (882, '北京', 879, 0, 3);
INSERT INTO `category` VALUES (883, '山西', 879, 0, 4);
INSERT INTO `category` VALUES (884, '内蒙古', 879, 0, 5);
INSERT INTO `category` VALUES (885, '福建', 879, 0, 6);
INSERT INTO `category` VALUES (886, '湖南', 879, 0, 7);
INSERT INTO `category` VALUES (887, '四川', 879, 0, 8);
INSERT INTO `category` VALUES (888, '云南', 879, 0, 9);
INSERT INTO `category` VALUES (889, '东北', 879, 0, 10);
INSERT INTO `category` VALUES (890, '休闲食品', 871, 1, 3);
INSERT INTO `category` VALUES (891, '休闲零食', 890, 0, 1);
INSERT INTO `category` VALUES (892, '坚果炒货', 890, 0, 2);
INSERT INTO `category` VALUES (893, '肉干肉脯', 890, 0, 3);
INSERT INTO `category` VALUES (894, '蜜饯果干', 890, 0, 4);
INSERT INTO `category` VALUES (895, '糖果/巧克力', 890, 0, 5);
INSERT INTO `category` VALUES (896, '饼干蛋糕', 890, 0, 6);
INSERT INTO `category` VALUES (897, '无糖食品', 890, 0, 7);
INSERT INTO `category` VALUES (898, '粮油调味', 871, 1, 4);
INSERT INTO `category` VALUES (899, '米面杂粮', 898, 0, 1);
INSERT INTO `category` VALUES (900, '食用油', 898, 0, 2);
INSERT INTO `category` VALUES (901, '调味品', 898, 0, 3);
INSERT INTO `category` VALUES (902, '南北干货', 898, 0, 4);
INSERT INTO `category` VALUES (903, '方便食品', 898, 0, 5);
INSERT INTO `category` VALUES (904, '有机食品', 898, 0, 6);
INSERT INTO `category` VALUES (905, '饮料冲调', 871, 1, 5);
INSERT INTO `category` VALUES (906, '饮用水', 905, 0, 1);
INSERT INTO `category` VALUES (907, '饮料', 905, 0, 2);
INSERT INTO `category` VALUES (908, '牛奶乳品', 905, 0, 3);
INSERT INTO `category` VALUES (909, '咖啡/奶茶', 905, 0, 4);
INSERT INTO `category` VALUES (910, '冲饮谷物', 905, 0, 5);
INSERT INTO `category` VALUES (911, '蜂蜜/柚子茶', 905, 0, 6);
INSERT INTO `category` VALUES (912, '成人奶粉', 905, 0, 7);
INSERT INTO `category` VALUES (913, '食品礼券', 871, 1, 6);
INSERT INTO `category` VALUES (914, '月饼', 913, 0, 1);
INSERT INTO `category` VALUES (915, '大闸蟹', 913, 0, 2);
INSERT INTO `category` VALUES (916, '粽子', 913, 0, 3);
INSERT INTO `category` VALUES (917, '卡券', 913, 0, 4);
INSERT INTO `category` VALUES (918, '茗茶', 871, 1, 7);
INSERT INTO `category` VALUES (919, '铁观音', 918, 0, 1);
INSERT INTO `category` VALUES (920, '普洱', 918, 0, 2);
INSERT INTO `category` VALUES (921, '龙井', 918, 0, 3);
INSERT INTO `category` VALUES (922, '绿茶', 918, 0, 4);
INSERT INTO `category` VALUES (923, '红茶', 918, 0, 5);
INSERT INTO `category` VALUES (924, '乌龙茶', 918, 0, 6);
INSERT INTO `category` VALUES (925, '花草茶', 918, 0, 7);
INSERT INTO `category` VALUES (926, '花果茶', 918, 0, 8);
INSERT INTO `category` VALUES (927, '养生茶', 918, 0, 9);
INSERT INTO `category` VALUES (928, '黑茶', 918, 0, 10);
INSERT INTO `category` VALUES (929, '白茶', 918, 0, 11);
INSERT INTO `category` VALUES (930, '其它茶', 918, 0, 12);
INSERT INTO `category` VALUES (931, '珠宝', 0, 1, 15);
INSERT INTO `category` VALUES (932, '时尚饰品', 931, 1, 1);
INSERT INTO `category` VALUES (933, '项链', 932, 0, 1);
INSERT INTO `category` VALUES (934, '手链/脚链', 932, 0, 2);
INSERT INTO `category` VALUES (935, '戒指', 932, 0, 3);
INSERT INTO `category` VALUES (936, '耳饰', 932, 0, 4);
INSERT INTO `category` VALUES (937, '毛衣链', 932, 0, 5);
INSERT INTO `category` VALUES (938, '发饰/发卡', 932, 0, 6);
INSERT INTO `category` VALUES (939, '胸针', 932, 0, 7);
INSERT INTO `category` VALUES (940, '饰品配件', 932, 0, 8);
INSERT INTO `category` VALUES (941, '婚庆饰品', 932, 0, 9);
INSERT INTO `category` VALUES (942, '黄金', 931, 1, 2);
INSERT INTO `category` VALUES (943, '黄金吊坠', 942, 0, 1);
INSERT INTO `category` VALUES (944, '黄金项链', 942, 0, 2);
INSERT INTO `category` VALUES (945, '黄金转运珠', 942, 0, 3);
INSERT INTO `category` VALUES (946, '黄金手镯/手链/脚链', 942, 0, 4);
INSERT INTO `category` VALUES (947, '黄金耳饰', 942, 0, 5);
INSERT INTO `category` VALUES (948, '黄金戒指', 942, 0, 6);
INSERT INTO `category` VALUES (949, 'K金饰品', 931, 1, 3);
INSERT INTO `category` VALUES (950, 'K金吊坠', 949, 0, 1);
INSERT INTO `category` VALUES (951, 'K金项链', 949, 0, 2);
INSERT INTO `category` VALUES (952, 'K金手镯/手链/脚链', 949, 0, 3);
INSERT INTO `category` VALUES (953, 'K金戒指', 949, 0, 4);
INSERT INTO `category` VALUES (954, 'K金耳饰', 949, 0, 5);
INSERT INTO `category` VALUES (955, '金银投资', 931, 1, 4);
INSERT INTO `category` VALUES (956, '投资金', 955, 0, 1);
INSERT INTO `category` VALUES (957, '投资银', 955, 0, 2);
INSERT INTO `category` VALUES (958, '投资收藏', 955, 0, 3);
INSERT INTO `category` VALUES (959, '银饰', 931, 1, 5);
INSERT INTO `category` VALUES (960, '银吊坠/项链', 959, 0, 1);
INSERT INTO `category` VALUES (961, '银手镯/手链/脚链', 959, 0, 2);
INSERT INTO `category` VALUES (962, '银戒指', 959, 0, 3);
INSERT INTO `category` VALUES (963, '银耳饰', 959, 0, 4);
INSERT INTO `category` VALUES (964, '足银手镯', 959, 0, 5);
INSERT INTO `category` VALUES (965, '宝宝银饰', 959, 0, 6);
INSERT INTO `category` VALUES (966, '钻石', 931, 1, 6);
INSERT INTO `category` VALUES (967, '裸钻', 966, 0, 1);
INSERT INTO `category` VALUES (968, '钻戒', 966, 0, 2);
INSERT INTO `category` VALUES (969, '钻石项链/吊坠', 966, 0, 3);
INSERT INTO `category` VALUES (970, '钻石耳饰', 966, 0, 4);
INSERT INTO `category` VALUES (971, '钻石手镯/手链', 966, 0, 5);
INSERT INTO `category` VALUES (972, '翡翠玉石', 931, 1, 7);
INSERT INTO `category` VALUES (973, '项链/吊坠', 972, 0, 1);
INSERT INTO `category` VALUES (974, '手镯/手串', 972, 0, 2);
INSERT INTO `category` VALUES (975, '戒指', 972, 0, 3);
INSERT INTO `category` VALUES (976, '耳饰', 972, 0, 4);
INSERT INTO `category` VALUES (977, '挂件/摆件/把件', 972, 0, 5);
INSERT INTO `category` VALUES (978, '玉石孤品', 972, 0, 6);
INSERT INTO `category` VALUES (979, '水晶玛瑙', 931, 1, 8);
INSERT INTO `category` VALUES (980, '项链/吊坠', 979, 0, 1);
INSERT INTO `category` VALUES (981, '耳饰', 979, 0, 2);
INSERT INTO `category` VALUES (982, '手镯/手链/脚链', 979, 0, 3);
INSERT INTO `category` VALUES (983, '戒指', 979, 0, 4);
INSERT INTO `category` VALUES (984, '头饰/胸针', 979, 0, 5);
INSERT INTO `category` VALUES (985, '摆件/挂件', 979, 0, 6);
INSERT INTO `category` VALUES (986, '彩宝', 931, 1, 9);
INSERT INTO `category` VALUES (987, '琥珀/蜜蜡', 986, 0, 1);
INSERT INTO `category` VALUES (988, '碧玺', 986, 0, 2);
INSERT INTO `category` VALUES (989, '红宝石/蓝宝石', 986, 0, 3);
INSERT INTO `category` VALUES (990, '坦桑石', 986, 0, 4);
INSERT INTO `category` VALUES (991, '珊瑚', 986, 0, 5);
INSERT INTO `category` VALUES (992, '祖母绿', 986, 0, 6);
INSERT INTO `category` VALUES (993, '葡萄石', 986, 0, 7);
INSERT INTO `category` VALUES (994, '其他天然宝石', 986, 0, 8);
INSERT INTO `category` VALUES (995, '项链/吊坠', 986, 0, 9);
INSERT INTO `category` VALUES (996, '耳饰', 986, 0, 10);
INSERT INTO `category` VALUES (997, '手镯/手链', 986, 0, 11);
INSERT INTO `category` VALUES (998, '戒指', 986, 0, 12);
INSERT INTO `category` VALUES (999, '铂金', 931, 1, 10);
INSERT INTO `category` VALUES (1000, '铂金项链/吊坠', 999, 0, 1);
INSERT INTO `category` VALUES (1001, '铂金手镯/手链/脚链', 999, 0, 2);
INSERT INTO `category` VALUES (1002, '铂金戒指', 999, 0, 3);
INSERT INTO `category` VALUES (1003, '铂金耳饰', 999, 0, 4);
INSERT INTO `category` VALUES (1004, '木手串/把件', 931, 1, 11);
INSERT INTO `category` VALUES (1005, '小叶紫檀', 1004, 0, 1);
INSERT INTO `category` VALUES (1006, '黄花梨', 1004, 0, 2);
INSERT INTO `category` VALUES (1007, '沉香木', 1004, 0, 3);
INSERT INTO `category` VALUES (1008, '金丝楠', 1004, 0, 4);
INSERT INTO `category` VALUES (1009, '菩提', 1004, 0, 5);
INSERT INTO `category` VALUES (1010, '其他', 1004, 0, 6);
INSERT INTO `category` VALUES (1011, '橄榄核/核桃', 1004, 0, 7);
INSERT INTO `category` VALUES (1012, '檀香', 1004, 0, 8);
INSERT INTO `category` VALUES (1013, '珍珠', 931, 1, 12);
INSERT INTO `category` VALUES (1014, '珍珠项链', 1013, 0, 1);
INSERT INTO `category` VALUES (1015, '珍珠吊坠', 1013, 0, 2);
INSERT INTO `category` VALUES (1016, '珍珠耳饰', 1013, 0, 3);
INSERT INTO `category` VALUES (1017, '珍珠手链', 1013, 0, 4);
INSERT INTO `category` VALUES (1018, '珍珠戒指', 1013, 0, 5);
INSERT INTO `category` VALUES (1019, '珍珠胸针', 1013, 0, 6);
INSERT INTO `category` VALUES (1020, '汽车用品', 0, 1, 16);
INSERT INTO `category` VALUES (1021, '维修保养', 1020, 1, 1);
INSERT INTO `category` VALUES (1022, '机油', 1021, 0, 1);
INSERT INTO `category` VALUES (1023, '正时皮带', 1021, 0, 2);
INSERT INTO `category` VALUES (1024, '添加剂', 1021, 0, 3);
INSERT INTO `category` VALUES (1025, '汽车喇叭', 1021, 0, 4);
INSERT INTO `category` VALUES (1026, '防冻液', 1021, 0, 5);
INSERT INTO `category` VALUES (1027, '汽车玻璃', 1021, 0, 6);
INSERT INTO `category` VALUES (1028, '滤清器', 1021, 0, 7);
INSERT INTO `category` VALUES (1029, '火花塞', 1021, 0, 8);
INSERT INTO `category` VALUES (1030, '减震器', 1021, 0, 9);
INSERT INTO `category` VALUES (1031, '柴机油/辅助油', 1021, 0, 10);
INSERT INTO `category` VALUES (1032, '雨刷', 1021, 0, 11);
INSERT INTO `category` VALUES (1033, '车灯', 1021, 0, 12);
INSERT INTO `category` VALUES (1034, '后视镜', 1021, 0, 13);
INSERT INTO `category` VALUES (1035, '轮胎', 1021, 0, 14);
INSERT INTO `category` VALUES (1036, '轮毂', 1021, 0, 15);
INSERT INTO `category` VALUES (1037, '刹车片/盘', 1021, 0, 16);
INSERT INTO `category` VALUES (1038, '维修配件', 1021, 0, 17);
INSERT INTO `category` VALUES (1039, '蓄电池', 1021, 0, 18);
INSERT INTO `category` VALUES (1040, '底盘装甲/护板', 1021, 0, 19);
INSERT INTO `category` VALUES (1041, '贴膜', 1021, 0, 20);
INSERT INTO `category` VALUES (1042, '汽修工具', 1021, 0, 21);
INSERT INTO `category` VALUES (1043, '改装配件', 1021, 0, 22);
INSERT INTO `category` VALUES (1044, '车载电器', 1020, 1, 2);
INSERT INTO `category` VALUES (1045, '导航仪', 1044, 0, 1);
INSERT INTO `category` VALUES (1046, '安全预警仪', 1044, 0, 2);
INSERT INTO `category` VALUES (1047, '行车记录仪', 1044, 0, 3);
INSERT INTO `category` VALUES (1048, '倒车雷达', 1044, 0, 4);
INSERT INTO `category` VALUES (1049, '蓝牙设备', 1044, 0, 5);
INSERT INTO `category` VALUES (1050, '车载影音', 1044, 0, 6);
INSERT INTO `category` VALUES (1051, '净化器', 1044, 0, 7);
INSERT INTO `category` VALUES (1052, '电源', 1044, 0, 8);
INSERT INTO `category` VALUES (1053, '智能驾驶', 1044, 0, 9);
INSERT INTO `category` VALUES (1054, '车载电台', 1044, 0, 10);
INSERT INTO `category` VALUES (1055, '车载电器配件', 1044, 0, 11);
INSERT INTO `category` VALUES (1056, '吸尘器', 1044, 0, 12);
INSERT INTO `category` VALUES (1057, '智能车机', 1044, 0, 13);
INSERT INTO `category` VALUES (1058, '冰箱', 1044, 0, 14);
INSERT INTO `category` VALUES (1059, '汽车音响', 1044, 0, 15);
INSERT INTO `category` VALUES (1060, '车载生活电器', 1044, 0, 16);
INSERT INTO `category` VALUES (1061, '美容清洗', 1020, 1, 3);
INSERT INTO `category` VALUES (1062, '车蜡', 1061, 0, 1);
INSERT INTO `category` VALUES (1063, '补漆笔', 1061, 0, 2);
INSERT INTO `category` VALUES (1064, '玻璃水', 1061, 0, 3);
INSERT INTO `category` VALUES (1065, '清洁剂', 1061, 0, 4);
INSERT INTO `category` VALUES (1066, '洗车工具', 1061, 0, 5);
INSERT INTO `category` VALUES (1067, '镀晶镀膜', 1061, 0, 6);
INSERT INTO `category` VALUES (1068, '打蜡机', 1061, 0, 7);
INSERT INTO `category` VALUES (1069, '洗车配件', 1061, 0, 8);
INSERT INTO `category` VALUES (1070, '洗车机', 1061, 0, 9);
INSERT INTO `category` VALUES (1071, '洗车水枪', 1061, 0, 10);
INSERT INTO `category` VALUES (1072, '毛巾掸子', 1061, 0, 11);
INSERT INTO `category` VALUES (1073, '汽车装饰', 1020, 1, 4);
INSERT INTO `category` VALUES (1074, '脚垫', 1073, 0, 1);
INSERT INTO `category` VALUES (1075, '座垫', 1073, 0, 2);
INSERT INTO `category` VALUES (1076, '座套', 1073, 0, 3);
INSERT INTO `category` VALUES (1077, '后备箱垫', 1073, 0, 4);
INSERT INTO `category` VALUES (1078, '头枕腰靠', 1073, 0, 5);
INSERT INTO `category` VALUES (1079, '方向盘套', 1073, 0, 6);
INSERT INTO `category` VALUES (1080, '香水', 1073, 0, 7);
INSERT INTO `category` VALUES (1081, '空气净化', 1073, 0, 8);
INSERT INTO `category` VALUES (1082, '挂件摆件', 1073, 0, 9);
INSERT INTO `category` VALUES (1083, '功能小件', 1073, 0, 10);
INSERT INTO `category` VALUES (1084, '车身装饰件', 1073, 0, 11);
INSERT INTO `category` VALUES (1085, '车衣', 1073, 0, 12);
INSERT INTO `category` VALUES (1086, '安全自驾', 1020, 1, 5);
INSERT INTO `category` VALUES (1087, '安全座椅', 1086, 0, 1);
INSERT INTO `category` VALUES (1088, '胎压监测', 1086, 0, 2);
INSERT INTO `category` VALUES (1089, '防盗设备', 1086, 0, 3);
INSERT INTO `category` VALUES (1090, '应急救援', 1086, 0, 4);
INSERT INTO `category` VALUES (1091, '保温箱', 1086, 0, 5);
INSERT INTO `category` VALUES (1092, '地锁', 1086, 0, 6);
INSERT INTO `category` VALUES (1093, '摩托车', 1086, 0, 7);
INSERT INTO `category` VALUES (1094, '充气泵', 1086, 0, 8);
INSERT INTO `category` VALUES (1095, '储物箱', 1086, 0, 9);
INSERT INTO `category` VALUES (1096, '自驾野营', 1086, 0, 10);
INSERT INTO `category` VALUES (1097, '摩托车装备', 1086, 0, 11);
INSERT INTO `category` VALUES (1098, '汽车服务', 1020, 1, 6);
INSERT INTO `category` VALUES (1099, '清洗美容', 1098, 0, 1);
INSERT INTO `category` VALUES (1100, '功能升级', 1098, 0, 2);
INSERT INTO `category` VALUES (1101, '保养维修', 1098, 0, 3);
INSERT INTO `category` VALUES (1102, '油卡充值', 1098, 0, 4);
INSERT INTO `category` VALUES (1103, '车险', 1098, 0, 5);
INSERT INTO `category` VALUES (1104, '加油卡', 1098, 0, 6);
INSERT INTO `category` VALUES (1105, 'ETC', 1098, 0, 7);
INSERT INTO `category` VALUES (1106, '驾驶培训', 1098, 0, 8);
INSERT INTO `category` VALUES (1107, '赛事改装', 1020, 1, 7);
INSERT INTO `category` VALUES (1108, '赛事服装', 1107, 0, 1);
INSERT INTO `category` VALUES (1109, '赛事用品', 1107, 0, 2);
INSERT INTO `category` VALUES (1110, '制动系统', 1107, 0, 3);
INSERT INTO `category` VALUES (1111, '悬挂系统', 1107, 0, 4);
INSERT INTO `category` VALUES (1112, '进气系统', 1107, 0, 5);
INSERT INTO `category` VALUES (1113, '排气系统', 1107, 0, 6);
INSERT INTO `category` VALUES (1114, '电子管理', 1107, 0, 7);
INSERT INTO `category` VALUES (1115, '车身强化', 1107, 0, 8);
INSERT INTO `category` VALUES (1116, '赛事座椅', 1107, 0, 9);
INSERT INTO `category` VALUES (1117, '运动健康', 0, 1, 17);
INSERT INTO `category` VALUES (1118, '运动鞋包', 1117, 1, 1);
INSERT INTO `category` VALUES (1119, '跑步鞋', 1118, 0, 1);
INSERT INTO `category` VALUES (1120, '休闲鞋', 1118, 0, 2);
INSERT INTO `category` VALUES (1121, '篮球鞋', 1118, 0, 3);
INSERT INTO `category` VALUES (1122, '板鞋', 1118, 0, 4);
INSERT INTO `category` VALUES (1123, '帆布鞋', 1118, 0, 5);
INSERT INTO `category` VALUES (1124, '足球鞋', 1118, 0, 6);
INSERT INTO `category` VALUES (1125, '乒羽网鞋', 1118, 0, 7);
INSERT INTO `category` VALUES (1126, '专项运动鞋', 1118, 0, 8);
INSERT INTO `category` VALUES (1127, '训练鞋', 1118, 0, 9);
INSERT INTO `category` VALUES (1128, '拖鞋', 1118, 0, 10);
INSERT INTO `category` VALUES (1129, '运动包', 1118, 0, 11);
INSERT INTO `category` VALUES (1130, '运动服饰', 1117, 1, 2);
INSERT INTO `category` VALUES (1131, '羽绒服', 1130, 0, 1);
INSERT INTO `category` VALUES (1132, '棉服', 1130, 0, 2);
INSERT INTO `category` VALUES (1133, '运动裤', 1130, 0, 3);
INSERT INTO `category` VALUES (1134, '夹克/风衣', 1130, 0, 4);
INSERT INTO `category` VALUES (1135, '卫衣/套头衫', 1130, 0, 5);
INSERT INTO `category` VALUES (1136, 'T恤', 1130, 0, 6);
INSERT INTO `category` VALUES (1137, '套装', 1130, 0, 7);
INSERT INTO `category` VALUES (1138, '乒羽网服', 1130, 0, 8);
INSERT INTO `category` VALUES (1139, '健身服', 1130, 0, 9);
INSERT INTO `category` VALUES (1140, '运动背心', 1130, 0, 10);
INSERT INTO `category` VALUES (1141, '毛衫/线衫', 1130, 0, 11);
INSERT INTO `category` VALUES (1142, '运动配饰', 1130, 0, 12);
INSERT INTO `category` VALUES (1143, '骑行运动', 1117, 1, 3);
INSERT INTO `category` VALUES (1144, '折叠车', 1143, 0, 1);
INSERT INTO `category` VALUES (1145, '山地车/公路车', 1143, 0, 2);
INSERT INTO `category` VALUES (1146, '电动车', 1143, 0, 3);
INSERT INTO `category` VALUES (1147, '其他整车', 1143, 0, 4);
INSERT INTO `category` VALUES (1148, '骑行服', 1143, 0, 5);
INSERT INTO `category` VALUES (1149, '骑行装备', 1143, 0, 6);
INSERT INTO `category` VALUES (1150, '平衡车', 1143, 0, 7);
INSERT INTO `category` VALUES (1151, '垂钓用品', 1117, 1, 4);
INSERT INTO `category` VALUES (1152, '鱼竿鱼线', 1151, 0, 1);
INSERT INTO `category` VALUES (1153, '浮漂鱼饵', 1151, 0, 2);
INSERT INTO `category` VALUES (1154, '钓鱼桌椅', 1151, 0, 3);
INSERT INTO `category` VALUES (1155, '钓鱼配件', 1151, 0, 4);
INSERT INTO `category` VALUES (1156, '钓箱鱼包', 1151, 0, 5);
INSERT INTO `category` VALUES (1157, '其它', 1151, 0, 6);
INSERT INTO `category` VALUES (1158, '游泳用品', 1117, 1, 5);
INSERT INTO `category` VALUES (1159, '泳镜', 1158, 0, 1);
INSERT INTO `category` VALUES (1160, '泳帽', 1158, 0, 2);
INSERT INTO `category` VALUES (1161, '游泳包防水包', 1158, 0, 3);
INSERT INTO `category` VALUES (1162, '女士泳衣', 1158, 0, 4);
INSERT INTO `category` VALUES (1163, '男士泳衣', 1158, 0, 5);
INSERT INTO `category` VALUES (1164, '比基尼', 1158, 0, 6);
INSERT INTO `category` VALUES (1165, '其它', 1158, 0, 7);
INSERT INTO `category` VALUES (1166, '户外鞋服', 1117, 1, 6);
INSERT INTO `category` VALUES (1167, '冲锋衣裤', 1166, 0, 1);
INSERT INTO `category` VALUES (1168, '速干衣裤', 1166, 0, 2);
INSERT INTO `category` VALUES (1169, '滑雪服', 1166, 0, 3);
INSERT INTO `category` VALUES (1170, '羽绒服/棉服', 1166, 0, 4);
INSERT INTO `category` VALUES (1171, '休闲衣裤', 1166, 0, 5);
INSERT INTO `category` VALUES (1172, '抓绒衣裤', 1166, 0, 6);
INSERT INTO `category` VALUES (1173, '软壳衣裤', 1166, 0, 7);
INSERT INTO `category` VALUES (1174, 'T恤', 1166, 0, 8);
INSERT INTO `category` VALUES (1175, '户外风衣', 1166, 0, 9);
INSERT INTO `category` VALUES (1176, '功能内衣', 1166, 0, 10);
INSERT INTO `category` VALUES (1177, '军迷服饰', 1166, 0, 11);
INSERT INTO `category` VALUES (1178, '登山鞋', 1166, 0, 12);
INSERT INTO `category` VALUES (1179, '雪地靴', 1166, 0, 13);
INSERT INTO `category` VALUES (1180, '徒步鞋', 1166, 0, 14);
INSERT INTO `category` VALUES (1181, '越野跑鞋', 1166, 0, 15);
INSERT INTO `category` VALUES (1182, '休闲鞋', 1166, 0, 16);
INSERT INTO `category` VALUES (1183, '工装鞋', 1166, 0, 17);
INSERT INTO `category` VALUES (1184, '溯溪鞋', 1166, 0, 18);
INSERT INTO `category` VALUES (1185, '沙滩/凉拖', 1166, 0, 19);
INSERT INTO `category` VALUES (1186, '户外袜', 1166, 0, 20);
INSERT INTO `category` VALUES (1187, '户外装备', 1117, 1, 7);
INSERT INTO `category` VALUES (1188, '帐篷/垫子', 1187, 0, 1);
INSERT INTO `category` VALUES (1189, '睡袋/吊床', 1187, 0, 2);
INSERT INTO `category` VALUES (1190, '登山攀岩', 1187, 0, 3);
INSERT INTO `category` VALUES (1191, '户外配饰', 1187, 0, 4);
INSERT INTO `category` VALUES (1192, '背包', 1187, 0, 5);
INSERT INTO `category` VALUES (1193, '户外照明', 1187, 0, 6);
INSERT INTO `category` VALUES (1194, '户外仪表', 1187, 0, 7);
INSERT INTO `category` VALUES (1195, '户外工具', 1187, 0, 8);
INSERT INTO `category` VALUES (1196, '望远镜', 1187, 0, 9);
INSERT INTO `category` VALUES (1197, '旅游用品', 1187, 0, 10);
INSERT INTO `category` VALUES (1198, '便携桌椅床', 1187, 0, 11);
INSERT INTO `category` VALUES (1199, '野餐烧烤', 1187, 0, 12);
INSERT INTO `category` VALUES (1200, '军迷用品', 1187, 0, 13);
INSERT INTO `category` VALUES (1201, '救援装备', 1187, 0, 14);
INSERT INTO `category` VALUES (1202, '滑雪装备', 1187, 0, 15);
INSERT INTO `category` VALUES (1203, '极限户外', 1187, 0, 16);
INSERT INTO `category` VALUES (1204, '冲浪潜水', 1187, 0, 17);
INSERT INTO `category` VALUES (1205, '健身训练', 1117, 1, 8);
INSERT INTO `category` VALUES (1206, '综合训练器', 1205, 0, 1);
INSERT INTO `category` VALUES (1207, '其他大型器械', 1205, 0, 2);
INSERT INTO `category` VALUES (1208, '哑铃', 1205, 0, 3);
INSERT INTO `category` VALUES (1209, '仰卧板/收腹机', 1205, 0, 4);
INSERT INTO `category` VALUES (1210, '其他中小型器材', 1205, 0, 5);
INSERT INTO `category` VALUES (1211, '瑜伽舞蹈', 1205, 0, 6);
INSERT INTO `category` VALUES (1212, '甩脂机', 1205, 0, 7);
INSERT INTO `category` VALUES (1213, '踏步机', 1205, 0, 8);
INSERT INTO `category` VALUES (1214, '武术搏击', 1205, 0, 9);
INSERT INTO `category` VALUES (1215, '健身车/动感单车', 1205, 0, 10);
INSERT INTO `category` VALUES (1216, '跑步机', 1205, 0, 11);
INSERT INTO `category` VALUES (1217, '运动护具', 1205, 0, 12);
INSERT INTO `category` VALUES (1218, '体育用品', 1117, 1, 9);
INSERT INTO `category` VALUES (1219, '羽毛球', 1218, 0, 1);
INSERT INTO `category` VALUES (1220, '乒乓球', 1218, 0, 2);
INSERT INTO `category` VALUES (1221, '篮球', 1218, 0, 3);
INSERT INTO `category` VALUES (1222, '足球', 1218, 0, 4);
INSERT INTO `category` VALUES (1223, '网球', 1218, 0, 5);
INSERT INTO `category` VALUES (1224, '排球', 1218, 0, 6);
INSERT INTO `category` VALUES (1225, '高尔夫', 1218, 0, 7);
INSERT INTO `category` VALUES (1226, '台球', 1218, 0, 8);
INSERT INTO `category` VALUES (1227, '棋牌麻将', 1218, 0, 9);
INSERT INTO `category` VALUES (1228, '轮滑滑板', 1218, 0, 10);
INSERT INTO `category` VALUES (1229, '其他', 1218, 0, 11);
INSERT INTO `category` VALUES (1230, '玩具乐器', 0, 1, 18);
INSERT INTO `category` VALUES (1231, '适用年龄', 1230, 1, 1);
INSERT INTO `category` VALUES (1232, '0-6个月', 1231, 0, 1);
INSERT INTO `category` VALUES (1233, '6-12个月', 1231, 0, 2);
INSERT INTO `category` VALUES (1234, '1-3岁', 1231, 0, 3);
INSERT INTO `category` VALUES (1235, '3-6岁', 1231, 0, 4);
INSERT INTO `category` VALUES (1236, '6-14岁', 1231, 0, 5);
INSERT INTO `category` VALUES (1237, '14岁以上', 1231, 0, 6);
INSERT INTO `category` VALUES (1238, '遥控/电动', 1230, 1, 2);
INSERT INTO `category` VALUES (1239, '遥控车', 1238, 0, 1);
INSERT INTO `category` VALUES (1240, '遥控飞机', 1238, 0, 2);
INSERT INTO `category` VALUES (1241, '遥控船', 1238, 0, 3);
INSERT INTO `category` VALUES (1242, '机器人', 1238, 0, 4);
INSERT INTO `category` VALUES (1243, '轨道/助力', 1238, 0, 5);
INSERT INTO `category` VALUES (1244, '毛绒布艺', 1230, 1, 3);
INSERT INTO `category` VALUES (1245, '毛绒/布艺', 1244, 0, 1);
INSERT INTO `category` VALUES (1246, '靠垫/抱枕', 1244, 0, 2);
INSERT INTO `category` VALUES (1247, '娃娃玩具', 1230, 1, 4);
INSERT INTO `category` VALUES (1248, '芭比娃娃', 1247, 0, 1);
INSERT INTO `category` VALUES (1249, '卡通娃娃', 1247, 0, 2);
INSERT INTO `category` VALUES (1250, '智能娃娃', 1247, 0, 3);
INSERT INTO `category` VALUES (1251, '模型玩具', 1230, 1, 5);
INSERT INTO `category` VALUES (1252, '仿真模型', 1251, 0, 1);
INSERT INTO `category` VALUES (1253, '拼插模型', 1251, 0, 2);
INSERT INTO `category` VALUES (1254, '收藏爱好', 1251, 0, 3);
INSERT INTO `category` VALUES (1255, '健身玩具', 1230, 1, 6);
INSERT INTO `category` VALUES (1256, '炫舞毯', 1255, 0, 1);
INSERT INTO `category` VALUES (1257, '爬行垫/毯', 1255, 0, 2);
INSERT INTO `category` VALUES (1258, '户外玩具', 1255, 0, 3);
INSERT INTO `category` VALUES (1259, '戏水玩具', 1255, 0, 4);
INSERT INTO `category` VALUES (1260, '动漫玩具', 1230, 1, 7);
INSERT INTO `category` VALUES (1261, '电影周边', 1260, 0, 1);
INSERT INTO `category` VALUES (1262, '卡通周边', 1260, 0, 2);
INSERT INTO `category` VALUES (1263, '网游周边', 1260, 0, 3);
INSERT INTO `category` VALUES (1264, '益智玩具', 1230, 1, 8);
INSERT INTO `category` VALUES (1265, '摇铃/床铃', 1264, 0, 1);
INSERT INTO `category` VALUES (1266, '健身架', 1264, 0, 2);
INSERT INTO `category` VALUES (1267, '早教启智', 1264, 0, 3);
INSERT INTO `category` VALUES (1268, '拖拉玩具', 1264, 0, 4);
INSERT INTO `category` VALUES (1269, '积木拼插', 1230, 1, 9);
INSERT INTO `category` VALUES (1270, '积木', 1269, 0, 1);
INSERT INTO `category` VALUES (1271, '拼图', 1269, 0, 2);
INSERT INTO `category` VALUES (1272, '磁力棒', 1269, 0, 3);
INSERT INTO `category` VALUES (1273, '立体拼插', 1269, 0, 4);
INSERT INTO `category` VALUES (1274, 'DIY玩具', 1230, 1, 10);
INSERT INTO `category` VALUES (1275, '手工彩泥', 1274, 0, 1);
INSERT INTO `category` VALUES (1276, '绘画工具', 1274, 0, 2);
INSERT INTO `category` VALUES (1277, '情景玩具', 1274, 0, 3);
INSERT INTO `category` VALUES (1278, '创意减压', 1230, 1, 11);
INSERT INTO `category` VALUES (1279, '减压玩具', 1278, 0, 1);
INSERT INTO `category` VALUES (1280, '创意玩具', 1278, 0, 2);
INSERT INTO `category` VALUES (1281, '乐器', 1230, 1, 12);
INSERT INTO `category` VALUES (1282, '钢琴', 1281, 0, 1);
INSERT INTO `category` VALUES (1283, '电子琴/电钢琴', 1281, 0, 2);
INSERT INTO `category` VALUES (1284, '吉他/尤克里里', 1281, 0, 3);
INSERT INTO `category` VALUES (1285, '打击乐器', 1281, 0, 4);
INSERT INTO `category` VALUES (1286, '西洋管弦', 1281, 0, 5);
INSERT INTO `category` VALUES (1287, '民族管弦乐器', 1281, 0, 6);
INSERT INTO `category` VALUES (1288, '乐器配件', 1281, 0, 7);
INSERT INTO `category` VALUES (1289, '电脑音乐', 1281, 0, 8);
INSERT INTO `category` VALUES (1290, '工艺礼品乐器', 1281, 0, 9);
INSERT INTO `category` VALUES (1291, '口琴/口风琴/竖笛', 1281, 0, 10);
INSERT INTO `category` VALUES (1292, '手风琴', 1281, 0, 11);
INSERT INTO `category` VALUES (1293, '彩票、旅行、充值、票务', 0, 1, 19);
INSERT INTO `category` VALUES (1294, '彩票', 1293, 1, 1);
INSERT INTO `category` VALUES (1295, '双色球', 1294, 0, 1);
INSERT INTO `category` VALUES (1296, '大乐透', 1294, 0, 2);
INSERT INTO `category` VALUES (1297, '福彩3D', 1294, 0, 3);
INSERT INTO `category` VALUES (1298, '排列三', 1294, 0, 4);
INSERT INTO `category` VALUES (1299, '排列五', 1294, 0, 5);
INSERT INTO `category` VALUES (1300, '七星彩', 1294, 0, 6);
INSERT INTO `category` VALUES (1301, '七乐彩', 1294, 0, 7);
INSERT INTO `category` VALUES (1302, '竞彩足球', 1294, 0, 8);
INSERT INTO `category` VALUES (1303, '竞彩篮球', 1294, 0, 9);
INSERT INTO `category` VALUES (1304, '新时时彩', 1294, 0, 10);
INSERT INTO `category` VALUES (1305, '机票', 1293, 1, 2);
INSERT INTO `category` VALUES (1306, '国内机票', 1305, 0, 1);
INSERT INTO `category` VALUES (1307, '酒店', 1293, 1, 3);
INSERT INTO `category` VALUES (1308, '国内酒店', 1307, 0, 1);
INSERT INTO `category` VALUES (1309, '酒店团购', 1307, 0, 2);
INSERT INTO `category` VALUES (1310, '旅行', 1293, 1, 4);
INSERT INTO `category` VALUES (1311, '度假', 1310, 0, 1);
INSERT INTO `category` VALUES (1312, '景点', 1310, 0, 2);
INSERT INTO `category` VALUES (1313, '租车', 1310, 0, 3);
INSERT INTO `category` VALUES (1314, '火车票', 1310, 0, 4);
INSERT INTO `category` VALUES (1315, '旅游团购', 1310, 0, 5);
INSERT INTO `category` VALUES (1316, '充值', 1293, 1, 5);
INSERT INTO `category` VALUES (1317, '手机充值', 1316, 0, 1);
INSERT INTO `category` VALUES (1318, '游戏', 1293, 1, 6);
INSERT INTO `category` VALUES (1319, '游戏点卡', 1318, 0, 1);
INSERT INTO `category` VALUES (1320, 'QQ充值', 1318, 0, 2);
INSERT INTO `category` VALUES (1321, '票务', 1293, 1, 7);
INSERT INTO `category` VALUES (1322, '电影票', 1321, 0, 1);
INSERT INTO `category` VALUES (1323, '演唱会', 1321, 0, 2);
INSERT INTO `category` VALUES (1324, '话剧歌剧', 1321, 0, 3);
INSERT INTO `category` VALUES (1325, '音乐会', 1321, 0, 4);
INSERT INTO `category` VALUES (1326, '体育赛事', 1321, 0, 5);
INSERT INTO `category` VALUES (1327, '舞蹈芭蕾', 1321, 0, 6);
INSERT INTO `category` VALUES (1328, '戏曲综艺', 1321, 0, 7);
INSERT INTO `category` VALUES (1329, '生鲜', 0, 1, 20);
INSERT INTO `category` VALUES (1330, '产地直供', 1329, 1, 1);
INSERT INTO `category` VALUES (1331, '东北', 1330, 0, 1);
INSERT INTO `category` VALUES (1332, '华北', 1330, 0, 2);
INSERT INTO `category` VALUES (1333, '西北', 1330, 0, 3);
INSERT INTO `category` VALUES (1334, '华中', 1330, 0, 4);
INSERT INTO `category` VALUES (1335, '华东', 1330, 0, 5);
INSERT INTO `category` VALUES (1336, '华南', 1330, 0, 6);
INSERT INTO `category` VALUES (1337, '西南', 1330, 0, 7);
INSERT INTO `category` VALUES (1338, '水果', 1329, 1, 2);
INSERT INTO `category` VALUES (1339, '苹果', 1338, 0, 1);
INSERT INTO `category` VALUES (1340, '橙子', 1338, 0, 2);
INSERT INTO `category` VALUES (1341, '奇异果/猕猴桃', 1338, 0, 3);
INSERT INTO `category` VALUES (1342, '车厘子/樱桃', 1338, 0, 4);
INSERT INTO `category` VALUES (1343, '芒果', 1338, 0, 5);
INSERT INTO `category` VALUES (1344, '蓝莓', 1338, 0, 6);
INSERT INTO `category` VALUES (1345, '火龙果', 1338, 0, 7);
INSERT INTO `category` VALUES (1346, '葡萄/提子', 1338, 0, 8);
INSERT INTO `category` VALUES (1347, '柚子', 1338, 0, 9);
INSERT INTO `category` VALUES (1348, '香蕉', 1338, 0, 10);
INSERT INTO `category` VALUES (1349, '牛油果', 1338, 0, 11);
INSERT INTO `category` VALUES (1350, '梨', 1338, 0, 12);
INSERT INTO `category` VALUES (1351, '菠萝/凤梨', 1338, 0, 13);
INSERT INTO `category` VALUES (1352, '桔/橘', 1338, 0, 14);
INSERT INTO `category` VALUES (1353, '柠檬', 1338, 0, 15);
INSERT INTO `category` VALUES (1354, '草莓', 1338, 0, 16);
INSERT INTO `category` VALUES (1355, '桃/李/杏', 1338, 0, 17);
INSERT INTO `category` VALUES (1356, '更多水果', 1338, 0, 18);
INSERT INTO `category` VALUES (1357, '水果礼盒/券', 1338, 0, 19);
INSERT INTO `category` VALUES (1358, '猪牛羊肉', 1329, 1, 3);
INSERT INTO `category` VALUES (1359, '牛肉', 1358, 0, 1);
INSERT INTO `category` VALUES (1360, '羊肉', 1358, 0, 2);
INSERT INTO `category` VALUES (1361, '猪肉', 1358, 0, 3);
INSERT INTO `category` VALUES (1362, '内脏类', 1358, 0, 4);
INSERT INTO `category` VALUES (1363, '海鲜水产', 1329, 1, 4);
INSERT INTO `category` VALUES (1364, '鱼类', 1363, 0, 1);
INSERT INTO `category` VALUES (1365, '虾类', 1363, 0, 2);
INSERT INTO `category` VALUES (1366, '蟹类', 1363, 0, 3);
INSERT INTO `category` VALUES (1367, '贝类', 1363, 0, 4);
INSERT INTO `category` VALUES (1368, '海参', 1363, 0, 5);
INSERT INTO `category` VALUES (1369, '海产干货', 1363, 0, 6);
INSERT INTO `category` VALUES (1370, '其他水产', 1363, 0, 7);
INSERT INTO `category` VALUES (1371, '海产礼盒', 1363, 0, 8);
INSERT INTO `category` VALUES (1372, '禽肉蛋品', 1329, 1, 5);
INSERT INTO `category` VALUES (1373, '鸡肉', 1372, 0, 1);
INSERT INTO `category` VALUES (1374, '鸭肉', 1372, 0, 2);
INSERT INTO `category` VALUES (1375, '蛋类', 1372, 0, 3);
INSERT INTO `category` VALUES (1376, '其他禽类', 1372, 0, 4);
INSERT INTO `category` VALUES (1377, '冷冻食品', 1329, 1, 6);
INSERT INTO `category` VALUES (1378, '水饺/馄饨', 1377, 0, 1);
INSERT INTO `category` VALUES (1379, '汤圆/元宵', 1377, 0, 2);
INSERT INTO `category` VALUES (1380, '面点', 1377, 0, 3);
INSERT INTO `category` VALUES (1381, '火锅丸串', 1377, 0, 4);
INSERT INTO `category` VALUES (1382, '速冻半成品', 1377, 0, 5);
INSERT INTO `category` VALUES (1383, '奶酪黄油', 1377, 0, 6);
INSERT INTO `category` VALUES (1384, '熟食腊味', 1329, 1, 7);
INSERT INTO `category` VALUES (1385, '熟食', 1384, 0, 1);
INSERT INTO `category` VALUES (1386, '腊肠/腊肉', 1384, 0, 2);
INSERT INTO `category` VALUES (1387, '火腿', 1384, 0, 3);
INSERT INTO `category` VALUES (1388, '糕点', 1384, 0, 4);
INSERT INTO `category` VALUES (1389, '礼品卡券', 1384, 0, 5);
INSERT INTO `category` VALUES (1390, '饮品甜品', 1329, 1, 8);
INSERT INTO `category` VALUES (1391, '冷藏果蔬汁', 1390, 0, 1);
INSERT INTO `category` VALUES (1392, '冰激凌', 1390, 0, 2);
INSERT INTO `category` VALUES (1393, '其他', 1390, 0, 3);
INSERT INTO `category` VALUES (1394, '蔬菜', 1329, 1, 9);
INSERT INTO `category` VALUES (1395, '叶菜类', 1394, 0, 1);
INSERT INTO `category` VALUES (1396, '茄果瓜类', 1394, 0, 2);
INSERT INTO `category` VALUES (1397, '根茎类', 1394, 0, 3);
INSERT INTO `category` VALUES (1398, '鲜菌菇', 1394, 0, 4);
INSERT INTO `category` VALUES (1399, '葱姜蒜椒', 1394, 0, 5);
INSERT INTO `category` VALUES (1400, '半加工蔬菜', 1394, 0, 6);
INSERT INTO `category` VALUES (1401, '整车', 0, 1, 21);
INSERT INTO `category` VALUES (1402, '全新整车', 1401, 1, 1);
INSERT INTO `category` VALUES (1403, '微型车', 1402, 0, 1);
INSERT INTO `category` VALUES (1404, '小型车', 1402, 0, 2);
INSERT INTO `category` VALUES (1405, '紧凑型车', 1402, 0, 3);
INSERT INTO `category` VALUES (1406, '中型车', 1402, 0, 4);
INSERT INTO `category` VALUES (1407, '中大型车', 1402, 0, 5);
INSERT INTO `category` VALUES (1408, '豪华车', 1402, 0, 6);
INSERT INTO `category` VALUES (1409, 'MPV', 1402, 0, 7);
INSERT INTO `category` VALUES (1410, 'SUV', 1402, 0, 8);
INSERT INTO `category` VALUES (1411, '跑车', 1402, 0, 9);
INSERT INTO `category` VALUES (1412, '二手车', 1401, 1, 2);
INSERT INTO `category` VALUES (1413, '微型车（二手）', 1412, 0, 1);
INSERT INTO `category` VALUES (1414, '小型车（二手）', 1412, 0, 2);
INSERT INTO `category` VALUES (1415, '紧凑型车（二手）', 1412, 0, 3);
INSERT INTO `category` VALUES (1416, '中型车（二手）', 1412, 0, 4);
INSERT INTO `category` VALUES (1417, '中大型车（二手）', 1412, 0, 5);
INSERT INTO `category` VALUES (1418, '豪华车（二手）', 1412, 0, 6);
INSERT INTO `category` VALUES (1419, 'MPV（二手）', 1412, 0, 7);
INSERT INTO `category` VALUES (1420, 'SUV（二手）', 1412, 0, 8);
INSERT INTO `category` VALUES (1421, '跑车（二手）', 1412, 0, 9);
INSERT INTO `category` VALUES (1422, '皮卡（二手）', 1412, 0, 10);
INSERT INTO `category` VALUES (1423, '面包车（二手）', 1412, 0, 11);

-- ----------------------------
-- Table structure for category_brand
-- ----------------------------
DROP TABLE IF EXISTS `category_brand`;
CREATE TABLE `category_brand`  (
  `category_id` bigint(20) NOT NULL COMMENT '分类id',
  `brand_id` bigint(20) NOT NULL COMMENT '品牌id'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_brand
-- ----------------------------
INSERT INTO `category_brand` VALUES (76, 18374);
INSERT INTO `category_brand` VALUES (76, 14026);
INSERT INTO `category_brand` VALUES (76, 13);
INSERT INTO `category_brand` VALUES (76, 2032);
INSERT INTO `category_brand` VALUES (76, 8557);
INSERT INTO `category_brand` VALUES (1, 2266);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `order_id` bigint(64) NOT NULL COMMENT '订单id号',
  `total_money` bigint(20) NOT NULL COMMENT '总金额',
  `actually_money` bigint(20) NOT NULL COMMENT '实付金额',
  `payment_type` int(1) NOT NULL COMMENT '支付类型 1微信 2支付宝',
  `postage` bigint(255) NULL DEFAULT 0 COMMENT '邮费',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '订单创建时间',
  `shipping_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '物流名称',
  `shipping_code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '物流单号',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `buyer_message` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '买家留言',
  `buyer_nick` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '买家昵称',
  `province_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '收货地址(省)',
  `city_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '收货地址(市)',
  `county_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '收货地址(区县)',
  `tow_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '收货地址(镇)',
  `detail_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '收货地址(街道，住址等详细地址)',
  `consignee_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '收货人手机(电话号码)',
  `consignee` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '收货人',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1293466508671979520, 564400, 564400, 1, 0, '2020-08-12 08:37:02', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1293468352479629312, 254700, 254700, 1, 0, '2020-08-12 08:44:21', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1293469071760822272, 159900, 159900, 1, 0, '2020-08-12 08:47:13', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1293470664262553600, 254700, 254700, 1, 0, '2020-08-12 08:53:33', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1293813272134422528, 84900, 84900, 1, 0, '2020-08-13 07:34:57', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1293834607124418560, 84900, 84900, 1, 0, '2020-08-13 08:59:43', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1293834892915904512, 84900, 84900, 1, 0, '2020-08-13 09:00:51', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294081248762925056, 169800, 169800, 1, 0, '2020-08-14 01:19:47', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294082382768508928, 169800, 169800, 1, 0, '2020-08-14 01:24:18', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294083056889630720, 139900, 139900, 1, 0, '2020-08-14 01:26:58', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294084408537649152, 169800, 169800, 1, 0, '2020-08-14 01:32:21', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294097442828062720, 169800, 169800, 1, 0, '2020-08-14 02:24:08', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294098572354129920, 169800, 169800, 1, 0, '2020-08-14 02:28:37', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294099248048115712, 139900, 139900, 1, 0, '2020-08-14 02:31:19', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294100596734955520, 139900, 139900, 1, 0, '2020-08-14 02:36:40', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294111366038294528, 139900, 139900, 1, 0, '2020-08-14 03:19:28', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294196950081605632, 169800, 169800, 1, 0, '2020-08-14 08:59:33', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294197085704425472, 169800, 169800, 1, 0, '2020-08-14 09:00:05', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294213677146312704, 139900, 139900, 1, 0, '2020-08-14 10:06:01', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294213932461985792, 139900, 139900, 1, 0, '2020-08-14 10:07:01', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294215600574435328, 139900, 139900, 1, 0, '2020-08-14 10:13:39', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294226886888656896, 169800, 169800, 1, 0, '2020-08-14 10:58:30', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294233072115519488, 169800, 169800, 1, 0, '2020-08-14 11:23:05', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294235154075750400, 169800, 169800, 1, 0, '2020-08-14 11:31:21', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294315774177054720, 169800, 169800, 1, 0, '2020-08-14 16:51:42', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294514712121315328, 139900, 139900, 1, 0, '2020-08-15 06:02:13', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294518152654360576, 139900, 139900, 1, 0, '2020-08-15 06:15:53', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294520323101822976, 139900, 139900, 1, 0, '2020-08-15 06:24:31', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294522264842276864, 169800, 169800, 1, 0, '2020-08-15 06:32:14', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294525209344348160, 139900, 139900, 1, 0, '2020-08-15 06:43:56', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294525820827734016, 139900, 139900, 1, 0, '2020-08-15 06:46:21', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294534305321717760, 139900, 139900, 1, 0, '2020-08-15 07:20:04', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294537479084445696, 339600, 339600, 1, 0, '2020-08-15 07:32:41', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294539753517092864, 139900, 139900, 1, 0, '2020-08-15 07:41:43', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294543587832369152, 139900, 139900, 1, 0, '2020-08-15 07:56:57', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294548496791244800, 139900, 139900, 1, 0, '2020-08-15 08:16:28', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294549315708129280, 139900, 139900, 1, 0, '2020-08-15 08:19:43', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294557220545105920, 339600, 339600, 1, 0, '2020-08-15 08:51:08', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294560979908169728, 339600, 339600, 1, 0, '2020-08-15 09:06:04', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294633669847289856, 169800, 169800, 1, 0, '2020-08-15 13:54:55', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294633740336762880, 169800, 169800, 1, 0, '2020-08-15 13:55:11', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294637161504706560, 169800, 169800, 1, 0, '2020-08-15 14:08:47', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294644972972281856, 169800, 169800, 1, 0, '2020-08-15 14:39:50', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294650252082679808, 169800, 169800, 1, 0, '2020-08-15 15:00:48', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294650640546533376, 169800, 169800, 1, 0, '2020-08-15 15:02:21', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1294651612886863872, 169800, 169800, 1, 0, '2020-08-15 15:06:13', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');
INSERT INTO `order` VALUES (1295232049745104896, 169800, 169800, 1, 0, '2020-08-17 05:32:40', NULL, NULL, 2, NULL, '李四', '四川', '成都', '郫都区', '红光镇', '西区大道四川某知名大学', '18782939488', '逝去的青春');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` bigint(50) NOT NULL AUTO_INCREMENT COMMENT '订单详情id',
  `order_id` bigint(64) NOT NULL COMMENT '订单id',
  `sku_id` bigint(50) NOT NULL COMMENT '商品id',
  `count` int(11) NOT NULL COMMENT '购买数量',
  `title` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品标题',
  `own_spec` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品动态属性键值集',
  `price` bigint(20) NOT NULL COMMENT '商品价格',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (1, 1293466508671979520, 2600242, 1, '华为 G9 青春版 白色 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"白色\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/9/15/1524297313793.jpg');
INSERT INTO `order_detail` VALUES (2, 1293466508671979520, 2600248, 4, '华为 G9 青春版 金色 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"金色\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/9/5/1524297314398.jpg');
INSERT INTO `order_detail` VALUES (3, 1293466508671979520, 3234250, 1, '华为 麦芒5 全网通 4GB+64GB版 香槟金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"香槟金\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', 139900, 'http://image.haipi.com/images/9/13/1524297318952.jpg');
INSERT INTO `order_detail` VALUES (4, 1293468352479629312, 3385376, 3, '华为 G9 青春版 玫瑰金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"玫瑰金\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/15/15/1524297314800.jpg');
INSERT INTO `order_detail` VALUES (5, 1293469071760822272, 3980563, 1, '华为 麦芒5 全网通 4GB+64GB版 苍穹灰 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"苍穹灰\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', 159900, 'http://image.haipi.com/images/7/11/1524297319511.jpg');
INSERT INTO `order_detail` VALUES (6, 1293470664262553600, 3385376, 3, '华为 G9 青春版 玫瑰金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"玫瑰金\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/15/15/1524297314800.jpg');
INSERT INTO `order_detail` VALUES (7, 1293813272134422528, 3385376, 1, '华为 G9 青春版 玫瑰金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"玫瑰金\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/15/15/1524297314800.jpg');
INSERT INTO `order_detail` VALUES (8, 1293834607124418560, 2600242, 1, '华为 G9 青春版 白色 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"白色\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/9/15/1524297313793.jpg');
INSERT INTO `order_detail` VALUES (9, 1293834892915904512, 2600242, 1, '华为 G9 青春版 白色 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"白色\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/9/15/1524297313793.jpg');
INSERT INTO `order_detail` VALUES (10, 1294081248762925056, 2600242, 2, '华为 G9 青春版 白色 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"白色\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/9/15/1524297313793.jpg');
INSERT INTO `order_detail` VALUES (11, 1294082382768508928, 3385376, 2, '华为 G9 青春版 玫瑰金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"玫瑰金\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/15/15/1524297314800.jpg');
INSERT INTO `order_detail` VALUES (12, 1294083056889630720, 3234250, 1, '华为 麦芒5 全网通 4GB+64GB版 香槟金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"香槟金\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', 139900, 'http://image.haipi.com/images/9/13/1524297318952.jpg');
INSERT INTO `order_detail` VALUES (13, 1294084408537649152, 2600242, 2, '华为 G9 青春版 白色 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"白色\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/9/15/1524297313793.jpg');
INSERT INTO `order_detail` VALUES (14, 1294097442828062720, 2600242, 2, '华为 G9 青春版 白色 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"白色\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/9/15/1524297313793.jpg');
INSERT INTO `order_detail` VALUES (15, 1294098572354129920, 3385376, 2, '华为 G9 青春版 玫瑰金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"玫瑰金\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/15/15/1524297314800.jpg');
INSERT INTO `order_detail` VALUES (16, 1294099248048115712, 3234250, 1, '华为 麦芒5 全网通 4GB+64GB版 香槟金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"香槟金\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', 139900, 'http://image.haipi.com/images/9/13/1524297318952.jpg');
INSERT INTO `order_detail` VALUES (17, 1294100596734955520, 3234250, 1, '华为 麦芒5 全网通 4GB+64GB版 香槟金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"香槟金\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', 139900, 'http://image.haipi.com/images/9/13/1524297318952.jpg');
INSERT INTO `order_detail` VALUES (18, 1294111366038294528, 3234250, 1, '华为 麦芒5 全网通 4GB+64GB版 香槟金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"香槟金\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', 139900, 'http://image.haipi.com/images/9/13/1524297318952.jpg');
INSERT INTO `order_detail` VALUES (19, 1294196950081605632, 3385376, 2, '华为 G9 青春版 玫瑰金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"玫瑰金\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/15/15/1524297314800.jpg');
INSERT INTO `order_detail` VALUES (20, 1294197085704425472, 3385376, 2, '华为 G9 青春版 玫瑰金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"玫瑰金\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/15/15/1524297314800.jpg');
INSERT INTO `order_detail` VALUES (21, 1294213677146312704, 3234250, 1, '华为 麦芒5 全网通 4GB+64GB版 香槟金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"香槟金\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', 139900, 'http://image.haipi.com/images/9/13/1524297318952.jpg');
INSERT INTO `order_detail` VALUES (22, 1294213932461985792, 3234250, 1, '华为 麦芒5 全网通 4GB+64GB版 香槟金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"香槟金\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', 139900, 'http://image.haipi.com/images/9/13/1524297318952.jpg');
INSERT INTO `order_detail` VALUES (23, 1294215600574435328, 3234250, 1, '华为 麦芒5 全网通 4GB+64GB版 香槟金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"香槟金\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', 139900, 'http://image.haipi.com/images/9/13/1524297318952.jpg');
INSERT INTO `order_detail` VALUES (24, 1294226886888656896, 3385376, 2, '华为 G9 青春版 玫瑰金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"玫瑰金\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/15/15/1524297314800.jpg');
INSERT INTO `order_detail` VALUES (25, 1294233072115519488, 2600242, 2, '华为 G9 青春版 白色 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"白色\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/9/15/1524297313793.jpg');
INSERT INTO `order_detail` VALUES (26, 1294235154075750400, 3385376, 2, '华为 G9 青春版 玫瑰金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"玫瑰金\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/15/15/1524297314800.jpg');
INSERT INTO `order_detail` VALUES (27, 1294315774177054720, 3385376, 2, '华为 G9 青春版 玫瑰金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"玫瑰金\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/15/15/1524297314800.jpg');
INSERT INTO `order_detail` VALUES (28, 1294514712121315328, 3234250, 1, '华为 麦芒5 全网通 4GB+64GB版 香槟金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"香槟金\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', 139900, 'http://image.haipi.com/images/9/13/1524297318952.jpg');
INSERT INTO `order_detail` VALUES (29, 1294518152654360576, 3234250, 1, '华为 麦芒5 全网通 4GB+64GB版 香槟金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"香槟金\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', 139900, 'http://image.haipi.com/images/9/13/1524297318952.jpg');
INSERT INTO `order_detail` VALUES (30, 1294520323101822976, 3234250, 1, '华为 麦芒5 全网通 4GB+64GB版 香槟金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"香槟金\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', 139900, 'http://image.haipi.com/images/9/13/1524297318952.jpg');
INSERT INTO `order_detail` VALUES (31, 1294522264842276864, 3385376, 2, '华为 G9 青春版 玫瑰金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"玫瑰金\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/15/15/1524297314800.jpg');
INSERT INTO `order_detail` VALUES (32, 1294525209344348160, 3234250, 1, '华为 麦芒5 全网通 4GB+64GB版 香槟金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"香槟金\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', 139900, 'http://image.haipi.com/images/9/13/1524297318952.jpg');
INSERT INTO `order_detail` VALUES (33, 1294525820827734016, 3234250, 1, '华为 麦芒5 全网通 4GB+64GB版 香槟金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"香槟金\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', 139900, 'http://image.haipi.com/images/9/13/1524297318952.jpg');
INSERT INTO `order_detail` VALUES (34, 1294534305321717760, 3234250, 1, '华为 麦芒5 全网通 4GB+64GB版 香槟金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"香槟金\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', 139900, 'http://image.haipi.com/images/9/13/1524297318952.jpg');
INSERT INTO `order_detail` VALUES (35, 1294537479084445696, 2600248, 4, '华为 G9 青春版 金色 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"金色\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/9/5/1524297314398.jpg');
INSERT INTO `order_detail` VALUES (36, 1294539753517092864, 3234250, 1, '华为 麦芒5 全网通 4GB+64GB版 香槟金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"香槟金\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', 139900, 'http://image.haipi.com/images/9/13/1524297318952.jpg');
INSERT INTO `order_detail` VALUES (37, 1294543587832369152, 3234250, 1, '华为 麦芒5 全网通 4GB+64GB版 香槟金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"香槟金\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', 139900, 'http://image.haipi.com/images/9/13/1524297318952.jpg');
INSERT INTO `order_detail` VALUES (38, 1294548496791244800, 3234250, 1, '华为 麦芒5 全网通 4GB+64GB版 香槟金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"香槟金\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', 139900, 'http://image.haipi.com/images/9/13/1524297318952.jpg');
INSERT INTO `order_detail` VALUES (39, 1294549315708129280, 3234250, 1, '华为 麦芒5 全网通 4GB+64GB版 香槟金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"香槟金\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', 139900, 'http://image.haipi.com/images/9/13/1524297318952.jpg');
INSERT INTO `order_detail` VALUES (40, 1294557220545105920, 2600248, 4, '华为 G9 青春版 金色 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"金色\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/9/5/1524297314398.jpg');
INSERT INTO `order_detail` VALUES (41, 1294560979908169728, 2600248, 4, '华为 G9 青春版 金色 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"金色\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/9/5/1524297314398.jpg');
INSERT INTO `order_detail` VALUES (42, 1294633669847289856, 2600242, 2, '华为 G9 青春版 白色 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"白色\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/9/15/1524297313793.jpg');
INSERT INTO `order_detail` VALUES (43, 1294633740336762880, 2600242, 2, '华为 G9 青春版 白色 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"白色\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/9/15/1524297313793.jpg');
INSERT INTO `order_detail` VALUES (44, 1294637161504706560, 2600242, 2, '华为 G9 青春版 白色 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"白色\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/9/15/1524297313793.jpg');
INSERT INTO `order_detail` VALUES (45, 1294644972972281856, 2600242, 2, '华为 G9 青春版 白色 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"白色\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/9/15/1524297313793.jpg');
INSERT INTO `order_detail` VALUES (46, 1294650252082679808, 2600242, 2, '华为 G9 青春版 白色 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"白色\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/9/15/1524297313793.jpg');
INSERT INTO `order_detail` VALUES (47, 1294650640546533376, 2600242, 2, '华为 G9 青春版 白色 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"白色\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/9/15/1524297313793.jpg');
INSERT INTO `order_detail` VALUES (48, 1294651612886863872, 2600242, 2, '华为 G9 青春版 白色 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"白色\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/9/15/1524297313793.jpg');
INSERT INTO `order_detail` VALUES (49, 1295232049745104896, 3385376, 2, '华为 G9 青春版 玫瑰金 移动联通电信4G手机 双卡双待', '{\"机身颜色\":\"玫瑰金\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 84900, 'http://image.haipi.com/images/15/15/1524297314800.jpg');

-- ----------------------------
-- Table structure for order_status
-- ----------------------------
DROP TABLE IF EXISTS `order_status`;
CREATE TABLE `order_status`  (
  `order_id` bigint(64) NOT NULL COMMENT '订单id',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '订单状态1、未付款 2、已付款,未发货 3、已发货,未确认 4、交易成功 5、交易关闭 ',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '订单创建时间',
  `payment_time` datetime(0) NULL DEFAULT NULL COMMENT '付款时间',
  `shipping_time` datetime(0) NULL DEFAULT NULL COMMENT '发货时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '交易完成时间',
  `close_time` datetime(0) NULL DEFAULT NULL COMMENT '交易关闭时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_status
-- ----------------------------
INSERT INTO `order_status` VALUES (1293466508671979520, 1, '2020-08-12 08:37:02', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1293468352479629312, 1, '2020-08-12 08:44:21', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1293469071760822272, 1, '2020-08-12 08:47:13', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1293470664262553600, 1, '2020-08-12 08:53:33', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1293813272134422528, 1, '2020-08-13 07:34:57', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1293834607124418560, 1, '2020-08-13 08:59:45', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1293834892915904512, 1, '2020-08-13 09:00:51', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294081248762925056, 1, '2020-08-14 01:19:48', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294082382768508928, 1, '2020-08-14 01:24:18', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294083056889630720, 1, '2020-08-14 01:26:59', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294084408537649152, 1, '2020-08-14 01:32:21', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294097442828062720, 1, '2020-08-14 02:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294098572354129920, 1, '2020-08-14 02:28:38', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294099248048115712, 1, '2020-08-14 02:31:19', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294100596734955520, 1, '2020-08-14 02:36:40', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294111366038294528, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294196950081605632, 1, '2020-08-14 08:59:33', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294197085704425472, 1, '2020-08-14 09:00:05', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294213677146312704, 1, '2020-08-14 10:06:01', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294213932461985792, 1, '2020-08-14 10:07:02', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294215600574435328, 1, '2020-08-14 10:13:39', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294226886888656896, 2, '2020-08-14 10:58:30', '2020-08-14 10:59:06', NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294233072115519488, 1, '2020-08-14 11:23:05', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294235154075750400, 2, '2020-08-14 11:31:21', '2020-08-14 11:31:56', NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294315774177054720, 2, '2020-08-14 16:51:43', '2020-08-14 16:53:38', NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294514712121315328, 2, '2020-08-15 06:02:14', '2020-08-15 06:03:37', NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294518152654360576, 2, '2020-08-15 06:15:54', '2020-08-15 06:16:46', NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294520323101822976, 1, '2020-08-15 06:24:31', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294522264842276864, 2, '2020-08-15 06:32:14', '2020-08-15 06:32:51', NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294525209344348160, 2, '2020-08-15 06:43:56', '2020-08-15 06:44:24', NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294525820827734016, 2, '2020-08-15 06:46:22', '2020-08-15 06:47:03', NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294534305321717760, 2, '2020-08-15 07:20:05', '2020-08-15 07:21:15', NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294537479084445696, 2, '2020-08-15 07:32:41', '2020-08-15 07:33:14', NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294539753517092864, 2, '2020-08-15 07:41:44', '2020-08-15 07:42:21', NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294543587832369152, 2, '2020-08-15 07:56:58', '2020-08-15 07:57:48', NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294548496791244800, 2, '2020-08-15 08:16:28', '2020-08-15 08:17:14', NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294549315708129280, 2, '2020-08-15 08:19:43', '2020-08-15 08:20:18', NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294557220545105920, 2, '2020-08-15 08:51:08', '2020-08-15 08:51:38', NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294560979908169728, 2, '2020-08-15 09:06:04', '2020-08-15 09:07:17', NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294633669847289856, 2, '2020-08-15 13:54:56', '2020-08-15 13:55:54', NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294633740336762880, 1, '2020-08-15 13:55:11', NULL, NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294637161504706560, 2, '2020-08-15 14:08:47', '2020-08-15 14:09:16', NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294644972972281856, 2, '2020-08-15 14:39:50', '2020-08-15 14:41:43', NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294650252082679808, 2, '2020-08-15 15:00:48', '2020-08-15 15:01:24', NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294650640546533376, 2, '2020-08-15 15:02:21', '2020-08-15 15:02:42', NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1294651612886863872, 2, '2020-08-15 15:06:13', '2020-08-15 15:07:33', NULL, NULL, NULL);
INSERT INTO `order_status` VALUES (1295232049745104896, 1, '2020-08-17 05:32:40', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sku
-- ----------------------------
DROP TABLE IF EXISTS `sku`;
CREATE TABLE `sku`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'sku id',
  `spu_id` bigint(20) NOT NULL COMMENT 'spu的id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品名sku名',
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品的图片，多个图片 ‘ ，’分割',
  `price` bigint(15) NOT NULL COMMENT '价格',
  `indexes` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '特有规格属性在spu属性模板中的对应下标',
  `own_spec` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'sku特有规格参数键值对，json格式',
  `enable` tinyint(1) NOT NULL COMMENT '是否有效，1有效，0无效',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `last_update_time` datetime(0) NOT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3980563 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sku
-- ----------------------------
INSERT INTO `sku` VALUES (2600242, 1, '华为 G9 青春版 白色 移动联通电信4G手机 双卡双待', 'http://image.haipi.com/images/9/15/1524297313793.jpg', 84900, '0_0_0', '{\"机身颜色\":\"白色\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 1, '2020-08-06 23:59:42', '2020-08-06 23:59:46');
INSERT INTO `sku` VALUES (2600248, 1, '华为 G9 青春版 金色 移动联通电信4G手机 双卡双待', 'http://image.haipi.com/images/9/5/1524297314398.jpg', 84900, '1_0_0', '{\"机身颜色\":\"金色\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 1, '2020-08-09 19:29:39', '2020-08-09 19:29:43');
INSERT INTO `sku` VALUES (3234250, 2, '华为 麦芒5 全网通 4GB+64GB版 香槟金 移动联通电信4G手机 双卡双待', 'http://image.haipi.com/images/9/13/1524297318952.jpg', 139900, '0_0_0', '{\"机身颜色\":\"香槟金\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', 1, '2020-08-09 19:31:55', '2020-08-09 19:31:59');
INSERT INTO `sku` VALUES (3385376, 1, '华为 G9 青春版 玫瑰金 移动联通电信4G手机 双卡双待', 'http://image.haipi.com/images/15/15/1524297314800.jpg', 84900, '2_0_0', '{\"机身颜色\":\"玫瑰金\",\"内存\":\"3GB\",\"机身存储\":\"16GB\"}', 1, '2020-08-09 20:53:18', '2020-08-09 20:53:22');
INSERT INTO `sku` VALUES (3980563, 2, '华为 麦芒5 全网通 4GB+64GB版 苍穹灰 移动联通电信4G手机 双卡双待', 'http://image.haipi.com/images/7/11/1524297319511.jpg', 159900, '1_0_0', '{\"机身颜色\":\"苍穹灰\",\"内存\":\"4GB\",\"机身存储\":\"64GB\"}', 1, '2020-08-09 20:56:25', '2020-08-09 20:56:28');

-- ----------------------------
-- Table structure for specification_group
-- ----------------------------
DROP TABLE IF EXISTS `specification_group`;
CREATE TABLE `specification_group`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` bigint(20) NOT NULL COMMENT '分类id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '规格组名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 567 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of specification_group
-- ----------------------------
INSERT INTO `specification_group` VALUES (1, 76, '主体');
INSERT INTO `specification_group` VALUES (2, 76, '基本信息');
INSERT INTO `specification_group` VALUES (3, 76, '主芯片\r\n');
INSERT INTO `specification_group` VALUES (4, 76, '存储');
INSERT INTO `specification_group` VALUES (5, 76, '屏幕');
INSERT INTO `specification_group` VALUES (6, 76, '后置摄像头\r\n');
INSERT INTO `specification_group` VALUES (7, 76, '前置摄像头\r\n');
INSERT INTO `specification_group` VALUES (8, 76, '电池信息\r\n');
INSERT INTO `specification_group` VALUES (9, 76, '网络支持\r\n');
INSERT INTO `specification_group` VALUES (10, 76, '数据接口\r\n');
INSERT INTO `specification_group` VALUES (11, 76, '辅助功能\r\n');

-- ----------------------------
-- Table structure for specification_param
-- ----------------------------
DROP TABLE IF EXISTS `specification_param`;
CREATE TABLE `specification_param`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` bigint(20) NOT NULL COMMENT '商品id',
  `group_id` bigint(20) NOT NULL COMMENT '规格组id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '规格参数名',
  `numeric` tinyint(1) NULL DEFAULT NULL COMMENT '是否是数值类型参数',
  `unit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数字类型参数的单位',
  `generic` tinyint(1) NULL DEFAULT NULL COMMENT '是否是sku通用属性',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of specification_param
-- ----------------------------
INSERT INTO `specification_param` VALUES (1, 76, 1, '入网型号', 0, NULL, 1);
INSERT INTO `specification_param` VALUES (2, 76, 1, '品牌', 0, NULL, 1);
INSERT INTO `specification_param` VALUES (3, 76, 1, '上市年份\r\n', 1, '年', 1);
INSERT INTO `specification_param` VALUES (4, 76, 2, '机身重量', 1, 'g', 1);
INSERT INTO `specification_param` VALUES (5, 76, 2, '机身长度', 1, 'mm', 1);
INSERT INTO `specification_param` VALUES (6, 76, 3, 'CPU品牌\r\n', 0, NULL, 1);
INSERT INTO `specification_param` VALUES (7, 76, 5, '主屏幕尺寸（英寸）', 1, '英寸', 1);
INSERT INTO `specification_param` VALUES (8, 76, 1, '产品名称', 0, NULL, 1);
INSERT INTO `specification_param` VALUES (9, 76, 1, '首销日期\r\n', 0, NULL, 1);
INSERT INTO `specification_param` VALUES (10, 76, 8, '电池是否可拆卸', 0, NULL, 1);
INSERT INTO `specification_param` VALUES (11, 76, 2, '机身颜色', 0, NULL, 0);
INSERT INTO `specification_param` VALUES (12, 76, 4, '机身存储', 0, NULL, 0);
INSERT INTO `specification_param` VALUES (13, 76, 4, '内存', 0, NULL, 0);

-- ----------------------------
-- Table structure for spu
-- ----------------------------
DROP TABLE IF EXISTS `spu`;
CREATE TABLE `spu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品名spu名',
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子标题',
  `cid1` bigint(20) NULL DEFAULT NULL COMMENT '一级分类id',
  `cid2` bigint(20) NULL DEFAULT NULL COMMENT '二级分类id',
  `cid3` bigint(20) NULL DEFAULT NULL COMMENT '三级分类id',
  `brand_id` bigint(20) NULL DEFAULT NULL COMMENT '品牌id',
  `saleable` tinyint(1) NULL DEFAULT NULL COMMENT '是否上架，1上架，0下架',
  `vaild` tinyint(1) NULL DEFAULT NULL COMMENT '是否有效，逻辑删除，1未删除，0删除',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `last_update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spu
-- ----------------------------
INSERT INTO `spu` VALUES (1, '华为 G9 青春版 ', '骁龙芯片！3GB运行内存！索尼1300万摄像头！<a href=\'https://sale.jd.com/act/DhKrOjXnFcGL.html\' target=\'_blank\'>华为新品全面上线，更多优惠猛戳》》</a>', 74, 75, 76, 8557, 1, 1, '2020-08-05 23:57:54', '2020-08-05 23:57:57');
INSERT INTO `spu` VALUES (2, '华为 麦芒5 全网通 4GB+64GB版 ', '光学防抖，持久续航！后置1600万像素，金属机身！<a href=\'http://item.jd.com/5148371.html?from_saf=1\' target=\'_blank\'>全面屏麦芒6低至2099元！</a>', 74, 75, 76, 8557, 1, 1, '2020-08-07 00:03:00', '2020-08-07 00:03:03');

-- ----------------------------
-- Table structure for spu_detail
-- ----------------------------
DROP TABLE IF EXISTS `spu_detail`;
CREATE TABLE `spu_detail`  (
  `spu_id` bigint(20) NOT NULL COMMENT 'spu的id',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '商品介绍，描述信息',
  `specifications` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品全部规格参数',
  `spec_template` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '特有规格参数模板',
  `packing_list` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '包装清单',
  `after_sale_service` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '售后服务',
  PRIMARY KEY (`spu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of spu_detail
-- ----------------------------
INSERT INTO `spu_detail` VALUES (1, '<div class=\"content_tpl\"><div class=\"formwork\">\n<div class=\"formwork_img\"><img src=\"//img20.360buyimg.com/vc/jfs/t5893/141/6838703316/1369626/15c9d88f/596c753aN075ee827.jpg\" /></div>\n</div></div><br/>', '[{\"group\":\"主体\",\"params\":[{\"k\":\"品牌\",\"searchable\":false,\"global\":true,\"v\":null},{\"k\":\"型号\",\"searchable\":false,\"global\":true,\"v\":\"G9青春版（全网通版）\"},{\"k\":\"上市年份\",\"searchable\":false,\"global\":true,\"numerical\":true,\"unit\":\"年\",\"v\":2016.0}]},{\"group\":\"基本信息\",\"params\":[{\"k\":\"机身颜色\",\"searchable\":false,\"global\":false,\"options\":[\"白色\",\"金色\",\"玫瑰金\"]},{\"k\":\"机身重量（g）\",\"searchable\":false,\"global\":true,\"numerical\":true,\"unit\":\"g\",\"v\":143},{\"k\":\"机身材质工艺\",\"searchable\":true,\"global\":true,\"v\":null}]},{\"group\":\"操作系统\",\"params\":[{\"k\":\"操作系统\",\"searchable\":true,\"global\":true,\"v\":\"Android\"}]},{\"group\":\"主芯片\",\"params\":[{\"k\":\"CPU品牌\",\"searchable\":true,\"global\":true,\"v\":\"骁龙（Snapdragon)\"},{\"k\":\"CPU型号\",\"searchable\":false,\"global\":true,\"v\":\"骁龙617（msm8952）\"},{\"k\":\"CPU核数\",\"searchable\":true,\"global\":true,\"v\":\"八核\"},{\"k\":\"CPU频率\",\"searchable\":true,\"global\":true,\"numerical\":true,\"unit\":\"GHz\",\"v\":1.5}]},{\"group\":\"存储\",\"params\":[{\"k\":\"内存\",\"searchable\":true,\"global\":false,\"numerical\":false,\"unit\":\"GB\",\"options\":[\"3GB\"]},{\"k\":\"机身存储\",\"searchable\":true,\"global\":false,\"numerical\":false,\"unit\":\"GB\",\"options\":[\"16GB\"]}]},{\"group\":\"屏幕\",\"params\":[{\"k\":\"主屏幕尺寸（英寸）\",\"searchable\":true,\"global\":true,\"numerical\":true,\"unit\":\"英寸\",\"v\":5.2},{\"k\":\"分辨率\",\"searchable\":false,\"global\":true,\"v\":\"1920*1080(FHD)\"}]},{\"group\":\"摄像头\",\"params\":[{\"k\":\"前置摄像头\",\"searchable\":true,\"global\":true,\"numerical\":true,\"unit\":\"万\",\"v\":800.0},{\"k\":\"后置摄像头\",\"searchable\":true,\"global\":true,\"numerical\":true,\"unit\":\"万\",\"v\":1300.0}]},{\"group\":\"电池信息\",\"params\":[{\"k\":\"电池容量（mAh）\",\"searchable\":true,\"global\":true,\"numerical\":true,\"unit\":\"mAh\",\"v\":3000.0}]}]', '{\"机身颜色\":[\"白色\",\"金色\",\"玫瑰金\"],\"内存\":[\"3GB\"],\"机身存储\":[\"16GB\"]}', '手机（电池内置）*1，中式充电器*1，数据线*1，半入耳式线控耳机*1，华为手机凭证*1，快速指南*1，取卡针*1，屏幕保护膜（出厂已贴）*1', '本产品全国联保，享受三包服务，质保期为：一年质保');
INSERT INTO `spu_detail` VALUES (2, '<div class=\"content_tpl\"> <div class=\"formwork\">  <div class=\"formwork_img\">   <br />   <div class=\"content_tpl\">    <div class=\"formwork\">     <div class=\"formwork_img\"><img src=\"//img30.360buyimg.com/jgsq-productsoa/jfs/t15580/105/2328716889/962262/b778acbc/5aa224a3N9285a3bf.jpg\" alt=\"\" /><br /></div>    </div>   </div>  </div> </div></div><br/>', '[{\"group\":\"主体\",\"params\":[{\"k\":\"品牌\",\"searchable\":false,\"global\":true,\"v\":\"华为（HUAWEI）\"},{\"k\":\"型号\",\"searchable\":false,\"global\":true,\"v\":\"华为麦芒5（HUAWEI MLA-AL10）\"},{\"k\":\"上市年份\",\"searchable\":false,\"global\":true,\"numerical\":true,\"unit\":\"年\",\"v\":2016.0}]},{\"group\":\"基本信息\",\"params\":[{\"k\":\"机身颜色\",\"searchable\":false,\"global\":false,\"options\":[\"香槟金\",\"苍穹灰\"]},{\"k\":\"机身重量（g）\",\"searchable\":false,\"global\":true,\"numerical\":true,\"unit\":\"g\",\"v\":160},{\"k\":\"机身材质工艺\",\"searchable\":true,\"global\":true,\"v\":null}]},{\"group\":\"操作系统\",\"params\":[{\"k\":\"操作系统\",\"searchable\":true,\"global\":true,\"v\":\"Android\"}]},{\"group\":\"主芯片\",\"params\":[{\"k\":\"CPU品牌\",\"searchable\":true,\"global\":true,\"v\":\"骁龙（Snapdragon)\"},{\"k\":\"CPU型号\",\"searchable\":false,\"global\":true,\"v\":\"骁龙625（MSM8953）\"},{\"k\":\"CPU核数\",\"searchable\":true,\"global\":true,\"v\":\"八核\"},{\"k\":\"CPU频率\",\"searchable\":true,\"global\":true,\"numerical\":true,\"unit\":\"GHz\",\"v\":2.0}]},{\"group\":\"存储\",\"params\":[{\"k\":\"内存\",\"searchable\":true,\"global\":false,\"numerical\":false,\"unit\":\"GB\",\"options\":[\"4GB\"]},{\"k\":\"机身存储\",\"searchable\":true,\"global\":false,\"numerical\":false,\"unit\":\"GB\",\"options\":[\"64GB\"]}]},{\"group\":\"屏幕\",\"params\":[{\"k\":\"主屏幕尺寸（英寸）\",\"searchable\":true,\"global\":true,\"numerical\":true,\"unit\":\"英寸\",\"v\":5.5},{\"k\":\"分辨率\",\"searchable\":false,\"global\":true,\"v\":\"1920*1080(FHD)\"}]},{\"group\":\"摄像头\",\"params\":[{\"k\":\"前置摄像头\",\"searchable\":true,\"global\":true,\"numerical\":true,\"unit\":\"万\",\"v\":800.0},{\"k\":\"后置摄像头\",\"searchable\":true,\"global\":true,\"numerical\":true,\"unit\":\"万\",\"v\":1600.0}]},{\"group\":\"电池信息\",\"params\":[{\"k\":\"电池容量（mAh）\",\"searchable\":true,\"global\":true,\"numerical\":true,\"unit\":\"mAh\",\"v\":3340.0}]}]', '{\"机身颜色\":[\"香槟金\",\"苍穹灰\"],\"内存\":[\"4GB\"],\"机身存储\":[\"64GB\"]}', '手机×1、耳机×1、快速指南×1、USB 线×1、充电器×1、卡针×1、三包凭证×1', '本产品全国联保，享受三包服务，质保期为：一年质保');

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock`  (
  `sku_id` bigint(20) NOT NULL COMMENT '库存对应sku 的id',
  `stock` int(10) NOT NULL DEFAULT 0 COMMENT '库存数量',
  PRIMARY KEY (`sku_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stock
-- ----------------------------
INSERT INTO `stock` VALUES (2600242, 75);
INSERT INTO `stock` VALUES (2600248, 84);
INSERT INTO `stock` VALUES (3234250, 82);
INSERT INTO `stock` VALUES (3385376, 75);
INSERT INTO `stock` VALUES (3980563, 99);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `salt` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '盐',
  `created` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, '李四', 'dc6d0df75e771bf15d93a57f648446c0', NULL, '104a6acc8a1f4c0986c646e653f3c6b9', '2020-08-11 04:28:21');
INSERT INTO `user` VALUES (3, '张三', '18c933dd61f77284d3d48430e715eb87', NULL, 'a452a8f71bf34f85aac40cdd0bef5813', '2020-08-16 09:27:15');

SET FOREIGN_KEY_CHECKS = 1;
