select `log`.`userid` AS `userid`,`log`.`dateloginF` AS `dateloginF`,`log`.`ip` AS `ip`,`pro`.`desc` AS `desc`,`log`.`others` AS `others`,`log`.`status` AS `status` from (`taa_loginloger` `log` join `taa_property` `pro`) where ((`log`.`userid` = `log`.`userid`) and (`log`.`status` = `pro`.`property`)) order by `log`.`dateloginE` desc