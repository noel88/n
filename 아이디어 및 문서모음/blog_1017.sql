			CREATE TABLE `user` (
				`user_email` VARCHAR(50) NOT NULL,
				`user_pwd` VARCHAR(70) NULL DEFAULT NULL,
				`user_name` VARCHAR(50) NULL DEFAULT NULL,
				`user_authCode` VARCHAR(70) NULL DEFAULT NULL,
				`user_auth_yn` VARCHAR(3) NULL DEFAULT 'n',
				PRIMARY KEY (`user_email`)
			)
			COLLATE='utf8_general_ci'
			ENGINE=InnoDB
			;

			CREATE TABLE `category` (
				`category_no` INT(11) NOT NULL AUTO_INCREMENT,
				`blog_no` INT(11) NULL DEFAULT NULL,
				`category` VARCHAR(45) NULL DEFAULT NULL COLLATE 'utf8_bin',
				PRIMARY KEY (`category_no`)
			)
			COLLATE='utf8_bin'
			ENGINE=InnoDB
			AUTO_INCREMENT=9
			;

			CREATE TABLE `comment` (
				`comment_no` INT(11) NOT NULL AUTO_INCREMENT,
				`post_no` INT(11) NOT NULL,
				`comment_name` VARCHAR(45) NOT NULL,
				`comment` VARCHAR(1000) NULL DEFAULT NULL,
				`comment_now` TIMESTAMP NOT NULL DEFAULT '',
				PRIMARY KEY (`comment_no`)
			)
			COLLATE='utf8_general_ci'
			ENGINE=InnoDB
			AUTO_INCREMENT=33
			;

			CREATE TABLE `event` (
				`event_no` INT(11) NOT NULL AUTO_INCREMENT,
				`event_title` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_bin',
				`event_startDate` VARCHAR(20) NULL DEFAULT NULL COLLATE 'utf8_bin',
				`event_endDate` VARCHAR(20) NULL DEFAULT NULL COLLATE 'utf8_bin',
				`event_content` VARCHAR(1000) NULL DEFAULT NULL COLLATE 'utf8_bin',
				PRIMARY KEY (`event_no`)
			)
			COLLATE='utf8_bin'
			ENGINE=InnoDB
			AUTO_INCREMENT=3
			;

			CREATE TABLE `event_entry` (
				`entry_code` INT(11) NOT NULL AUTO_INCREMENT,
				`event_no` INT(11) NULL DEFAULT NULL,
				`user_name` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_bin',
				PRIMARY KEY (`entry_code`)
			)
			COLLATE='utf8_bin'
			ENGINE=InnoDB
			AUTO_INCREMENT=16
			;

			CREATE TABLE `keyword_cnt` (
				`word` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_bin',
				`word_cnt` INT(11) UNSIGNED ZEROFILL NOT NULL DEFAULT '00000000000'
			)
			COLLATE='utf8_bin'
			ENGINE=InnoDB
			;

			CREATE TABLE `like_post` (
				`like_no` INT(11) NOT NULL AUTO_INCREMENT,
				`post_no` INT(11) NULL DEFAULT NULL,
				`like_user` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_bin',
				`like_now` TIMESTAMP NOT NULL DEFAULT '',
				PRIMARY KEY (`like_no`)
			)
			COLLATE='utf8_bin'
			ENGINE=InnoDB
			AUTO_INCREMENT=13
			;

			CREATE TABLE `myblog` (
				`blog_no` INT(11) NOT NULL AUTO_INCREMENT,
				`blog_user` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_bin',
				`blog_img` VARCHAR(100) NULL DEFAULT NULL COLLATE 'utf8_bin',
				`profile_img` VARCHAR(100) NULL DEFAULT NULL COLLATE 'utf8_bin',
				`blog_title` VARCHAR(120) NULL DEFAULT NULL COLLATE 'utf8_bin',
				`blog_info` VARCHAR(200) NULL DEFAULT NULL COLLATE 'utf8_bin',
				`profile_info` VARCHAR(100) NULL DEFAULT NULL COLLATE 'utf8_bin',
				PRIMARY KEY (`blog_no`)
			)
			COLLATE='utf8_bin'
			ENGINE=InnoDB
			AUTO_INCREMENT=11
			;

			CREATE TABLE `post` (
				`post_no` INT(11) NOT NULL AUTO_INCREMENT,
				`blog_no` INT(11) NULL DEFAULT NULL,
				`title` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_bin',
				`name` VARCHAR(45) NULL DEFAULT NULL COLLATE 'utf8_bin',
				`now` TIMESTAMP NOT NULL DEFAULT '',
				`context` VARCHAR(20000) NULL DEFAULT NULL COLLATE 'utf8_bin',
				`keyword` VARCHAR(100) NULL DEFAULT NULL COLLATE 'utf8_bin',
				`cnt` INT(11) NULL DEFAULT '0',
				`category_no` INT(11) NULL DEFAULT NULL,
				`public_yn` VARCHAR(10) NULL DEFAULT NULL COLLATE 'utf8_bin',
				PRIMARY KEY (`post_no`)
			)
			COLLATE='utf8_bin'
			ENGINE=InnoDB
			AUTO_INCREMENT=11
			;

			CREATE TABLE `report` (
				`report_no` INT(11) NOT NULL,
				`post_no` INT(11) NULL DEFAULT NULL,
				`repory_name` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8_bin',
				`report_content` VARCHAR(45) NULL DEFAULT NULL COLLATE 'utf8_bin',
				PRIMARY KEY (`report_no`)
			)
			COLLATE='utf8_bin'
			ENGINE=InnoDB
			;

			CREATE TABLE `subscribe_blog` (
				`subscribe_blog_no` INT(11) NULL DEFAULT NULL,
				`my_blog_no` INT(11) NULL DEFAULT NULL
			)
			COLLATE='utf8_bin'
			ENGINE=InnoDB
			;



