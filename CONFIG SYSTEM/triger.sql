DELIMITER $$

CREATE
	TRIGGER `trig_before_delete` BEFORE DELETE 
	ON `sessions` 
	FOR EACH ROW BEGIN
		/*delete*/
		DECLARE index1 int;
		DECLARE index2 int;
		DECLARE olduserid int;
		DECLARE user_id int;
		select a.index1 INTO index1  from( select POSITION('"passport":{"user":' in ses.`data` ) as index1 from sessions ses where ses.session_id = OLD.session_id)a  ;
		
		if(index1 != 0) then
			set index1 = index1 + 19;
			select b.index2 INTO index2  from( select POSITION('}}' in ses.`data` ) as index2 from sessions ses where ses.session_id = OLD.session_id)b  ;
			select coalesce(c.userid,0) INTO user_id  from( select SUBSTRING(ses.`data` ,index1,index2-index1) as userid from sessions ses where ses.session_id = OLD.session_id)c ;
			
			select coalesce ((select us.userid from useronline us where userid = user_id),0) into olduserid;
			if(olduserid != 0) THEN
				delete from useronline  where  userid = user_id ;
			end if;
		end if;
 END$$

DELIMITER ;
	
//---------------------------------//
	
DELIMITER $$

CREATE
	TRIGGER `trig_afer_update` AFTER UPDATE 
	ON `sessions` 
	FOR EACH ROW BEGIN
		/*insert*/
		DECLARE index1 int;
		DECLARE index2 int;
		DECLARE olduserid int;
		DECLARE user_id int;
		select a.index1 INTO index1  from( select POSITION('"passport":{"user":' in ses.`data` ) as index1 from sessions ses where ses.session_id = NEW.session_id)a  ;
		
		if(index1 != 0) then
			set index1 = index1 + 19;
			select b.index2 INTO index2  from( select POSITION('}}' in ses.`data` ) as index2 from sessions ses where ses.session_id = NEW.session_id)b  ;
			select coalesce(c.userid,0) INTO user_id  from( select SUBSTRING(ses.`data` ,index1,index2-index1) as userid from sessions ses where ses.session_id = NEW.session_id)c ;
		
			select coalesce ((select us.userid from useronline us where userid = user_id),0) into olduserid;
			if(olduserid = 0) THEN
				insert into useronline (userid) VALUES(user_id);
			end if;
		end if;
 END$$

DELIMITER ;