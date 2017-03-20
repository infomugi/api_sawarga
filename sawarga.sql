/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 100116
Source Host           : localhost:3306
Source Database       : sawarga

Target Server Type    : MYSQL
Target Server Version : 100116
File Encoding         : 65001

Date: 2017-03-20 16:15:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('25', '2017-03-12 17:32:36', '2', 'Menyukai Posting Della : Bisnis Terus', '2', '1');
INSERT INTO `activity` VALUES ('26', '2017-03-12 17:19:21', '3', 'Mengomentari Posting Sunarto : Lagi Tidur', '3', '1');
INSERT INTO `activity` VALUES ('28', '2017-03-12 17:32:08', '1', 'Menyukai Posting Katrina Kaif : Liburan Ke Jogja', '3', '1');
INSERT INTO `activity` VALUES ('29', '2017-03-12 17:32:11', '2', 'Menyukai Posting Della : Liburan Ke Jogja', '3', '1');
INSERT INTO `activity` VALUES ('30', '2017-03-12 17:32:13', '3', 'Menyukai Posting Sunarto : Liburan Ke Jogja', '3', '1');
INSERT INTO `activity` VALUES ('31', '2017-03-12 17:32:15', '4', 'Menyukai Posting muhamad abdul rojak : Liburan Ke Jogja', '3', '1');
INSERT INTO `activity` VALUES ('32', '2017-03-12 17:32:16', '5', 'Menyukai Posting Firman Maulana : Liburan Ke Jogja', '3', '1');
INSERT INTO `activity` VALUES ('33', '2017-03-12 17:32:18', '6', 'Menyukai Posting gates : Liburan Ke Jogja', '3', '1');
INSERT INTO `activity` VALUES ('34', '2017-03-12 17:33:16', '6', 'Menyukai Posting gates : Liburan Ke Jogja', '3', '1');

-- ----------------------------
-- Table structure for big_family
-- ----------------------------
DROP TABLE IF EXISTS `big_family`;
CREATE TABLE `big_family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of big_family
-- ----------------------------

-- ----------------------------
-- Table structure for chat_rooms
-- ----------------------------
DROP TABLE IF EXISTS `chat_rooms`;
CREATE TABLE `chat_rooms` (
  `chat_room_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`chat_room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of chat_rooms
-- ----------------------------
INSERT INTO `chat_rooms` VALUES ('1', 'Keluarga Kecil', '1', '2017-03-13 11:03:35');
INSERT INTO `chat_rooms` VALUES ('2', '', '1', '2017-03-13 11:04:11');
INSERT INTO `chat_rooms` VALUES ('3', '', '1', '2017-03-13 11:05:48');
INSERT INTO `chat_rooms` VALUES ('4', '', '1', '2017-03-13 11:06:43');
INSERT INTO `chat_rooms` VALUES ('5', '', '1', '2017-03-13 11:10:33');
INSERT INTO `chat_rooms` VALUES ('6', '', '1', '2017-03-13 11:11:56');
INSERT INTO `chat_rooms` VALUES ('7', '', '1', '2017-03-13 11:15:40');
INSERT INTO `chat_rooms` VALUES ('8', '', '1', '2017-03-13 11:18:48');
INSERT INTO `chat_rooms` VALUES ('9', '', '1', '2017-03-14 09:26:01');
INSERT INTO `chat_rooms` VALUES ('10', '', '1', '2017-03-14 09:26:31');
INSERT INTO `chat_rooms` VALUES ('11', '', '1', '2017-03-14 09:26:42');
INSERT INTO `chat_rooms` VALUES ('12', '', '1', '2017-03-15 17:51:01');
INSERT INTO `chat_rooms` VALUES ('13', '', '1', '2017-03-18 06:25:56');
INSERT INTO `chat_rooms` VALUES ('14', '', '1', '2017-03-19 09:40:19');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` datetime NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '2017-03-13 07:16:39', '22', '5', '1', 'yes');
INSERT INTO `comment` VALUES ('2', '2017-03-13 07:30:59', '22', '5', '1', 'bro');
INSERT INTO `comment` VALUES ('3', '2017-03-13 07:31:41', '0', '0', '1', '0');
INSERT INTO `comment` VALUES ('4', '2017-03-13 07:32:25', '4', '2', '1', 'Keren beb');
INSERT INTO `comment` VALUES ('5', '2017-03-13 07:32:31', '4', '2', '1', 'Keren beb');
INSERT INTO `comment` VALUES ('6', '2017-03-13 07:33:38', '4', '2', '1', 'Keren beb');
INSERT INTO `comment` VALUES ('7', '2017-03-13 07:36:13', '4', '2', '1', 'Keren beb');
INSERT INTO `comment` VALUES ('8', '2017-03-13 07:36:47', '4', '2', '1', 'Keren beb');
INSERT INTO `comment` VALUES ('9', '2017-03-13 07:37:03', '4', '2', '1', 'Keren beb');
INSERT INTO `comment` VALUES ('10', '2017-03-13 07:38:35', '22', '5', '1', 'cus');
INSERT INTO `comment` VALUES ('11', '2017-03-13 07:39:30', '22', '5', '1', 'kkkk');

-- ----------------------------
-- Table structure for event
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `title` text NOT NULL,
  `descripiton` text NOT NULL,
  `like_count` int(11) NOT NULL,
  `comment_count` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of event
-- ----------------------------

