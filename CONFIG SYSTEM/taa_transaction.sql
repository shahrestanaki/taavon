CREATE TABLE `taavondb`.`taa_transaction`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL,
  `creditor` decimal(15, 0) NOT NULL DEFAULT 0 COMMENT 'طلبکار',
  `debtor` decimal(15, 0) NOT NULL DEFAULT 0 COMMENT 'بدهکار',
  `transdate` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'تاریخ',
  `description` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'توضیحات',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `taa_variz_id_users_id`(`userid`) USING BTREE,
  CONSTRAINT `taa_variz_id_users_id` FOREIGN KEY (`userid`) REFERENCES `taavondb`.`taa_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;