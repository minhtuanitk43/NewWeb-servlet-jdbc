use newservletjdbc;
--user locolhost
--password: minhtuan123
CREATE TABLE role(
id bigint NOT NULL PRIMARY KEY auto_increment,
name VARCHAR(255) NOT NULL,
code VARCHAR(255) NOT NULL,
createdate TIMESTAMP NULL,
modifieddate TIMESTAMP NULL,
createdby VARCHAR(255) NULL,
modifiedby VARCHAR(255) NULL
);
CREATE TABLE user(
id bigint NOT NULL PRIMARY KEY auto_increment,
username VArCHAR(255) NOT NULL,
password VARCHAR(255) NOT NULL,
fullname VARCHAR(255) NULL,
status int NOT NULL,
roleid bigint NOT NULL,
createddate VARCHAR(255) NULL,
modifieddate VARCHAR(255) NULL,
createdby VARCHAR(255) NULL,
modifiedby VARCHAR(255) NULL
);
ALTER TABLE user ADD CONSTRAINT fk_user_role FOREIGN KEY (roleid) REFERENCES role(id);

CREATE TABLE comment(
id bigint NOT NULL PRIMARY KEY auto_increment,
content TEXT NOT NULL,
userid bigint NOT NULL,
newid bigint NOT NULL,
createddate VARCHAR(255) NULL,
modifieddate VARCHAR(255) NULL,
createdby VARCHAR(255) NULL,
modifiedby VARCHAR(255) NULL
);
ALTER TABLE comment ADD CONSTRAINT fk_comment_user FOREIGN KEY (userid) REFERENCES user(id);
ALTER TABLE comment ADD CONSTRAINT fk_comment_news FOREIGN KEY (newid) REFERENCES news(id);
