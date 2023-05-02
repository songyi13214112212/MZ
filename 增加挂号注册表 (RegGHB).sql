--����������Ŀ����
IF OBJECT_ID('ZLLB') IS NULL  
CREATE TABLE ZLLB(
	F_DM		VARCHAR(30)		NOT NULL,		--����
	F_MC		VARCHAR(50)		NOT NULL,		--����
	F_IFKC		BIT			NULL,			--������
	F_JC		INT			NOT NULL,		--����
	PRIMARY KEY(F_DM ASC)
)
--����������Ŀ��ϸ 
IF OBJECT_ID(N'ZLXM')IS NULL
CREATE TABLE ZLXM
(
	F_TM			VARCHAR(50)		NULL,		--����
	F_DM			VARCHAR(30)		NOT NULL,	--����
	F_MC			VARCHAR(100)		NULL,		--����
	F_CD			VARCHAR(100)		NULL,		--����
	F_GG			VARCHAR(100)		NULL,		--���
	F_ZJM			VARCHAR(100)		NULL,		--������
	F_LB1			VARCHAR(10)		NULL,		--���1
	F_LB2			VARCHAR(10)		NULL,		--���2
	F_LB3			VARCHAR(10)		NULL,		--���3
	F_LB4			VARCHAR(10)		NULL,		--���4
	F_LB5			VARCHAR(10)		NULL,		--���5
	F_LB6			VARCHAR(10)		NULL,		--���6
	F_LB7			VARCHAR(10)		NULL,		--���7
	F_LB8			VARCHAR(10)		NULL,		--���8
	F_LB9			VARCHAR(10)		NULL,		--���9
	F_LB10			VARCHAR(10)		NULL,		--���10
	F_IFKC			BIT			NULL,		--�Ƿ���
	F_IFPH			BIT			NULL,		--�Ƿ�����
	F_IFCB			BIT			NULL,		--�Ƿ�ɱ�
	F_IFPS			BIT			NULL,		--�Ƿ�Ƥ��
	F_IFZK			BIT			NULL,		--�Ƿ��ۿ�	
	F_IFENV			BIT			NULL,		--�Ƿ�����
	F_IFSPLIT		BIT			NULL,		--�Ƿ���
	F_USEDTJ		VARCHAR(20)		NULL,		--��ҩ;��
	F_USEDPC		VARCHAR(20)		NULL,		--��ҩƵ��
	F_USEDMD		VARCHAR(20)		NULL,		--��ҩĿ��
	F_DW			VARCHAR(6)		NULL,		--��λ
	F_DW2			VARCHAR(6)		NULL,		--��λ
	F_USEDDW		VARCHAR(6)		NULL,		--ʹ��С��λ
	F_USEDJL		FLOAT			NULL,		--С��λ����
	F_YBLB			VARCHAR(30)		NULL,		--ҽ�����
	F_ZFBL			FLOAT			NULL,		--֧������
	F_JX			VARCHAR(10)		NULL,		--����
	F_DEPART		VARCHAR(10)		NULL,		--����
	F_BGY			VARCHAR(10)		NULL,		--����Ա
    F_CF			VARCHAR(50)		NULL,		--�ɷ�
	F_XZ			VARCHAR(50)		NULL,		--��״
	F_SYZ			TEXT			NULL,		--��Ӧ֢
	F_YSYL			TEXT			NULL,		--�÷�����
	F_BLFY			TEXT			NULL,		--������Ӧ
	F_CC			VARCHAR(20)		NULL,		--����
	F_BZ			VARCHAR(50)		NULL,		--��װ
	F_DJ1			FLOAT			NULL,		--�ۼ�1
	F_DJ2			FLOAT			NULL,		--�ۼ�2
	F_DJ3			FLOAT			NULL,		--�ۼ�3
	F_DJ4			FLOAT			NULL,		--�ۼ�4
	F_DJ5			FLOAT			NULL,		--�ۼ�5
	F_DJ6			FLOAT			NULL,		--�ۼ�6
	F_DJ7			FLOAT			NULL,		--�ۼ�7
	F_DJ8			FLOAT			NULL,		--�ۼ�8	
	F_DJ9			FLOAT			NULL,		--�ۼ�9
	F_DJ10			FLOAT			NULL,		--�ۼ�10
	F_MAXJJ			FLOAT			NULL,		--��߽���
	F_MINJJ			FLOAT			NULL,		--��ͽ���	
	F_RECENTLYJJ	FLOAT			NULL,		--�������
	F_AVGJJ			FLOAT			NULL,		--ƽ������
	F_MAXKC			FLOAT			NULL,		--�����
	F_MINKC			FLOAT			NULL,		--��С���
	F_ISO			VARCHAR(50)		NULL,		--ISO��֤
	F_GMP			VARCHAR(50)		NULL,		--GMP��֤
	F_PZWH			VARCHAR(50)		NULL,		--��׼�ĺ�
	F_UC1			VARCHAR(200)		NULL,		--�ַ�1
	F_UC2			VARCHAR(200)		NULL,		--�ַ�1
	F_UC3			VARCHAR(200)		NULL,		--�ַ�1
	F_UC4			VARCHAR(200)		NULL,		--�ַ�1
	F_UC5			VARCHAR(200)		NULL,		--�ַ�1
	F_UC6			VARCHAR(200)		NULL,		--�ַ�1
	F_UC7			VARCHAR(200)		NULL,		--�ַ�1
	F_UC8			VARCHAR(200)		NULL,		--�ַ�1
	F_UC9			VARCHAR(200)		NULL,		--�ַ�1
	F_UC10			VARCHAR(200)		NULL,		--�ַ�1
	F_UN1			INT			NULL,		--����1
	F_UN2			INT			NULL,		--����1
	F_UN3			INT			NULL,		--����1
	F_UN4			INT			NULL,		--����1	
	F_UN5			INT			NULL,		--����1
	F_UN6			INT			NULL,		--����1
	F_UN7			INT			NULL,		--����1
	F_UN8			INT			NULL,		--����1
	F_UN9			INT			NULL,		--����1
	F_UN10			INT			NULL,		--����1
	F_UF1			FLOAT			NULL,		--����1
	F_UF2			FLOAT			NULL,		--����1
	F_UF3			FLOAT			NULL,		--����1	
	F_UF4			FLOAT			NULL,		--����1
	F_UF5			FLOAT			NULL,		--����1
	F_UF6			FLOAT			NULL,		--����1
	F_UF7			FLOAT			NULL,		--����1	
	F_UF8			FLOAT			NULL,		--����1
	F_UF9			FLOAT			NULL,		--����1
	F_UF10			FLOAT			NULL,		--����1
	PRIMARY KEY(F_DM ASC),
	FOREIGN KEY(F_DEPART) REFERENCES BM(F_DM),
	FOREIGN KEY(F_BGY)	  REFERENCES YWY(F_DM),
)
--���ӹҺ�ע��� (REGGHB)
IF OBJECT_ID('REGGHB')IS NULL 
CREATE TABLE REGGHB
(
	F_DJH		INTEGER			NOT NULL,					--���ݺ�
	F_DATE		VARCHAR(20)		NULL,						--����
	F_ZLBH		VARCHAR(20)		NULL,						--���Ʊ��
	F_PATIENT	VARCHAR(30)		NULL,						--���߱��
	F_ISJZ		BIT			NULL,						--����
	F_ISCZ		BIT			NULL,						--����
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
	F_ISSK		BIT			NULL,						--�Ƿ��տ�
	F_ISBREACK	BIT			NULL,						--�Ƿ��˺�
	F_ISREPEAL	BIT			NULL,						--�Ƿ�ϳ�
	F_YBK		VARCHAR(50)		NULL,						--ҽ������
	F_YBLB		VARCHAR(50)		NULL,						--ҽ�����
	PRIMARY KEY(F_DJH ASC),									--����
	FOREIGN KEY(F_DEPART) REFERENCES BM(F_DM),				--���ҹ�ϵ
	FOREIGN KEY(F_DOCTOR) REFERENCES YWY(F_DM),				--ҽʦ��ϵ
	FOREIGN KEY(F_LB)	  REFERENCES GHLB(F_DM),			--�Һ�����ϵ
)
--�������ӻ��߱����CUSTOM ���
IF OBJECT_ID('PATIENT')IS NULL 
CREATE TABLE PATIENT
(
	F_DM			VARCHAR(30)			NOT NULL,		--����
	F_IMAGES		IMAGE				NULL,			--��Ƭ
	F_MC			VARCHAR(50)			NULL,			--����
	F_ZJM			VARCHAR(50)			NULL,			--������
	F_LB			VARCHAR(10)			NULL,			--���
	F_GENDER		VARCHAR(2)			NULL,			--�Ա�
	F_BIRTHDAY		VARCHAR(10)			NULL,			--��������
	F_YBK			VARCHAR(50)			NULL,			--ҽ����
	F_TEL			VARCHAR(20)			NULL,			--�绰
	F_IDCARD		VARCHAR(20)			NULL,			--���֤
	F_VIP			VARCHAR(30)			NULL,			--VIP
	F_ACTIVEDATE	VARCHAR(20)			NULL,			--��������
	F_DEPOSTIT		FLOAT	DEFAULT		0,				--Ѻ��
	F_PASSWORD		VARCHAR(20)			NULL,			--����
	F_LB1			VARCHAR(10)			NULL,			--���1
	F_LB2			VARCHAR(10)			NULL,			--���2
	F_LB3			VARCHAR(10)			NULL,			--���3
	F_LB4			VARCHAR(10)			NULL,			--���4
	F_LB5			VARCHAR(10)			NULL,			--���5
	F_XX			VARCHAR(6)			NULL,			--Ѫ��
	F_LJCS			INT	DEFAULT			0,				--�ۼƴ���
	F_LJXF			FLOAT	DEFAULT		0,				--�ۼ�����
	F_GRADE			INT		DEFAULT		0,				--�ȼ�
	PRIMARY KEY(F_DM ASC),

)
--�޸ĹҺ�REGGHB �����뻼�߱�PATIENT ��ϵ
ALTER TABLE REGGHB ADD CONSTRAINT REGGHDF_PATIENT_PATIENTF_DM_0001 FOREIGN KEY (F_PATIENT)	REFERENCES PATIENT(F_DM)
--���Ӳ��˼�¼����
IF OBJECT_ID('PATIENT_ORDER')IS NULL
CREATE TABLE PATIENT_ORDER
(
 	F_DJH						INT							NOT NULL,		--���ݺ�
 	F_DATE						VARCHAR(20)					NOT NULL,		--����
	F_DJLX						VARCHAR(10)					NULL,			--��������
	F_ZY						VARCHAR(200)				NULL,			--ժҪ
 	F_JE						FLOAT						NOT NULL,		--���ݽ��
 	F_PATIENT					VARCHAR(30)					NOT NULL,		--���߱��
)
--�޸�ҵ��Ա�����������ֶ�
ALTER TABLE YWY ADD F_PASSWORD VARCHAR(20)		DEFAULT '123456'		--��������
ALTER TABLE YWY ADD F_QX	   VARCHAR(10)		NULL					--����Ȩ��
ALTER TABLE	YWY	ADD	F_CFQL	   BIT				NULL					--����Ȩ��
ALTER TABLE	YWY	ADD	F_ZC	   VARCHAR(20)		NULL					--����ְ��
--����ҵ�޸���Ӫҵ������ֶ�
ALTER	TABLE	BM	ADD	F_MAIN	INT CHECK(F_MAIN IN (1,2))				--��Ҫҵ�����
--���������ֲ�
IF OBJECT_ID('ZLSC')IS NULL
CREATE TABLE ZLSC(
	F_DM	VARCHAR(30)		NOT NULL,		--�����ֲ���
	F_DATE	VARCHAR(20)		NULL,			--��������
	F_ACTIVE	BIT	DEFAULT 0 NULL,			--����
	F_ZD	VARCHAR(20)		NULL,			--������
	PRIMARY KEY(F_DM),
)
--���Ӵ������
IF OBJECT_ID('PRESCRIPTIONTYPE') IS NULL
CREATE TABLE PRESCRIPTIONTYPE(
	F_DM		VARCHAR(2)		NOT NULL,		--�������ID
	F_MC		VARCHAR(50)		NULL,			--����
	F_MEMO		VARCHAR(100)	NULL,			--����
	F_COLOR		INT				NULL,			--��ɫ
	PRIMARY KEY(F_DM ASC),
)

