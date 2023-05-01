--���ӹҺ�ע��� (RegGHB)
IF OBJECT_ID('REGGHB')IS NULL 
CREATE TABLE REGGHB
(
	F_DJH		INTEGER			NOT NULL,					--���ݺ�
	F_DATE		VARCHAR(20)		NULL,						--����
	F_ZLBH		VARCHAR(20)		NULL,						--���Ʊ��
	F_PATIENT	VARCHAR(30)		NULL,						--���߱��
	F_ISJZ		BIT				NULL,						--����
	F_ISCZ		BIT				NULL,						--����
	F_LB		VARCHAR(2)		NULL,						--�Һ����
	F_DEPART	VARCHAR(10)		NULL,						--����
	F_DOCTOR	VARCHAR(10)		NULL,						--ҽʦ
	F_TEL		VARCHAR(20)		NULL,						--�绰
	F_GENDER	VARCHAR(2)		NULL,						--�Ա�
	F_AGE		FLOAT			NULL,						--����
	F_TZ		FLOAT			NULL,						--����
	F_XX		VARCHAR(6)		NULL,						--Ѫ��
	F_JHR		VARCHAR(30)		NULL,						--�ٻ���
	F_JE		FLOAT			NULL,						--���
	F_GBF		FLOAT			NULL,						--������
	F_ISSK		BIT				NULL,						--�Ƿ��տ�
	F_ISBREACK	BIT				NULL,						--�Ƿ��˺�
	F_ISREPEAL	BIT				NULL,						--�Ƿ�ϳ�
	F_YBK		VARCHAR(50)		NULL,						--ҽ������
	F_YBLB		VARCHAR(50)		NULL,						--ҽ�����
	PRIMARY KEY(F_DJH ASC),									--����
	FOREIGN KEY(F_DEPART) REFERENCES BM(F_DM),				--���ҹ�ϵ
	FOREIGN KEY(F_DOCTOR) REFERENCES YWY(F_DM),				--ҽʦ��ϵ
	FOREIGN KEY(F_LB)	  REFERENCES GHLB(F_DM),			--�Һ�����ϵ
)
--�������ӻ��߱����custom ���
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