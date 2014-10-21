CREATE TABLE sys_domain (
	tx_awesome_url_domain int(11) unsigned DEFAULT '0' NOT NULL,
);

CREATE TABLE tx_awesome_url_domain (
	uid int(11) NOT NULL auto_increment,
	pid int(11) DEFAULT '0' NOT NULL,

	tstamp int(11) DEFAULT '0' NOT NULL,
	crdate int(11) DEFAULT '0' NOT NULL,
	cruser_id int(11) DEFAULT '0' NOT NULL,

	sorting int(10) DEFAULT '0' NOT NULL,
	deleted tinyint(4) DEFAULT '0' NOT NULL,
	hidden tinyint(4) DEFAULT '0' NOT NULL,

	uid_foreign int(11) DEFAULT '0' NOT NULL,

	sys_language_uid int(11) DEFAULT '-1' NOT NULL,
	path_prefix varchar(40) DEFAULT NULL,

	PRIMARY KEY (uid),
	KEY parent (pid)
);
