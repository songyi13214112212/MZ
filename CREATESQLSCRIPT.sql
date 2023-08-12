/*
����
 */
 CREATE	TABLE	KS
(
F_KS		VARCHAR(5)		NOT	NULL,
F_KSMC		VARCHAR(50)		NOT	NULL,
F_ZJM		VARCHAR(20)		,
F_ZTBH		VARCHAR(5)		,
F_CN		VARCHAR(20)		,
F_ROLE		VARCHAR(1)		,
PRIMARY KEY (F_KS ASC),
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID'		, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'KS'	, @level2type=N'COLUMN'	,@level2name=N'F_KS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����MC'		, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'KS'	, @level2type=N'COLUMN'	,@level2name=N'F_KSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������'		, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'KS'	, @level2type=N'COLUMN'	,@level2name=N'F_ZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ױ��'		, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'KS'	, @level2type=N'COLUMN'	,@level2name=N'F_ZTBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���'			, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'KS'	, @level2type=N'COLUMN'	,@level2name=N'F_CN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְ��'			, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'KS'	, @level2type=N'COLUMN'	,@level2name=N'F_ROLE'
GO
/*
����
*/
CREATE	TABLE	ZS
(
F_ZS		VARCHAR(5)		NOT	NULL,
F_ZSMC		VARCHAR(50)		NOT	NULL,
F_ZJM		VARCHAR(20)		,
F_ZTBH		VARCHAR(5)		,
F_CN		VARCHAR(20)		,
PRIMARY KEY(F_ZS ASC)
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ID'		, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'ZS'	, @level2type=N'COLUMN'	,@level2name=N'F_ZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����MC'		, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'ZS'	, @level2type=N'COLUMN'	,@level2name=N'F_ZSMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������'		, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'ZS'	, @level2type=N'COLUMN'	,@level2name=N'F_ZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ױ��'		, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'ZS'	, @level2type=N'COLUMN'	,@level2name=N'F_ZTBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���'			, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'ZS'	, @level2type=N'COLUMN'	,@level2name=N'F_CN'
GO
/*
ְ��
*/
CREATE	TABLE	ZC
(
F_ZC		VARCHAR(5)		NOT NULL,
F_ZCMC		VARCHAR(50)		NOT	NULL,
F_ZJM		VARCHAR(20)		,
F_ZTBH		VARCHAR(5)		,
F_CN		VARCHAR(20)		,
PRIMARY KEY(F_ZC ASC),
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְ��ID'		, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'ZC'	, @level2type=N'COLUMN'	,@level2name=N'F_ZC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְ��MC'		, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'ZC'	, @level2type=N'COLUMN'	,@level2name=N'F_ZCMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������'		, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'ZC'	, @level2type=N'COLUMN'	,@level2name=N'F_ZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ױ��'		, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'ZC'	, @level2type=N'COLUMN'	,@level2name=N'F_ZTBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���'			, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'ZC'	, @level2type=N'COLUMN'	,@level2name=N'F_CN'
GO
/*
ְҵ
*/
CREATE	TABLE	ZY
(
F_ZY		VARCHAR(5)		NOT NULL,
F_ZYMC		VARCHAR(50)		NOT NULL,
F_ZJM		VARCHAR(20)		,
F_ZTBH		VARCHAR(5)		,
F_CN		VARCHAR(20)		,
PRIMARY KEY(F_ZY ASC),
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְҵID'	, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'ZY'	, @level2type=N'COLUMN'	,@level2name=N'F_ZY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְҵMC'	, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'ZY'	, @level2type=N'COLUMN'	,@level2name=N'F_ZYMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������'	, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'ZY'	, @level2type=N'COLUMN'	,@level2name=N'F_ZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ױ��'	, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'ZY'	, @level2type=N'COLUMN'	,@level2name=N'F_ZTBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���'		, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'ZY'	, @level2type=N'COLUMN'	,@level2name=N'F_CN'
GO
/*
��Ա
*/
CREATE	TABLE	EMP
(
F_EMP		VARCHAR(5)		NOT NULL,
F_EMPMC		VARCHAR(50)		NOT NULL,
F_ZJM		VARCHAR(20)		,
F_ZTBH		VARCHAR(5)		,
F_CN		VARCHAR(20)		,
F_KS		VARCHAR(5)		,
F_ZS		VARCHAR(5)		,
F_ZC		VARCHAR(5)		,
F_ZY		VARCHAR(5)		,
F_AF		VARCHAR(1)		,
PRIMARY KEY (F_EMP ASC),
FOREIGN KEY (F_KS)  REFERENCES KS(F_KS),
FOREIGN	KEY (F_ZS)	REFERENCES ZS(F_ZS),
FOREIGN KEY (F_ZC)  REFERENCES ZC(F_ZC),
FOREIGN KEY (F_ZY)	REFERENCES ZY(F_ZY),
)
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ԱID'	, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'EMP'	, @level2type=N'COLUMN'	,@level2name=N'F_EMP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ԱMC'	, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'EMP'	, @level2type=N'COLUMN'	,@level2name=N'F_EMPMC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������'	, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'EMP'	, @level2type=N'COLUMN'	,@level2name=N'F_ZJM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ױ��'	, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'EMP'	, @level2type=N'COLUMN'	,@level2name=N'F_ZTBH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���'		, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'EMP'	, @level2type=N'COLUMN'	,@level2name=N'F_CN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����'		, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'EMP'	, @level2type=N'COLUMN'	,@level2name=N'F_KS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����'		, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'EMP'	, @level2type=N'COLUMN'	,@level2name=N'F_ZS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְ��'		, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'EMP'	, @level2type=N'COLUMN'	,@level2name=N'F_ZC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְҵ'		, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'EMP'	, @level2type=N'COLUMN'	,@level2name=N'F_ZY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����'		, @level0type=N'SCHEMA',@level0name=N'dbo'	, @level1type=N'TABLE'	,@level1name=N'EMP'	, @level2type=N'COLUMN'	,@level2name=N'F_AF'
GO