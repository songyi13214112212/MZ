--增加挂号注册表 (RegGHB)
IF OBJECT_ID('REGGHB')IS NULL 
CREATE TABLE REGGHB
(
	F_DJH		INTEGER			NOT NULL,					--单据号
	F_DATE		VARCHAR(20)		NULL,						--日期
	F_ZLBH		VARCHAR(20)		NULL,						--诊疗编号
	F_PATIENT	VARCHAR(30)		NULL,						--患者编号
	F_ISJZ		BIT				NULL,						--急诊
	F_ISCZ		BIT				NULL,						--初诊
	F_LB		VARCHAR(2)		NULL,						--挂号类别
	F_DEPART	VARCHAR(10)		NULL,						--科室
	F_DOCTOR	VARCHAR(10)		NULL,						--医师
	F_TEL		VARCHAR(20)		NULL,						--电话
	F_GENDER	VARCHAR(2)		NULL,						--性别
	F_AGE		FLOAT			NULL,						--年龄
	F_TZ		FLOAT			NULL,						--体重
	F_XX		VARCHAR(6)		NULL,						--血型
	F_JHR		VARCHAR(30)		NULL,						--临护人
	F_JE		FLOAT			NULL,						--金额
	F_GBF		FLOAT			NULL,						--工本费
	F_ISSK		BIT				NULL,						--是否收款
	F_ISBREACK	BIT				NULL,						--是否退号
	F_ISREPEAL	BIT				NULL,						--是否废除
	F_YBK		VARCHAR(50)		NULL,						--医保卡号
	F_YBLB		VARCHAR(50)		NULL,						--医保类别
	PRIMARY KEY(F_DJH ASC),									--主键
	FOREIGN KEY(F_DEPART) REFERENCES BM(F_DM),				--科室关系
	FOREIGN KEY(F_DOCTOR) REFERENCES YWY(F_DM),				--医师关系
	FOREIGN KEY(F_LB)	  REFERENCES GHLB(F_DM),			--挂号类别关系
)
--重新增加患者表代替custom 表格
IF OBJECT_ID('PATIENT')IS NULL 
CREATE TABLE PATIENT
(
	F_DM			VARCHAR(30)			NOT NULL,
	F_MC			VARCHAR(50)			NULL,
	F_ZJM			VARCHAR(50)			NULL,
	F_LB			VARCHAR(10)			NULL,
	F_GENDER		VARCHAR(2)			NULL,
	F_BIRTHDAY		VARCHAR(10)			NULL,
	F_YBK			VARCHAR(50)			NULL,
)