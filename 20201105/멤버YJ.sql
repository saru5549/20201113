ALTER TABLE memberChap04 ADD REG_DATE timestamp(8);

select * from memberChap04;


create table memberChap04(
    idx NUMERIC(5),
    name varchar(30),
	gender varchar(30),
	id varchar(30),
	pwd varchar(30),
	cpwd varchar(30),
	addr varchar(200),
	phone varchar(30),
	email varchar(50),
	hobby varchar(200)
);

select * from "SCOTT"."MEMBER_YJ";


INSERT INTO "SCOTT"."MEMBER_YJ"
(ID, PASSWD, DATE_NUMBER, EMAIL, ADDRESS, TEL, NAME, reg_date) 
VALUES ('11', 'aa', 'aa', 'aa', 'aa', 'aa', 'name', sysdate);

commit;


CREATE TABLE "SCOTT"."MEMBER_YJ" 
   (	"ID" VARCHAR2(15 BYTE) NOT NULL ENABLE, 
	"PASSWD" VARCHAR2(12 BYTE) NOT NULL ENABLE, 
	"DATE_NUMBER" VARCHAR2(15 BYTE), 
	"EMAIL" VARCHAR2(30 BYTE), 
	"ADDRESS" VARCHAR2(25 BYTE), 
	"TEL" VARCHAR2(13 BYTE), 
	"NAME" VARCHAR2(15 BYTE) NOT NULL ENABLE, 
	"REG_DATE" TIMESTAMP (6) NOT NULL ENABLE
   );