
CREATE OR REPLACE TABLE TBAE_USER(
	USER_ID			INTEGER 	NOT NULL AUTO_INCREMENT,
	USER_NAME		VARCHAR(64)	NOT NULL,
	USER_PASSWORD	VARCHAR(64)	NOT NULL,
	
	PRIMARY KEY(USER_ID)
);


CREATE OR REPLACE TABLE TBAE_ROLE(
	ROLE_ID			INTEGER 	NOT NULL AUTO_INCREMENT,
	ROLE_NAME		VARCHAR(64)	NOT NULL,
	
	PRIMARY KEY(ROLE_ID)
);



CREATE OR REPLACE TABLE TBAE_USER_ROLE(
	USER_ROLE_ID	INTEGER		NOT NULL AUTO_INCREMENT,
	ROLE_ID			INTEGER		NOT NULL,
	USER_ID			INTEGER 	NOT NULL,
	
	PRIMARY KEY(USER_ROLE_ID)
);


CREATE OR REPLACE TABLE TBAE_LOGIN(
       LOGIN_ID			INTEGER		NOT NULL AUTO_INCREMENT,
       USER_ID	 		INTEGER		NOT NULL,
       TOKEN	 		VARCHAR(16)	NOT NULL,
       CREATION_DATE		TIMESTAMP	NOT NULL,
       EXPIRE_DATE		TIMESTAMP	NOT NULL,

       PRIMARY KEY(LOGIN_ID)
);
