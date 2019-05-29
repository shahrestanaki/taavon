select count(`log`.`userid`) AS `count`,cast(`log`.`dateloginE` as date) AS `date` from `taa_loginloger` `log` where ((`log`.`status` = 1) and (`log`.`userid` is not null)) group by cast(`log`.`dateloginE` as date)