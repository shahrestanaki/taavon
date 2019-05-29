CREATE TABLE `taavondb`.`taa_users`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL COMMENT 'نام',
  `famili` varchar(50) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL COMMENT 'فامیلی',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(1) NOT NULL COMMENT 'وضعیت کاربر',
  `rules` int(1) NOT NULL COMMENT 'نقض کاربری',
  `createdate` datetime(0) NOT NULL COMMENT 'تاریخ ایجاد',
  `changedate` datetime(0) NULL DEFAULT NULL COMMENT 'تاریخ ویرایش',
  `edituser` int(10) NULL DEFAULT NULL COMMENT 'کاربر ویرایش کننده',
  `lockdate` datetime(0) NULL DEFAULT NULL COMMENT 'زمان لاک شدن',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `changeuser_id_id`(`edituser`) USING BTREE,
  UNIQUE INDEX `user_uniq_field`(`name`, `famili`) USING BTREE,
  UNIQUE INDEX `user_uniq_username`(`username`) USING BTREE,
  CONSTRAINT `changeuser_id_id` FOREIGN KEY (`edituser`) REFERENCES `taavondb`.`taa_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;