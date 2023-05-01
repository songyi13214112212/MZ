--增加诊疗项目类别表
IF OBJECT_ID('ZLLB') IS NULL  
CREATE TABLE ZLLB(
	F_DM		VARCHAR(30)		NOT NULL,		--代码
	F_MC		VARCHAR(50)		NOT NULL,		--名称
	F_IFKC		BIT			NULL,			--允许库存
	F_JC		INT			NOT NULL,		--级别
	PRIMARY KEY(F_DM ASC)
)
--增加诊疗项目够细 
IF OBJECT_ID(N'ZLXM')IS NULL
CREATE TABLE ZLXM
(
	F_TM			VARCHAR(50)		NULL,		--条码
	F_DM			VARCHAR(30)		NOT NULL,	--代码
	F_MC			VARCHAR(100)		NULL,		--名称
	F_CD			VARCHAR(100)		NULL,		--产地
	F_GG			VARCHAR(100)		NULL,		--规格
	F_ZJM			VARCHAR(100)		NULL,		--助记码
	F_LB1			VARCHAR(10)		NULL,		--类别1
	F_LB2			VARCHAR(10)		NULL,		--类别2
	F_LB3			VARCHAR(10)		NULL,		--类别3
	F_LB4			VARCHAR(10)		NULL,		--类别4
	F_LB5			VARCHAR(10)		NULL,		--类别5
	F_LB6			VARCHAR(10)		NULL,		--类别6
	F_LB7			VARCHAR(10)		NULL,		--类别7
	F_LB8			VARCHAR(10)		NULL,		--类别8
	F_LB9			VARCHAR(10)		NULL,		--类别9
	F_LB10			VARCHAR(10)		NULL,		--类别10
	F_IFKC			BIT			NULL,		--是否库存
	F_IFPH			BIT			NULL,		--是否批号
	F_IFCB			BIT			NULL,		--是否成本
	F_IFPS			BIT			NULL,		--是否皮试
	F_IFZK			BIT			NULL,		--是否折扣	
	F_IFENV			BIT			NULL,		--是否设置
	F_IFSPLIT		BIT			NULL,		--是否拆分
	F_USEDTJ		VARCHAR(20)		NULL,		--给药途径
	F_USEDPC		VARCHAR(20)		NULL,		--给药频次
	F_USEDMD		VARCHAR(20)		NULL,		--给药目地
	F_DW			VARCHAR(6)		NULL,		--单位
	F_DW2			VARCHAR(6)		NULL,		--大单位
	F_USEDDW		VARCHAR(6)		NULL,		--使用小单位
	F_USEDJL		FLOAT			NULL,		--小单位计量
	F_YBLB			VARCHAR(30)		NULL,		--医保类别
	F_ZFBL			FLOAT			NULL,		--支付比例
	F_JX			VARCHAR(10)		NULL,		--剂型
	F_DEPART		VARCHAR(10)		NULL,		--科室
	F_BGY			VARCHAR(10)		NULL,		--保管员
    F_CF			VARCHAR(50)		NULL,		--成分
	F_XZ			VARCHAR(50)		NULL,		--性状
	F_SYZ			TEXT			NULL,		--造应症
	F_YSYL			TEXT			NULL,		--用法用量
	F_BLFY			TEXT			NULL,		--不良反应
	F_CC			VARCHAR(20)		NULL,		--储藏
	F_BZ			VARCHAR(50)		NULL,		--包装
	F_DJ1			FLOAT			NULL,		--售价1
	F_DJ2			FLOAT			NULL,		--售价2
	F_DJ3			FLOAT			NULL,		--售价3
	F_DJ4			FLOAT			NULL,		--售价4
	F_DJ5			FLOAT			NULL,		--售价5
	F_DJ6			FLOAT			NULL,		--售价6
	F_DJ7			FLOAT			NULL,		--售价7
	F_DJ8			FLOAT			NULL,		--售价8	
	F_DJ9			FLOAT			NULL,		--售价9
	F_DJ10			FLOAT			NULL,		--售价10
	F_MAXJJ			FLOAT			NULL,		--最高进价
	F_MINJJ			FLOAT			NULL,		--最低进价	
	F_RECENTLYJJ	FLOAT			NULL,		--最近进价
	F_AVGJJ			FLOAT			NULL,		--平均进价
	F_MAXKC			FLOAT			NULL,		--最大库存
	F_MINKC			FLOAT			NULL,		--最小库存
	F_ISO			VARCHAR(50)		NULL,		--ISO认证
	F_GMP			VARCHAR(50)		NULL,		--GMP认证
	F_PZWH			VARCHAR(50)		NULL,		--批准文号
	F_UC1			VARCHAR(200)		NULL,		--字符1
	F_UC2			VARCHAR(200)		NULL,		--字符1
	F_UC3			VARCHAR(200)		NULL,		--字符1
	F_UC4			VARCHAR(200)		NULL,		--字符1
	F_UC5			VARCHAR(200)		NULL,		--字符1
	F_UC6			VARCHAR(200)		NULL,		--字符1
	F_UC7			VARCHAR(200)		NULL,		--字符1
	F_UC8			VARCHAR(200)		NULL,		--字符1
	F_UC9			VARCHAR(200)		NULL,		--字符1
	F_UC10			VARCHAR(200)		NULL,		--字符1
	F_UN1			INT			NULL,		--整型1
	F_UN2			INT			NULL,		--整型1
	F_UN3			INT			NULL,		--整型1
	F_UN4			INT			NULL,		--整型1	
	F_UN5			INT			NULL,		--整型1
	F_UN6			INT			NULL,		--整型1
	F_UN7			INT			NULL,		--整型1
	F_UN8			INT			NULL,		--整型1
	F_UN9			INT			NULL,		--整型1
	F_UN10			INT			NULL,		--整型1
	F_UF1			FLOAT			NULL,		--浮点1
	F_UF2			FLOAT			NULL,		--浮点1
	F_UF3			FLOAT			NULL,		--浮点1	
	F_UF4			FLOAT			NULL,		--浮点1
	F_UF5			FLOAT			NULL,		--浮点1
	F_UF6			FLOAT			NULL,		--浮点1
	F_UF7			FLOAT			NULL,		--浮点1	
	F_UF8			FLOAT			NULL,		--浮点1
	F_UF9			FLOAT			NULL,		--浮点1
	F_UF10			FLOAT			NULL,		--浮点1
	PRIMARY KEY(F_DM ASC),
	FOREIGN KEY(F_DEPART) REFERENCES BM(F_DM),
	FOREIGN KEY(F_BGY)	  REFERENCES YWY(F_DM),
)
--增加挂号注册表 (REGGHB)
IF OBJECT_ID('REGGHB')IS NULL 
CREATE TABLE REGGHB
(
	F_DJH		INTEGER			NOT NULL,					--单据号
	F_DATE		VARCHAR(20)		NULL,						--日期
	F_ZLBH		VARCHAR(20)		NULL,						--诊疗编号
	F_PATIENT	VARCHAR(30)		NULL,						--患者编号
	F_ISJZ		BIT			NULL,						--急诊
	F_ISCZ		BIT			NULL,						--初诊
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
	F_ISSK		BIT			NULL,						--是否收款
	F_ISBREACK	BIT			NULL,						--是否退号
	F_ISREPEAL	BIT			NULL,						--是否废除
	F_YBK		VARCHAR(50)		NULL,						--医保卡号
	F_YBLB		VARCHAR(50)		NULL,						--医保类别
	PRIMARY KEY(F_DJH ASC),									--主键
	FOREIGN KEY(F_DEPART) REFERENCES BM(F_DM),				--科室关系
	FOREIGN KEY(F_DOCTOR) REFERENCES YWY(F_DM),				--医师关系
	FOREIGN KEY(F_LB)	  REFERENCES GHLB(F_DM),			--挂号类别关系
)
--重新增加患者表代替CUSTOM 表格
IF OBJECT_ID('PATIENT')IS NULL 
CREATE TABLE PATIENT
(
	F_DM			VARCHAR(30)			NOT NULL,		--代码
	F_IMAGES		IMAGE				NULL,			--照片
	F_MC			VARCHAR(50)			NULL,			--姓名
	F_ZJM			VARCHAR(50)			NULL,			--助记码
	F_LB			VARCHAR(10)			NULL,			--类别
	F_GENDER		VARCHAR(2)			NULL,			--性别
	F_BIRTHDAY		VARCHAR(10)			NULL,			--出生日期
	F_YBK			VARCHAR(50)			NULL,			--医保卡
	F_TEL			VARCHAR(20)			NULL,			--电话
	F_IDCARD		VARCHAR(20)			NULL,			--身份证
	F_VIP			VARCHAR(30)			NULL,			--VIP
	F_ACTIVEDATE	VARCHAR(20)			NULL,			--激活日期
	F_DEPOSTIT		FLOAT	DEFAULT		0,				--押金
	F_PASSWORD		VARCHAR(20)			NULL,			--密码
	F_LB1			VARCHAR(10)			NULL,			--类别1
	F_LB2			VARCHAR(10)			NULL,			--类别2
	F_LB3			VARCHAR(10)			NULL,			--类别3
	F_LB4			VARCHAR(10)			NULL,			--类别4
	F_LB5			VARCHAR(10)			NULL,			--类别5
	F_XX			VARCHAR(6)			NULL,			--血型
	F_LJCS			INT	DEFAULT			0,				--累计次数
	F_LJXF			FLOAT	DEFAULT		0,				--累计消费
	F_GRADE			INT		DEFAULT		0,				--等级
	PRIMARY KEY(F_DM ASC),

)
--修改挂号REGGHB 增加与患者表PATIENT 关系
ALTER TABLE REGGHB ADD CONSTRAINT REGGHDF_PATIENT_PATIENTF_DM_0001 FOREIGN KEY (F_PATIENT)	REFERENCES PATIENT(F_DM)
--增加病人记录单表
IF OBJECT_ID('PATIENT_ORDER')IS NULL
CREATE TABLE PATIENT_ORDER
(
 	F_DJH						INT							NOT NULL,		--单据号
 	F_DATE						VARCHAR(20)					NOT NULL,		--日期
	F_DJLX						VARCHAR(10)					NULL,			--单据类型
	F_ZY						VARCHAR(200)				NULL,			--摘要
 	F_JE						FLOAT						NOT NULL,		--单据金额
 	F_PATIENT					VARCHAR(30)					NOT NULL,		--患者编号
)
--修改业务员表增加密码字段
ALTER TABLE YWY ADD F_PASSWORD VARCHAR(20)		DEFAULT '123456'		--增加密码
ALTER TABLE YWY ADD F_QX	   VARCHAR(10)		NULL					--增加权限
ALTER TABLE	YWY	ADD	F_CFQL	   BIT				NULL					--处方权力
ALTER TABLE	YWY	ADD	F_ZC	   VARCHAR(20)		NULL					--增加职称
--科室业修改主营业务科室字段
ALTER	TABLE	BM	ADD	F_MAIN	INT CHECK(F_MAIN IN (1,2))				--主要业务科室