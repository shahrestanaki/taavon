CREATE TABLE `taavondb`.`taa_loginloger`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NULL DEFAULT NULL COMMENT 'یوزر',
  `dateloginE` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT 'تاریخ میلادی',
  `status` int(1) NOT NULL COMMENT 'وضعیت لاگین',
  `dateloginF` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL COMMENT 'تاریخ ورود شمسی',
  `ip` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'ip',
  `others` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'موارد اضافه',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `taa_userlogin_id_users_id`(`userid`) USING BTREE,
  CONSTRAINT `taa_userlogin_id_users_id` FOREIGN KEY (`userid`) REFERENCES `taavondb`.`taa_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 351 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;