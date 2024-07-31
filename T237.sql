/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t237`;
CREATE DATABASE IF NOT EXISTS `t237` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t237`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/zaixiankechengguanlixitong/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/zaixiankechengguanlixitong/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/zaixiankechengguanlixitong/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-20 09:43:32'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-20 09:43:32'),
	(3, 'banji_types', '班级', 1, '班级1', NULL, NULL, '2022-04-20 09:43:32'),
	(4, 'banji_types', '班级', 2, '班级2', NULL, NULL, '2022-04-20 09:43:32'),
	(5, 'banji_types', '班级', 3, '班级3', NULL, NULL, '2022-04-20 09:43:32'),
	(6, 'banji_types', '班级', 4, '班级4', NULL, NULL, '2022-04-20 09:43:32'),
	(7, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-04-20 09:43:33'),
	(8, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-04-20 09:43:33'),
	(9, 'kecheng_types', '科目', 1, '语文', NULL, NULL, '2022-04-20 09:43:33'),
	(10, 'kecheng_types', '科目', 2, '数学', NULL, NULL, '2022-04-20 09:43:33'),
	(11, 'kecheng_types', '科目', 3, '英语', NULL, NULL, '2022-04-20 09:43:33'),
	(12, 'kecheng_types', '科目', 4, '化学', NULL, NULL, '2022-04-20 09:43:33'),
	(13, 'kecheng_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-04-20 09:43:33'),
	(14, 'jiaoxuejihua_types', '教学计划类型', 1, '教学计划类型1', NULL, NULL, '2022-04-20 09:43:33'),
	(15, 'jiaoxuejihua_types', '教学计划类型', 2, '教学计划类型2', NULL, NULL, '2022-04-20 09:43:33'),
	(16, 'jiaoxuejihua_types', '教学计划类型', 3, '教学计划类型3', NULL, NULL, '2022-04-20 09:43:33'),
	(17, 'jiaoxuejihua_types', '教学计划类型', 4, '教学计划类型4', NULL, NULL, '2022-04-20 09:43:33'),
	(18, 'gonggao_types', '通知公告类型', 1, '通知公告类型1', NULL, NULL, '2022-04-20 09:43:33'),
	(19, 'gonggao_types', '通知公告类型', 2, '通知公告类型2', NULL, NULL, '2022-04-20 09:43:33'),
	(20, 'kecheng_types', '科目', 5, '物理', NULL, '', '2022-04-20 09:49:42');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '通知公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '通知公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '通知公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '通知公告发布时间 ',
  `gonggao_content` text COMMENT '通知公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='通知公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '通知公告名称1', 'http://localhost:8080/zaixiankechengguanlixitong/upload/gonggao1.jpg', 2, '2022-04-20 09:43:37', '通知公告详情1', '2022-04-20 09:43:37'),
	(2, '通知公告名称2', 'http://localhost:8080/zaixiankechengguanlixitong/upload/gonggao2.jpg', 2, '2022-04-20 09:43:37', '通知公告详情2', '2022-04-20 09:43:37'),
	(3, '通知公告名称3', 'http://localhost:8080/zaixiankechengguanlixitong/upload/gonggao3.jpg', 2, '2022-04-20 09:43:37', '通知公告详情3', '2022-04-20 09:43:37'),
	(4, '通知公告名称4', 'http://localhost:8080/zaixiankechengguanlixitong/upload/gonggao4.jpg', 2, '2022-04-20 09:43:37', '通知公告详情4', '2022-04-20 09:43:37'),
	(5, '通知公告名称5', 'http://localhost:8080/zaixiankechengguanlixitong/upload/gonggao5.jpg', 2, '2022-04-20 09:43:37', '<p>通知公告详情5111</p>', '2022-04-20 09:43:37');

DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE IF NOT EXISTS `jiaoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '教师手机号',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '教师身份证号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '教师头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

DELETE FROM `jiaoshi`;
INSERT INTO `jiaoshi` (`id`, `username`, `password`, `jiaoshi_name`, `jiaoshi_phone`, `jiaoshi_id_number`, `jiaoshi_photo`, `sex_types`, `jiaoshi_email`, `create_time`) VALUES
	(1, '教师1', '123456', '教师姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/zaixiankechengguanlixitong/upload/jiaoshi1.jpg', 1, '1@qq.com', '2022-04-20 09:43:37'),
	(2, '教师2', '123456', '教师姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/zaixiankechengguanlixitong/upload/jiaoshi2.jpg', 1, '2@qq.com', '2022-04-20 09:43:37'),
	(3, '教师3', '123456', '教师姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/zaixiankechengguanlixitong/upload/jiaoshi3.jpg', 1, '3@qq.com', '2022-04-20 09:43:37');

DROP TABLE IF EXISTS `jiaoxuejihua`;
CREATE TABLE IF NOT EXISTS `jiaoxuejihua` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `kecheng_id` int DEFAULT NULL COMMENT '课程',
  `jiaoxuejihua_uuid_number` varchar(200) DEFAULT NULL COMMENT '教学计划编号  Search111 ',
  `jiaoxuejihua_name` varchar(200) DEFAULT NULL COMMENT '教学计划名称  Search111 ',
  `jiaoxuejihua_file` varchar(200) DEFAULT NULL COMMENT '教学计划文件',
  `jiaoxuejihua_types` int DEFAULT NULL COMMENT '教学计划类型 Search111',
  `jiaoxuejihua_content` text COMMENT '教学计划内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='教学计划';

DELETE FROM `jiaoxuejihua`;
INSERT INTO `jiaoxuejihua` (`id`, `jiaoshi_id`, `kecheng_id`, `jiaoxuejihua_uuid_number`, `jiaoxuejihua_name`, `jiaoxuejihua_file`, `jiaoxuejihua_types`, `jiaoxuejihua_content`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, '165044781799990', '教学计划名称1', 'http://localhost:8080/zaixiankechengguanlixitong/upload/file.rar', 3, '教学计划内容1', '2022-04-20 09:43:37', '2022-04-20 09:43:37'),
	(2, 3, 2, '16504478179996', '教学计划名称2', 'http://localhost:8080/zaixiankechengguanlixitong/upload/file.rar', 3, '教学计划内容2', '2022-04-20 09:43:37', '2022-04-20 09:43:37'),
	(3, 2, 3, '165044781799970', '教学计划名称3', 'http://localhost:8080/zaixiankechengguanlixitong/upload/file.rar', 3, '教学计划内容3', '2022-04-20 09:43:37', '2022-04-20 09:43:37'),
	(4, 2, 4, '16504478179996', '教学计划名称4', 'http://localhost:8080/zaixiankechengguanlixitong/upload/file.rar', 2, '教学计划内容4', '2022-04-20 09:43:37', '2022-04-20 09:43:37'),
	(5, 1, 5, '165044781800074', '教学计划名称5', 'http://localhost:8080/zaixiankechengguanlixitong/upload/file.rar', 1, '教学计划内容5', '2022-04-20 09:43:37', '2022-04-20 09:43:37'),
	(6, 1, 1, '1650448231793', '名称1`11', 'http://localhost:8080/zaixiankechengguanlixitong/upload/1650448241581.rar', 4, '<p>啥阿嘎还是大还是打哈工大</p>', '2022-04-20 09:50:55', '2022-04-20 09:50:55');

DROP TABLE IF EXISTS `kecheng`;
CREATE TABLE IF NOT EXISTS `kecheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称  Search111 ',
  `kecheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '课程编号  Search111 ',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '课程照片',
  `kecheng_video` varchar(200) DEFAULT NULL COMMENT '课程视频',
  `kecheng_file` varchar(200) DEFAULT NULL COMMENT '课件',
  `kecheng_types` int DEFAULT NULL COMMENT '科目 Search111',
  `kecheng_clicknum` int DEFAULT NULL COMMENT '课程热度 ',
  `kecheng_content` text COMMENT '课程内容',
  `zhishiyaodian_content` text COMMENT '知识要点',
  `kaoshidagang_content` text COMMENT '考试大纲',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `kecheng_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='课程';

DELETE FROM `kecheng`;
INSERT INTO `kecheng` (`id`, `jiaoshi_id`, `kecheng_name`, `kecheng_uuid_number`, `kecheng_photo`, `kecheng_video`, `kecheng_file`, `kecheng_types`, `kecheng_clicknum`, `kecheng_content`, `zhishiyaodian_content`, `kaoshidagang_content`, `shangxia_types`, `kecheng_delete`, `create_time`) VALUES
	(1, 1, '课程名称1', '165044781800733', 'http://localhost:8080/zaixiankechengguanlixitong/upload/kecheng1.jpg', 'http://localhost:8080/zaixiankechengguanlixitong/upload/video.mp4', 'http://localhost:8080/zaixiankechengguanlixitong/upload/file.rar', 4, 78, '课程内容1', '知识要点1', '考试大纲1', 1, 1, '2022-04-20 09:43:37'),
	(2, 3, '课程名称2', '165044781800730', 'http://localhost:8080/zaixiankechengguanlixitong/upload/kecheng2.jpg', 'http://localhost:8080/zaixiankechengguanlixitong/upload/video.mp4', 'http://localhost:8080/zaixiankechengguanlixitong/upload/file.rar', 1, 382, '课程内容2', '知识要点2', '考试大纲2', 1, 1, '2022-04-20 09:43:37'),
	(3, 2, '课程名称3', '165044781800750', 'http://localhost:8080/zaixiankechengguanlixitong/upload/kecheng3.jpg', 'http://localhost:8080/zaixiankechengguanlixitong/upload/video.mp4', 'http://localhost:8080/zaixiankechengguanlixitong/upload/file.rar', 2, 431, '课程内容3', '知识要点3', '考试大纲3', 1, 1, '2022-04-20 09:43:37'),
	(4, 2, '课程名称4', '165044781800723', 'http://localhost:8080/zaixiankechengguanlixitong/upload/kecheng4.jpg', 'http://localhost:8080/zaixiankechengguanlixitong/upload/video.mp4', 'http://localhost:8080/zaixiankechengguanlixitong/upload/file.rar', 4, 299, '课程内容4', '知识要点4', '考试大纲4', 1, 1, '2022-04-20 09:43:37'),
	(5, 1, '课程名称5', '16504478180074', 'http://localhost:8080/zaixiankechengguanlixitong/upload/kecheng5.jpg', 'http://localhost:8080/zaixiankechengguanlixitong/upload/video.mp4', 'http://localhost:8080/zaixiankechengguanlixitong/upload/file.rar', 3, 280, '<p>课程内容5</p>', '<p>知识要点5</p>', '<p>考试大纲512111</p>', 1, 1, '2022-04-20 09:43:37');

DROP TABLE IF EXISTS `kecheng_collection`;
CREATE TABLE IF NOT EXISTS `kecheng_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int DEFAULT NULL COMMENT '课程',
  `xuesheng_id` int DEFAULT NULL COMMENT '学生',
  `kecheng_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='课程收藏';

DELETE FROM `kecheng_collection`;
INSERT INTO `kecheng_collection` (`id`, `kecheng_id`, `xuesheng_id`, `kecheng_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2022-04-20 09:43:37', '2022-04-20 09:43:37'),
	(2, 2, 2, 1, '2022-04-20 09:43:37', '2022-04-20 09:43:37'),
	(3, 3, 2, 1, '2022-04-20 09:43:37', '2022-04-20 09:43:37'),
	(4, 4, 1, 1, '2022-04-20 09:43:37', '2022-04-20 09:43:37'),
	(5, 5, 3, 1, '2022-04-20 09:43:37', '2022-04-20 09:43:37'),
	(6, 2, 1, 1, '2022-04-20 09:48:51', '2022-04-20 09:48:51'),
	(7, 3, 1, 1, '2024-06-21 08:48:38', '2024-06-21 08:48:38');

DROP TABLE IF EXISTS `kecheng_liuyan`;
CREATE TABLE IF NOT EXISTS `kecheng_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int DEFAULT NULL COMMENT '课程',
  `xuesheng_id` int DEFAULT NULL COMMENT '学生',
  `kecheng_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='课程留言';

DELETE FROM `kecheng_liuyan`;
INSERT INTO `kecheng_liuyan` (`id`, `kecheng_id`, `xuesheng_id`, `kecheng_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '留言内容1', '2022-04-20 09:43:37', '回复信息1', '2022-04-20 09:43:37', '2022-04-20 09:43:37'),
	(2, 2, 2, '留言内容2', '2022-04-20 09:43:37', '回复信息2', '2022-04-20 09:43:37', '2022-04-20 09:43:37'),
	(3, 3, 3, '留言内容3', '2022-04-20 09:43:37', '回复信息3', '2022-04-20 09:43:37', '2022-04-20 09:43:37'),
	(4, 4, 3, '留言内容4', '2022-04-20 09:43:37', '回复信息4', '2022-04-20 09:43:37', '2022-04-20 09:43:37'),
	(5, 5, 3, '留言内容5', '2022-04-20 09:43:37', '回复信息5', '2022-04-20 09:43:37', '2022-04-20 09:43:37'),
	(6, 4, 1, '啥搭嘎独孤皇后双毒合一', '2022-04-20 09:47:31', NULL, NULL, '2022-04-20 09:47:31'),
	(7, 4, 1, '是是是', '2022-04-20 09:48:43', 'sadsjsfjfs', '2022-04-20 09:51:29', '2022-04-20 09:48:43');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'od80zmxt8l6ys9ik141lm98k3s2t13nh', '2022-04-20 09:17:55', '2024-06-21 09:47:05'),
	(2, 1, 'a1', 'xuesheng', '学生', '169o6fznvq8f4zs2qbyestnx3aq6qqbk', '2022-04-20 09:35:27', '2024-06-21 09:48:26'),
	(3, 1, 'a1', 'jiaoshi', '教师', 'nfr046pu4xpd63455bjcr8i0lqi4wnsp', '2022-04-20 09:50:24', '2024-06-21 09:48:04'),
	(4, 2, 'a2', 'jiaoshi', '教师', 'kiz7pwxpo4w8axkfdk7hm4pfpzsrqklc', '2022-04-20 09:51:19', '2022-04-20 10:51:20');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE IF NOT EXISTS `xuesheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xuesheng_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `xuesheng_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `xuesheng_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `xuesheng_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `banji_types` int DEFAULT NULL COMMENT '班级 Search111 ',
  `xuesheng_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `xuesheng`;
INSERT INTO `xuesheng` (`id`, `username`, `password`, `xuesheng_name`, `xuesheng_phone`, `xuesheng_id_number`, `xuesheng_photo`, `sex_types`, `banji_types`, `xuesheng_email`, `create_time`) VALUES
	(1, '学生1', '123456', '学生姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/zaixiankechengguanlixitong/upload/xuesheng1.jpg', 1, 4, '1@qq.com', '2022-04-20 09:43:37'),
	(2, '学生2', '123456', '学生姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/zaixiankechengguanlixitong/upload/xuesheng2.jpg', 1, 4, '2@qq.com', '2022-04-20 09:43:37'),
	(3, '学生3', '123456', '学生姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/zaixiankechengguanlixitong/upload/xuesheng3.jpg', 2, 4, '3@qq.com', '2022-04-20 09:43:37');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
