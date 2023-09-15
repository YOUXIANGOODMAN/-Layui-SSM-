/*
 Navicat Premium Data Transfer

 Source Server         : MyDataBase
 Source Server Type    : MySQL
 Source Server Version : 50743
 Source Host           : localhost:3306
 Source Schema         : library

 Target Server Type    : MySQL
 Target Server Version : 50743
 File Encoding         : 65001

 Date: 14/09/2023 21:11:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `adminType` int(11) NULL DEFAULT NULL COMMENT '管理员类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (6, 'czd', '12345', 1);
INSERT INTO `admin` VALUES (7, 'wbx', '12345', 0);
INSERT INTO `admin` VALUES (8, 'ypy', '12345', 0);

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书名称',
  `author` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `publish` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出版社',
  `isbn` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '书籍编号',
  `introduction` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `language` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '语言',
  `price` double NULL DEFAULT NULL COMMENT '价格',
  `publish_date` date NULL DEFAULT NULL COMMENT '出版时间',
  `type_id` int(11) NULL DEFAULT NULL COMMENT '书籍类型',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态：0未借出，1已借出',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '图书信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `topic` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布人',
  `createDate` datetime(0) NULL DEFAULT NULL COMMENT '公告发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (11, '东莞道元自动化技术有限公司  ', '工作地点：东莞市\n招聘岗位：\n助理软件工程师（7K-10K/月）\n助理视觉工程师（7K-10K/月）\n助理项目工程师（7K-10K/月）\n宣讲时间：9月15日 09:00\n宣讲地点：一教503\n联系方式：\n0769-26385666-8913（张先生/李小姐）\n\n2、企业名称：湖南星邦智能装备股份有限公司   \n工作地点：湖南省长沙市\n招聘岗位：\n软件开发岗（7K-9K/月）\n宣讲时间：9月15日 19:30 \n宣讲地点：一教602\n联系方式：\n18437421636（HR张）\n15990126564（HR胡）\n\n3、企业名称： 深圳市亚辉龙生物科技股份有限公司    \n工作地点：深圳市\n招聘岗位：\n开发工程师Java方向（7K-10K/月）\n测试工程师（7K-10K/月）\n软件测试工程师（7K-10K/月）\n宣讲时间：9月15日 19:30\n宣讲地点：一教302\n联系方式：\n17377814351（王先生）', '管理员', '2023-09-14 11:03:05');
INSERT INTO `notice` VALUES (12, '#当天get offer的金升阳招聘会，赶紧来网申', '流程：提前网申/线上笔试—宣讲—面试 —offer\n\nIC设计（硕博）：38-60万\n其他岗（本硕）：10-20万\n技术研发（本硕博）：13-50万\n\n宣讲时间预告\n9月25日-湖南科技大学14:30-一教204教室\n\n 多岗位：工艺、质量、测试、设备维护、电源预研/研发、国内外销售、供应链管理等…\n 多地点：怀化、广州、武汉、深圳、长沙、成都、西安等；\n五天八小时、周末双休、优于业内的薪酬、双通道晋升、专业导师……\n\n加入QQ交流群：948842303（湖南专线群）\n 欢迎投递简历，更多岗位点击链接网申：https://mornsun.m.zhiye.com/#/jobs?jc=2\n心动不如行动，期待你的加入\n网申推荐人：刘璐瑶', '管理员', '2023-09-14 11:03:39');
INSERT INTO `notice` VALUES (13, '迪博公司空宣直播即将开始！', '【关于公司】迪博专注于以数智为驱动的监管科技解决方案，居国内领先地位。以“咨询+软件+数据”的创新商业模式，利用大数据和人工智能等技术提供风控一体化解决方案，是行业内唯一国家级专精特新重点小巨人企业。\n【空宣时间】9月15日（周五）14:30\n【腾讯会议ID】759-337-336\n【腾讯会议链接】https://meeting.tencent.com/dm/HfrG9f7MIJap\n【面向专业】经管法、数理、计算机等\n【招聘岗位】\n管理咨询顾问 50人（12-18W/年）\n人工智能开发工程师10人（17-25W/年）\n前端/后端软件工程师 10人（11-17W/年）\n实施工程师10人（11-15W/年）\n数据分析员10人（7-10W/年）\n【QQ咨询群】909074413\n【简历投递邮箱】hr@dibcn.com，请命名“姓名+学校+应聘岗位”。\n欢迎同学们积极投递简历！', '管理员', '2023-09-14 11:03:57');
INSERT INTO `notice` VALUES (14, '公务员请看这里！', '根据公务员录用工作安排，现定于2023年9月15日（明天）上午9:00-12:00，在湖南科技大学一教504举行公务员招录现场预选。现场预选是报考我单位唯一渠道，欢迎广大学子积极报考！\n一、报考条件\n1.   普通高等教育大学本科及以上学历，2024年应届毕业生（不含委托培养和定向培养）。\n2.   中共党员（含预备党员）或共青团员，学生干部或曾获得校级及以上级别奖励优先。\n3.   学习成绩优良，在校期间未受过纪律处分，按期毕业取得相应学历学位。\n4.   具有正常履行职责的身体条件和身体素质。\n5.   法律法规规定的其他条件。\n二、工作地点及岗位需求\n按照不同的职位，工作地点在长沙、株洲、湘潭等湖南省内各地级市。各岗位的专业需求见宣讲会现场公告。\n三、现场报名所需资料\n请携带以下材料的原件及复印件：\n1.   毕业生就业推荐表、身份证、学生证、在校学习成绩单（需经学校相关部门或院系盖章确认）、大学英语四/六级成绩单，硕士研究生还需提供本科毕业证、学位证、本科期间学习成绩单（需经学校相关部门或院系盖章确认）。\n2.   其他各类资料、专业水平考试证书、奖励证书原件及复印件。\n有几位毕业学长会现场来参加面试，请有打算报考公务员计划的同学都务必去参与哦', '管理员', '2023-09-14 18:45:18');
INSERT INTO `notice` VALUES (15, '【学思想 强党性 重实践 建新功】资源环境与安全工程学院党委召开主题教育专题民主生活会', '8月29日，资源环境与安全工程学院党委召开学习贯彻习近平新时代中国特色社会主义思想主题教育专题民主生活会。校党委委员、副校长廖湘岳，校学生工作处处长蒋利平到会指导。资源环境与安全工程学院院长余伟健主持会议。廖湘岳在点评讲话中指出，资源环境与安全工程学院党委对本次民主生活会准备充分、组织周密、程序到位，学院党委班子成员认真开展理论学习，积极查找问题，深刻剖析原因，坦诚地开展批评和自我批评，达到了统一思想、团结同志、共创事业的目的。他就学院党委工作提出“三个转化”和“四个协同”的工作要求：一是谋划好促进理论学习转化为推动学院高质量成果、促进科研资源转化为人才培养资源、促进基础研究能力转化为社会服务能力的“三个转化”工作，二是统筹好学院与独立科研机构、学院党委领导班子成员、老中青教师、专任教师与学工队伍之间的“四个协同”工作。廖湘岳在点评讲话中指出，资源环境与安全工程学院党委对本次民主生活会准备充分、组织周密、程序到位，学院党委班子成员认真开展理论学习，积极查找问题，深刻剖析原因，坦诚地开展批评和自我批评，达到了统一思想、团结同志、共创事业的目的。他就学院党委工作提出“三个转化”和“四个协同”的工作要求：一是谋划好促进理论学习转化为推动学院高质量成果、促进科研资源转化为人才培养资源、促进基础研究能力转化为社会服务能力的“三个转化”工作，二是统筹好学院与独立科研机构、学院党委领导班子成员、老中青教师、专任教师与学工队伍之间的“四个协同”工作。', '管理员', '2023-09-14 19:55:41');

-- ----------------------------
-- Table structure for student_info
-- ----------------------------
DROP TABLE IF EXISTS `student_info`;
CREATE TABLE `student_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `realName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `dormitoryNum` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宿舍号',
  `registerDate` datetime(0) NULL DEFAULT NULL COMMENT '入住时间',
  `studentNum` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '读者信息（包括登录账号密码等）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_info
-- ----------------------------
INSERT INTO `student_info` VALUES (4, 'caizhanhui', '123456', '蔡沾辉', '男', '2002-01-27', '12345678910', '2-1-125', '2020-09-25 20:55:15', '2005010301');
INSERT INTO `student_info` VALUES (5, 'sunruihao', '123456', '孙睿昊', '男', '2002-04-18', '12345678190', '2-7-125', '2020-09-25 20:55:15', '2005010315');
INSERT INTO `student_info` VALUES (6, 'liuyifei', '123456', '刘亦菲', '女', '2001-09-15', '13004326351', '8-1-101', '2020-09-25 20:55:15', '2102010420');
INSERT INTO `student_info` VALUES (8, 'pengyuyan', '123456', '彭于晏', '男', '2023-09-03', '15507779699', '2-8-202', '2020-09-25 20:55:15', '2005010307');
INSERT INTO `student_info` VALUES (11, 'huangshihon', '123456', '黄世宏', '女', '2002-09-14', '12345678917', '2-7-207', '2020-09-25 20:55:15', '2005010305');
INSERT INTO `student_info` VALUES (12, 'wangboxuan', '123456', '王博炫', '女', '2002-01-07', '12345678912', '2-7-207', '2020-09-25 20:55:15', '2005010313');
INSERT INTO `student_info` VALUES (13, 'wuyanzu', '123456', '吴彦祖', '男', '2001-09-14', '12345687910', '6-3-203', '2020-09-25 20:55:15', '1234567890');
INSERT INTO `student_info` VALUES (14, 'chenzidan', '123456', '陈子聃', '女', '2002-09-05', '12345678901', '2-7-207', '2020-09-25 20:55:15', '2005010306');

-- ----------------------------
-- Table structure for type_info
-- ----------------------------
DROP TABLE IF EXISTS `type_info`;
CREATE TABLE `type_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `dormitoryNumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宿舍号',
  `dormitoryType` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宿舍类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '图书类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type_info
-- ----------------------------
INSERT INTO `type_info` VALUES (7, '2-8-202', '普宿八人寝');
INSERT INTO `type_info` VALUES (8, '2-7-207', '普宿四人寝');
INSERT INTO `type_info` VALUES (9, '8-3-106', '公寓四人寝');
INSERT INTO `type_info` VALUES (12, '8-1-101', '普宿八人寝');
INSERT INTO `type_info` VALUES (13, '1-2-103', '普宿六人寝');
INSERT INTO `type_info` VALUES (14, '2-7-125', '公寓四人寝');
INSERT INTO `type_info` VALUES (17, '8-1-102', '普宿八人寝');
INSERT INTO `type_info` VALUES (18, '1-1-101', '公寓四人寝');
INSERT INTO `type_info` VALUES (19, '3-3-333', '普宿六人寝');

SET FOREIGN_KEY_CHECKS = 1;
