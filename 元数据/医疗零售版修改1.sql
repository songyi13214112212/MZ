/*    ==脚本参数==

    源服务器版本 : SQL Server 2012 (11.0.3128)
    源数据库引擎版本 : Microsoft SQL Server Standard Edition
    源数据库引擎类型 : 独立的 SQL Server

    目标服务器版本 : SQL Server 2012
    目标数据库引擎版本 : Microsoft SQL Server Standard Edition
    目标数据库引擎类型 : 独立的 SQL Server
*/

/****** Object:  Table [dbo].[BUSINESS_DETAILS_TABLE]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BUSINESS_DETAILS_TABLE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BUSINESS_DETAILS_TABLE](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_GROUP] [int] NOT NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRODUCTBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_PRODUCTMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRODUCTGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLJC] [float] NULL,
	[F_SL2] [float] NULL,
	[F_KL] [int] NULL,
	[F_CB] [float] NULL,
	[F_FPH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DWCB] [float] NULL,
	[F_RATE] [float] NULL,
	[F_HSDJ] [float] NULL,
	[F_PC] [int] NULL,
	[F_SLYE] [float] NULL,
	[F_PDSL] [float] NULL,
	[F_PYSL] [float] NULL,
	[F_RJXL] [float] NULL,
	[F_JYSL] [float] NULL,
	[F_YLF] [float] NULL,
	[F_JGF] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_DJ11] [float] NULL,
	[F_DJ12] [float] NULL,
	[F_DJ21] [float] NULL,
	[F_DJ22] [float] NULL,
	[F_DJ31] [float] NULL,
	[F_DJ32] [float] NULL,
	[F_DJ42] [float] NULL,
	[F_DJ41] [float] NULL,
	[F_DJ51] [float] NULL,
	[F_DJ52] [float] NULL,
	[F_DW1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_BUSINESS_DETAILS_TABLE_01215650] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC,
	[F_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BUSINESS_DETAILS_TABLE2]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BUSINESS_DETAILS_TABLE2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BUSINESS_DETAILS_TABLE2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_GROUP] [int] NOT NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRODUCTBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_PRODUCTMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRODUCTGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLJC] [float] NULL,
	[F_SL2] [float] NULL,
	[F_KL] [int] NULL,
	[F_CB] [float] NULL,
	[F_FPH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DWCB] [float] NULL,
	[F_RATE] [float] NULL,
	[F_HSDJ] [float] NULL,
	[F_PC] [int] NULL,
	[F_SLYE] [float] NULL,
	[F_PDSL] [float] NULL,
	[F_PYSL] [float] NULL,
	[F_RJXL] [float] NULL,
	[F_JYSL] [float] NULL,
	[F_YLF] [float] NULL,
	[F_JGF] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_DJ11] [float] NULL,
	[F_DJ12] [float] NULL,
	[F_DJ21] [float] NULL,
	[F_DJ22] [float] NULL,
	[F_DJ31] [float] NULL,
	[F_DJ32] [float] NULL,
	[F_DJ42] [float] NULL,
	[F_DJ41] [float] NULL,
	[F_DJ51] [float] NULL,
	[F_DJ52] [float] NULL,
	[F_DW1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_BUSINESS_DETAILS_TABLE2_01215650] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC,
	[F_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BUSINESS_DETAILS_TABLE3]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BUSINESS_DETAILS_TABLE3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BUSINESS_DETAILS_TABLE3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_GROUP] [int] NOT NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRODUCTBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_PRODUCTMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRODUCTGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLJC] [float] NULL,
	[F_SL2] [float] NULL,
	[F_KL] [int] NULL,
	[F_CB] [float] NULL,
	[F_FPH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DWCB] [float] NULL,
	[F_RATE] [float] NULL,
	[F_HSDJ] [float] NULL,
	[F_PC] [int] NULL,
	[F_SLYE] [float] NULL,
	[F_PDSL] [float] NULL,
	[F_PYSL] [float] NULL,
	[F_RJXL] [float] NULL,
	[F_JYSL] [float] NULL,
	[F_YLF] [float] NULL,
	[F_JGF] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_DJ11] [float] NULL,
	[F_DJ12] [float] NULL,
	[F_DJ21] [float] NULL,
	[F_DJ22] [float] NULL,
	[F_DJ31] [float] NULL,
	[F_DJ32] [float] NULL,
	[F_DJ42] [float] NULL,
	[F_DJ41] [float] NULL,
	[F_DJ51] [float] NULL,
	[F_DJ52] [float] NULL,
	[F_DW1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_BUSINESS_DETAILS_TABLE3_01215650] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC,
	[F_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BUSINESS_MASTER_TABLE]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BUSINESS_MASTER_TABLE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BUSINESS_MASTER_TABLE](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DEP] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_EMP] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LOCAL] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2] [float] NULL,
	[F_LOCAL1] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LOCAL2] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_NEWPRODUCT] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PSZQ] [int] NULL,
	[F_LJZQ] [int] NULL,
	[F_JZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DHDJH] [int] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_PRODUCTMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRODUCTBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRODUCTGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SHL] [float] NULL,
	[F_DW1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_BUSINESS_MASTER_TABLE_45623116] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BUSINESS_MASTER_TABLE2]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BUSINESS_MASTER_TABLE2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BUSINESS_MASTER_TABLE2](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DEP] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_EMP] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LOCAL] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2] [float] NULL,
	[F_LOCAL1] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LOCAL2] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_NEWPRODUCT] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PSZQ] [int] NULL,
	[F_LJZQ] [int] NULL,
	[F_JZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DHDJH] [int] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_PRODUCTMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRODUCTBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRODUCTGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SHL] [float] NULL,
	[F_DW1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_BUSINESS_MASTER_TABLE2_45623116] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BUSINESS_MASTER_TABLE3]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BUSINESS_MASTER_TABLE3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BUSINESS_MASTER_TABLE3](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DEP] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_EMP] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LOCAL] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2] [float] NULL,
	[F_LOCAL1] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LOCAL2] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_NEWPRODUCT] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PSZQ] [int] NULL,
	[F_LJZQ] [int] NULL,
	[F_JZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DHDJH] [int] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_PRODUCTMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRODUCTBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRODUCTGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SHL] [float] NULL,
	[F_DW1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_BUSINESS_MASTER_TABLE3_45623116] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CUSTOM]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOM](
	[F_DM] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
	[F_KHXH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TEL] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_POSTCODE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ADDRESS] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LXR] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_KHH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_QCYE] [float] NULL,
	[F_QMYE] [float] NULL,
	[F_SXED] [float] NULL,
	[F_J1] [float] NULL,
	[F_D1] [float] NULL,
	[F_J2] [float] NULL,
	[F_D2] [float] NULL,
	[F_J3] [float] NULL,
	[F_D3] [float] NULL,
	[F_J4] [float] NULL,
	[F_D4] [float] NULL,
	[F_J5] [float] NULL,
	[F_D5] [float] NULL,
	[F_J6] [float] NULL,
	[F_D6] [float] NULL,
	[F_J7] [float] NULL,
	[F_D7] [float] NULL,
	[F_J8] [float] NULL,
	[F_D8] [float] NULL,
	[F_J9] [float] NULL,
	[F_D9] [float] NULL,
	[F_J10] [float] NULL,
	[F_D10] [float] NULL,
	[F_J11] [float] NULL,
	[F_D11] [float] NULL,
	[F_J12] [float] NULL,
	[F_D12] [float] NULL,
	[F_GROUP] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZJM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB1] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB2] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB3] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB4] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC1] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC2] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC3] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC4] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC5] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN1] [float] NULL,
	[F_UN2] [float] NULL,
	[F_UN3] [float] NULL,
	[F_UN4] [float] NULL,
	[F_UN5] [float] NULL,
 CONSTRAINT [PK__CUSTOM__2C6EEFB6CA786CFA] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CUSTOMERPRODUCTS]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMERPRODUCTS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMERPRODUCTS](
	[F_CUSTOM] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_PRODUCTBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MINDJ] [float] NULL,
	[F_MAXDJ] [float] NULL,
	[F_RECENTDJ] [float] NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NULL,
 CONSTRAINT [PK__CUSTOMERPRODUCTS__41B72FC0925F853A] PRIMARY KEY CLUSTERED 
(
	[F_CUSTOM] ASC,
	[F_PRODUCTBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CUSTOMGRADE]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMGRADE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMGRADE](
	[F_DM] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_KL] [int] NULL,
	[F_PRICENUMBER] [int] NULL,
 CONSTRAINT [PK__CUSTOMGR__2C6EEFB6AC4B87B3] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CUSTOMGROUP]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMGROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMGROUP](
	[F_DM] [varchar](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](40) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK__CUSTOMGR__2C6EEFB64F72E00E] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CUSTOMLB]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMLB](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_JC] [int] NULL,
 CONSTRAINT [PK__CUSTOMLB__2C6EEFB673508161] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DBZZ]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBZZ](
	[F_PRODUCTBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_LOCAL] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SLS1] [float] NULL,
	[F_SLS2] [float] NULL,
	[F_SLS3] [float] NULL,
	[F_SLS4] [float] NULL,
	[F_SLS5] [float] NULL,
	[F_SLS6] [float] NULL,
	[F_SLS7] [float] NULL,
	[F_SLS8] [float] NULL,
	[F_SLS9] [float] NULL,
	[F_SLS10] [float] NULL,
	[F_SLS11] [float] NULL,
	[F_SLS12] [float] NULL,
	[F_JES1] [float] NULL,
	[F_JES2] [float] NULL,
	[F_JES3] [float] NULL,
	[F_JES4] [float] NULL,
	[F_JES5] [float] NULL,
	[F_JES6] [float] NULL,
	[F_JES7] [float] NULL,
	[F_JES8] [float] NULL,
	[F_JES9] [float] NULL,
	[F_JES10] [float] NULL,
	[F_JES11] [float] NULL,
	[F_JES12] [float] NULL,
	[F_SLF1] [float] NULL,
	[F_SLF2] [float] NULL,
	[F_SLF3] [float] NULL,
	[F_SLF4] [float] NULL,
	[F_SLF5] [float] NULL,
	[F_SLF6] [float] NULL,
	[F_SLF7] [float] NULL,
	[F_SLF8] [float] NULL,
	[F_SLF9] [float] NULL,
	[F_SLF10] [float] NULL,
	[F_SLF11] [float] NULL,
	[F_SLF12] [float] NULL,
	[F_JEF1] [float] NULL,
	[F_JEF2] [float] NULL,
	[F_JEF3] [float] NULL,
	[F_JEF4] [float] NULL,
	[F_JEF5] [float] NULL,
	[F_JEF6] [float] NULL,
	[F_JEF7] [float] NULL,
	[F_JEF8] [float] NULL,
	[F_JEF9] [float] NULL,
	[F_JEF10] [float] NULL,
	[F_JEF11] [float] NULL,
	[F_JEF12] [float] NULL,
 CONSTRAINT [PK__DBZZ__8278C62475A550A5] PRIMARY KEY CLUSTERED 
(
	[F_PRODUCTBH] ASC,
	[F_LOCAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DEPARTMENT]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DEPARTMENT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DEPARTMENT](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DEPMC] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DE] [float] NULL,
 CONSTRAINT [PK__DEPARTMENT__2C6EEFB69F2823B6] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DJH]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DJH](
	[F_JHD] [int] NULL,
	[F_XHD] [int] NULL,
	[F_CGD] [int] NULL,
	[F_RKD] [int] NULL,
	[F_CKD] [int] NULL,
	[F_DBD] [int] NULL,
	[F_XSBB] [int] NULL,
	[F_PC] [int] NULL,
	[F_YSJSD] [int] NULL,
	[F_YFJSD] [int] NULL,
	[F_ZZD] [int] NULL,
	[F_TJD] [int] NULL,
	[F_PSD] [int] NULL,
	[F_JIEZ] [int] NULL,
	[F_DHD] [int] NULL,
	[F_YSQC] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YFQC] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CX] [int] NULL,
	[F_QDD] [int] NULL,
	[F_NEWPRODUCT] [int] NULL,
	[F_ENEMY] [int] NULL,
	[F_PDD] [int] NULL,
	[F_PRODUCT] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EMPLOYEE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EMPLOYEE](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_EMPMC] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DEP] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DE] [float] NULL,
 CONSTRAINT [PK__EMPLOYEE__2C6EEFB618096A46] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EVENT]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EVENT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EVENT](
	[F_DJLX] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX] [int] NOT NULL,
	[F_CONDITION] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TYPE] [varchar](4) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HINT] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__EVENT__AD8EBB6ABE226BCC] PRIMARY KEY CLUSTERED 
(
	[F_DJLX] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[FIELDCUSTOMIZED]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FIELDCUSTOMIZED]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FIELDCUSTOMIZED](
	[F_DJLX] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX] [int] NOT NULL,
	[F_FIELD] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DIPRODUCTLAYLABEL] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CAPTION] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_WIDTH] [int] NULL,
	[F_READONLY] [varchar](5) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VISIBLE] [varchar](5) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PANEL] [varchar](5) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__FIELDCUSTOMIZED__AD8EBB6A9F814C5E] PRIMARY KEY CLUSTERED 
(
	[F_DJLX] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHZZ]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHZZ](
	[F_PRODUCTBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_LOCAL] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SL1] [float] NULL,
	[F_SL2] [float] NULL,
	[F_SL3] [float] NULL,
	[F_SL4] [float] NULL,
	[F_SL5] [float] NULL,
	[F_SL6] [float] NULL,
	[F_SL7] [float] NULL,
	[F_SL8] [float] NULL,
	[F_SL9] [float] NULL,
	[F_SL10] [float] NULL,
	[F_SL11] [float] NULL,
	[F_SL12] [float] NULL,
	[F_JE1] [float] NULL,
	[F_JE2] [float] NULL,
	[F_JE3] [float] NULL,
	[F_JE4] [float] NULL,
	[F_JE5] [float] NULL,
	[F_JE6] [float] NULL,
	[F_JE7] [float] NULL,
	[F_JE8] [float] NULL,
	[F_JE9] [float] NULL,
	[F_JE10] [float] NULL,
	[F_JE11] [float] NULL,
	[F_JE12] [float] NULL,
	[F_SE1] [float] NULL,
	[F_SE2] [float] NULL,
	[F_SE3] [float] NULL,
	[F_SE4] [float] NULL,
	[F_SE5] [float] NULL,
	[F_SE6] [float] NULL,
	[F_SE7] [float] NULL,
	[F_SE8] [float] NULL,
	[F_SE9] [float] NULL,
	[F_SE10] [float] NULL,
	[F_SE11] [float] NULL,
	[F_SE12] [float] NULL,
 CONSTRAINT [PK__JHZZ__8278C6249D220FEE] PRIMARY KEY CLUSTERED 
(
	[F_PRODUCTBH] ASC,
	[F_LOCAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JSFS]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JSFS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JSFS](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_JC] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JSFS__2C6EEFB6FFC81D56] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[KCMXZ]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KCMXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KCMXZ](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLS] [float] NULL,
	[F_JES] [float] NULL,
	[F_SLF] [float] NULL,
	[F_JEF] [float] NULL,
	[F_LOCAL] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_PRODUCTBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLX] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HC] [int] NULL,
	[F_CX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[KCYE]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KCYE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KCYE](
	[F_PRODUCTBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_LOCAL] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SLYE] [float] NULL,
 CONSTRAINT [PK__KCYE__8278C624736D3242] PRIMARY KEY CLUSTERED 
(
	[F_PRODUCTBH] ASC,
	[F_LOCAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[KCZZ]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KCZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KCZZ](
	[F_PRODUCTBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_LOCAL] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SL0] [float] NULL,
	[F_JE0] [float] NULL,
	[F_SLYE] [float] NULL,
	[F_JEYE] [float] NULL,
	[F_PJDJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_JJ] [float] NULL,
	[F_SLS1] [float] NULL,
	[F_SLS2] [float] NULL,
	[F_SLS3] [float] NULL,
	[F_SLS4] [float] NULL,
	[F_SLS5] [float] NULL,
	[F_SLS6] [float] NULL,
	[F_SLS7] [float] NULL,
	[F_SLS8] [float] NULL,
	[F_SLS9] [float] NULL,
	[F_SLS10] [float] NULL,
	[F_SLS11] [float] NULL,
	[F_SLS12] [float] NULL,
	[F_JES1] [float] NULL,
	[F_JES2] [float] NULL,
	[F_JES3] [float] NULL,
	[F_JES4] [float] NULL,
	[F_JES5] [float] NULL,
	[F_JES6] [float] NULL,
	[F_JES7] [float] NULL,
	[F_JES8] [float] NULL,
	[F_JES9] [float] NULL,
	[F_JES10] [float] NULL,
	[F_JES11] [float] NULL,
	[F_JES12] [float] NULL,
	[F_SLF1] [float] NULL,
	[F_SLF2] [float] NULL,
	[F_SLF3] [float] NULL,
	[F_SLF4] [float] NULL,
	[F_SLF5] [float] NULL,
	[F_SLF6] [float] NULL,
	[F_SLF7] [float] NULL,
	[F_SLF8] [float] NULL,
	[F_SLF9] [float] NULL,
	[F_SLF10] [float] NULL,
	[F_SLF11] [float] NULL,
	[F_SLF12] [float] NULL,
	[F_JEF1] [float] NULL,
	[F_JEF2] [float] NULL,
	[F_JEF3] [float] NULL,
	[F_JEF4] [float] NULL,
	[F_JEF5] [float] NULL,
	[F_JEF6] [float] NULL,
	[F_JEF7] [float] NULL,
	[F_JEF8] [float] NULL,
	[F_JEF9] [float] NULL,
	[F_JEF10] [float] NULL,
	[F_JEF11] [float] NULL,
	[F_JEF12] [float] NULL,
 CONSTRAINT [PK__KCZZ__8278C6243EC649F1] PRIMARY KEY CLUSTERED 
(
	[F_PRODUCTBH] ASC,
	[F_LOCAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[KJQJ]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KJQJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KJQJ](
	[F_YF] [int] NOT NULL,
	[F_START] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_END] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__KJQJ__2C6D7DE5AB19529C] PRIMARY KEY CLUSTERED 
(
	[F_YF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LOCAL]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LOCAL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LOCAL](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_LOCALMC] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_LOCAL] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__LOCAL__2C6EEFB64EEEC8BA] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OPERATOR]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OPERATOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OPERATOR](
	[F_BH] [varchar](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_NAME] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_PASSWORD] [varchar](15) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DEP] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZN] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_RED] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__OPERATOR__2C6E30FA36DE9BD0] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[POWER]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[POWER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[POWER](
	[F_CZY] [varchar](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_ZT] [varchar](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_GN] [varchar](4) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_QX] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SY] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DY] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[POWERINFOR]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[POWERINFOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[POWERINFOR](
	[F_BH] [varchar](4) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_NAME] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CAPTION] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CLASSNAME] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRODUCT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRODUCT](
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRODUCTBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_PRODUCTMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_PRODUCTGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CBFF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MAXSL] [float] NULL,
	[F_MINSL] [float] NULL,
	[F_SLV] [float] NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_BZQ] [int] NULL,
	[F_ZJM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_DWCB] [float] NULL,
	[F_IFPH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MAXPC] [int] NULL,
	[F_IFSJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_RATE] [float] NULL,
	[F_FUNCTION] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PHCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB1] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB2] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB3] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB4] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB5] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB6] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB7] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB8] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB9] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB10] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC1] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC2] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC3] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC4] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC5] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN1] [float] NULL,
	[F_UN2] [float] NULL,
	[F_UN3] [float] NULL,
	[F_UN4] [float] NULL,
	[F_UN5] [float] NULL,
	[F_PRODUCTSX1] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRODUCTSX2] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRODUCTSX3] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRODUCTSX4] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRODUCTSX5] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MAXJJ] [float] NULL,
	[F_MINJJ] [float] NULL,
	[F_RECENTJJ] [float] NULL,
	[F_GNZZ] [varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YF] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRODUCTBM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PRODUCT__80BE2AD5990990A6] PRIMARY KEY CLUSTERED 
(
	[F_PRODUCTBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PRODUCT2]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRODUCT2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRODUCT2](
	[F_DEP] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_PRODUCTBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PRODUCT2__6465D25223345644] PRIMARY KEY CLUSTERED 
(
	[F_DEP] ASC,
	[F_PRODUCTBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PRODUCT3]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRODUCT3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRODUCT3](
	[F_PRODUCTBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PRODUCT3__80BE2AD5F10F4DAB] PRIMARY KEY CLUSTERED 
(
	[F_PRODUCTBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PRODUCTANNEX]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRODUCTANNEX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRODUCTANNEX](
	[F_PRODUCTBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BH] [int] NOT NULL,
	[F_XX] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PRODUCTANNEX__3278C9DA59DEAAF0] PRIMARY KEY CLUSTERED 
(
	[F_PRODUCTBH] ASC,
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PRODUCTLB]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRODUCTLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRODUCTLB](
	[F_LBBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_LBBC] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_QCSL] [float] NULL,
	[F_QCCB] [float] NULL,
	[F_JC] [int] NULL,
 CONSTRAINT [PK__PRODUCTLB__BB2BA813DC100829] PRIMARY KEY CLUSTERED 
(
	[F_LBBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PRODUCTPC]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRODUCTPC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRODUCTPC](
	[F_PRODUCTBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_LOCAL] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DQ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
 CONSTRAINT [PK__PRODUCTPC__AF54A8AAC5C63564] PRIMARY KEY CLUSTERED 
(
	[F_PRODUCTBH] ASC,
	[F_LOCAL] ASC,
	[F_PH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PRODUCTSHORT]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRODUCTSHORT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRODUCTSHORT](
	[F_DEP] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_EMP] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRODUCTBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRODUCTMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRODUCTGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ2] [float] NULL,
	[F_CS] [float] NULL,
 CONSTRAINT [PK__PRODUCTSHORT__EEA8DC0C0338BC67] PRIMARY KEY CLUSTERED 
(
	[F_DEP] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SETTING]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SETTING]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SETTING](
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATA] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__SETTING__2C6E30FA7DC188A5] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SFZY]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SFZY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SFZY](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__SFZY__2C6EEFB6EB986FC7] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VENDOR]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VENDOR](
	[F_DM] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](80) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TEL] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_POSTCODE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ADDRESS] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LXR] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_KHH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_QCYE] [float] NULL,
	[F_QMYE] [float] NULL,
	[F_J1] [float] NULL,
	[F_D1] [float] NULL,
	[F_J2] [float] NULL,
	[F_D2] [float] NULL,
	[F_J3] [float] NULL,
	[F_D3] [float] NULL,
	[F_J4] [float] NULL,
	[F_D4] [float] NULL,
	[F_J5] [float] NULL,
	[F_D5] [float] NULL,
	[F_J6] [float] NULL,
	[F_D6] [float] NULL,
	[F_J7] [float] NULL,
	[F_D7] [float] NULL,
	[F_J8] [float] NULL,
	[F_D8] [float] NULL,
	[F_J9] [float] NULL,
	[F_D9] [float] NULL,
	[F_J10] [float] NULL,
	[F_D10] [float] NULL,
	[F_J11] [float] NULL,
	[F_D11] [float] NULL,
	[F_J12] [float] NULL,
	[F_D12] [float] NULL,
	[F_ZJM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GROUP] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB1] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB2] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB3] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB4] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC1] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC2] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC3] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC4] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC5] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN1] [float] NULL,
	[F_UN2] [float] NULL,
	[F_UN3] [float] NULL,
	[F_UN4] [float] NULL,
	[F_UN5] [float] NULL,
 CONSTRAINT [PK__VENDOR__2C6EEFB6D834C2A8] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VENDORGROUP]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDORGROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VENDORGROUP](
	[F_DM] [varchar](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VENDORLB]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDORLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VENDORLB](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_JC] [int] NULL,
 CONSTRAINT [PK__VENDORLB__2C6EEFB64F922312] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VENDORPRODUCTS]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDORPRODUCTS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VENDORPRODUCTS](
	[F_VENDOR] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_PRODUCTBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRODUCTGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ] [float] NULL,
	[F_PRODUCTMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VENDORPRODUCTS__B14B6E5FDD4B5C69] PRIMARY KEY CLUSTERED 
(
	[F_VENDOR] ASC,
	[F_PRODUCTBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VIP]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VIP](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZJM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TEL] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_POSTCODE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ADDRESS] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_KHH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LJXF] [float] NULL,
	[F_GRADE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_USED] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CANCEL] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFYH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISYH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BZ] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VIP__2C6EEFB6C487A410] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VIP2]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIP2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VIP2](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZJM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TEL] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_POSTCODE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ADDRESS] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_KHH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LJXF] [float] NULL,
	[F_GRADE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_USED] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CANCEL] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFYH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISYH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BZ] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VIP2__2C6EEFB64A30F6C9] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[XSLB]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XSLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XSLB](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJ] [int] NULL,
 CONSTRAINT [PK__XSLB__2C6EEFB65C89B7D7] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[XSMXZ]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XSMXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XSMXZ](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NULL,
	[F_PRODUCTBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LOCAL] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_CB] [float] NULL,
	[F_DJ] [float] NULL,
	[F_DEP] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_EMP] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SE] [float] NULL,
	[F_HC] [int] NULL,
	[F_CX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[XSZZ]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XSZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XSZZ](
	[F_PRODUCTBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_LOCAL] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SL1] [float] NULL,
	[F_SL2] [float] NULL,
	[F_SL3] [float] NULL,
	[F_SL4] [float] NULL,
	[F_SL5] [float] NULL,
	[F_SL6] [float] NULL,
	[F_SL7] [float] NULL,
	[F_SL8] [float] NULL,
	[F_SL9] [float] NULL,
	[F_SL10] [float] NULL,
	[F_SL11] [float] NULL,
	[F_SL12] [float] NULL,
	[F_JE1] [float] NULL,
	[F_JE2] [float] NULL,
	[F_JE3] [float] NULL,
	[F_JE4] [float] NULL,
	[F_JE5] [float] NULL,
	[F_JE6] [float] NULL,
	[F_JE7] [float] NULL,
	[F_JE8] [float] NULL,
	[F_JE9] [float] NULL,
	[F_JE10] [float] NULL,
	[F_JE11] [float] NULL,
	[F_JE12] [float] NULL,
	[F_CB1] [float] NULL,
	[F_CB2] [float] NULL,
	[F_CB3] [float] NULL,
	[F_CB4] [float] NULL,
	[F_CB5] [float] NULL,
	[F_CB6] [float] NULL,
	[F_CB7] [float] NULL,
	[F_CB8] [float] NULL,
	[F_CB9] [float] NULL,
	[F_CB10] [float] NULL,
	[F_CB11] [float] NULL,
	[F_CB12] [float] NULL,
	[F_SE1] [float] NULL,
	[F_SE2] [float] NULL,
	[F_SE3] [float] NULL,
	[F_SE4] [float] NULL,
	[F_SE5] [float] NULL,
	[F_SE6] [float] NULL,
	[F_SE7] [float] NULL,
	[F_SE8] [float] NULL,
	[F_SE9] [float] NULL,
	[F_SE10] [float] NULL,
	[F_SE11] [float] NULL,
	[F_SE12] [float] NULL,
 CONSTRAINT [PK__XSZZ__8278C624D75D712D] PRIMARY KEY CLUSTERED 
(
	[F_PRODUCTBH] ASC,
	[F_LOCAL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YFHXZ]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YFHXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YFHXZ](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATEJH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATEFK] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJHJH] [int] NOT NULL,
	[F_DJHFK] [int] NOT NULL,
	[F_VENDOR] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DEP] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JH] [float] NULL,
	[F_FK] [float] NULL,
	[F_HXJE] [float] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YFJSD2]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YFJSD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YFJSD2](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SKR] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CN] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DEP] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSJE] [float] NULL,
	[F_BZ] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YE] [float] NULL,
	[F_HXJE] [float] NULL,
 CONSTRAINT [PK__YFJSD2__3C196CCDF4F356E8] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YFMXZ]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YFMXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YFMXZ](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLX] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SR] [float] NULL,
	[F_FC] [float] NULL,
	[F_DEP] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YE] [float] NULL,
	[F_HXJE] [float] NULL,
	[F_CX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YFZZ]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YFZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YFZZ](
	[F_VENDOR] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DEP] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_QCYE] [float] NULL,
	[F_QMYE] [float] NULL,
	[F_J1] [float] NULL,
	[F_D1] [float] NULL,
	[F_J2] [float] NULL,
	[F_D2] [float] NULL,
	[F_J3] [float] NULL,
	[F_D3] [float] NULL,
	[F_J4] [float] NULL,
	[F_D4] [float] NULL,
	[F_J5] [float] NULL,
	[F_D5] [float] NULL,
	[F_J6] [float] NULL,
	[F_D6] [float] NULL,
	[F_J7] [float] NULL,
	[F_D7] [float] NULL,
	[F_J8] [float] NULL,
	[F_D8] [float] NULL,
	[F_J9] [float] NULL,
	[F_D9] [float] NULL,
	[F_J10] [float] NULL,
	[F_D10] [float] NULL,
	[F_J11] [float] NULL,
	[F_D11] [float] NULL,
	[F_J12] [float] NULL,
	[F_D12] [float] NULL,
 CONSTRAINT [PK__YFZZ__CEA80CB980F1D3A9] PRIMARY KEY CLUSTERED 
(
	[F_VENDOR] ASC,
	[F_DEP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YSHXZ]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YSHXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YSHXZ](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATEXS] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATESK] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJHXS] [int] NOT NULL,
	[F_DJHSK] [int] NOT NULL,
	[F_CUSTOM] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DEP] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XS] [float] NULL,
	[F_SK] [float] NULL,
	[F_HXJE] [float] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YSJSD2]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YSJSD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YSJSD2](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SKR] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CN] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DEP] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSJE] [float] NULL,
	[F_BZ] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YE] [float] NULL,
	[F_HXJE] [float] NULL,
 CONSTRAINT [PK__YSJSD2__3C196CCD76C74F0B] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YSMXZ]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YSMXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YSMXZ](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLX] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SR] [float] NULL,
	[F_FC] [float] NULL,
	[F_DEP] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YE] [float] NULL,
	[F_HXJE] [float] NULL,
	[F_CX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YSZZ]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YSZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YSZZ](
	[F_CUSTOM] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DEP] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_QCYE] [float] NULL,
	[F_QMYE] [float] NULL,
	[F_J1] [float] NULL,
	[F_D1] [float] NULL,
	[F_J2] [float] NULL,
	[F_D2] [float] NULL,
	[F_J3] [float] NULL,
	[F_D3] [float] NULL,
	[F_J4] [float] NULL,
	[F_D4] [float] NULL,
	[F_J5] [float] NULL,
	[F_D5] [float] NULL,
	[F_J6] [float] NULL,
	[F_D6] [float] NULL,
	[F_J7] [float] NULL,
	[F_D7] [float] NULL,
	[F_J8] [float] NULL,
	[F_D8] [float] NULL,
	[F_J9] [float] NULL,
	[F_D9] [float] NULL,
	[F_J10] [float] NULL,
	[F_D10] [float] NULL,
	[F_J11] [float] NULL,
	[F_D11] [float] NULL,
	[F_J12] [float] NULL,
	[F_D12] [float] NULL,
 CONSTRAINT [PK__YSZZ__CEA80CB9386103FF] PRIMARY KEY CLUSTERED 
(
	[F_CUSTOM] ASC,
	[F_DEP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZNPOWER]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZNPOWER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZNPOWER](
	[F_DM] [varchar](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_GN] [varchar](4) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SY] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DY] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZNXX]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZNXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZNXX](
	[F_DM] [varchar](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](12) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK__ZNXX__2C6EEFB61BE05857] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZTCS]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZTCS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZTCS](
	[F_ZTBH] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_NAME] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LBLENGTH] [smallint] NULL,
	[F_LB1] [smallint] NULL,
	[F_LB2] [smallint] NULL,
	[F_LB3] [smallint] NULL,
	[F_LB4] [smallint] NULL,
	[F_LB5] [smallint] NULL,
	[F_LB6] [smallint] NULL,
	[F_LB7] [smallint] NULL,
	[F_LB8] [smallint] NULL,
	[F_LB9] [smallint] NULL,
	[F_LB10] [smallint] NULL,
	[F_PRODUCTLENGTH] [smallint] NULL,
	[F_PRICENUMBER] [smallint] NULL,
	[F_PRICE1] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRICE2] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRICE3] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRICE4] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PRICE5] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CB] [smallint] NULL,
	[F_CLENGTH] [int] NULL,
	[F_CLB1] [int] NULL,
	[F_CLB2] [int] NULL,
	[F_CLB3] [int] NULL,
	[F_CLB4] [int] NULL,
	[F_VLENGTH] [int] NULL,
	[F_VLB1] [int] NULL,
	[F_VLB2] [int] NULL,
	[F_VLB3] [int] NULL,
	[F_VLB4] [int] NULL,
	[F_YC] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZZMB]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZMB](
	[F_PRODUCTBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_PRODUCTMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZZMBMX]    Script Date: 2023/9/14 13:03:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZMBMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZMBMX](
	[F_PRODUCTBH1] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_PRODUCTBH2] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_PRODUCTMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_FIXED] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HC] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [KCMXZ_DATE]    Script Date: 2023/9/14 13:03:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[KCMXZ]') AND name = N'KCMXZ_DATE')
CREATE NONCLUSTERED INDEX [KCMXZ_DATE] ON [dbo].[KCMXZ]
(
	[F_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [KCMXZ_DJH]    Script Date: 2023/9/14 13:03:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[KCMXZ]') AND name = N'KCMXZ_DJH')
CREATE NONCLUSTERED INDEX [KCMXZ_DJH] ON [dbo].[KCMXZ]
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PRODUCT_TM]    Script Date: 2023/9/14 13:03:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PRODUCT]') AND name = N'PRODUCT_TM')
CREATE NONCLUSTERED INDEX [PRODUCT_TM] ON [dbo].[PRODUCT]
(
	[F_TM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PRODUCTMC]    Script Date: 2023/9/14 13:03:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PRODUCT]') AND name = N'PRODUCTMC')
CREATE NONCLUSTERED INDEX [PRODUCTMC] ON [dbo].[PRODUCT]
(
	[F_PRODUCTMC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ZJM]    Script Date: 2023/9/14 13:03:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[PRODUCT]') AND name = N'ZJM')
CREATE NONCLUSTERED INDEX [ZJM] ON [dbo].[PRODUCT]
(
	[F_ZJM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [SFZY_MC]    Script Date: 2023/9/14 13:03:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SFZY]') AND name = N'SFZY_MC')
CREATE NONCLUSTERED INDEX [SFZY_MC] ON [dbo].[SFZY]
(
	[F_MC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [XSMXZ_DATE]    Script Date: 2023/9/14 13:03:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XSMXZ]') AND name = N'XSMXZ_DATE')
CREATE NONCLUSTERED INDEX [XSMXZ_DATE] ON [dbo].[XSMXZ]
(
	[F_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [XSMXZ_DJH]    Script Date: 2023/9/14 13:03:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XSMXZ]') AND name = N'XSMXZ_DJH')
CREATE NONCLUSTERED INDEX [XSMXZ_DJH] ON [dbo].[XSMXZ]
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YFHXZ_DATE]    Script Date: 2023/9/14 13:03:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YFHXZ]') AND name = N'YFHXZ_DATE')
CREATE NONCLUSTERED INDEX [YFHXZ_DATE] ON [dbo].[YFHXZ]
(
	[F_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YFHXZ_DATESK]    Script Date: 2023/9/14 13:03:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YFHXZ]') AND name = N'YFHXZ_DATESK')
CREATE NONCLUSTERED INDEX [YFHXZ_DATESK] ON [dbo].[YFHXZ]
(
	[F_DATEFK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YFHXZ_DATEXS]    Script Date: 2023/9/14 13:03:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YFHXZ]') AND name = N'YFHXZ_DATEXS')
CREATE NONCLUSTERED INDEX [YFHXZ_DATEXS] ON [dbo].[YFHXZ]
(
	[F_DATEJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [YFHXZ_DJHFK]    Script Date: 2023/9/14 13:03:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YFHXZ]') AND name = N'YFHXZ_DJHFK')
CREATE NONCLUSTERED INDEX [YFHXZ_DJHFK] ON [dbo].[YFHXZ]
(
	[F_DJHFK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [YFHXZ_DJHJH]    Script Date: 2023/9/14 13:03:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YFHXZ]') AND name = N'YFHXZ_DJHJH')
CREATE NONCLUSTERED INDEX [YFHXZ_DJHJH] ON [dbo].[YFHXZ]
(
	[F_DJHJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YFHXZ_VENDOR]    Script Date: 2023/9/14 13:03:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YFHXZ]') AND name = N'YFHXZ_VENDOR')
CREATE NONCLUSTERED INDEX [YFHXZ_VENDOR] ON [dbo].[YFHXZ]
(
	[F_VENDOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YSHXZ_CUSTOM]    Script Date: 2023/9/14 13:03:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YSHXZ]') AND name = N'YSHXZ_CUSTOM')
CREATE NONCLUSTERED INDEX [YSHXZ_CUSTOM] ON [dbo].[YSHXZ]
(
	[F_CUSTOM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YSHXZ_DATE]    Script Date: 2023/9/14 13:03:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YSHXZ]') AND name = N'YSHXZ_DATE')
CREATE NONCLUSTERED INDEX [YSHXZ_DATE] ON [dbo].[YSHXZ]
(
	[F_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YSHXZ_DATESK]    Script Date: 2023/9/14 13:03:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YSHXZ]') AND name = N'YSHXZ_DATESK')
CREATE NONCLUSTERED INDEX [YSHXZ_DATESK] ON [dbo].[YSHXZ]
(
	[F_DATESK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YSHXZ_DATEXS]    Script Date: 2023/9/14 13:03:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YSHXZ]') AND name = N'YSHXZ_DATEXS')
CREATE NONCLUSTERED INDEX [YSHXZ_DATEXS] ON [dbo].[YSHXZ]
(
	[F_DATEXS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [YSHXZ_DJHSK]    Script Date: 2023/9/14 13:03:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YSHXZ]') AND name = N'YSHXZ_DJHSK')
CREATE NONCLUSTERED INDEX [YSHXZ_DJHSK] ON [dbo].[YSHXZ]
(
	[F_DJHSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [YSHXZ_DJHXS]    Script Date: 2023/9/14 13:03:53 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YSHXZ]') AND name = N'YSHXZ_DJHXS')
CREATE NONCLUSTERED INDEX [YSHXZ_DJHXS] ON [dbo].[YSHXZ]
(
	[F_DJHXS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_QCYE__09E968C4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_QCYE__09E968C4]  DEFAULT ((0)) FOR [F_QCYE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_QMYE__0ADD8CFD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_QMYE__0ADD8CFD]  DEFAULT ((0)) FOR [F_QMYE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_SXED__0BD1B136]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_SXED__0BD1B136]  DEFAULT ((0)) FOR [F_SXED]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J1__0CC5D56F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J1__0CC5D56F]  DEFAULT ((0)) FOR [F_J1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D1__0DB9F9A8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D1__0DB9F9A8]  DEFAULT ((0)) FOR [F_D1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J2__0EAE1DE1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J2__0EAE1DE1]  DEFAULT ((0)) FOR [F_J2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D2__0FA2421A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D2__0FA2421A]  DEFAULT ((0)) FOR [F_D2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J3__10966653]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J3__10966653]  DEFAULT ((0)) FOR [F_J3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D3__118A8A8C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D3__118A8A8C]  DEFAULT ((0)) FOR [F_D3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J4__127EAEC5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J4__127EAEC5]  DEFAULT ((0)) FOR [F_J4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D4__1372D2FE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D4__1372D2FE]  DEFAULT ((0)) FOR [F_D4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J5__1466F737]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J5__1466F737]  DEFAULT ((0)) FOR [F_J5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D5__155B1B70]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D5__155B1B70]  DEFAULT ((0)) FOR [F_D5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J6__164F3FA9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J6__164F3FA9]  DEFAULT ((0)) FOR [F_J6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D6__174363E2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D6__174363E2]  DEFAULT ((0)) FOR [F_D6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J7__1837881B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J7__1837881B]  DEFAULT ((0)) FOR [F_J7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D7__192BAC54]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D7__192BAC54]  DEFAULT ((0)) FOR [F_D7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J8__1A1FD08D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J8__1A1FD08D]  DEFAULT ((0)) FOR [F_J8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D8__1B13F4C6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D8__1B13F4C6]  DEFAULT ((0)) FOR [F_D8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J9__1C0818FF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J9__1C0818FF]  DEFAULT ((0)) FOR [F_J9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D9__1CFC3D38]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D9__1CFC3D38]  DEFAULT ((0)) FOR [F_D9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J10__1DF06171]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J10__1DF06171]  DEFAULT ((0)) FOR [F_J10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D10__1EE485AA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D10__1EE485AA]  DEFAULT ((0)) FOR [F_D10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J11__1FD8A9E3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J11__1FD8A9E3]  DEFAULT ((0)) FOR [F_J11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D11__20CCCE1C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D11__20CCCE1C]  DEFAULT ((0)) FOR [F_D11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J12__21C0F255]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J12__21C0F255]  DEFAULT ((0)) FOR [F_J12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D12__22B5168E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D12__22B5168E]  DEFAULT ((0)) FOR [F_D12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOMGRAD__F_KL__61C668D1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOMGRADE] ADD  CONSTRAINT [DF__CUSTOMGRAD__F_KL__61C668D1]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOMGRA__F_PRI__5575A085]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOMGRADE] ADD  CONSTRAINT [DF__CUSTOMGRA__F_PRI__5575A085]  DEFAULT ((2)) FOR [F_PRICENUMBER]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLS1__2F1AED73]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS1__2F1AED73]  DEFAULT ((0)) FOR [F_SLS1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLS2__300F11AC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS2__300F11AC]  DEFAULT ((0)) FOR [F_SLS2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLS3__310335E5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS3__310335E5]  DEFAULT ((0)) FOR [F_SLS3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLS4__31F75A1E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS4__31F75A1E]  DEFAULT ((0)) FOR [F_SLS4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLS5__32EB7E57]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS5__32EB7E57]  DEFAULT ((0)) FOR [F_SLS5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLS6__33DFA290]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS6__33DFA290]  DEFAULT ((0)) FOR [F_SLS6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLS7__34D3C6C9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS7__34D3C6C9]  DEFAULT ((0)) FOR [F_SLS7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLS8__35C7EB02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS8__35C7EB02]  DEFAULT ((0)) FOR [F_SLS8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLS9__36BC0F3B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS9__36BC0F3B]  DEFAULT ((0)) FOR [F_SLS9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLS10__37B03374]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS10__37B03374]  DEFAULT ((0)) FOR [F_SLS10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLS11__38A457AD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS11__38A457AD]  DEFAULT ((0)) FOR [F_SLS11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLS12__39987BE6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS12__39987BE6]  DEFAULT ((0)) FOR [F_SLS12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JES1__3A8CA01F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES1__3A8CA01F]  DEFAULT ((0)) FOR [F_JES1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JES2__3B80C458]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES2__3B80C458]  DEFAULT ((0)) FOR [F_JES2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JES3__3C74E891]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES3__3C74E891]  DEFAULT ((0)) FOR [F_JES3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JES4__3D690CCA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES4__3D690CCA]  DEFAULT ((0)) FOR [F_JES4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JES5__3E5D3103]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES5__3E5D3103]  DEFAULT ((0)) FOR [F_JES5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JES6__3F51553C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES6__3F51553C]  DEFAULT ((0)) FOR [F_JES6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JES7__40457975]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES7__40457975]  DEFAULT ((0)) FOR [F_JES7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JES8__41399DAE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES8__41399DAE]  DEFAULT ((0)) FOR [F_JES8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JES9__422DC1E7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES9__422DC1E7]  DEFAULT ((0)) FOR [F_JES9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JES10__4321E620]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES10__4321E620]  DEFAULT ((0)) FOR [F_JES10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JES11__44160A59]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES11__44160A59]  DEFAULT ((0)) FOR [F_JES11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JES12__450A2E92]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES12__450A2E92]  DEFAULT ((0)) FOR [F_JES12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLF1__45FE52CB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF1__45FE52CB]  DEFAULT ((0)) FOR [F_SLF1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLF2__46F27704]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF2__46F27704]  DEFAULT ((0)) FOR [F_SLF2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLF3__47E69B3D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF3__47E69B3D]  DEFAULT ((0)) FOR [F_SLF3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLF4__48DABF76]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF4__48DABF76]  DEFAULT ((0)) FOR [F_SLF4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLF5__49CEE3AF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF5__49CEE3AF]  DEFAULT ((0)) FOR [F_SLF5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLF6__4AC307E8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF6__4AC307E8]  DEFAULT ((0)) FOR [F_SLF6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLF7__4BB72C21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF7__4BB72C21]  DEFAULT ((0)) FOR [F_SLF7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLF8__4CAB505A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF8__4CAB505A]  DEFAULT ((0)) FOR [F_SLF8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLF9__4D9F7493]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF9__4D9F7493]  DEFAULT ((0)) FOR [F_SLF9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLF10__4E9398CC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF10__4E9398CC]  DEFAULT ((0)) FOR [F_SLF10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLF11__4F87BD05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF11__4F87BD05]  DEFAULT ((0)) FOR [F_SLF11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_SLF12__507BE13E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF12__507BE13E]  DEFAULT ((0)) FOR [F_SLF12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JEF1__51700577]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF1__51700577]  DEFAULT ((0)) FOR [F_JEF1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JEF2__526429B0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF2__526429B0]  DEFAULT ((0)) FOR [F_JEF2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JEF3__53584DE9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF3__53584DE9]  DEFAULT ((0)) FOR [F_JEF3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JEF4__544C7222]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF4__544C7222]  DEFAULT ((0)) FOR [F_JEF4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JEF5__5540965B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF5__5540965B]  DEFAULT ((0)) FOR [F_JEF5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JEF6__5634BA94]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF6__5634BA94]  DEFAULT ((0)) FOR [F_JEF6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JEF7__5728DECD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF7__5728DECD]  DEFAULT ((0)) FOR [F_JEF7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JEF8__581D0306]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF8__581D0306]  DEFAULT ((0)) FOR [F_JEF8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JEF9__5911273F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF9__5911273F]  DEFAULT ((0)) FOR [F_JEF9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JEF10__5A054B78]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF10__5A054B78]  DEFAULT ((0)) FOR [F_JEF10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JEF11__5AF96FB1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF11__5AF96FB1]  DEFAULT ((0)) FOR [F_JEF11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__F_JEF12__5BED93EA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF12__5BED93EA]  DEFAULT ((0)) FOR [F_JEF12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__BM__F_DE__4FBCC72F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DEPARTMENT] ADD  CONSTRAINT [DF__BM__F_DE__4FBCC72F]  DEFAULT ((0)) FOR [F_DE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_JHD__6D181FEC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_JHD__6D181FEC]  DEFAULT ((0)) FOR [F_JHD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_XHD__6E0C4425]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_XHD__6E0C4425]  DEFAULT ((0)) FOR [F_XHD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_CGD__6F00685E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_CGD__6F00685E]  DEFAULT ((0)) FOR [F_CGD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_RKD__6FF48C97]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_RKD__6FF48C97]  DEFAULT ((0)) FOR [F_RKD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_CKD__70E8B0D0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_CKD__70E8B0D0]  DEFAULT ((0)) FOR [F_CKD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_DBD__71DCD509]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_DBD__71DCD509]  DEFAULT ((0)) FOR [F_DBD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_XSBB__72D0F942]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_XSBB__72D0F942]  DEFAULT ((0)) FOR [F_XSBB]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_PC__73C51D7B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_PC__73C51D7B]  DEFAULT ((0)) FOR [F_PC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_YSJSD__74B941B4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_YSJSD__74B941B4]  DEFAULT ((0)) FOR [F_YSJSD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_YFJSD__75AD65ED]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_YFJSD__75AD65ED]  DEFAULT ((0)) FOR [F_YFJSD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_ZZD__76A18A26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_ZZD__76A18A26]  DEFAULT ((0)) FOR [F_ZZD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_TJD__7795AE5F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_TJD__7795AE5F]  DEFAULT ((0)) FOR [F_TJD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_PSD__7889D298]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_PSD__7889D298]  DEFAULT ((0)) FOR [F_PSD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_JIEZ__797DF6D1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_JIEZ__797DF6D1]  DEFAULT ((0)) FOR [F_JIEZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_DHD__7A721B0A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_DHD__7A721B0A]  DEFAULT ((0)) FOR [F_DHD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_DJH_F_CX]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF_DJH_F_CX]  DEFAULT ((0)) FOR [F_CX]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_QDD__6FBF826D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_QDD__6FBF826D]  DEFAULT ((0)) FOR [F_QDD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_NEWPRODUCT__70B3A6A6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_NEWPRODUCT__70B3A6A6]  DEFAULT ((0)) FOR [F_NEWPRODUCT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_ENEMY__71A7CADF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_ENEMY__71A7CADF]  DEFAULT ((0)) FOR [F_ENEMY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_PDD__729BEF18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_PDD__729BEF18]  DEFAULT ((0)) FOR [F_PDD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_PRODUCT__7D197D8B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_PRODUCT__7D197D8B]  DEFAULT ((0)) FOR [F_PRODUCT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__EVENT__F_CONDITI__7B663F43]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EVENT] ADD  CONSTRAINT [DF__EVENT__F_CONDITI__7B663F43]  DEFAULT ('') FOR [F_CONDITION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__EVENT__F_HINT__7C5A637C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EVENT] ADD  CONSTRAINT [DF__EVENT__F_HINT__7C5A637C]  DEFAULT ('') FOR [F_HINT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL1__4F52B2DB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL1__4F52B2DB]  DEFAULT ((0)) FOR [F_SL1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL2__5046D714]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL2__5046D714]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL3__513AFB4D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL3__513AFB4D]  DEFAULT ((0)) FOR [F_SL3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL4__522F1F86]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL4__522F1F86]  DEFAULT ((0)) FOR [F_SL4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL5__532343BF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL5__532343BF]  DEFAULT ((0)) FOR [F_SL5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL6__541767F8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL6__541767F8]  DEFAULT ((0)) FOR [F_SL6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL7__550B8C31]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL7__550B8C31]  DEFAULT ((0)) FOR [F_SL7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL8__55FFB06A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL8__55FFB06A]  DEFAULT ((0)) FOR [F_SL8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL9__56F3D4A3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL9__56F3D4A3]  DEFAULT ((0)) FOR [F_SL9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL10__57E7F8DC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL10__57E7F8DC]  DEFAULT ((0)) FOR [F_SL10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL11__58DC1D15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL11__58DC1D15]  DEFAULT ((0)) FOR [F_SL11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL12__59D0414E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL12__59D0414E]  DEFAULT ((0)) FOR [F_SL12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE1__5AC46587]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE1__5AC46587]  DEFAULT ((0)) FOR [F_JE1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE2__5BB889C0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE2__5BB889C0]  DEFAULT ((0)) FOR [F_JE2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE3__5CACADF9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE3__5CACADF9]  DEFAULT ((0)) FOR [F_JE3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE4__5DA0D232]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE4__5DA0D232]  DEFAULT ((0)) FOR [F_JE4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE5__5E94F66B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE5__5E94F66B]  DEFAULT ((0)) FOR [F_JE5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE6__5F891AA4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE6__5F891AA4]  DEFAULT ((0)) FOR [F_JE6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE7__607D3EDD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE7__607D3EDD]  DEFAULT ((0)) FOR [F_JE7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE8__61716316]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE8__61716316]  DEFAULT ((0)) FOR [F_JE8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE9__6265874F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE9__6265874F]  DEFAULT ((0)) FOR [F_JE9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE10__6359AB88]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE10__6359AB88]  DEFAULT ((0)) FOR [F_JE10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE11__644DCFC1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE11__644DCFC1]  DEFAULT ((0)) FOR [F_JE11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE12__6541F3FA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE12__6541F3FA]  DEFAULT ((0)) FOR [F_JE12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE1__66361833]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE1__66361833]  DEFAULT ((0)) FOR [F_SE1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE2__672A3C6C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE2__672A3C6C]  DEFAULT ((0)) FOR [F_SE2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE3__681E60A5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE3__681E60A5]  DEFAULT ((0)) FOR [F_SE3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE4__691284DE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE4__691284DE]  DEFAULT ((0)) FOR [F_SE4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE5__6A06A917]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE5__6A06A917]  DEFAULT ((0)) FOR [F_SE5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE6__6AFACD50]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE6__6AFACD50]  DEFAULT ((0)) FOR [F_SE6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE7__6BEEF189]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE7__6BEEF189]  DEFAULT ((0)) FOR [F_SE7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE8__6CE315C2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE8__6CE315C2]  DEFAULT ((0)) FOR [F_SE8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE9__6DD739FB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE9__6DD739FB]  DEFAULT ((0)) FOR [F_SE9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE10__6ECB5E34]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE10__6ECB5E34]  DEFAULT ((0)) FOR [F_SE10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE11__6FBF826D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE11__6FBF826D]  DEFAULT ((0)) FOR [F_SE11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE12__70B3A6A6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE12__70B3A6A6]  DEFAULT ((0)) FOR [F_SE12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCMXZ__F_SLS__7B313519]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCMXZ] ADD  CONSTRAINT [DF__KCMXZ__F_SLS__7B313519]  DEFAULT ((0)) FOR [F_SLS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCMXZ__F_JES__7C255952]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCMXZ] ADD  CONSTRAINT [DF__KCMXZ__F_JES__7C255952]  DEFAULT ((0)) FOR [F_JES]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCMXZ__F_SLF__7D197D8B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCMXZ] ADD  CONSTRAINT [DF__KCMXZ__F_SLF__7D197D8B]  DEFAULT ((0)) FOR [F_SLF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCMXZ__F_JEF__7E0DA1C4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCMXZ] ADD  CONSTRAINT [DF__KCMXZ__F_JEF__7E0DA1C4]  DEFAULT ((0)) FOR [F_JEF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCYE__F_SLYE__7F01C5FD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCYE] ADD  CONSTRAINT [DF__KCYE__F_SLYE__7F01C5FD]  DEFAULT ((0)) FOR [F_SLYE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SL0__7FF5EA36]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SL0__7FF5EA36]  DEFAULT ((0)) FOR [F_SL0]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JE0__00EA0E6F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JE0__00EA0E6F]  DEFAULT ((0)) FOR [F_JE0]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLYE__01DE32A8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLYE__01DE32A8]  DEFAULT ((0)) FOR [F_SLYE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEYE__02D256E1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEYE__02D256E1]  DEFAULT ((0)) FOR [F_JEYE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_PJDJ__03C67B1A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_PJDJ__03C67B1A]  DEFAULT ((0)) FOR [F_PJDJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JE__04BA9F53]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JE__04BA9F53]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JJ__05AEC38C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JJ__05AEC38C]  DEFAULT ((0)) FOR [F_JJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS1__06A2E7C5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS1__06A2E7C5]  DEFAULT ((0)) FOR [F_SLS1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS2__07970BFE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS2__07970BFE]  DEFAULT ((0)) FOR [F_SLS2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS3__088B3037]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS3__088B3037]  DEFAULT ((0)) FOR [F_SLS3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS4__097F5470]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS4__097F5470]  DEFAULT ((0)) FOR [F_SLS4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS5__0A7378A9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS5__0A7378A9]  DEFAULT ((0)) FOR [F_SLS5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS6__0B679CE2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS6__0B679CE2]  DEFAULT ((0)) FOR [F_SLS6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS7__0C5BC11B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS7__0C5BC11B]  DEFAULT ((0)) FOR [F_SLS7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS8__0D4FE554]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS8__0D4FE554]  DEFAULT ((0)) FOR [F_SLS8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS9__0E44098D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS9__0E44098D]  DEFAULT ((0)) FOR [F_SLS9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS10__0F382DC6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS10__0F382DC6]  DEFAULT ((0)) FOR [F_SLS10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS11__102C51FF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS11__102C51FF]  DEFAULT ((0)) FOR [F_SLS11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS12__11207638]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS12__11207638]  DEFAULT ((0)) FOR [F_SLS12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES1__12149A71]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES1__12149A71]  DEFAULT ((0)) FOR [F_JES1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES2__1308BEAA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES2__1308BEAA]  DEFAULT ((0)) FOR [F_JES2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES3__13FCE2E3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES3__13FCE2E3]  DEFAULT ((0)) FOR [F_JES3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES4__14F1071C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES4__14F1071C]  DEFAULT ((0)) FOR [F_JES4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES5__15E52B55]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES5__15E52B55]  DEFAULT ((0)) FOR [F_JES5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES6__16D94F8E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES6__16D94F8E]  DEFAULT ((0)) FOR [F_JES6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES7__17CD73C7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES7__17CD73C7]  DEFAULT ((0)) FOR [F_JES7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES8__18C19800]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES8__18C19800]  DEFAULT ((0)) FOR [F_JES8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES9__19B5BC39]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES9__19B5BC39]  DEFAULT ((0)) FOR [F_JES9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES10__1AA9E072]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES10__1AA9E072]  DEFAULT ((0)) FOR [F_JES10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES11__1B9E04AB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES11__1B9E04AB]  DEFAULT ((0)) FOR [F_JES11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES12__1C9228E4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES12__1C9228E4]  DEFAULT ((0)) FOR [F_JES12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF1__1D864D1D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF1__1D864D1D]  DEFAULT ((0)) FOR [F_SLF1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF2__1E7A7156]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF2__1E7A7156]  DEFAULT ((0)) FOR [F_SLF2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF3__1F6E958F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF3__1F6E958F]  DEFAULT ((0)) FOR [F_SLF3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF4__2062B9C8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF4__2062B9C8]  DEFAULT ((0)) FOR [F_SLF4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF5__2156DE01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF5__2156DE01]  DEFAULT ((0)) FOR [F_SLF5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF6__224B023A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF6__224B023A]  DEFAULT ((0)) FOR [F_SLF6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF7__233F2673]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF7__233F2673]  DEFAULT ((0)) FOR [F_SLF7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF8__24334AAC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF8__24334AAC]  DEFAULT ((0)) FOR [F_SLF8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF9__25276EE5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF9__25276EE5]  DEFAULT ((0)) FOR [F_SLF9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF10__261B931E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF10__261B931E]  DEFAULT ((0)) FOR [F_SLF10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF11__270FB757]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF11__270FB757]  DEFAULT ((0)) FOR [F_SLF11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF12__2803DB90]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF12__2803DB90]  DEFAULT ((0)) FOR [F_SLF12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF1__28F7FFC9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF1__28F7FFC9]  DEFAULT ((0)) FOR [F_JEF1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF2__29EC2402]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF2__29EC2402]  DEFAULT ((0)) FOR [F_JEF2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF3__2AE0483B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF3__2AE0483B]  DEFAULT ((0)) FOR [F_JEF3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF4__2BD46C74]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF4__2BD46C74]  DEFAULT ((0)) FOR [F_JEF4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF5__2CC890AD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF5__2CC890AD]  DEFAULT ((0)) FOR [F_JEF5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF6__2DBCB4E6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF6__2DBCB4E6]  DEFAULT ((0)) FOR [F_JEF6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF7__2EB0D91F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF7__2EB0D91F]  DEFAULT ((0)) FOR [F_JEF7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF8__2FA4FD58]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF8__2FA4FD58]  DEFAULT ((0)) FOR [F_JEF8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF9__30992191]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF9__30992191]  DEFAULT ((0)) FOR [F_JEF9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF10__318D45CA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF10__318D45CA]  DEFAULT ((0)) FOR [F_JEF10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF11__32816A03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF11__32816A03]  DEFAULT ((0)) FOR [F_JEF11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF12__33758E3C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF12__33758E3C]  DEFAULT ((0)) FOR [F_JEF12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__LOCAL__F_LOCAL__7E42ABEE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LOCAL] ADD  CONSTRAINT [DF__LOCAL__F_LOCAL__7E42ABEE]  DEFAULT ('') FOR [F_LOCAL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__POWERINFOR__F_CLA__3DF31CAF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[POWERINFOR] ADD  CONSTRAINT [DF__POWERINFOR__F_CLA__3DF31CAF]  DEFAULT ('') FOR [F_CLASSNAME]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCT__F_MAXSL__23FE4082]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__F_MAXSL__23FE4082]  DEFAULT ((0)) FOR [F_MAXSL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCT__F_MINSL__24F264BB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__F_MINSL__24F264BB]  DEFAULT ((0)) FOR [F_MINSL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCT__F_SLV__25E688F4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__F_SLV__25E688F4]  DEFAULT ((0.17)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_PRODUCT_F_CS]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF_PRODUCT_F_CS]  DEFAULT ((1)) FOR [F_CS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCT__F_DJ1__26DAAD2D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__F_DJ1__26DAAD2D]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCT__F_DJ2__27CED166]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__F_DJ2__27CED166]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCT__F_DJ3__28C2F59F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__F_DJ3__28C2F59F]  DEFAULT ((0)) FOR [F_DJ3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCT__F_DJ4__29B719D8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__F_DJ4__29B719D8]  DEFAULT ((0)) FOR [F_DJ4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCT__F_DJ5__2AAB3E11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__F_DJ5__2AAB3E11]  DEFAULT ((0)) FOR [F_DJ5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCT__F_DWCB__2B9F624A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__F_DWCB__2B9F624A]  DEFAULT ((0)) FOR [F_DWCB]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCT__F_MAXPC__2C938683]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__F_MAXPC__2C938683]  DEFAULT ((0)) FOR [F_MAXPC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCT__F_IFSJ__2D87AABC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__F_IFSJ__2D87AABC]  DEFAULT ('') FOR [F_IFSJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCT__F_RATE__2E7BCEF5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__F_RATE__2E7BCEF5]  DEFAULT ((0)) FOR [F_RATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCT__F_FUNCTION__2F6FF32E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__F_FUNCTION__2F6FF32E]  DEFAULT ('') FOR [F_FUNCTION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCT__F_UN1__30641767]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__F_UN1__30641767]  DEFAULT ((0)) FOR [F_UN1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCT__F_UN2__31583BA0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__F_UN2__31583BA0]  DEFAULT ((0)) FOR [F_UN2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCT__F_UN3__324C5FD9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__F_UN3__324C5FD9]  DEFAULT ((0)) FOR [F_UN3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCT__F_UN4__33408412]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__F_UN4__33408412]  DEFAULT ((0)) FOR [F_UN4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCT__F_UN5__3434A84B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__F_UN5__3434A84B]  DEFAULT ((0)) FOR [F_UN5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCT__F_MAXJJ__3528CC84]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__F_MAXJJ__3528CC84]  DEFAULT ((0)) FOR [F_MAXJJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCT__F_MINJJ__361CF0BD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__F_MINJJ__361CF0BD]  DEFAULT ((0)) FOR [F_MINJJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCT__F_RECENTJJ__371114F6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCT] ADD  CONSTRAINT [DF__PRODUCT__F_RECENTJJ__371114F6]  DEFAULT ((0)) FOR [F_RECENTJJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCTPC__F_SL__446B1014]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCTPC] ADD  CONSTRAINT [DF__PRODUCTPC__F_SL__446B1014]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCTPC__F_JE__455F344D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCTPC] ADD  CONSTRAINT [DF__PRODUCTPC__F_JE__455F344D]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCTSHORT__F_DJ2__75785BC3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCTSHORT] ADD  CONSTRAINT [DF__PRODUCTSHORT__F_DJ2__75785BC3]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRODUCTSHORT__F_CS__766C7FFC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRODUCTSHORT] ADD  CONSTRAINT [DF__PRODUCTSHORT__F_CS__766C7FFC]  DEFAULT ((0)) FOR [F_CS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP__F_LJXF__4FBCC72F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP] ADD  CONSTRAINT [DF__VIP__F_LJXF__4FBCC72F]  DEFAULT ((0)) FOR [F_LJXF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP__F_GRADE__50B0EB68]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP] ADD  CONSTRAINT [DF__VIP__F_GRADE__50B0EB68]  DEFAULT ((0)) FOR [F_GRADE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP2__F_LJXF__538D5813]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP2] ADD  CONSTRAINT [DF__VIP2__F_LJXF__538D5813]  DEFAULT ((0)) FOR [F_LJXF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP2__F_GRADE__54817C4C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP2] ADD  CONSTRAINT [DF__VIP2__F_GRADE__54817C4C]  DEFAULT ((0)) FOR [F_GRADE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSMXZ__F_SL__1C281490]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSMXZ] ADD  CONSTRAINT [DF__XSMXZ__F_SL__1C281490]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSMXZ__F_JE__1D1C38C9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSMXZ] ADD  CONSTRAINT [DF__XSMXZ__F_JE__1D1C38C9]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSMXZ__F_CB__1E105D02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSMXZ] ADD  CONSTRAINT [DF__XSMXZ__F_CB__1E105D02]  DEFAULT ((0)) FOR [F_CB]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSMXZ__F_DJ__1F04813B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSMXZ] ADD  CONSTRAINT [DF__XSMXZ__F_DJ__1F04813B]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSMXZ__F_SE__1FF8A574]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSMXZ] ADD  CONSTRAINT [DF__XSMXZ__F_SE__1FF8A574]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SL1__20ECC9AD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL1__20ECC9AD]  DEFAULT ((0)) FOR [F_SL1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SL2__21E0EDE6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL2__21E0EDE6]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SL3__22D5121F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL3__22D5121F]  DEFAULT ((0)) FOR [F_SL3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SL4__23C93658]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL4__23C93658]  DEFAULT ((0)) FOR [F_SL4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SL5__24BD5A91]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL5__24BD5A91]  DEFAULT ((0)) FOR [F_SL5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SL6__25B17ECA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL6__25B17ECA]  DEFAULT ((0)) FOR [F_SL6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SL7__26A5A303]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL7__26A5A303]  DEFAULT ((0)) FOR [F_SL7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SL8__2799C73C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL8__2799C73C]  DEFAULT ((0)) FOR [F_SL8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SL9__288DEB75]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL9__288DEB75]  DEFAULT ((0)) FOR [F_SL9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SL10__29820FAE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL10__29820FAE]  DEFAULT ((0)) FOR [F_SL10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SL11__2A7633E7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL11__2A7633E7]  DEFAULT ((0)) FOR [F_SL11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SL12__2B6A5820]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL12__2B6A5820]  DEFAULT ((0)) FOR [F_SL12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_JE1__2C5E7C59]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE1__2C5E7C59]  DEFAULT ((0)) FOR [F_JE1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_JE2__2D52A092]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE2__2D52A092]  DEFAULT ((0)) FOR [F_JE2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_JE3__2E46C4CB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE3__2E46C4CB]  DEFAULT ((0)) FOR [F_JE3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_JE4__2F3AE904]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE4__2F3AE904]  DEFAULT ((0)) FOR [F_JE4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_JE5__302F0D3D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE5__302F0D3D]  DEFAULT ((0)) FOR [F_JE5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_JE6__31233176]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE6__31233176]  DEFAULT ((0)) FOR [F_JE6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_JE7__321755AF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE7__321755AF]  DEFAULT ((0)) FOR [F_JE7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_JE8__330B79E8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE8__330B79E8]  DEFAULT ((0)) FOR [F_JE8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_JE9__33FF9E21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE9__33FF9E21]  DEFAULT ((0)) FOR [F_JE9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_JE10__34F3C25A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE10__34F3C25A]  DEFAULT ((0)) FOR [F_JE10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_JE11__35E7E693]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE11__35E7E693]  DEFAULT ((0)) FOR [F_JE11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_JE12__36DC0ACC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE12__36DC0ACC]  DEFAULT ((0)) FOR [F_JE12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB1__37D02F05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB1__37D02F05]  DEFAULT ((0)) FOR [F_CB1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB2__38C4533E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB2__38C4533E]  DEFAULT ((0)) FOR [F_CB2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB3__39B87777]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB3__39B87777]  DEFAULT ((0)) FOR [F_CB3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB4__3AAC9BB0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB4__3AAC9BB0]  DEFAULT ((0)) FOR [F_CB4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB5__3BA0BFE9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB5__3BA0BFE9]  DEFAULT ((0)) FOR [F_CB5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB6__3C94E422]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB6__3C94E422]  DEFAULT ((0)) FOR [F_CB6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB7__3D89085B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB7__3D89085B]  DEFAULT ((0)) FOR [F_CB7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB8__3E7D2C94]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB8__3E7D2C94]  DEFAULT ((0)) FOR [F_CB8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB9__3F7150CD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB9__3F7150CD]  DEFAULT ((0)) FOR [F_CB9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB10__40657506]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB10__40657506]  DEFAULT ((0)) FOR [F_CB10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB11__4159993F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB11__4159993F]  DEFAULT ((0)) FOR [F_CB11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB12__424DBD78]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB12__424DBD78]  DEFAULT ((0)) FOR [F_CB12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SE1__4341E1B1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE1__4341E1B1]  DEFAULT ((0)) FOR [F_SE1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SE2__443605EA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE2__443605EA]  DEFAULT ((0)) FOR [F_SE2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SE3__452A2A23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE3__452A2A23]  DEFAULT ((0)) FOR [F_SE3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SE4__461E4E5C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE4__461E4E5C]  DEFAULT ((0)) FOR [F_SE4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SE5__47127295]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE5__47127295]  DEFAULT ((0)) FOR [F_SE5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SE6__480696CE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE6__480696CE]  DEFAULT ((0)) FOR [F_SE6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SE7__48FABB07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE7__48FABB07]  DEFAULT ((0)) FOR [F_SE7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SE8__49EEDF40]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE8__49EEDF40]  DEFAULT ((0)) FOR [F_SE8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SE9__4AE30379]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE9__4AE30379]  DEFAULT ((0)) FOR [F_SE9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SE10__4BD727B2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE10__4BD727B2]  DEFAULT ((0)) FOR [F_SE10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SE11__4CCB4BEB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE11__4CCB4BEB]  DEFAULT ((0)) FOR [F_SE11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_SE12__4DBF7024]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE12__4DBF7024]  DEFAULT ((0)) FOR [F_SE12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFHXZ__F_JH__4EB3945D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFHXZ] ADD  CONSTRAINT [DF__YFHXZ__F_JH__4EB3945D]  DEFAULT ((0)) FOR [F_JH]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFHXZ__F_FK__4FA7B896]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFHXZ] ADD  CONSTRAINT [DF__YFHXZ__F_FK__4FA7B896]  DEFAULT ((0)) FOR [F_FK]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFHXZ__F_HXJE__509BDCCF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFHXZ] ADD  CONSTRAINT [DF__YFHXZ__F_HXJE__509BDCCF]  DEFAULT ((0)) FOR [F_HXJE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZ__F_SR__51900108]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFMXZ] ADD  CONSTRAINT [DF__YFMXZ__F_SR__51900108]  DEFAULT ((0)) FOR [F_SR]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZ__F_FC__52842541]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFMXZ] ADD  CONSTRAINT [DF__YFMXZ__F_FC__52842541]  DEFAULT ((0)) FOR [F_FC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZ__F_YE__5378497A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFMXZ] ADD  CONSTRAINT [DF__YFMXZ__F_YE__5378497A]  DEFAULT ((0)) FOR [F_YE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZ__F_HXJE__546C6DB3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFMXZ] ADD  CONSTRAINT [DF__YFMXZ__F_HXJE__546C6DB3]  DEFAULT ((0)) FOR [F_HXJE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_QCYE__556091EC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_QCYE__556091EC]  DEFAULT ((0)) FOR [F_QCYE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_QMYE__5654B625]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_QMYE__5654B625]  DEFAULT ((0)) FOR [F_QMYE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J1__5748DA5E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J1__5748DA5E]  DEFAULT ((0)) FOR [F_J1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D1__583CFE97]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D1__583CFE97]  DEFAULT ((0)) FOR [F_D1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J2__593122D0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J2__593122D0]  DEFAULT ((0)) FOR [F_J2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D2__5A254709]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D2__5A254709]  DEFAULT ((0)) FOR [F_D2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J3__5B196B42]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J3__5B196B42]  DEFAULT ((0)) FOR [F_J3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D3__5C0D8F7B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D3__5C0D8F7B]  DEFAULT ((0)) FOR [F_D3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J4__5D01B3B4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J4__5D01B3B4]  DEFAULT ((0)) FOR [F_J4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D4__5DF5D7ED]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D4__5DF5D7ED]  DEFAULT ((0)) FOR [F_D4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J5__5EE9FC26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J5__5EE9FC26]  DEFAULT ((0)) FOR [F_J5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D5__5FDE205F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D5__5FDE205F]  DEFAULT ((0)) FOR [F_D5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J6__60D24498]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J6__60D24498]  DEFAULT ((0)) FOR [F_J6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D6__61C668D1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D6__61C668D1]  DEFAULT ((0)) FOR [F_D6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J7__62BA8D0A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J7__62BA8D0A]  DEFAULT ((0)) FOR [F_J7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D7__63AEB143]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D7__63AEB143]  DEFAULT ((0)) FOR [F_D7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J8__64A2D57C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J8__64A2D57C]  DEFAULT ((0)) FOR [F_J8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D8__6596F9B5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D8__6596F9B5]  DEFAULT ((0)) FOR [F_D8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J9__668B1DEE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J9__668B1DEE]  DEFAULT ((0)) FOR [F_J9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D9__677F4227]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D9__677F4227]  DEFAULT ((0)) FOR [F_D9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J10__68736660]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J10__68736660]  DEFAULT ((0)) FOR [F_J10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D10__69678A99]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D10__69678A99]  DEFAULT ((0)) FOR [F_D10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J11__6A5BAED2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J11__6A5BAED2]  DEFAULT ((0)) FOR [F_J11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D11__6B4FD30B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D11__6B4FD30B]  DEFAULT ((0)) FOR [F_D11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J12__6C43F744]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J12__6C43F744]  DEFAULT ((0)) FOR [F_J12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D12__6D381B7D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D12__6D381B7D]  DEFAULT ((0)) FOR [F_D12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSHXZ__F_XS__6E2C3FB6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSHXZ] ADD  CONSTRAINT [DF__YSHXZ__F_XS__6E2C3FB6]  DEFAULT ((0)) FOR [F_XS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSHXZ__F_SK__6F2063EF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSHXZ] ADD  CONSTRAINT [DF__YSHXZ__F_SK__6F2063EF]  DEFAULT ((0)) FOR [F_SK]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSHXZ__F_HXJE__70148828]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSHXZ] ADD  CONSTRAINT [DF__YSHXZ__F_HXJE__70148828]  DEFAULT ((0)) FOR [F_HXJE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZ__F_SR__7108AC61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSMXZ] ADD  CONSTRAINT [DF__YSMXZ__F_SR__7108AC61]  DEFAULT ((0)) FOR [F_SR]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZ__F_FC__71FCD09A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSMXZ] ADD  CONSTRAINT [DF__YSMXZ__F_FC__71FCD09A]  DEFAULT ((0)) FOR [F_FC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZ__F_YE__72F0F4D3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSMXZ] ADD  CONSTRAINT [DF__YSMXZ__F_YE__72F0F4D3]  DEFAULT ((0)) FOR [F_YE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZ__F_HXJE__73E5190C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSMXZ] ADD  CONSTRAINT [DF__YSMXZ__F_HXJE__73E5190C]  DEFAULT ((0)) FOR [F_HXJE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_QCYE__74D93D45]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_QCYE__74D93D45]  DEFAULT ((0)) FOR [F_QCYE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_QMYE__75CD617E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_QMYE__75CD617E]  DEFAULT ((0)) FOR [F_QMYE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J1__76C185B7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J1__76C185B7]  DEFAULT ((0)) FOR [F_J1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D1__77B5A9F0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D1__77B5A9F0]  DEFAULT ((0)) FOR [F_D1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J2__78A9CE29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J2__78A9CE29]  DEFAULT ((0)) FOR [F_J2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D2__799DF262]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D2__799DF262]  DEFAULT ((0)) FOR [F_D2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J3__7A92169B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J3__7A92169B]  DEFAULT ((0)) FOR [F_J3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D3__7B863AD4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D3__7B863AD4]  DEFAULT ((0)) FOR [F_D3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J4__7C7A5F0D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J4__7C7A5F0D]  DEFAULT ((0)) FOR [F_J4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D4__7D6E8346]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D4__7D6E8346]  DEFAULT ((0)) FOR [F_D4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J5__7E62A77F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J5__7E62A77F]  DEFAULT ((0)) FOR [F_J5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D5__7F56CBB8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D5__7F56CBB8]  DEFAULT ((0)) FOR [F_D5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J6__004AEFF1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J6__004AEFF1]  DEFAULT ((0)) FOR [F_J6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D6__013F142A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D6__013F142A]  DEFAULT ((0)) FOR [F_D6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J7__02333863]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J7__02333863]  DEFAULT ((0)) FOR [F_J7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D7__03275C9C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D7__03275C9C]  DEFAULT ((0)) FOR [F_D7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J8__041B80D5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J8__041B80D5]  DEFAULT ((0)) FOR [F_J8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D8__050FA50E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D8__050FA50E]  DEFAULT ((0)) FOR [F_D8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J9__0603C947]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J9__0603C947]  DEFAULT ((0)) FOR [F_J9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D9__06F7ED80]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D9__06F7ED80]  DEFAULT ((0)) FOR [F_D9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J10__07EC11B9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J10__07EC11B9]  DEFAULT ((0)) FOR [F_J10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D10__08E035F2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D10__08E035F2]  DEFAULT ((0)) FOR [F_D10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J11__09D45A2B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J11__09D45A2B]  DEFAULT ((0)) FOR [F_J11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D11__0AC87E64]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D11__0AC87E64]  DEFAULT ((0)) FOR [F_D11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J12__0BBCA29D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J12__0BBCA29D]  DEFAULT ((0)) FOR [F_J12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D12__0CB0C6D6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D12__0CB0C6D6]  DEFAULT ((0)) FOR [F_D12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBZZ__F_LOCAL__6D4D2A16]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBZZ]'))
ALTER TABLE [dbo].[DBZZ]  WITH CHECK ADD  CONSTRAINT [FK__DBZZ__F_LOCAL__6D4D2A16] FOREIGN KEY([F_LOCAL])
REFERENCES [dbo].[LOCAL] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBZZ__F_LOCAL__6D4D2A16]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBZZ]'))
ALTER TABLE [dbo].[DBZZ] CHECK CONSTRAINT [FK__DBZZ__F_LOCAL__6D4D2A16]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBZZ__F_PRODUCTBH__6E414E4F]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBZZ]'))
ALTER TABLE [dbo].[DBZZ]  WITH CHECK ADD  CONSTRAINT [FK__DBZZ__F_PRODUCTBH__6E414E4F] FOREIGN KEY([F_PRODUCTBH])
REFERENCES [dbo].[PRODUCT] ([F_PRODUCTBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBZZ__F_PRODUCTBH__6E414E4F]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBZZ]'))
ALTER TABLE [dbo].[DBZZ] CHECK CONSTRAINT [FK__DBZZ__F_PRODUCTBH__6E414E4F]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__EMP__F_DEP__2C3E80C8]') AND parent_object_id = OBJECT_ID(N'[dbo].[EMPLOYEE]'))
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD  CONSTRAINT [FK__EMP__F_DEP__2C3E80C8] FOREIGN KEY([F_DEP])
REFERENCES [dbo].[DEPARTMENT] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__EMP__F_DEP__2C3E80C8]') AND parent_object_id = OBJECT_ID(N'[dbo].[EMPLOYEE]'))
ALTER TABLE [dbo].[EMPLOYEE] CHECK CONSTRAINT [FK__EMP__F_DEP__2C3E80C8]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHZZ__F_LOCAL__78BEDCC2]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHZZ]'))
ALTER TABLE [dbo].[JHZZ]  WITH CHECK ADD  CONSTRAINT [FK__JHZZ__F_LOCAL__78BEDCC2] FOREIGN KEY([F_LOCAL])
REFERENCES [dbo].[LOCAL] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHZZ__F_LOCAL__78BEDCC2]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHZZ]'))
ALTER TABLE [dbo].[JHZZ] CHECK CONSTRAINT [FK__JHZZ__F_LOCAL__78BEDCC2]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHZZ__F_PRODUCTBH__79B300FB]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHZZ]'))
ALTER TABLE [dbo].[JHZZ]  WITH CHECK ADD  CONSTRAINT [FK__JHZZ__F_PRODUCTBH__79B300FB] FOREIGN KEY([F_PRODUCTBH])
REFERENCES [dbo].[PRODUCT] ([F_PRODUCTBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHZZ__F_PRODUCTBH__79B300FB]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHZZ]'))
ALTER TABLE [dbo].[JHZZ] CHECK CONSTRAINT [FK__JHZZ__F_PRODUCTBH__79B300FB]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCMXZ__F_LOCAL__7AA72534]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCMXZ]'))
ALTER TABLE [dbo].[KCMXZ]  WITH CHECK ADD  CONSTRAINT [FK__KCMXZ__F_LOCAL__7AA72534] FOREIGN KEY([F_LOCAL])
REFERENCES [dbo].[LOCAL] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCMXZ__F_LOCAL__7AA72534]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCMXZ]'))
ALTER TABLE [dbo].[KCMXZ] CHECK CONSTRAINT [FK__KCMXZ__F_LOCAL__7AA72534]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCMXZ__F_PRODUCTBH__7B9B496D]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCMXZ]'))
ALTER TABLE [dbo].[KCMXZ]  WITH CHECK ADD  CONSTRAINT [FK__KCMXZ__F_PRODUCTBH__7B9B496D] FOREIGN KEY([F_PRODUCTBH])
REFERENCES [dbo].[PRODUCT] ([F_PRODUCTBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCMXZ__F_PRODUCTBH__7B9B496D]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCMXZ]'))
ALTER TABLE [dbo].[KCMXZ] CHECK CONSTRAINT [FK__KCMXZ__F_PRODUCTBH__7B9B496D]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCZZ__F_LOCAL__7C8F6DA6]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCZZ]'))
ALTER TABLE [dbo].[KCZZ]  WITH CHECK ADD  CONSTRAINT [FK__KCZZ__F_LOCAL__7C8F6DA6] FOREIGN KEY([F_LOCAL])
REFERENCES [dbo].[LOCAL] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCZZ__F_LOCAL__7C8F6DA6]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCZZ]'))
ALTER TABLE [dbo].[KCZZ] CHECK CONSTRAINT [FK__KCZZ__F_LOCAL__7C8F6DA6]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCZZ__F_PRODUCTBH__7D8391DF]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCZZ]'))
ALTER TABLE [dbo].[KCZZ]  WITH CHECK ADD  CONSTRAINT [FK__KCZZ__F_PRODUCTBH__7D8391DF] FOREIGN KEY([F_PRODUCTBH])
REFERENCES [dbo].[PRODUCT] ([F_PRODUCTBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCZZ__F_PRODUCTBH__7D8391DF]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCZZ]'))
ALTER TABLE [dbo].[KCZZ] CHECK CONSTRAINT [FK__KCZZ__F_PRODUCTBH__7D8391DF]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__PRODUCTPC__F_LOCAL__08012052]') AND parent_object_id = OBJECT_ID(N'[dbo].[PRODUCTPC]'))
ALTER TABLE [dbo].[PRODUCTPC]  WITH CHECK ADD  CONSTRAINT [FK__PRODUCTPC__F_LOCAL__08012052] FOREIGN KEY([F_LOCAL])
REFERENCES [dbo].[LOCAL] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__PRODUCTPC__F_LOCAL__08012052]') AND parent_object_id = OBJECT_ID(N'[dbo].[PRODUCTPC]'))
ALTER TABLE [dbo].[PRODUCTPC] CHECK CONSTRAINT [FK__PRODUCTPC__F_LOCAL__08012052]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__PRODUCTPC__F_PRODUCTBH__08F5448B]') AND parent_object_id = OBJECT_ID(N'[dbo].[PRODUCTPC]'))
ALTER TABLE [dbo].[PRODUCTPC]  WITH CHECK ADD  CONSTRAINT [FK__PRODUCTPC__F_PRODUCTBH__08F5448B] FOREIGN KEY([F_PRODUCTBH])
REFERENCES [dbo].[PRODUCT] ([F_PRODUCTBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__PRODUCTPC__F_PRODUCTBH__08F5448B]') AND parent_object_id = OBJECT_ID(N'[dbo].[PRODUCTPC]'))
ALTER TABLE [dbo].[PRODUCTPC] CHECK CONSTRAINT [FK__PRODUCTPC__F_PRODUCTBH__08F5448B]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__F_CUSTOM__174363E2]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSMXZ]'))
ALTER TABLE [dbo].[XSMXZ]  WITH CHECK ADD  CONSTRAINT [FK__XSMXZ__F_CUSTOM__174363E2] FOREIGN KEY([F_CUSTOM])
REFERENCES [dbo].[CUSTOM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__F_CUSTOM__174363E2]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSMXZ]'))
ALTER TABLE [dbo].[XSMXZ] CHECK CONSTRAINT [FK__XSMXZ__F_CUSTOM__174363E2]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__F_DEP__164F3FA9]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSMXZ]'))
ALTER TABLE [dbo].[XSMXZ]  WITH CHECK ADD  CONSTRAINT [FK__XSMXZ__F_DEP__164F3FA9] FOREIGN KEY([F_DEP])
REFERENCES [dbo].[DEPARTMENT] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__F_DEP__164F3FA9]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSMXZ]'))
ALTER TABLE [dbo].[XSMXZ] CHECK CONSTRAINT [FK__XSMXZ__F_DEP__164F3FA9]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__F_EMP__1A1FD08D]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSMXZ]'))
ALTER TABLE [dbo].[XSMXZ]  WITH CHECK ADD  CONSTRAINT [FK__XSMXZ__F_EMP__1A1FD08D] FOREIGN KEY([F_EMP])
REFERENCES [dbo].[EMPLOYEE] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__F_EMP__1A1FD08D]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSMXZ]'))
ALTER TABLE [dbo].[XSMXZ] CHECK CONSTRAINT [FK__XSMXZ__F_EMP__1A1FD08D]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__F_LOCAL__1837881B]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSMXZ]'))
ALTER TABLE [dbo].[XSMXZ]  WITH CHECK ADD  CONSTRAINT [FK__XSMXZ__F_LOCAL__1837881B] FOREIGN KEY([F_LOCAL])
REFERENCES [dbo].[LOCAL] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__F_LOCAL__1837881B]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSMXZ]'))
ALTER TABLE [dbo].[XSMXZ] CHECK CONSTRAINT [FK__XSMXZ__F_LOCAL__1837881B]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__F_PRODUCTBH__192BAC54]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSMXZ]'))
ALTER TABLE [dbo].[XSMXZ]  WITH CHECK ADD  CONSTRAINT [FK__XSMXZ__F_PRODUCTBH__192BAC54] FOREIGN KEY([F_PRODUCTBH])
REFERENCES [dbo].[PRODUCT] ([F_PRODUCTBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__F_PRODUCTBH__192BAC54]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSMXZ]'))
ALTER TABLE [dbo].[XSMXZ] CHECK CONSTRAINT [FK__XSMXZ__F_PRODUCTBH__192BAC54]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSZZ__F_LOCAL__1B13F4C6]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSZZ]'))
ALTER TABLE [dbo].[XSZZ]  WITH CHECK ADD  CONSTRAINT [FK__XSZZ__F_LOCAL__1B13F4C6] FOREIGN KEY([F_LOCAL])
REFERENCES [dbo].[LOCAL] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSZZ__F_LOCAL__1B13F4C6]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSZZ]'))
ALTER TABLE [dbo].[XSZZ] CHECK CONSTRAINT [FK__XSZZ__F_LOCAL__1B13F4C6]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSZZ__F_PRODUCTBH__1C0818FF]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSZZ]'))
ALTER TABLE [dbo].[XSZZ]  WITH CHECK ADD  CONSTRAINT [FK__XSZZ__F_PRODUCTBH__1C0818FF] FOREIGN KEY([F_PRODUCTBH])
REFERENCES [dbo].[PRODUCT] ([F_PRODUCTBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSZZ__F_PRODUCTBH__1C0818FF]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSZZ]'))
ALTER TABLE [dbo].[XSZZ] CHECK CONSTRAINT [FK__XSZZ__F_PRODUCTBH__1C0818FF]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFHXZ__F_DEP__1CFC3D38]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFHXZ]'))
ALTER TABLE [dbo].[YFHXZ]  WITH CHECK ADD  CONSTRAINT [FK__YFHXZ__F_DEP__1CFC3D38] FOREIGN KEY([F_DEP])
REFERENCES [dbo].[DEPARTMENT] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFHXZ__F_DEP__1CFC3D38]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFHXZ]'))
ALTER TABLE [dbo].[YFHXZ] CHECK CONSTRAINT [FK__YFHXZ__F_DEP__1CFC3D38]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFHXZ__F_VENDOR__1DF06171]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFHXZ]'))
ALTER TABLE [dbo].[YFHXZ]  WITH CHECK ADD  CONSTRAINT [FK__YFHXZ__F_VENDOR__1DF06171] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFHXZ__F_VENDOR__1DF06171]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFHXZ]'))
ALTER TABLE [dbo].[YFHXZ] CHECK CONSTRAINT [FK__YFHXZ__F_VENDOR__1DF06171]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFJSD2__F_DEP__1EE485AA]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFJSD2]'))
ALTER TABLE [dbo].[YFJSD2]  WITH CHECK ADD  CONSTRAINT [FK__YFJSD2__F_DEP__1EE485AA] FOREIGN KEY([F_DEP])
REFERENCES [dbo].[DEPARTMENT] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFJSD2__F_DEP__1EE485AA]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFJSD2]'))
ALTER TABLE [dbo].[YFJSD2] CHECK CONSTRAINT [FK__YFJSD2__F_DEP__1EE485AA]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFJSD2__F_VENDOR__1FD8A9E3]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFJSD2]'))
ALTER TABLE [dbo].[YFJSD2]  WITH CHECK ADD  CONSTRAINT [FK__YFJSD2__F_VENDOR__1FD8A9E3] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFJSD2__F_VENDOR__1FD8A9E3]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFJSD2]'))
ALTER TABLE [dbo].[YFJSD2] CHECK CONSTRAINT [FK__YFJSD2__F_VENDOR__1FD8A9E3]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZ__F_DEP__20CCCE1C]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZ]'))
ALTER TABLE [dbo].[YFMXZ]  WITH CHECK ADD  CONSTRAINT [FK__YFMXZ__F_DEP__20CCCE1C] FOREIGN KEY([F_DEP])
REFERENCES [dbo].[DEPARTMENT] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZ__F_DEP__20CCCE1C]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZ]'))
ALTER TABLE [dbo].[YFMXZ] CHECK CONSTRAINT [FK__YFMXZ__F_DEP__20CCCE1C]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZ__F_VENDOR__21C0F255]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZ]'))
ALTER TABLE [dbo].[YFMXZ]  WITH CHECK ADD  CONSTRAINT [FK__YFMXZ__F_VENDOR__21C0F255] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZ__F_VENDOR__21C0F255]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZ]'))
ALTER TABLE [dbo].[YFMXZ] CHECK CONSTRAINT [FK__YFMXZ__F_VENDOR__21C0F255]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFZZ__F_DEP__22B5168E]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFZZ]'))
ALTER TABLE [dbo].[YFZZ]  WITH CHECK ADD  CONSTRAINT [FK__YFZZ__F_DEP__22B5168E] FOREIGN KEY([F_DEP])
REFERENCES [dbo].[DEPARTMENT] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFZZ__F_DEP__22B5168E]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFZZ]'))
ALTER TABLE [dbo].[YFZZ] CHECK CONSTRAINT [FK__YFZZ__F_DEP__22B5168E]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFZZ__F_VENDOR__23A93AC7]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFZZ]'))
ALTER TABLE [dbo].[YFZZ]  WITH CHECK ADD  CONSTRAINT [FK__YFZZ__F_VENDOR__23A93AC7] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFZZ__F_VENDOR__23A93AC7]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFZZ]'))
ALTER TABLE [dbo].[YFZZ] CHECK CONSTRAINT [FK__YFZZ__F_VENDOR__23A93AC7]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSHXZ__F_CUSTOM__25918339]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSHXZ]'))
ALTER TABLE [dbo].[YSHXZ]  WITH CHECK ADD  CONSTRAINT [FK__YSHXZ__F_CUSTOM__25918339] FOREIGN KEY([F_CUSTOM])
REFERENCES [dbo].[CUSTOM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSHXZ__F_CUSTOM__25918339]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSHXZ]'))
ALTER TABLE [dbo].[YSHXZ] CHECK CONSTRAINT [FK__YSHXZ__F_CUSTOM__25918339]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSHXZ__F_DEP__249D5F00]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSHXZ]'))
ALTER TABLE [dbo].[YSHXZ]  WITH CHECK ADD  CONSTRAINT [FK__YSHXZ__F_DEP__249D5F00] FOREIGN KEY([F_DEP])
REFERENCES [dbo].[DEPARTMENT] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSHXZ__F_DEP__249D5F00]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSHXZ]'))
ALTER TABLE [dbo].[YSHXZ] CHECK CONSTRAINT [FK__YSHXZ__F_DEP__249D5F00]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSJSD2__F_CUSTOM__2779CBAB]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSJSD2]'))
ALTER TABLE [dbo].[YSJSD2]  WITH CHECK ADD  CONSTRAINT [FK__YSJSD2__F_CUSTOM__2779CBAB] FOREIGN KEY([F_CUSTOM])
REFERENCES [dbo].[CUSTOM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSJSD2__F_CUSTOM__2779CBAB]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSJSD2]'))
ALTER TABLE [dbo].[YSJSD2] CHECK CONSTRAINT [FK__YSJSD2__F_CUSTOM__2779CBAB]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSJSD2__F_DEP__2685A772]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSJSD2]'))
ALTER TABLE [dbo].[YSJSD2]  WITH CHECK ADD  CONSTRAINT [FK__YSJSD2__F_DEP__2685A772] FOREIGN KEY([F_DEP])
REFERENCES [dbo].[DEPARTMENT] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSJSD2__F_DEP__2685A772]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSJSD2]'))
ALTER TABLE [dbo].[YSJSD2] CHECK CONSTRAINT [FK__YSJSD2__F_DEP__2685A772]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSMXZ__F_CUSTOM__2962141D]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSMXZ]'))
ALTER TABLE [dbo].[YSMXZ]  WITH CHECK ADD  CONSTRAINT [FK__YSMXZ__F_CUSTOM__2962141D] FOREIGN KEY([F_CUSTOM])
REFERENCES [dbo].[CUSTOM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSMXZ__F_CUSTOM__2962141D]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSMXZ]'))
ALTER TABLE [dbo].[YSMXZ] CHECK CONSTRAINT [FK__YSMXZ__F_CUSTOM__2962141D]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSMXZ__F_DEP__286DEFE4]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSMXZ]'))
ALTER TABLE [dbo].[YSMXZ]  WITH CHECK ADD  CONSTRAINT [FK__YSMXZ__F_DEP__286DEFE4] FOREIGN KEY([F_DEP])
REFERENCES [dbo].[DEPARTMENT] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSMXZ__F_DEP__286DEFE4]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSMXZ]'))
ALTER TABLE [dbo].[YSMXZ] CHECK CONSTRAINT [FK__YSMXZ__F_DEP__286DEFE4]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSZZ__F_CUSTOM__2B4A5C8F]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSZZ]'))
ALTER TABLE [dbo].[YSZZ]  WITH CHECK ADD  CONSTRAINT [FK__YSZZ__F_CUSTOM__2B4A5C8F] FOREIGN KEY([F_CUSTOM])
REFERENCES [dbo].[CUSTOM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSZZ__F_CUSTOM__2B4A5C8F]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSZZ]'))
ALTER TABLE [dbo].[YSZZ] CHECK CONSTRAINT [FK__YSZZ__F_CUSTOM__2B4A5C8F]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSZZ__F_DEP__2A563856]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSZZ]'))
ALTER TABLE [dbo].[YSZZ]  WITH CHECK ADD  CONSTRAINT [FK__YSZZ__F_DEP__2A563856] FOREIGN KEY([F_DEP])
REFERENCES [dbo].[DEPARTMENT] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSZZ__F_DEP__2A563856]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSZZ]'))
ALTER TABLE [dbo].[YSZZ] CHECK CONSTRAINT [FK__YSZZ__F_DEP__2A563856]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZMBMX__F_PRODUCTBH1__33DFA290]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZMBMX]'))
ALTER TABLE [dbo].[ZZMBMX]  WITH CHECK ADD  CONSTRAINT [FK__ZZMBMX__F_PRODUCTBH1__33DFA290] FOREIGN KEY([F_PRODUCTBH1])
REFERENCES [dbo].[PRODUCT] ([F_PRODUCTBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZMBMX__F_PRODUCTBH1__33DFA290]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZMBMX]'))
ALTER TABLE [dbo].[ZZMBMX] CHECK CONSTRAINT [FK__ZZMBMX__F_PRODUCTBH1__33DFA290]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZMBMX__F_PRODUCTBH2__34D3C6C9]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZMBMX]'))
ALTER TABLE [dbo].[ZZMBMX]  WITH CHECK ADD  CONSTRAINT [FK__ZZMBMX__F_PRODUCTBH2__34D3C6C9] FOREIGN KEY([F_PRODUCTBH2])
REFERENCES [dbo].[PRODUCT] ([F_PRODUCTBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZMBMX__F_PRODUCTBH2__34D3C6C9]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZMBMX]'))
ALTER TABLE [dbo].[ZZMBMX] CHECK CONSTRAINT [FK__ZZMBMX__F_PRODUCTBH2__34D3C6C9]
GO

INSERT INTO DJH(F_XHD)VALUES(0)
GO