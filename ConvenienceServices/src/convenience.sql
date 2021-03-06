/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50639
Source Host           : localhost:3306
Source Database       : convenience

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2018-12-30 16:45:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `base_menu`
-- ----------------------------
DROP TABLE IF EXISTS `base_menu`;
CREATE TABLE `base_menu` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `paths` varchar(255) DEFAULT NULL,
  `parentId` varchar(50) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `orderNum` int(10) DEFAULT NULL COMMENT '权重',
  `isLeaf` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_menu
-- ----------------------------
INSERT INTO `base_menu` VALUES ('02646445f54b4e2aadc7cd27abc2c94f', '财务管理', '财务管理', null, null, null, '1', '0', '0');
INSERT INTO `base_menu` VALUES ('1ba84441dc9a48db928f0f7eac489db6', '站点管理', '站点管理', '##', '###', '4dfdda8ba54944eb9af9dd7f80595f75', '0', '3', '0');
INSERT INTO `base_menu` VALUES ('38a5d63890ca4cdbabecd4a9b5c24b49', '1', '1', '1', '1', '8103c779e29e437486b5d5258bf8c100', '1', '0', '0');
INSERT INTO `base_menu` VALUES ('3abfbe5a32f54377b009ea7dd6c35dfa', '快递员增改', '快递员增改', '/consumer/au', 'consumer/consumer_au.html', '4dfdda8ba54944eb9af9dd7f80595f75', '1', '0', '1');
INSERT INTO `base_menu` VALUES ('48017a5f08174ddb9b4c55049418b818', '员工增改', '员工增改', '/user/au', 'user/user_au.html', '4dfdda8ba54944eb9af9dd7f80595f75', '1', '0', '1');
INSERT INTO `base_menu` VALUES ('4dfdda8ba54944eb9af9dd7f80595f75', '系统管理', '系统管理', null, null, null, '1', '9', '0');
INSERT INTO `base_menu` VALUES ('4fa77407b06f4f37b70a33239825b030', '快递员管理', '快递员管理', '/consumer/list', 'consumer/consumer_list.html', '4dfdda8ba54944eb9af9dd7f80595f75', '1', '0', '0');
INSERT INTO `base_menu` VALUES ('51f1c7b082f04b1d981942d1346e8afe', '广告增改', '广告增改', '/carousel/au', 'system/carousel_au.html', '4dfdda8ba54944eb9af9dd7f80595f75', '1', '0', '1');
INSERT INTO `base_menu` VALUES ('53651604d7d84a8b8f979ddd23f6fd2d', '修改密码', '修改密码', '/user/pwdmodify', 'user/modify_pwd.html', '4dfdda8ba54944eb9af9dd7f80595f75', '1', '0', '1');
INSERT INTO `base_menu` VALUES ('556b5ecf6b05470d9366450a6d77aeba', '测试', '测试', '333', '333', '4dfdda8ba54944eb9af9dd7f80595f75', '0', '0', '0');
INSERT INTO `base_menu` VALUES ('62883dab4903441d88f81bc2aec43fe4', '菜单', '菜单', '/authority/menu', 'authority/menu.html', '4dfdda8ba54944eb9af9dd7f80595f75', '1', '11', '0');
INSERT INTO `base_menu` VALUES ('6be513cb91b24a188d97a6fee3d9a088', '广告管理', '广告管理', '/carousel/list', 'system/carousel_list.html', '4dfdda8ba54944eb9af9dd7f80595f75', '1', '0', '0');
INSERT INTO `base_menu` VALUES ('6d6539b65794490eab346f99760570ab', '订单盘点', '订单盘点', '/order/statistic', 'order/statisticOrder.html', 'ea9255a509b944c790318da4cad94fdc', '1', '0', '0');
INSERT INTO `base_menu` VALUES ('745a674ba0a24e479d6829e370439dd5', '员工管理', '员工管理', '/user/list', 'user/user_list.html', '4dfdda8ba54944eb9af9dd7f80595f75', '1', '0', '0');
INSERT INTO `base_menu` VALUES ('8103c779e29e437486b5d5258bf8c100', '前台管理', '前台管理', null, null, null, '1', '9', '0');
INSERT INTO `base_menu` VALUES ('862ad6fd62fb408799883808e9bd5f9a', '广告管理', '广告管理', '#####', '####', '8103c779e29e437486b5d5258bf8c100', '1', '0', '0');
INSERT INTO `base_menu` VALUES ('8b46f014ca2f473cbe65c73499a4bd55', '会员提现', '会员提现记录', '/consumer/withdraw', 'financial/financial_list.html', '02646445f54b4e2aadc7cd27abc2c94f', '1', '0', '0');
INSERT INTO `base_menu` VALUES ('9f092f800b4f4ff7b1c475588c91b462', '分类管理', '分类管理', '/category/list', 'goods/goods_category.html', '4dfdda8ba54944eb9af9dd7f80595f75', '1', '0', '0');
INSERT INTO `base_menu` VALUES ('a58da72802dc495b8d6fc21c341c0784', '商品增改', '商品增改', '/goods/au', 'goods/goods_au.html', '4dfdda8ba54944eb9af9dd7f80595f75', '1', '0', '1');
INSERT INTO `base_menu` VALUES ('a6ab6accfb3749dfbed920efa7551721', '商品管理', '商品管理', '/goods/list', 'goods/goods_list.html', '4dfdda8ba54944eb9af9dd7f80595f75', '1', '0', '0');
INSERT INTO `base_menu` VALUES ('ae437630a27a42dba87411ddbcb738bf', '菜单增改', '菜单增改', '###', '###', '4dfdda8ba54944eb9af9dd7f80595f75', '0', '1', '0');
INSERT INTO `base_menu` VALUES ('d2e95f23329b4e7ab2908fb87849f6df', '角色管理', '角色管理', '/authority/role', 'authority/role.html', '4dfdda8ba54944eb9af9dd7f80595f75', '1', '0', '0');
INSERT INTO `base_menu` VALUES ('dc67ca7eadea4d87ab26f4eb69f7e07f', '订单管理', '订单管理', '/order/ordermanage', 'order/sendsOrder_list.html', 'ea9255a509b944c790318da4cad94fdc', '1', '0', '0');
INSERT INTO `base_menu` VALUES ('dd9f435c8bf84a8ab29213c287a9a11d', 'test', 'test', null, null, null, '0', '0', '0');
INSERT INTO `base_menu` VALUES ('ea9255a509b944c790318da4cad94fdc', '订单管理', '订单管理', null, null, null, '1', '0', '0');

