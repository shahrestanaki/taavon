CREATE TABLE `taavondb`.`taa_property`  (
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `property` int(10) NOT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  UNIQUE INDEX `type`(`type`, `property`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

INSERT INTO `taavondb`.`taa_property`(`typeDesc`, `property`, `desc`, `type`) VALUES ('وضعیت کاربر', 0, 'غیر فعال', 1);
INSERT INTO `taavondb`.`taa_property`(`typeDesc`, `property`, `desc`, `type`) VALUES ('وضعیت کاربر', 1, 'فعال', 1);
INSERT INTO `taavondb`.`taa_property`(`typeDesc`, `property`, `desc`, `type`) VALUES ('وضعیت کاربر', 2, 'قفل موقت', 1);
INSERT INTO `taavondb`.`taa_property`(`typeDesc`, `property`, `desc`, `type`) VALUES ('وضعیت ورود در سابقه لاگین', 1, 'ورود موفق', 2);
INSERT INTO `taavondb`.`taa_property`(`typeDesc`, `property`, `desc`, `type`) VALUES ('وضعیت ورود در سابقه لاگین', 2, 'خروج کاربر', 2);
INSERT INTO `taavondb`.`taa_property`(`typeDesc`, `property`, `desc`, `type`) VALUES ('وضعیت ورود در سابقه لاگین', 3, 'ورود ناموفق', 2);
INSERT INTO `taavondb`.`taa_property`(`typeDesc`, `property`, `desc`, `type`) VALUES ('نقش کاربری', 0, 'کاربر ارشد', 3);
INSERT INTO `taavondb`.`taa_property`(`typeDesc`, `property`, `desc`, `type`) VALUES ('نقش کاربری', 1, 'کاربر ادمین', 3);
INSERT INTO `taavondb`.`taa_property`(`typeDesc`, `property`, `desc`, `type`) VALUES ('نقش کاربری', 2, 'کاربر عادی', 3);
INSERT INTO `taavondb`.`taa_property`(`type`, `typeDesc`, `property`, `desc`) VALUES (4, 'آنلاین بودن کاربر', 1, 'Online');
INSERT INTO `taavondb`.`taa_property`(`type`, `typeDesc`, `property`, `desc`) VALUES (4, 'آنلاین بودن کاربر', 0, 'OffLine');

INSERT INTO `taavondb`.`taa_property`(`type`, `typeDesc`, `property`, `desc`) VALUES (5, 'وضعیت پیام', 1, 'اقدام نشده');
INSERT INTO `taavondb`.`taa_property`(`type`, `typeDesc`, `property`, `desc`) VALUES (5, 'وضعیت پیام', 2, 'پاسخ داده شده');
INSERT INTO `taavondb`.`taa_property`(`type`, `typeDesc`, `property`, `desc`) VALUES (5, 'وضعیت پیام', 3, 'بسته شده');
INSERT INTO `taavondb`.`taa_property`(`type`, `typeDesc`, `property`, `desc`) VALUES (5, 'وضعیت پیام', 4, 'وابسته');
INSERT INTO `taavondb`.`taa_property`(`type`, `typeDesc`, `property`, `desc`) VALUES (5, 'وضعیت پیام', 5, 'در دست بررسی');
