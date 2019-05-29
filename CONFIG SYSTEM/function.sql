CREATE   FUNCTION userCountLogin(userid int,lim int,sta int ) RETURNS int(11)
BEGIN
DECLARE count_var int;
 select count(*) INTO count_var  from( select a.* from (select * from taa_loginloger log where log.userid = userid ORDER BY log.dateloginE desc)a limit lim )b where b.`status` = sta ;
RETURN count_var;
END;