-- ----------------------------
-- Table structure for `base_menu_btn`
-- ----------------------------
DROP TABLE IF EXISTS `base_menu_btn`;
CREATE TABLE `base_menu_btn` (
  `id` varchar(50) NOT NULL,
  `menuId` varchar(50) DEFAULT NULL,
  `btnName` varchar(50) DEFAULT NULL,
  `btnType` varchar(50) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_menu_btn
-- ----------------------------
INSERT INTO `base_menu_btn` VALUES ('02e1e07185fe4f1c96403eb61eaec0cf', '8b46f014ca2f473cbe65c73499a4bd55', '汇款', 'add', '1');
INSERT INTO `base_menu_btn` VALUES ('04842401accb4c7d8482e9b51b2a7c89', '62883dab4903441d88f81bc2aec43fe4', '上下架', 'onof', '0');
INSERT INTO `base_menu_btn` VALUES ('14fc58c746074fa5b76fa9490d24b24e', 'a6ab6accfb3749dfbed920efa7551721', '修改', 'update', '1');
INSERT INTO `base_menu_btn` VALUES ('2400dff1a560410ebef6a8ce67112bb6', '9f092f800b4f4ff7b1c475588c91b462', '删除', 'delete', '1');
INSERT INTO `base_menu_btn` VALUES ('26a650c77ba84bdd9251c6125642e228', '9f092f800b4f4ff7b1c475588c91b462', '修改', 'update', '1');
INSERT INTO `base_menu_btn` VALUES ('367275cdb6534d0abba3e4670a04fe81', '745a674ba0a24e479d6829e370439dd5', '删除', 'delete', '1');
INSERT INTO `base_menu_btn` VALUES ('396708e8847e48b9a9111ac396dd74ad', '6be513cb91b24a188d97a6fee3d9a088', '新增', 'add', '1');
INSERT INTO `base_menu_btn` VALUES ('3c20e4992e9447b388896d019e30e0e4', '745a674ba0a24e479d6829e370439dd5', '修改', 'update', '1');
INSERT INTO `base_menu_btn` VALUES ('469d5fbe3826450682c1208bb9233314', '1ba84441dc9a48db928f0f7eac489db6', '修改', 'update', '1');
INSERT INTO `base_menu_btn` VALUES ('48d0e31f5626486db99277684766c023', '862ad6fd62fb408799883808e9bd5f9a', '添加', 'add', '1');
INSERT INTO `base_menu_btn` VALUES ('6133c867de7f4659ae70e201db0ba73b', '1ba84441dc9a48db928f0f7eac489db6', '删除', 'delete', '1');
INSERT INTO `base_menu_btn` VALUES ('6c3a1ec565b4492ab136150ae48e685b', '62883dab4903441d88f81bc2aec43fe4', '添加', 'add', '1');
INSERT INTO `base_menu_btn` VALUES ('6e8c0d324bcb4e54a860987d7abcfc10', 'a6ab6accfb3749dfbed920efa7551721', '删除', 'delete', '1');
INSERT INTO `base_menu_btn` VALUES ('7332768ace8f41e4bad21c5349dbb810', 'd2e95f23329b4e7ab2908fb87849f6df', '新增', 'add', '1');
INSERT INTO `base_menu_btn` VALUES ('75c84cd84973427ca525ff03437e7ee0', '62883dab4903441d88f81bc2aec43fe4', '删除', 'delete', '1');
INSERT INTO `base_menu_btn` VALUES ('7b18af1ad2b44879a1283883b1fd5ff3', '6be513cb91b24a188d97a6fee3d9a088', '修改', 'update', '1');
INSERT INTO `base_menu_btn` VALUES ('80dc4b70409d4c6b83fad8691895ebcb', '62883dab4903441d88f81bc2aec43fe4', '修改', 'update', '1');
INSERT INTO `base_menu_btn` VALUES ('989976a579e1422596684bc99cc63a1e', '862ad6fd62fb408799883808e9bd5f9a', '删除', 'delete', '1');
INSERT INTO `base_menu_btn` VALUES ('b1181fa9cb0140d8b6aad804c2d02df9', 'dc67ca7eadea4d87ab26f4eb69f7e07f', '删除', 'delete', '1');
INSERT INTO `base_menu_btn` VALUES ('b1ba40600a5e4f16b6a74d55f5f24f47', '4fa77407b06f4f37b70a33239825b030', '删除', 'delete', '1');
INSERT INTO `base_menu_btn` VALUES ('b2dacc5189aa4b24ad50f446006660de', '9f092f800b4f4ff7b1c475588c91b462', '新增', 'add', '1');
INSERT INTO `base_menu_btn` VALUES ('b6f1ee2669fb4bf5b31cc2540dadac06', '862ad6fd62fb408799883808e9bd5f9a', '修改', 'update', '1');
INSERT INTO `base_menu_btn` VALUES ('c47993549e9c41cda624b09ded76bb88', 'd2e95f23329b4e7ab2908fb87849f6df', '删除', 'delete', '1');
INSERT INTO `base_menu_btn` VALUES ('cb8e0c1d27ef4cfc91d3fbb1a5965bd9', '745a674ba0a24e479d6829e370439dd5', '新增', 'add', '1');
INSERT INTO `base_menu_btn` VALUES ('d5432fd7788945418251677628d76486', 'a6ab6accfb3749dfbed920efa7551721', '新增', 'add', '1');
INSERT INTO `base_menu_btn` VALUES ('ddaadf3f2c6a48898b77ba05094232e2', '6be513cb91b24a188d97a6fee3d9a088', '删除', 'delete', '1');
INSERT INTO `base_menu_btn` VALUES ('e11d8a3e83a640b3a74ea293b8926762', '4fa77407b06f4f37b70a33239825b030', '新增', 'add', '1');
INSERT INTO `base_menu_btn` VALUES ('e290c2dc8373421494bcbd842219ffd3', 'd2e95f23329b4e7ab2908fb87849f6df', '修改', 'update', '1');
INSERT INTO `base_menu_btn` VALUES ('ea22b49c13d540689884e1c44f663a73', '4fa77407b06f4f37b70a33239825b030', '修改', 'update', '1');
INSERT INTO `base_menu_btn` VALUES ('ea4971acd092461a9663444aa12b9310', 'dc67ca7eadea4d87ab26f4eb69f7e07f', '查看快递信息', 'look', '1');
INSERT INTO `base_menu_btn` VALUES ('fbdc3f63777e4b2894b212df125bca7f', '6d6539b65794490eab346f99760570ab', '查看', 'look', '1');
INSERT INTO `base_menu_btn` VALUES ('ff61ff0afac64147a153abe1cc5f9779', '1ba84441dc9a48db928f0f7eac489db6', '添加', 'add', '1');

-- ----------------------------
-- Table structure for `base_role`
-- ----------------------------
DROP TABLE IF EXISTS `base_role`;
CREATE TABLE `base_role` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_role
-- ----------------------------
INSERT INTO `base_role` VALUES ('20e8f435233f44198cf34ea8d7e339b5', '管理员', '管理员', '1498803797073', '1');
INSERT INTO `base_role` VALUES ('a9cb32100a804dd4b9fae4893384c095', '财务管理', '财务管理', '1537320564625', '1');

-- ----------------------------
-- Table structure for `base_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `base_role_menu`;
CREATE TABLE `base_role_menu` (
  `id` varchar(50) NOT NULL,
  `roleId` varchar(50) DEFAULT NULL,
  `menuId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_role_menu
-- ----------------------------
INSERT INTO `base_role_menu` VALUES ('0763553b707d4ba590bd915cf2fc7ea9', '20e8f435233f44198cf34ea8d7e339b5', 'ea4971acd092461a9663444aa12b9310');
INSERT INTO `base_role_menu` VALUES ('15ffdbc05dc6422683ed4dd40f561c52', '20e8f435233f44198cf34ea8d7e339b5', 'ddaadf3f2c6a48898b77ba05094232e2');
INSERT INTO `base_role_menu` VALUES ('19f7410ef22b496898d119dc2d8ec8a2', '20e8f435233f44198cf34ea8d7e339b5', 'b2dacc5189aa4b24ad50f446006660de');
INSERT INTO `base_role_menu` VALUES ('20755b8c2ce34d09ad0034936697e29a', '20e8f435233f44198cf34ea8d7e339b5', '6c3a1ec565b4492ab136150ae48e685b');
INSERT INTO `base_role_menu` VALUES ('288c602e9ff04d1aadc7ae2e09023050', '20e8f435233f44198cf34ea8d7e339b5', 'e11d8a3e83a640b3a74ea293b8926762');
INSERT INTO `base_role_menu` VALUES ('37601dbcf0f34919acccf1919a75f658', '20e8f435233f44198cf34ea8d7e339b5', 'b1181fa9cb0140d8b6aad804c2d02df9');
INSERT INTO `base_role_menu` VALUES ('4ba9161a958d49c8a572a0f2e5d6ee01', '20e8f435233f44198cf34ea8d7e339b5', 'b1ba40600a5e4f16b6a74d55f5f24f47');
INSERT INTO `base_role_menu` VALUES ('555559d583d44024a9c867170fffa710', '20e8f435233f44198cf34ea8d7e339b5', '14fc58c746074fa5b76fa9490d24b24e');
INSERT INTO `base_role_menu` VALUES ('56b72298576c45779bc0a0bada0f3c36', '20e8f435233f44198cf34ea8d7e339b5', '7332768ace8f41e4bad21c5349dbb810');
INSERT INTO `base_role_menu` VALUES ('5beb283a362b43b9a434a9203450db22', '20e8f435233f44198cf34ea8d7e339b5', '80dc4b70409d4c6b83fad8691895ebcb');
INSERT INTO `base_role_menu` VALUES ('5c9d5aa193e047c2ad36d5098d0de5ee', '20e8f435233f44198cf34ea8d7e339b5', '6e8c0d324bcb4e54a860987d7abcfc10');
INSERT INTO `base_role_menu` VALUES ('5f1bd44dc03c4b32a260ae496a35df57', '20e8f435233f44198cf34ea8d7e339b5', 'd5432fd7788945418251677628d76486');
INSERT INTO `base_role_menu` VALUES ('74920b6104dc4ae49835ec56c2d81c2f', '20e8f435233f44198cf34ea8d7e339b5', '75c84cd84973427ca525ff03437e7ee0');
INSERT INTO `base_role_menu` VALUES ('7b375cde8154462782ef33c0ecb94bd0', '20e8f435233f44198cf34ea8d7e339b5', '02e1e07185fe4f1c96403eb61eaec0cf');
INSERT INTO `base_role_menu` VALUES ('88ff27dc0e794e5a98b2ffed03779cf7', '20e8f435233f44198cf34ea8d7e339b5', '367275cdb6534d0abba3e4670a04fe81');
INSERT INTO `base_role_menu` VALUES ('9046dd02a77b4337820b3bc9c5ddc2ff', '20e8f435233f44198cf34ea8d7e339b5', 'c47993549e9c41cda624b09ded76bb88');
INSERT INTO `base_role_menu` VALUES ('92b9a058589445b0a4a73b9ecc4522ef', '20e8f435233f44198cf34ea8d7e339b5', '3c20e4992e9447b388896d019e30e0e4');
INSERT INTO `base_role_menu` VALUES ('94231cae87c24c98a2e4a5813aaadab0', 'a9cb32100a804dd4b9fae4893384c095', 'b1ba40600a5e4f16b6a74d55f5f24f47');
INSERT INTO `base_role_menu` VALUES ('95f133b4c2e54533990b99c56676b490', 'a9cb32100a804dd4b9fae4893384c095', '02e1e07185fe4f1c96403eb61eaec0cf');
INSERT INTO `base_role_menu` VALUES ('a77d88e8d69244919bc3ad5c64cb2f91', '20e8f435233f44198cf34ea8d7e339b5', '26a650c77ba84bdd9251c6125642e228');
INSERT INTO `base_role_menu` VALUES ('abc258f9a8ce417981411394b138d5e9', '20e8f435233f44198cf34ea8d7e339b5', 'ea22b49c13d540689884e1c44f663a73');
INSERT INTO `base_role_menu` VALUES ('af32eac965914c21a944c544e230bdf2', '20e8f435233f44198cf34ea8d7e339b5', '2400dff1a560410ebef6a8ce67112bb6');
INSERT INTO `base_role_menu` VALUES ('bcfb747b082949198a0be91623158513', '20e8f435233f44198cf34ea8d7e339b5', 'e290c2dc8373421494bcbd842219ffd3');
INSERT INTO `base_role_menu` VALUES ('eb3168fea119426d895a9c220889a618', '20e8f435233f44198cf34ea8d7e339b5', '396708e8847e48b9a9111ac396dd74ad');
INSERT INTO `base_role_menu` VALUES ('ef3bc95478fe41c4a54c496805c606a3', '20e8f435233f44198cf34ea8d7e339b5', 'cb8e0c1d27ef4cfc91d3fbb1a5965bd9');
INSERT INTO `base_role_menu` VALUES ('f60327b0f8824f6984ceedef57e542c8', '20e8f435233f44198cf34ea8d7e339b5', '7b18af1ad2b44879a1283883b1fd5ff3');
INSERT INTO `base_role_menu` VALUES ('fcca2daa076347b5972fef7cbd813419', '20e8f435233f44198cf34ea8d7e339b5', 'fbdc3f63777e4b2894b212df125bca7f');

-- ----------------------------
-- Table structure for `base_setting`
-- ----------------------------
DROP TABLE IF EXISTS `base_setting`;
CREATE TABLE `base_setting` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `withdrawalRatio` double(10,2) DEFAULT NULL COMMENT '提现手续费率',
  `managementFeeRatio` double(10,2) DEFAULT NULL COMMENT '管理费率',
  `a_advertisingAward` double DEFAULT NULL COMMENT 'a区广告奖金',
  `b_advertisingAward` double DEFAULT NULL COMMENT 'b区广告奖金',
  `layerAward` double DEFAULT NULL COMMENT '层奖',
  `ventureCapital` double DEFAULT NULL COMMENT '创业金',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_setting
-- ----------------------------
INSERT INTO `base_setting` VALUES ('1', '0.05', '0.10', '1000', '500', '0', '10000');

-- ----------------------------
-- Table structure for `base_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `base_user_role`;
CREATE TABLE `base_user_role` (
  `id` varchar(50) NOT NULL,
  `userId` varchar(50) DEFAULT NULL,
  `roleId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_user_role
-- ----------------------------
INSERT INTO `base_user_role` VALUES ('958675ec03eb4968b726bda87cd88577', '7f32c9cf1ccf4aaf9d5f40129c37f16c', '20e8f435233f44198cf34ea8d7e339b5');
INSERT INTO `base_user_role` VALUES ('b94ad3edd2f34d33b716532a637ae951', '1389aab5319444b896212967d25101fb', '20e8f435233f44198cf34ea8d7e339b5');
INSERT INTO `base_user_role` VALUES ('cbae1bde9db441bcb5db97445482a5d9', '05ad741cb70a415389a152cfd9fa1ad5', 'a9cb32100a804dd4b9fae4893384c095');

-- ----------------------------
-- Table structure for `bulletin_bulletin`
-- ----------------------------
DROP TABLE IF EXISTS `bulletin_bulletin`;
CREATE TABLE `bulletin_bulletin` (
  `id` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `type` int(5) DEFAULT NULL COMMENT '类型',
  `sortNum` int(5) DEFAULT NULL COMMENT '排序',
  `submited` int(5) DEFAULT NULL COMMENT '是否发布，0不发部，1发布',
  `createTime` bigint(15) DEFAULT NULL COMMENT '创建时间',
  `content` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bulletin_bulletin
-- ----------------------------

-- ----------------------------
-- Table structure for `consumer_consumer`
-- ----------------------------
DROP TABLE IF EXISTS `consumer_consumer`;
CREATE TABLE `consumer_consumer` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `contactPerson` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `type` int(5) DEFAULT NULL COMMENT '1为个人2为企业',
  `address` varchar(50) DEFAULT NULL COMMENT '联系地址',
  `description` varchar(500) DEFAULT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `origin` int(5) DEFAULT NULL,
  `parentId` varchar(50) DEFAULT NULL,
  `bankAccountName` varchar(50) DEFAULT NULL COMMENT '银行开户名称',
  `bankName` varchar(100) DEFAULT NULL COMMENT '开户银行',
  `bankAddress` varchar(100) DEFAULT NULL COMMENT '开户银行所在地',
  `bankCard` varchar(50) DEFAULT NULL COMMENT '银行卡号',
  `zipCode` varchar(20) DEFAULT NULL COMMENT '邮编',
  `userName` varchar(50) DEFAULT NULL COMMENT '登陆名',
  `userPwd` varchar(50) DEFAULT NULL COMMENT '密码',
  `area` int(5) DEFAULT NULL COMMENT '区域，1代表A区，2代表B区',
  `prizeCoin` double DEFAULT '0' COMMENT '奖金币',
  `referrerId` varchar(50) DEFAULT NULL COMMENT '推荐人',
  `twoPassword` varchar(50) DEFAULT NULL COMMENT '二级密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consumer_consumer
-- ----------------------------
INSERT INTO `consumer_consumer` VALUES ('047b13ae90b2430e8047d58d72b45a2c', '李琨', null, '18056766016', '1', null, null, '1538189288976', '0', '1', '1', '李琨', '中国农业银行', '安徽省亳州市谯城区', '6228414074504549276', null, 'likun', '123456', '1', '0', '1', '123456');
INSERT INTO `consumer_consumer` VALUES ('1', '单涛', null, '18056766008', '1', '安徽省亳州市谯城区', null, '1537966920177', '0', '1', null, '单涛', '建设银行', '亳州分行', '6222801791781016331', null, 'shantao', '123456', null, '0', null, '123456');
INSERT INTO `consumer_consumer` VALUES ('14a9424019e44722af41ff2060909267', '三七', null, '15551591960', '1', 'bozhou, bozhou', null, '1543729172889', '1', '1', null, null, null, null, null, null, 'sanqi', '123456', null, '0', null, null);
INSERT INTO `consumer_consumer` VALUES ('2', '杜红旗', null, null, '1', null, null, '1537966920177', '0', '1', null, null, null, null, null, null, 'duhongqi', '123456', null, '0', null, '123456');
INSERT INTO `consumer_consumer` VALUES ('3', '李培', null, '13856808089', '1', '御花园小区11-2号楼2单元', null, '1537966920177', '0', '1', null, '李培', '工商银行', '亳州市', '6222021318001270763', '236800', 'lipei', '123456', null, '0', null, '123456');
INSERT INTO `consumer_consumer` VALUES ('4', '牛进步', null, null, '1', null, null, '1537966920177', '0', '1', null, null, null, null, null, null, 'niujinbu', '123456', null, '0', null, '123456');
INSERT INTO `consumer_consumer` VALUES ('4ac930e7703a4cbebcf6fd596b0fa420', '12', null, '2', '1', '121', null, '1540907811088', '1', '1', 'e80d3ca6712a46409b927825b4605d2b', '12', '121', '2', '12', '21', '12', '123456', '2', '0', '7', '123456');
INSERT INTO `consumer_consumer` VALUES ('5', '王红涛', null, '15856733797', '1', null, null, '1537966920177', '0', '1', null, null, null, null, null, null, 'wanghongtao', '123456', null, '0', null, '123456');
INSERT INTO `consumer_consumer` VALUES ('6', '燕意婷', null, '18132882521', '1', '安徽亳州韩桥', null, '1537966920177', '0', '1', null, '燕意婷', '中国建设银行', '安徽亳州', '6217001790003245924', '236800', 'yanyiting', '123456', null, '0', null, '123456');
INSERT INTO `consumer_consumer` VALUES ('7', 'test', null, '119', '1', null, null, '1538189288976', '1', '1', null, null, null, null, null, null, null, '123456', null, '0', null, '123456');
INSERT INTO `consumer_consumer` VALUES ('e80d3ca6712a46409b927825b4605d2b', '1', null, '1', '1', '1', null, '1540907765114', '1', '1', '7', '1', '1', '1', '1', '1', '1', '123456', '1', '0', '7', '123456');

-- ----------------------------
-- Table structure for `consumer_salary`
-- ----------------------------
DROP TABLE IF EXISTS `consumer_salary`;
CREATE TABLE `consumer_salary` (
  `id` varchar(50) NOT NULL DEFAULT '',
  `layerAward` double DEFAULT '0' COMMENT '层奖',
  `a_advertisingAward` double DEFAULT '0' COMMENT 'a区广告奖',
  `b_advertisingAward` double DEFAULT '0' COMMENT 'b区广告奖',
  `managementFee` double DEFAULT '0' COMMENT '管理费',
  `withdrawalFee` double DEFAULT '0' COMMENT '提现手续费',
  `realWage` double DEFAULT '0' COMMENT '实发工资',
  `createDate` date DEFAULT NULL COMMENT '日期',
  `consumerId` varchar(50) DEFAULT NULL COMMENT '客户id',
  `ventureCapital` double DEFAULT '0' COMMENT '创业金',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consumer_salary
-- ----------------------------
INSERT INTO `consumer_salary` VALUES ('5a5a30b8010146f6a8e583498359ab0b', '0', '2000', '0', '200', '100', '1700', '2018-10-30', '7', '0');
INSERT INTO `consumer_salary` VALUES ('5d4952b921d24311ba8717ada09b3832', '0', '0', '500', '50', '25', '425', '2018-10-30', 'e80d3ca6712a46409b927825b4605d2b', '0');

-- ----------------------------
-- Table structure for `consumer_withdraw`
-- ----------------------------
DROP TABLE IF EXISTS `consumer_withdraw`;
CREATE TABLE `consumer_withdraw` (
  `id` varchar(50) NOT NULL,
  `userName` varchar(50) DEFAULT NULL COMMENT '登录名（会员编号）',
  `consumerName` varchar(50) DEFAULT NULL COMMENT '会员名称',
  `withdrawCount` double DEFAULT '0' COMMENT '提现数量',
  `bankAccountName` varchar(50) DEFAULT NULL COMMENT '银行卡姓名',
  `bankCard` varchar(50) DEFAULT NULL COMMENT '银行卡号',
  `bankName` varchar(50) DEFAULT NULL COMMENT '开户银行',
  `bankAddress` varchar(50) DEFAULT NULL COMMENT '银行所在地',
  `prizeCoin` double DEFAULT NULL COMMENT '奖金币',
  `consumerId` varchar(50) DEFAULT NULL,
  `withdrawDate` datetime DEFAULT NULL COMMENT '提先日期',
  `deduction` double DEFAULT '0' COMMENT '扣车库',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `status` int(4) DEFAULT '0' COMMENT '财务是否已经处理会员提现，1处理过了，0未处理',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consumer_withdraw
-- ----------------------------
INSERT INTO `consumer_withdraw` VALUES ('8ba014ef14dc44af95febdef575fd67a', 'shantao', '单涛', '800', '单涛', '6222801791781016331', '建设银行', '亳州分行', '850', '1', '2018-10-05 10:21:49', '0', null, '1');

-- ----------------------------
-- Table structure for `convenience_publish`
-- ----------------------------
DROP TABLE IF EXISTS `convenience_publish`;
CREATE TABLE `convenience_publish` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `address` varchar(200) DEFAULT NULL COMMENT '联系地址',
  `content` varchar(200) DEFAULT NULL COMMENT '内容',
  `categoryId` bigint(50) DEFAULT NULL COMMENT '分类id',
  `imageUrl` varchar(200) DEFAULT NULL COMMENT '图片地址',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `status` int(11) DEFAULT NULL COMMENT '状态,0审核不通过，1审核通过，2待审核',
  `userId` int(11) DEFAULT NULL COMMENT '用户id',
  `topStatus` int(11) DEFAULT '0' COMMENT '置顶，0未置顶，1置顶',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of convenience_publish
-- ----------------------------
INSERT INTO `convenience_publish` VALUES ('1', '王国', '13343567898', '76号', '40元一小时，各种家政。', '12000000000000000', 'product/original/dc29fe71601c403092055cc017494cf8.jpg', '2018-12-30 14:19:11', '1', null, null);
INSERT INTO `convenience_publish` VALUES ('2', '王国', '13343567898', '76号', '40元一小时，各种家政。', '11000000000000000', 'product/original/dc29fe71601c403092055cc017494cf8.jpg', '2018-12-30 16:33:16', '1', null, '0');
INSERT INTO `convenience_publish` VALUES ('3', '王国', '13343567898', '76号', '40元一小时，各种家政。', '10000000000000000', 'product/original/dc29fe71601c403092055cc017494cf8.jpg', '2018-12-30 16:33:29', '1', null, '0');
INSERT INTO `convenience_publish` VALUES ('4', '王国', '13343567898', '76号', '40元一小时，各种家政。', '9000000000000000', 'product/original/dc29fe71601c403092055cc017494cf8.jpg', '2018-12-30 16:33:32', '1', null, '0');
INSERT INTO `convenience_publish` VALUES ('5', '王国', '13343567898', '76号', '40元一小时，各种家政。', '8000000000000000', 'product/original/dc29fe71601c403092055cc017494cf8.jpg', '2018-12-30 16:33:35', '1', null, '0');
INSERT INTO `convenience_publish` VALUES ('6', '王国', '13343567898', '76号', '40元一小时，各种家政。', '7000000000000000', 'product/original/dc29fe71601c403092055cc017494cf8.jpg', '2018-12-30 16:33:38', '1', null, '0');
INSERT INTO `convenience_publish` VALUES ('7', '王国', '13343567898', '76号', '40元一小时，各种家政。', '6000000000000000', 'product/original/dc29fe71601c403092055cc017494cf8.jpg', '2018-12-30 16:33:41', '1', null, '0');
INSERT INTO `convenience_publish` VALUES ('8', '王国', '13343567898', '76号', '40元一小时，各种家政。', '5000000000000000', 'product/original/dc29fe71601c403092055cc017494cf8.jpg', '2018-12-30 16:33:43', '1', null, '0');
INSERT INTO `convenience_publish` VALUES ('9', '王国', '13343567898', '76号', '40元一小时，各种家政。', '5000000000000000', 'product/original/dc29fe71601c403092055cc017494cf8.jpg', '2018-12-30 16:33:49', '1', null, '0');
INSERT INTO `convenience_publish` VALUES ('10', '王国', '13343567898', '76号', '40元一小时，各种家政。', '5000000000000000', 'product/original/dc29fe71601c403092055cc017494cf8.jpg', '2018-12-30 16:33:51', '1', null, '0');
INSERT INTO `convenience_publish` VALUES ('11', '王国', '13343567898', '76号', '40元一小时，各种家政。', '5000000000000000', 'product/original/dc29fe71601c403092055cc017494cf8.jpg', '2018-12-30 16:33:52', '1', null, '0');
INSERT INTO `convenience_publish` VALUES ('12', '王国', '13343567898', '76号', '40元一小时，各种家政。', '5000000000000000', 'product/original/dc29fe71601c403092055cc017494cf8.jpg', '2018-12-30 16:33:52', '1', null, '0');
INSERT INTO `convenience_publish` VALUES ('13', '王国', '13343567898', '76号', '40元一小时，各种家政。', '5000000000000000', 'product/original/dc29fe71601c403092055cc017494cf8.jpg', '2018-12-30 16:33:54', '1', null, '0');
INSERT INTO `convenience_publish` VALUES ('14', '王国', '13343567898', '76号', '40元一小时，各种家政。', '5000000000000000', 'product/original/dc29fe71601c403092055cc017494cf8.jpg', '2018-12-30 16:33:54', '1', null, '0');

-- ----------------------------
-- Table structure for `delivery_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `delivery_coupon`;
CREATE TABLE `delivery_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wxUserId` bigint(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '状态，0未使用，1使用',
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of delivery_coupon
-- ----------------------------
INSERT INTO `delivery_coupon` VALUES ('1', '1', '0', '2018-11-29 11:26:44');
INSERT INTO `delivery_coupon` VALUES ('2', '2', '1', '2018-11-30 09:39:00');

-- ----------------------------
-- Table structure for `delivery_evaluate`
-- ----------------------------
DROP TABLE IF EXISTS `delivery_evaluate`;
CREATE TABLE `delivery_evaluate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderId` bigint(20) DEFAULT NULL COMMENT '订单id',
  `starNum` int(5) DEFAULT NULL COMMENT '星数',
  `content` varchar(500) DEFAULT NULL COMMENT '评价内容',
  `createTime` datetime DEFAULT NULL COMMENT '评价时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of delivery_evaluate
-- ----------------------------
INSERT INTO `delivery_evaluate` VALUES ('1', '13', '5', '很好', '2018-12-03 09:32:35');
INSERT INTO `delivery_evaluate` VALUES ('2', '16', '5', '不错', '2018-12-03 09:59:01');

-- ----------------------------
-- Table structure for `delivery_send`
-- ----------------------------
DROP TABLE IF EXISTS `delivery_send`;
CREATE TABLE `delivery_send` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `phone` varchar(50) NOT NULL COMMENT '电话',
  `address` varchar(500) NOT NULL COMMENT '地址',
  `remark` varchar(200) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  `status` int(10) NOT NULL DEFAULT '1' COMMENT '状态，0删除，1未送，2已送，5已收件，6已寄出,7未收件',
  `townId` bigint(50) DEFAULT NULL COMMENT '镇id',
  `teamId` bigint(50) DEFAULT NULL COMMENT '大队',
  `wxUserId` bigint(11) DEFAULT NULL COMMENT '微信用户id',
  `kdyId` varchar(50) DEFAULT NULL COMMENT '快递员id',
  `yfPrice` double DEFAULT NULL,
  `type` int(5) DEFAULT NULL COMMENT '1,寄快递；2代送快递',
  `expressName` varchar(500) DEFAULT NULL COMMENT '快递名称',
  `kdyName` varchar(100) DEFAULT NULL COMMENT '快递员姓名',
  `kdyPhone` varchar(50) DEFAULT NULL COMMENT '快递员电话',
  `mailingAddress` varchar(500) DEFAULT NULL COMMENT '邮寄地址',
  `payStatus` int(11) DEFAULT NULL COMMENT '0，未支付，1货到付款，2，微信支付，3券支付,',
  `expressNo` varchar(100) DEFAULT NULL COMMENT '快递单号',
  `evaluateStatus` int(11) DEFAULT '0' COMMENT '0未评价，1评价了',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of delivery_send
-- ----------------------------
INSERT INTO `delivery_send` VALUES ('13', '4433', '15551591960', '十八里镇十八里大队shiba', null, '2018-11-29 18:36:44', '2', '2000000000000000', '2001000000000000', '2', '7', '1', '2', '圆通快递--', 'test', '119', null, '1', null, '1');
INSERT INTO `delivery_send` VALUES ('14', '8888', '15551591960', '十九里镇十九里大队19', null, '2018-11-29 18:54:02', '0', '1000000000000000', '1001000000000000', '2', '4ac930e7703a4cbebcf6fd596b0fa420', '2', '2', '申通快递--', '12', '2', null, '0', null, '0');
INSERT INTO `delivery_send` VALUES ('15', 'wo', '15551591960', '华佗镇华佗镇大队12', null, '2018-11-29 19:28:52', '6', '3000000000000000', '4000000000000000', '2', 'e80d3ca6712a46409b927825b4605d2b', '18', '1', '圆通', '1', '1', 'nanjing', '0', '2003659985', '0');
INSERT INTO `delivery_send` VALUES ('16', '0000', '15551591960', '十八里镇十八里大队32', null, '2018-11-30 08:33:32', '6', '2000000000000000', '2001000000000000', '2', '7', '112.12', '1', '中通', 'test', '119', '江苏', '0', '3453465464545645', '1');
INSERT INTO `delivery_send` VALUES ('17', '郑冰', '15551591990', '十九里镇十九里大队3', null, '2018-12-02 14:31:35', '1', '1000000000000000', '1001000000000000', '2', '14a9424019e44722af41ff2060909267', '2', '2', '申通快递-', '三七', '15551591960', null, '0', null, '0');
INSERT INTO `delivery_send` VALUES ('18', '润田', '13325365869', '十九里镇十九里大队58', null, '2018-12-02 14:33:18', '1', '1000000000000000', '1001000000000000', '2', '14a9424019e44722af41ff2060909267', '2', '2', '汇通快递-', '三七', '15551591960', null, '3', null, '0');
INSERT INTO `delivery_send` VALUES ('19', '刘浩', '15551591960', '十九里镇十九里大队十九里镇十九里大队 586', null, '2018-12-02 14:35:17', '1', '1000000000000000', '1001000000000000', '2', '14a9424019e44722af41ff2060909267', '2', '2', '圆通快递-', '三七', '15551591960', null, '3', null, '0');
INSERT INTO `delivery_send` VALUES ('20', '安妮', '18856788899', '十九里镇十九里大队99', null, '2018-12-02 14:41:19', '1', '1000000000000000', '1001000000000000', '2', '14a9424019e44722af41ff2060909267', '2', '2', '天天快递-', '三七', '15551591960', null, '0', null, '0');
INSERT INTO `delivery_send` VALUES ('21', '是的', '15551591960', '十九里镇十九里大队天天', null, '2018-12-02 15:34:28', '1', '1000000000000000', '1001000000000000', '2', '14a9424019e44722af41ff2060909267', '2', '2', '中通快递-', '三七', '15551591960', null, '0', null, '0');

-- ----------------------------
-- Table structure for `goods_category`
-- ----------------------------
DROP TABLE IF EXISTS `goods_category`;
CREATE TABLE `goods_category` (
  `id` bigint(50) NOT NULL COMMENT '主键',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `parentId` bigint(50) DEFAULT NULL COMMENT '父类id',
  `status` int(10) NOT NULL COMMENT '状态，1正常，0删除',
  `createTime` bigint(20) NOT NULL COMMENT '创建时间',
  `shopId` varchar(50) DEFAULT NULL COMMENT '商家id',
  `kdyId` varchar(50) DEFAULT NULL COMMENT '快递员id',
  `yfPrice` double DEFAULT NULL COMMENT '运费',
  `iconUrl` varchar(200) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_category
-- ----------------------------
INSERT INTO `goods_category` VALUES ('5000000000000000', '租房', null, '1', '1546133560751', null, null, null, 'product/original/9a7887679cc3447c9409f416088c183b.png');
INSERT INTO `goods_category` VALUES ('6000000000000000', '全职招聘', null, '1', '1546134455364', null, null, null, 'product/original/8ba01641387248d7ad2bff69253b440e.png');
INSERT INTO `goods_category` VALUES ('7000000000000000', '兼职', null, '1', '1546134476308', null, '14a9424019e44722af41ff2060909267', null, 'product/original/42afe7952295425cb896b0ea4cef5e34.png');
INSERT INTO `goods_category` VALUES ('8000000000000000', '二手房', null, '1', '1546134495067', null, '14a9424019e44722af41ff2060909267', null, 'product/original/ad14656c12a44956a50f2796384c72a5.png');
INSERT INTO `goods_category` VALUES ('9000000000000000', '二手物品', null, '1', '1546134513968', null, '14a9424019e44722af41ff2060909267', null, 'product/original/f7a9d6e19ea44b2fbd6bd3d2513ec869.png');
INSERT INTO `goods_category` VALUES ('10000000000000000', '二手车', null, '1', '1546134539130', null, '14a9424019e44722af41ff2060909267', null, 'product/original/485c56e09a644b08aab3298c341004bd.png');
INSERT INTO `goods_category` VALUES ('11000000000000000', '宠物', null, '1', '1546134553786', null, '14a9424019e44722af41ff2060909267', null, 'product/original/001128684a104e7bbaaba22014b96d22.png');
INSERT INTO `goods_category` VALUES ('12000000000000000', '家政', null, '1', '1546134571521', null, '14a9424019e44722af41ff2060909267', null, 'product/original/301ef326927e4822b234615095d122a8.png');

-- ----------------------------
-- Table structure for `goods_goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods_goods`;
CREATE TABLE `goods_goods` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '商品名称',
  `shopId` varchar(50) DEFAULT NULL COMMENT '商品所属商家',
  `categoryId` varchar(50) DEFAULT NULL COMMENT '所属分类',
  `createUser` varchar(50) DEFAULT NULL COMMENT '创建人',
  `sellStatus` int(5) NOT NULL COMMENT '销售状态',
  `shopPrice` double(10,0) NOT NULL COMMENT '价格',
  `tag` varchar(100) DEFAULT NULL COMMENT '标签，让人第一眼对商品有个大概认识。',
  `createTime` bigint(15) NOT NULL COMMENT '创建时间',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述',
  `unit` varchar(20) NOT NULL COMMENT '单位',
  `imageUrl` varchar(500) NOT NULL COMMENT '图片链接',
  `quantity` int(10) DEFAULT NULL COMMENT '数量',
  `status` int(5) NOT NULL COMMENT '状态，是否删除',
  `deleteTime` bigint(20) DEFAULT NULL COMMENT '删除时间',
  `updateTime` bigint(20) DEFAULT NULL COMMENT '更新时间',
  `recordId` varchar(20) DEFAULT NULL,
  `discountedPrice` double(15,0) DEFAULT NULL COMMENT '折扣价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_goods
-- ----------------------------
INSERT INTO `goods_goods` VALUES ('4f386298f8f84f9c8751b72bfb4ae02d', '测试', null, null, null, '0', '123', '正货', '1498181539958', '00000000000000000<img src=\"/link/AdminLTE/common/plugins/kindeditor/plugins/emoticons/images/10.gif\" border=\"0\" alt=\"\" />', '袋', 'product/original/a2135d599f2d4a9bb910dfab66b09dd9.jpg,product/original/dc0f8893a908471d8eec010f540d5e52.jpg', null, '0', null, '1546134604827', null, '120');

-- ----------------------------
-- Table structure for `goods_goods_category_relation`
-- ----------------------------
DROP TABLE IF EXISTS `goods_goods_category_relation`;
CREATE TABLE `goods_goods_category_relation` (
  `id` varchar(50) NOT NULL,
  `categoryId` varchar(50) NOT NULL,
  `goodsId` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_goods_category_relation
-- ----------------------------

-- ----------------------------
-- Table structure for `system_advertising`
-- ----------------------------
DROP TABLE IF EXISTS `system_advertising`;
CREATE TABLE `system_advertising` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '广告名称',
  `linkedUrl` varchar(200) DEFAULT NULL COMMENT '链接地址',
  `showPosition` int(11) DEFAULT NULL COMMENT '展示位置',
  `sortNum` int(11) DEFAULT NULL COMMENT '排序值',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `imageUrl` varchar(1000) DEFAULT NULL COMMENT '图片地址',
  `status` int(11) DEFAULT NULL COMMENT '0不启用，1启用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_advertising
-- ----------------------------
INSERT INTO `system_advertising` VALUES ('1', '双十一', null, '1', '10', null, 'product/original/12509e7635304d7d8890b3b9ced983f5.jpg', '1', '2018-12-29 14:51:25');

-- ----------------------------
-- Table structure for `user_user`
-- ----------------------------
DROP TABLE IF EXISTS `user_user`;
CREATE TABLE `user_user` (
  `id` varchar(35) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '用户名',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `department` varchar(50) DEFAULT NULL COMMENT '部门',
  `sex` int(5) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  `createTime` bigint(15) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `salary` int(10) DEFAULT NULL COMMENT '工资',
  `post` varchar(50) DEFAULT NULL COMMENT '岗位',
  `type` int(5) DEFAULT NULL COMMENT '1代表管理员，2代表会员',
  `consumerId` varchar(50) DEFAULT NULL COMMENT '会员id',
  `twoPassword` varchar(50) DEFAULT NULL COMMENT '二级密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_user
-- ----------------------------
INSERT INTO `user_user` VALUES ('05ad741cb70a415389a152cfd9fa1ad5', 'zyhcw', '15551591965', 'E10ADC3949BA59ABBE56E057F20F883E', null, '2', '', '', '1537320613999', '1', null, null, '1', null, null);
INSERT INTO `user_user` VALUES ('1', 'shantao', null, '0DCBD0189E31DD4A7EE5777EE290486D', null, '1', null, null, '1535354169217', null, null, null, '2', '1', 'E10ADC3949BA59ABBE56E057F20F883E');
INSERT INTO `user_user` VALUES ('1389aab5319444b896212967d25101fb', 'admin', '110', 'E10ADC3949BA59ABBE56E057F20F883E', null, '1', '', '', '1535075811644', '1', '10000', '老总', '1', null, '');
INSERT INTO `user_user` VALUES ('2', 'duhongqi', null, 'E10ADC3949BA59ABBE56E057F20F883E', null, '1', null, null, null, null, null, null, '2', '2', 'E10ADC3949BA59ABBE56E057F20F883E');
INSERT INTO `user_user` VALUES ('3', 'lipei', null, '83750A18D79D2BACE3827CAC4BE9A345', null, '2', null, null, null, null, null, null, '2', '3', 'E10ADC3949BA59ABBE56E057F20F883E');
INSERT INTO `user_user` VALUES ('4', 'niujinbu', null, 'A7F8EB0F8B8453548AF019152D7A9E22', null, '1', null, null, null, null, null, null, '2', '4', 'E10ADC3949BA59ABBE56E057F20F883E');
INSERT INTO `user_user` VALUES ('5', 'wanghongtao', null, 'E10ADC3949BA59ABBE56E057F20F883E', null, '1', null, null, null, null, null, null, '2', '5', 'E10ADC3949BA59ABBE56E057F20F883E');
INSERT INTO `user_user` VALUES ('6', 'yanyiting', null, 'E10ADC3949BA59ABBE56E057F20F883E', null, '2', null, null, null, null, null, null, '2', '6', 'E10ADC3949BA59ABBE56E057F20F883E');
INSERT INTO `user_user` VALUES ('7', 'test', null, 'E10ADC3949BA59ABBE56E057F20F883E', null, '1', null, null, '1535075811644', null, null, null, '2', '7', 'E10ADC3949BA59ABBE56E057F20F883E');
INSERT INTO `user_user` VALUES ('7f32c9cf1ccf4aaf9d5f40129c37f16c', '0001124', '13345265263', 'E10ADC3949BA59ABBE56E057F20F883E', null, '1', '23@12.com', '亳州', '1499048728040', '1', null, null, '1', null, null);
INSERT INTO `user_user` VALUES ('975927a8591c432c8afadaee35c50617', '1', '1', 'E10ADC3949BA59ABBE56E057F20F883E', null, null, null, null, '1540907765119', null, null, null, '2', 'e80d3ca6712a46409b927825b4605d2b', 'E10ADC3949BA59ABBE56E057F20F883E');
INSERT INTO `user_user` VALUES ('ae2a73d82db440c5a36b9180b2eb4703', '12', '2', 'E10ADC3949BA59ABBE56E057F20F883E', null, null, null, null, '1540907811094', null, null, null, '2', '4ac930e7703a4cbebcf6fd596b0fa420', 'E10ADC3949BA59ABBE56E057F20F883E');
INSERT INTO `user_user` VALUES ('d8309f81482b4e45bf668f6cd468e4b5', 'sanqi', '15551591960', 'E10ADC3949BA59ABBE56E057F20F883E', null, null, null, null, '1543729172937', null, null, null, '2', '14a9424019e44722af41ff2060909267', null);
INSERT INTO `user_user` VALUES ('d9c834c76b094dd088a536b92be45695', 'likun', '18056766016', 'E10ADC3949BA59ABBE56E057F20F883E', null, null, null, null, '1538189288976', null, null, null, '2', '047b13ae90b2430e8047d58d72b45a2c', 'E10ADC3949BA59ABBE56E057F20F883E');

-- ----------------------------
-- Table structure for `user_wx_user`
-- ----------------------------
DROP TABLE IF EXISTS `user_wx_user`;
CREATE TABLE `user_wx_user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(50) NOT NULL COMMENT '微信名称',
  `nickName` varchar(100) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `headimgUrl` varchar(500) DEFAULT NULL,
  `privilege` varchar(500) DEFAULT NULL,
  `unionId` varchar(50) DEFAULT NULL,
  `townId` bigint(50) DEFAULT NULL COMMENT '用来存放用户最新一次订单 ，镇',
  `teamId` bigint(50) DEFAULT NULL COMMENT '用来存放用户最新一次订单 ，镇',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_wx_user
-- ----------------------------
INSERT INTO `user_wx_user` VALUES ('1', 'oXR4KtzD3x0x4TWRA3O-uMXJlpdg', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `user_wx_user` VALUES ('2', 'oXR4Kt5q_SNvQOh7-tA2uumOaU7k', '%25E9%2583%2591%25E5%2586%25B0%25E5%2586%25B0', '1', '安徽', '亳州', '中国', 'http://thirdwx.qlogo.cn/mmopen/vi_32/2UcVJofkib9NEjMhbhJ3Hpoc2MMqBiaLxqGk51ibdshe0mwicFt6OjVl3e7qvCQdE9kbLDxCPf8xTs4kFgxqtbUYew/132', '[]', null, null, null);
