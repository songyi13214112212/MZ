--诊室
CREATE	TABLE	CLINICROOM
(
	F_DM				VARCHAR(5)		NOT	NULL,
	F_CLINICMC			VARCHAR(50)		NOT NULL,
	F_ZJM				VARCHAR(20)		,
	PRIMARY KEY	(F_DM ASC),
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'诊室ID'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLINICROOM', @level2type=N'COLUMN',@level2name=N'F_DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'诊室MC'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLINICROOM', @level2type=N'COLUMN',@level2name=N'F_CLINICMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'助记码'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLINICROOM', @level2type=N'COLUMN',@level2name=N'F_ZJM'
GO
--科室
CREATE	TABLE	DEPARTMENT
(
	F_DM				VARCHAR(5)		NOT	NULL,
	F_DEPARTMC			VARCHAR(50)		NOT	NULL,
	F_CN				VARCHAR(10)		,
	F_ZJM				VARCHAR(20)		,
	F_TELEPHONE			VARCHAR(100)	,
	F_ROLE				VARCHAR(1)		,
	PRIMARY KEY(F_DM ASC),
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科室ID'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEPARTMENT', @level2type=N'COLUMN',@level2name=N'F_DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科室名称'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEPARTMENT', @level2type=N'COLUMN',@level2name=N'F_DEPARTMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科室简称'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEPARTMENT', @level2type=N'COLUMN',@level2name=N'F_CN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科室助记码'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEPARTMENT', @level2type=N'COLUMN',@level2name=N'F_ZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科室电话'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEPARTMENT', @level2type=N'COLUMN',@level2name=N'F_TELEPHONE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否职能科室' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEPARTMENT', @level2type=N'COLUMN',@level2name=N'F_ROLE'
GO
--挂号类型
CREATE	TABLE	GHLB
(
	F_DM				VARCHAR(5)		NOT NULL,
	F_GHLBMC			VARCHAR(50)		NOT NULL,
	F_ZJM				VARCHAR(20)		,
	F_JE				FLOAT	DEFAULT	0,
	F_GBF				FLOAT	DEFAULT	0,
	PRIMARY KEY(F_DM ASC),
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'挂号类型ID'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GHLB', @level2type=N'COLUMN',@level2name=N'F_DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GHLB', @level2type=N'COLUMN',@level2name=N'F_GHLBMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'助记码'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GHLB', @level2type=N'COLUMN',@level2name=N'F_ZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'金额'			, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GHLB', @level2type=N'COLUMN',@level2name=N'F_JE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工本费'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GHLB', @level2type=N'COLUMN',@level2name=N'F_GBF'
GO
--雇员 
CREATE	TABLE	EMPLOYEE
(
	F_DM				VARCHAR(5)		NOT NULL,
	F_EMPMC				VARCHAR(50)		NOT	NULL,
	F_ZJM				VARCHAR(20)		,
	F_ENTRYTIME			VARCHAR(20)		,
	F_JOB				VARCHAR(50)		,
	F_CN				VARCHAR(10)		,
	F_GENDER			VARCHAR(2)		,
	F_AGE				VARCHAR(10)		,
	F_IDCARD			VARCHAR(18)		,
	F_TELEPHONE			VARCHAR(100)	,
	F_DEPART			VARCHAR(5)		,
	F_CLINIC			VARCHAR(5)		,
	F_GHLB				VARCHAR(5)		,
	PRIMARY KEY(F_DM ASC),
	FOREIGN	KEY(F_DEPART)	REFERENCES DEPARTMENT(F_DM),
	FOREIGN	KEY(F_CLINIC)	REFERENCES CLINICROOM(F_DM),
	FOREIGN KEY(F_GHLB)		REFERENCES GHLB(F_DM),

)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'雇员ID'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'雇员姓名'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_EMPMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'助记码'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_ZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入职时间'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_ENTRYTIME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工作职务 '	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_JOB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'雇员简称'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_CN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别'			, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_GENDER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年龄'			, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_AGE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_IDCARD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_TELEPHONE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属科室'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_DEPART'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属诊室'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_CLINIC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'挂号类型'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EMPLOYEE', @level2type=N'COLUMN',@level2name=N'F_GHLB'
GO
--操作员
CREATE	TABLE	USEROPERATOR
(
	F_DM				VARCHAR(5)		NOT NULL,
	F_USERMC			VARCHAR(50)		NOT NULL,
	F_PASSWORD			VARCHAR(20)		,
	F_EMP				VARCHAR(5)		,
	PRIMARY KEY(F_DM ASC),
	FOREIGN KEY(F_EMP)	REFERENCES	EMPLOYEE(F_DM)
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作员ID'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USEROPERATOR', @level2type=N'COLUMN',@level2name=N'F_DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作员MC'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USEROPERATOR', @level2type=N'COLUMN',@level2name=N'F_USERMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作密码'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USEROPERATOR', @level2type=N'COLUMN',@level2name=N'F_PASSWORD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属雇员'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USEROPERATOR', @level2type=N'COLUMN',@level2name=N'F_EMP'
GO
--诊疗手册
CREATE	TABLE	[DIAGNOSIS TREATMENT MANUAL]
(
	F_DM				VARCHAR(30)			NOT	NULL,
	F_DATE				VARCHAR(10) DEFAULT CONVERT(VARCHAR(10),GETDATE(),120)	 ,
	F_TIME				VARCHAR(10) DEFAULT	CONVERT(VARCHAR(10),GETDATE(),108)	 ,
	F_FULLNAME			VARCHAR(50)			NOT NULL,
	F_ZJM				VARCHAR(20)			,
	F_TELEPHONE			VARCHAR(100)		,
	F_GENDER			VARCHAR(2)			,
	F_AGE				VARCHAR(10)			,
	F_CREATOR			VARCHAR(20)			,
	PRIMARY KEY (F_DM ASC),
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'诊疗手册编号'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS TREATMENT MANUAL', @level2type=N'COLUMN',@level2name=N'F_DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'诊疗手册日期'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS TREATMENT MANUAL', @level2type=N'COLUMN',@level2name=N'F_DATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'诊疗手册时间'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS TREATMENT MANUAL', @level2type=N'COLUMN',@level2name=N'F_TIME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'诊疗手册姓名'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS TREATMENT MANUAL', @level2type=N'COLUMN',@level2name=N'F_FULLNAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'诊疗手册助记码'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS TREATMENT MANUAL', @level2type=N'COLUMN',@level2name=N'F_ZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'诊疗手册联系电话'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS TREATMENT MANUAL', @level2type=N'COLUMN',@level2name=N'F_TELEPHONE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'诊疗手册性别'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS TREATMENT MANUAL', @level2type=N'COLUMN',@level2name=N'F_GENDER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'诊疗手册年龄'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS TREATMENT MANUAL', @level2type=N'COLUMN',@level2name=N'F_AGE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'诊疗手册创建人'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS TREATMENT MANUAL', @level2type=N'COLUMN',@level2name=N'F_CREATOR'
GO
--病人
CREATE	TABLE	[PATIENT]
(
	F_DM				VARCHAR(30)			NOT NULL,
	F_PATIENTMC			VARCHAR(50)			NOT NULL,
	F_GENDER			VARCHAR(1)	CHECK(F_GENDER IN ('男','女')),
	F_AGE				VARCHAR(10)			,
	F_TELEPHONE			VARCHAR(100)		,
	F_IDCARD			VARCHAR(20)			,
	F_ZJM				VARCHAR(20)			,
	F_BIRTHTIME			VARCHAR(10)			,
	F_DATE				VARCHAR(10) DEFAULT CONVERT(VARCHAR(10),GETDATE(),120)	 ,
	F_TIME				VARCHAR(10) DEFAULT	CONVERT(VARCHAR(10),GETDATE(),108)	 ,
	PRIMARY KEY(F_DM ASC),	
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'病人编号'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PATIENT', @level2type=N'COLUMN',@level2name=N'F_DM'
GO																		    
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'病人名称'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PATIENT', @level2type=N'COLUMN',@level2name=N'F_PATIENTMC'
GO																		    
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别'			, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PATIENT', @level2type=N'COLUMN',@level2name=N'F_GENDER'
GO																		    
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年龄'			, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PATIENT', @level2type=N'COLUMN',@level2name=N'F_AGE'
GO																		    
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话'			, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PATIENT', @level2type=N'COLUMN',@level2name=N'F_TELEPHONE'
GO																		    
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PATIENT', @level2type=N'COLUMN',@level2name=N'F_IDCARD'
GO																		    
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'助记码'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PATIENT', @level2type=N'COLUMN',@level2name=N'F_ZJM'
GO																		    
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生'			, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PATIENT', @level2type=N'COLUMN',@level2name=N'F_BIRTHTIME'
GO																		    
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期'			, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PATIENT', @level2type=N'COLUMN',@level2name=N'F_DATE'
GO																		    
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间'			, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PATIENT', @level2type=N'COLUMN',@level2name=N'F_TIME'
GO

--挂号注册
CREATE	TABLE	REISGHB
(
	F_DJH				INT			NOT NULL,
	F_DATE				VARCHAR(10) DEFAULT CONVERT(VARCHAR(10),GETDATE(),120)	 ,
	F_TIME				VARCHAR(10) DEFAULT	CONVERT(VARCHAR(10),GETDATE(),108)	 ,
	F_STATE				VARCHAR(1)	CHECK	(F_STATE IN ('急','平'))			 ,
	F_TYPE				VARCHAR(1)	CHECK	(F_TYPE	IN	('初','复','回'))		 ,
	F_GHLB				VARCHAR(5)	,
	F_DIAGNOSIS			VARCHAR(30)	,
	F_PATIENT			VARCHAR(30) ,
	F_DEPART			VARCHAR(5)	,
	F_EMP				VARCHAR(5)	,
	F_CLINIC			VARCHAR(5)	,
	F_JE				FLOAT		DEFAULT	0,
	F_GBF				FLOAT		DEFAULT	0,
	F_CREATOR			VARCHAR(20)	,
	FOREIGN	KEY(F_DIAGNOSIS)	REFERENCES [DIAGNOSIS TREATMENT MANUAL](F_DM),
	FOREIGN KEY(F_PATIENT)		REFERENCES	PATIENT(F_DM),
	FOREIGN KEY(F_DEPART)		REFERENCES	DEPARTMENT(F_DM),
	FOREIGN KEY(F_EMP)			REFERENCES	EMPLOYEE(F_DM),
	FOREIGN KEY(F_CLINIC)		REFERENCES	CLINICROOM(F_DM),
	FOREIGN KEY(F_GHLB)			REFERENCES	GHLB(F_DM),
	PRIMARY	KEY	(F_DJH),
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据号'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_DJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_DATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_TIME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_STATE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_TYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'诊疗手册'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_DIAGNOSIS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'病人'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_PATIENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'科室'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_DEPART'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'雇员'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_EMP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'诊室'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_CLINIC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'金额'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_JE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工本费'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_GBF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'制单人'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_CREATOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'挂号类型'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHB', @level2type=N'COLUMN',@level2name=N'F_GHLB'
GO
--挂号注册扩展
CREATE	TABLE	REISGHBEXTEND
(
	F_DJH		INT		NOT	NULL,
	F_ISJZ		VARCHAR(1),
	F_ISSAVE	VARCHAR(1),
	F_BRACK		VARCHAR(1),
	F_ISZF		VARCHAR(1),
	PRIMARY KEY (F_DJH ASC),
	FOREIGN KEY(F_DJH)	REFERENCES REISGHB(F_DJH)
	ON UPDATE CASCADE 
	ON DELETE CASCADE
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'挂号注册单据号'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHBEXTEND', @level2type=N'COLUMN',@level2name=N'F_DJH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接诊'				, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHBEXTEND', @level2type=N'COLUMN',@level2name=N'F_ISJZ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保存'				, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHBEXTEND', @level2type=N'COLUMN',@level2name=N'F_ISSAVE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'退号'				, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHBEXTEND', @level2type=N'COLUMN',@level2name=N'F_BRACK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作废'				, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REISGHBEXTEND', @level2type=N'COLUMN',@level2name=N'F_ISZF'
GO
--诊疗项目类别
CREATE	TABLE	DIAGNOSIS_ITEM_CATEGORY
(
	F_DM						VARCHAR(60)		NOT		NULL,
	[F_DIAGNOSIS ITEM CATEGORY] VARCHAR(100) NOT NULL,
	F_JC						INT			,
	F_KC						BIT			,
	PRIMARY KEY(F_DM ASC)					,
	
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'诊疗项目类别编号'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS_ITEM_CATEGORY', @level2type=N'COLUMN',@level2name=N'F_DM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'诊疗项目类别名称'	, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS_ITEM_CATEGORY', @level2type=N'COLUMN',@level2name=N'F_DIAGNOSIS ITEM CATEGORY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'级次'				, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS_ITEM_CATEGORY', @level2type=N'COLUMN',@level2name=N'F_JC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存'				, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS_ITEM_CATEGORY', @level2type=N'COLUMN',@level2name=N'F_KC'
GO
--诊疗项目明细
CREATE	TABLE	DIAGNOSIS_ITEM_DETAIL
(
	F_BH				VARCHAR(60)			NOT	NULL,
	F_DIAGNOSISITEMMC	VARCHAR(100)		NOT	NULL,



	PRIMARY KEY(F_BH ASC)				,
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'诊疗项目编号'		, @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DIAGNOSIS_ITEM_DETAIL', @level2type=N'COLUMN',@level2name=N'F_BH'
GO

