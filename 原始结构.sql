/*    ==脚本参数==

    源服务器版本 : SQL Server 2012 (11.0.2100)
    源数据库引擎版本 : Microsoft SQL Server Standard Edition
    源数据库引擎类型 : 独立的 SQL Server

    目标服务器版本 : SQL Server 2012
    目标数据库引擎版本 : Microsoft SQL Server Standard Edition
    目标数据库引擎类型 : 独立的 SQL Server
*/

USE [DATA]
GO
/****** Object:  Table [dbo].[AINPUTSOURCE]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AINPUTSOURCE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AINPUTSOURCE](
	[F_NAME] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_CAPTION] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK__AINPUTSO__4A3EA670E58F6A42] PRIMARY KEY CLUSTERED 
(
	[F_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BBVAR]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BBVAR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BBVAR](
	[F_BBBH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_VARNAME] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX] [int] NULL,
	[F_CAPTION] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TEXT] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TYPE] [int] NOT NULL,
	[F_INPUT] [int] NOT NULL,
	[F_ASS1] [varchar](51) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ASS2] [varchar](51) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ASS3] [varchar](51) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DROPSOURCE] [varchar](51) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DROPTABLENAME] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DROPFIELD1] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DROPFIELD2] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TEXTSQL] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TEXTSOURCE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PREFIX] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_POSTFIX] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__BBVAR__27988E0C0B85CD3D] PRIMARY KEY CLUSTERED 
(
	[F_BBBH] ASC,
	[F_VARNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BM]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BM](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BMMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DE] [float] NULL,
 CONSTRAINT [PK__BM__2C6EEFB6F2B3725D] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BM3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BM3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BM3](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__BM3__2C6EEFB61C5A5168] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CBPOWER]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CBPOWER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CBPOWER](
	[F_FORMNAME] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX] [int] NOT NULL,
	[F_CONTROLNAME] [varchar](40) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_CONTROLTYPE] [int] NULL,
	[F_ITEMINDEX] [int] NULL,
 CONSTRAINT [PK__CBPOWER__5DF4DAE0619AB43E] PRIMARY KEY CLUSTERED 
(
	[F_FORMNAME] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CGD]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CGD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CGD](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]		[int] NOT NULL,
	[F_VENDOR]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS]		[float] NULL,
	[F_JSH]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CGD__3C196CCDC1E8B5FD] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CGD2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CGD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CGD2](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]		[int] NOT NULL,
	[F_VENDOR]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS]		[float] NULL,
	[F_JSH]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CGD2__1BF30A66] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CGD3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CGD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CGD3](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]		[int] NOT NULL,
	[F_VENDOR]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS]		[float] NULL,
	[F_JSH]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CGD3__3C196CCDC116F2E5] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CGDMX]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CGDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CGDMX](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_JE]		[float] NULL,
	[F_SLV]		[float] NULL,
	[F_SE]		[float] NULL,
	[F_HJ]		[float] NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_SLJC]	[float] NULL,
	[F_SL2]		[float] NULL,
 CONSTRAINT [PK__CGDMX__FEDF803E6AB25D13] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CGDMX2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CGDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CGDMX2](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_JE]		[float] NULL,
	[F_SLV]		[float] NULL,
	[F_SE]		[float] NULL,
	[F_HJ]		[float] NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_SLJC]	[float] NULL,
	[F_SL2]		[float] NULL,
 CONSTRAINT [PK__CGDMX2__FEDF803EA7266E9F] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CGDMX3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CGDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CGDMX3](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_JE]		[float] NULL,
	[F_SLV]		[float] NULL,
	[F_SE]		[float] NULL,
	[F_HJ]		[float] NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_SLJC]	[float] NULL,
	[F_SL2]		[float] NULL,
 CONSTRAINT [PK__CGDMX3__FEDF803E8A6FF50B] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CKD]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKD](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJH]		[int] NOT NULL,
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,	
	[F_FPH]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MEMO]	[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2]		[float] NULL,
	[F_DJH0]	[int] NULL,
	[F_TJ]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CKD__3C196CCD86783AF5] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CKD2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKD2](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJH]		[int] NOT NULL,
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,	
	[F_FPH]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MEMO]	[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2]		[float] NULL,
	[F_DJH0]	[int] NULL,
	[F_TJ]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CKD2__3C196CCD657740F9] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CKD3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKD3](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJH]		[int] NOT NULL,
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,	
	[F_FPH]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MEMO]	[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2]		[float] NULL,
	[F_DJH0]	[int] NULL,
	[F_TJ]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CKD3__3C196CCD70D0C0D3] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CKDMX]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKDMX](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_TM]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_JE]		[float] NULL,
	[F_SLV]		[float] NULL,
	[F_SE]		[float] NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_ISCB]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLJC]	[float] NULL,
	[F_SL2]		[float] NULL,
 CONSTRAINT [PK__CKDMX__FEDF803E8BF9EFFA] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CKDMX2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKDMX2](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_TM]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_JE]		[float] NULL,
	[F_SLV]		[float] NULL,
	[F_SE]		[float] NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_ISCB]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLJC]	[float] NULL,
	[F_SL2]		[float] NULL,
 CONSTRAINT [PK__CKDMX2__FEDF803E3DFE649B] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CKDMX3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKDMX3](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_TM]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_JE]		[float] NULL,
	[F_SLV]		[float] NULL,
	[F_SE]		[float] NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_ISCB]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLJC]	[float] NULL,
	[F_SL2]		[float] NULL,
 CONSTRAINT [PK__CKDMX3__FEDF803EB87067FA] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[COMBBVAR]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COMBBVAR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COMBBVAR](
	[F_VARNAME]			[varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_CAPTION]			[varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TEXT]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TYPE]			[int] NOT NULL,
	[F_INPUT]			[int] NOT NULL,
	[F_ASS1]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ASS2]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ASS3]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DROPSOURCE]		[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DROPTABLENAME]	[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DROPFIELD1]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DROPFIELD2]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TEXTSQL]			[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TEXTSOURCE]		[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PREFIX]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_POSTFIX]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__COMBBVAR__0F3877412D95C43D] PRIMARY KEY CLUSTERED 
(
	[F_VARNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[COMFIELD]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COMFIELD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COMFIELD](
	[F_NAME]			[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX]			[int] NULL,
	[F_FIELDNAME]		[varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DISPLAYLABEL]	[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_WIDTH]			[int] NULL,
	[F_FORMAT]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TYPE]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[COMXZ]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COMXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COMXZ](
	[F_NAME]		[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SQL]			[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_RESULT1]		[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_RESULT2]		[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_RESULT3]		[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TITLE]		[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MEMO]		[varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PREFIX]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_POSTFIX]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FORMWIDTH]	[int] NOT NULL,
	[F_FORMHEIGHT]	[int] NOT NULL,
 CONSTRAINT [PK__COMXZ__4A3EA670EDC76679] PRIMARY KEY CLUSTERED 
(
	[F_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CUS_SP]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUS_SP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUS_SP](
	[F_CUSTOM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPBH]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MINDJ]		[float] NULL,
	[F_MAXDJ]		[float] NULL,
	[F_RECENTDJ]	[float] NULL,
	[F_DATE]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]			[int] NULL,
 CONSTRAINT [PK__CUS_SP__41B72FC00A81E799] PRIMARY KEY CLUSTERED 
(
	[F_CUSTOM] ASC,
	[F_SPBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CUSTOM]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOM](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_CUSTOMMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_D1] [float] NULL,
	[F_D2] [float] NULL,
	[F_D3] [float] NULL,
	[F_D4] [float] NULL,	
	[F_J5] [float] NULL,
	[F_D5] [float] NULL,
	[F_D6] [float] NULL,
	[F_D7] [float] NULL,
	[F_D8] [float] NULL,
	[F_D9] [float] NULL,
	[F_D10] [float] NULL,
	[F_D11] [float] NULL,
	[F_D12] [float] NULL,
	[F_J1] [float] NULL,
	[F_J2] [float] NULL,	
	[F_J3] [float] NULL,	
	[F_J4] [float] NULL,
	[F_J6] [float] NULL,	
	[F_J7] [float] NULL,	
	[F_J8] [float] NULL,	
	[F_J9] [float] NULL,	
	[F_J10] [float] NULL,	
	[F_J11] [float] NULL,	
	[F_J12] [float] NULL,	
	[F_GROUP] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZJM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__CUSTOM__2C6EEFB612BF49DD] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CUSTOM3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOM3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOM3](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CUSTOM3__2C6EEFB6146E495B] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CUSTOMDJ]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMDJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMDJ](
	[F_DJLX]			[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX]			[int] NOT NULL,
	[F_FIELD]			[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DISPLAYLABEL]	[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CAPTION]			[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_WIDTH]			[int] NULL,
	[F_READONLY]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VISIBLE]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PANEL]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CUSTOMDJ__AD8EBB6AEA6B71F6] PRIMARY KEY CLUSTERED 
(
	[F_DJLX] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CUSTOMGRADE]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMGRADE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMGRADE](
	[F_DM]				[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_CUSTOMGRADEMC]	[varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_KL]				[int] NULL,
	[F_PRICENUMBER]		[int] NULL,
 CONSTRAINT [PK__CUSTOMGR__2C6EEFB6A8D3FD26] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CUSTOMGROUP]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMGROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMGROUP](
	[F_DM]				[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_CUSTOMGROUPMC]	[varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK__CUSTOMGR__2C6EEFB66D34FD53] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CUSTOMLB]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMLB](
	[F_DM]				[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_CUSTOMLBMC]		[varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_JC]				[int] NULL,
 CONSTRAINT [PK__CUSTOMLB__2C6EEFB634B4ABAD] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DBD]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBD](
	[F_DJH]				[int] NOT NULL,
	[F_DATE]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]				[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]				[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW1]				[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW2]				[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH]				[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ]				[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0]			[int] NULL,
 CONSTRAINT [PK__DBD__3C196CCD268462CC] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DBD2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBD2](
	[F_DJH]				[int] NOT NULL,
	[F_DATE]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]				[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]				[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW1]				[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW2]				[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH]				[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ]				[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0]			[int] NULL,
 CONSTRAINT [PK__DBD2__3C196CCDC3B43D8B] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DBD3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBD3](
	[F_DJH]				[int] NOT NULL,
	[F_DATE]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]				[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]				[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW1]				[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW2]				[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH]				[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ]				[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0]			[int] NULL,
 CONSTRAINT [PK__DBD3__3C196CCD7DE54C6C] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DBDMX]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBDMX](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_TM]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_JE]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_SL2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLJC]	[float] NULL,
 CONSTRAINT [PK__DBDMX__FEDF803E160C2921] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DBDMX2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBDMX2](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_TM]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_JE]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_SL2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLJC]	[float] NULL,
 CONSTRAINT [PK__DBDMX2__FEDF803E69934CFC] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DBDMX3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBDMX3](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_TM]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_JE]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_SL2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLJC]	[float] NULL,
 CONSTRAINT [PK__DBDMX3__FEDF803E459A5B18] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DBZZ]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBZZ](
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SLS1]	[float] NULL,
	[F_SLS2]	[float] NULL,
	[F_SLS3]	[float] NULL,
	[F_SLS4]	[float] NULL,
	[F_SLS5]	[float] NULL,
	[F_SLS6]	[float] NULL,
	[F_SLS7]	[float] NULL,
	[F_SLS8]	[float] NULL,
	[F_SLS9]	[float] NULL,
	[F_SLS10]	[float] NULL,
	[F_SLS11]	[float] NULL,
	[F_SLS12]	[float] NULL,
	[F_JES1]	[float] NULL,
	[F_JES2]	[float] NULL,
	[F_JES3]	[float] NULL,
	[F_JES4]	[float] NULL,
	[F_JES5]	[float] NULL,
	[F_JES6]	[float] NULL,
	[F_JES7]	[float] NULL,
	[F_JES8]	[float] NULL,
	[F_JES9]	[float] NULL,
	[F_JES10]	[float] NULL,
	[F_JES11]	[float] NULL,
	[F_JES12]	[float] NULL,
	[F_SLF1]	[float] NULL,
	[F_SLF2]	[float] NULL,
	[F_SLF3]	[float] NULL,
	[F_SLF4]	[float] NULL,
	[F_SLF5]	[float] NULL,
	[F_SLF6]	[float] NULL,
	[F_SLF7]	[float] NULL,
	[F_SLF8]	[float] NULL,
	[F_SLF9]	[float] NULL,
	[F_SLF10]	[float] NULL,
	[F_SLF11]	[float] NULL,
	[F_SLF12]	[float] NULL,
	[F_JEF1]	[float] NULL,
	[F_JEF2]	[float] NULL,
	[F_JEF3]	[float] NULL,
	[F_JEF4]	[float] NULL,
	[F_JEF5]	[float] NULL,
	[F_JEF6]	[float] NULL,
	[F_JEF7]	[float] NULL,
	[F_JEF8]	[float] NULL,
	[F_JEF9]	[float] NULL,
	[F_JEF10]	[float] NULL,
	[F_JEF11]	[float] NULL,
	[F_JEF12]	[float] NULL,
 CONSTRAINT [PK__DBZZ__8278C62447597AC9] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DELETED]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETED]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DELETED](
	[F_DATE1]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE2]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PZH]		[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DELETED] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DHD]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DHD](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]		[int] NOT NULL,
	[F_CUSTOM]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS]		[float] NULL,
	[F_JSH]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0]	[int] NULL,
	[F_NEWSP]	[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DHD__3C196CCD210AEB70] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DHD2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DHD2](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]		[int] NOT NULL,
	[F_CUSTOM]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS]		[float] NULL,
	[F_JSH]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0]	[int] NULL,
	[F_NEWSP]	[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DHD2__3C196CCD5AC3D741] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DHD3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DHD3](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]		[int] NOT NULL,
	[F_CUSTOM]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS]		[float] NULL,
	[F_JSH]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0]	[int] NULL,
	[F_NEWSP]	[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DHD3__3C196CCD1B5B0FD9] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DHDMX]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DHDMX](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_TM]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_KL]		[int] NULL,
	[F_JE]		[float] NULL,
	[F_SLV]		[float] NULL,
	[F_SE]		[float] NULL,
	[F_CB]		[float] NULL,
	[F_HJ]		[float] NULL,
	[F_DWCB]	[float] NULL,
	[F_RATE]	[float] NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_SLJC]	[float] NULL,
	[F_ISCB]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2]		[float] NULL,
	[F_FPH]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZF]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DHDMX__FEDF803EA86C6E29] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DHDMX2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DHDMX2](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_TM]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_KL]		[int] NULL,
	[F_JE]		[float] NULL,
	[F_SLV]		[float] NULL,
	[F_SE]		[float] NULL,
	[F_CB]		[float] NULL,
	[F_HJ]		[float] NULL,
	[F_DWCB]	[float] NULL,
	[F_RATE]	[float] NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_SLJC]	[float] NULL,
	[F_ISCB]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2]		[float] NULL,
	[F_FPH]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZF]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DHDMX2__FEDF803E04968FB1] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DHDMX3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DHDMX3](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_TM]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_KL]		[int] NULL,
	[F_JE]		[float] NULL,
	[F_SLV]		[float] NULL,
	[F_SE]		[float] NULL,
	[F_CB]		[float] NULL,
	[F_HJ]		[float] NULL,
	[F_DWCB]	[float] NULL,
	[F_RATE]	[float] NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_SLJC]	[float] NULL,
	[F_ISCB]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2]		[float] NULL,
	[F_FPH]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZF]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DHDMX3__FEDF803E2231658E] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DJH]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DJH](
	[F_JHD]		[int] NULL,
	[F_XHD]		[int] NULL,
	[F_CGD]		[int] NULL,
	[F_RKD]		[int] NULL,
	[F_CKD]		[int] NULL,
	[F_DBD]		[int] NULL,
	[F_XSBB]	[int] NULL,
	[F_PC]		[int] NULL,
	[F_YSJSD]	[int] NULL,
	[F_YFJSD]	[int] NULL,
	[F_ZZD]		[int] NULL,
	[F_TJD]		[int] NULL,
	[F_PSD]		[int] NULL,
	[F_JIEZ]	[int] NULL,
	[F_DHD]		[int] NULL,
	[F_YSQC]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YFQC]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CX]		[int] NULL,
	[F_QDD]		[int] NULL,
	[F_NEWSP]	[int] NULL,
	[F_ENEMY]	[int] NULL,
	[F_PDD]		[int] NULL,
	[F_SP]		[int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DROPSOURCE]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DROPSOURCE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DROPSOURCE](
	[F_NAME]		[varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TABLENAME]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_FIELD1]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_FIELD2]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FIELD3]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BBBH]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DROPSOUR__4A3EA670B243C50B] PRIMARY KEY CLUSTERED 
(
	[F_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ENEMYXX]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ENEMYXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ENEMYXX](
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_YWY]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC]	[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPGG]	[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD]		[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ2]		[float] NULL,
	[F_CS]		[int] NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ENEMY]	[varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ0]		[float] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ENV]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ENV]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ENV](
	[F_BH]		[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_ENVMC]	[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATA]	[varchar](1000) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__ENV__2C6E30FAD08C8730] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EVENT]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EVENT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EVENT](
	[F_DJLX]		[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX]		[int] NOT NULL,
	[F_CONDITION]	[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TYPE]		[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HINT]		[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__EVENT__AD8EBB6AAAB39E55] PRIMARY KEY CLUSTERED 
(
	[F_DJLX] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[FJXX]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FJXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FJXX](
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_XX]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BH]		[int] NOT NULL,
 CONSTRAINT [PK__FJXX__3278C9DAE0A822B9] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[FPCOL]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FPCOL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FPCOL](
	[F_BH]			[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX]		[int] NOT NULL,
	[F_COLCAPTION]	[varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_X]			[int] NULL,
	[F_Y]			[int] NULL,
	[F_ALIGNMENT]	[int] NOT NULL,
 CONSTRAINT [PK__FPCOL__E06014D92C66C5F7] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[FPITEM]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FPITEM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FPITEM](
	[F_BH]		[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_ITEMBH]	[varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_FONT]	[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_X]		[int] NULL,
	[F_Y]		[int] NULL,
	[F_VISIBLE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_INDEX]	[int] NULL,
 CONSTRAINT [PK__FPITEM__075A061172ED827A] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC,
	[F_ITEMBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[FPMODEL]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FPMODEL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FPMODEL](
	[F_BH]			[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_FPMODELMC]	[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LEFT]		[int] NULL,
	[F_TOP]			[int] NULL,
	[F_BBFONT]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ROWS]		[int] NULL,
	[F_PAPERSIZE]	[int] NULL,
	[F_PAPERWIDTH]	[int] NULL,
	[F_PAPERLENGTH] [int] NULL,
	[F_ORIENT]		[int] NULL,
	[F_COLS]		[int] NULL,
	[F_COLX]		[int] NULL,
	[F_COLY]		[int] NULL,
	[F_ROWHEIGHT]	[int] NULL,
 CONSTRAINT [PK__FPMODEL__2C6E30FA67B5DCCB] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[GHLB]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GHLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GHLB](
	[F_DM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_GHLBMC]	[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FEE]		[float] NULL,
	[F_GBF]		[float] NULL,
 CONSTRAINT [PK__GHLB__2C6EEFB6A3D37B2A] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[HW]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HW](
	[F_DM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HWMC]	[varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_LOCAL]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__HW__2C6EEFB6BCBA6E7A] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[HW3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HW3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HW3](
	[F_DM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__HW3__2C6EEFB64563AE0C] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JGZZ]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JGZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JGZZ](
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SLS1]	[float] NULL,
	[F_SLS2]	[float] NULL,
	[F_SLS3]	[float] NULL,
	[F_SLS4]	[float] NULL,
	[F_SLS5]	[float] NULL,
	[F_SLS6]	[float] NULL,
	[F_SLS7]	[float] NULL,
	[F_SLS8]	[float] NULL,
	[F_SLS9]	[float] NULL,
	[F_SLS10]	[float] NULL,
	[F_SLS11]	[float] NULL,
	[F_SLS12]	[float] NULL,
	[F_JES1]	[float] NULL,
	[F_JES2]	[float] NULL,
	[F_JES3]	[float] NULL,
	[F_JES4]	[float] NULL,
	[F_JES5]	[float] NULL,
	[F_JES6]	[float] NULL,
	[F_JES7]	[float] NULL,
	[F_JES8]	[float] NULL,
	[F_JES9]	[float] NULL,
	[F_JES10]	[float] NULL,
	[F_JES11]	[float] NULL,
	[F_JES12]	[float] NULL,
	[F_SLF1]	[float] NULL,
	[F_SLF2]	[float] NULL,
	[F_SLF3]	[float] NULL,
	[F_SLF4]	[float] NULL,
	[F_SLF5]	[float] NULL,
	[F_SLF6]	[float] NULL,
	[F_SLF7]	[float] NULL,
	[F_SLF8]	[float] NULL,
	[F_SLF9]	[float] NULL,
	[F_SLF10]	[float] NULL,
	[F_SLF11]	[float] NULL,
	[F_SLF12]	[float] NULL,
	[F_JEF1]	[float] NULL,
	[F_JEF2]	[float] NULL,
	[F_JEF3]	[float] NULL,
	[F_JEF4]	[float] NULL,
	[F_JEF5]	[float] NULL,
	[F_JEF6]	[float] NULL,
	[F_JEF7]	[float] NULL,
	[F_JEF8]	[float] NULL,
	[F_JEF9]	[float] NULL,
	[F_JEF10]	[float] NULL,
	[F_JEF11]	[float] NULL,
	[F_JEF12]	[float] NULL,
 CONSTRAINT [PK__JGZZ__8278C62450E68724] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHBB]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHBB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHBB](
	[F_CAPTION]		[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SP]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CB]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TOP]			[int] NULL,
	[F_LEFT]		[int] NULL,
	[F_ROWS]		[int] NULL,
	[F_SIZE]		[int] NULL,
	[F_LENGTH]		[int] NULL,
	[F_WIDTH]		[int] NULL,
	[F_ORIENT]		[int] NULL,
	[F_YWY]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BH]			[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPLB]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ]			[smallint] NULL,
	[F_TITLEFONT]	[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BBFONT]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_COLNUMBER]	[int] NULL,
	[F_COLCAPTION]	[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_COLWIDTH]	[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JHBB__2C6E30FA6FB2FE0B] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHD]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHD](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]		[int] NOT NULL,
	[F_VENDOR]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS]		[float] NULL,
	[F_JSH]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0]	[int] NULL,
 CONSTRAINT [PK__JHD__3C196CCDA72E215D] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHD2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHD2](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]		[int] NOT NULL,
	[F_VENDOR]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS]		[float] NULL,
	[F_JSH]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0]	[int] NULL,
 CONSTRAINT [PK__JHD2__3C196CCDA18B58C4] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHD3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHD3](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]		[int] NOT NULL,
	[F_VENDOR]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS]		[float] NULL,
	[F_JSH]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0]	[int] NULL,
 CONSTRAINT [PK__JHD3__3C196CCD816E6836] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHDMX]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHDMX](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_TM]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_JE]		[float] NULL,
	[F_SLV]		[float] NULL,
	[F_KL]		[int] NULL,
	[F_SE]		[float] NULL,
	[F_HJ]		[float] NULL,
	[F_HSDJ]	[float] NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_SLJC]	[float] NULL,
	[F_SL2]		[float] NULL,
 CONSTRAINT [PK__JHDMX__FEDF803E93EA72C7] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHDMX2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHDMX2](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_TM]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_JE]		[float] NULL,
	[F_SLV]		[float] NULL,
	[F_KL]		[int] NULL,
	[F_SE]		[float] NULL,
	[F_HJ]		[float] NULL,
	[F_HSDJ]	[float] NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_SLJC]	[float] NULL,
	[F_SL2]		[float] NULL,
 CONSTRAINT [PK__JHDMX2__FEDF803E8565DC92] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHDMX3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHDMX3](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_TM]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_JE]		[float] NULL,
	[F_SLV]		[float] NULL,
	[F_KL]		[int] NULL,
	[F_SE]		[float] NULL,
	[F_HJ]		[float] NULL,
	[F_HSDJ]	[float] NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_SLJC]	[float] NULL,
	[F_SL2]		[float] NULL,
 CONSTRAINT [PK__JHDMX3__FEDF803E8709D60E] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHZZ]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHZZ](
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SL1]		[float] NULL,
	[F_SL2]		[float] NULL,
	[F_SL3]		[float] NULL,
	[F_SL4]		[float] NULL,
	[F_SL5]		[float] NULL,
	[F_SL6]		[float] NULL,
	[F_SL7]		[float] NULL,
	[F_SL8]		[float] NULL,
	[F_SL9]		[float] NULL,
	[F_SL10]	[float] NULL,
	[F_SL11]	[float] NULL,
	[F_SL12]	[float] NULL,
	[F_JE1]		[float] NULL,
	[F_JE2]		[float] NULL,
	[F_JE3]		[float] NULL,
	[F_JE4]		[float] NULL,
	[F_JE5]		[float] NULL,
	[F_JE6]		[float] NULL,
	[F_JE7]		[float] NULL,
	[F_JE8]		[float] NULL,
	[F_JE9]		[float] NULL,
	[F_JE10]	[float] NULL,
	[F_JE11]	[float] NULL,
	[F_JE12]	[float] NULL,
	[F_SE1]		[float] NULL,
	[F_SE2]		[float] NULL,
	[F_SE3]		[float] NULL,
	[F_SE4]		[float] NULL,
	[F_SE5]		[float] NULL,
	[F_SE6]		[float] NULL,
	[F_SE7]		[float] NULL,
	[F_SE8]		[float] NULL,
	[F_SE9]		[float] NULL,
	[F_SE10]	[float] NULL,
	[F_SE11]	[float] NULL,
	[F_SE12]	[float] NULL,
 CONSTRAINT [PK__JHZZ__8278C6241EFBC279] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JSFS]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JSFS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JSFS](
	[F_DM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_JSFSMC]	[varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_JC]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JSFS__2C6EEFB6A9BCDAAE] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JXCBB1]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JXCBB1]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JXCBB1](
	[F_BH]				[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_JXCBBMC]			[varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_ROWS]			[int] NOT NULL,
	[F_COLS]			[int] NOT NULL,
	[F_IFBM]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFYWY]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFHW]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPFW]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPJB]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFDATE]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFKJQJ]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DESIGN]			[image] NULL,
	[F_IFSP]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFCUSTOM]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFVENDOR]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPSX1]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPSX2]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPSX3]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPSX4]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPSX5]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MEMO]			[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFCUSTOMGROUP]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SYDW]			[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SYSM]			[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JXCBB1__2C6E30FA71078F30] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JXCBB2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JXCBB2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JXCBB2](
	[F_BH]				[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_JXCBBMC]			[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SQL]				[image] NULL,
	[F_COLS]			[int] NULL,
	[F_HEADERS]			[int] NULL,
	[F_IFBM]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFYWY]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFHW]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPFW]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSP]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFDATE]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPJB]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFKJQJ]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SORTCOL]			[int] NULL,
	[F_IFCUSTOM]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFVENDOR]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPSX1]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPSX2]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPSX3]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPSX4]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPSX5]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TITLE]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TOP]				[int] NULL,
	[F_LEFT]			[int] NULL,
	[F_ROWS]			[int] NULL,
	[F_SIZE]			[int] NULL,
	[F_LENGTH]			[int] NULL,
	[F_WIDTH]			[int] NULL,
	[F_ORIENT]			[int] NULL,
	[F_TITLEFONT]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BBFONT]			[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ROWSPACE]		[int] NULL,
	[F_MEMO]			[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFCUSTOMGROUP]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SYDW]			[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SYSM]			[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFPAGESUM]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFADDBLANK]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BLANKCHAR]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HCWIDTH]			[int] NULL,
	[F_HJOPTION]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_AUTOEXPAND]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_EXPANDSQL]		[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_EXPANDLIST]		[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_EXPANDCAPTION]	[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_AUTODYPARAM]		[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JXCBB2__2C6E30FAAD720EED] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JXCBBCOLS]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JXCBBCOLS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JXCBBCOLS](
	[F_BBBH]		[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX]		[int] NOT NULL,
	[F_NAME]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FIELDINDEX]	[int] NULL,
	[F_ALIGNMENT]	[int] NULL,
	[F_TYPE]		[int] NULL,
	[F_DECIMALS]	[int] NULL,
	[F_TSEPARATOR]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_WIDTH]		[int] NULL,
	[F_PRINTWIDTH]	[int] NULL,
	[F_FIELDNAME]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VISIBLE]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFHJ]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_STYLE]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFKEY]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFEXPAND]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFEXPANDED]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_EXPANDFIELD] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_KEYVALUE]	[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SUM]			[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_EXPRESS]		[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JXCBBCOL__EB652D5B74D9F0F2] PRIMARY KEY CLUSTERED 
(
	[F_BBBH] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JXCBBDIC]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JXCBBDIC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JXCBBDIC](
	[F_FIELD]	[varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_CAPTION] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JXCBBDIC__233B21D191DBF989] PRIMARY KEY CLUSTERED 
(
	[F_FIELD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JXCBBHEADERS]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JXCBBHEADERS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JXCBBHEADERS](
	[F_BBBH]		[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX]		[int] NOT NULL,
	[F_NAME]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_STARTCOL]	[int] NOT NULL,
	[F_ENDCOL]		[int] NOT NULL,
 CONSTRAINT [PK__JXCBBHEA__EB652D5B7E6A491F] PRIMARY KEY CLUSTERED 
(
	[F_BBBH] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JXCBBPAGEFOOTER]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JXCBBPAGEFOOTER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JXCBBPAGEFOOTER](
	[F_BBBH]	[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX]	[int] NOT NULL,
	[F_LEFT]	[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CENTER]	[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_RIGHT]	[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JXCBBPAG__EB652D5BF0973CC7] PRIMARY KEY CLUSTERED 
(
	[F_BBBH] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JXCBBPAGEHEADER]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JXCBBPAGEHEADER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JXCBBPAGEHEADER](
	[F_BBBH]	[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX]	[int] NOT NULL,
	[F_LEFT]	[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CENTER]	[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_RIGHT]	[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JXCBBPAG__EB652D5B755F0674] PRIMARY KEY CLUSTERED 
(
	[F_BBBH] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JXCMENU]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JXCMENU]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JXCMENU](
	[F_ANAME]	[varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_NAME]	[int] NOT NULL,
	[F_JC]		[int] NOT NULL,
	[F_CAPTION] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BBLX]	[varchar](1) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BBBH]	[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_JB]		[int] NOT NULL,
	[F_FIXED]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JXCMENU__018FC2EAC12E7EC7] PRIMARY KEY CLUSTERED 
(
	[F_ANAME] ASC,
	[F_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[KCMXZ]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KCMXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KCMXZ](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]		[int] NOT NULL,
	[F_ZY]		[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLS]		[float] NULL,
	[F_JES]		[float] NULL,
	[F_SLF]		[float] NULL,
	[F_JEF]		[float] NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLX]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HC]		[int] NULL,
	[F_CX]		[int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[KCYE]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KCYE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KCYE](
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SLYE]	[float] NULL,
 CONSTRAINT [PK__KCYE__8278C624AE9D94B2] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[KCZZ]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KCZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KCZZ](
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SL0]		[float] NULL,
	[F_JE0]		[float] NULL,
	[F_SLYE]	[float] NULL,
	[F_JEYE]	[float] NULL,
	[F_PJDJ]	[float] NULL,
	[F_JE]		[float] NULL,
	[F_JJ]		[float] NULL,
	[F_SLS1]	[float] NULL,
	[F_SLS2]	[float] NULL,
	[F_SLS3]	[float] NULL,
	[F_SLS4]	[float] NULL,
	[F_SLS5]	[float] NULL,
	[F_SLS6]	[float] NULL,
	[F_SLS7]	[float] NULL,
	[F_SLS8]	[float] NULL,
	[F_SLS9]	[float] NULL,
	[F_SLS10]	[float] NULL,
	[F_SLS11]	[float] NULL,
	[F_SLS12]	[float] NULL,
	[F_JES1]	[float] NULL,
	[F_JES2]	[float] NULL,
	[F_JES3]	[float] NULL,
	[F_JES4]	[float] NULL,
	[F_JES5]	[float] NULL,
	[F_JES6]	[float] NULL,
	[F_JES7]	[float] NULL,
	[F_JES8]	[float] NULL,
	[F_JES9]	[float] NULL,
	[F_JES10]	[float] NULL,
	[F_JES11]	[float] NULL,
	[F_JES12]	[float] NULL,
	[F_SLF1]	[float] NULL,
	[F_SLF2]	[float] NULL,
	[F_SLF3]	[float] NULL,
	[F_SLF4]	[float] NULL,
	[F_SLF5]	[float] NULL,
	[F_SLF6]	[float] NULL,
	[F_SLF7]	[float] NULL,
	[F_SLF8]	[float] NULL,
	[F_SLF9]	[float] NULL,
	[F_SLF10]	[float] NULL,
	[F_SLF11]	[float] NULL,
	[F_SLF12]	[float] NULL,
	[F_JEF1]	[float] NULL,
	[F_JEF2]	[float] NULL,
	[F_JEF3]	[float] NULL,
	[F_JEF4]	[float] NULL,
	[F_JEF5]	[float] NULL,
	[F_JEF6]	[float] NULL,
	[F_JEF7]	[float] NULL,
	[F_JEF8]	[float] NULL,
	[F_JEF9]	[float] NULL,
	[F_JEF10]	[float] NULL,
	[F_JEF11]	[float] NULL,
	[F_JEF12]	[float] NULL,
 CONSTRAINT [PK__KCZZ__8278C6246EC1621F] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[KJQJ]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KJQJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KJQJ](
	[F_YF]		[int] NOT NULL,
	[F_START]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_END]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZ]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__KJQJ__2C6D7DE5976FADCE] PRIMARY KEY CLUSTERED 
(
	[F_YF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LSH]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LSH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LSH](
	[F_J1] [int] NULL,
	[F_J2] [int] NULL,
	[F_J3] [int] NULL,
	[F_J4] [int] NULL,
	[F_J5] [int] NULL,
	[F_R1] [int] NULL,
	[F_R2] [int] NULL,
	[F_R3] [int] NULL,
	[F_R4] [int] NULL,
	[F_R5] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OPERATOR]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OPERATOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OPERATOR](
	[F_DM]			[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_NAME]		[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PASSWORD]	[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZN]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_RED]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__OPERATOR__2C6E30FA9F44ACEE] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PAD]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PAD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PAD](
	[F_DM]		[int] NOT NULL,
	[F_TEXT]	[image] NULL,
 CONSTRAINT [PK__PAD__2C6EEFB6B925CA38] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PDD]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PDD](
	[F_DJH]		[int] NOT NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY]		[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PDD__3C196CCD2B963326] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PDD2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PDD2](
	[F_DJH]			[int] NOT NULL,
	[F_HW]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PDD2__3C196CCD7D0CB674] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PDD3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PDD3](
	[F_DJH]		[int] NOT NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY]		[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PDD3__3C196CCDD68B33EC] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PDDMX]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PDDMX](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PC]		[int] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLYE]	[float] NULL,
	[F_PDSL]	[float] NULL,
	[F_PYSL]	[float] NULL,
	[F_TJ]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ2]		[float] NULL,
 CONSTRAINT [PK__PDDMX__FEDF803E1BC439DA] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PDDMX2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PDDMX2](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PC]		[int] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLYE]	[float] NULL,
	[F_PDSL]	[float] NULL,
	[F_PYSL]	[float] NULL,
	[F_TJ]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ2]		[float] NULL,
 CONSTRAINT [PK__PDDMX2__FEDF803EE915183E] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PDDMX3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PDDMX3](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PC]		[int] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLYE]	[float] NULL,
	[F_PDSL]	[float] NULL,
	[F_PYSL]	[float] NULL,
	[F_TJ]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ2]		[float] NULL,
 CONSTRAINT [PK__PDDMX3__FEDF803E28EFCFEA] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[POWER]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[POWER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[POWER](
	[F_CZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_ZT]	[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_QX]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GN]	[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SY]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SH]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZ]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DY]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BJ]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[POWERITEM]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[POWERITEM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[POWERITEM](
	[F_BH]			[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_NAME]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CAPTION]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CLASSNAME]	[varchar](20) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PRINTCOLHEADER]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRINTCOLHEADER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRINTCOLHEADER](
	[F_BH]			[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX]		[int] NOT NULL,
	[F_CAPTION]		[varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_STARTCOL]	[int] NULL,
	[F_ENDCOL]		[int] NULL,
	[F_FONT]		[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ALIGNMENT]	[int] NULL,
 CONSTRAINT [PK__PRINTCOL__E06014D92B2B2302] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PRINTFIELD]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRINTFIELD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRINTFIELD](
	[F_BH]				[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX]			[int] NOT NULL,
	[F_FIELDNAME]		[varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_FIELDLABEL]		[varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_FIELDCAPTION]	[varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_FIELDWIDTH]		[int] NULL,
	[F_FONT]			[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CAPTIONFONT]		[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ALIGNMENT]		[int] NULL,
	[F_FORMAT]			[int] NULL,
	[F_FIELDTYPE]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DECIMAL]			[int] NULL,
	[F_SEPERATOR]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_WORDWARP]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BLANK0]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VISIBLE]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PRINTFIE__E06014D92AD87698] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PRINTMACRO]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRINTMACRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRINTMACRO](
	[F_BH]		[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_NAME]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_CAPTION] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK__PRINTMAC__38CDDA9D23DC7299] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC,
	[F_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PRINTPAGEFOOTER]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRINTPAGEFOOTER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRINTPAGEFOOTER](
	[F_BH]			[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX]		[int] NOT NULL,
	[F_STRLEFT]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FONTLEFT]	[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ALEFT]		[int] NULL,
	[F_STRCENTER]	[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FONTCENTER]	[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ACENTER]		[int] NULL,
	[F_STRRIGHT]	[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FONTRIGHT]	[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ARIGHT]		[int] NULL,
	[F_ROWSPACE]	[float] NULL,
	[F_OLEFT]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_OCENTER]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ORIGHT]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TITLEHEIGHT] [int] NULL,
 CONSTRAINT [PK__PRINTPAG__E06014D98D3963A5] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PRINTPAGEHEADER]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRINTPAGEHEADER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRINTPAGEHEADER](
	[F_BH]			[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX]		[int] NOT NULL,
	[F_STRLEFT]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FONTLEFT]	[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ALEFT]		[int] NULL,
	[F_STRCENTER]	[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FONTCENTER]	[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ACENTER]		[int] NULL,
	[F_STRRIGHT]	[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FONTRIGHT]	[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ARIGHT]		[int] NULL,
	[F_ROWSPACE]	[float] NULL,
	[F_OLEFT]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_OCENTER]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ORIGHT]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PRINTPAG__E06014D9F3DC9179] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PRINTPARAM]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRINTPARAM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRINTPARAM](
	[F_BH]				[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_PRINTPARAMMC]	[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TITLE]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TOP]				[int] NULL,
	[F_LEFT]			[int] NULL,
	[F_PAPERSIZE]		[int] NULL,
	[F_PAPERWIDTH]		[int] NULL,
	[F_PAPERLENGTH]		[int] NULL,
	[F_ORIENT]			[int] NULL,
	[F_ROWS]			[int] NULL,
	[F_TITLEFONT]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BBFONT]			[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_COLNUMBER]		[int] NULL,
	[F_COLCAPTION]		[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_COLWIDTH]		[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PRINTPAR__2C6E30FA69F968CA] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PRINTPARAME]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRINTPARAME]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRINTPARAME](
	[F_BH]				[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DEFAULTFONT]		[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TITLE]			[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TITLEVISIBLE]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TITLEHEIGHT]		[float] NULL,
	[F_TITLEFONT]		[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PAPERSIZE]		[int] NULL,
	[F_ORIENT]			[int] NULL,
	[F_PAPERWIDTH]		[int] NULL,
	[F_PAPERLENGTH]		[int] NULL,
	[F_PAPERLEFT]		[int] NULL,
	[F_PAPERTOP]		[int] NULL,
	[F_PRINTQUALITY]	[int] NULL,
	[F_FIXROW]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MAXROW]			[int] NULL,
	[F_LASTROW]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ROWHEIGHT]		[float] NULL,
	[F_HEADERWIDTH1]	[float] NULL,
	[F_HEADERWIDTH2]	[float] NULL,
	[F_HEADERWIDTH3]	[float] NULL,
	[F_FOOTERWIDTH1]	[float] NULL,
	[F_FOOTERWIDTH2]	[float] NULL,
	[F_FOOTERWIDTH3]	[float] NULL,
	[F_CAPTIONHEIGHT]	[float] NULL,
	[F_HEADERHEIGHT]	[float] NULL,
	[F_BODYLINEOPTION]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FRAMEHLINE]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FRAMEVLINE]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CAPTIONHLINE]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CAPTIONVLINE]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BODYHLINE]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BODYVLINE]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LASTROWLINE]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PRINTPAR__2C6E30FAC4BCC769] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PSD]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PSD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PSD](
	[F_DATE]	[datetime] NULL,
	[F_DJH]		[int] NOT NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PSD__3C196CCD942ADED2] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PSDMX]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PSDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PSDMX](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[float] NOT NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPMC]	[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW1]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS]		[float] NULL,
	[F_CD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG]		[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL1]		[float] NULL,
	[F_SL2]		[float] NULL,
	[F_SL3]		[float] NULL,
	[F_SL4]		[float] NULL,
	[F_SL5]		[float] NULL,
	[F_SL6]		[float] NULL,
	[F_SL7]		[float] NULL,
	[F_SL]		[float] NULL,
 CONSTRAINT [PK__PSDMX__FEDF803EDEAD0EDB] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[QDD]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QDD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QDD](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]		[int] NOT NULL,
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PSZQ]	[int] NULL,
	[F_LJZQ]	[int] NULL,	
	[F_HZ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,	
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__QDD__3C196CCD2ECC0D91] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[QDD2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QDD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QDD2](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]		[int] NOT NULL,
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PSZQ]	[int] NULL,
	[F_LJZQ]	[int] NULL,	
	[F_HZ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,	
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__QDD2__3C196CCD53528C80] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[QDD3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QDD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QDD3](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]		[int] NOT NULL,
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PSZQ]	[int] NULL,
	[F_LJZQ]	[int] NULL,	
	[F_HZ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,	
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__QDD3__3C196CCD94DF359A] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[QDDMX]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QDDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QDDMX](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_RJXL]	[float] NULL,
	[F_JYSL]	[float] NULL,
	[F_SLV]		[float] NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_SL2]		[float] NULL,
	[F_SLJC]	[float] NULL,
 CONSTRAINT [PK__QDDMX__FEDF803E83AD54A4] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[QDDMX2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QDDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QDDMX2](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_RJXL]	[float] NULL,
	[F_JYSL]	[float] NULL,
	[F_SLV]		[float] NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_SL2]		[float] NULL,
	[F_SLJC]	[float] NULL,
 CONSTRAINT [PK__QDDMX2__FEDF803E7741770F] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[QDDMX3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QDDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QDDMX3](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_RJXL]	[float] NULL,
	[F_JYSL]	[float] NULL,
	[F_SLV]		[float] NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_SL2]		[float] NULL,
	[F_SLJC]	[float] NULL,
 CONSTRAINT [PK__QDDMX3__FEDF803EC85F0EE6] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RETAIL]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RETAIL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RETAIL](
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TM]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC]	[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_JE]		[float] NULL,
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CZY]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD]		[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG]		[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS]		[float] NULL,
	[F_TIME]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]		[int] NULL,
	[F_KL]		[int] NULL,
	[F_DJ2]		[float] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFPH]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_NEWPC]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RETAIL11]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RETAIL11]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RETAIL11](
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TM]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC]	[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_JE]		[float] NULL,
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CZY]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD]		[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG]		[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS]		[float] NULL,
	[F_TIME]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]		[int] NULL,
	[F_KL]		[int] NULL,
	[F_DJ2]		[float] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFPH]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_NEWPC]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RETAIL2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RETAIL2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RETAIL2](
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TM]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC]	[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_JE]		[float] NULL,
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CZY]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD]		[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG]		[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS]		[float] NULL,
	[F_TIME]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]		[int] NULL,
	[F_KL]		[int] NULL,
	[F_DJ2]		[float] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFPH]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_NEWPC]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RETAILC]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RETAILC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RETAILC](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JE]		[float] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RETAILC11]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RETAILC11]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RETAILC11](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JE]		[float] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RETAILC2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RETAILC2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RETAILC2](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JE]		[float] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RETAILDJ]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RETAILDJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RETAILDJ](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJH]		[int] NULL,
 CONSTRAINT [PK__RETAILDJ__6F5CCECA417E1EEB] PRIMARY KEY CLUSTERED 
(
	[F_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RKD]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKD](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]		[int] NOT NULL,
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0]	[int] NULL,
	[F_MEMO]	[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2]		[float] NULL,
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__RKD__3C196CCD12BA7012] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RKD2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKD2](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]		[int] NOT NULL,
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0]	[int] NULL,
	[F_MEMO]	[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2]		[float] NULL,
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__RKD2__3C196CCD7DC4CBF3] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RKD3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKD3](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]		[int] NOT NULL,
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0]	[int] NULL,
	[F_MEMO]	[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2]		[float] NULL,
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__RKD3__3C196CCD52859CAE] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RKDMX]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKDMX](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_TM]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_JE]		[float] NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_KL]		[int] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_YLF]		[float] NULL,
	[F_JGF]		[float] NULL,
	[F_ISCB]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLJC]	[float] NULL,
	[F_SL2]		[float] NULL,
 CONSTRAINT [PK__RKDMX__FEDF803E8349DAD5] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RKDMX2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKDMX2](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_TM]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_JE]		[float] NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_KL]		[int] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_YLF]		[float] NULL,
	[F_JGF]		[float] NULL,
	[F_ISCB]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLJC]	[float] NULL,
	[F_SL2]		[float] NULL,
 CONSTRAINT [PK__RKDMX2__FEDF803EE4CFA788] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RKDMX3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKDMX3](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_TM]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_JE]		[float] NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_KL]		[int] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_YLF]		[float] NULL,
	[F_JGF]		[float] NULL,
	[F_ISCB]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLJC]	[float] NULL,
	[F_SL2]		[float] NULL,
 CONSTRAINT [PK__RKDMX3__FEDF803E55D1C872] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SFZY]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SFZY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SFZY](
	[F_DM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SFZYMC]	[varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SF]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__SFZY__2C6EEFB6197DE2C1] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SJMXZ]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SJMXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SJMXZ](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLX]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]		[int] NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZY]		[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JXSE]	[float] NULL,
	[F_XXSE]	[float] NULL,
	[F_ZCSE]	[float] NULL,
	[F_HC]		[int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SJZZ]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SJZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SJZZ](
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_JXS1]	[float] NULL,
	[F_JXS2]	[float] NULL,
	[F_JXS3]	[float] NULL,
	[F_JXS4]	[float] NULL,
	[F_JXS5]	[float] NULL,
	[F_JXS6]	[float] NULL,
	[F_JXS7]	[float] NULL,
	[F_JXS8]	[float] NULL,
	[F_JXS9]	[float] NULL,
	[F_JXS10]	[float] NULL,
	[F_JXS11]	[float] NULL,
	[F_JXS12]	[float] NULL,
	[F_XXS1]	[float] NULL,
	[F_XXS2]	[float] NULL,
	[F_XXS3]	[float] NULL,
	[F_XXS4]	[float] NULL,
	[F_XXS5]	[float] NULL,
	[F_XXS6]	[float] NULL,
	[F_XXS7]	[float] NULL,
	[F_XXS8]	[float] NULL,
	[F_XXS9]	[float] NULL,
	[F_XXS10]	[float] NULL,
	[F_XXS11]	[float] NULL,
	[F_XXS12]	[float] NULL,
	[F_ZCS1]	[float] NULL,
	[F_ZCS2]	[float] NULL,
	[F_ZCS3]	[float] NULL,
	[F_ZCS4]	[float] NULL,
	[F_ZCS5]	[float] NULL,
	[F_ZCS6]	[float] NULL,
	[F_ZCS7]	[float] NULL,
	[F_ZCS8]	[float] NULL,
	[F_ZCS9]	[float] NULL,
	[F_ZCS10]	[float] NULL,
	[F_ZCS11]	[float] NULL,
	[F_ZCS12]	[float] NULL,
 CONSTRAINT [PK__SJZZ__80BE2AD5EFBF48E1] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SP]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SP](
	[F_TM]				[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH]			[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPMC]			[varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPGG]			[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD]				[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]				[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2]				[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_USDW]			[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_USJL]			[float] NULL,
	[F_ZJM]				[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY]				[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DRIPSPEED]		[int] NULL,
	[F_MAXPC]			[int] NULL,
	[F_BZQ]				[int] NULL,
	[F_DJ1]				[float] NULL,
	[F_DJ2]				[float] NULL,
	[F_DJ3]				[float] NULL,
	[F_DJ4]				[float] NULL,
	[F_DJ5]				[float] NULL,
	[F_UN1]				[float] NULL,
	[F_UN2]				[float] NULL,
	[F_UN3]				[float] NULL,
	[F_UN4]				[float] NULL,
	[F_UN5]				[float] NULL,
	[F_DWCB]			[float] NULL,
	[F_RATE]			[float] NULL,
	[F_MAXJJ]			[float] NULL,
	[F_MINJJ]			[float] NULL,
	[F_RECENTJJ]		[float] NULL,
	[F_CS]				[float] NULL,
	[F_MAXSL]			[float] NULL,
	[F_MINSL]			[float] NULL,
	[F_SLV]				[float] NULL,
	[F_GNZZ]			[varchar](1000) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YF]				[varchar](1000) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FUNCTION]		[varchar](1000) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GYTJ]			[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GYPC]			[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PZWH]			[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GMP]				[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISO]				[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM]				[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC1]				[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC2]				[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC3]				[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC4]				[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC5]				[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX1]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX2]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX3]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX4]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX5]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB1]				[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB2]				[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB3]				[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB4]				[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB5]				[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB6]				[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB7]				[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB8]				[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB9]				[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB10]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSJ]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PHCB]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFPH]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CBFF]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISZZ]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISPS]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISKC]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPECIALFLAGS]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FREEZE]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__SP__80BE2AD5293D4E64] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SP2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SP2](
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__SP2__6465D252AEE63061] PRIMARY KEY CLUSTERED 
(
	[F_BM] ASC,
	[F_SPBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SP3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SP3](
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__SP3__80BE2AD5F84A4A92] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SPDOWN]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPDOWN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SPDOWN](
	[F_SPBH]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPMC]		[varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DW]			[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CBFF]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MAXSL]		[float] NULL,
	[F_MINSL]		[float] NULL,
	[F_SPGG]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLV]			[float] NULL,
	[F_DW2]			[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS]			[float] NULL,
	[F_TM]			[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD]			[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BZQ]			[int] NULL,
	[F_ZJM]			[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ1]			[float] NULL,
	[F_DJ2]			[float] NULL,
	[F_DJ3]			[float] NULL,
	[F_DJ4]			[float] NULL,
	[F_DJ5]			[float] NULL,
	[F_DWCB]		[float] NULL,
	[F_IFPH]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX1]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX2]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX3]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX4]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX5]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB1]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB2]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB3]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB4]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB5]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB6]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB7]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB8]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB9]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB10]		[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MAXPC]		[int] NULL,
	[F_IFSJ]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_RATE]		[float] NULL,
	[F_FUNCTION]	[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PHCB]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC1]			[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC2]			[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC3]			[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC4]			[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC5]			[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN1]			[float] NULL,
	[F_UN2]			[float] NULL,
	[F_UN3]			[float] NULL,
	[F_UN4]			[float] NULL,
	[F_UN5]			[float] NULL,
	[F_MAXJJ]		[float] NULL,
	[F_MINJJ]		[float] NULL,
	[F_RECENTJJ]	[float] NULL,
	[F_TJ]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]			[int] NOT NULL,
	[F_EDITDATE]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_INSERTDATE]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XZR]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SPLB]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SPLB](
	[F_LBBH]	[varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_LBBC]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_QCSL]	[float] NULL,
	[F_QCCB]	[float] NULL,
	[F_JC]		[int] NULL,
 CONSTRAINT [PK__SPLB__BB2BA81360285162] PRIMARY KEY CLUSTERED 
(
	[F_LBBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SPPC]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPPC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SPPC](
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_PC]		[INT]										NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_JE]		[float] NULL,
 CONSTRAINT [PK__SPPC__AF54A8AA70053769] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC,
	[F_PH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SPSHORT]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPSHORT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SPSHORT](
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_YWY]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC]	[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPGG]	[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD]		[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ2]		[float] NULL,
	[F_CS]		[int] NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__SPSHORT__EEA8DC0CC1AFE16E] PRIMARY KEY CLUSTERED 
(
	[F_BM] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SYZZ]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SYZZ](
	[F_SPBH]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW]			[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SLS1]		[float] NULL,
	[F_SLS2]		[float] NULL,
	[F_SLS3]		[float] NULL,
	[F_SLS4]		[float] NULL,
	[F_SLS5]		[float] NULL,
	[F_SLS6]		[float] NULL,
	[F_SLS7]		[float] NULL,
	[F_SLS8]		[float] NULL,
	[F_SLS9]		[float] NULL,
	[F_SLS10]		[float] NULL,
	[F_SLS11]		[float] NULL,
	[F_SLS12]		[float] NULL,
	[F_JES1]		[float] NULL,
	[F_JES2]		[float] NULL,
	[F_JES3]		[float] NULL,
	[F_JES4]		[float] NULL,
	[F_JES5]		[float] NULL,
	[F_JES6]		[float] NULL,
	[F_JES7]		[float] NULL,
	[F_JES8]		[float] NULL,
	[F_JES9]		[float] NULL,
	[F_JES10]		[float] NULL,
	[F_JES11]		[float] NULL,
	[F_JES12]		[float] NULL,
	[F_SLF1]		[float] NULL,
	[F_SLF2]		[float] NULL,
	[F_SLF3]		[float] NULL,
	[F_SLF4]		[float] NULL,
	[F_SLF5]		[float] NULL,
	[F_SLF6]		[float] NULL,
	[F_SLF7]		[float] NULL,
	[F_SLF8]		[float] NULL,
	[F_SLF9]		[float] NULL,
	[F_SLF10]		[float] NULL,
	[F_SLF11]		[float] NULL,
	[F_SLF12]		[float] NULL,
	[F_JEF1]		[float] NULL,
	[F_JEF2]		[float] NULL,
	[F_JEF3]		[float] NULL,
	[F_JEF4]		[float] NULL,
	[F_JEF5]		[float] NULL,
	[F_JEF6]		[float] NULL,
	[F_JEF7]		[float] NULL,
	[F_JEF8]		[float] NULL,
	[F_JEF9]		[float] NULL,
	[F_JEF10]		[float] NULL,
	[F_JEF11]		[float] NULL,
	[F_JEF12]		[float] NULL,
	[F_SE1]			[float] NULL,
	[F_SE2]			[float] NULL,
	[F_SE3]			[float] NULL,
	[F_SE4]			[float] NULL,
	[F_SE5]			[float] NULL,
	[F_SE6]			[float] NULL,
	[F_SE7]			[float] NULL,
	[F_SE8]			[float] NULL,
	[F_SE9]			[float] NULL,
	[F_SE10]		[float] NULL,
	[F_SE11]		[float] NULL,
	[F_SE12]		[float] NULL,
 CONSTRAINT [PK__SYZZ__8278C6246AE5B572] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TEXTSOURCE]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TEXTSOURCE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TEXTSOURCE](
	[F_NAME]	[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SQL]		[varchar](255) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK__TEXTSOUR__4A3EA6708CB2FBFA] PRIMARY KEY CLUSTERED 
(
	[F_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TJD]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TJD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TJD](
	[F_DJH]		[int] NOT NULL,
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__TJD__3C196CCD40FF466E] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TJD2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TJD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TJD2](
	[F_DJH]		[int] NOT NULL,
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__TJD2__3C196CCD2557D0FD] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TJD3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TJD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TJD3](
	[F_DJH]		[int] NOT NULL,
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__TJD3__3C196CCDC1BF08CF] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TJDDOWNLOAD]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TJDDOWNLOAD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TJDDOWNLOAD](
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJH]		[int] NOT NULL,
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__TJDDOWNL__EFAFA63385D1FDF2] PRIMARY KEY CLUSTERED 
(
	[F_BM] ASC,
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TJDMX]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TJDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TJDMX](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC]	[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG]		[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD]		[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ11]	[float] NULL,
	[F_DJ12]	[float] NULL,
	[F_DJ21]	[float] NULL,
	[F_DJ22]	[float] NULL,
	[F_DJ31]	[float] NULL,
	[F_DJ32]	[float] NULL,
	[F_DJ42]	[float] NULL,
	[F_DJ41]	[float] NULL,
	[F_DJ51]	[float] NULL,
	[F_DJ52]	[float] NULL,
	[F_SLJC]	[float] NULL,
 CONSTRAINT [PK__TJDMX__FEDF803E1331E3CA] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TJDMX2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TJDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TJDMX2](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC]	[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG]		[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD]		[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ11]	[float] NULL,
	[F_DJ12]	[float] NULL,
	[F_DJ21]	[float] NULL,
	[F_DJ22]	[float] NULL,
	[F_DJ31]	[float] NULL,
	[F_DJ32]	[float] NULL,
	[F_DJ42]	[float] NULL,
	[F_DJ41]	[float] NULL,
	[F_DJ51]	[float] NULL,
	[F_DJ52]	[float] NULL,
	[F_SLJC]	[float] NULL,
 CONSTRAINT [PK__TJDMX2__FEDF803EC5EEECC9] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TJDMX3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TJDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TJDMX3](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC]	[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG]		[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD]		[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ11]	[float] NULL,
	[F_DJ12]	[float] NULL,
	[F_DJ21]	[float] NULL,
	[F_DJ22]	[float] NULL,
	[F_DJ31]	[float] NULL,
	[F_DJ32]	[float] NULL,
	[F_DJ42]	[float] NULL,
	[F_DJ41]	[float] NULL,
	[F_DJ51]	[float] NULL,
	[F_DJ52]	[float] NULL,
	[F_SLJC]	[float] NULL,
 CONSTRAINT [PK__TJDMX3__FEDF803EBE6BBD79] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TRANSPORT]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TRANSPORT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TRANSPORT](
	[F_BM]			[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TYPE]		[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX]		[int] NULL,
	[F_ITEM]		[varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_CAPTION]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_EXEC]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VIEWNAME1]	[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VIEWSQL1]	[image] NULL,
	[F_VIEWNAME2]	[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VIEWSQL2]	[image] NULL,
	[F_VIEWNAME3]	[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VIEWSQL3]	[image] NULL,
 CONSTRAINT [PK__TRANSPOR__B41CB054EA7392D0] PRIMARY KEY CLUSTERED 
(
	[F_BM] ASC,
	[F_TYPE] ASC,
	[F_ITEM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VEN_SP]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VEN_SP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VEN_SP](
	[F_VENDOR]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPBH]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DW]			[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPGG]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ1]			[float] NULL,
	[F_DJ2]			[float] NULL,
	[F_DJ]			[float] NULL,
	[F_SPMC]		[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VEN_SP__B14B6E5F505BD1BD] PRIMARY KEY CLUSTERED 
(
	[F_VENDOR] ASC,
	[F_SPBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VENDOR]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VENDOR](
	[F_DM]			[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_VENDORMC]	[varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TEL]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_POSTCODE]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ADDRESS]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LXR]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZH]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SH]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_KHH]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZJM]			[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GROUP]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_QCYE]		[float] NULL,
	[F_QMYE]		[float] NULL,
	[F_D1]			[float] NULL,
	[F_D2]			[float] NULL,
	[F_D3]			[float] NULL,
	[F_D4]			[float] NULL,	
	[F_J5]			[float] NULL,
	[F_D5]			[float] NULL,
	[F_D6]			[float] NULL,
	[F_D7]			[float] NULL,
	[F_D8]			[float] NULL,
	[F_D9]			[float] NULL,
	[F_D10]			[float] NULL,
	[F_D11]			[float] NULL,
	[F_D12]			[float] NULL,
	[F_J1]			[float] NULL,
	[F_J2]			[float] NULL,	
	[F_J3]			[float] NULL,	
	[F_J4]			[float] NULL,
	[F_J6]			[float] NULL,	
	[F_J7]			[float] NULL,	
	[F_J8]			[float] NULL,	
	[F_J9]			[float] NULL,	
	[F_J10]			[float] NULL,	
	[F_J11]			[float] NULL,	
	[F_J12]			[float] NULL,	
	[F_LB1]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB2]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB3]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LB4]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC1]			[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC2]			[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC3]			[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC4]			[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC5]			[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN1]			[float] NULL,
	[F_UN2]			[float] NULL,
	[F_UN3]			[float] NULL,
	[F_UN4]			[float] NULL,
	[F_UN5]			[float] NULL,
 CONSTRAINT [PK__VENDOR__2C6EEFB6BB0A0571] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VENDOR3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDOR3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VENDOR3](
	[F_DM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VENDOR3__2C6EEFB66C2CDB38] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VENDORGROUP]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDORGROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VENDORGROUP](
	[F_DM]				[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_VENDORGROUPMC]	[varchar](100) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VENDORLB]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDORLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VENDORLB](
	[F_DM]				[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_VENDORLBMC]		[varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_JC]				[int] NULL,
 CONSTRAINT [PK__VENDORLB__2C6EEFB6A6F8E628] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VIP]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VIP](
	[F_DM]			[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_VIPMC]		[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZJM]			[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZ]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TEL]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LJXF]		[float] NULL,
	[F_GRADE]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_USED]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CANCEL]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFYH]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISYH]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BZ]			[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_POSTCODE]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ADDRESS]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZH]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SH]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_KHH]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VIP__2C6EEFB6AC6B91DE] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VIP2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIP2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VIP2](
	[F_DM]			[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_VIPMC]		[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZJM]			[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZ]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TEL]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LJXF]		[float] NULL,
	[F_GRADE]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_USED]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CANCEL]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFYH]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISYH]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BZ]			[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_POSTCODE]	[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ADDRESS]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZH]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SH]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_KHH]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VIP2__2C6EEFB664233179] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[XHD]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XHD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XHD](
	[F_DATE]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]			[int] NOT NULL,
	[F_CUSTOM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,	
	[F_YWY]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH]			[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS]			[float] NULL,
	[F_JSH]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0]		[int] NULL,
	[F_DHDJH]		[int] NULL,
	[F_TJ]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__XHD__3C196CCDA0212266] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[XHD2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XHD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XHD2](
	[F_DATE]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]			[int] NOT NULL,
	[F_CUSTOM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,	
	[F_YWY]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH]			[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS]			[float] NULL,
	[F_JSH]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0]		[int] NULL,
	[F_DHDJH]		[int] NULL,
	[F_TJ]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__XHD2__3C196CCD7592F8EA] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[XHD3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XHD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XHD3](
	[F_DATE]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]			[int] NOT NULL,
	[F_CUSTOM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,	
	[F_YWY]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH]			[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS]			[float] NULL,
	[F_JSH]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ]			[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0]		[int] NULL,
	[F_DHDJH]		[int] NULL,
	[F_TJ]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__XHD3__3C196CCDBBDCE0EC] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[XHDMX]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XHDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XHDMX](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_TM]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_KL]		[int] NULL,
	[F_JE]		[float] NULL,
	[F_SLV]		[float] NULL,
	[F_SE]		[float] NULL,
	[F_CB]		[float] NULL,
	[F_HJ]		[float] NULL,
	[F_FPH]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,	
	[F_DWCB]	[float] NULL,
	[F_RATE]	[float] NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_PC]		[int] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,	
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_ISCB]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2]		[float] NULL,
	[F_SLJC]	[float] NULL,
	[F_ZF]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__XHDMX__0015E5C7] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[XHDMX2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XHDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XHDMX2](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_TM]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_KL]		[int] NULL,
	[F_JE]		[float] NULL,
	[F_SLV]		[float] NULL,
	[F_SE]		[float] NULL,
	[F_CB]		[float] NULL,
	[F_HJ]		[float] NULL,
	[F_FPH]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,	
	[F_DWCB]	[float] NULL,
	[F_RATE]	[float] NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_PC]		[int] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,	
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_ISCB]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2]		[float] NULL,
	[F_SLJC]	[float] NULL,
	[F_ZF]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__XHDMX2__010A0A00] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[XHDMX3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XHDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XHDMX3](
	[F_DJH]		[int] NOT NULL,
	[F_HC]		[int] NOT NULL,
	[F_TM]		[varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW]		[varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_KL]		[int] NULL,
	[F_JE]		[float] NULL,
	[F_SLV]		[float] NULL,
	[F_SE]		[float] NULL,
	[F_CB]		[float] NULL,
	[F_HJ]		[float] NULL,
	[F_FPH]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,	
	[F_DWCB]	[float] NULL,
	[F_RATE]	[float] NULL,
	[F_DJ1]		[float] NULL,
	[F_DJ2]		[float] NULL,
	[F_DJ3]		[float] NULL,
	[F_DJ4]		[float] NULL,
	[F_DJ5]		[float] NULL,
	[F_PC]		[int] NULL,
	[F_PH]		[varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ]		[varchar](10) COLLATE Chinese_PRC_CI_AS NULL,	
	[F_UC]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN]		[float] NULL,
	[F_ISCB]	[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2]		[float] NULL,
	[F_SLJC]	[float] NULL,
	[F_ZF]		[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__XHDMX3__01FE2E39] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[XSBB]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XSBB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XSBB](
	[F_CAPTION]		[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SP]			[varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CB]			[varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TOP]			[int] NULL,
	[F_LEFT]		[int] NULL,
	[F_ROWS]		[int] NULL,
	[F_SIZE]		[int] NULL,
	[F_LENGTH]		[int] NULL,
	[F_WIDTH]		[int] NULL,
	[F_ORIENT]		[int] NULL,
	[F_YWY]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM]			[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BH]			[varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPLB]		[varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ]			[smallint] NULL,
	[F_TITLEFONT]	[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BBFONT]		[varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_COLNUMBER]	[int] NULL,
	[F_COLCAPTION]	[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_COLWIDTH]	[varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__XSBB__2C6E30FABF78DB8D] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[XSLB]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XSLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XSLB](
	[F_DM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_XSLBMC]	[varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJ]		[int] NULL,
 CONSTRAINT [PK__XSLB__2C6EEFB6BA3AD9A3] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[XSMXZ]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XSMXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XSMXZ](
	[F_DATE]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH]		[int] NULL,
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_ZY]		[varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SL]		[float] NULL,
	[F_JE]		[float] NULL,
	[F_CB]		[float] NULL,
	[F_DJ]		[float] NULL,
	[F_BM]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY]		[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM]	[varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SE]		[float] NULL,
	[F_HC]		[int] NULL,
	[F_CX]		[int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[XSZZ]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XSZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XSZZ](
	[F_SPBH]	[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW]		[varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SL1]		[float] NULL,
	[F_SL2]		[float] NULL,
	[F_SL3]		[float] NULL,
	[F_SL4]		[float] NULL,
	[F_SL5]		[float] NULL,
	[F_SL6]		[float] NULL,
	[F_SL7]		[float] NULL,
	[F_SL8]		[float] NULL,
	[F_SL9]		[float] NULL,
	[F_SL10]	[float] NULL,
	[F_SL11]	[float] NULL,
	[F_SL12]	[float] NULL,
	[F_JE1]		[float] NULL,
	[F_JE2]		[float] NULL,
	[F_JE3]		[float] NULL,
	[F_JE4]		[float] NULL,
	[F_JE5]		[float] NULL,
	[F_JE6]		[float] NULL,
	[F_JE7]		[float] NULL,
	[F_JE8]		[float] NULL,
	[F_JE9]		[float] NULL,
	[F_JE10]	[float] NULL,
	[F_JE11]	[float] NULL,
	[F_JE12]	[float] NULL,
	[F_CB1]		[float] NULL,
	[F_CB2]		[float] NULL,
	[F_CB3]		[float] NULL,
	[F_CB4]		[float] NULL,
	[F_CB5]		[float] NULL,
	[F_CB6]		[float] NULL,
	[F_CB7]		[float] NULL,
	[F_CB8]		[float] NULL,
	[F_CB9]		[float] NULL,
	[F_CB10]	[float] NULL,
	[F_CB11]	[float] NULL,
	[F_CB12]	[float] NULL,
	[F_SE1]		[float] NULL,
	[F_SE2]		[float] NULL,
	[F_SE3]		[float] NULL,
	[F_SE4]		[float] NULL,
	[F_SE5]		[float] NULL,
	[F_SE6]		[float] NULL,
	[F_SE7]		[float] NULL,
	[F_SE8]		[float] NULL,
	[F_SE9]		[float] NULL,
	[F_SE10]	[float] NULL,
	[F_SE11]	[float] NULL,
	[F_SE12]	[float] NULL,
 CONSTRAINT [PK__XSZZ__8278C6245DFAAF98] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YFHXZ]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YFHXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YFHXZ](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATEJH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATEFK] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJHJH] [int] NOT NULL,
	[F_DJHFK] [int] NOT NULL,
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JH] [float] NULL,
	[F_FK] [float] NULL,
	[F_HXJE] [float] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YFJSD2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YFJSD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YFJSD2](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SKR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CN] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSH] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSJE] [float] NULL,
	[F_BZ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YE] [float] NULL,
	[F_HXJE] [float] NULL,
 CONSTRAINT [PK__YFJSD2__3C196CCD8A1830E9] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YFMXZ]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YFMXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YFMXZ](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLX] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SR] [float] NULL,
	[F_FC] [float] NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YE] [float] NULL,
	[F_HXJE] [float] NULL,
	[F_CX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YFZZ]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YFZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YFZZ](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__YFZZ__CEA80CB912EC2167] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC,
	[F_BM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YSHXZ]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YSHXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YSHXZ](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATEXS] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATESK] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJHXS] [int] NOT NULL,
	[F_DJHSK] [int] NOT NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XS] [float] NULL,
	[F_SK] [float] NULL,
	[F_HXJE] [float] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YSJSD2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YSJSD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YSJSD2](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SKR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CN] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSH] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSJE] [float] NULL,
	[F_BZ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YE] [float] NULL,
	[F_HXJE] [float] NULL,
 CONSTRAINT [PK__YSJSD2__3C196CCDCCC809FD] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YSMXZ]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YSMXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YSMXZ](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLX] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SR] [float] NULL,
	[F_FC] [float] NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YE] [float] NULL,
	[F_HXJE] [float] NULL,
	[F_CX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YSZZ]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YSZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YSZZ](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__YSZZ__CEA80CB9207C51C3] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC,
	[F_BM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YWY]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YWY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YWY](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_YWYMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DE] [float] NULL,
 CONSTRAINT [PK__YWY__2C6EEFB605BCCA3E] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YWY3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YWY3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YWY3](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__YWY3__2C6EEFB6D00D87FF] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZLFX_C_DAY]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZLFX_C_DAY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZLFX_C_DAY](
	[F_INDEX] [int] NOT NULL,
	[F_CAPTION] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DAY] [int] NOT NULL,
	[F_DATE1] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE2] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__ZLFX_C_D__C0E2423D6A6DE3FF] PRIMARY KEY CLUSTERED 
(
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZLFX_C_KJQJ]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZLFX_C_KJQJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZLFX_C_KJQJ](
	[F_INDEX] [int] NOT NULL,
	[F_CAPTION] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DAY] [int] NOT NULL,
	[F_DATE1] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE2] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__ZLFX_C_K__C0E2423D06141308] PRIMARY KEY CLUSTERED 
(
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZLFX_C_YEAR]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZLFX_C_YEAR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZLFX_C_YEAR](
	[F_INDEX] [int] NOT NULL,
	[F_CAPTION] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DAY] [int] NOT NULL,
	[F_DATE1] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE2] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__ZLFX_C_Y__C0E2423D24A872DE] PRIMARY KEY CLUSTERED 
(
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZLFX_V_DAY]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZLFX_V_DAY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZLFX_V_DAY](
	[F_INDEX] [int] NOT NULL,
	[F_CAPTION] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DAY] [int] NOT NULL,
	[F_DATE1] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE2] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__ZLFX_V_D__C0E2423D4D8045F8] PRIMARY KEY CLUSTERED 
(
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZLFX_V_KJQJ]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZLFX_V_KJQJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZLFX_V_KJQJ](
	[F_INDEX] [int] NOT NULL,
	[F_CAPTION] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DAY] [int] NOT NULL,
	[F_DATE1] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE2] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__ZLFX_V_K__C0E2423DC4C04CF5] PRIMARY KEY CLUSTERED 
(
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZLFX_V_YEAR]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZLFX_V_YEAR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZLFX_V_YEAR](
	[F_INDEX] [int] NOT NULL,
	[F_CAPTION] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DAY] [int] NOT NULL,
	[F_DATE1] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE2] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__ZLFX_V_Y__C0E2423DD5EA3574] PRIMARY KEY CLUSTERED 
(
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZNPOWER]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZNPOWER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZNPOWER](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_GN] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SY] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DY] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZNXX]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZNXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZNXX](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_ZNXXMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK__ZNXX__2C6EEFB6C95BB60C] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZTCS]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZTCS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZTCS](
	[F_ZTBH] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_NAME] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_SPLENGTH] [smallint] NULL,
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
/****** Object:  Table [dbo].[ZZD]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZD](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW1] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW2] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SHL] [float] NULL,
	[F_DW1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_DJH0] [int] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__ZZD__3C196CCD5C60099D] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZZD2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZD2](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW1] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW2] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SHL] [float] NULL,
	[F_DW1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_DJH0] [int] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__ZZD2__3C196CCD942BF263] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZZD3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZD3](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW1] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW2] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SHL] [float] NULL,
	[F_DW1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_DJH0] [int] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__ZZD3__3C196CCD68B4878A] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZZDMX]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZDMX](
	[F_DJH] [int] NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_DJ] [float] NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLJC] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
 CONSTRAINT [PK__ZZDMX__FEDF803E849B0416] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZZDMX2]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZDMX2](
	[F_DJH] [int] NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_DJ] [float] NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLJC] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
 CONSTRAINT [PK__ZZDMX2__FEDF803EAD2282D9] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZZDMX3]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZDMX3](
	[F_DJH] [int] NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_DJ] [float] NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLJC] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
 CONSTRAINT [PK__ZZDMX3__12349602] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZZMB]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZMB](
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_ZZMB] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZZMBMX]    Script Date: 2023/5/9 13:01:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZMBMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZMBMX](
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH2] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_FIXED] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_ZZMBMX] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[BM] ([F_DM], [F_BMMC], [F_DE]) VALUES (N'01', N'药局', 0)
GO
INSERT [dbo].[OPERATOR] ([F_DM], [F_NAME], [F_PASSWORD], [F_BM], [F_ZN], [F_RED]) VALUES (N'01', N'孙内科', N'123456789', N'01', NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100001', N'注射用美洛西林钠(二叶)', N'1.0g', N'苏州二叶', N'支', NULL, NULL, NULL, N'ZSYMLXLN(EY)', NULL, N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 20, 0, 0, 1.8, 0, 0, 0, 0, 0, 0, 0, 8, 1.4, 1.4, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'100002', N'注射用头孢替唑钠(哈药）', N'1.0g', N'哈药集团', N'支', N'', NULL, NULL, N'ZSYTBTZN(H', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 38, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 12, 6, 6, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'100003', N'硫酸特布他林雾化液', N'2ML*5MG', N'瑞典', N'支', N'', NULL, NULL, N'LSTBTLWHY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6.5, 0, 0, 1.68, 0, 0, 0, 0, 0, 0, 0, 9.5, 0.81, 4.8, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'100004', N'盐酸氨溴索葡萄糖注射液', N'50ml:15mg:2.5g', N'安徽双鹤            ', N'瓶', N'      ', NULL, NULL, N'YSAXSPTTZSY', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 13, 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 0, 2.5, 1.4, 2.1, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'100                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'100005', N'喜炎平注射液', N'2ML:50MG', N'江西青峰药业有限公司', N'支', N'      ', NULL, NULL, N'XYPZSY', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 28.6, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 24.87, 14, 16, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'100006', N'葡萄糖酸钙注射液', N'10ML', N'国药集团容生制药有限', N'支', N'', NULL, NULL, N'PTTSGZSY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 9.6, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 18.135, 0.22, 7, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'100007', N'50%葡萄糖注射液', N'20ml:10g', N'国药集团', N'支', N'', NULL, NULL, N'50PTTZSY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0.7, 0, 0, 0.376, 0, 0, 0, 0, 0, 0, 0, 1.9, 0.26, 0.56, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'100008', N'维生素C注射液', N'20ml:2.5g', N'山东新华制药', N'支', N'', NULL, NULL, N'WSSCZSY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 4.7, 0.26, 0.78, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'100009', N'地塞米松磷酸钠注射液', N'1ml:2mg', N'郑州卓峰药业', N'支', N'', NULL, NULL, N'DSMSLSNZSY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0.5, 0, 0, 0.11, 0, 0, 0, 0, 0, 0, 0, 1.08, 0.075, 0.09, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'100010', N'利巴韦林注射液<病毒唑>', N'2ml:0.1g', N'华润双鹤利民药业', N'支', N'', NULL, NULL, N'LBWLZSY[BD', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0.4, 0, 0, 0.2, 0, 0, 0, 0, 0, 0, 0, 4.5, 0.0791, 0.18, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'100011', N'盐酸消旋山莨菪碱注射液<654-2>', N'1ml:10mg', N'杭州民生药业', N'支', N'', NULL, NULL, N'YSXXSLDJZS', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 2.8, 0, 0, 2.2, 0, 0, 0, 0, 0, 0, 0, 2.3, 0.1, 2.2, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100012', N'维生素B6注射液', N'2ml:0.1g', N'山东方明', N'支', NULL, NULL, NULL, N'WSSB6ZSY', NULL, N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0.6, 0, 0, 0.4, 0, 0, 0, 0, 0, 0, 0, 0.9, 0.1, 0.4, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'100013', N'三磷酸腺苷二钠注射液<ATP>', N'2ml:20mg', N'国药集团            ', N'支', N'      ', NULL, NULL, N'SLSXGENZSY', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0.7, 0, 0, 0.16, 0, 0, 0, 0, 0, 0, 0, 1.58, 0.11, 0.64, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'100                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'100014', N'溴米那普鲁卡因注射液<爱茂尔>', N'2ml', N'山东方明药业        ', N'支', N'      ', NULL, NULL, N'XMNPLKYZSY', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 3, 0, 0, 0.28, 0, 0, 0, 0, 0, 0, 0, 0.836, 0.12, 0.69, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'100                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'100015', N'灭菌注射用水', N'5ml', N'山东华鲁制药        ', N'支', N'      ', NULL, NULL, N'MJZSYS', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0.5, 0, 0, 0.1, 0, 0, 0, 0, 0, 0, 0, 8.83666666666667, 0.1, 0.116, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'100                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'100016', N'(喘定)二羟丙茶碱注射液', N'2ML:0.25G', N'国药', N'支', N'', NULL, NULL, N'(CD)EQBCJZ', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 0, 0, 0.57, 0, 0, 0, 0, 0, 0, 0, 6, 0.513, 0.52, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'100017', N'肝素钠注射液', N'2ml:1.25Ug', N'国药集团容生制药有限', N'支', N'', NULL, NULL, N'GSNZSY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 13, 0, 0, 8.3, 0, 0, 0, 0, 0, 0, 0, 10, 5.8, 5.8, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'100018', N'美罗西林钠舒巴坦钠', N'1.25G', N'山西仟源            ', N'支', N'      ', NULL, NULL, N'MLXLNSBTN', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 46, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 10, 6.5, 6.5, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'100                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'100019', N'沙丁胺醇溶液', N'1ML', N'葛兰素史克          ', N'支', N'      ', NULL, NULL, N'SDACRY', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 8.7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56.17, 0.25625, 56, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'100                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'100020', N'普米克令舒', N'2ML', N'意大利              ', N'支', N'      ', NULL, NULL, N'PMKLS', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 18.4, 0, 0, 16.4, 0, 0, 0, 0, 0, 0, 0, 83.5, 13.76, 13.76, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'100                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'100021', N'注射用赖安匹林<来比林>', N'0.5G', N'国药国瑞            ', N'支', N'      ', NULL, NULL, N'ZSYLAPL[LB', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 4.5, 0, 0, 1.25, 0, 0, 0, 0, 0, 0, 0, 2.3, 1.17, 1.2, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'100                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'100022', N'西咪替丁注射液', N'0.2G*2ML', N'山东方明', N'支', N'', NULL, NULL, N'XMTDZSY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0.8, 0, 0, 0.6, 0, 0, 0, 0, 0, 0, 0, 13.5, 0.08, 0.59, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'100023', N'地塞米松磷酸钠针', N'1ml:5mg', N'辰欣药业', N'支', N'', NULL, NULL, N'DSMSLSNZ', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0.5, 0, 0, 0.135, 0, 0, 0, 0, 0, 0, 0, 1.4, 0.11, 0.12, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100024', N'盐酸氨溴索葡萄糖注射液', N'100ml:30mg:5g', N'安徽双鹤', N'瓶', N'', NULL, NULL, N'YSAXSPTTZS', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 12, 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 0, 3.45, 1.17, 1.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'100025', N'注射用磷霉素钠', N'2.0g', N'东北总厂            ', N'支', N'      ', NULL, NULL, N'ZSYLMSN', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 0, 0, 3.16, 0, 0, 0, 0, 0, 0, 0, 29.296, 2, 3.06, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'100                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100026', N'注射用乳糖酸红霉素', N'25万u', N'美罗药业股份有限公司', N'支', N'', NULL, NULL, N'ZSYRTSHMS', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 9.5, 0, 0, 0.98, 0, 0, 0, 0, 0, 0, 0, 4.5, 0.1, 4.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100028', N'注射用辅酶A', N'100单位', N'国药集团            ', N'支', N'      ', NULL, NULL, N'ZSYFMA', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 3.4, 0, 0, 1.3, 0, 0, 0, 0, 0, 0, 0, 15.81, 0.65, 1.58, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'100                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100029', N'复方氨林巴比妥注射液', N'2ML', N'郑州卓峰制药', N'支', N'', NULL, NULL, N'FFALBBTZSY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0.5, 0, 0, 0.44, 0, 0, 0, 0, 0, 0, 0, 1.86, 0.13, 0.36, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100030', N'氨茶碱注射液', N'2ML:0.25G', N'河南润弘', N'支', N'', NULL, NULL, N'ACJZSY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0.8, 1, 0, 0.6, 0, 0, 0, 0, 0, 0, 0, 1, 0.1, 0.55, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100031', N'氯化钾注射液', N'10ML:1G', N'济南利民            ', N'支', N'      ', NULL, NULL, N'LHJZSY', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0.4, 0, 0, 0.28, 0, 0, 0, 0, 0, 0, 0, 1.2, 0.18, 0.24, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'100                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100032', N'马来酸氯苯那敏注射液', N'1ML:10MG', N'国药集团荣生制药', N'支', N'', NULL, NULL, N'MLSLBNMZSY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1.5, 1, 0, 0.147, 0, 0, 0, 0, 0, 0, 0, 1.86, 0.06, 0.55, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100033', N'<胃复安>盐酸甲氧氯普胺注射液', N'1ML:10MG', N'河南润弘', N'支', N'', NULL, NULL, N'<WFA>YSJYL', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 2.6, 0, 0, 0.5, 0, 0, 0, 0, 0, 0, 0, 1.4, 0.18, 1.33, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100034', N'克林霉素磷酸酯注射液', N'0.3G', N'华润双鹤', N'支', N'', NULL, NULL, N'KLMSLSZZSY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 15, 8, 0, 0.79, 0, 0, 0, 0, 0, 0, 0, 7.07, 0.69, 0.75, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100035', N'硫酸庆大霉素注射液', N'2ml:8万单位', N'济南利民            ', N'支', N'      ', NULL, NULL, N'LSQDMSZSY', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0.7, 0, 0, 0.24, 0, 0, 0, 0, 0, 0, 0, 2.696, 0.1, 0.35, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'100                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100036', N'注射用头孢哌酮钠舒巴坦钠', N'1.0g', N'悦康药业集团有限公司', N'支', N'', NULL, NULL, N'ZSYTBPTNSB', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 12, 0, 0, 1.26, 0, 0, 0, 0, 0, 0, 0, 12.2, 1.06, 1.2, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100037', N'奥硝唑氯化钠注射液', N'100ml:0.5g', N'四川科伦药业股份有限', N'瓶', N'      ', NULL, NULL, N'AXZLHNZSY', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 35, 0, 0, 3.91, 0, 0, 0, 0, 0, 0, 0, 5.5, 3.7, 5.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'100                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100038', N'碳酸氢钠注射液', N'10mL:0.5g', N'河北天成', N'支', N'', NULL, NULL, N'TSQNZSY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1.4, 0, 0, 0.76, 0, 0, 0, 0, 0, 0, 0, 7.32, 0.16, 0.72, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100040', N'甲硝唑氯化钠注射液', N'100ML', N'六安华源            ', N'瓶', N'      ', NULL, NULL, N'JXZLHNZSY', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 0, 0, 0.84, 0, 0, 0, 0, 0, 0, 0, 2.8, 0.78, 2.8, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'100                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100041', N'注射用炎琥宁', N'80mg', N'哈尔滨珍宝药业      ', N'支', N'      ', NULL, NULL, N'ZSYYHN', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 15, 0, 0, 0.88, 0, 0, 0, 0, 0, 0, 0, 32.4, 0.1023, 0.95, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'100                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100042', N'注射用炎琥宁', N'200mg', N'哈尔滨珍宝药业      ', N'支', N'      ', NULL, NULL, N'ZSYYHN', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 23, 0, 0, 1.1, 0, 0, 0, 0, 0, 0, 0, 11.88, 1.1, 1.39, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'100                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100043', N'乳糖酸阿奇0.125', N'0.125g', N'东北制药            ', N'支', N'      ', NULL, NULL, N'RTSAQ0.125', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 24, 0, 0, 8.8, 0, 0, 0, 0, 0, 0, 0, 15, 8, 9.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'100                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100044', N'乳糖酸阿奇0.25', N'0.25g', N'浙江震元制药有限公司', N'支', N'', NULL, NULL, N'RTSAQ0.25', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 35, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 15, 0.977, 5.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100045', N'盐酸氨溴索注射液', N'2ml:15mg', N'云南龙海天然植物药业', N'支', N'      ', NULL, NULL, N'YSAXSZSY', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 7.5, 0, 0, 2.4, 0, 0, 0, 0, 0, 0, 0, 3.5, 0.35, 2.4, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'100                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100046', N'（明可欣）注射用头孢呋辛钠', N'0.75g', N'意大利', N'支', N'', NULL, NULL, N'MKXZSYTBFX', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 34, 0, 0, 17.5, 0, 0, 0, 0, 0, 0, 0, 17.5, 8, 17.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100047', N'（HN）注射用美洛西林钠', N'1.0g', N'海南卫康', N'支', N'', NULL, NULL, N'HNZSYMLXLN', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 26, 0, 0, 3.5, 0, 0, 0, 0, 0, 0, 0, 4.2, 3.5, 3.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100048', N'（注）乳酸左氧氟沙星注射液', N'100ml:0.2g', N'辰欣药业', N'瓶', N'', NULL, NULL, N'ZRSZYFSXZS', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 12, 0, 0, 0.92, 0, 0, 0, 0, 0, 0, 0, 1.5, 0.9, 0.97, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100049', N'注射用转移因子', N'3mg:100ug', N'湖南一格            ', N'支', N'      ', NULL, NULL, N'ZSYZYYZ', N'                    ', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 11, 0, 0, 1.27, 0, 0, 0, 0, 0, 0, 0, 1.209, 0.9, 0.9, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'100                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100050', N'注射用糜蛋白酶', N'4000单位', N'上海第一生物制药', N'支', N'', NULL, NULL, N'ZSYMDBM', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 19, 0, 0, 5.115, 0, 0, 0, 0, 0, 0, 0, 6.1, 4.05, 4.65, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100051', N'注射用头孢噻肟钠', N'1.0g', N'华北制药', N'支', N'', NULL, NULL, N'ZSYTBSWN', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 55, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 17.5, 16, 17.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100052', N'可必特', N'2.5ml', N'勃林格殷格翰        ', N'支', N'      ', NULL, NULL, N'KBT', N'                    ', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6.3, 0, 0, 5.48, 0, 0, 0, 0, 0, 0, 0, 5.48, 5.301, 5.38, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'100                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100053', N'清开灵注射液', N'10ml', N'神威药业            ', N'支', N'      ', NULL, NULL, N'QKLZSY', N'                    ', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 12, 0, 0, 1.52, 0, 0, 0, 0, 0, 0, 0, 2.1, 0.76, 1.68, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'100                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100054', N'盐酸异丙嗪注射液', N'2ML*50MG', N'遂成药业', N'支', N'', NULL, NULL, N'YSYBQZSY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 4.8, 0, 0, 1.995, 0, 0, 0, 0, 0, 0, 0, 0.9, 0.9, 0.9, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100055', N'注射用青霉素钠', N'80UV', N'瑞阳制药有限公司', N'支', N'', NULL, NULL, N'ZSYQMSN', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0.9, 0, 0, 0.28, 0, 0, 0, 0, 0, 0, 0, 0.48, 0.27, 0.48, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100057', N'盐酸氯丙嗪注射液(25MG)', N'25mg*1ML', N'上海禾丰', N'支', N'', NULL, NULL, N'YSLBQZSY(2', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0.5, 0, 0, 0.38, 0, 0, 0, 0, 0, 0, 0, 17.2, 17.2, 17.2, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100058', N'注射用头孢呋辛钠', N'1.5g', N'石药集团', N'支', N'', NULL, NULL, N'ZSYTBFXN', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 35, 0, 0, 3.6, 0, 0, 0, 0, 0, 0, 0, 3.6, 3.5, 3.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100059', N'注射用盐酸头孢吡肟', N'1.0g', N'天心制药', N'支', N'', NULL, NULL, N'ZSYYSTBBW', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 38, 0, 0, 5.8, 0, 0, 0, 0, 0, 0, 0, 5.8, 5.8, 5.8, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100060', N'注射用氨曲南', N'0.5g', N'重庆圣华曦', N'支', N'', NULL, NULL, N'ZSYAQN', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 10, 0, 0, 1.4, 0, 0, 0, 0, 0, 0, 0, 14, 1.35, 1.75, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100061', N'注射用盐酸头孢吡肟', N'0.5g', N'莱美药业', N'支', N'', NULL, NULL, N'ZSYYSTBBW', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 38, 0, 0, 5.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100063', N'注射用阿奇霉素(天兴)', N'0.25g', N'成都天台山制药有限公', N'支', N'', NULL, NULL, N'ZSYAQMS(TX', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 13, 0, 0, 8.37, 0, 0, 0, 0, 0, 0, 0, 0.95, 0.837, 0.92, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100064', N'注射用甲泼尼龙琥珀酸钠(甲强)', N'40mg', N'国药集团容生制药有限', N'支', N'', NULL, NULL, N'ZSYJPNLHPS', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 22.9, 0, 0, 10.05, 0, 0, 0, 0, 0, 0, 0, 12.5, 7.2, 8.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100065', N'硫酸依替米星氯化钠注射液', N'100ML:0.1g', N'江西制药', N'支', N'', NULL, NULL, N'LSYTMXLHNZ', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 55, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 13.3, 3, 13, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100066', N'盐酸苯海拉明注射液', N'1ml:20mg', N'新乡市常乐制药有限责', N'支', N'', NULL, NULL, N'YSBHLMZSY', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0.4, 0, 0, 0.2, 0, 0, 0, 0, 0, 0, 0, 1.62, 1.62, 1.62, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100067', N'地西泮注射液', N'2ml：10mg', N'国药集团容生制药有限', N'支', N'', NULL, NULL, N'DXPZSY', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0.5, 0, 0, 0.3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100068', N'注射用赖氨匹林', N'0.9g', N'国药集团国瑞药业', N'支', N'', NULL, NULL, N'ZSYLAPL', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 7, 0, 0, 1.61, 0, 0, 0, 0, 0, 0, 0, 3.515, 1.3, 3.135, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100069', N'注射用重组人干扰素a2b(假单胞菌', N'300万单位', N'北京远策', N'支', N'', NULL, NULL, N'ZSYZZRGRSa', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 29, 0, 0, 6.5, 0, 0, 0, 0, 0, 0, 0, 9, 6.5, 7, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100070', N'注射用氨曲南(圣华曦)', N'1.0g*1支', N'重庆圣华曦药业股份有', N'支', N'', NULL, NULL, N'ZSYAQN(SHX', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 35, 0, 0, 4.2, 0, 0, 0, 0, 0, 0, 0, 4.2, 2.85, 2.85, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100071', N'破伤风抗毒素注射液(s)', N'1500IU*1', N'江西生物制品研究所', N'支', N'', NULL, NULL, N'PSFKDSZSY(', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 24, 0, 0, 2.139, 0, 0, 0, 0, 0, 0, 0, 7, 2.05, 7, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100072', N'甘露醇25%', N'250ml:50g', N'黑龙江科伦', N'支', N'', NULL, NULL, N'GLC25%', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5.3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.95, 1.9, 2.7, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100073', N'酚磺乙胺注射液-止血敏', N'2ml:0.5g*10支', N'国药集团容生制药', N'支', N'', NULL, NULL, N'FHYAZSY-ZX', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 3, 0, 0, 0.58, 0, 0, 0, 0, 0, 0, 0, 0.58, 0.58, 0.58, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100074', N'盐酸洛贝林注射液（禾丰）', N'1ml*3mg*10支', N'上海禾丰制药有限公司', N'支', N'', NULL, NULL, N'YSLBLZSYHF', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 3.5, 0, 0, 2.73, 0, 0, 0, 0, 0, 0, 0, 2.73, 2.73, 2.73, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100075', N'替硝唑氯化钠注射液', N'100ml:0.4g', N'六安华源制药有限公司', N'瓶', N'', NULL, NULL, N'TXZLHNZSY', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 0, 0, 0.75, 0, 0, 0, 0, 0, 0, 0, 2.65, 0.75, 2.65, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100076', N'注射用氨曲南（福安）', N'0.5g', N'福安药业', N'支', N'', NULL, NULL, N'ZSYAQNFA', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.52, 1.52, 1.52, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100077', N'盐酸利多卡因注射液', N'5ml', N'山东华鲁', N'支', N'', NULL, NULL, N'YSLDKYZSY', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100078', N'硫酸镁注射液', N'10ml：2.5g', N'上海浦津林州制药有限', N'支', N'', NULL, NULL, N'LSMZSY', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.26, 5.26, 5.26, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100079', N'注射用磷霉素钠', N'2.0g*10瓶', N'东北制药', N'支', N'', NULL, NULL, N'ZSYLMSN', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.15, 3.08, 3.08, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100080', N'注射用阿莫西林钠舒巴坦钠', N'1.5g*10瓶', N'石药集团', N'支', N'', NULL, NULL, N'ZSYAMXLNSB', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'100081', N'吸入用盐酸氨溴索溶液', N'24支*2ml：15mg', N'北京韩美药品有限公司', N'支', N'', NULL, NULL, N'XRYYSAXSRY', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 11, 11, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101001', N'阿苯达唑片<史克肠虫清>', N'0.2g', N'中美史克', N'片', NULL, NULL, NULL, N'ABDZP[SKCC', NULL, N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 2.5, 0, 0, 0.158, 0, 0, 0, 0, 0, 0, 0, 1.0925, 0.14, 1.09, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'101002', N'制霉素片', N'50ug', N'山东鲁抗医药', N'片', N'', NULL, NULL, N'ZMSP', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0.5, 0, 0, 0.205, 0, 0, 0, 0, 0, 0, 0, 21.4, 0.15, 0.275, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'101003', N'盐酸小檗碱片<黄连素>', N'0.1g*100T', N'东北制药总厂', N'瓶', N'', NULL, NULL, N'YSXBJP[HLS', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 15, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 13.2, 3.2, 13.2, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'101004', N'维生素B1片', N'10mg*100T', N'东北总厂            ', N'瓶', N'      ', NULL, NULL, N'WSSB1P', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 2, 0, 0, 0.9, 0, 0, 0, 0, 0, 0, 0, 0.9, 0.5, 0.8, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'101                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'101005', N'维生素B2片', N'5mg*100T', N'东北制药', N'瓶', N'', NULL, NULL, N'WSSB2P', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 0, 0, 4.3, 0, 0, 0, 0, 0, 0, 0, 4.3, 0.6, 2.7, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'101006', N'维生素B6片', N'10mg*100T', N'东北制药总厂', N'瓶', N'', NULL, NULL, N'WSSB6P', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6, 0, 0, 2.4, 0, 0, 0, 0, 0, 0, 0, 2.4, 0.6, 2.4, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'101007', N'富马酸酮替芬片', N'1mg', N'江苏云阳集团        ', N'片', N'      ', NULL, NULL, N'FMSTTFP', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0.5, 0, 0, 0.031, 0, 0, 0, 0, 0, 0, 0, 4, 0.0232333333333333, 0.03, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'101                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'101008', N'对乙酰氨基酚片<扑热息痛片>', N'0.5g', N'东北制药总厂', N'片', N'', NULL, NULL, N'DYXAJFP[PR', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0.1, 0, 0, 0.02, 0, 0, 0, 0, 0, 0, 0, 8.37, 0.019525, 0.055, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'101009', N'<非那根>盐酸异丙嗪片', N'25mg', N'山西省临汾健民制药', N'片', N'', NULL, NULL, N'<FNG>YSYBQ', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0.2, 0, 0, 0.03, 0, 0, 0, 0, 0, 0, 0, 0.2, 0.0158, 0.054, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'101010', N'孟鲁司特钠咀嚼片<顺尔宁>', N'4mg*5T', N'杭州默沙东', N'盒', N'', NULL, NULL, N'MLSTNJJP[S', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 41, 0, 0, 29.4, 0, 0, 0, 0, 0, 0, 0, 37.35, 27, 29.8, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101012', N'地榆升白片', N'0.1G*20T', N'成都地奥            ', N'盒', N'      ', NULL, NULL, N'DYSBP', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 36, 0, 0, 24.4, 0, 0, 0, 0, 0, 0, 0, 27, 23.4, 23.8, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'101                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101013', N'（美普清片）盐酸丙卡特罗片', N'25Ug*10T', N'浙江大冢', N'盒', N'', NULL, NULL, N'MPQPYSBKTL', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 13, 13.8, 0, 0, 11.16, 0, 0, 0, 0, 0, 0, 0, 13, 10.6, 10.6, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101014', N'阿奇霉素分散片', N'0.25g*6片装', N'哈药集团            ', N'盒', N'      ', NULL, NULL, N'AQMSFSP', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 13, 0, 0, 2.7, 0, 0, 0, 0, 0, 0, 0, 4.84, 2.7, 2.9, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'101                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101015', N'阿漠平阿莫西林克拉维酸钾分散片', N'156.25MG*12T', N'浙江亚太药业有限公司', N'盒', N'', NULL, NULL, N'AMPAMXLKLW', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 17, 0, 0, 6.42, 0, 0, 0, 0, 0, 0, 0, 13.21, 2.604, 6.6, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101016', N'盐酸左氧氟沙星胶囊', N'0.1G*12', N'济南利民', N'盒', N'', NULL, NULL, N'YSZYFSXJN', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 15, 0, 0, 1.05, 0, 0, 0, 0, 0, 0, 0, 8, 0.99, 1.1, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101017', N'奥美拉唑肠溶胶囊', N'20mg*14s', N'悦康                ', N'盒', N'      ', NULL, NULL, N'AMLZCRJN', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 14, 0, 0, 1.35, 0, 0, 0, 0, 0, 0, 0, 1.65, 1, 1.6, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'101                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101018', N'乙酰吉他霉素含片', N'24片', N'云南永安制药有限公司', N'盒', N'', NULL, NULL, N'YXJTMSHP', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 39.8, 0, 0, 15.5, 0, 0, 0, 0, 0, 0, 0, 16, 10, 15.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101019', N'（感康）复方氨酚烷胺片', N'12片', N'吉林吴太', N'盒', N'', NULL, NULL, N'GKFFAFWAP', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 16, 0, 0, 12.2, 0, 0, 0, 0, 0, 0, 0, 12.2, 10.98, 12, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101020', N'头孢泊肟酯片', N'100MG*6片', N'海南海灵', N'盒', N'', NULL, NULL, N'TBBWZP', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 31, 0, 0, 7.7, 0, 0, 0, 0, 0, 0, 0, 7.7, 7.7, 7.7, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101021', N'1', N'9袋', N'上海上药', N'盒', N'', NULL, NULL, N'1', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 36.6, 0, 0, 23.5, 0, 0, 0, 0, 0, 0, 0, 26.94, 20.1, 23.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101022', N'(力度伸)维生素C泡腾片', N'1g*10片', N'拜耳医药', N'盒', N'', NULL, NULL, N'(LDS)WSSCP', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 29, 0, 0, 19.2, 0, 0, 0, 0, 0, 0, 0, 20.3, 3.534, 20.3, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101023', N'沐舒坦片', N'20t*30mg', N'上海勃林格', N'盒', N'', NULL, NULL, N'MSTP', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 44.5, 0, 0, 39.5, 0, 0, 0, 0, 0, 0, 0, 39.5, 17.8, 39.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101024', N'头孢地尼分散片', N'0.1g*6片', N'亚邦药业', N'盒', N'', NULL, NULL, N'TBDNFSP', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 33, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 12.35, 5.9, 11.6, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101025', N'复方嗜酸乳杆菌片', N'0.5g*24片', N'通化金马药业集团股份', N'盒', N'', NULL, NULL, N'FFSSRGJP', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 50, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 28, 16, 28, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101026', N'罗红霉素片', N'150mg*6片', N'石家庄以岭药业股份有', N'盒', N'', NULL, NULL, N'LHMSP', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 10, 0, 0, 1.74, 0, 0, 0, 0, 0, 0, 0, 1.84, 1.74, 1.84, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101027', N'氯雷他定片', N'10mg*8片', N'北京星昊医药股份有限', N'盒', N'', NULL, NULL, N'LLTDP', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 12, 0, 0, 1.7, 0, 0, 0, 0, 0, 0, 0, 2.3, 1.6, 2.3, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101028', N'消旋山莨菪碱片', N'5mg*100片', N'杭州民生药业有限公司', N'片', N'', NULL, NULL, N'XXSLDJP', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0.2, 0, 0, 5.7, 0, 0, 0, 0, 0, 0, 0, 1.14, 0.062, 0.128, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101029', N'五维赖氨酸片', N'36片', N'延边大学草仙药业有限', N'片', N'', NULL, NULL, N'WWLASP', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 40, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 15, 15, 15, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101030', N'金莲清热泡腾片', N'12片', N'天津中盛海天制药有限', N'片', N'', NULL, NULL, N'JLQRPTP', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 46, 0, 0, 26, 0, 0, 0, 0, 0, 0, 0, 42, 27, 42, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101031', N'赖氨葡锌（比比高）', N'18片*2板', N'四川德峰药业', N'盒', N'', NULL, NULL, N'LAPXBBG', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 68, 0, 0, 28, 0, 0, 0, 0, 0, 0, 0, 46, 28, 28, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101032', N'赖氨葡锌片', N'18片*2板*3盒', N'四川德峰药业', N'盒', N'', NULL, NULL, N'LAPXP', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 298, 0, 0, 138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101033', N'氢溴酸右美沙芬片', N'15mg*24片', N'石家庄以岭药业有限公', N'盒', N'', NULL, NULL, N'QXSYMSFP', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 15, 0, 0, 5.85, 0, 0, 0, 0, 0, 0, 0, 6.2, 5.85, 6.2, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101034', N'(顺尔宁)孟鲁司特钠咀嚼片', N'5mg*5片', N'杭州默沙东制药有限公', N'盒', N'', NULL, NULL, N'(SEN)MLSTN', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 48, 0, 0, 37.62, 0, 0, 0, 0, 0, 0, 0, 38, 31.35, 32, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101035', N'头孢克肟分散片（莎普爱思）', N'100mg*6片', N'浙江莎普爱思药业股份', N'盒', N'', NULL, NULL, N'TBKWFSPSPA', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 20, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 4.3, 3.9, 4.3, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101036', N'葡萄糖电解质泡腾片', N'片', N'百利药业', N'片', N'', NULL, NULL, N'PTTDJZPTP', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 7.5, 0, 0, 3.25, 0, 0, 0, 0, 0, 0, 0, 4, 3.25, 4, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101037', N'维生素C泡腾片', N'0.5*30T', N'黑龙江省地纳制药有限', N'片', N'', NULL, NULL, N'WSSCPTP', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 45, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 17, 17, 17, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'101038', N'盐酸左西替利嗪片', N'1*6片/盒', N'北京天衡药物研究院', N'片', N'', NULL, NULL, N'YSZXTLQP', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 17.8, 0, 0, 3.3, 0, 0, 0, 0, 0, 0, 0, 3.3, 3.3, 3.3, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102001', N'鞣酸蛋白酵母散', N'15包盒', N'西安金花', N'盒', NULL, NULL, NULL, N'RSDBJMS', NULL, N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 22, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 9.6, 4, 4, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'102002', N'感冒清热颗粒', N'12g*10袋', N'江西心正药业', N'盒', N'', NULL, NULL, N'GMQRKL', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 26, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 13.2, 2.975, 6, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'102003', N'清开灵颗粒', N'10g*10袋', N'广州白云山明兴制药  ', N'包', N'      ', NULL, NULL, N'QKLKL', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 17, 0, 0, 9.3, 0, 0, 0, 0, 0, 0, 0, 13, 2.5, 11.2, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'102                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'102004', N'<天天乐>止泻颗粒', N'10g*10袋', N'广西天天乐药业', N'盒', N'', NULL, NULL, N'<TTL>ZXKL', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 17.6, 0, 0, 5.7, 0, 0, 0, 0, 0, 0, 0, 6.7, 5.7, 6.7, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'102005', N'<希舒美>阿奇霉素干混悬剂', N'0.1g*6袋', N'辉瑞制药', N'盒', N'', NULL, NULL, N'(XSMAQMSGH', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 48, 0, 0, 35.42, 0, 0, 0, 0, 0, 0, 0, 42, 31.5, 31.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'102006', N'利巴韦林颗粒', N'50mg*18袋', N'四川百利', N'盒', N'', NULL, NULL, N'LBWLKL', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 11, 0, 0, 6.9, 0, 0, 0, 0, 0, 0, 0, 6.96, 4, 4, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'102007', N'阿莫西林克拉维酸钾干混悬剂', N'12包', N'贝克诺顿（浙江）制药', N'盒', N'', NULL, NULL, N'AMXLKLWSJG', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 32, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 15, 6.42, 12.8, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'102008', N'止泻保童颗粒（华佗立停）', N'2.5G*12袋', N'华佗国药股份有限公司', N'盒', N'', NULL, NULL, N'ZXBTKLHTLT', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 54, 0, 0, 26.5, 0, 0, 0, 0, 0, 0, 0, 26.5, 8.5, 26.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'102009', N'<希刻劳>头孢克洛干混悬剂', N'0.125g*6袋', N'礼来苏州制药有限公司', N'盒', N'      ', NULL, NULL, N'<XKL>TBKLG', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 23.9, 0, 0, 19.87, 0, 0, 0, 0, 0, 0, 0, 22.8, 18.7, 20, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'102                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'102010', N'（亚宝）依托红霉素颗粒', N'75mg*10袋', N'亚宝药业', N'瓶', N'', NULL, NULL, N'YBYTHMSKL', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 29, 0, 0, 4.5, 0, 0, 0, 0, 0, 0, 0, 5.8, 4, 5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'102011', N'<思密达>蒙脱石散', N'3g*10袋', N'博福益普生', N'袋', N'', NULL, NULL, N'(SMDMTSS', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 2.3, 0, 0, 1.8, 0, 0, 0, 0, 0, 0, 0, 20.646, 1.68, 1.75, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'102013', N'乙酰麦迪霉素干混悬剂<美欧卡>', N'0.1G*12包', N'东北制药            ', N'盒', N'      ', NULL, NULL, N'YXMDMSGHXJMOK', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 20, 0, 0, 13.5, 0, 0, 0, 0, 0, 0, 0, 13, 8.4, 12.85, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'102                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'102014', N'（盖笛欣）复方碳酸钙泡腾颗粒', N'1.5g*30袋', N'山东达因', N'盒', N'', NULL, NULL, N'GDXFFTSGPT', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 55.5, 0, 0, 44.5, 0, 0, 0, 0, 0, 0, 0, 44.5, 0.85, 44.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'102015', N'<妈咪爱>枯草杆菌二联活菌颗粒', N'1g*10袋', N'北京韩美            ', N'盒', N'      ', NULL, NULL, N'MMAKCGJELH', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 20, 0, 0, 16.65, 0, 0, 0, 0, 0, 0, 0, 18.6, 16.2, 16.5, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'102                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102016', N'Y', N'0.15625g*6袋', N'山东益康', N'盒', N'', NULL, NULL, N'Y', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 3.5, 3.75, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'102017', N'山香圆颗粒', N'12袋', N'青峰医药江西山香药业', N'盒', N'      ', NULL, NULL, N'SXYKL', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 25, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 12, 10, 10, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'102                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102018', N'清开灵颗粒（盒）', N'3G*12袋', N'哈尔滨一洲          ', N'盒', N'      ', NULL, NULL, N'QKLKLH', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 20, 0, 0, 17.5, 0, 0, 0, 0, 0, 0, 0, 17.5, 8.2, 16.6, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'102                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'102019', N'碳酸钙D3颗粒（朗迪）', N'3g*10袋', N'北京振东康远制药', N'盒', N'', NULL, NULL, N'TSGD3KLLD', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 47.5, 0, 0, 19, 0, 0, 0, 0, 0, 0, 0, 21.5, 2.56, 21.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102020', N'盐酸左西替利嗪颗粒', N'2.5MG*6袋', N'康芝药业', N'盒', NULL, NULL, NULL, N'YSZXTLQKL', NULL, N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 29, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 9, 0.465, 0.465, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102021', N'头孢克肟干混悬剂', N'50mg*6袋', N'深圳立健药业', N'盒', N'', NULL, NULL, N'TBKWGHXJ', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 28, 0, 0, 7.5, 0, 0, 0, 0, 0, 0, 0, 12.3, 7.5, 7.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102022', N'氨金黄敏颗粒', N'15袋', N'海南百信药业', N'盒', N'', NULL, NULL, N'AJHMKL', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 23.5, 0, 0, 9.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2, 10.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102023', N'肺宁颗粒', N'10袋/盒', N'吉林益民堂', N'盒', N'', NULL, NULL, N'FNKL', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 13, 0, 0, 7.55, 0, 0, 0, 0, 0, 0, 0, 7.9, 5, 7.9, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102024', N'乙酰吉他霉素颗粒（安吉尔乐）', N'0.1g*18袋', N'云南永安制药有限公司', N'盒', N'', NULL, NULL, N'YXJTMSKLAJ', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 35, 0, 0, 20.66, 0, 0, 0, 0, 0, 0, 0, 21.3, 14, 16, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102025', N'环酯红霉素干混悬剂', N'0.15*6袋', N'澳美华制药          ', N'盒', N'      ', NULL, NULL, N'HZHMSGHXJ', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 43, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 18.54, 0.08, 18.54, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'102                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102026', N'<世福素>头胞克肟颗粒', N'50mg/袋', N'广州白云山          ', N'盒', N'      ', NULL, NULL, N'<SFS>TBKWK', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 31, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 22.97, 14, 16, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'102                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102027', N' 小儿宣肺止咳颗粒', N'8G*6袋', N'武汉健民            ', N'盒', N'      ', NULL, NULL, N' XEXFZKKL', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 23, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 19.2, 9, 19.2, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'102                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102029', N'黄龙止咳颗粒', N'3g*12袋', N'陕西东科制药有限公司', N'盒', N'', NULL, NULL, N'HLZKKL', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 65.5, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 55.26, 13, 44.12, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102030', N'保儿宁颗粒', N'10g*10袋', N'贵州百灵', N'盒', N'', NULL, NULL, N'BENKL', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 36.5, 0, 0, 17.35, 0, 0, 0, 0, 0, 0, 0, 19.5, 9.5, 17.7, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102031', N'3', N'75mg*10袋', N'河北天成', N'盒', N'', NULL, NULL, N'3', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 16.8, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 19.5, 2.85, 2.85, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102032', N'小儿双解止泻颗粒', N'4g*6袋', N'内蒙古古惠丰', N'盒', N'', NULL, NULL, N'XESJZXKL', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 34, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 11, 11, 11, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102033', N'（亚宝）小儿氨酚黄那敏颗粒', N'12袋', N'亚宝药业', N'盒', N'', NULL, NULL, N'YBXEAFHNMK', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 22, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102034', N'小儿氨酚黄那敏颗粒', N'10袋／盒', N'江西药都樟树制药有限', N'盒', N'', NULL, NULL, N'XEAFHNMKL', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 18, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102035', N'多维铁口服液', N'10ml*10支', N'湖南康寿制药有限公司', N'盒', N'', NULL, NULL, N'DWTKFY', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 35, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 14, 13, 13, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102036', N'百蕊颗粒', N'5g*6袋', N'安徽九华华源药业', N'盒', N'', NULL, NULL, N'BRKL', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 65, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 53, 32.96, 35, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102037', N'柴黄颗粒', N'4g*8袋', N'江西京通美联药业有限', N'盒', N'', NULL, NULL, N'CHKL', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 28, 0, 0, 9.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 9.5, 9.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102038', N'猴耳环消炎颗粒', N'6g*9袋', N'江西杏林白马药业', N'盒', N'', NULL, NULL, N'HEHXYKL', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 32, 0, 0, 12.5, 0, 0, 0, 0, 0, 0, 0, 14.5, 12.5, 14.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102039', N'常润安', N'3G/袋', N'德惠市百合养生', N'袋', N'', NULL, NULL, N'CRA', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 5, 0, 0, 2.8, 0, 0, 0, 0, 0, 0, 0, 19, 2.8, 2.8, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102040', N'头孢克肟干混悬剂', N'0.1g*6袋', N'石家庄市华新药业有限', N'盒', N'', NULL, NULL, N'TBKWGHXJ', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 27.9, 0, 0, 7.5, 0, 0, 0, 0, 0, 0, 0, 7.5, 7.5, 7.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102041', N'复方头孢克洛干混悬剂', N'6包', N'上海美优制药', N'盒', N'', NULL, NULL, N'FFTBKLGHXJ', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 38, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 11, 5.1, 11, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102042', N'肤痒颗粒', N'9g*9袋', N'吉林省华侨药业有限公', N'盒', N'', NULL, NULL, N'FYKL', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 25, 0, 0, 5.394, 0, 0, 0, 0, 0, 0, 0, 7.5, 5.2, 7.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102043', N'口服补液盐', N'13.95g*2袋', N'北京曙光', N'盒', N'', NULL, NULL, N'KFBYY', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 2.9, 0, 0, 2.35, 0, 0, 0, 0, 0, 0, 0, 2.35, 1.72, 2.35, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102044', N'含糖胃蛋白酶', N'2g*12袋', N'山西千汇药业有限公司', N'盒', N'', NULL, NULL, N'HTWDBM', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 22, 0, 0, 3.6, 0, 0, 0, 0, 0, 0, 0, 8, 3.5, 4.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102045', N'头孢克肟咀嚼片', N'50mg*12片', N'山东海山药业', N'盒', N'', NULL, NULL, N'TBKWJJP', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 29.4, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 8, 5.5, 8, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102046', N'丙酸交沙霉素颗粒', N'0.1g*6包', N'西南药业股份有限公司', N'盒', N'', NULL, NULL, N'BSJSMSKL', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 34, 0, 0, 13.5, 0, 0, 0, 0, 0, 0, 0, 16, 9.5, 16, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102047', N'稚儿灵颗粒', N'10G*6袋', N'广东元宁', N'盒', N'', NULL, NULL, N'ZELKL', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 28, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102048', N'三联康(培菲康)', N'2g*6包', N'上海上信', N'盒', N'', NULL, NULL, N'SLK(PFK)', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 42, 0, 0, 29.9, 0, 0, 0, 0, 0, 0, 0, 29.9, 24, 24, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102049', N'小儿柴桂退热颗粒', N'4g*12袋', N'贵州百灵', N'盒', N'', NULL, NULL, N'XECGTRKL', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102050', N'儿泻止颗粒', N'3g*6袋', N'红桃开药业股份有限公', N'盒', N'', NULL, NULL, N'EXZKL', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 14, 14, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102051', N'鞣酸蛋白酵母散', N'3g', N'金花企业股份有限公司', N'袋', N'', NULL, NULL, N'RSDBJMS', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.266666666666667, 0.266666666666667, 0.266666666666667, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102052', N'阿莫西林颗粒', N'0.125*16袋', N'海南省金岛制药厂', N'盒', N'', NULL, NULL, N'AMXLKL', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 24.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7.5, 7, 7, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102053', N'小儿感冒颗粒', N'6g*10袋', N'承德新爱民制药有限公', N'盒', N'', NULL, NULL, N'XEGMKL', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7.6, 7.6, 7.6, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102054', N'小儿复方鸡内金散', N'10袋', N'承德新爱民制药有限公', N'盒', N'', NULL, NULL, N'XEFFJNJS', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 19.8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.5, 6.5, 6.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102055', N'磷酸奥司他韦颗粒', N'15mg*10袋', N'宜昌东阳光长江药业', N'盒', N'', NULL, NULL, N'LSASTWKL', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 79.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45.68, 44, 45.68, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102056', N'阿奇霉素干混悬剂', N'0.1g*10袋', N'哈尔滨儿童制药厂', N'盒', N'', NULL, NULL, N'AQMSGHXJ', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 12, 12, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102057', N'头孢克洛颗粒', N'0.125g*9包', N'国药集团汕头金石制药', N'盒', N'', NULL, NULL, N'TBKLKL', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11.3, 11.3, 11.3, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102058', N'头孢泊肟酯干混悬剂', N'50mg*6包', N'重庆科瑞制药', N'盒', N'', NULL, NULL, N'TBBWZGHXJ', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24.5, 24.5, 24.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102059', N'小儿豉翘清热颗粒', N'2g*6包', N'济川药业', N'盒', N'', NULL, NULL, N'XECQQRKL', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 56.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34.33, 34.33, 34.33, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'102060', N'口服补液盐散', N'5.125g', N'厦门恩成制药有限公司', N'包', N'', NULL, NULL, N'KFBYYS', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31.9, 5.31666666666667, 5.31666666666667, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103001', N'<美普清液>盐酸丙卡特罗口服液', N'30ml:0.15mg', N'广东大冢制药', N'瓶', NULL, NULL, NULL, N'<MPQY>YSBK', NULL, N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 16.6, 0, 0, 11.35, 0, 0, 0, 0, 0, 0, 0, 14.7, 10.9, 12.2, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'103002', N'<易坦静>氨溴特罗口服溶液', N'60ml', N'北京韩美药业有限公司', N'瓶', N'', NULL, NULL, N'<YTJ>AXTLK', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 28, 0, 0, 20.05, 0, 0, 0, 0, 0, 0, 0, 23.5, 16, 22.6, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'103003', N'四季抗病毒合剂', N'120ml', N'陕西海天', N'瓶', N'', NULL, NULL, N'SJKBDHJ', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 29.8, 0, 0, 19.71, 0, 0, 0, 0, 0, 0, 0, 21, 16.93, 21, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'103004', N'消炎退热合剂', N'120ML', N'陕西中医学院        ', N'瓶', N'      ', NULL, NULL, N'XYTRHJ', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 34, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 14, 9.8, 12, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'103                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'103005', N'双黄连口服液', N'10ml*10支', N'河南富森', N'盒', N'', NULL, NULL, N'SHLKFY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 17, 0, 0, 8.7, 0, 0, 0, 0, 0, 0, 0, 15, 2.3, 10.6, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'103006', N'小儿止咳糖浆', N'120ml', N'湖北福人            ', N'瓶', N'      ', NULL, NULL, N'XEZKTJ', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 19, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 11, 7, 10, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'103                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'103007', N'肺力咳合剂', N'100ml', N'贵州建兴药业有限公司', N'瓶', N'      ', NULL, NULL, N'FLKHJ', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 31, 0, 0, 19.9, 0, 0, 0, 0, 0, 0, 0, 24, 18.8, 24, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'103                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'103008', N'小儿肺热咳喘口服液', N'10ml*6支', N'黑龙江葵花药业      ', N'盒', N'      ', NULL, NULL, N'XEFRKCKFY', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 29.8, 0, 0, 20.24, 0, 0, 0, 0, 0, 0, 0, 23, 15.5, 22, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'103                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'103009', N'<甜倩>布洛芬混悬液', N'25ml*4支', N'扬州三药制药        ', N'盒', N'      ', NULL, NULL, N'(TQBLFHXY', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 18, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 11.5, 9, 9, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'103                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'103010', N'川贝清肺糖浆', N'120ml', N'广西大力神制药', N'瓶', N'', NULL, NULL, N'CBQFTJ', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 29, 0, 0, 6.5, 0, 0, 0, 0, 0, 0, 0, 11, 5.5, 6.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'103011', N'<百服宁>对乙酰氨基酚滴剂', N'15ml', N'中美上海施贵宝', N'盒', N'', NULL, NULL, N'<BFN>DYXAJ', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 19, 0, 0, 10.05, 0, 0, 0, 0, 0, 0, 0, 15, 6.6, 12.8, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'103012', N'美敏伪麻溶液', N'100ml', N'天大药业            ', N'瓶', N'      ', NULL, NULL, N'MMWMRY', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 18, 0, 0, 8.5, 0, 0, 0, 0, 0, 0, 0, 9, 5, 9, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'103                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'103013', N'健儿清解液', N'100ml', N'国药控股', N'盒', N'', NULL, NULL, N'JEQJY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 25, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 13, 3.6, 11, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'103014', N'去感热口服液', N'10ml*6支', N'四川康特能药业', N'盒', N'', NULL, NULL, N'QGRKFY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 38, 0, 0, 14.5, 0, 0, 0, 0, 0, 0, 0, 20, 10, 14.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'103015', N'五维赖氨酸口服溶液', N'10ml*12支', N'黑龙江仁和堂药业有限', N'盒', N'', NULL, NULL, N'WWLASKFRY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 58, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 25, 10, 25, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'103016', N'地牡宁神口服液', N'10ml*10支', N'烟台巨先药业', N'盒', N'', NULL, NULL, N'DMNSKFY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 68, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 42, 14.5, 42, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'103017', N'阿奇霉素干混悬剂', N'0.1g*6袋', N'上海现代制药股份有限', N'盒', N'', NULL, NULL, N'AQMSGHXJ', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 27, 0, 0, 17.58, 0, 0, 0, 0, 0, 0, 0, 18.8, 2.6, 2.65, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'103019', N'j', N'10ml*6支', N'江西南昌济生制药厂', N'盒', N'', NULL, NULL, N'j', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 29.8, 0, 0, 25.5, 0, 0, 0, 0, 0, 0, 0, 27.5, 20, 26, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'103020', N'盐酸氨溴索口服溶液', N'100ml：0.6g', N'遂成药业股份有限公司', N'盒', N'', NULL, NULL, N'YSAXSKFRY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 24.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 4.4, 12, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103021', N'金双歧', N'24片', N'内蒙古双奇药业', N'盒', N'', NULL, NULL, N'JSQ', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 8.8, 39, 0, 0, 26.94, 0, 0, 0, 0, 0, 0, 0, 29, 9.5, 18.23, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103023', N'减味紫雪口服液', N'10ml*2支', N'延安常泰药业有限公司', N'盒', N'      ', NULL, NULL, N'JWZXKFY', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 28, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 22, 11, 11, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'103                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103024', N'杞枣口服液', N'10ml*10支', N'浙江泰利药业有限公司', N'盒', N'      ', NULL, NULL, N'QZKFY', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 24, 0, 50, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 25, 25, 25, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'103                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103025', N'[美普清液]丙卡特罗', N'60ML:0.3MG', N'广东大冢', N'盒', N'', NULL, NULL, N'[MPQY]BKTL', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 24, 0, 25.7, 0, 0, 21.15, 0, 0, 0, 0, 0, 0, 0, 29, 18, 22.16, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103026', N'氯雷他定糖浆', N'60ML', N'江苏汉晨            ', N'瓶', N'      ', NULL, NULL, N'LLTDTJ', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 28, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 10.1, 9, 9, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'103                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103027', N'右旋布洛芬口服混悬液', N'30ml', N'湖北唯森制药有限公司', N'瓶', N'', NULL, NULL, N'YXBLFKFHXY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 27, 0, 0, 9.6, 0, 0, 0, 0, 0, 0, 0, 9.6, 9.6, 9.6, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103028', N'复方枸缘酸铁铵糖浆', N'100ML', N'海南制药厂', N'盒', N'', NULL, NULL, N'FFGYSTATJ', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 29.8, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 16, 9.5, 10, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103029', N'复方锌铁钙颗粒', N'16袋', N'康芝药业', N'盒', N'', NULL, NULL, N'FFXTGKL', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 39.5, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 14, 11, 13, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103030', N'（汉晨）盐酸丙卡特罗口服溶液', N'80ML', N'江苏汉晨', N'瓶', N'', NULL, NULL, N'HCYSBKTLKF', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 31, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 11, 5, 9, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103031', N'小儿五维赖氨酸糖浆', N'100ML', N'海南制药', N'瓶', N'', NULL, NULL, N'XEWWLASTJ', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 45, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 29, 15, 15, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103032', N'<美林>布洛芬混悬滴剂', N'20ML', N'上海强生制药有限公司', N'盒', N'', NULL, NULL, N'<ML>BLFHXD', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 36, 0, 0, 20.9, 0, 0, 0, 0, 0, 0, 0, 20.9, 10, 20, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103033', N'杏苏止咳糖浆', N'100ml', N'武汉第六制药有限公司', N'瓶', N'      ', NULL, NULL, N'XSZKTJ', N'                    ', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 19.7, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'103                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103034', N'金银花口服液', N'10ml*6支', N'湖北华信制药', N'瓶', N'', NULL, NULL, N'JYHKFY', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 28.5, 0, 0, 14.5, 0, 0, 0, 0, 0, 0, 0, 14.5, 12, 12.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103035', N'硫酸锌糖浆', N'100ml', N'马应龙药业集团股份有', N'瓶', N'', NULL, NULL, N'LSXTJ', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 24.5, 0, 0, 8.5, 0, 0, 0, 0, 0, 0, 0, 10, 8.5, 10, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103036', N'咳宁糖浆', N'100ml', N'马应龙药业集团股份有', N'瓶', N'', NULL, NULL, N'KNTJ', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 28, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 11.5, 10, 11.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103037', N'蒙脱石混悬液(思必敬)', N'90ML', N'南京白净宇制药', N'瓶', N'', NULL, NULL, N'MTSHXY(SBJ', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 28, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 48.0625, 10, 11, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103038', N'<普利莫>匹多莫德口服溶液', N'400mg*7ml*10瓶', N'意大利多帕药业', N'盒', N'', NULL, NULL, N'<PLM>PDMDK', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 165, 0, 0, 111.6, 0, 0, 0, 0, 0, 0, 0, 127, 108, 108, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103039', N'B', N'10ml*10瓶', N'哈尔滨市龙生北药', N'盒', N'', NULL, NULL, N'B', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 45, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 31.9, 20, 20, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103040', N'葡萄糖酸钙口服溶液(纽兰)', N'10ml*10支', N'湖北纽兰', N'盒', N'', NULL, NULL, N'PTTSGKFRY(', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 15, 0, 0, 6.2, 0, 0, 0, 0, 0, 0, 0, 6.7, 6, 6, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103041', N'易坦静、氨溴特罗', N'120ML', N'北京韩美', N'盒', N'', NULL, NULL, N'YTJAXTL', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 38, 0, 0, 18.3, 0, 0, 0, 0, 0, 0, 0, 30.91, 26.3, 29.4, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103042', N'健儿消食口服液', N'10ml', N'吉林万通药业集团梅河', N'盒', N'', NULL, NULL, N'JEXSKFY', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 33, 0, 0, 19.4, 0, 0, 0, 0, 0, 0, 0, 19.4, 12.5, 12.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103043', N'康复新液', N'100ml', N'湖南科伦制药', N'瓶', N'', NULL, NULL, N'KFXY', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 30, 0, 0, 11.5, 0, 0, 0, 0, 0, 0, 0, 16.5, 9.5, 12, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103044', N'泻白糖浆', N'10ml*10瓶', N'河北金牛原大药业', N'盒', N'', NULL, NULL, N'XBTJ', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 38, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 15, 10, 10, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103045', N'羚贝止咳糖浆', N'10ml*6支', N'吉林敖东集团', N'盒', N'', NULL, NULL, N'LBZKTJ', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 33.8, 0, 0, 12.5, 0, 0, 0, 0, 0, 0, 0, 12.5, 12.5, 12.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103046', N'射干利咽口服液', N'10ml*6支', N'通化东宝', N'盒', N'', NULL, NULL, N'SGLYKFY', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 38, 0, 0, 18.3, 0, 0, 0, 0, 0, 0, 0, 22, 14.1, 16.7, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103047', N'苍苓止泻', N'10ml*6支', N'河南天方药业', N'盒', N'', NULL, NULL, N'CLZX', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 38, 0, 0, 19.5, 0, 0, 0, 0, 0, 0, 0, 19.5, 10, 10, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103048', N'止咳橘红合剂', N'100ML', N'鹤壁市中药有限公司', N'瓶', N'', NULL, NULL, N'ZKJHHJ', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 28.5, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 12, 12, 12, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103050', N'健儿清解液', N'10ml*6支', N'江西南昌济生制药厂', N'瓶', N'', NULL, NULL, N'JEQJY', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 5.5, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.5, 5.5, 5.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103051', N'蒲地蓝消炎口服液', N'10ml*10支', N'济川药业集团有限公司', N'盒', N'', NULL, NULL, N'PDLXYKFY', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 49, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 38, 30, 36.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103052', N'（大美林）布洛芬混悬液', N'100ml：2g', N'上海强生制药有限公司', N'盒', N'', NULL, NULL, N'DMLBLFHXY', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 28.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 17.8, 22, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103053', N'转移因子口服溶液', N'6支/盒', N'大连百利天华制药有限', N'盒', N'', NULL, NULL, N'ZYYZKFRY', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 28.3, 0, 0, 6.2, 0, 0, 0, 0, 0, 0, 0, 7.6, 6.2, 7.3, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'103054', N'(大）氯雷他定糖浆', N'100毫升', N'江苏汉晨药业有限公司', N'盒', N'', NULL, NULL, N'(DLLTDTJ', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 36, 0, 35, 0, 0, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 10.5, 10.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'103', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'105001', N'鱼石脂软膏', N'10G', N'新乡市琦宁药业', N'支', N'', NULL, NULL, N'YSZRG', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 29, 0, 0, 3.2, 0, 0, 0, 0, 0, 0, 0, 9.5, 0.55, 9.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'105002', N'丁酸氢化可的松乳膏<尤卓尔>', N'10G', N'天津药业            ', N'支', N'      ', NULL, NULL, N'DSQHKDSRGYZE', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 17, 0, 0, 11.65, 0, 0, 0, 0, 0, 0, 0, 12.5, 8.463, 11.85, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'105                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'105003', N'红霉素软膏', N'8G', N'新乡新辉            ', N'支', N'      ', NULL, NULL, N'HMSRG', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1.5, 0, 0, 0.65, 0, 0, 0, 0, 0, 0, 0, 1.2, 0.45, 0.88, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'105                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'105004', N'宝宝湿疹抑菌膏', N'15G', N'江西捷康生物科技有限', N'支', N'', NULL, NULL, N'BBSZYJG', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 15, 0, 0, 4.6, 0, 0, 0, 0, 0, 0, 0, 5.02, 0.85, 3, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'105005', N'红霉素眼膏', N'2.5克', N'北京双吉制药有限公司', N'支', N'', NULL, NULL, N'HMSYG', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 0, 0, 3.4, 0, 0, 0, 0, 0, 0, 0, 3.5, 0.32, 3.4, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'105006', N'绿药膏<林克霉素利多卡因凝胶>', N'15克', N'湖北舒邦', N'盒', N'', NULL, NULL, N'LYGLKMSLDKYNJ', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 4.2, 0.5, 4.2, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'105007', N'阿昔洛韦乳膏', N'10g', N'福建太平洋          ', N'支', N'      ', NULL, NULL, N'AXLWRG', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 3.5, 0, 0, 0.9, 0, 0, 0, 0, 0, 0, 0, 1.2, 0.791, 0.95, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'105                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'105008', N'羌月乳膏', N'15g', N'武泽健民集团        ', N'支', N'      ', NULL, NULL, N'QYRG', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 38, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 22, 16, 22, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'105                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'105009', N'莫匹罗星软膏<百多邦>', N'5g:0.1g', N'中美史克            ', N'支', N'      ', NULL, NULL, N'MPLXRG<BDB', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 16.8, 0, 0, 12.1, 0, 0, 0, 0, 0, 0, 0, 14.06, 10.23, 13.7, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'105                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'105010', N'<美宝>湿润烧伤膏', N'20', N'汕头美宝制药', N'支', N'', NULL, NULL, N'<MB>SRSSG', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 46, 0, 0, 34.65, 0, 0, 0, 0, 0, 0, 0, 37.8, 31.5, 37.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'105011', N'龙珠软膏', N'15g', N'马应龙药业', N'支', N'', NULL, NULL, N'LZRG', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 25.6, 0, 0, 18, 0, 0, 0, 0, 0, 0, 0, 18, 10, 18, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'105012', N'葡萄糖酸氯已定软膏(乐了贝)', N'10g:0.02g', N'安徽新和成皖南药业有', N'支', N'', NULL, NULL, N'PTTSLYDRG(', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 29, 0, 0, 4.5, 0, 0, 0, 0, 0, 0, 0, 8, 4.5, 8, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'105013', N'夫西地酸乳膏(奥络)', N'5g', N'奥美制药厂', N'支', N'', NULL, NULL, N'FXDSRG(AL)', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 18, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 15.7, 10, 10, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'105014', N'(皮康王)复方酮康唑软膏', N'7G', N'滇红药业', N'盒', N'', NULL, NULL, N'(PKW)FFTKZ', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 7, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 5, 4.8, 5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'106001', N'复方牛磺酸滴眼液<小乐敦>', N'13ML', N'曼秀雷敦药业有限公司', N'支', N'', NULL, NULL, N'FFNHSDYYXLD', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 25, 0, 0, 16.6, 0, 0, 0, 0, 0, 0, 0, 21.376, 12, 21.376, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'106002', N'氯霉素滴眼液（迪瑞）', N'8ml', N'长春迪瑞制药', N'支', N'', NULL, NULL, N'LMSDYYDR', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 7, 0, 0, 1.49, 0, 0, 0, 0, 0, 0, 0, 5.25, 0.74, 1.3, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'106003', N'阿昔洛韦滴眼液', N'8ml', N'安徽省双科药业', N'支', N'', NULL, NULL, N'AXLWDYY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6, 0, 0, 1.25, 0, 0, 0, 0, 0, 0, 0, 3.2, 1, 2.38, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'106004', N'（眼）盐酸左氧氟沙星滴眼液', N'5ml', N'长春迪瑞制药', N'支', N'', NULL, NULL, N'YYSZYFSXDY', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 13, 0, 0, 2.6, 0, 0, 0, 0, 0, 0, 0, 2.65, 1.52, 2.3, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'106005', N'熊胆黄芩滴眼液', N'5ML', N'黑龙江黑宝药业股份有', N'支', N'', NULL, NULL, N'XDHQDYY', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 19.8, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 13.85, 9, 9.7, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'106006', N'呋麻滴鼻液', N'10ml', N'上海运佳黄浦制药', N'瓶', N'', NULL, NULL, N'FMDBY', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 8, 0, 0, 4.5, 0, 0, 0, 0, 0, 0, 0, 4.5, 4.5, 4.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'106007', N'乳酸左氧氟沙星滴眼液', N'5ml', N'杭州国光药业有限公司', N'支', N'', NULL, NULL, N'RSZYFSXDYY', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 13, 0, 0, 4.275, 0, 0, 0, 0, 0, 0, 0, 4.275, 4.275, 4.275, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'106008', N'色甘酸钠滴眼液', N'8ml', N'湖北潜江制药', N'支', N'', NULL, NULL, N'SGSNDYY', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107001', N'如意金黄散', N'5g', N'辽源誉隆亚东        ', N'袋', NULL, NULL, NULL, N'RYJHS', NULL, N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 2, 0, 0, 0.62, 0, 0, 0, 0, 0, 0, 0, 8.5, 0.4, 0.75, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'107                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'107002', N'丁桂儿脐贴', N'1.6*2贴', N'亚宝药业            ', N'盒', N'      ', NULL, NULL, N'DGEQT', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 14, 0, 0, 10.04, 0, 0, 0, 0, 0, 0, 0, 12.2, 8, 11.68, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'107                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'107003', N'开塞露', N'20ML', N'上海佳运黄埔制药    ', N'支', N'      ', NULL, NULL, N'KSL', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1.5, 0, 0, 0.66, 0, 0, 0, 0, 0, 0, 0, 13.67, 0.24, 0.6, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'107                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'107004', N'乳酸依沙吖啶溶液', N'100ML', N'吉林省博大制药有限责', N'瓶', N'', NULL, NULL, N'RSYSADRY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 2.5, 0, 0, 1.65, 0, 0, 0, 0, 0, 0, 0, 2.8, 0.45, 2.8, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'107005', N'过氧化氢抑菌洗剂（双氧水）', N'100ML', N'山东瑞泰奇有限公司', N'瓶', N'', NULL, NULL, N'GYHQYJXJSY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1.5, 0, 0, 0.42, 0, 0, 0, 0, 0, 0, 0, 1, 0.3, 0.4, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'107006', N'口腔炎喷雾剂', N'15ML', N'黑龙江天龙药业', N'瓶', N'', NULL, NULL, N'KQYPWJ', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 37, 0, 0, 8.5, 0, 0, 0, 0, 0, 0, 0, 22.1, 7.6, 9.9, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'107007', N'曲安奈德氯霉素溶液<利康液>', N'10ML', N'唐山集川药业', N'瓶', N'', NULL, NULL, N'QANDLMSRYLKY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 20, 0, 0, 9.9, 0, 0, 0, 0, 0, 0, 0, 16, 3.45, 9.7, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'107008', N'医用体温计', N'', N'东阿阿胶阿华医疗    ', N'支', N'      ', NULL, NULL, N'YYTWJ', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 0, 0, 3.17, 0, 0, 0, 0, 0, 0, 0, 5, 1.95, 2.67, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'107                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'107009', N'对乙酰氨基酚栓', N'0.15*10枚', N'四药药业有限公司', N'盒', N'', NULL, NULL, N'DYXAJFS', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 8, 0, 0, 1.39, 0, 0, 0, 0, 0, 0, 0, 1.86, 0.95, 1.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'107010', N'苯扎氯铵贴<邦迪>', N'1t', N'上海', N'帖', N'', NULL, NULL, N'BZLAT<BD>', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0.25, 0, 0, 0.17, 0, 0, 0, 0, 0, 0, 0, 0.2251, 0.155, 0.175, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107011', N'过氧化氢抑菌洗剂（双氧水）', N'100ml', N'山东瑞泰奇有限公司', N'瓶', N'', NULL, NULL, N'GYHQYJXJSY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1.5, 0, 0, 0.42, 0, 0, 0, 0, 0, 0, 0, 0.9, 0.5, 0.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107012', N'氧氟沙星滴耳液', N'5ML', N'郑州卓峰            ', N'瓶', N'      ', NULL, NULL, N'YFSXDEY', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5.4, 0, 0, 1.95, 0, 0, 0, 0, 0, 0, 0, 2.1, 1.44, 1.8, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'107                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107013', N'云南白药气雾剂', N'85g*30*', N'云南白药集团        ', N'盒', N'      ', NULL, NULL, N'YNBYQWJ', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 34.5, 0, 0, 27.44, 0, 0, 0, 0, 0, 0, 0, 28.5, 25, 28.3, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'107                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107015', N'云南白药粉', N'4克', N'云南白药集团股份公司', N'盒', N'', NULL, NULL, N'YNBYF', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 16, 0, 0, 14, 0, 0, 0, 0, 0, 0, 0, 14.8, 8.8, 14.1, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107016', N'银胡感冒散', N'3贴', N'广西源安堂药业有限公', N'盒', N'', NULL, NULL, N'YHGMS', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 48.8, 0, 0, 18, 0, 0, 0, 0, 0, 0, 0, 28.5, 1.9, 28.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'107017', N'退热贴', N'4片/盒', N'江西冰爽洁芙有限公司', N'盒', N'', NULL, NULL, N'TRT', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 20, 0, 0, 7.3, 0, 0, 0, 0, 0, 0, 0, 8.5, 4, 4, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107018', N'开喉剑喷雾剂', N'20ml', N'贵州三力', N'盒', N'', NULL, NULL, N'KHJPWJ', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 35, 0, 0, 25.5, 0, 0, 0, 0, 0, 0, 0, 28, 17, 20, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107019', N'辅舒良', N'120喷', N'', N'盒', N'', NULL, NULL, N'FSL', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 110, 0, 0, 69, 0, 0, 0, 0, 0, 0, 0, 71.8, 61, 71, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107020', N'肠胃散', N'2G*3袋', N'广西源安堂药业有限公', N'盒', N'', NULL, NULL, N'CWS', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 49.8, 0, 0, 28.5, 0, 0, 0, 0, 0, 0, 0, 32.61, 17.7272727272727, 28.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107021', N'碘伏消毒液', N'100ml', N'沈阳光彩消毒药剂', N'瓶', N'', NULL, NULL, N'DFXDY', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 0, 0, 3.7, 0, 0, 0, 0, 0, 0, 0, 3.8, 0.9, 3.8, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107022', N'右旋布洛芬栓', N'50mg*6粒', N'山西迈迪制药有限公司', N'盒', N'', NULL, NULL, N'YXBLFS', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 30, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 15, 11, 15, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107023', N'珍珠冰硼散(立竿停)', N'3g', N'宿州亿帆药业', N'瓶', N'', NULL, NULL, N'ZZBPS(LGT)', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 29.8, 0, 0, 9.5, 0, 0, 0, 0, 0, 0, 0, 14, 9.5, 10, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107024', N'儿童退热贴(三九）', N'3贴', N'桂林华润', N'盒', N'', NULL, NULL, N'ETTRT(SJ', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 25, 0, 0, 7.1, 0, 0, 0, 0, 0, 0, 0, 71, 4.2, 71, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107025', N'(新康泰克)通气鼻贴(儿童型)8T', N'8T', N'中美史克', N'盒', N'', NULL, NULL, N'(XKTK)TQBT', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 19.5, 0, 0, 13.2, 0, 0, 0, 0, 0, 0, 0, 13.3, 12.65, 13.3, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107026', N'(1粒)复方丁香开胃贴', N'1丸', N'湛江寸草制药', N'盒', N'', NULL, NULL, N'(1L)FFDXKW', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 10, 0, 0, 6.35, 0, 0, 0, 0, 0, 0, 0, 6.35555555555556, 3.812, 6.35333333333333, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107027', N'扁桃保健贴', N'1贴/袋', N'郑州', N'贴', N'', NULL, NULL, N'BTBJT', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 15, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107028', N'咳喘保健贴', N'1贴/袋', N'郑州', N'贴', N'', NULL, NULL, N'KCBJT', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 15, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107029', N'通便保健贴', N'1贴/袋', N'郑州', N'贴', N'', NULL, NULL, N'TBBJT', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 15, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 7, 7, 7, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107030', N'小儿清热宣肺贴膏', N'1贴/袋', N'陕西摩美得', N'贴', N'', NULL, NULL, N'XEQRXFTG', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 17, 17, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107031', N'《鼻朗》生理性盐水鼻腔喷雾器', N'30ML', N'浙江郎柯有限公司', N'瓶', N'', NULL, NULL, N'BLSLXYSBQP', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 45, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 17, 17, 17, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107032', N'复方一枝黄花喷雾剂', N'15ML', N'贵州百灵', N'瓶', N'', NULL, NULL, N'FFYZHHPWJ', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 28, 0, 0, 11.2, 0, 0, 0, 0, 0, 0, 0, 11.2, 11.2, 11.2, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107033', N'开塞露（儿童）', N'10ML', N'上海佳运黄埔制药', N'支', N'', NULL, NULL, N'KSLET', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 0.465, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107034', N'儿泻康贴膜', N'3贴/盒', N'双鹤药业', N'盒', N'', NULL, NULL, N'EXKTM', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 26.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 13, 13, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107035', N'小羚羊型医用退热贴（葵花之霸）', N'4贴/盒', N'广州金护士医疗', N'盒', N'', NULL, NULL, N'XLYXYYTRTK', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.9, 5.9, 5.9, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'107036', N'重组人干扰素a2b喷雾剂', N'20ml：200万iu（240喷', N'天津未名生物医药有限', N'盒', N'', NULL, NULL, N'ZZRGRSa2bP', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43.35, 43.35, 43.35, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'107', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'108001', N'维生素AD胶丸<鱼肝油>', N'100MG*100丸', N'大连水产            ', N'瓶', N'      ', NULL, NULL, N'WSSADJWYGY', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 3.6, 0, 0, 1.85, 0, 0, 0, 0, 0, 0, 0, 1.85, 1.8, 1.85, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'108                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'108002', N'王氏保赤丸', N'0.15G*60丸', N'精华制药集团股份有限', N'瓶', N'', NULL, NULL, N'WSBCW', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7.2, 4.5, 0, 0, 1.685, 0, 0, 0, 0, 0, 0, 0, 8, 1.685, 3.45, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'108', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'108003', N'（伊可新0-）维生素AD滴剂', N'30粒', N'山东达因海洋生物', N'盒', N'', NULL, NULL, N'YKX0-WSSAD', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 40, 0, 0, 25.11, 0, 0, 0, 0, 0, 0, 0, 31, 22.5, 29.6, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'108', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'108004', N'（伊可新1岁以上）维生素AD滴剂', N'30粒', N'山东达因海洋生物', N'盒', N'', NULL, NULL, N'YKX1SYSWSS', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 40, 0, 0, 25.11, 0, 0, 0, 0, 0, 0, 0, 31, 18.6, 29.6, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'108', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'108005', N'咽炎清丸', N'0.3g', N'陕西中医药制药厂', N'盒', N'', NULL, NULL, N'YYQW', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 30, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 12, 12, 12, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'108', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'109001', N'一次性使用无菌注射器', N'20ml、5ml、1ml', N'上海凯乐输液器厂    ', N'支', N'      ', NULL, NULL, N'YCXSYWJZSQ', N'                    ', N' ', N' ', N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1.5, 0, 0, 0.34, 0, 0, 0, 0, 0, 0, 0, 60, 0.25, 0.73, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'109                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'109002', N'一次性口罩', N'3D', N'陕西海达医疗器械科技', N'包', N'', NULL, NULL, N'YCXKZ', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0.22, 0.542727272727273, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'109003', N'留置针', N'1支', N'苏州林华医疗器械股份', N'支', N'', NULL, NULL, N'LZZ', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 27, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0, 18, 7.5, 13, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'109004', N'84消毒液', N'1瓶', N'山东瑞泰奇洗涤消毒科', N'瓶', N'', NULL, NULL, N'84XDY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 0, 0, 1.49, 0, 0, 0, 0, 0, 0, 0, 2.95, 1.25, 1.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'109006', N'3列绷带', N'1卷', N'陕西海达医疗器械科技', N'卷', N'', NULL, NULL, N'3LBD', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 4, 0, 0, 2.16, 0, 0, 0, 0, 0, 0, 0, 4.5, 0.72, 4.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'109007', N'5列绷带', N'1卷', N'陕西海达医疗器械科技', N'卷', N'', NULL, NULL, N'5LBD', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 4, 0, 0, 2.16, 0, 0, 0, 0, 0, 0, 0, 2.16, 0.432, 0.9, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'109008', N'一次性鼻氧管', N'一个', N'扬州市长丰卫生器械有', N'个', N'      ', NULL, NULL, N'YCXBYG', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'109                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'109009', N'面罩(泵吸）', N'一个', N'江苏明源堂          ', N'个', N'      ', NULL, NULL, N'MZ(BX', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 35, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 35, 6.5, 13, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'109                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'109010', N'留置针贴', N'6/8cm', N'泰州精卫医疗器械    ', N'片', N'      ', NULL, NULL, N'LZZT', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 3, 0, 0, 1.5, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'109                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'                    ', N'109011', N'小手板', N'个', N'泰州精卫医疗器械    ', N'个', N'      ', NULL, NULL, N'XSB', N'                    ', N' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'109                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'109012', N'一次性使用输液器', N'0.55', N'山东威高            ', N'套', N'      ', NULL, NULL, N'YCXSYSYQ', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1.5, 0, 0, 0.85, 0, 0, 0, 0, 0, 0, 0, 17, 0.496, 0.83, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'109                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'109013', N'大纱布块', N'7.5cm*7.5cm*8p*10片', N'大连山屏医用卫生材料', N'包', N'', NULL, NULL, N'DSBK', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 0, 0, 1.66, 0, 0, 0, 0, 0, 0, 0, 3.13, 0.13, 2.7, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'109014', N'0', N'一个', N'青岛康华医用卫生材料', N'包', N'', NULL, NULL, N'0', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'109015', N'酒精消毒液500ml:75%', N'500ml:75%', N'山东瑞泰奇', N'瓶', N'', NULL, NULL, N'JJXDY500ml', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 12, 0, 0, 4.4, 0, 0, 0, 0, 0, 0, 0, 4.465, 3.6, 3.9, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'109016', N'小纱布块', N'5*5*8*10', N'大连山屏', N'包', N'', NULL, NULL, N'XSBK', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 3, 0, 0, 1.66, 0, 0, 0, 0, 0, 0, 0, 2.67, 1.3, 1.3, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'109017', N'甘油', N'500ml', N'沈阳红旗制药有限公司', N'瓶', N'', NULL, NULL, N'GY', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 20, 0, 0, 18.8, 0, 0, 0, 0, 0, 0, 0, 18.8, 18.8, 18.8, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'109018', N'雾化管.咬嘴', N'一个', N'扬州市安宁医疗器械', N'个', N'', NULL, NULL, N'WHG.YZ', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.5, 2.5, 2.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'109019', N'雾化罩', N'一个', N'扬州市安宁医疗器械', N'个', N'', NULL, NULL, N'WHZ', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 10, 0, 0, 4.6, 0, 0, 0, 0, 0, 0, 0, 3, 2.85, 2.85, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'109020', N'雾化管', N'一个', N'扬州市安宁医疗器械', N'个', N'', NULL, NULL, N'WHG', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.5, 2.5, 2.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'109021', N'弹力网帽', N'一个', N'扬州市安宁医疗器械', N'个', N'', NULL, NULL, N'DLWM', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.52, 0.52, 0.52, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'109022', N'医用胶带', N'一卷', N'扬州市安宁医疗器械', N'卷', N'', NULL, NULL, N'YYJD', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.916666666666667, 0.875, 0.916666666666667, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'109023', N'导尿管', N'一根', N'扬州市安宁医疗器械', N'根', N'', NULL, NULL, N'DNG', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.3, 2.3, 2.3, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'109024', N'BD留置针', N'一支', N'苏州碧迪医疗器械', N'支', N'', NULL, NULL, N'BDLZZ', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 30, 0, 0, 14.5, 0, 0, 0, 0, 0, 0, 0, 14.5, 14.5, 14.5, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'109025', N'医用纱布块', N'5cm*7cm*8层*10片', N'吉林弗朗医疗科技', N'袋', N'', NULL, NULL, N'YYSBK', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.55, 1.55, 1.55, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'109026', N'医用棉签', N'10cm', N'河南怡众医疗器械', N'袋', N'', NULL, NULL, N'YYMQ', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.4, 0.4, 0.4, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'109027', N'弹性绷带', N'5cm*450', N'江西恒邦医疗器械', N'卷', N'', NULL, NULL, N'DXBD', N'', N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.25, 6, 6.25, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'110001', N'葡萄糖氯化钠注射液', N'500ML', N'大连民康药业有限公司', N'瓶', NULL, NULL, NULL, N'PTTLHNZSY', NULL, N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 7.5, 0, 0, 1.39, 0, 0, 0, 0, 0, 0, 0, 3.3, 1.2, 2.2, 1, 0, 0, 0, NULL, NULL, N'                    ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'110                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'110002', N'氯化钠注射液<0.9%>', N'100ML', N'山东华鲁制药有限公司', N'瓶', N'', NULL, NULL, N'LHNZSY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5.5, 0, 0, 0.65, 0, 0, 0, 0, 0, 0, 0, 2, 0.62, 2, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (N'', N'110003', N'葡萄糖注射液<5%>', N'100ML', N'山东华鲁制药有限公司', N'瓶', N'', NULL, NULL, N'PTTZSY', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5.5, 0, 0, 0.65, 0, 0, 0, 0, 0, 0, 0, 8.2, 0.62, 2, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'110004', N'氯化钠注射液<0.9%>', N'250ML', N'辽宁华鲁制药有限公司', N'瓶', N'', NULL, NULL, N'LHNZSY<0.9', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6.5, 0, 0, 0.72, 0, 0, 0, 0, 0, 0, 0, 2.1, 0.65, 2.1, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'110005', N'葡萄糖注射液〈5%〉', N'250ML', N'辽宁民康制药有限公司', N'瓶', N'', NULL, NULL, N'PTTZSY5%', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 6.5, 0, 0, 0.72, 0, 0, 0, 0, 0, 0, 0, 2.1, 0.65, 2.1, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'110006', N'葡萄糖注射液〈5%〉', N'500ML', N'辽宁民康制药有限公司', N'瓶', N'      ', NULL, NULL, N'PTTZSY5%', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 7.5, 0, 0, 1.3, 0, 0, 0, 0, 0, 0, 0, 1.75, 1.3, 1.395, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'110                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'110007', N'氯化钠注射注〈0.9%〉', N'500ML', N'辽宁民康制药有限公司', N'瓶', N'      ', NULL, NULL, N'LHNZSZ0.9%', N'                    ', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 7.5, 0, 0, 1.3, 0, 0, 0, 0, 0, 0, 0, 1.5, 1.24, 1.396, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1                   ', N'110                 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'110008', N'氯化钠注射注〈0.9%〉', N'150ML', N'四川科伦药业', N'瓶', N'', NULL, NULL, N'LHNZSZ0.9%', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 4.5, 0, 0, 0.9, 0, 0, 0, 0, 0, 0, 0, 1.0625, 0.8, 1.04464285714286, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'110009', N'葡萄糖注射液<5%>', N'150ML', N'四川科伦药业', N'瓶', N'', NULL, NULL, N'PTTZSY<5%>', N'', N' ', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 4.5, 0, 0, 0.9, 0, 0, 0, 0, 0, 0, 0, 1.0625, 0.8, 0.9, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SP] ([F_TM], [F_SPBH], [F_SPMC], [F_SPGG], [F_CD], [F_DW], [F_DW2], [F_USDW], [F_USJL], [F_ZJM], [F_BGY], [F_IFSJ], [F_PHCB], [F_IFPH], [F_CBFF], [F_ISZZ], [F_ISPS], [F_ISKC], [F_SPECIALFLAGS], [F_FREEZE], [F_MAXPC], [F_BZQ], [F_DJ1], [F_DJ2], [F_DJ3], [F_DJ4], [F_DJ5], [F_UN1], [F_UN2], [F_UN3], [F_UN4], [F_UN5], [F_DWCB], [F_RATE], [F_MAXJJ], [F_MINJJ], [F_RECENTJJ], [F_CS], [F_MAXSL], [F_MINSL], [F_SLV], [F_GNZZ], [F_YF], [F_FUNCTION], [F_GYTJ], [F_GYPC], [F_PZWH], [F_GMP], [F_ISO], [F_DRIPSPEED], [F_BM], [F_UC1], [F_UC2], [F_UC3], [F_UC4], [F_UC5], [F_SPSX1], [F_SPSX2], [F_SPSX3], [F_SPSX4], [F_SPSX5], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10]) VALUES (NULL, N'110011', N'(小)氯化钠注射液<0.9%>', N'10ML', N'中国大冢', N'瓶', N'', NULL, NULL, N'(X)LHNZSY<', N'', N'', NULL, N'*', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 3.5, 0, 0, 1.16, 0, 0, 0, 0, 0, 0, 0, 1.2, 1.16, 1.2, 1, 0, 0, 0, NULL, NULL, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SPLB] ([F_LBBH], [F_LBBC], [F_QCSL], [F_QCCB], [F_JC]) VALUES (N'1', N'西药', NULL, NULL, 1)
GO
INSERT [dbo].[SPLB] ([F_LBBH], [F_LBBC], [F_QCSL], [F_QCCB], [F_JC]) VALUES (N'100', N'针剂', NULL, NULL, 2)
GO
INSERT [dbo].[SPLB] ([F_LBBH], [F_LBBC], [F_QCSL], [F_QCCB], [F_JC]) VALUES (N'101', N'片剂', NULL, NULL, 2)
GO
INSERT [dbo].[SPLB] ([F_LBBH], [F_LBBC], [F_QCSL], [F_QCCB], [F_JC]) VALUES (N'102', N'颗粒剂', NULL, NULL, 2)
GO
INSERT [dbo].[SPLB] ([F_LBBH], [F_LBBC], [F_QCSL], [F_QCCB], [F_JC]) VALUES (N'103', N'口服液', NULL, NULL, 2)
GO
INSERT [dbo].[SPLB] ([F_LBBH], [F_LBBC], [F_QCSL], [F_QCCB], [F_JC]) VALUES (N'105', N'膏剂', NULL, NULL, 2)
GO
INSERT [dbo].[SPLB] ([F_LBBH], [F_LBBC], [F_QCSL], [F_QCCB], [F_JC]) VALUES (N'106', N'滴眼液', NULL, NULL, 2)
GO
INSERT [dbo].[SPLB] ([F_LBBH], [F_LBBC], [F_QCSL], [F_QCCB], [F_JC]) VALUES (N'107', N'外用药', NULL, NULL, 2)
GO
INSERT [dbo].[SPLB] ([F_LBBH], [F_LBBC], [F_QCSL], [F_QCCB], [F_JC]) VALUES (N'108', N'丸剂', NULL, NULL, 2)
GO
INSERT [dbo].[SPLB] ([F_LBBH], [F_LBBC], [F_QCSL], [F_QCCB], [F_JC]) VALUES (N'109', N'器械', NULL, NULL, 2)
GO
INSERT [dbo].[SPLB] ([F_LBBH], [F_LBBC], [F_QCSL], [F_QCCB], [F_JC]) VALUES (N'110', N'输液', NULL, NULL, 2)
GO
INSERT [dbo].[YWY] ([F_DM], [F_YWYMC], [F_BM], [F_DE]) VALUES (N'01', N'孙医师', N'01', 0)
GO
INSERT [dbo].[YWY] ([F_DM], [F_YWYMC], [F_BM], [F_DE]) VALUES (N'02', N'李医师', N'01', 0)
GO
INSERT [dbo].[ZTCS] ([F_ZTBH], [F_NAME], [F_LBLENGTH], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10], [F_SPLENGTH], [F_PRICENUMBER], [F_PRICE1], [F_PRICE2], [F_PRICE3], [F_PRICE4], [F_PRICE5], [F_CB], [F_CLENGTH], [F_CLB1], [F_CLB2], [F_CLB3], [F_CLB4], [F_VLENGTH], [F_VLB1], [F_VLB2], [F_VLB3], [F_VLB4], [F_YC]) VALUES (N'HX', N'虹霞路儿科门诊部    ', 2, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 3, 5, N'批发价              ', N'零售价              ', N'代理价              ', N'优惠价              ', N'特惠价              ', 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, N' ')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PK_SPDOWN]    Script Date: 2023/5/9 13:01:46 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SPDOWN]') AND name = N'PK_SPDOWN')
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [PK_SPDOWN] PRIMARY KEY NONCLUSTERED 
(
	[F_SPBH] ASC,
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__BM__F_DE__4FBCC72F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BM] ADD  CONSTRAINT [DF__BM__F_DE__4FBCC72F]  DEFAULT ((0)) FOR [F_DE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CBPOWER__f_ItemI__50B0EB68]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CBPOWER] ADD  CONSTRAINT [DF__CBPOWER__f_ItemI__50B0EB68]  DEFAULT ((0)) FOR [F_ITEMINDEX]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGD__f_fpxz__529933DA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGD] ADD  CONSTRAINT [DF__CGD__f_fpxz__529933DA]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGD__F_JS__51A50FA1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGD] ADD  CONSTRAINT [DF__CGD__F_JS__51A50FA1]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGD2__f_fpxz__54817C4C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGD2] ADD  CONSTRAINT [DF__CGD2__f_fpxz__54817C4C]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGD2__F_JS__538D5813]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGD2] ADD  CONSTRAINT [DF__CGD2__F_JS__538D5813]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGD3__F_JS__5575A085]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGD3] ADD  CONSTRAINT [DF__CGD3__F_JS__5575A085]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGD3__f_fpxz__5669C4BE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGD3] ADD  CONSTRAINT [DF__CGD3__f_fpxz__5669C4BE]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__F_SL__575DE8F7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__F_SL__575DE8F7]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__F_DJ__58520D30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__F_DJ__58520D30]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__F_JE__59463169]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__F_JE__59463169]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__F_SLV__5A3A55A2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__F_SLV__5A3A55A2]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__F_SE__5B2E79DB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__F_SE__5B2E79DB]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__F_HJ__5C229E14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__F_HJ__5C229E14]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__f_dj1__5D16C24D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__f_dj1__5D16C24D]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__f_dj2__5E0AE686]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__f_dj2__5E0AE686]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__f_sljc__5EFF0ABF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__f_sljc__5EFF0ABF]  DEFAULT ((0)) FOR [F_SLJC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__f_sl2__5FF32EF8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__f_sl2__5FF32EF8]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__F_SL__60E75331]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__F_SL__60E75331]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__F_DJ__61DB776A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__F_DJ__61DB776A]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__F_JE__62CF9BA3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__F_JE__62CF9BA3]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__F_SLV__63C3BFDC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__F_SLV__63C3BFDC]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__F_SE__64B7E415]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__F_SE__64B7E415]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__F_HJ__65AC084E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__F_HJ__65AC084E]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__f_dj1__66A02C87]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__f_dj1__66A02C87]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__f_dj2__679450C0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__f_dj2__679450C0]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__f_sljc__688874F9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__f_sljc__688874F9]  DEFAULT ((0)) FOR [F_SLJC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__f_sl2__697C9932]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__f_sl2__697C9932]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__F_SL__6A70BD6B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__F_SL__6A70BD6B]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__F_DJ__6B64E1A4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__F_DJ__6B64E1A4]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__F_JE__6C5905DD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__F_JE__6C5905DD]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__F_SLV__6D4D2A16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__F_SLV__6D4D2A16]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__F_SE__6E414E4F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__F_SE__6E414E4F]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__F_HJ__6F357288]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__F_HJ__6F357288]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__f_dj1__702996C1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__f_dj1__702996C1]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__f_dj2__711DBAFA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__f_dj2__711DBAFA]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__f_sljc__7211DF33]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__f_sljc__7211DF33]  DEFAULT ((0)) FOR [F_SLJC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__f_sl2__7306036C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__f_sl2__7306036C]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD__f_fpxz__73FA27A5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKD] ADD  CONSTRAINT [DF__CKD__f_fpxz__73FA27A5]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD__f_sl2__74EE4BDE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKD] ADD  CONSTRAINT [DF__CKD__f_sl2__74EE4BDE]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD2__f_fpxz__75E27017]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKD2] ADD  CONSTRAINT [DF__CKD2__f_fpxz__75E27017]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD2__f_sl2__76D69450]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKD2] ADD  CONSTRAINT [DF__CKD2__f_sl2__76D69450]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD3__f_fpxz__77CAB889]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKD3] ADD  CONSTRAINT [DF__CKD3__f_fpxz__77CAB889]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD3__f_sl2__78BEDCC2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKD3] ADD  CONSTRAINT [DF__CKD3__f_sl2__78BEDCC2]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX__F_SL__79B300FB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX] ADD  CONSTRAINT [DF__CKDMX__F_SL__79B300FB]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX__F_DJ__7AA72534]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX] ADD  CONSTRAINT [DF__CKDMX__F_DJ__7AA72534]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX__F_JE__7B9B496D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX] ADD  CONSTRAINT [DF__CKDMX__F_JE__7B9B496D]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX__F_SLV__7C8F6DA6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX] ADD  CONSTRAINT [DF__CKDMX__F_SLV__7C8F6DA6]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX__F_SE__7D8391DF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX] ADD  CONSTRAINT [DF__CKDMX__F_SE__7D8391DF]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX__F_UN__7E77B618]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX] ADD  CONSTRAINT [DF__CKDMX__F_UN__7E77B618]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX__f_sl2__7F6BDA51]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX] ADD  CONSTRAINT [DF__CKDMX__f_sl2__7F6BDA51]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX2__F_SL__005FFE8A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX2] ADD  CONSTRAINT [DF__CKDMX2__F_SL__005FFE8A]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX2__F_DJ__015422C3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX2] ADD  CONSTRAINT [DF__CKDMX2__F_DJ__015422C3]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX2__F_JE__024846FC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX2] ADD  CONSTRAINT [DF__CKDMX2__F_JE__024846FC]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX2__F_SLV__033C6B35]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX2] ADD  CONSTRAINT [DF__CKDMX2__F_SLV__033C6B35]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX2__F_SE__04308F6E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX2] ADD  CONSTRAINT [DF__CKDMX2__F_SE__04308F6E]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX2__F_UN__0524B3A7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX2] ADD  CONSTRAINT [DF__CKDMX2__F_UN__0524B3A7]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX2__f_sl2__0618D7E0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX2] ADD  CONSTRAINT [DF__CKDMX2__f_sl2__0618D7E0]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX3__f_sl2__070CFC19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX3] ADD  CONSTRAINT [DF__CKDMX3__f_sl2__070CFC19]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__comxz__f_formWid__08012052]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[COMXZ] ADD  CONSTRAINT [DF__comxz__f_formWid__08012052]  DEFAULT ((200)) FOR [F_FORMWIDTH]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__comxz__f_formHei__08F5448B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[COMXZ] ADD  CONSTRAINT [DF__comxz__f_formHei__08F5448B]  DEFAULT ((200)) FOR [F_FORMHEIGHT]
END
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__customgrad__f_kl__61C668D1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOMGRADE] ADD  CONSTRAINT [DF__customgrad__f_kl__61C668D1]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__customgra__f_pri__5575A085]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CUSTOMGRADE] ADD  CONSTRAINT [DF__customgra__f_pri__5575A085]  DEFAULT ((2)) FOR [F_PRICENUMBER]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX__F_SL__23A93AC7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_SL__23A93AC7]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX__F_JE__249D5F00]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_JE__249D5F00]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX__F_SLJC__25918339]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_SLJC__25918339]  DEFAULT ((0)) FOR [F_SLJC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX__F_DJ__2685A772]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_DJ__2685A772]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX__F_UN__2779CBAB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_UN__2779CBAB]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX__f_sl2__286DEFE4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__f_sl2__286DEFE4]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX2__F_SL__2962141D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_SL__2962141D]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX2__F_JE__2A563856]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_JE__2A563856]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX2__F_SLJC__2B4A5C8F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_SLJC__2B4A5C8F]  DEFAULT ((0)) FOR [F_SLJC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX2__F_DJ__2C3E80C8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_DJ__2C3E80C8]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX2__F_UN__2D32A501]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_UN__2D32A501]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX2__f_sl2__2E26C93A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__f_sl2__2E26C93A]  DEFAULT ((0)) FOR [F_SL2]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__dhdMX__F_SL__5CE1B823]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX] ADD  CONSTRAINT [DF__dhdMX__F_SL__5CE1B823]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__dhdMX__F_DJ__5DD5DC5C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX] ADD  CONSTRAINT [DF__dhdMX__F_DJ__5DD5DC5C]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__dhdMX__F_KL__5ECA0095]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX] ADD  CONSTRAINT [DF__dhdMX__F_KL__5ECA0095]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__dhdMX__F_JE__5FBE24CE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX] ADD  CONSTRAINT [DF__dhdMX__F_JE__5FBE24CE]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__dhdMX__F_SLV__60B24907]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX] ADD  CONSTRAINT [DF__dhdMX__F_SLV__60B24907]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__dhdMX__F_SE__61A66D40]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX] ADD  CONSTRAINT [DF__dhdMX__F_SE__61A66D40]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__dhdMX__F_CB__629A9179]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX] ADD  CONSTRAINT [DF__dhdMX__F_CB__629A9179]  DEFAULT ((0)) FOR [F_CB]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__dhdMX__F_HJ__638EB5B2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX] ADD  CONSTRAINT [DF__dhdMX__F_HJ__638EB5B2]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__dhdMX__F_UN__6482D9EB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX] ADD  CONSTRAINT [DF__dhdMX__F_UN__6482D9EB]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__dhdMX2__F_SL__6576FE24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX2] ADD  CONSTRAINT [DF__dhdMX2__F_SL__6576FE24]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__dhdMX2__F_DJ__666B225D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX2] ADD  CONSTRAINT [DF__dhdMX2__F_DJ__666B225D]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__dhdMX2__F_KL__675F4696]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX2] ADD  CONSTRAINT [DF__dhdMX2__F_KL__675F4696]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__dhdMX2__F_JE__68536ACF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX2] ADD  CONSTRAINT [DF__dhdMX2__F_JE__68536ACF]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__dhdMX2__F_SLV__69478F08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX2] ADD  CONSTRAINT [DF__dhdMX2__F_SLV__69478F08]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__dhdMX2__F_SE__6A3BB341]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX2] ADD  CONSTRAINT [DF__dhdMX2__F_SE__6A3BB341]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__dhdMX2__F_CB__6B2FD77A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX2] ADD  CONSTRAINT [DF__dhdMX2__F_CB__6B2FD77A]  DEFAULT ((0)) FOR [F_CB]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__dhdMX2__F_HJ__6C23FBB3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX2] ADD  CONSTRAINT [DF__dhdMX2__F_HJ__6C23FBB3]  DEFAULT ((0)) FOR [F_HJ]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__f_jiez__797DF6D1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__f_jiez__797DF6D1]  DEFAULT ((0)) FOR [F_JIEZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__f_dhd__7A721B0A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__f_dhd__7A721B0A]  DEFAULT ((0)) FOR [F_DHD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_DJH_f_cx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF_DJH_f_cx]  DEFAULT ((0)) FOR [F_CX]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__djh__f_qdd__6FBF826D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__djh__f_qdd__6FBF826D]  DEFAULT ((0)) FOR [F_QDD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__djh__f_newsp__70B3A6A6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__djh__f_newsp__70B3A6A6]  DEFAULT ((0)) FOR [F_NEWSP]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__djh__f_enemy__71A7CADF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__djh__f_enemy__71A7CADF]  DEFAULT ((0)) FOR [F_ENEMY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__djh__f_pdd__729BEF18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__djh__f_pdd__729BEF18]  DEFAULT ((0)) FOR [F_PDD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__djh__f_sp__7D197D8B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__djh__f_sp__7D197D8B]  DEFAULT ((0)) FOR [F_SP]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ENEMYXX_F_DJ2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ENEMYXX] ADD  CONSTRAINT [DF_ENEMYXX_F_DJ2]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ENEMYXX_F_CS]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ENEMYXX] ADD  CONSTRAINT [DF_ENEMYXX_F_CS]  DEFAULT ((1)) FOR [F_CS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ENEMYXX_f_dj0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ENEMYXX] ADD  CONSTRAINT [DF_ENEMYXX_f_dj0]  DEFAULT ((0)) FOR [F_DJ0]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__EVENT__f_conditi__7B663F43]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EVENT] ADD  CONSTRAINT [DF__EVENT__f_conditi__7B663F43]  DEFAULT ('') FOR [F_CONDITION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__EVENT__f_hint__7C5A637C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EVENT] ADD  CONSTRAINT [DF__EVENT__f_hint__7C5A637C]  DEFAULT ('') FOR [F_HINT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__FPCOL__F_ALIGNME__7D4E87B5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[FPCOL] ADD  CONSTRAINT [DF__FPCOL__F_ALIGNME__7D4E87B5]  DEFAULT ((-1)) FOR [F_ALIGNMENT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__GHLB__F_FEE__46F27704]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GHLB] ADD  CONSTRAINT [DF__GHLB__F_FEE__46F27704]  DEFAULT ((0)) FOR [F_FEE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__GHLB__F_GBF__47E69B3D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GHLB] ADD  CONSTRAINT [DF__GHLB__F_GBF__47E69B3D]  DEFAULT ((0)) FOR [F_GBF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__HW__f_local__7E42ABEE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[HW] ADD  CONSTRAINT [DF__HW__f_local__7E42ABEE]  DEFAULT ('') FOR [F_LOCAL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLS1__7F36D027]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS1__7F36D027]  DEFAULT ((0)) FOR [F_SLS1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLS2__002AF460]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS2__002AF460]  DEFAULT ((0)) FOR [F_SLS2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLS3__011F1899]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS3__011F1899]  DEFAULT ((0)) FOR [F_SLS3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLS4__02133CD2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS4__02133CD2]  DEFAULT ((0)) FOR [F_SLS4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLS5__0307610B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS5__0307610B]  DEFAULT ((0)) FOR [F_SLS5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLS6__03FB8544]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS6__03FB8544]  DEFAULT ((0)) FOR [F_SLS6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLS7__04EFA97D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS7__04EFA97D]  DEFAULT ((0)) FOR [F_SLS7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLS8__05E3CDB6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS8__05E3CDB6]  DEFAULT ((0)) FOR [F_SLS8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLS9__06D7F1EF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS9__06D7F1EF]  DEFAULT ((0)) FOR [F_SLS9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLS10__07CC1628]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS10__07CC1628]  DEFAULT ((0)) FOR [F_SLS10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLS11__08C03A61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS11__08C03A61]  DEFAULT ((0)) FOR [F_SLS11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLS12__09B45E9A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS12__09B45E9A]  DEFAULT ((0)) FOR [F_SLS12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JES1__0AA882D3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES1__0AA882D3]  DEFAULT ((0)) FOR [F_JES1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JES2__0B9CA70C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES2__0B9CA70C]  DEFAULT ((0)) FOR [F_JES2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JES3__0C90CB45]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES3__0C90CB45]  DEFAULT ((0)) FOR [F_JES3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JES4__0D84EF7E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES4__0D84EF7E]  DEFAULT ((0)) FOR [F_JES4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JES5__0E7913B7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES5__0E7913B7]  DEFAULT ((0)) FOR [F_JES5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JES6__0F6D37F0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES6__0F6D37F0]  DEFAULT ((0)) FOR [F_JES6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JES7__10615C29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES7__10615C29]  DEFAULT ((0)) FOR [F_JES7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JES8__11558062]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES8__11558062]  DEFAULT ((0)) FOR [F_JES8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JES9__1249A49B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES9__1249A49B]  DEFAULT ((0)) FOR [F_JES9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JES10__133DC8D4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES10__133DC8D4]  DEFAULT ((0)) FOR [F_JES10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JES11__1431ED0D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES11__1431ED0D]  DEFAULT ((0)) FOR [F_JES11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JES12__15261146]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES12__15261146]  DEFAULT ((0)) FOR [F_JES12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLF1__161A357F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF1__161A357F]  DEFAULT ((0)) FOR [F_SLF1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLF2__170E59B8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF2__170E59B8]  DEFAULT ((0)) FOR [F_SLF2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLF3__18027DF1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF3__18027DF1]  DEFAULT ((0)) FOR [F_SLF3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLF4__18F6A22A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF4__18F6A22A]  DEFAULT ((0)) FOR [F_SLF4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLF5__19EAC663]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF5__19EAC663]  DEFAULT ((0)) FOR [F_SLF5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLF6__1ADEEA9C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF6__1ADEEA9C]  DEFAULT ((0)) FOR [F_SLF6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLF7__1BD30ED5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF7__1BD30ED5]  DEFAULT ((0)) FOR [F_SLF7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLF8__1CC7330E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF8__1CC7330E]  DEFAULT ((0)) FOR [F_SLF8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLF9__1DBB5747]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF9__1DBB5747]  DEFAULT ((0)) FOR [F_SLF9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLF10__1EAF7B80]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF10__1EAF7B80]  DEFAULT ((0)) FOR [F_SLF10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLF11__1FA39FB9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF11__1FA39FB9]  DEFAULT ((0)) FOR [F_SLF11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_SLF12__2097C3F2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF12__2097C3F2]  DEFAULT ((0)) FOR [F_SLF12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JEF1__218BE82B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF1__218BE82B]  DEFAULT ((0)) FOR [F_JEF1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JEF2__22800C64]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF2__22800C64]  DEFAULT ((0)) FOR [F_JEF2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JEF3__2374309D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF3__2374309D]  DEFAULT ((0)) FOR [F_JEF3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JEF4__246854D6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF4__246854D6]  DEFAULT ((0)) FOR [F_JEF4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JEF5__255C790F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF5__255C790F]  DEFAULT ((0)) FOR [F_JEF5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JEF6__26509D48]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF6__26509D48]  DEFAULT ((0)) FOR [F_JEF6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JEF7__2744C181]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF7__2744C181]  DEFAULT ((0)) FOR [F_JEF7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JEF8__2838E5BA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF8__2838E5BA]  DEFAULT ((0)) FOR [F_JEF8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JEF9__292D09F3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF9__292D09F3]  DEFAULT ((0)) FOR [F_JEF9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JEF10__2A212E2C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF10__2A212E2C]  DEFAULT ((0)) FOR [F_JEF10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JEF11__2B155265]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF11__2B155265]  DEFAULT ((0)) FOR [F_JEF11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__F_JEF12__2C09769E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF12__2C09769E]  DEFAULT ((0)) FOR [F_JEF12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHBB__F_ROWS__2CFD9AD7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHBB] ADD  CONSTRAINT [DF__JHBB__F_ROWS__2CFD9AD7]  DEFAULT ((35)) FOR [F_ROWS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHBB__F_SIZE__2DF1BF10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHBB] ADD  CONSTRAINT [DF__JHBB__F_SIZE__2DF1BF10]  DEFAULT ((39)) FOR [F_SIZE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHBB__F_LENGTH__2EE5E349]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHBB] ADD  CONSTRAINT [DF__JHBB__F_LENGTH__2EE5E349]  DEFAULT ((2794)) FOR [F_LENGTH]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHBB__F_WIDTH__2FDA0782]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHBB] ADD  CONSTRAINT [DF__JHBB__F_WIDTH__2FDA0782]  DEFAULT ((3734)) FOR [F_WIDTH]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHBB__F_ORIENT__30CE2BBB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHBB] ADD  CONSTRAINT [DF__JHBB__F_ORIENT__30CE2BBB]  DEFAULT ((1)) FOR [F_ORIENT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHBB__F_HZ__31C24FF4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHBB] ADD  CONSTRAINT [DF__JHBB__F_HZ__31C24FF4]  DEFAULT ((0)) FOR [F_HZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHBB__F_TITLEFON__32B6742D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHBB] ADD  CONSTRAINT [DF__JHBB__F_TITLEFON__32B6742D]  DEFAULT ('宋体,18,1000') FOR [F_TITLEFONT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHBB__F_BBFONT__33AA9866]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHBB] ADD  CONSTRAINT [DF__JHBB__F_BBFONT__33AA9866]  DEFAULT ('宋体,10,0000') FOR [F_BBFONT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHBB__F_COLNUMBE__349EBC9F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHBB] ADD  CONSTRAINT [DF__JHBB__F_COLNUMBE__349EBC9F]  DEFAULT ((7)) FOR [F_COLNUMBER]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHBB__F_COLCAPTI__3592E0D8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHBB] ADD  CONSTRAINT [DF__JHBB__F_COLCAPTI__3592E0D8]  DEFAULT ('代码,名称,单位,进货数量,进货金额,进货税额,价税合计,') FOR [F_COLCAPTION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHBB__F_COLWIDTH__36870511]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHBB] ADD  CONSTRAINT [DF__JHBB__F_COLWIDTH__36870511]  DEFAULT ('7,15,3,7,7,7,7,') FOR [F_COLWIDTH]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHD__F_JS__377B294A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHD] ADD  CONSTRAINT [DF__JHD__F_JS__377B294A]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHD__f_fpxz__386F4D83]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHD] ADD  CONSTRAINT [DF__JHD__f_fpxz__386F4D83]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHD2__F_JS__396371BC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHD2] ADD  CONSTRAINT [DF__JHD2__F_JS__396371BC]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHD2__f_fpxz__3A5795F5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHD2] ADD  CONSTRAINT [DF__JHD2__f_fpxz__3A5795F5]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__F_SL__3B4BBA2E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_SL__3B4BBA2E]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__F_DJ__3C3FDE67]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_DJ__3C3FDE67]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__F_JE__3D3402A0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_JE__3D3402A0]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__F_SLV__3E2826D9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_SLV__3E2826D9]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__F_SE__3F1C4B12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_SE__3F1C4B12]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__F_HJ__40106F4B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_HJ__40106F4B]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__F_UN__41049384]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_UN__41049384]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_JHDMX_f_hsdj]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX] ADD  CONSTRAINT [DF_JHDMX_f_hsdj]  DEFAULT ((0)) FOR [F_HSDJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__jhdmx__f_kl__7889D298]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX] ADD  CONSTRAINT [DF__jhdmx__f_kl__7889D298]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__F_SL__41F8B7BD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_SL__41F8B7BD]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__F_DJ__42ECDBF6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_DJ__42ECDBF6]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__F_JE__43E1002F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_JE__43E1002F]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__F_SLV__44D52468]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_SLV__44D52468]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__F_SE__45C948A1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_SE__45C948A1]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__F_HJ__46BD6CDA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_HJ__46BD6CDA]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__F_UN__47B19113]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_UN__47B19113]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_JHDMX2_f_hsdj]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX2] ADD  CONSTRAINT [DF_JHDMX2_f_hsdj]  DEFAULT ((0)) FOR [F_HSDJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__jhdmx2__f_kl__797DF6D1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX2] ADD  CONSTRAINT [DF__jhdmx2__f_kl__797DF6D1]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__F_SL__48A5B54C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_SL__48A5B54C]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__F_DJ__4999D985]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_DJ__4999D985]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__F_JE__4A8DFDBE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_JE__4A8DFDBE]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__F_SLV__4B8221F7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_SLV__4B8221F7]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__F_SE__4C764630]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_SE__4C764630]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__F_HJ__4D6A6A69]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_HJ__4D6A6A69]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__F_UN__4E5E8EA2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_UN__4E5E8EA2]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_JHDMX3_f_hsdj]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX3] ADD  CONSTRAINT [DF_JHDMX3_f_hsdj]  DEFAULT ((0)) FOR [F_HSDJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__jhdmx3__f_kl__7A721B0A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX3] ADD  CONSTRAINT [DF__jhdmx3__f_kl__7A721B0A]  DEFAULT ((0)) FOR [F_KL]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JXCBB2__F_TOP__71A7CADF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JXCBB2] ADD  CONSTRAINT [DF__JXCBB2__F_TOP__71A7CADF]  DEFAULT ((20)) FOR [F_TOP]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JXCBB2__F_LEFT__729BEF18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JXCBB2] ADD  CONSTRAINT [DF__JXCBB2__F_LEFT__729BEF18]  DEFAULT ((20)) FOR [F_LEFT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JXCBB2__F_ROWS__73901351]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JXCBB2] ADD  CONSTRAINT [DF__JXCBB2__F_ROWS__73901351]  DEFAULT ((40)) FOR [F_ROWS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JXCBB2__F_SIZE__7484378A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JXCBB2] ADD  CONSTRAINT [DF__JXCBB2__F_SIZE__7484378A]  DEFAULT ((39)) FOR [F_SIZE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JXCBB2__F_LENGTH__75785BC3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JXCBB2] ADD  CONSTRAINT [DF__JXCBB2__F_LENGTH__75785BC3]  DEFAULT ((1379)) FOR [F_LENGTH]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JXCBB2__F_WIDTH__766C7FFC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JXCBB2] ADD  CONSTRAINT [DF__JXCBB2__F_WIDTH__766C7FFC]  DEFAULT ((3937)) FOR [F_WIDTH]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JXCBB2__F_ORIENT__7760A435]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JXCBB2] ADD  CONSTRAINT [DF__JXCBB2__F_ORIENT__7760A435]  DEFAULT ((1)) FOR [F_ORIENT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JXCBB2__F_TITLEF__7854C86E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JXCBB2] ADD  CONSTRAINT [DF__JXCBB2__F_TITLEF__7854C86E]  DEFAULT ('宋体,18,0000') FOR [F_TITLEFONT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JXCBB2__F_BBFONT__7948ECA7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JXCBB2] ADD  CONSTRAINT [DF__JXCBB2__F_BBFONT__7948ECA7]  DEFAULT ('宋体,10,0000') FOR [F_BBFONT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JXCBB2__f_rowspa__7A3D10E0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JXCBB2] ADD  CONSTRAINT [DF__JXCBB2__f_rowspa__7A3D10E0]  DEFAULT ((1)) FOR [F_ROWSPACE]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__f_je__04BA9F53]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__f_je__04BA9F53]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__f_jj__05AEC38C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__f_jj__05AEC38C]  DEFAULT ((0)) FOR [F_JJ]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__LSH__F_J1__3469B275]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LSH] ADD  CONSTRAINT [DF__LSH__F_J1__3469B275]  DEFAULT ((0)) FOR [F_J1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__LSH__F_J2__355DD6AE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LSH] ADD  CONSTRAINT [DF__LSH__F_J2__355DD6AE]  DEFAULT ((0)) FOR [F_J2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__LSH__F_J3__3651FAE7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LSH] ADD  CONSTRAINT [DF__LSH__F_J3__3651FAE7]  DEFAULT ((0)) FOR [F_J3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__LSH__F_J4__37461F20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LSH] ADD  CONSTRAINT [DF__LSH__F_J4__37461F20]  DEFAULT ((0)) FOR [F_J4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__LSH__F_J5__383A4359]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LSH] ADD  CONSTRAINT [DF__LSH__F_J5__383A4359]  DEFAULT ((0)) FOR [F_J5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__LSH__F_R1__392E6792]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LSH] ADD  CONSTRAINT [DF__LSH__F_R1__392E6792]  DEFAULT ((0)) FOR [F_R1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__LSH__F_R2__3A228BCB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LSH] ADD  CONSTRAINT [DF__LSH__F_R2__3A228BCB]  DEFAULT ((0)) FOR [F_R2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__LSH__F_R3__3B16B004]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LSH] ADD  CONSTRAINT [DF__LSH__F_R3__3B16B004]  DEFAULT ((0)) FOR [F_R3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__LSH__F_R4__3C0AD43D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LSH] ADD  CONSTRAINT [DF__LSH__F_R4__3C0AD43D]  DEFAULT ((0)) FOR [F_R4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__LSH__F_R5__3CFEF876]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[LSH] ADD  CONSTRAINT [DF__LSH__F_R5__3CFEF876]  DEFAULT ((0)) FOR [F_R5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX__f_dj2__7D8E7ED7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX] ADD  CONSTRAINT [DF__PDDMX__f_dj2__7D8E7ED7]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX2__f_dj2__7E82A310]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX2] ADD  CONSTRAINT [DF__PDDMX2__f_dj2__7E82A310]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX3__f_dj2__7F76C749]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX3] ADD  CONSTRAINT [DF__PDDMX3__f_dj2__7F76C749]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__POWERITEM__f_cla__3DF31CAF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[POWERITEM] ADD  CONSTRAINT [DF__POWERITEM__f_cla__3DF31CAF]  DEFAULT ('') FOR [F_CLASSNAME]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__printcolH__f_fon__3EE740E8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRINTCOLHEADER] ADD  CONSTRAINT [DF__printcolH__f_fon__3EE740E8]  DEFAULT ('宋体,10,1000') FOR [F_FONT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PrintFiel__f_fon__3FDB6521]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRINTFIELD] ADD  CONSTRAINT [DF__PrintFiel__f_fon__3FDB6521]  DEFAULT ('宋体,10,1000') FOR [F_FONT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PrintFiel__f_cap__40CF895A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRINTFIELD] ADD  CONSTRAINT [DF__PrintFiel__f_cap__40CF895A]  DEFAULT ('宋体,10,1000') FOR [F_CAPTIONFONT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__printPage__f_fon__41C3AD93]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRINTPAGEFOOTER] ADD  CONSTRAINT [DF__printPage__f_fon__41C3AD93]  DEFAULT ('宋体,10,1000') FOR [F_FONTLEFT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__printPage__f_fon__42B7D1CC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRINTPAGEFOOTER] ADD  CONSTRAINT [DF__printPage__f_fon__42B7D1CC]  DEFAULT ('宋体,10,1000') FOR [F_FONTCENTER]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__printPage__f_fon__43ABF605]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRINTPAGEFOOTER] ADD  CONSTRAINT [DF__printPage__f_fon__43ABF605]  DEFAULT ('宋体,10,1000') FOR [F_FONTRIGHT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__printPage__f_row__44A01A3E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRINTPAGEFOOTER] ADD  CONSTRAINT [DF__printPage__f_row__44A01A3E]  DEFAULT ((1.5)) FOR [F_ROWSPACE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__printPage__f_fon__45943E77]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRINTPAGEHEADER] ADD  CONSTRAINT [DF__printPage__f_fon__45943E77]  DEFAULT ('宋体,10,1000') FOR [F_FONTLEFT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__printPage__f_fon__468862B0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRINTPAGEHEADER] ADD  CONSTRAINT [DF__printPage__f_fon__468862B0]  DEFAULT ('宋体,10,1000') FOR [F_FONTCENTER]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__printPage__f_fon__477C86E9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRINTPAGEHEADER] ADD  CONSTRAINT [DF__printPage__f_fon__477C86E9]  DEFAULT ('宋体,10,1000') FOR [F_FONTRIGHT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__printPage__f_row__4870AB22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRINTPAGEHEADER] ADD  CONSTRAINT [DF__printPage__f_row__4870AB22]  DEFAULT ((1.5)) FOR [F_ROWSPACE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRINTPARA__F_TOP__4964CF5B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRINTPARAM] ADD  CONSTRAINT [DF__PRINTPARA__F_TOP__4964CF5B]  DEFAULT ((0)) FOR [F_TOP]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRINTPARA__F_LEF__4A58F394]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRINTPARAM] ADD  CONSTRAINT [DF__PRINTPARA__F_LEF__4A58F394]  DEFAULT ((0)) FOR [F_LEFT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRINTPARA__F_PAP__4B4D17CD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRINTPARAM] ADD  CONSTRAINT [DF__PRINTPARA__F_PAP__4B4D17CD]  DEFAULT ((0)) FOR [F_PAPERSIZE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRINTPARA__F_PAP__4C413C06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRINTPARAM] ADD  CONSTRAINT [DF__PRINTPARA__F_PAP__4C413C06]  DEFAULT ((0)) FOR [F_PAPERWIDTH]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRINTPARA__F_PAP__4D35603F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRINTPARAM] ADD  CONSTRAINT [DF__PRINTPARA__F_PAP__4D35603F]  DEFAULT ((0)) FOR [F_PAPERLENGTH]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRINTPARA__F_ORI__4E298478]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRINTPARAM] ADD  CONSTRAINT [DF__PRINTPARA__F_ORI__4E298478]  DEFAULT ((0)) FOR [F_ORIENT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRINTPARA__F_ROW__4F1DA8B1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRINTPARAM] ADD  CONSTRAINT [DF__PRINTPARA__F_ROW__4F1DA8B1]  DEFAULT ((0)) FOR [F_ROWS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PRINTPARA__F_COL__5011CCEA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRINTPARAM] ADD  CONSTRAINT [DF__PRINTPARA__F_COL__5011CCEA]  DEFAULT ((0)) FOR [F_COLNUMBER]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__printpara__f_def__5105F123]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRINTPARAME] ADD  CONSTRAINT [DF__printpara__f_def__5105F123]  DEFAULT ('宋体,10,1000') FOR [F_DEFAULTFONT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__printpara__f_Tit__51FA155C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PRINTPARAME] ADD  CONSTRAINT [DF__printpara__f_Tit__51FA155C]  DEFAULT ('宋体,10,1000') FOR [F_TITLEFONT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PSDMX__F_SL1__52EE3995]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PSDMX] ADD  CONSTRAINT [DF__PSDMX__F_SL1__52EE3995]  DEFAULT ((0)) FOR [F_SL1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PSDMX__F_SL2__53E25DCE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PSDMX] ADD  CONSTRAINT [DF__PSDMX__F_SL2__53E25DCE]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PSDMX__F_SL3__54D68207]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PSDMX] ADD  CONSTRAINT [DF__PSDMX__F_SL3__54D68207]  DEFAULT ((0)) FOR [F_SL3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PSDMX__F_SL4__55CAA640]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PSDMX] ADD  CONSTRAINT [DF__PSDMX__F_SL4__55CAA640]  DEFAULT ((0)) FOR [F_SL4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PSDMX__F_SL5__56BECA79]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PSDMX] ADD  CONSTRAINT [DF__PSDMX__F_SL5__56BECA79]  DEFAULT ((0)) FOR [F_SL5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PSDMX__F_SL6__57B2EEB2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PSDMX] ADD  CONSTRAINT [DF__PSDMX__F_SL6__57B2EEB2]  DEFAULT ((0)) FOR [F_SL6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PSDMX__F_SL7__58A712EB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PSDMX] ADD  CONSTRAINT [DF__PSDMX__F_SL7__58A712EB]  DEFAULT ((0)) FOR [F_SL7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PSDMX__F_SL__599B3724]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PSDMX] ADD  CONSTRAINT [DF__PSDMX__F_SL__599B3724]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDD__F_PSZQ__62707447]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDD] ADD  CONSTRAINT [DF__QDD__F_PSZQ__62707447]  DEFAULT ((30)) FOR [F_PSZQ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDD__F_LJZQ__63649880]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDD] ADD  CONSTRAINT [DF__QDD__F_LJZQ__63649880]  DEFAULT ((30)) FOR [F_LJZQ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDD2__F_PSZQ__6641052B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDD2] ADD  CONSTRAINT [DF__QDD2__F_PSZQ__6641052B]  DEFAULT ((30)) FOR [F_PSZQ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDD2__F_LJZQ__67352964]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDD2] ADD  CONSTRAINT [DF__QDD2__F_LJZQ__67352964]  DEFAULT ((30)) FOR [F_LJZQ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDD3__F_PSZQ__6A11960F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDD3] ADD  CONSTRAINT [DF__QDD3__F_PSZQ__6A11960F]  DEFAULT ((30)) FOR [F_PSZQ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDD3__F_LJZQ__6B05BA48]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDD3] ADD  CONSTRAINT [DF__QDD3__F_LJZQ__6B05BA48]  DEFAULT ((30)) FOR [F_LJZQ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__f_sl__3B219CFC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__f_sl__3B219CFC]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__f_sl2__3C15C135]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__f_sl2__3C15C135]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__F_SLjc__3D09E56E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__F_SLjc__3D09E56E]  DEFAULT ((0)) FOR [F_SLJC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__F_RJXL__3DFE09A7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__F_RJXL__3DFE09A7]  DEFAULT ((0)) FOR [F_RJXL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__F_JYSL__3EF22DE0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__F_JYSL__3EF22DE0]  DEFAULT ((0)) FOR [F_JYSL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__f_dj1__3FE65219]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__f_dj1__3FE65219]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__f_dj2__40DA7652]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__f_dj2__40DA7652]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__f_dj3__41CE9A8B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__f_dj3__41CE9A8B]  DEFAULT ((0)) FOR [F_DJ3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__f_dj4__42C2BEC4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__f_dj4__42C2BEC4]  DEFAULT ((0)) FOR [F_DJ4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__f_dj5__43B6E2FD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__f_dj5__43B6E2FD]  DEFAULT ((0)) FOR [F_DJ5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__f_sl__46934FA8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__f_sl__46934FA8]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__f_sl2__478773E1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__f_sl2__478773E1]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__F_SLjc__487B981A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__F_SLjc__487B981A]  DEFAULT ((0)) FOR [F_SLJC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__F_RJXL__496FBC53]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__F_RJXL__496FBC53]  DEFAULT ((0)) FOR [F_RJXL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__F_JYSL__4A63E08C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__F_JYSL__4A63E08C]  DEFAULT ((0)) FOR [F_JYSL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__f_dj1__4B5804C5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__f_dj1__4B5804C5]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__f_dj2__4C4C28FE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__f_dj2__4C4C28FE]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__f_dj3__4D404D37]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__f_dj3__4D404D37]  DEFAULT ((0)) FOR [F_DJ3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__f_dj4__4E347170]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__f_dj4__4E347170]  DEFAULT ((0)) FOR [F_DJ4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__f_dj5__4F2895A9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__f_dj5__4F2895A9]  DEFAULT ((0)) FOR [F_DJ5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__f_sl__52050254]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__f_sl__52050254]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__f_sl2__52F9268D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__f_sl2__52F9268D]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__F_SLjc__53ED4AC6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__F_SLjc__53ED4AC6]  DEFAULT ((0)) FOR [F_SLJC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__F_RJXL__54E16EFF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__F_RJXL__54E16EFF]  DEFAULT ((0)) FOR [F_RJXL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__F_JYSL__55D59338]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__F_JYSL__55D59338]  DEFAULT ((0)) FOR [F_JYSL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__f_dj1__56C9B771]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__f_dj1__56C9B771]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__f_dj2__57BDDBAA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__f_dj2__57BDDBAA]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__f_dj3__58B1FFE3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__f_dj3__58B1FFE3]  DEFAULT ((0)) FOR [F_DJ3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__f_dj4__59A6241C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__f_dj4__59A6241C]  DEFAULT ((0)) FOR [F_DJ4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__f_dj5__5A9A4855]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__f_dj5__5A9A4855]  DEFAULT ((0)) FOR [F_DJ5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL__F_SL__5A8F5B5D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RETAIL] ADD  CONSTRAINT [DF__RETAIL__F_SL__5A8F5B5D]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL__F_DJ__5B837F96]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RETAIL] ADD  CONSTRAINT [DF__RETAIL__F_DJ__5B837F96]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL__F_JE__5C77A3CF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RETAIL] ADD  CONSTRAINT [DF__RETAIL__F_JE__5C77A3CF]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL__F_JS__5D6BC808]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RETAIL] ADD  CONSTRAINT [DF__RETAIL__F_JS__5D6BC808]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL__f_kl__5E5FEC41]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RETAIL] ADD  CONSTRAINT [DF__RETAIL__f_kl__5E5FEC41]  DEFAULT ((100)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL11__F_SL__5F54107A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RETAIL11] ADD  CONSTRAINT [DF__RETAIL11__F_SL__5F54107A]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL11__F_DJ__604834B3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RETAIL11] ADD  CONSTRAINT [DF__RETAIL11__F_DJ__604834B3]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL11__F_JE__613C58EC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RETAIL11] ADD  CONSTRAINT [DF__RETAIL11__F_JE__613C58EC]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL11__F_JS__62307D25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RETAIL11] ADD  CONSTRAINT [DF__RETAIL11__F_JS__62307D25]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL11__f_kl__6324A15E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RETAIL11] ADD  CONSTRAINT [DF__RETAIL11__f_kl__6324A15E]  DEFAULT ((100)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL2__F_SL__6418C597]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RETAIL2] ADD  CONSTRAINT [DF__RETAIL2__F_SL__6418C597]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL2__F_DJ__650CE9D0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RETAIL2] ADD  CONSTRAINT [DF__RETAIL2__F_DJ__650CE9D0]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL2__F_JE__66010E09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RETAIL2] ADD  CONSTRAINT [DF__RETAIL2__F_JE__66010E09]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL2__F_JS__66F53242]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RETAIL2] ADD  CONSTRAINT [DF__RETAIL2__F_JS__66F53242]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL2__f_kl__67E9567B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RETAIL2] ADD  CONSTRAINT [DF__RETAIL2__f_kl__67E9567B]  DEFAULT ((100)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__retailc__f_je__68DD7AB4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RETAILC] ADD  CONSTRAINT [DF__retailc__f_je__68DD7AB4]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__retailC11__f_je__69D19EED]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RETAILC11] ADD  CONSTRAINT [DF__retailC11__f_je__69D19EED]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__retailc2__f_je__6AC5C326]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RETAILC2] ADD  CONSTRAINT [DF__retailc2__f_je__6AC5C326]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAILDJ__f_djh__6BB9E75F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RETAILDJ] ADD  CONSTRAINT [DF__RETAILDJ__f_djh__6BB9E75F]  DEFAULT ((0)) FOR [F_DJH]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD__f_fpxz__6CAE0B98]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKD] ADD  CONSTRAINT [DF__RKD__f_fpxz__6CAE0B98]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD__f_sl2__6DA22FD1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKD] ADD  CONSTRAINT [DF__RKD__f_sl2__6DA22FD1]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD2__f_fpxz__6E96540A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKD2] ADD  CONSTRAINT [DF__RKD2__f_fpxz__6E96540A]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD2__f_sl2__6F8A7843]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKD2] ADD  CONSTRAINT [DF__RKD2__f_sl2__6F8A7843]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD3__f_fpxz__707E9C7C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKD3] ADD  CONSTRAINT [DF__RKD3__f_fpxz__707E9C7C]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD3__f_sl2__7172C0B5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKD3] ADD  CONSTRAINT [DF__RKD3__f_sl2__7172C0B5]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__F_SL__7266E4EE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_SL__7266E4EE]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__F_DJ__735B0927]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_DJ__735B0927]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__F_JE__744F2D60]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_JE__744F2D60]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__F_UN__75435199]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_UN__75435199]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__F_YLF__763775D2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_YLF__763775D2]  DEFAULT ((0)) FOR [F_YLF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__F_JGF__772B9A0B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_JGF__772B9A0B]  DEFAULT ((0)) FOR [F_JGF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__f_sl2__781FBE44]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__f_sl2__781FBE44]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__rkdmx__f_kl__7B663F43]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX] ADD  CONSTRAINT [DF__rkdmx__f_kl__7B663F43]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX2__F_SL__7913E27D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX2] ADD  CONSTRAINT [DF__RKDMX2__F_SL__7913E27D]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX2__F_DJ__7A0806B6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX2] ADD  CONSTRAINT [DF__RKDMX2__F_DJ__7A0806B6]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX2__F_JE__7AFC2AEF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX2] ADD  CONSTRAINT [DF__RKDMX2__F_JE__7AFC2AEF]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX2__F_UN__7BF04F28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX2] ADD  CONSTRAINT [DF__RKDMX2__F_UN__7BF04F28]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX2__f_sl2__7CE47361]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX2] ADD  CONSTRAINT [DF__RKDMX2__f_sl2__7CE47361]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__rkdmx2__f_kl__7C5A637C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX2] ADD  CONSTRAINT [DF__rkdmx2__f_kl__7C5A637C]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX3__f_sl2__7DD8979A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX3] ADD  CONSTRAINT [DF__RKDMX3__f_sl2__7DD8979A]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__rkdmx3__f_kl__7D4E87B5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX3] ADD  CONSTRAINT [DF__rkdmx3__f_kl__7D4E87B5]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJMXZ__F_JXSE__7ECCBBD3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJMXZ] ADD  CONSTRAINT [DF__SJMXZ__F_JXSE__7ECCBBD3]  DEFAULT ((0)) FOR [F_JXSE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJMXZ__F_XXSE__7FC0E00C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJMXZ] ADD  CONSTRAINT [DF__SJMXZ__F_XXSE__7FC0E00C]  DEFAULT ((0)) FOR [F_XXSE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJMXZ__F_ZCSE__00B50445]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJMXZ] ADD  CONSTRAINT [DF__SJMXZ__F_ZCSE__00B50445]  DEFAULT ((0)) FOR [F_ZCSE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_JXS1__01A9287E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS1__01A9287E]  DEFAULT ((0)) FOR [F_JXS1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_JXS2__029D4CB7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS2__029D4CB7]  DEFAULT ((0)) FOR [F_JXS2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_JXS3__039170F0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS3__039170F0]  DEFAULT ((0)) FOR [F_JXS3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_JXS4__04859529]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS4__04859529]  DEFAULT ((0)) FOR [F_JXS4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_JXS5__0579B962]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS5__0579B962]  DEFAULT ((0)) FOR [F_JXS5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_JXS6__066DDD9B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS6__066DDD9B]  DEFAULT ((0)) FOR [F_JXS6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_JXS7__076201D4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS7__076201D4]  DEFAULT ((0)) FOR [F_JXS7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_JXS8__0856260D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS8__0856260D]  DEFAULT ((0)) FOR [F_JXS8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_JXS9__094A4A46]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS9__094A4A46]  DEFAULT ((0)) FOR [F_JXS9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_JXS10__0A3E6E7F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS10__0A3E6E7F]  DEFAULT ((0)) FOR [F_JXS10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_JXS11__0B3292B8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS11__0B3292B8]  DEFAULT ((0)) FOR [F_JXS11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_JXS12__0C26B6F1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS12__0C26B6F1]  DEFAULT ((0)) FOR [F_JXS12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_XXS1__0D1ADB2A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS1__0D1ADB2A]  DEFAULT ((0)) FOR [F_XXS1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_XXS2__0E0EFF63]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS2__0E0EFF63]  DEFAULT ((0)) FOR [F_XXS2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_XXS3__0F03239C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS3__0F03239C]  DEFAULT ((0)) FOR [F_XXS3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_XXS4__0FF747D5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS4__0FF747D5]  DEFAULT ((0)) FOR [F_XXS4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_XXS5__10EB6C0E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS5__10EB6C0E]  DEFAULT ((0)) FOR [F_XXS5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_XXS6__11DF9047]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS6__11DF9047]  DEFAULT ((0)) FOR [F_XXS6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_XXS7__12D3B480]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS7__12D3B480]  DEFAULT ((0)) FOR [F_XXS7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_XXS8__13C7D8B9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS8__13C7D8B9]  DEFAULT ((0)) FOR [F_XXS8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_XXS9__14BBFCF2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS9__14BBFCF2]  DEFAULT ((0)) FOR [F_XXS9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_XXS10__15B0212B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS10__15B0212B]  DEFAULT ((0)) FOR [F_XXS10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_XXS11__16A44564]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS11__16A44564]  DEFAULT ((0)) FOR [F_XXS11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_XXS12__1798699D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS12__1798699D]  DEFAULT ((0)) FOR [F_XXS12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_ZCS1__188C8DD6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS1__188C8DD6]  DEFAULT ((0)) FOR [F_ZCS1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_ZCS2__1980B20F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS2__1980B20F]  DEFAULT ((0)) FOR [F_ZCS2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_ZCS3__1A74D648]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS3__1A74D648]  DEFAULT ((0)) FOR [F_ZCS3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_ZCS4__1B68FA81]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS4__1B68FA81]  DEFAULT ((0)) FOR [F_ZCS4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_ZCS5__1C5D1EBA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS5__1C5D1EBA]  DEFAULT ((0)) FOR [F_ZCS5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_ZCS6__1D5142F3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS6__1D5142F3]  DEFAULT ((0)) FOR [F_ZCS6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_ZCS7__1E45672C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS7__1E45672C]  DEFAULT ((0)) FOR [F_ZCS7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_ZCS8__1F398B65]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS8__1F398B65]  DEFAULT ((0)) FOR [F_ZCS8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_ZCS9__202DAF9E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS9__202DAF9E]  DEFAULT ((0)) FOR [F_ZCS9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_ZCS10__2121D3D7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS10__2121D3D7]  DEFAULT ((0)) FOR [F_ZCS10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_ZCS11__2215F810]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS11__2215F810]  DEFAULT ((0)) FOR [F_ZCS11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SJZZ__F_ZCS12__230A1C49]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS12__230A1C49]  DEFAULT ((0)) FOR [F_ZCS12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__f_ifsj__2D87AABC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__f_ifsj__2D87AABC]  DEFAULT ('') FOR [F_IFSJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__f_maxpc__2C938683]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__f_maxpc__2C938683]  DEFAULT ((0)) FOR [F_MAXPC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_DJ1__26DAAD2D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_DJ1__26DAAD2D]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_DJ2__27CED166]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_DJ2__27CED166]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_DJ3__28C2F59F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_DJ3__28C2F59F]  DEFAULT ((0)) FOR [F_DJ3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_DJ4__29B719D8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_DJ4__29B719D8]  DEFAULT ((0)) FOR [F_DJ4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_DJ5__2AAB3E11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_DJ5__2AAB3E11]  DEFAULT ((0)) FOR [F_DJ5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__f_un1__30641767]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__f_un1__30641767]  DEFAULT ((0)) FOR [F_UN1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__f_un2__31583BA0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__f_un2__31583BA0]  DEFAULT ((0)) FOR [F_UN2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__f_un3__324C5FD9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__f_un3__324C5FD9]  DEFAULT ((0)) FOR [F_UN3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__f_un4__33408412]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__f_un4__33408412]  DEFAULT ((0)) FOR [F_UN4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__f_un5__3434A84B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__f_un5__3434A84B]  DEFAULT ((0)) FOR [F_UN5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_DWCB__2B9F624A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_DWCB__2B9F624A]  DEFAULT ((0)) FOR [F_DWCB]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__f_rate__2E7BCEF5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__f_rate__2E7BCEF5]  DEFAULT ((0)) FOR [F_RATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__f_maxjj__3528CC84]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__f_maxjj__3528CC84]  DEFAULT ((0)) FOR [F_MAXJJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__f_minjj__361CF0BD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__f_minjj__361CF0BD]  DEFAULT ((0)) FOR [F_MINJJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__f_recentjj__371114F6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__f_recentjj__371114F6]  DEFAULT ((0)) FOR [F_RECENTJJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SP_F_CS]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF_SP_F_CS]  DEFAULT ((1)) FOR [F_CS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_MAXSL__23FE4082]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_MAXSL__23FE4082]  DEFAULT ((0)) FOR [F_MAXSL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_MINSL__24F264BB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_MINSL__24F264BB]  DEFAULT ((0)) FOR [F_MINSL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_SLV__25E688F4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_SLV__25E688F4]  DEFAULT ((0.17)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__f_function__2F6FF32E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__f_function__2F6FF32E]  DEFAULT ('') FOR [F_FUNCTION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__F_MAXSL__3805392F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_MAXSL__3805392F]  DEFAULT ((0)) FOR [F_MAXSL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__F_MINSL__38F95D68]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_MINSL__38F95D68]  DEFAULT ((0)) FOR [F_MINSL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__F_SLV__39ED81A1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_SLV__39ED81A1]  DEFAULT ((0.17)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__F_DJ1__3AE1A5DA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_DJ1__3AE1A5DA]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__F_DJ2__3BD5CA13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_DJ2__3BD5CA13]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__F_DJ3__3CC9EE4C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_DJ3__3CC9EE4C]  DEFAULT ((0)) FOR [F_DJ3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__F_DJ4__3DBE1285]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_DJ4__3DBE1285]  DEFAULT ((0)) FOR [F_DJ4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__F_DJ5__3EB236BE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_DJ5__3EB236BE]  DEFAULT ((0)) FOR [F_DJ5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__F_DWCB__3FA65AF7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_DWCB__3FA65AF7]  DEFAULT ((0)) FOR [F_DWCB]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__f_maxpc__409A7F30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__f_maxpc__409A7F30]  DEFAULT ((0)) FOR [F_MAXPC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__f_ifsj__418EA369]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__f_ifsj__418EA369]  DEFAULT ('') FOR [F_IFSJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__f_rate__4282C7A2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__f_rate__4282C7A2]  DEFAULT ((0)) FOR [F_RATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__f_functi__4376EBDB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__f_functi__4376EBDB]  DEFAULT ('') FOR [F_FUNCTION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_f_un1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_f_un1]  DEFAULT ((0)) FOR [F_UN1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_f_un2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_f_un2]  DEFAULT ((0)) FOR [F_UN2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_f_un3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_f_un3]  DEFAULT ((0)) FOR [F_UN3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_f_un4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_f_un4]  DEFAULT ((0)) FOR [F_UN4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_f_un5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_f_un5]  DEFAULT ((0)) FOR [F_UN5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_f_maxjj]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_f_maxjj]  DEFAULT ((0)) FOR [F_MAXJJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_f_minjj]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_f_minjj]  DEFAULT ((0)) FOR [F_MINJJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_f_recentjj]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_f_recentjj]  DEFAULT ((0)) FOR [F_RECENTJJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPPC__F_SL__446B1014]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPPC] ADD  CONSTRAINT [DF__SPPC__F_SL__446B1014]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPPC__F_JE__455F344D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPPC] ADD  CONSTRAINT [DF__SPPC__F_JE__455F344D]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPSHORT__F_DJ2__75785BC3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPSHORT] ADD  CONSTRAINT [DF__SPSHORT__F_DJ2__75785BC3]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPSHORT__F_CS__766C7FFC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPSHORT] ADD  CONSTRAINT [DF__SPSHORT__F_CS__766C7FFC]  DEFAULT ((0)) FOR [F_CS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLS1__46535886]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS1__46535886]  DEFAULT ((0)) FOR [F_SLS1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLS2__47477CBF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS2__47477CBF]  DEFAULT ((0)) FOR [F_SLS2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLS3__483BA0F8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS3__483BA0F8]  DEFAULT ((0)) FOR [F_SLS3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLS4__492FC531]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS4__492FC531]  DEFAULT ((0)) FOR [F_SLS4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLS5__4A23E96A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS5__4A23E96A]  DEFAULT ((0)) FOR [F_SLS5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLS6__4B180DA3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS6__4B180DA3]  DEFAULT ((0)) FOR [F_SLS6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLS7__4C0C31DC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS7__4C0C31DC]  DEFAULT ((0)) FOR [F_SLS7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLS8__4D005615]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS8__4D005615]  DEFAULT ((0)) FOR [F_SLS8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLS9__4DF47A4E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS9__4DF47A4E]  DEFAULT ((0)) FOR [F_SLS9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLS10__4EE89E87]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS10__4EE89E87]  DEFAULT ((0)) FOR [F_SLS10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLS11__4FDCC2C0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS11__4FDCC2C0]  DEFAULT ((0)) FOR [F_SLS11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLS12__50D0E6F9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS12__50D0E6F9]  DEFAULT ((0)) FOR [F_SLS12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JES1__51C50B32]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES1__51C50B32]  DEFAULT ((0)) FOR [F_JES1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JES2__52B92F6B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES2__52B92F6B]  DEFAULT ((0)) FOR [F_JES2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JES3__53AD53A4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES3__53AD53A4]  DEFAULT ((0)) FOR [F_JES3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JES4__54A177DD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES4__54A177DD]  DEFAULT ((0)) FOR [F_JES4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JES5__55959C16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES5__55959C16]  DEFAULT ((0)) FOR [F_JES5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JES6__5689C04F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES6__5689C04F]  DEFAULT ((0)) FOR [F_JES6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JES7__577DE488]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES7__577DE488]  DEFAULT ((0)) FOR [F_JES7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JES8__587208C1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES8__587208C1]  DEFAULT ((0)) FOR [F_JES8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JES9__59662CFA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES9__59662CFA]  DEFAULT ((0)) FOR [F_JES9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JES10__5A5A5133]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES10__5A5A5133]  DEFAULT ((0)) FOR [F_JES10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JES11__5B4E756C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES11__5B4E756C]  DEFAULT ((0)) FOR [F_JES11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JES12__5C4299A5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES12__5C4299A5]  DEFAULT ((0)) FOR [F_JES12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLF1__5D36BDDE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF1__5D36BDDE]  DEFAULT ((0)) FOR [F_SLF1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLF2__5E2AE217]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF2__5E2AE217]  DEFAULT ((0)) FOR [F_SLF2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLF3__5F1F0650]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF3__5F1F0650]  DEFAULT ((0)) FOR [F_SLF3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLF4__60132A89]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF4__60132A89]  DEFAULT ((0)) FOR [F_SLF4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLF5__61074EC2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF5__61074EC2]  DEFAULT ((0)) FOR [F_SLF5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLF6__61FB72FB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF6__61FB72FB]  DEFAULT ((0)) FOR [F_SLF6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLF7__62EF9734]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF7__62EF9734]  DEFAULT ((0)) FOR [F_SLF7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLF8__63E3BB6D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF8__63E3BB6D]  DEFAULT ((0)) FOR [F_SLF8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLF9__64D7DFA6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF9__64D7DFA6]  DEFAULT ((0)) FOR [F_SLF9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLF10__65CC03DF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF10__65CC03DF]  DEFAULT ((0)) FOR [F_SLF10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLF11__66C02818]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF11__66C02818]  DEFAULT ((0)) FOR [F_SLF11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SLF12__67B44C51]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF12__67B44C51]  DEFAULT ((0)) FOR [F_SLF12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JEF1__68A8708A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF1__68A8708A]  DEFAULT ((0)) FOR [F_JEF1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JEF2__699C94C3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF2__699C94C3]  DEFAULT ((0)) FOR [F_JEF2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JEF3__6A90B8FC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF3__6A90B8FC]  DEFAULT ((0)) FOR [F_JEF3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JEF4__6B84DD35]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF4__6B84DD35]  DEFAULT ((0)) FOR [F_JEF4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JEF5__6C79016E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF5__6C79016E]  DEFAULT ((0)) FOR [F_JEF5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JEF6__6D6D25A7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF6__6D6D25A7]  DEFAULT ((0)) FOR [F_JEF6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JEF7__6E6149E0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF7__6E6149E0]  DEFAULT ((0)) FOR [F_JEF7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JEF8__6F556E19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF8__6F556E19]  DEFAULT ((0)) FOR [F_JEF8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JEF9__70499252]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF9__70499252]  DEFAULT ((0)) FOR [F_JEF9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JEF10__713DB68B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF10__713DB68B]  DEFAULT ((0)) FOR [F_JEF10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JEF11__7231DAC4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF11__7231DAC4]  DEFAULT ((0)) FOR [F_JEF11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_JEF12__7325FEFD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF12__7325FEFD]  DEFAULT ((0)) FOR [F_JEF12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SE1__741A2336]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE1__741A2336]  DEFAULT ((0)) FOR [F_SE1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SE2__750E476F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE2__750E476F]  DEFAULT ((0)) FOR [F_SE2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SE3__76026BA8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE3__76026BA8]  DEFAULT ((0)) FOR [F_SE3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SE4__76F68FE1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE4__76F68FE1]  DEFAULT ((0)) FOR [F_SE4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SE5__77EAB41A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE5__77EAB41A]  DEFAULT ((0)) FOR [F_SE5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SE6__78DED853]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE6__78DED853]  DEFAULT ((0)) FOR [F_SE6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SE7__79D2FC8C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE7__79D2FC8C]  DEFAULT ((0)) FOR [F_SE7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SE8__7AC720C5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE8__7AC720C5]  DEFAULT ((0)) FOR [F_SE8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SE9__7BBB44FE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE9__7BBB44FE]  DEFAULT ((0)) FOR [F_SE9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SE10__7CAF6937]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE10__7CAF6937]  DEFAULT ((0)) FOR [F_SE10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SE11__7DA38D70]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE11__7DA38D70]  DEFAULT ((0)) FOR [F_SE11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__F_SE12__7E97B1A9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE12__7E97B1A9]  DEFAULT ((0)) FOR [F_SE12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__TRANSPORT__F_IND__7C255952]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TRANSPORT] ADD  CONSTRAINT [DF__TRANSPORT__F_IND__7C255952]  DEFAULT ((0)) FOR [F_INDEX]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP__f_ljxf__4FBCC72F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP] ADD  CONSTRAINT [DF__VIP__f_ljxf__4FBCC72F]  DEFAULT ((0)) FOR [F_LJXF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP__f_grade__50B0EB68]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP] ADD  CONSTRAINT [DF__VIP__f_grade__50B0EB68]  DEFAULT ((0)) FOR [F_GRADE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP2__f_ljxf__538D5813]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP2] ADD  CONSTRAINT [DF__VIP2__f_ljxf__538D5813]  DEFAULT ((0)) FOR [F_LJXF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP2__f_grade__54817C4C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP2] ADD  CONSTRAINT [DF__VIP2__f_grade__54817C4C]  DEFAULT ((0)) FOR [F_GRADE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX__F_SL__7F8BD5E2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XHDMX] ADD  CONSTRAINT [DF__XHDMX__F_SL__7F8BD5E2]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX__F_DJ__007FFA1B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XHDMX] ADD  CONSTRAINT [DF__XHDMX__F_DJ__007FFA1B]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX__F_KL__01741E54]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XHDMX] ADD  CONSTRAINT [DF__XHDMX__F_KL__01741E54]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX__F_JE__0268428D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XHDMX] ADD  CONSTRAINT [DF__XHDMX__F_JE__0268428D]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX__F_SLV__035C66C6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XHDMX] ADD  CONSTRAINT [DF__XHDMX__F_SLV__035C66C6]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX__F_SE__04508AFF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XHDMX] ADD  CONSTRAINT [DF__XHDMX__F_SE__04508AFF]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX__F_CB__0544AF38]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XHDMX] ADD  CONSTRAINT [DF__XHDMX__F_CB__0544AF38]  DEFAULT ((0)) FOR [F_CB]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX__F_HJ__0638D371]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XHDMX] ADD  CONSTRAINT [DF__XHDMX__F_HJ__0638D371]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX__F_UN__072CF7AA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XHDMX] ADD  CONSTRAINT [DF__XHDMX__F_UN__072CF7AA]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX2__F_SL__08211BE3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XHDMX2] ADD  CONSTRAINT [DF__XHDMX2__F_SL__08211BE3]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX2__F_DJ__0915401C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XHDMX2] ADD  CONSTRAINT [DF__XHDMX2__F_DJ__0915401C]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX2__F_KL__0A096455]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XHDMX2] ADD  CONSTRAINT [DF__XHDMX2__F_KL__0A096455]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX2__F_JE__0AFD888E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XHDMX2] ADD  CONSTRAINT [DF__XHDMX2__F_JE__0AFD888E]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX2__F_SLV__0BF1ACC7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XHDMX2] ADD  CONSTRAINT [DF__XHDMX2__F_SLV__0BF1ACC7]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX2__F_SE__0CE5D100]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XHDMX2] ADD  CONSTRAINT [DF__XHDMX2__F_SE__0CE5D100]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX2__F_CB__0DD9F539]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XHDMX2] ADD  CONSTRAINT [DF__XHDMX2__F_CB__0DD9F539]  DEFAULT ((0)) FOR [F_CB]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX2__F_HJ__0ECE1972]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XHDMX2] ADD  CONSTRAINT [DF__XHDMX2__F_HJ__0ECE1972]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_TOP__0FC23DAB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_TOP__0FC23DAB]  DEFAULT ((0)) FOR [F_TOP]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_LEFT__10B661E4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_LEFT__10B661E4]  DEFAULT ((0)) FOR [F_LEFT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_ROWS__11AA861D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_ROWS__11AA861D]  DEFAULT ((35)) FOR [F_ROWS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_SIZE__129EAA56]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_SIZE__129EAA56]  DEFAULT ((39)) FOR [F_SIZE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_LENGTH__1392CE8F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_LENGTH__1392CE8F]  DEFAULT ((2794)) FOR [F_LENGTH]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_WIDTH__1486F2C8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_WIDTH__1486F2C8]  DEFAULT ((3734)) FOR [F_WIDTH]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_ORIENT__157B1701]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_ORIENT__157B1701]  DEFAULT ((1)) FOR [F_ORIENT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_HZ__166F3B3A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_HZ__166F3B3A]  DEFAULT ((0)) FOR [F_HZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_TITLEFON__17635F73]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_TITLEFON__17635F73]  DEFAULT ('宋体,18,1000') FOR [F_TITLEFONT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_BBFONT__185783AC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_BBFONT__185783AC]  DEFAULT ('宋体,10,0000') FOR [F_BBFONT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_COLNUMBE__194BA7E5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_COLNUMBE__194BA7E5]  DEFAULT ((10)) FOR [F_COLNUMBER]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_COLCAPTI__1A3FCC1E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_COLCAPTI__1A3FCC1E]  DEFAULT ('代码,名称,单位,销售数量,销售金额,销售成本,销售毛利,毛利率,销售税金,价税合计,') FOR [F_COLCAPTION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_COLWIDTH__1B33F057]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_COLWIDTH__1B33F057]  DEFAULT ('7,15,3,7,7,7,7,7,7,7,') FOR [F_COLWIDTH]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFHXZ__f_jh__4EB3945D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFHXZ] ADD  CONSTRAINT [DF__YFHXZ__f_jh__4EB3945D]  DEFAULT ((0)) FOR [F_JH]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFHXZ__f_fk__4FA7B896]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFHXZ] ADD  CONSTRAINT [DF__YFHXZ__f_fk__4FA7B896]  DEFAULT ((0)) FOR [F_FK]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFHXZ__f_hxje__509BDCCF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFHXZ] ADD  CONSTRAINT [DF__YFHXZ__f_hxje__509BDCCF]  DEFAULT ((0)) FOR [F_HXJE]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZ__f_ye__5378497A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFMXZ] ADD  CONSTRAINT [DF__YFMXZ__f_ye__5378497A]  DEFAULT ((0)) FOR [F_YE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZ__f_hxje__546C6DB3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFMXZ] ADD  CONSTRAINT [DF__YFMXZ__f_hxje__546C6DB3]  DEFAULT ((0)) FOR [F_HXJE]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSHXZ__f_xs__6E2C3FB6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSHXZ] ADD  CONSTRAINT [DF__YSHXZ__f_xs__6E2C3FB6]  DEFAULT ((0)) FOR [F_XS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSHXZ__f_sk__6F2063EF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSHXZ] ADD  CONSTRAINT [DF__YSHXZ__f_sk__6F2063EF]  DEFAULT ((0)) FOR [F_SK]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSHXZ__f_hxje__70148828]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSHXZ] ADD  CONSTRAINT [DF__YSHXZ__f_hxje__70148828]  DEFAULT ((0)) FOR [F_HXJE]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZ__f_ye__72F0F4D3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSMXZ] ADD  CONSTRAINT [DF__YSMXZ__f_ye__72F0F4D3]  DEFAULT ((0)) FOR [F_YE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZ__f_hxje__73E5190C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSMXZ] ADD  CONSTRAINT [DF__YSMXZ__f_hxje__73E5190C]  DEFAULT ((0)) FOR [F_HXJE]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__zlfx_c_da__f_day__548C6944]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ZLFX_C_DAY] ADD  CONSTRAINT [DF__zlfx_c_da__f_day__548C6944]  DEFAULT ((0)) FOR [F_DAY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__zlfx_c_kj__f_day__5768D5EF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ZLFX_C_KJQJ] ADD  CONSTRAINT [DF__zlfx_c_kj__f_day__5768D5EF]  DEFAULT ((0)) FOR [F_DAY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__zlfx_c_ye__f_day__5A45429A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ZLFX_C_YEAR] ADD  CONSTRAINT [DF__zlfx_c_ye__f_day__5A45429A]  DEFAULT ((0)) FOR [F_DAY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__zlfx_v_da__f_day__5D21AF45]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ZLFX_V_DAY] ADD  CONSTRAINT [DF__zlfx_v_da__f_day__5D21AF45]  DEFAULT ((0)) FOR [F_DAY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__zlfx_v_kj__f_day__5FFE1BF0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ZLFX_V_KJQJ] ADD  CONSTRAINT [DF__zlfx_v_kj__f_day__5FFE1BF0]  DEFAULT ((0)) FOR [F_DAY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__zlfx_v_ye__f_day__62DA889B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ZLFX_V_YEAR] ADD  CONSTRAINT [DF__zlfx_v_ye__f_day__62DA889B]  DEFAULT ((0)) FOR [F_DAY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__ZZDMX__F_DJ__0DA4EB0F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ZZDMX] ADD  CONSTRAINT [DF__ZZDMX__F_DJ__0DA4EB0F]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__ZZDMX__F_SL__0E990F48]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ZZDMX] ADD  CONSTRAINT [DF__ZZDMX__F_SL__0E990F48]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__ZZDMX__F_JE__0F8D3381]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ZZDMX] ADD  CONSTRAINT [DF__ZZDMX__F_JE__0F8D3381]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__ZZDMX2__F_DJ__108157BA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ZZDMX2] ADD  CONSTRAINT [DF__ZZDMX2__F_DJ__108157BA]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__ZZDMX2__F_SL__11757BF3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ZZDMX2] ADD  CONSTRAINT [DF__ZZDMX2__F_SL__11757BF3]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__ZZDMX2__F_JE__1269A02C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ZZDMX2] ADD  CONSTRAINT [DF__ZZDMX2__F_JE__1269A02C]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__ZZDMX3__F_DJ__135DC465]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ZZDMX3] ADD  CONSTRAINT [DF__ZZDMX3__F_DJ__135DC465]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__ZZDMX3__F_SL__1451E89E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ZZDMX3] ADD  CONSTRAINT [DF__ZZDMX3__F_SL__1451E89E]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__ZZDMX3__F_JE__15460CD7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ZZDMX3] ADD  CONSTRAINT [DF__ZZDMX3__F_JE__15460CD7]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD__F_BM__5C229E14]') AND parent_object_id = OBJECT_ID(N'[dbo].[CGD]'))
ALTER TABLE [dbo].[CGD]  WITH CHECK ADD  CONSTRAINT [FK__CGD__F_BM__5C229E14] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD__F_BM__5C229E14]') AND parent_object_id = OBJECT_ID(N'[dbo].[CGD]'))
ALTER TABLE [dbo].[CGD] CHECK CONSTRAINT [FK__CGD__F_BM__5C229E14]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD__F_HW__5D16C24D]') AND parent_object_id = OBJECT_ID(N'[dbo].[CGD]'))
ALTER TABLE [dbo].[CGD]  WITH CHECK ADD  CONSTRAINT [FK__CGD__F_HW__5D16C24D] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD__F_HW__5D16C24D]') AND parent_object_id = OBJECT_ID(N'[dbo].[CGD]'))
ALTER TABLE [dbo].[CGD] CHECK CONSTRAINT [FK__CGD__F_HW__5D16C24D]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD__F_VENDOR__5E0AE686]') AND parent_object_id = OBJECT_ID(N'[dbo].[CGD]'))
ALTER TABLE [dbo].[CGD]  WITH CHECK ADD  CONSTRAINT [FK__CGD__F_VENDOR__5E0AE686] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD__F_VENDOR__5E0AE686]') AND parent_object_id = OBJECT_ID(N'[dbo].[CGD]'))
ALTER TABLE [dbo].[CGD] CHECK CONSTRAINT [FK__CGD__F_VENDOR__5E0AE686]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD2__F_BM__5EFF0ABF]') AND parent_object_id = OBJECT_ID(N'[dbo].[CGD2]'))
ALTER TABLE [dbo].[CGD2]  WITH CHECK ADD  CONSTRAINT [FK__CGD2__F_BM__5EFF0ABF] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD2__F_BM__5EFF0ABF]') AND parent_object_id = OBJECT_ID(N'[dbo].[CGD2]'))
ALTER TABLE [dbo].[CGD2] CHECK CONSTRAINT [FK__CGD2__F_BM__5EFF0ABF]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD2__F_HW__5FF32EF8]') AND parent_object_id = OBJECT_ID(N'[dbo].[CGD2]'))
ALTER TABLE [dbo].[CGD2]  WITH CHECK ADD  CONSTRAINT [FK__CGD2__F_HW__5FF32EF8] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD2__F_HW__5FF32EF8]') AND parent_object_id = OBJECT_ID(N'[dbo].[CGD2]'))
ALTER TABLE [dbo].[CGD2] CHECK CONSTRAINT [FK__CGD2__F_HW__5FF32EF8]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD2__F_VENDOR__60E75331]') AND parent_object_id = OBJECT_ID(N'[dbo].[CGD2]'))
ALTER TABLE [dbo].[CGD2]  WITH CHECK ADD  CONSTRAINT [FK__CGD2__F_VENDOR__60E75331] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD2__F_VENDOR__60E75331]') AND parent_object_id = OBJECT_ID(N'[dbo].[CGD2]'))
ALTER TABLE [dbo].[CGD2] CHECK CONSTRAINT [FK__CGD2__F_VENDOR__60E75331]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGDMX__F_SPBH__61DB776A]') AND parent_object_id = OBJECT_ID(N'[dbo].[CGDMX]'))
ALTER TABLE [dbo].[CGDMX]  WITH CHECK ADD  CONSTRAINT [FK__CGDMX__F_SPBH__61DB776A] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGDMX__F_SPBH__61DB776A]') AND parent_object_id = OBJECT_ID(N'[dbo].[CGDMX]'))
ALTER TABLE [dbo].[CGDMX] CHECK CONSTRAINT [FK__CGDMX__F_SPBH__61DB776A]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGDMX2__F_SPBH__62CF9BA3]') AND parent_object_id = OBJECT_ID(N'[dbo].[CGDMX2]'))
ALTER TABLE [dbo].[CGDMX2]  WITH CHECK ADD  CONSTRAINT [FK__CGDMX2__F_SPBH__62CF9BA3] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGDMX2__F_SPBH__62CF9BA3]') AND parent_object_id = OBJECT_ID(N'[dbo].[CGDMX2]'))
ALTER TABLE [dbo].[CGDMX2] CHECK CONSTRAINT [FK__CGDMX2__F_SPBH__62CF9BA3]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKD__F_HW__63C3BFDC]') AND parent_object_id = OBJECT_ID(N'[dbo].[CKD]'))
ALTER TABLE [dbo].[CKD]  WITH CHECK ADD  CONSTRAINT [FK__CKD__F_HW__63C3BFDC] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKD__F_HW__63C3BFDC]') AND parent_object_id = OBJECT_ID(N'[dbo].[CKD]'))
ALTER TABLE [dbo].[CKD] CHECK CONSTRAINT [FK__CKD__F_HW__63C3BFDC]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKD2__F_HW__64B7E415]') AND parent_object_id = OBJECT_ID(N'[dbo].[CKD2]'))
ALTER TABLE [dbo].[CKD2]  WITH CHECK ADD  CONSTRAINT [FK__CKD2__F_HW__64B7E415] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKD2__F_HW__64B7E415]') AND parent_object_id = OBJECT_ID(N'[dbo].[CKD2]'))
ALTER TABLE [dbo].[CKD2] CHECK CONSTRAINT [FK__CKD2__F_HW__64B7E415]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKDMX__F_SPBH__65AC084E]') AND parent_object_id = OBJECT_ID(N'[dbo].[CKDMX]'))
ALTER TABLE [dbo].[CKDMX]  WITH CHECK ADD  CONSTRAINT [FK__CKDMX__F_SPBH__65AC084E] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKDMX__F_SPBH__65AC084E]') AND parent_object_id = OBJECT_ID(N'[dbo].[CKDMX]'))
ALTER TABLE [dbo].[CKDMX] CHECK CONSTRAINT [FK__CKDMX__F_SPBH__65AC084E]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKDMX2__F_SPBH__66A02C87]') AND parent_object_id = OBJECT_ID(N'[dbo].[CKDMX2]'))
ALTER TABLE [dbo].[CKDMX2]  WITH CHECK ADD  CONSTRAINT [FK__CKDMX2__F_SPBH__66A02C87] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKDMX2__F_SPBH__66A02C87]') AND parent_object_id = OBJECT_ID(N'[dbo].[CKDMX2]'))
ALTER TABLE [dbo].[CKDMX2] CHECK CONSTRAINT [FK__CKDMX2__F_SPBH__66A02C87]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD__F_HW1__679450C0]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBD]'))
ALTER TABLE [dbo].[DBD]  WITH CHECK ADD  CONSTRAINT [FK__DBD__F_HW1__679450C0] FOREIGN KEY([F_HW1])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD__F_HW1__679450C0]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBD]'))
ALTER TABLE [dbo].[DBD] CHECK CONSTRAINT [FK__DBD__F_HW1__679450C0]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD__F_HW2__688874F9]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBD]'))
ALTER TABLE [dbo].[DBD]  WITH CHECK ADD  CONSTRAINT [FK__DBD__F_HW2__688874F9] FOREIGN KEY([F_HW2])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD__F_HW2__688874F9]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBD]'))
ALTER TABLE [dbo].[DBD] CHECK CONSTRAINT [FK__DBD__F_HW2__688874F9]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD2__F_HW1__697C9932]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBD2]'))
ALTER TABLE [dbo].[DBD2]  WITH CHECK ADD  CONSTRAINT [FK__DBD2__F_HW1__697C9932] FOREIGN KEY([F_HW1])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD2__F_HW1__697C9932]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBD2]'))
ALTER TABLE [dbo].[DBD2] CHECK CONSTRAINT [FK__DBD2__F_HW1__697C9932]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD2__F_HW2__6A70BD6B]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBD2]'))
ALTER TABLE [dbo].[DBD2]  WITH CHECK ADD  CONSTRAINT [FK__DBD2__F_HW2__6A70BD6B] FOREIGN KEY([F_HW2])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD2__F_HW2__6A70BD6B]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBD2]'))
ALTER TABLE [dbo].[DBD2] CHECK CONSTRAINT [FK__DBD2__F_HW2__6A70BD6B]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBDMX__F_SPBH__6B64E1A4]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBDMX]'))
ALTER TABLE [dbo].[DBDMX]  WITH CHECK ADD  CONSTRAINT [FK__DBDMX__F_SPBH__6B64E1A4] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBDMX__F_SPBH__6B64E1A4]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBDMX]'))
ALTER TABLE [dbo].[DBDMX] CHECK CONSTRAINT [FK__DBDMX__F_SPBH__6B64E1A4]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBDMX2__F_SPBH__6C5905DD]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBDMX2]'))
ALTER TABLE [dbo].[DBDMX2]  WITH CHECK ADD  CONSTRAINT [FK__DBDMX2__F_SPBH__6C5905DD] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBDMX2__F_SPBH__6C5905DD]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBDMX2]'))
ALTER TABLE [dbo].[DBDMX2] CHECK CONSTRAINT [FK__DBDMX2__F_SPBH__6C5905DD]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBZZ__F_HW__6D4D2A16]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBZZ]'))
ALTER TABLE [dbo].[DBZZ]  WITH CHECK ADD  CONSTRAINT [FK__DBZZ__F_HW__6D4D2A16] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBZZ__F_HW__6D4D2A16]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBZZ]'))
ALTER TABLE [dbo].[DBZZ] CHECK CONSTRAINT [FK__DBZZ__F_HW__6D4D2A16]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBZZ__F_SPBH__6E414E4F]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBZZ]'))
ALTER TABLE [dbo].[DBZZ]  WITH CHECK ADD  CONSTRAINT [FK__DBZZ__F_SPBH__6E414E4F] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBZZ__F_SPBH__6E414E4F]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBZZ]'))
ALTER TABLE [dbo].[DBZZ] CHECK CONSTRAINT [FK__DBZZ__F_SPBH__6E414E4F]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JGZZ__F_HW__6F357288]') AND parent_object_id = OBJECT_ID(N'[dbo].[JGZZ]'))
ALTER TABLE [dbo].[JGZZ]  WITH CHECK ADD  CONSTRAINT [FK__JGZZ__F_HW__6F357288] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JGZZ__F_HW__6F357288]') AND parent_object_id = OBJECT_ID(N'[dbo].[JGZZ]'))
ALTER TABLE [dbo].[JGZZ] CHECK CONSTRAINT [FK__JGZZ__F_HW__6F357288]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JGZZ__F_SPBH__702996C1]') AND parent_object_id = OBJECT_ID(N'[dbo].[JGZZ]'))
ALTER TABLE [dbo].[JGZZ]  WITH CHECK ADD  CONSTRAINT [FK__JGZZ__F_SPBH__702996C1] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JGZZ__F_SPBH__702996C1]') AND parent_object_id = OBJECT_ID(N'[dbo].[JGZZ]'))
ALTER TABLE [dbo].[JGZZ] CHECK CONSTRAINT [FK__JGZZ__F_SPBH__702996C1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD__F_BM__711DBAFA]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD]'))
ALTER TABLE [dbo].[JHD]  WITH CHECK ADD  CONSTRAINT [FK__JHD__F_BM__711DBAFA] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD__F_BM__711DBAFA]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD]'))
ALTER TABLE [dbo].[JHD] CHECK CONSTRAINT [FK__JHD__F_BM__711DBAFA]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD__F_HW__7211DF33]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD]'))
ALTER TABLE [dbo].[JHD]  WITH CHECK ADD  CONSTRAINT [FK__JHD__F_HW__7211DF33] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD__F_HW__7211DF33]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD]'))
ALTER TABLE [dbo].[JHD] CHECK CONSTRAINT [FK__JHD__F_HW__7211DF33]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD__F_VENDOR__7306036C]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD]'))
ALTER TABLE [dbo].[JHD]  WITH CHECK ADD  CONSTRAINT [FK__JHD__F_VENDOR__7306036C] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD__F_VENDOR__7306036C]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD]'))
ALTER TABLE [dbo].[JHD] CHECK CONSTRAINT [FK__JHD__F_VENDOR__7306036C]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD2__F_BM__73FA27A5]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD2]'))
ALTER TABLE [dbo].[JHD2]  WITH CHECK ADD  CONSTRAINT [FK__JHD2__F_BM__73FA27A5] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD2__F_BM__73FA27A5]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD2]'))
ALTER TABLE [dbo].[JHD2] CHECK CONSTRAINT [FK__JHD2__F_BM__73FA27A5]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD2__F_HW__74EE4BDE]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD2]'))
ALTER TABLE [dbo].[JHD2]  WITH CHECK ADD  CONSTRAINT [FK__JHD2__F_HW__74EE4BDE] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD2__F_HW__74EE4BDE]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD2]'))
ALTER TABLE [dbo].[JHD2] CHECK CONSTRAINT [FK__JHD2__F_HW__74EE4BDE]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD2__F_VENDOR__75E27017]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD2]'))
ALTER TABLE [dbo].[JHD2]  WITH CHECK ADD  CONSTRAINT [FK__JHD2__F_VENDOR__75E27017] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD2__F_VENDOR__75E27017]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD2]'))
ALTER TABLE [dbo].[JHD2] CHECK CONSTRAINT [FK__JHD2__F_VENDOR__75E27017]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHDMX__F_SPBH__76D69450]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHDMX]'))
ALTER TABLE [dbo].[JHDMX]  WITH CHECK ADD  CONSTRAINT [FK__JHDMX__F_SPBH__76D69450] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHDMX__F_SPBH__76D69450]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHDMX]'))
ALTER TABLE [dbo].[JHDMX] CHECK CONSTRAINT [FK__JHDMX__F_SPBH__76D69450]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHDMX2__F_SPBH__77CAB889]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHDMX2]'))
ALTER TABLE [dbo].[JHDMX2]  WITH CHECK ADD  CONSTRAINT [FK__JHDMX2__F_SPBH__77CAB889] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHDMX2__F_SPBH__77CAB889]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHDMX2]'))
ALTER TABLE [dbo].[JHDMX2] CHECK CONSTRAINT [FK__JHDMX2__F_SPBH__77CAB889]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHZZ__F_HW__78BEDCC2]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHZZ]'))
ALTER TABLE [dbo].[JHZZ]  WITH CHECK ADD  CONSTRAINT [FK__JHZZ__F_HW__78BEDCC2] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHZZ__F_HW__78BEDCC2]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHZZ]'))
ALTER TABLE [dbo].[JHZZ] CHECK CONSTRAINT [FK__JHZZ__F_HW__78BEDCC2]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHZZ__F_SPBH__79B300FB]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHZZ]'))
ALTER TABLE [dbo].[JHZZ]  WITH CHECK ADD  CONSTRAINT [FK__JHZZ__F_SPBH__79B300FB] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHZZ__F_SPBH__79B300FB]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHZZ]'))
ALTER TABLE [dbo].[JHZZ] CHECK CONSTRAINT [FK__JHZZ__F_SPBH__79B300FB]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCMXZ__F_HW__7AA72534]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCMXZ]'))
ALTER TABLE [dbo].[KCMXZ]  WITH CHECK ADD  CONSTRAINT [FK__KCMXZ__F_HW__7AA72534] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCMXZ__F_HW__7AA72534]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCMXZ]'))
ALTER TABLE [dbo].[KCMXZ] CHECK CONSTRAINT [FK__KCMXZ__F_HW__7AA72534]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCMXZ__F_SPBH__7B9B496D]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCMXZ]'))
ALTER TABLE [dbo].[KCMXZ]  WITH CHECK ADD  CONSTRAINT [FK__KCMXZ__F_SPBH__7B9B496D] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCMXZ__F_SPBH__7B9B496D]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCMXZ]'))
ALTER TABLE [dbo].[KCMXZ] CHECK CONSTRAINT [FK__KCMXZ__F_SPBH__7B9B496D]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCZZ__F_HW__7C8F6DA6]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCZZ]'))
ALTER TABLE [dbo].[KCZZ]  WITH CHECK ADD  CONSTRAINT [FK__KCZZ__F_HW__7C8F6DA6] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCZZ__F_HW__7C8F6DA6]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCZZ]'))
ALTER TABLE [dbo].[KCZZ] CHECK CONSTRAINT [FK__KCZZ__F_HW__7C8F6DA6]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCZZ__F_SPBH__7D8391DF]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCZZ]'))
ALTER TABLE [dbo].[KCZZ]  WITH CHECK ADD  CONSTRAINT [FK__KCZZ__F_SPBH__7D8391DF] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCZZ__F_SPBH__7D8391DF]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCZZ]'))
ALTER TABLE [dbo].[KCZZ] CHECK CONSTRAINT [FK__KCZZ__F_SPBH__7D8391DF]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OPERATOR_OPERATOR_GG43K34N343]') AND parent_object_id = OBJECT_ID(N'[dbo].[OPERATOR]'))
ALTER TABLE [dbo].[OPERATOR]  WITH CHECK ADD  CONSTRAINT [FK_OPERATOR_OPERATOR_GG43K34N343] FOREIGN KEY([F_DM])
REFERENCES [dbo].[YWY] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_OPERATOR_OPERATOR_GG43K34N343]') AND parent_object_id = OBJECT_ID(N'[dbo].[OPERATOR]'))
ALTER TABLE [dbo].[OPERATOR] CHECK CONSTRAINT [FK_OPERATOR_OPERATOR_GG43K34N343]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDD__F_BM__7E77B618]') AND parent_object_id = OBJECT_ID(N'[dbo].[QDD]'))
ALTER TABLE [dbo].[QDD]  WITH CHECK ADD  CONSTRAINT [FK__QDD__F_BM__7E77B618] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDD__F_BM__7E77B618]') AND parent_object_id = OBJECT_ID(N'[dbo].[QDD]'))
ALTER TABLE [dbo].[QDD] CHECK CONSTRAINT [FK__QDD__F_BM__7E77B618]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDD__F_HW__7F6BDA51]') AND parent_object_id = OBJECT_ID(N'[dbo].[QDD]'))
ALTER TABLE [dbo].[QDD]  WITH CHECK ADD  CONSTRAINT [FK__QDD__F_HW__7F6BDA51] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDD__F_HW__7F6BDA51]') AND parent_object_id = OBJECT_ID(N'[dbo].[QDD]'))
ALTER TABLE [dbo].[QDD] CHECK CONSTRAINT [FK__QDD__F_HW__7F6BDA51]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDD2__F_BM__005FFE8A]') AND parent_object_id = OBJECT_ID(N'[dbo].[QDD2]'))
ALTER TABLE [dbo].[QDD2]  WITH CHECK ADD  CONSTRAINT [FK__QDD2__F_BM__005FFE8A] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDD2__F_BM__005FFE8A]') AND parent_object_id = OBJECT_ID(N'[dbo].[QDD2]'))
ALTER TABLE [dbo].[QDD2] CHECK CONSTRAINT [FK__QDD2__F_BM__005FFE8A]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDD2__F_HW__015422C3]') AND parent_object_id = OBJECT_ID(N'[dbo].[QDD2]'))
ALTER TABLE [dbo].[QDD2]  WITH CHECK ADD  CONSTRAINT [FK__QDD2__F_HW__015422C3] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDD2__F_HW__015422C3]') AND parent_object_id = OBJECT_ID(N'[dbo].[QDD2]'))
ALTER TABLE [dbo].[QDD2] CHECK CONSTRAINT [FK__QDD2__F_HW__015422C3]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDDMX__F_SPBH__024846FC]') AND parent_object_id = OBJECT_ID(N'[dbo].[QDDMX]'))
ALTER TABLE [dbo].[QDDMX]  WITH CHECK ADD  CONSTRAINT [FK__QDDMX__F_SPBH__024846FC] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDDMX__F_SPBH__024846FC]') AND parent_object_id = OBJECT_ID(N'[dbo].[QDDMX]'))
ALTER TABLE [dbo].[QDDMX] CHECK CONSTRAINT [FK__QDDMX__F_SPBH__024846FC]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDDMX2__F_SPBH__033C6B35]') AND parent_object_id = OBJECT_ID(N'[dbo].[QDDMX2]'))
ALTER TABLE [dbo].[QDDMX2]  WITH CHECK ADD  CONSTRAINT [FK__QDDMX2__F_SPBH__033C6B35] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDDMX2__F_SPBH__033C6B35]') AND parent_object_id = OBJECT_ID(N'[dbo].[QDDMX2]'))
ALTER TABLE [dbo].[QDDMX2] CHECK CONSTRAINT [FK__QDDMX2__F_SPBH__033C6B35]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKD__F_HW__04308F6E]') AND parent_object_id = OBJECT_ID(N'[dbo].[RKD]'))
ALTER TABLE [dbo].[RKD]  WITH CHECK ADD  CONSTRAINT [FK__RKD__F_HW__04308F6E] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKD__F_HW__04308F6E]') AND parent_object_id = OBJECT_ID(N'[dbo].[RKD]'))
ALTER TABLE [dbo].[RKD] CHECK CONSTRAINT [FK__RKD__F_HW__04308F6E]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKD2__F_HW__0524B3A7]') AND parent_object_id = OBJECT_ID(N'[dbo].[RKD2]'))
ALTER TABLE [dbo].[RKD2]  WITH CHECK ADD  CONSTRAINT [FK__RKD2__F_HW__0524B3A7] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKD2__F_HW__0524B3A7]') AND parent_object_id = OBJECT_ID(N'[dbo].[RKD2]'))
ALTER TABLE [dbo].[RKD2] CHECK CONSTRAINT [FK__RKD2__F_HW__0524B3A7]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKDMX__F_SPBH__0618D7E0]') AND parent_object_id = OBJECT_ID(N'[dbo].[RKDMX]'))
ALTER TABLE [dbo].[RKDMX]  WITH CHECK ADD  CONSTRAINT [FK__RKDMX__F_SPBH__0618D7E0] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKDMX__F_SPBH__0618D7E0]') AND parent_object_id = OBJECT_ID(N'[dbo].[RKDMX]'))
ALTER TABLE [dbo].[RKDMX] CHECK CONSTRAINT [FK__RKDMX__F_SPBH__0618D7E0]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKDMX2__F_SPBH__070CFC19]') AND parent_object_id = OBJECT_ID(N'[dbo].[RKDMX2]'))
ALTER TABLE [dbo].[RKDMX2]  WITH CHECK ADD  CONSTRAINT [FK__RKDMX2__F_SPBH__070CFC19] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKDMX2__F_SPBH__070CFC19]') AND parent_object_id = OBJECT_ID(N'[dbo].[RKDMX2]'))
ALTER TABLE [dbo].[RKDMX2] CHECK CONSTRAINT [FK__RKDMX2__F_SPBH__070CFC19]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SPPC__F_HW__08012052]') AND parent_object_id = OBJECT_ID(N'[dbo].[SPPC]'))
ALTER TABLE [dbo].[SPPC]  WITH CHECK ADD  CONSTRAINT [FK__SPPC__F_HW__08012052] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SPPC__F_HW__08012052]') AND parent_object_id = OBJECT_ID(N'[dbo].[SPPC]'))
ALTER TABLE [dbo].[SPPC] CHECK CONSTRAINT [FK__SPPC__F_HW__08012052]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SPPC__F_SPBH__08F5448B]') AND parent_object_id = OBJECT_ID(N'[dbo].[SPPC]'))
ALTER TABLE [dbo].[SPPC]  WITH CHECK ADD  CONSTRAINT [FK__SPPC__F_SPBH__08F5448B] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SPPC__F_SPBH__08F5448B]') AND parent_object_id = OBJECT_ID(N'[dbo].[SPPC]'))
ALTER TABLE [dbo].[SPPC] CHECK CONSTRAINT [FK__SPPC__F_SPBH__08F5448B]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SYZZ__F_HW__09E968C4]') AND parent_object_id = OBJECT_ID(N'[dbo].[SYZZ]'))
ALTER TABLE [dbo].[SYZZ]  WITH CHECK ADD  CONSTRAINT [FK__SYZZ__F_HW__09E968C4] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SYZZ__F_HW__09E968C4]') AND parent_object_id = OBJECT_ID(N'[dbo].[SYZZ]'))
ALTER TABLE [dbo].[SYZZ] CHECK CONSTRAINT [FK__SYZZ__F_HW__09E968C4]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SYZZ__F_SPBH__0ADD8CFD]') AND parent_object_id = OBJECT_ID(N'[dbo].[SYZZ]'))
ALTER TABLE [dbo].[SYZZ]  WITH CHECK ADD  CONSTRAINT [FK__SYZZ__F_SPBH__0ADD8CFD] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SYZZ__F_SPBH__0ADD8CFD]') AND parent_object_id = OBJECT_ID(N'[dbo].[SYZZ]'))
ALTER TABLE [dbo].[SYZZ] CHECK CONSTRAINT [FK__SYZZ__F_SPBH__0ADD8CFD]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__TJDMX2__F_SPBH__0BD1B136]') AND parent_object_id = OBJECT_ID(N'[dbo].[TJDMX2]'))
ALTER TABLE [dbo].[TJDMX2]  WITH CHECK ADD  CONSTRAINT [FK__TJDMX2__F_SPBH__0BD1B136] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__TJDMX2__F_SPBH__0BD1B136]') AND parent_object_id = OBJECT_ID(N'[dbo].[TJDMX2]'))
ALTER TABLE [dbo].[TJDMX2] CHECK CONSTRAINT [FK__TJDMX2__F_SPBH__0BD1B136]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD__F_BM__0CC5D56F]') AND parent_object_id = OBJECT_ID(N'[dbo].[XHD]'))
ALTER TABLE [dbo].[XHD]  WITH CHECK ADD  CONSTRAINT [FK__XHD__F_BM__0CC5D56F] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD__F_BM__0CC5D56F]') AND parent_object_id = OBJECT_ID(N'[dbo].[XHD]'))
ALTER TABLE [dbo].[XHD] CHECK CONSTRAINT [FK__XHD__F_BM__0CC5D56F]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD__F_CUSTOM__0DB9F9A8]') AND parent_object_id = OBJECT_ID(N'[dbo].[XHD]'))
ALTER TABLE [dbo].[XHD]  WITH CHECK ADD  CONSTRAINT [FK__XHD__F_CUSTOM__0DB9F9A8] FOREIGN KEY([F_CUSTOM])
REFERENCES [dbo].[CUSTOM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD__F_CUSTOM__0DB9F9A8]') AND parent_object_id = OBJECT_ID(N'[dbo].[XHD]'))
ALTER TABLE [dbo].[XHD] CHECK CONSTRAINT [FK__XHD__F_CUSTOM__0DB9F9A8]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD__F_HW__0EAE1DE1]') AND parent_object_id = OBJECT_ID(N'[dbo].[XHD]'))
ALTER TABLE [dbo].[XHD]  WITH CHECK ADD  CONSTRAINT [FK__XHD__F_HW__0EAE1DE1] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD__F_HW__0EAE1DE1]') AND parent_object_id = OBJECT_ID(N'[dbo].[XHD]'))
ALTER TABLE [dbo].[XHD] CHECK CONSTRAINT [FK__XHD__F_HW__0EAE1DE1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD__F_YWY__0FA2421A]') AND parent_object_id = OBJECT_ID(N'[dbo].[XHD]'))
ALTER TABLE [dbo].[XHD]  WITH CHECK ADD  CONSTRAINT [FK__XHD__F_YWY__0FA2421A] FOREIGN KEY([F_YWY])
REFERENCES [dbo].[YWY] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD__F_YWY__0FA2421A]') AND parent_object_id = OBJECT_ID(N'[dbo].[XHD]'))
ALTER TABLE [dbo].[XHD] CHECK CONSTRAINT [FK__XHD__F_YWY__0FA2421A]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD2__F_BM__10966653]') AND parent_object_id = OBJECT_ID(N'[dbo].[XHD2]'))
ALTER TABLE [dbo].[XHD2]  WITH CHECK ADD  CONSTRAINT [FK__XHD2__F_BM__10966653] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD2__F_BM__10966653]') AND parent_object_id = OBJECT_ID(N'[dbo].[XHD2]'))
ALTER TABLE [dbo].[XHD2] CHECK CONSTRAINT [FK__XHD2__F_BM__10966653]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD2__F_CUSTOM__118A8A8C]') AND parent_object_id = OBJECT_ID(N'[dbo].[XHD2]'))
ALTER TABLE [dbo].[XHD2]  WITH CHECK ADD  CONSTRAINT [FK__XHD2__F_CUSTOM__118A8A8C] FOREIGN KEY([F_CUSTOM])
REFERENCES [dbo].[CUSTOM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD2__F_CUSTOM__118A8A8C]') AND parent_object_id = OBJECT_ID(N'[dbo].[XHD2]'))
ALTER TABLE [dbo].[XHD2] CHECK CONSTRAINT [FK__XHD2__F_CUSTOM__118A8A8C]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD2__F_HW__127EAEC5]') AND parent_object_id = OBJECT_ID(N'[dbo].[XHD2]'))
ALTER TABLE [dbo].[XHD2]  WITH CHECK ADD  CONSTRAINT [FK__XHD2__F_HW__127EAEC5] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD2__F_HW__127EAEC5]') AND parent_object_id = OBJECT_ID(N'[dbo].[XHD2]'))
ALTER TABLE [dbo].[XHD2] CHECK CONSTRAINT [FK__XHD2__F_HW__127EAEC5]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD2__F_YWY__1372D2FE]') AND parent_object_id = OBJECT_ID(N'[dbo].[XHD2]'))
ALTER TABLE [dbo].[XHD2]  WITH CHECK ADD  CONSTRAINT [FK__XHD2__F_YWY__1372D2FE] FOREIGN KEY([F_YWY])
REFERENCES [dbo].[YWY] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD2__F_YWY__1372D2FE]') AND parent_object_id = OBJECT_ID(N'[dbo].[XHD2]'))
ALTER TABLE [dbo].[XHD2] CHECK CONSTRAINT [FK__XHD2__F_YWY__1372D2FE]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHDMX__F_SPBH__1466F737]') AND parent_object_id = OBJECT_ID(N'[dbo].[XHDMX]'))
ALTER TABLE [dbo].[XHDMX]  WITH CHECK ADD  CONSTRAINT [FK__XHDMX__F_SPBH__1466F737] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHDMX__F_SPBH__1466F737]') AND parent_object_id = OBJECT_ID(N'[dbo].[XHDMX]'))
ALTER TABLE [dbo].[XHDMX] CHECK CONSTRAINT [FK__XHDMX__F_SPBH__1466F737]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHDMX2__F_SPBH__155B1B70]') AND parent_object_id = OBJECT_ID(N'[dbo].[XHDMX2]'))
ALTER TABLE [dbo].[XHDMX2]  WITH CHECK ADD  CONSTRAINT [FK__XHDMX2__F_SPBH__155B1B70] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHDMX2__F_SPBH__155B1B70]') AND parent_object_id = OBJECT_ID(N'[dbo].[XHDMX2]'))
ALTER TABLE [dbo].[XHDMX2] CHECK CONSTRAINT [FK__XHDMX2__F_SPBH__155B1B70]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__F_BM__164F3FA9]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSMXZ]'))
ALTER TABLE [dbo].[XSMXZ]  WITH CHECK ADD  CONSTRAINT [FK__XSMXZ__F_BM__164F3FA9] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__F_BM__164F3FA9]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSMXZ]'))
ALTER TABLE [dbo].[XSMXZ] CHECK CONSTRAINT [FK__XSMXZ__F_BM__164F3FA9]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__F_CUSTOM__174363E2]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSMXZ]'))
ALTER TABLE [dbo].[XSMXZ]  WITH CHECK ADD  CONSTRAINT [FK__XSMXZ__F_CUSTOM__174363E2] FOREIGN KEY([F_CUSTOM])
REFERENCES [dbo].[CUSTOM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__F_CUSTOM__174363E2]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSMXZ]'))
ALTER TABLE [dbo].[XSMXZ] CHECK CONSTRAINT [FK__XSMXZ__F_CUSTOM__174363E2]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__F_HW__1837881B]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSMXZ]'))
ALTER TABLE [dbo].[XSMXZ]  WITH CHECK ADD  CONSTRAINT [FK__XSMXZ__F_HW__1837881B] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__F_HW__1837881B]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSMXZ]'))
ALTER TABLE [dbo].[XSMXZ] CHECK CONSTRAINT [FK__XSMXZ__F_HW__1837881B]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__F_SPBH__192BAC54]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSMXZ]'))
ALTER TABLE [dbo].[XSMXZ]  WITH CHECK ADD  CONSTRAINT [FK__XSMXZ__F_SPBH__192BAC54] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__F_SPBH__192BAC54]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSMXZ]'))
ALTER TABLE [dbo].[XSMXZ] CHECK CONSTRAINT [FK__XSMXZ__F_SPBH__192BAC54]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__F_YWY__1A1FD08D]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSMXZ]'))
ALTER TABLE [dbo].[XSMXZ]  WITH CHECK ADD  CONSTRAINT [FK__XSMXZ__F_YWY__1A1FD08D] FOREIGN KEY([F_YWY])
REFERENCES [dbo].[YWY] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__F_YWY__1A1FD08D]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSMXZ]'))
ALTER TABLE [dbo].[XSMXZ] CHECK CONSTRAINT [FK__XSMXZ__F_YWY__1A1FD08D]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSZZ__F_HW__1B13F4C6]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSZZ]'))
ALTER TABLE [dbo].[XSZZ]  WITH CHECK ADD  CONSTRAINT [FK__XSZZ__F_HW__1B13F4C6] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSZZ__F_HW__1B13F4C6]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSZZ]'))
ALTER TABLE [dbo].[XSZZ] CHECK CONSTRAINT [FK__XSZZ__F_HW__1B13F4C6]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSZZ__F_SPBH__1C0818FF]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSZZ]'))
ALTER TABLE [dbo].[XSZZ]  WITH CHECK ADD  CONSTRAINT [FK__XSZZ__F_SPBH__1C0818FF] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSZZ__F_SPBH__1C0818FF]') AND parent_object_id = OBJECT_ID(N'[dbo].[XSZZ]'))
ALTER TABLE [dbo].[XSZZ] CHECK CONSTRAINT [FK__XSZZ__F_SPBH__1C0818FF]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFHXZ__F_BM__1CFC3D38]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFHXZ]'))
ALTER TABLE [dbo].[YFHXZ]  WITH CHECK ADD  CONSTRAINT [FK__YFHXZ__F_BM__1CFC3D38] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFHXZ__F_BM__1CFC3D38]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFHXZ]'))
ALTER TABLE [dbo].[YFHXZ] CHECK CONSTRAINT [FK__YFHXZ__F_BM__1CFC3D38]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFHXZ__F_VENDOR__1DF06171]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFHXZ]'))
ALTER TABLE [dbo].[YFHXZ]  WITH CHECK ADD  CONSTRAINT [FK__YFHXZ__F_VENDOR__1DF06171] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFHXZ__F_VENDOR__1DF06171]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFHXZ]'))
ALTER TABLE [dbo].[YFHXZ] CHECK CONSTRAINT [FK__YFHXZ__F_VENDOR__1DF06171]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFJSD2__F_BM__1EE485AA]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFJSD2]'))
ALTER TABLE [dbo].[YFJSD2]  WITH CHECK ADD  CONSTRAINT [FK__YFJSD2__F_BM__1EE485AA] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFJSD2__F_BM__1EE485AA]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFJSD2]'))
ALTER TABLE [dbo].[YFJSD2] CHECK CONSTRAINT [FK__YFJSD2__F_BM__1EE485AA]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFJSD2__F_VENDOR__1FD8A9E3]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFJSD2]'))
ALTER TABLE [dbo].[YFJSD2]  WITH CHECK ADD  CONSTRAINT [FK__YFJSD2__F_VENDOR__1FD8A9E3] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFJSD2__F_VENDOR__1FD8A9E3]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFJSD2]'))
ALTER TABLE [dbo].[YFJSD2] CHECK CONSTRAINT [FK__YFJSD2__F_VENDOR__1FD8A9E3]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZ__F_BM__20CCCE1C]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZ]'))
ALTER TABLE [dbo].[YFMXZ]  WITH CHECK ADD  CONSTRAINT [FK__YFMXZ__F_BM__20CCCE1C] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZ__F_BM__20CCCE1C]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZ]'))
ALTER TABLE [dbo].[YFMXZ] CHECK CONSTRAINT [FK__YFMXZ__F_BM__20CCCE1C]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZ__F_VENDOR__21C0F255]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZ]'))
ALTER TABLE [dbo].[YFMXZ]  WITH CHECK ADD  CONSTRAINT [FK__YFMXZ__F_VENDOR__21C0F255] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZ__F_VENDOR__21C0F255]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZ]'))
ALTER TABLE [dbo].[YFMXZ] CHECK CONSTRAINT [FK__YFMXZ__F_VENDOR__21C0F255]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFZZ__F_BM__22B5168E]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFZZ]'))
ALTER TABLE [dbo].[YFZZ]  WITH CHECK ADD  CONSTRAINT [FK__YFZZ__F_BM__22B5168E] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFZZ__F_BM__22B5168E]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFZZ]'))
ALTER TABLE [dbo].[YFZZ] CHECK CONSTRAINT [FK__YFZZ__F_BM__22B5168E]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFZZ__F_DM__23A93AC7]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFZZ]'))
ALTER TABLE [dbo].[YFZZ]  WITH CHECK ADD  CONSTRAINT [FK__YFZZ__F_DM__23A93AC7] FOREIGN KEY([F_DM])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFZZ__F_DM__23A93AC7]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFZZ]'))
ALTER TABLE [dbo].[YFZZ] CHECK CONSTRAINT [FK__YFZZ__F_DM__23A93AC7]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSHXZ__F_BM__249D5F00]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSHXZ]'))
ALTER TABLE [dbo].[YSHXZ]  WITH CHECK ADD  CONSTRAINT [FK__YSHXZ__F_BM__249D5F00] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSHXZ__F_BM__249D5F00]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSHXZ]'))
ALTER TABLE [dbo].[YSHXZ] CHECK CONSTRAINT [FK__YSHXZ__F_BM__249D5F00]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSHXZ__F_CUSTOM__25918339]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSHXZ]'))
ALTER TABLE [dbo].[YSHXZ]  WITH CHECK ADD  CONSTRAINT [FK__YSHXZ__F_CUSTOM__25918339] FOREIGN KEY([F_CUSTOM])
REFERENCES [dbo].[CUSTOM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSHXZ__F_CUSTOM__25918339]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSHXZ]'))
ALTER TABLE [dbo].[YSHXZ] CHECK CONSTRAINT [FK__YSHXZ__F_CUSTOM__25918339]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSJSD2__F_BM__2685A772]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSJSD2]'))
ALTER TABLE [dbo].[YSJSD2]  WITH CHECK ADD  CONSTRAINT [FK__YSJSD2__F_BM__2685A772] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSJSD2__F_BM__2685A772]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSJSD2]'))
ALTER TABLE [dbo].[YSJSD2] CHECK CONSTRAINT [FK__YSJSD2__F_BM__2685A772]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSJSD2__F_CUSTOM__2779CBAB]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSJSD2]'))
ALTER TABLE [dbo].[YSJSD2]  WITH CHECK ADD  CONSTRAINT [FK__YSJSD2__F_CUSTOM__2779CBAB] FOREIGN KEY([F_CUSTOM])
REFERENCES [dbo].[CUSTOM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSJSD2__F_CUSTOM__2779CBAB]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSJSD2]'))
ALTER TABLE [dbo].[YSJSD2] CHECK CONSTRAINT [FK__YSJSD2__F_CUSTOM__2779CBAB]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSMXZ__F_BM__286DEFE4]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSMXZ]'))
ALTER TABLE [dbo].[YSMXZ]  WITH CHECK ADD  CONSTRAINT [FK__YSMXZ__F_BM__286DEFE4] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSMXZ__F_BM__286DEFE4]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSMXZ]'))
ALTER TABLE [dbo].[YSMXZ] CHECK CONSTRAINT [FK__YSMXZ__F_BM__286DEFE4]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSMXZ__F_CUSTOM__2962141D]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSMXZ]'))
ALTER TABLE [dbo].[YSMXZ]  WITH CHECK ADD  CONSTRAINT [FK__YSMXZ__F_CUSTOM__2962141D] FOREIGN KEY([F_CUSTOM])
REFERENCES [dbo].[CUSTOM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSMXZ__F_CUSTOM__2962141D]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSMXZ]'))
ALTER TABLE [dbo].[YSMXZ] CHECK CONSTRAINT [FK__YSMXZ__F_CUSTOM__2962141D]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSZZ__F_BM__2A563856]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSZZ]'))
ALTER TABLE [dbo].[YSZZ]  WITH CHECK ADD  CONSTRAINT [FK__YSZZ__F_BM__2A563856] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSZZ__F_BM__2A563856]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSZZ]'))
ALTER TABLE [dbo].[YSZZ] CHECK CONSTRAINT [FK__YSZZ__F_BM__2A563856]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSZZ__F_DM__2B4A5C8F]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSZZ]'))
ALTER TABLE [dbo].[YSZZ]  WITH CHECK ADD  CONSTRAINT [FK__YSZZ__F_DM__2B4A5C8F] FOREIGN KEY([F_DM])
REFERENCES [dbo].[CUSTOM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSZZ__F_DM__2B4A5C8F]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSZZ]'))
ALTER TABLE [dbo].[YSZZ] CHECK CONSTRAINT [FK__YSZZ__F_DM__2B4A5C8F]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YWY__F_BM__2C3E80C8]') AND parent_object_id = OBJECT_ID(N'[dbo].[YWY]'))
ALTER TABLE [dbo].[YWY]  WITH CHECK ADD  CONSTRAINT [FK__YWY__F_BM__2C3E80C8] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YWY__F_BM__2C3E80C8]') AND parent_object_id = OBJECT_ID(N'[dbo].[YWY]'))
ALTER TABLE [dbo].[YWY] CHECK CONSTRAINT [FK__YWY__F_BM__2C3E80C8]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD__F_HW1__2D32A501]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZD]'))
ALTER TABLE [dbo].[ZZD]  WITH CHECK ADD  CONSTRAINT [FK__ZZD__F_HW1__2D32A501] FOREIGN KEY([F_HW1])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD__F_HW1__2D32A501]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZD]'))
ALTER TABLE [dbo].[ZZD] CHECK CONSTRAINT [FK__ZZD__F_HW1__2D32A501]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD__F_HW2__2E26C93A]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZD]'))
ALTER TABLE [dbo].[ZZD]  WITH CHECK ADD  CONSTRAINT [FK__ZZD__F_HW2__2E26C93A] FOREIGN KEY([F_HW2])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD__F_HW2__2E26C93A]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZD]'))
ALTER TABLE [dbo].[ZZD] CHECK CONSTRAINT [FK__ZZD__F_HW2__2E26C93A]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD__F_SPBH__2F1AED73]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZD]'))
ALTER TABLE [dbo].[ZZD]  WITH CHECK ADD  CONSTRAINT [FK__ZZD__F_SPBH__2F1AED73] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD__F_SPBH__2F1AED73]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZD]'))
ALTER TABLE [dbo].[ZZD] CHECK CONSTRAINT [FK__ZZD__F_SPBH__2F1AED73]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD2__F_BM__300F11AC]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZD2]'))
ALTER TABLE [dbo].[ZZD2]  WITH CHECK ADD  CONSTRAINT [FK__ZZD2__F_BM__300F11AC] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD2__F_BM__300F11AC]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZD2]'))
ALTER TABLE [dbo].[ZZD2] CHECK CONSTRAINT [FK__ZZD2__F_BM__300F11AC]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD2__F_HW1__310335E5]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZD2]'))
ALTER TABLE [dbo].[ZZD2]  WITH CHECK ADD  CONSTRAINT [FK__ZZD2__F_HW1__310335E5] FOREIGN KEY([F_HW1])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD2__F_HW1__310335E5]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZD2]'))
ALTER TABLE [dbo].[ZZD2] CHECK CONSTRAINT [FK__ZZD2__F_HW1__310335E5]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD2__F_HW2__31F75A1E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZD2]'))
ALTER TABLE [dbo].[ZZD2]  WITH CHECK ADD  CONSTRAINT [FK__ZZD2__F_HW2__31F75A1E] FOREIGN KEY([F_HW2])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD2__F_HW2__31F75A1E]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZD2]'))
ALTER TABLE [dbo].[ZZD2] CHECK CONSTRAINT [FK__ZZD2__F_HW2__31F75A1E]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD2__F_SPBH__32EB7E57]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZD2]'))
ALTER TABLE [dbo].[ZZD2]  WITH CHECK ADD  CONSTRAINT [FK__ZZD2__F_SPBH__32EB7E57] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD2__F_SPBH__32EB7E57]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZD2]'))
ALTER TABLE [dbo].[ZZD2] CHECK CONSTRAINT [FK__ZZD2__F_SPBH__32EB7E57]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ZZMB_ZZMB_BSADF35346]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZMB]'))
ALTER TABLE [dbo].[ZZMB]  WITH CHECK ADD  CONSTRAINT [FK_ZZMB_ZZMB_BSADF35346] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ZZMB_ZZMB_BSADF35346]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZMB]'))
ALTER TABLE [dbo].[ZZMB] CHECK CONSTRAINT [FK_ZZMB_ZZMB_BSADF35346]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZMBMX__F_SPBH1__33DFA290]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZMBMX]'))
ALTER TABLE [dbo].[ZZMBMX]  WITH CHECK ADD  CONSTRAINT [FK__ZZMBMX__F_SPBH1__33DFA290] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZMBMX__F_SPBH1__33DFA290]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZMBMX]'))
ALTER TABLE [dbo].[ZZMBMX] CHECK CONSTRAINT [FK__ZZMBMX__F_SPBH1__33DFA290]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZMBMX__F_SPBH2__34D3C6C9]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZMBMX]'))
ALTER TABLE [dbo].[ZZMBMX]  WITH CHECK ADD  CONSTRAINT [FK__ZZMBMX__F_SPBH2__34D3C6C9] FOREIGN KEY([F_SPBH2])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZMBMX__F_SPBH2__34D3C6C9]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZMBMX]'))
ALTER TABLE [dbo].[ZZMBMX] CHECK CONSTRAINT [FK__ZZMBMX__F_SPBH2__34D3C6C9]
GO