-- ----------------------------
-- Table structure for event_comment
-- ----------------------------
DROP TABLE IF EXISTS `event_comment`;
CREATE TABLE `event_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` datetime NOT NULL,
  `event_id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `comment` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of event_comment
-- ----------------------------

-- ----------------------------
-- Table structure for event_like
-- ----------------------------
DROP TABLE IF EXISTS `event_like`;
CREATE TABLE `event_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` datetime NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of event_like
-- ----------------------------

-- ----------------------------
-- Table structure for member_rooms
-- ----------------------------
DROP TABLE IF EXISTS `member_rooms`;
CREATE TABLE `member_rooms` (
  `member_rooms_id` int(11) NOT NULL,
  `chat_room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`member_rooms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of member_rooms
-- ----------------------------
INSERT INTO `member_rooms` VALUES ('1', '1', '11', '2017-03-13 11:03:35', '1');
INSERT INTO `member_rooms` VALUES ('2', '1', '12', '2017-03-13 11:03:35', '1');
INSERT INTO `member_rooms` VALUES ('3', '2', '13', '2017-03-13 11:04:11', '1');
INSERT INTO `member_rooms` VALUES ('4', '2', '8', '2017-03-13 11:04:11', '1');
INSERT INTO `member_rooms` VALUES ('5', '3', '12', '2017-03-13 11:05:48', '1');
INSERT INTO `member_rooms` VALUES ('6', '3', '13', '2017-03-13 11:05:48', '1');
INSERT INTO `member_rooms` VALUES ('7', '4', '5', '2017-03-13 11:06:43', '1');
INSERT INTO `member_rooms` VALUES ('8', '4', '11', '2017-03-13 11:06:43', '1');
INSERT INTO `member_rooms` VALUES ('9', '5', '8', '2017-03-13 11:10:33', '1');
INSERT INTO `member_rooms` VALUES ('10', '5', '12', '2017-03-13 11:10:33', '1');
INSERT INTO `member_rooms` VALUES ('11', '6', '11', '2017-03-13 11:11:56', '1');
INSERT INTO `member_rooms` VALUES ('12', '6', '7', '2017-03-13 11:11:56', '1');
INSERT INTO `member_rooms` VALUES ('13', '7', '11', '2017-03-13 11:15:40', '1');
INSERT INTO `member_rooms` VALUES ('14', '7', '2', '2017-03-13 11:15:40', '1');
INSERT INTO `member_rooms` VALUES ('15', '8', '8', '2017-03-13 11:18:48', '1');
INSERT INTO `member_rooms` VALUES ('16', '8', '11', '2017-03-13 11:18:48', '1');
INSERT INTO `member_rooms` VALUES ('17', '9', '13', '2017-03-14 09:26:01', '1');
INSERT INTO `member_rooms` VALUES ('18', '9', '4', '2017-03-14 09:26:01', '1');
INSERT INTO `member_rooms` VALUES ('19', '10', '13', '2017-03-14 09:26:31', '1');
INSERT INTO `member_rooms` VALUES ('20', '10', '5', '2017-03-14 09:26:31', '1');
INSERT INTO `member_rooms` VALUES ('21', '11', '13', '2017-03-14 09:26:42', '1');
INSERT INTO `member_rooms` VALUES ('22', '11', '11', '2017-03-14 09:26:42', '1');
INSERT INTO `member_rooms` VALUES ('23', '12', '11', '2017-03-15 17:51:01', '1');
INSERT INTO `member_rooms` VALUES ('24', '12', '9', '2017-03-15 17:51:01', '1');
INSERT INTO `member_rooms` VALUES ('25', '13', '5', '2017-03-18 06:25:56', '1');
INSERT INTO `member_rooms` VALUES ('26', '13', '9', '2017-03-18 06:25:56', '1');
INSERT INTO `member_rooms` VALUES ('27', '14', '11', '2017-03-19 09:40:19', '1');
INSERT INTO `member_rooms` VALUES ('28', '14', '4', '2017-03-19 09:40:19', '1');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `chat_room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `file` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `chat_room_id` (`chat_room_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES ('1', '1', '11', 0x746573, '', '1', '2017-03-13 11:03:38', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('2', '2', '13', 0x63656B2062726F20756461682064696D616E61206E69683F3F, '', '1', '2017-03-13 11:04:31', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('3', '3', '13', 0x617373616C616D75616C61696B756D2062726F2E2E, '', '1', '2017-03-13 11:06:33', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('4', '3', '12', 0x7761616C61696B756D2073616C616D20416B6869, '', '1', '2017-03-13 11:06:52', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('5', '3', '13', 0x67696D616E61206B616261722062726F3F3F, '', '1', '2017-03-13 11:07:01', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('6', '3', '12', 0x416C68616D64756C696C6C6168206261696B20616B682C20416B68692067696D616E613F, '', '1', '2017-03-13 11:07:25', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('7', '3', '13', 0x616C68616D64756C696C61682E2E20, '', '1', '2017-03-13 11:07:35', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('8', '1', '11', 0x63686174206E61206577657568616E206E7961, '', '1', '2017-03-13 11:08:21', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('9', '5', '8', 0x616E6A696E67, '', '1', '2017-03-13 11:10:40', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('10', '4', '5', 0x746573, '', '1', '2017-03-13 11:10:44', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('11', '4', '5', 0x746573, '', '1', '2017-03-13 11:10:48', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('12', '4', '5', 0x6B656E617061207961, '', '1', '2017-03-13 11:10:54', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('13', '4', '11', 0x6B656E617061206170616E79612062726F, '', '1', '2017-03-13 11:11:16', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('14', '4', '12', 0x6E616861206E79613F3F207061732064692062756B61206A616469206265646120666F746F6E61205C753146363032, '', '1', '2017-03-13 11:11:17', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('15', '4', '12', 0x656D6F746E61206761207375706F7274205C753146363032, '', '1', '2017-03-13 11:11:36', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('16', '1', '11', 0x6E61686120757267206E796F6261206B6120616B756E206E75206C61696E206D61682062697361206E7961, '', '1', '2017-03-13 11:11:40', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('17', '4', '11', 0x6E79612065746120706F686F20636E206469756C696B2064657569, '', '1', '2017-03-13 11:12:17', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('18', '4', '11', 0x5C75443833445C7544453032, '', '1', '2017-03-13 11:12:22', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('19', '4', '12', 0x6469206C756B69206D6168206368617420617961206E6F7469662064692073617961206D61682067612061646120657579, '', '1', '2017-03-13 11:13:02', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('20', '4', '11', 0x6B75647520626172656E672065756E67206D6568206B65746175616E206572726F72206E61206D61682068616861, '', '1', '2017-03-13 11:15:21', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('21', '4', '11', 0x69636F6E2063616D65726120706F686F20636E2064696861707573, '', '1', '2017-03-13 11:15:28', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('22', '7', '11', 0x64656C3F, '', '1', '2017-03-13 11:15:44', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('23', '4', '8', 0x776B776B6B77205C75443833445C7544453141, '', '1', '2017-03-13 11:17:04', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('24', '4', '12', 0x5C753146393131, '', '1', '2017-03-13 11:18:12', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('25', '4', '8', 0x6B75647520646920726F6F7420657461206D61682E2E, '', '1', '2017-03-13 11:18:28', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('26', '4', '12', 0x7061732070696C69682067616D626172206461722067616C6572206D67652068616E67, '', '1', '2017-03-13 11:19:15', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('27', '4', '12', 0x74657374, '', '1', '2017-03-13 11:19:48', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('28', '4', '11', 0x6C616C756C696E74617320646174616E61206D617369682062656C756D2062656E657220696575206D61682068616861, '', '1', '2017-03-13 11:26:08', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('29', '8', '11', 0x636F6261206C6961742063686174726F6F6D206B69, '', '1', '2017-03-13 11:31:15', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('30', '1', '11', 0x6A616B2C20, '', '1', '2017-03-13 11:32:14', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('31', '8', '8', 0x756461682061646120736B7267206D61682E2E, '', '1', '2017-03-13 11:33:48', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('32', '8', '11', 0x636F62612063686174206C616769, '', '1', '2017-03-13 11:34:07', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('33', '1', '12', 0x6B756C616E, '', '1', '2017-03-13 11:37:05', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('34', '1', '12', 0x62696B696E20706F737420616D62696C2074692067616C657269206E676120626C616E6B206E7961, '', '1', '2017-03-13 11:37:44', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('35', '1', '11', 0x6E676120626C616E6B206B756D6168613F, '', '1', '2017-03-13 11:38:22', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('36', '1', '12', 0x6E6F7469662074656820617961206E67616E2063616E20626973206469206B6C696B206E79613F, '', '1', '2017-03-13 11:53:56', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('37', '1', '11', 0x6163616E206A616B, '', '1', '2017-03-13 12:33:58', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('38', '1', '11', 0x746575206B61627572756A756C, '', '1', '2017-03-13 12:34:09', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('39', '5', '8', 0x736F72692073616C6168206B6972696D, '', '1', '2017-03-13 13:21:30', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('40', '9', '13', 0x6869, '', '1', '2017-03-14 09:26:08', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('41', '3', '13', 0x62617979, '', '1', '2017-03-14 09:29:38', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('42', '12', '11', 0x6E696C, '', '1', '2017-03-15 17:51:07', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('43', '4', '5', 0x746573, '', '1', '2017-03-17 05:23:14', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('44', '0', '0', 0x30, '', '1', '2017-03-18 06:56:48', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('45', '2', '2', 0x457461204C6F67697374696B20546561, '', '1', '2017-03-18 06:57:01', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('46', '2', '2', 0x457461204C6F67697374696B20546561, '', '1', '2017-03-18 06:59:46', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('47', '2', '2', 0x457461204C6F67697374696B20546561, '', '1', '2017-03-18 07:00:27', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('48', '14', '11', 0x747773, '', '1', '2017-03-19 09:40:24', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('49', '8', '11', 0x7579, '', '1', '2017-03-19 13:56:25', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('50', '8', '8', 0x746573, '', '1', '2017-03-19 13:56:45', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('51', '11', '13', 0x74657373, '', '1', '2017-03-19 13:57:52', '0000-00-00 00:00:00');
INSERT INTO `messages` VALUES ('52', '10', '13', 0x6665737373, '', '1', '2017-03-19 13:58:07', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for notification_list
-- ----------------------------
DROP TABLE IF EXISTS `notification_list`;
CREATE TABLE `notification_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` datetime NOT NULL,
  `subject_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of notification_list
-- ----------------------------
INSERT INTO `notification_list` VALUES ('17', '2017-03-13 06:57:30', '5', '1', '22', '1');
INSERT INTO `notification_list` VALUES ('8', '2017-03-13 06:54:01', '5', '1', '21', '1');
INSERT INTO `notification_list` VALUES ('18', '2017-03-13 07:02:36', '5', '2', '22', '1');
INSERT INTO `notification_list` VALUES ('16', '2017-03-13 06:57:13', '2', '1', '4', '1');
INSERT INTO `notification_list` VALUES ('19', '2017-03-13 07:04:45', '5', '2', '22', '1');
INSERT INTO `notification_list` VALUES ('20', '2017-03-13 07:06:41', '5', '2', '22', '1');
INSERT INTO `notification_list` VALUES ('21', '2017-03-13 07:10:34', '5', '2', '22', '1');
INSERT INTO `notification_list` VALUES ('22', '2017-03-13 07:12:42', '0', '2', '0', '1');
INSERT INTO `notification_list` VALUES ('23', '2017-03-13 07:13:10', '5', '2', '22', '1');
INSERT INTO `notification_list` VALUES ('24', '2017-03-13 07:14:10', '5', '2', '22', '1');
INSERT INTO `notification_list` VALUES ('25', '2017-03-13 07:16:39', '5', '2', '22', '1');
INSERT INTO `notification_list` VALUES ('26', '2017-03-13 07:30:59', '5', '2', '22', '1');
INSERT INTO `notification_list` VALUES ('27', '2017-03-13 07:31:41', '0', '2', '0', '1');
INSERT INTO `notification_list` VALUES ('28', '2017-03-13 07:38:35', '5', '2', '22', '1');
INSERT INTO `notification_list` VALUES ('29', '2017-03-13 07:39:30', '5', '2', '22', '1');
INSERT INTO `notification_list` VALUES ('30', '2017-03-13 07:42:51', '5', '2', '22', '1');
INSERT INTO `notification_list` VALUES ('31', '2017-03-13 07:45:34', '5', '2', '22', '1');
INSERT INTO `notification_list` VALUES ('32', '2017-03-13 09:36:12', '5', '2', '12', '1');
INSERT INTO `notification_list` VALUES ('37', '2017-03-13 10:57:51', '11', '1', '23', '1');
INSERT INTO `notification_list` VALUES ('46', '2017-03-13 11:02:53', '12', '1', '24', '1');
INSERT INTO `notification_list` VALUES ('47', '2017-03-13 11:03:00', '12', '1', '23', '1');
INSERT INTO `notification_list` VALUES ('48', '2017-03-13 11:03:03', '12', '1', '22', '1');
INSERT INTO `notification_list` VALUES ('49', '2017-03-13 11:03:07', '12', '1', '21', '1');
INSERT INTO `notification_list` VALUES ('50', '2017-03-13 11:03:11', '13', '1', '24', '1');
INSERT INTO `notification_list` VALUES ('51', '2017-03-13 11:03:15', '13', '1', '23', '1');
INSERT INTO `notification_list` VALUES ('53', '2017-03-13 11:14:38', '12', '2', '24', '1');
INSERT INTO `notification_list` VALUES ('54', '2017-03-13 11:14:54', '12', '2', '24', '1');
INSERT INTO `notification_list` VALUES ('55', '2017-03-13 11:15:15', '12', '2', '22', '1');
INSERT INTO `notification_list` VALUES ('67', '2017-03-13 11:48:00', '8', '2', '26', '1');
INSERT INTO `notification_list` VALUES ('75', '2017-03-13 12:05:55', '12', '1', '25', '1');
INSERT INTO `notification_list` VALUES ('58', '2017-03-13 11:19:06', '11', '2', '22', '1');
INSERT INTO `notification_list` VALUES ('59', '2017-03-13 11:19:10', '8', '1', '26', '1');
INSERT INTO `notification_list` VALUES ('60', '2017-03-13 11:19:21', '11', '2', '24', '1');
INSERT INTO `notification_list` VALUES ('66', '2017-03-13 11:41:22', '11', '2', '26', '1');
INSERT INTO `notification_list` VALUES ('62', '2017-03-13 11:34:18', '8', '2', '26', '1');
INSERT INTO `notification_list` VALUES ('65', '2017-03-13 11:40:15', '11', '1', '26', '1');
INSERT INTO `notification_list` VALUES ('64', '2017-03-13 11:38:38', '8', '2', '26', '1');
INSERT INTO `notification_list` VALUES ('68', '2017-03-13 11:48:54', '12', '2', '24', '1');
INSERT INTO `notification_list` VALUES ('69', '2017-03-13 11:49:08', '8', '1', '28', '1');
INSERT INTO `notification_list` VALUES ('72', '2017-03-13 12:02:28', '12', '1', '29', '1');
INSERT INTO `notification_list` VALUES ('105', '2017-03-14 17:57:06', '12', '1', '27', '1');
INSERT INTO `notification_list` VALUES ('76', '2017-03-13 12:06:03', '12', '2', '25', '1');
INSERT INTO `notification_list` VALUES ('77', '2017-03-13 12:09:01', '8', '1', '29', '1');
INSERT INTO `notification_list` VALUES ('78', '2017-03-13 12:09:31', '8', '2', '29', '1');
INSERT INTO `notification_list` VALUES ('79', '2017-03-13 12:32:19', '11', '2', '30', '1');
INSERT INTO `notification_list` VALUES ('87', '2017-03-13 13:08:07', '12', '1', '30', '1');
INSERT INTO `notification_list` VALUES ('81', '2017-03-13 13:03:27', '8', '1', '30', '1');
INSERT INTO `notification_list` VALUES ('82', '2017-03-13 13:04:20', '8', '2', '30', '1');
INSERT INTO `notification_list` VALUES ('83', '2017-03-13 13:05:43', '8', '1', '25', '1');
INSERT INTO `notification_list` VALUES ('89', '2017-03-13 13:16:11', '12', '1', '28', '1');
INSERT INTO `notification_list` VALUES ('90', '2017-03-13 13:16:19', '12', '2', '28', '1');
INSERT INTO `notification_list` VALUES ('91', '2017-03-13 13:16:31', '12', '2', '28', '1');
INSERT INTO `notification_list` VALUES ('92', '2017-03-13 16:59:05', '11', '1', '30', '1');
INSERT INTO `notification_list` VALUES ('94', '2017-03-13 16:59:29', '11', '1', '28', '1');
INSERT INTO `notification_list` VALUES ('95', '2017-03-13 16:59:38', '11', '1', '27', '1');
INSERT INTO `notification_list` VALUES ('98', '2017-03-13 17:00:32', '11', '1', '19', '1');
INSERT INTO `notification_list` VALUES ('99', '2017-03-13 17:00:51', '11', '2', '19', '1');
INSERT INTO `notification_list` VALUES ('100', '2017-03-13 17:04:16', '5', '2', '30', '1');
INSERT INTO `notification_list` VALUES ('102', '2017-03-14 09:24:41', '13', '1', '30', '1');
INSERT INTO `notification_list` VALUES ('103', '2017-03-14 09:24:52', '13', '2', '30', '1');
INSERT INTO `notification_list` VALUES ('104', '2017-03-14 09:25:37', '13', '1', '12', '1');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `like_count` int(11) NOT NULL,
  `comment_count` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('1', '2017-03-01 00:00:00', '1', '1.jpg,2.jpg,3.jpg,4.jpg', 'Liburan Ke Jogja', '17', '5', '1');
INSERT INTO `post` VALUES ('2', '2017-02-24 09:23:21', '2', '2.jpg', 'Sedang Makan', '7', '0', '1');
INSERT INTO `post` VALUES ('3', '2017-03-08 18:03:44', '5', '31488971025pk0.jpg,31488971027hm1.jpg', 'Lagi Tidur', '7', '5', '0');
INSERT INTO `post` VALUES ('4', '2017-03-08 20:42:54', '5', '41488980576pk0.jpg,41488980577hm1.jpg', 'Bikin Tugas', '6', '0', '0');
INSERT INTO `post` VALUES ('5', '2017-03-11 10:10:44', '5', '51489201845pk0.jpg,51489201846hm1.jpg', 'Bisnis Terus', '6', '0', '0');
INSERT INTO `post` VALUES ('6', '2017-03-11 10:11:19', '5', '61489201880pk0.jpg,61489201880hm1.jpg', 'Asik Deh', '7', '0', '0');
INSERT INTO `post` VALUES ('7', '2017-03-12 19:08:33', '5', '', 'coba coba \\uD83D\\uDE00', '0', '0', '0');
INSERT INTO `post` VALUES ('8', '2017-03-12 19:09:15', '5', '', 'tes  \\uD83D\\uDE01', '0', '0', '0');
INSERT INTO `post` VALUES ('9', '2017-03-12 19:14:46', '5', '', 'coba lagi \\uD83D\\uDE1C', '0', '0', '0');
INSERT INTO `post` VALUES ('10', '2017-03-12 19:19:32', '5', '101489321173pk0.jpg', 'okelah \\uD83D\\uDE02', '0', '0', '0');
INSERT INTO `post` VALUES ('11', '2017-03-12 19:21:16', '5', '111489321277pk0.jpg', 'curiga ', '0', '0', '0');
INSERT INTO `post` VALUES ('12', '2017-03-12 19:29:16', '5', '121489321757pk0.jpg', '\\uD83D\\uDE00', '1', '1', '0');
INSERT INTO `post` VALUES ('13', '2017-03-12 19:37:24', '5', '131489322246pk0.jpg', 'lumayan', '0', '0', '0');
INSERT INTO `post` VALUES ('14', '2017-03-13 03:38:54', '5', '141489351135pk0.jpg', 'pameran 2017 \\uD83D\\uDCAA', '0', '0', '0');
INSERT INTO `post` VALUES ('15', '2017-03-13 03:46:17', '5', '', 'tes ', '0', '0', '0');
INSERT INTO `post` VALUES ('16', '2017-03-13 03:56:11', '5', '161489352173pk0.jpg', 'p17', '0', '0', '0');
INSERT INTO `post` VALUES ('17', '2017-03-13 03:59:55', '5', '', '\\uD83D\\uDE02', '0', '0', '0');
INSERT INTO `post` VALUES ('18', '2017-03-13 04:07:13', '5', '', 'krik', '0', '0', '0');
INSERT INTO `post` VALUES ('19', '2017-03-13 04:07:48', '5', '191489352869pk0.jpg', 'pameran bray', '1', '1', '0');
INSERT INTO `post` VALUES ('20', '2017-03-13 04:14:43', '5', '201489353284pk0.jpg', 'post ah', '0', '0', '0');
INSERT INTO `post` VALUES ('21', '2017-03-13 04:23:33', '5', '211489353814pk0.jpg', '1', '2', '0', '0');
INSERT INTO `post` VALUES ('22', '2017-03-13 04:24:27', '5', '221489353869pk0.jpg,221489353870hm1.jpg', '2', '2', '7', '0');
INSERT INTO `post` VALUES ('23', '2017-03-13 09:06:21', '5', '231489370783pk0.jpg,231489370784hm1.jpg', 'Pameran 2017 \\uD83D\\uDC4D', '3', '0', '0');
INSERT INTO `post` VALUES ('24', '2017-03-13 10:52:32', '11', '241489377159pk0.jpg,241489377161hm1.jpg', 'Kajian dulu bro \\u261D', '2', '4', '0');
INSERT INTO `post` VALUES ('25', '2017-03-13 11:03:58', '13', '', 'ayo mulai eventnya... ', '2', '1', '0');
INSERT INTO `post` VALUES ('26', '2017-03-13 11:08:49', '12', '261489378130pk0.jpg', 'minum dulu biar fokus', '2', '6', '0');
INSERT INTO `post` VALUES ('27', '2017-03-13 11:46:53', '8', '271489380414pk0.jpg', 'bissmillah...', '2', '1', '0');
INSERT INTO `post` VALUES ('28', '2017-03-13 11:48:13', '12', '281489380494pk0.jpg', '\\u1F600', '3', '2', '0');
INSERT INTO `post` VALUES ('29', '2017-03-13 11:56:06', '12', '291489380967pk0.jpg,291489380967hm1.jpg,291489380968hm2.jpg', 'ini barang2 yang mau saya juat tea,', '2', '1', '0');
INSERT INTO `post` VALUES ('30', '2017-03-13 12:20:48', '12', '301489382450pk0.jpg', 'makan wa', '4', '4', '0');
INSERT INTO `post` VALUES ('31', '2017-03-16 17:18:19', '13', '', 'alhamdulilahhh 10 besar team... ', '0', '0', '0');
INSERT INTO `post` VALUES ('32', '2017-03-17 17:05:29', '5', '321489745130pk0.jpg,321489745132hm1.jpg,321489745133hm2.jpg', 'tes', '0', '0', '0');

-- ----------------------------
-- Table structure for post_comment
-- ----------------------------
DROP TABLE IF EXISTS `post_comment`;
CREATE TABLE `post_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` datetime NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of post_comment
-- ----------------------------
INSERT INTO `post_comment` VALUES ('27', '2017-03-13 07:07:08', '4', '2', 'Keren beb', '1');
INSERT INTO `post_comment` VALUES ('28', '2017-03-13 07:09:46', '4', '2', 'Keren beb', '1');
INSERT INTO `post_comment` VALUES ('29', '2017-03-13 07:09:55', '15', '5', 'tes', '1');
INSERT INTO `post_comment` VALUES ('30', '2017-03-13 07:10:34', '22', '5', 'hh', '1');
INSERT INTO `post_comment` VALUES ('31', '2017-03-13 07:12:42', '0', '0', '0', '1');
INSERT INTO `post_comment` VALUES ('32', '2017-03-13 07:13:10', '22', '5', 'tes lg', '1');
INSERT INTO `post_comment` VALUES ('33', '2017-03-13 07:14:10', '22', '5', 'ggg', '1');
INSERT INTO `post_comment` VALUES ('34', '2017-03-13 07:42:51', '22', '5', 'bgus', '1');
INSERT INTO `post_comment` VALUES ('35', '2017-03-13 07:45:34', '22', '5', 'ok', '1');
INSERT INTO `post_comment` VALUES ('36', '2017-03-13 09:36:12', '12', '5', '\\uD83D\\uDC4C', '1');
INSERT INTO `post_comment` VALUES ('37', '2017-03-13 11:14:38', '24', '12', 'masya Allah akhi, barokallau fiikum ', '1');
INSERT INTO `post_comment` VALUES ('38', '2017-03-13 11:14:54', '24', '12', 'barakallahu fikum', '1');
INSERT INTO `post_comment` VALUES ('39', '2017-03-13 11:15:15', '22', '12', 'test cik', '1');
INSERT INTO `post_comment` VALUES ('40', '2017-03-13 11:19:06', '22', '11', 'comment', '1');
INSERT INTO `post_comment` VALUES ('41', '2017-03-13 11:19:21', '24', '11', 'saha nu komen', '1');
INSERT INTO `post_comment` VALUES ('42', '2017-03-13 11:23:35', '26', '11', 'botol naon ieu', '1');
INSERT INTO `post_comment` VALUES ('43', '2017-03-13 11:34:18', '26', '8', 'botol teh kota', '1');
INSERT INTO `post_comment` VALUES ('44', '2017-03-13 11:37:04', '26', '11', 'aya notif na teu ki?', '1');
INSERT INTO `post_comment` VALUES ('45', '2017-03-13 11:38:38', '26', '8', 'henteu... ', '1');
INSERT INTO `post_comment` VALUES ('46', '2017-03-13 11:41:22', '26', '11', 'naha nya, cb di liat lagi ki', '1');
INSERT INTO `post_comment` VALUES ('47', '2017-03-13 11:48:00', '26', '8', 'henteu angger a... ', '1');
INSERT INTO `post_comment` VALUES ('48', '2017-03-13 11:48:54', '24', '12', 'ini ana kah', '1');
INSERT INTO `post_comment` VALUES ('49', '2017-03-13 12:05:47', '27', '12', 'test', '1');
INSERT INTO `post_comment` VALUES ('50', '2017-03-13 12:06:03', '25', '12', 'test', '1');
INSERT INTO `post_comment` VALUES ('51', '2017-03-13 12:09:31', '29', '8', 'comment', '1');
INSERT INTO `post_comment` VALUES ('52', '2017-03-13 12:32:19', '30', '11', 'deuh teu ngajak ngajak lah', '1');
INSERT INTO `post_comment` VALUES ('53', '2017-03-13 13:04:20', '30', '8', 'eta kan nawisan a... \\uD83D\\uDE02', '1');
INSERT INTO `post_comment` VALUES ('54', '2017-03-13 13:16:19', '28', '12', '\\u1F62C', '1');
INSERT INTO `post_comment` VALUES ('55', '2017-03-13 13:16:31', '28', '12', '\\u1F916', '1');
INSERT INTO `post_comment` VALUES ('56', '2017-03-13 17:00:51', '19', '11', 'pameran dimana ?', '1');
INSERT INTO `post_comment` VALUES ('57', '2017-03-13 17:04:16', '30', '5', 'asin sepat eta ki', '1');
INSERT INTO `post_comment` VALUES ('58', '2017-03-14 09:24:52', '30', '13', 'yew', '1');

-- ----------------------------
-- Table structure for post_like
-- ----------------------------
DROP TABLE IF EXISTS `post_like`;
CREATE TABLE `post_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` datetime NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of post_like
-- ----------------------------
INSERT INTO `post_like` VALUES ('1', '2017-03-12 16:03:15', '1', '1');
INSERT INTO `post_like` VALUES ('2', '2017-03-12 16:03:38', '1', '1');
INSERT INTO `post_like` VALUES ('3', '2017-03-12 16:03:43', '1', '2');
INSERT INTO `post_like` VALUES ('4', '2017-03-12 16:03:45', '1', '3');
INSERT INTO `post_like` VALUES ('5', '2017-03-12 16:03:49', '2', '3');
INSERT INTO `post_like` VALUES ('6', '2017-03-12 16:03:52', '2', '2');
INSERT INTO `post_like` VALUES ('7', '2017-03-12 16:03:54', '2', '1');
INSERT INTO `post_like` VALUES ('8', '2017-03-12 16:03:58', '3', '1');
INSERT INTO `post_like` VALUES ('9', '2017-03-12 16:04:00', '3', '2');
INSERT INTO `post_like` VALUES ('10', '2017-03-12 16:04:02', '3', '3');
INSERT INTO `post_like` VALUES ('11', '2017-03-12 16:18:12', '3', '3');
INSERT INTO `post_like` VALUES ('12', '2017-03-12 16:35:24', '3', '3');
INSERT INTO `post_like` VALUES ('13', '2017-03-12 16:35:46', '1', '3');
INSERT INTO `post_like` VALUES ('14', '2017-03-12 16:36:02', '6', '3');
INSERT INTO `post_like` VALUES ('15', '2017-03-12 16:36:09', '6', '3');
INSERT INTO `post_like` VALUES ('16', '2017-03-12 16:49:10', '6', '3');
INSERT INTO `post_like` VALUES ('17', '2017-03-12 16:49:38', '6', '3');
INSERT INTO `post_like` VALUES ('18', '2017-03-12 16:50:25', '1', '3');
INSERT INTO `post_like` VALUES ('19', '2017-03-12 16:50:27', '1', '1');
INSERT INTO `post_like` VALUES ('20', '2017-03-12 16:50:29', '2', '1');
INSERT INTO `post_like` VALUES ('21', '2017-03-12 16:50:30', '3', '1');
INSERT INTO `post_like` VALUES ('22', '2017-03-12 16:50:32', '3', '2');
INSERT INTO `post_like` VALUES ('24', '2017-03-12 16:50:38', '5', '2');
INSERT INTO `post_like` VALUES ('25', '2017-03-12 16:50:40', '5', '3');
INSERT INTO `post_like` VALUES ('26', '2017-03-12 16:50:41', '4', '3');
INSERT INTO `post_like` VALUES ('27', '2017-03-12 17:14:18', '4', '3');
INSERT INTO `post_like` VALUES ('28', '2017-03-12 17:14:37', '4', '3');
INSERT INTO `post_like` VALUES ('29', '2017-03-12 17:14:58', '4', '3');
INSERT INTO `post_like` VALUES ('30', '2017-03-12 17:15:22', '1', '1');
INSERT INTO `post_like` VALUES ('31', '2017-03-12 17:16:16', '1', '1');
INSERT INTO `post_like` VALUES ('32', '2017-03-12 17:16:20', '2', '1');
INSERT INTO `post_like` VALUES ('33', '2017-03-12 17:16:23', '2', '2');
INSERT INTO `post_like` VALUES ('34', '2017-03-12 17:16:26', '2', '3');
INSERT INTO `post_like` VALUES ('35', '2017-03-12 17:16:28', '1', '3');
INSERT INTO `post_like` VALUES ('36', '2017-03-12 17:16:31', '4', '3');
INSERT INTO `post_like` VALUES ('37', '2017-03-12 17:16:34', '6', '3');
INSERT INTO `post_like` VALUES ('38', '2017-03-12 17:16:37', '6', '1');
INSERT INTO `post_like` VALUES ('39', '2017-03-12 17:16:41', '6', '2');
INSERT INTO `post_like` VALUES ('40', '2017-03-12 17:16:43', '5', '2');
INSERT INTO `post_like` VALUES ('41', '2017-03-12 17:18:42', '5', '2');
INSERT INTO `post_like` VALUES ('42', '2017-03-12 17:18:50', '5', '2');
INSERT INTO `post_like` VALUES ('43', '2017-03-12 17:19:16', '5', '2');
INSERT INTO `post_like` VALUES ('44', '2017-03-12 17:32:08', '1', '1');
INSERT INTO `post_like` VALUES ('45', '2017-03-12 17:32:11', '1', '2');
INSERT INTO `post_like` VALUES ('46', '2017-03-12 17:32:13', '1', '3');
INSERT INTO `post_like` VALUES ('47', '2017-03-12 17:32:15', '1', '4');
INSERT INTO `post_like` VALUES ('48', '2017-03-12 17:32:16', '1', '5');
INSERT INTO `post_like` VALUES ('49', '2017-03-12 17:32:18', '1', '6');
INSERT INTO `post_like` VALUES ('50', '2017-03-12 17:33:16', '1', '6');
INSERT INTO `post_like` VALUES ('84', '2017-03-13 06:54:01', '21', '5');
INSERT INTO `post_like` VALUES ('92', '2017-03-13 06:57:13', '4', '2');
INSERT INTO `post_like` VALUES ('93', '2017-03-13 06:57:30', '22', '5');
INSERT INTO `post_like` VALUES ('98', '2017-03-13 10:57:51', '23', '11');
INSERT INTO `post_like` VALUES ('107', '2017-03-13 11:02:53', '24', '12');
INSERT INTO `post_like` VALUES ('108', '2017-03-13 11:03:00', '23', '12');
INSERT INTO `post_like` VALUES ('109', '2017-03-13 11:03:03', '22', '12');
INSERT INTO `post_like` VALUES ('110', '2017-03-13 11:03:07', '21', '12');
INSERT INTO `post_like` VALUES ('111', '2017-03-13 11:03:11', '24', '13');
INSERT INTO `post_like` VALUES ('112', '2017-03-13 11:03:15', '23', '13');
INSERT INTO `post_like` VALUES ('116', '2017-03-13 11:19:10', '26', '8');
INSERT INTO `post_like` VALUES ('117', '2017-03-13 11:40:15', '26', '11');
INSERT INTO `post_like` VALUES ('118', '2017-03-13 11:49:08', '28', '8');
INSERT INTO `post_like` VALUES ('121', '2017-03-13 12:02:28', '29', '12');
INSERT INTO `post_like` VALUES ('123', '2017-03-13 12:05:55', '25', '12');
INSERT INTO `post_like` VALUES ('124', '2017-03-13 12:09:01', '29', '8');
INSERT INTO `post_like` VALUES ('126', '2017-03-13 13:03:27', '30', '8');
INSERT INTO `post_like` VALUES ('127', '2017-03-13 13:05:43', '25', '8');
INSERT INTO `post_like` VALUES ('131', '2017-03-13 13:08:07', '30', '12');
INSERT INTO `post_like` VALUES ('133', '2017-03-13 13:16:11', '28', '12');
INSERT INTO `post_like` VALUES ('134', '2017-03-13 16:59:05', '30', '11');
INSERT INTO `post_like` VALUES ('136', '2017-03-13 16:59:29', '28', '11');
INSERT INTO `post_like` VALUES ('137', '2017-03-13 16:59:38', '27', '11');
INSERT INTO `post_like` VALUES ('140', '2017-03-13 17:00:32', '19', '11');
INSERT INTO `post_like` VALUES ('142', '2017-03-14 09:24:41', '30', '13');
INSERT INTO `post_like` VALUES ('143', '2017-03-14 09:25:37', '12', '13');
INSERT INTO `post_like` VALUES ('144', '2017-03-14 17:57:06', '27', '12');

-- ----------------------------
-- Table structure for sdrt
-- ----------------------------
DROP TABLE IF EXISTS `sdrt`;
CREATE TABLE `sdrt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sdrt
-- ----------------------------
INSERT INTO `sdrt` VALUES ('1', 'Ayah');
INSERT INTO `sdrt` VALUES ('2', 'Ibu');
INSERT INTO `sdrt` VALUES ('3', 'Anak');
INSERT INTO `sdrt` VALUES ('4', 'Suami');
INSERT INTO `sdrt` VALUES ('5', 'Istri');

-- ----------------------------
-- Table structure for sdrt_relasi
-- ----------------------------
DROP TABLE IF EXISTS `sdrt_relasi`;
CREATE TABLE `sdrt_relasi` (
  `1` int(11) NOT NULL AUTO_INCREMENT,
  `sdrt_id1` int(11) NOT NULL,
  `sdrt_id2` int(11) NOT NULL,
  PRIMARY KEY (`1`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sdrt_relasi
-- ----------------------------
INSERT INTO `sdrt_relasi` VALUES ('1', '1', '3');
INSERT INTO `sdrt_relasi` VALUES ('2', '2', '3');
INSERT INTO `sdrt_relasi` VALUES ('3', '3', '1');
INSERT INTO `sdrt_relasi` VALUES ('4', '3', '2');
INSERT INTO `sdrt_relasi` VALUES ('5', '4', '5');
INSERT INTO `sdrt_relasi` VALUES ('6', '5', '4');

-- ----------------------------
-- Table structure for small_family
-- ----------------------------
DROP TABLE IF EXISTS `small_family`;
CREATE TABLE `small_family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `big_family_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of small_family
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `last_visit` datetime NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(13) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(12) NOT NULL,
  `status` varchar(255) NOT NULL,
  `birth` date NOT NULL,
  `address` text NOT NULL,
  `small_family_id` int(11) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `gcm_registration_id` text NOT NULL,
  `email_token` text NOT NULL,
  `latitude` text NOT NULL,
  `longitude` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '2017-02-24 09:23:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Samuel Ujang', 'john.snow@gmail.com', '0857131231', 'John', '4c4bee913b6f0c60d95b19349c9edb00', '1', 'Ayah', '1993-07-24', 'Jl. Penuh Pesona Tiada Tara', '0', '8.jpg', '1.jpg', 'dsXMP3kUHGo:APA91bEadoHOI90SkfPv06iZX_PYpguWtWelpx6q43XtKJsbzEMRiVdUjQODb7V41oaNbK3EzhZMBNkw5zS5O6hnA25aQmIcJfr6zM-VUk7GiIjrIIWCrHnSSOUMvixsxwqXx3h5nf4bs', 'Mksajs7877', '', '');
INSERT INTO `user` VALUES ('2', '2017-02-25 07:11:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Della', 'asawarga.wefay@gmail.com', '0857131231', 'Maemunah', 'f90bfba30cc122b04c499eb2303c3853', '2', 'Ibu', '2017-01-25', 'Jl. Penuh Pesona Tiada Tara', '0', '1.jpg', '', 'dsXMP3kUHGo:APA91bEadoHOI90SkfPv06iZX_PYpguWtWelpx6q43XtKJsbzEMRiVdUjQODb7V41oaNbK3EzhZMBNkw5zS5O6hnA25aQmIcJfr6zM-VUk7GiIjrIIWCrHnSSOUMvixsxwqXx3h5nf4bssd', 'f3eFrJJwVS2', '', '');
INSERT INTO `user` VALUES ('3', '2017-02-25 07:21:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Sunarto', 'sunarto@gmail.com', '0857131231', 'derek', '8d9b2d4e61a903b1b6216bd3d0df6fc2', '1', 'Paman', '2017-01-25', 'Jl. Penuh Pesona Tiada Tara', '0', '3.jpg', '', 'dsXMP3kUHGo:APA91bEadoHOI90SkfPv06iZX_PYpguWtWelpx6q43XtKJsbzEMRiVdUjQODb7V41oaNbK3EzhZMdfsdfBNkw5zS5O6hnA25aQmIcJfr6zM-VUk7GiIjrIIWCrHnSSOUMvixsxwqXx3h5nf4b', 'z5VnOVmCVd3', '', '');
INSERT INTO `user` VALUES ('4', '2017-02-26 09:13:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'muhamad abdul rojak', 'rozak09011992@gmail.com', '0857131231', 'm.razak', '74ee55083a714aa3791f8d594fea00c9', '1', 'Anak', '1991-11-09', 'Jl. Penuh Pesona Tiada Tara', '0', '4.jpg', '', 'dsXMP3kUHGo:APA91bEadoHOI9ssddssa0SkfPv06iZX_PYpguWtWelpx6q43XtKJsbzEMRiVdUjQODb7V41oaNbK3EzhZMBNkw5zS5O6hnA25aQmIcJfr6zM-VUk7GiIjrIIWCrHnSSOUMvixsxwqXx3h5nf4b', 'BCFt3Ykmqr7', '', '');
INSERT INTO `user` VALUES ('5', '2017-02-27 07:44:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Icih Caroline', '3108.firmanmaulana@gmail.comw', '0857131231', 'firmanmaulana', '30275f35b16b863efc6d6cfbe12b2b09', '1', 'Anak', '1993-07-31', 'Jl. Penuh Pesona Tiada Tara', '0', '8.jpg', '', 'dsXMP3kUHGo:APA91bEadoHOI90SkfPv06iZX_PYpguWtWelpx6q43XtKJsbzEMRiVdUjQODb7V41oaNbK3EzhZMBNkw5zS5O6hnA25aQmIcJfr6zM-VUk7GiIjrIIWCrHnSSOUMvixsxwqXx3h5nf4b', 'pDIGkEbIBu12', '', '');
INSERT INTO `user` VALUES ('6', '2017-03-07 08:03:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'gates', '3108.firmanmaulana@gmai.com', '0857131231', 'gates', 'dfffebae019677f19b031730804e262b', '1', 'Tante', '2017-02-07', 'Jl. Penuh Pesona Tiada Tara', '0', '2.jpg', '', 'dsXMP3kUHGo:APA91bEadoHOI90SkfPv06iZX_PYpguWtWelpx6q43XtKJsbzEMRiVdUjQODb7V41oaNbK3EzhZMBNkw5zS5O6hnA25aQmIcJfr6zM-VUk7GiIjrIIWCrHnSSOUMvixsxwqXx3h5nf4bd', 'VwNUM8BoEe6', '', '');
INSERT INTO `user` VALUES ('7', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Mugi Rachman', 'mugi@gmail.com', '087123123123', 'mugi', '2ddc7d1f052838d57b5c74c5a0bed983', '1', 'Anak', '2016-10-11', 'soreang', '0', '5.jpg', '', '', 'Mksajs7876', '', '');
INSERT INTO `user` VALUES ('8', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Lucky Lukhman NUr Hakim', 'luckylukhman@gmail.com', '0877817827182', 'lucky', '339a65e93299ad8d72c42b263aa23117', '1', 'Anak', '2017-03-14', 'caringin', '0', '9.jpg', '', '', 'Mksajs7875', '', '');
INSERT INTO `user` VALUES ('9', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'daniel hernandes', 'daniel@gmial.com', '0897891829', 'daniel', 'aa47f8215c6f30a0dcdb2a36a9f4168e', '1', 'Anak', '2017-03-11', 'Jl. Perjuangan untuk mencapai akhirat', '0', '10.jpg', '', '', 'Mksajs7874', '', '');
INSERT INTO `user` VALUES ('10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Siti Fatimah', 'siti@sawarga.com', '08766616811', 'siti', '87d4eeb7dec7686410748d174c0e0a11', '1', 'Anak', '2017-03-01', 'Jl. Penuh Pesona Tiada Tara', '0', '2.jpg', '', '', 'Mksajs7873', '', '');
INSERT INTO `user` VALUES ('11', '2017-03-13 10:45:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Firman Maulana', '3108.firmanmaulana@gmail.com', '0', 'uname', '5f4dcc3b5aa765d61d8327deb882cf99', '1', '0', '1993-08-31', '', '0', '5.jpg', '', 'c3BPi6QLWPg:APA91bHNjU6t5voqbKvNVQKQ95ZXEit427cboVTP8koAHfcWsgqY__MY3AJKtzEBipDkaK1g87bgnmQrwIFr0ubub1z5rVnt-MYGrRX3sPssbRBZ2ye96qRi5lZvsVNurHKD8GMkg2N7', 'jqwYfTi0s611', '', '');
INSERT INTO `user` VALUES ('12', '2017-03-13 10:57:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Loki', 'muhamadrozak9@gmail.com', '0', 'loki', '203366deabbe85d0f87604bf39f020db', '2', '0', '1995-07-08', '', '0', '', '', '', 'SRJsnVYCUB12', '', '');
INSERT INTO `user` VALUES ('13', '2017-03-13 11:02:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'infomugi', 'infomugi@gmail.com', '0', 'sawarga', 'e0d37d6c2b89e4b93da8f705eb69c9b6', '1', '0', '1997-02-13', '', '0', '', '', 'cCvBjOHPWBY:APA91bGUVz5WmUOy4N47BKl6wHm79FEBfiOZtMMmuJGpr6uHuZuOoozlbsogjPl-avCJoWiH-7oC3IAYyDmf02Q_TDgWRT2xdghYTKSBBPKHfzHuRIJfT31YC6H3ULmghJIenq3tMe-1', 'mtazXq2xOf13', '', '');

-- ----------------------------
-- Table structure for user_relasi
-- ----------------------------
DROP TABLE IF EXISTS `user_relasi`;
CREATE TABLE `user_relasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id1` int(11) NOT NULL,
  `user_id2` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_relasi
-- ----------------------------
INSERT INTO `user_relasi` VALUES ('1', '1', '4', '0');
INSERT INTO `user_relasi` VALUES ('2', '2', '4', '0');
INSERT INTO `user_relasi` VALUES ('3', '2', '4', '0');

-- ----------------------------
-- Table structure for user_relasi_user
-- ----------------------------
DROP TABLE IF EXISTS `user_relasi_user`;
CREATE TABLE `user_relasi_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_relasi_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sdrt` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_relasi_user
-- ----------------------------
INSERT INTO `user_relasi_user` VALUES ('47', '1', '1', '3');
INSERT INTO `user_relasi_user` VALUES ('48', '1', '4', '1');
INSERT INTO `user_relasi_user` VALUES ('49', '2', '2', '3');
INSERT INTO `user_relasi_user` VALUES ('50', '2', '4', '1');
INSERT INTO `user_relasi_user` VALUES ('51', '3', '2', '1');
INSERT INTO `user_relasi_user` VALUES ('52', '3', '4', '1');
SET FOREIGN_KEY_CHECKS=1;
