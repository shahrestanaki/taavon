CREATE TABLE `taavondb`.`taa_message`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'کد موضوع',
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL COMMENT 'موضوع',
  `desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL COMMENT 'شرح',
  `sender` int(10) NOT NULL COMMENT 'فرستنده',
  `reciver` int(10) NOT NULL COMMENT 'گیرنده',
  `datecreateF` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'تاریخ درخواست فارسی',
  `datecreateE` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'تاریخ درخواست ',
  `status` int(1) NOT NULL COMMENT 'وضعیت',
  `replayCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'کد مرجع',
  `changeDate` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT 'تاریخ تغییر',
  `owner` int(10) NULL DEFAULT NULL COMMENT 'صاحب پیام',
  PRIMARY KEY (`id`, `code`) USING BTREE,
  INDEX `reciver_id`(`reciver`) USING BTREE,
  INDEX `sender_id`(`sender`) USING BTREE,
  CONSTRAINT `reciver_id` FOREIGN KEY (`reciver`) REFERENCES `taavondb`.`taa_users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sender_id` FOREIGN KEY (`sender`) REFERENCES `taavondb`.`taa_users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;