--���Ӵ���
IF OBJECT_ID('PRESCRIPTION')IS NULL
CREATE TABLE PRESCRIPTION (
		F_DJH		INT			NOT NULL,		--�������ݺ�
		F_DATE		VARCHAR(20) NULL,			--����
		F_TYPE		VARCHAR(2)	NULL,			--��������
		F_REGGHB	INT			NULL,			--�Һŵ���
		F_PATIENT	VARCHAR(30) NULL,			--���˱��
		F_ZLBH		VARCHAR(30) NULL,			--�����ֲ�
		F_DEPART	VARCHAR(10) NULL,			--����
		F_DOCTOR	VARCHAR(10) NULL,			--ҽʦ
		F_ZD		VARCHAR(20) NULL,			--�Ƶ���
		F_ISSAVE	BIT			NULL,			--����
		F_ISSK		BIT			NULL,			--�տ�
		F_ISREPEAL	BIT			NULL,			--�ϳ�
		F_DJH0		INT			NULL,			--�������ݺ�
		F_JS		FLOAT	DEFAULT 0,			--������
		F_JSR		VARCHAR(20) NULL,			--������
		PRIMARY KEY (F_DJH ASC),
		FOREIGN KEY(F_REGGHB) REFERENCES REGGHB(F_DJH),
		FOREIGN KEY(F_PATIENT)REFERENCES PATIENT(F_DM),
		FOREIGN	KEY(F_DEPART) REFERENCES BM(F_DM),
		FOREIGN KEY(F_DOCTOR) REFERENCES YWY(F_DM),
		FOREIGN KEY(F_TYPE)	  REFERENCES PRESCRIPTIONTYPE(F_DM),

)
--���Ӵ�����ϸ
IF OBJECT_ID('PRESCRIPTIONDETALIED')IS NULL
CREATE TABLE PRESCRIPTIONDETALIED(
	F_DJH		INT			NOT NULL,
	F_HC		INT			NOT NULL,
	F_GROUP		INT			NOT NULL,
	F_ZLXM		VARCHAR(30)		NULL,
	F_MC			VARCHAR(100)		NULL,		--����
	F_CD			VARCHAR(100)		NULL,		--����
	F_GG			VARCHAR(100)		NULL,		--���
	F_IFKC			BIT			NULL,		--�Ƿ���
	F_IFPH			BIT			NULL,		--�Ƿ�����
	F_IFCB			BIT			NULL,		--�Ƿ�ɱ�
	F_IFPS			BIT			NULL,		--�Ƿ�Ƥ��
	F_IFZK			BIT			NULL,		--�Ƿ��ۿ�	
	F_IFENV			BIT			NULL,		--�Ƿ�����
	F_IFSPLIT		BIT			NULL,		--�Ƿ���
	F_USEDTJ		VARCHAR(20)		NULL,		--��ҩ;��
	F_USEDPC		VARCHAR(20)		NULL,		--��ҩƵ��
	F_USEDMD		VARCHAR(20)		NULL,		--��ҩĿ��
	F_DW			VARCHAR(6)		NULL,		--��λ
	F_SL			FLOAT			NULL,		--����
	F_DW2			VARCHAR(6)		NULL,		--��λ
	F_USEDDW		VARCHAR(6)		NULL,		--ʹ��С��λ
	F_USEDJL		FLOAT			NULL,		--С��λ����
	F_YBLB			VARCHAR(30)		NULL,		--ҽ�����
	F_ZFBL			FLOAT			NULL,		--֧������
	F_JX			VARCHAR(10)		NULL,		--����
	F_DEPART		VARCHAR(10)		NULL,		--����
	F_BGY			VARCHAR(10)		NULL,		--����Ա
    F_CF			VARCHAR(50)		NULL,		--�ɷ�
	F_XZ			VARCHAR(50)		NULL,		--��״
	F_SYZ			TEXT			NULL,		--��Ӧ֢
	F_YSYL			TEXT			NULL,		--�÷�����
	F_BLFY			TEXT			NULL,		--������Ӧ
	F_CC			VARCHAR(20)		NULL,		--����
	F_BZ			VARCHAR(50)		NULL,		--��װ
	PRIMARY KEY(F_DJH,F_HC ASC),
	FOREIGN KEY(F_ZLXM)	REFERENCES	ZLXM(F_DM),
)