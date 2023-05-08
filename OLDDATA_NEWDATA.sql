/*    ==脚本参数==

    源服务器版本 : SQL Server 2012 (11.0.3128)
    源数据库引擎版本 : Microsoft SQL Server Standard Edition
    源数据库引擎类型 : 独立的 SQL Server

    目标服务器版本 : SQL Server 2012
    目标数据库引擎版本 : Microsoft SQL Server Standard Edition
    目标数据库引擎类型 : 独立的 SQL Server
*/

USE [DATA]
GO
/****** 对像:  表   描述： [dbo].[AINPUTSOURCE]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述：报表变量 [dbo].[BBVAR]       脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述：部门 [dbo].[BM]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BM](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DE] [float] NULL, 
 CONSTRAINT [PK__BM__2C6EEFB6F2B3725D] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[BM3]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[CBPOWER]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[CGD]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CGD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CGD](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CGD__3C196CCDC1E8B5FD] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[CGD2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CGD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CGD2](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CGD2__1BF30A66] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[CGD3]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CGD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CGD3](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CGD3__3C196CCDC116F2E5] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[CGDMX]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CGDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CGDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_SL2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
 CONSTRAINT [PK__CGDMX__FEDF803E6AB25D13] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[CGDMX2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CGDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CGDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_SL2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
 CONSTRAINT [PK__CGDMX2__FEDF803EA7266E9F] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[CGDMX3]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CGDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CGDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_SL2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
 CONSTRAINT [PK__CGDMX3__FEDF803E8A6FF50B] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[CKD]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKD](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2] [float] NULL,
 CONSTRAINT [PK__CKD__3C196CCD86783AF5] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[CKD2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKD2](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2] [float] NULL,
 CONSTRAINT [PK__CKD2__3C196CCD657740F9] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[CKD3]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKD3](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2] [float] NULL,
 CONSTRAINT [PK__CKD3__3C196CCD70D0C0D3] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[CKDMX]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_SL2] [float] NULL,
 CONSTRAINT [PK__CKDMX__FEDF803E8BF9EFFA] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[CKDMX2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_SL2] [float] NULL,
 CONSTRAINT [PK__CKDMX2__FEDF803E3DFE649B] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[CKDMX3]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_SL2] [float] NULL,
 CONSTRAINT [PK__CKDMX3__FEDF803EB87067FA] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[COMBBVAR]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COMBBVAR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COMBBVAR](
	[F_VARNAME] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_CAPTION] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TEXT] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TYPE] [int] NOT NULL,
	[F_INPUT] [int] NOT NULL,
	[F_ASS1] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ASS2] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ASS3] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DROPSOURCE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DROPTABLENAME] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DROPFIELD1] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DROPFIELD2] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TEXTSQL] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TEXTSOURCE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PREFIX] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_POSTFIX] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__COMBBVAR__0F3877412D95C43D] PRIMARY KEY CLUSTERED 
(
	[F_VARNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[COMFIELD]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COMFIELD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COMFIELD](
	[F_NAME] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX] [int] NULL,
	[F_FIELDNAME] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DISPLAYLABEL] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_WIDTH] [int] NULL,
	[F_FORMAT] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TYPE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[COMXZ]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COMXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COMXZ](
	[F_NAME] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SQL] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_RESULT1] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_RESULT2] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_RESULT3] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TITLE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MEMO] [varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PREFIX] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_POSTFIX] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FORMWIDTH] [int] NOT NULL,
	[F_FORMHEIGHT] [int] NOT NULL,
 CONSTRAINT [PK__COMXZ__4A3EA670EDC76679] PRIMARY KEY CLUSTERED 
(
	[F_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[CUS_SP]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUS_SP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUS_SP](
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MINDJ] [float] NULL,
	[F_MAXDJ] [float] NULL,
	[F_RECENTDJ] [float] NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NULL,
 CONSTRAINT [PK__CUS_SP__41B72FC00A81E799] PRIMARY KEY CLUSTERED 
(
	[F_CUSTOM] ASC,
	[F_SPBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[CUSTOM]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOM](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
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
/****** 对像:  表   描述： [dbo].[CUSTOM3]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[CUSTOMDJ]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMDJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMDJ](
	[F_DJLX] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX] [int] NOT NULL,
	[F_FIELD] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DISPLAYLABEL] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CAPTION] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_WIDTH] [int] NULL,
	[F_READONLY] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VISIBLE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PANEL] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CUSTOMDJ__AD8EBB6AEA6B71F6] PRIMARY KEY CLUSTERED 
(
	[F_DJLX] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[CUSTOMGRADE]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMGRADE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMGRADE](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_KL] [int] NULL,
	[F_PRICENUMBER] [int] NULL,
 CONSTRAINT [PK__CUSTOMGR__2C6EEFB6A8D3FD26] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[CUSTOMGROUP]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMGROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMGROUP](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK__CUSTOMGR__2C6EEFB66D34FD53] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[CUSTOMLB]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMLB](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_JC] [int] NULL,
 CONSTRAINT [PK__CUSTOMLB__2C6EEFB634B4ABAD] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[DBD]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBD](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW1] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW2] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
 CONSTRAINT [PK__DBD__3C196CCD268462CC] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[DBD2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBD2](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW1] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW2] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
 CONSTRAINT [PK__DBD2__3C196CCDC3B43D8B] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[DBD3]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBD3](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW1] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW2] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
 CONSTRAINT [PK__DBD3__3C196CCD7DE54C6C] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[DBDMX]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLJC] [float] NULL,
	[F_DJ] [float] NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_SL2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
 CONSTRAINT [PK__DBDMX__FEDF803E160C2921] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[DBDMX2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLJC] [float] NULL,
	[F_DJ] [float] NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_SL2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
 CONSTRAINT [PK__DBDMX2__FEDF803E69934CFC] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[DBDMX3]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLJC] [float] NULL,
	[F_DJ] [float] NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_SL2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
 CONSTRAINT [PK__DBDMX3__FEDF803E459A5B18] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[DBZZ]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBZZ](
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__DBZZ__8278C62447597AC9] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[DELETED]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DELETED]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DELETED](
	[F_DATE1] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE2] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PZH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DELETED] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[DHD]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DHD](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_NEWSP] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DHD__3C196CCD210AEB70] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[DHD2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DHD2](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_NEWSP] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DHD2__3C196CCD5AC3D741] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[DHD3]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DHD3](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_NEWSP] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DHD3__3C196CCD1B5B0FD9] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[DHDMX]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DHDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_KL] [int] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_CB] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_ZF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DWCB] [float] NULL,
	[F_RATE] [float] NULL,
	[F_SL2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
 CONSTRAINT [PK__DHDMX__FEDF803EA86C6E29] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[DHDMX2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DHDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_KL] [int] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_CB] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_ZF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DWCB] [float] NULL,
	[F_RATE] [float] NULL,
	[F_SL2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
 CONSTRAINT [PK__DHDMX2__FEDF803E04968FB1] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[DHDMX3]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DHDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_KL] [int] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_CB] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_ZF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DWCB] [float] NULL,
	[F_RATE] [float] NULL,
	[F_SL2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
 CONSTRAINT [PK__DHDMX3__FEDF803E2231658E] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[DJH]     脚本     时间： 2023/5/8 15:00:34 ******/
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
	[F_NEWSP] [int] NULL,
	[F_ENEMY] [int] NULL,
	[F_PDD] [int] NULL,
	[F_SP] [int] NULL
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[DROPSOURCE]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DROPSOURCE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DROPSOURCE](
	[F_NAME] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TABLENAME] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_FIELD1] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_FIELD2] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FIELD3] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BBBH] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DROPSOUR__4A3EA670B243C50B] PRIMARY KEY CLUSTERED 
(
	[F_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[ENEMYXX]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ENEMYXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ENEMYXX](
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ2] [float] NULL,
	[F_CS] [int] NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ENEMY] [varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ0] [float] NULL
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[ENV]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ENV]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ENV](
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATA] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__ENV__2C6E30FAD08C8730] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[EVENT]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EVENT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EVENT](
	[F_DJLX] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX] [int] NOT NULL,
	[F_CONDITION] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TYPE] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HINT] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__EVENT__AD8EBB6AAAB39E55] PRIMARY KEY CLUSTERED 
(
	[F_DJLX] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[FJXX]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FJXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FJXX](
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_XX] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BH] [int] NOT NULL,
 CONSTRAINT [PK__FJXX__3278C9DAE0A822B9] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[FPCOL]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FPCOL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FPCOL](
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX] [int] NOT NULL,
	[F_COLCAPTION] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_X] [int] NULL,
	[F_Y] [int] NULL,
	[F_ALIGNMENT] [int] NOT NULL,
 CONSTRAINT [PK__FPCOL__E06014D92C66C5F7] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[FPITEM]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FPITEM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FPITEM](
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_ITEMBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_FONT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_X] [int] NULL,
	[F_Y] [int] NULL,
	[F_VISIBLE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_INDEX] [int] NULL,
 CONSTRAINT [PK__FPITEM__075A061172ED827A] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC,
	[F_ITEMBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[FPMODEL]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FPMODEL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FPMODEL](
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LEFT] [int] NULL,
	[F_TOP] [int] NULL,
	[F_BBFONT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ROWS] [int] NULL,
	[F_PAPERSIZE] [int] NULL,
	[F_PAPERWIDTH] [int] NULL,
	[F_PAPERLENGTH] [int] NULL,
	[F_ORIENT] [int] NULL,
	[F_COLS] [int] NULL,
	[F_COLX] [int] NULL,
	[F_COLY] [int] NULL,
	[F_ROWHEIGHT] [int] NULL,
 CONSTRAINT [PK__FPMODEL__2C6E30FA67B5DCCB] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[HW]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HW](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_LOCAL] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__HW__2C6EEFB6BCBA6E7A] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[HW3]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HW3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HW3](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__HW3__2C6EEFB64563AE0C] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[JGZZ]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JGZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JGZZ](
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__JGZZ__8278C62450E68724] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[JHBB]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHBB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHBB](
	[F_CAPTION] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SP] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TOP] [int] NULL,
	[F_LEFT] [int] NULL,
	[F_ROWS] [int] NULL,
	[F_SIZE] [int] NULL,
	[F_LENGTH] [int] NULL,
	[F_WIDTH] [int] NULL,
	[F_ORIENT] [int] NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPLB] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [smallint] NULL,
	[F_TITLEFONT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BBFONT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_COLNUMBER] [int] NULL,
	[F_COLCAPTION] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_COLWIDTH] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JHBB__2C6E30FA6FB2FE0B] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[JHD]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHD](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_FPLX] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JHD__3C196CCDA72E215D] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[JHD2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHD2](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_FPLX] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JHD2__3C196CCDA18B58C4] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[JHD3]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHD3](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_FPLX] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JHD3__3C196CCD816E6836] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[JHDMX]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_SL2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_HSDJ] [float] NULL,
	[F_KL] [int] NULL,
 CONSTRAINT [PK__JHDMX__FEDF803E93EA72C7] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[JHDMX2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_SL2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_HSDJ] [float] NULL,
	[F_KL] [int] NULL,
 CONSTRAINT [PK__JHDMX2__FEDF803E8565DC92] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[JHDMX3]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_SL2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_HSDJ] [float] NULL,
	[F_KL] [int] NULL,
 CONSTRAINT [PK__JHDMX3__FEDF803E8709D60E] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[JHZZ]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHZZ](
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__JHZZ__8278C6241EFBC279] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[JSFS]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JSFS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JSFS](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_JC] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JSFS__2C6EEFB6A9BCDAAE] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[JXCBB1]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JXCBB1]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JXCBB1](
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_ROWS] [int] NOT NULL,
	[F_COLS] [int] NOT NULL,
	[F_IFBM] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFYWY] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFHW] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPFW] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPJB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFDATE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFKJQJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DESIGN] [image] NULL,
	[F_IFSP] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFCUSTOM] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFVENDOR] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPSX1] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPSX2] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPSX3] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPSX4] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPSX5] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFCUSTOMGROUP] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SYDW] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SYSM] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JXCBB1__2C6E30FA71078F30] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[JXCBB2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JXCBB2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JXCBB2](
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SQL] [image] NULL,
	[F_COLS] [int] NULL,
	[F_HEADERS] [int] NULL,
	[F_IFBM] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFYWY] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFHW] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPFW] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSP] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFDATE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPJB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFKJQJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SORTCOL] [int] NULL,
	[F_IFCUSTOM] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFVENDOR] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPSX1] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPSX2] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPSX3] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPSX4] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSPSX5] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TITLE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TOP] [int] NULL,
	[F_LEFT] [int] NULL,
	[F_ROWS] [int] NULL,
	[F_SIZE] [int] NULL,
	[F_LENGTH] [int] NULL,
	[F_WIDTH] [int] NULL,
	[F_ORIENT] [int] NULL,
	[F_TITLEFONT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BBFONT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ROWSPACE] [int] NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFCUSTOMGROUP] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SYDW] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SYSM] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFPAGESUM] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFADDBLANK] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BLANKCHAR] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HCWIDTH] [int] NULL,
	[F_HJOPTION] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_AUTOEXPAND] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_EXPANDSQL] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_EXPANDLIST] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_EXPANDCAPTION] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_AUTODYPARAM] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JXCBB2__2C6E30FAAD720EED] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[JXCBBCOLS]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JXCBBCOLS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JXCBBCOLS](
	[F_BBBH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX] [int] NOT NULL,
	[F_NAME] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FIELDINDEX] [int] NULL,
	[F_ALIGNMENT] [int] NULL,
	[F_TYPE] [int] NULL,
	[F_DECIMALS] [int] NULL,
	[F_TSEPARATOR] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_WIDTH] [int] NULL,
	[F_PRINTWIDTH] [int] NULL,
	[F_FIELDNAME] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VISIBLE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFHJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_STYLE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFKEY] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFEXPAND] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFEXPANDED] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_EXPANDFIELD] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_KEYVALUE] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SUM] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_EXPRESS] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JXCBBCOL__EB652D5B74D9F0F2] PRIMARY KEY CLUSTERED 
(
	[F_BBBH] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[JXCBBDIC]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JXCBBDIC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JXCBBDIC](
	[F_FIELD] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_CAPTION] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JXCBBDIC__233B21D191DBF989] PRIMARY KEY CLUSTERED 
(
	[F_FIELD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[JXCBBHEADERS]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JXCBBHEADERS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JXCBBHEADERS](
	[F_BBBH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX] [int] NOT NULL,
	[F_NAME] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_STARTCOL] [int] NOT NULL,
	[F_ENDCOL] [int] NOT NULL,
 CONSTRAINT [PK__JXCBBHEA__EB652D5B7E6A491F] PRIMARY KEY CLUSTERED 
(
	[F_BBBH] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[JXCBBPAGEFOOTER]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JXCBBPAGEFOOTER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JXCBBPAGEFOOTER](
	[F_BBBH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX] [int] NOT NULL,
	[F_LEFT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CENTER] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_RIGHT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JXCBBPAG__EB652D5BF0973CC7] PRIMARY KEY CLUSTERED 
(
	[F_BBBH] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[JXCBBPAGEHEADER]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JXCBBPAGEHEADER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JXCBBPAGEHEADER](
	[F_BBBH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX] [int] NOT NULL,
	[F_LEFT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CENTER] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_RIGHT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JXCBBPAG__EB652D5B755F0674] PRIMARY KEY CLUSTERED 
(
	[F_BBBH] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[JXCMENU]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JXCMENU]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JXCMENU](
	[F_ANAME] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_NAME] [int] NOT NULL,
	[F_JC] [int] NOT NULL,
	[F_CAPTION] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BBLX] [varchar](1) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BBBH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_JB] [int] NOT NULL,
	[F_FIXED] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JXCMENU__018FC2EAC12E7EC7] PRIMARY KEY CLUSTERED 
(
	[F_ANAME] ASC,
	[F_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[KCMXZ]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KCMXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KCMXZ](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLS] [float] NULL,
	[F_JES] [float] NULL,
	[F_SLF] [float] NULL,
	[F_JEF] [float] NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLX] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HC] [int] NULL,
	[F_CX] [int] NULL
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[KCYE]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KCYE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KCYE](
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SLYE] [float] NULL,
 CONSTRAINT [PK__KCYE__8278C624AE9D94B2] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[KCZZ]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KCZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KCZZ](
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__KCZZ__8278C6246EC1621F] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[KJQJ]     脚本     时间： 2023/5/8 15:00:34 ******/
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
 CONSTRAINT [PK__KJQJ__2C6D7DE5976FADCE] PRIMARY KEY CLUSTERED 
(
	[F_YF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[LSH]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[OPERATOR]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OPERATOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OPERATOR](
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_NAME] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_PASSWORD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZN] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_RED] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__OPERATOR__2C6E30FA9F44ACEE] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[PAD]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PAD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PAD](
	[F_DM] [int] NOT NULL,
	[F_TEXT] [image] NULL,
 CONSTRAINT [PK__PAD__2C6EEFB6B925CA38] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[PDD]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PDD](
	[F_DJH] [int] NOT NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PDD__3C196CCD2B963326] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[PDD2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PDD2](
	[F_DJH] [int] NOT NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PDD2__3C196CCD7D0CB674] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[PDD3]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PDD3](
	[F_DJH] [int] NOT NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PDD3__3C196CCDD68B33EC] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[PDDMX]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PDDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PC] [int] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLYE] [float] NULL,
	[F_PDSL] [float] NULL,
	[F_PYSL] [float] NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ2] [float] NULL,
 CONSTRAINT [PK__PDDMX__FEDF803E1BC439DA] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[PDDMX2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PDDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PC] [int] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLYE] [float] NULL,
	[F_PDSL] [float] NULL,
	[F_PYSL] [float] NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ2] [float] NULL,
 CONSTRAINT [PK__PDDMX2__FEDF803EE915183E] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[PDDMX3]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PDDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PC] [int] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLYE] [float] NULL,
	[F_PDSL] [float] NULL,
	[F_PYSL] [float] NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ2] [float] NULL,
 CONSTRAINT [PK__PDDMX3__FEDF803E28EFCFEA] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[POWER]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[POWER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[POWER](
	[F_CZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_ZT] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_QX] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GN] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SY] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DY] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[POWERITEM]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[POWERITEM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[POWERITEM](
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_NAME] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CAPTION] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CLASSNAME] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[PRINTCOLHEADER]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRINTCOLHEADER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRINTCOLHEADER](
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX] [int] NOT NULL,
	[F_CAPTION] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_STARTCOL] [int] NULL,
	[F_ENDCOL] [int] NULL,
	[F_FONT] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ALIGNMENT] [int] NULL,
 CONSTRAINT [PK__PRINTCOL__E06014D92B2B2302] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[PRINTFIELD]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRINTFIELD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRINTFIELD](
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX] [int] NOT NULL,
	[F_FIELDNAME] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_FIELDLABEL] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_FIELDCAPTION] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_FIELDWIDTH] [int] NULL,
	[F_FONT] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CAPTIONFONT] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ALIGNMENT] [int] NULL,
	[F_FORMAT] [int] NULL,
	[F_FIELDTYPE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DECIMAL] [int] NULL,
	[F_SEPERATOR] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_WORDWARP] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BLANK0] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VISIBLE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PRINTFIE__E06014D92AD87698] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[PRINTMACRO]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRINTMACRO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRINTMACRO](
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_NAME] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_CAPTION] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK__PRINTMAC__38CDDA9D23DC7299] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC,
	[F_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[PRINTPAGEFOOTER]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRINTPAGEFOOTER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRINTPAGEFOOTER](
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX] [int] NOT NULL,
	[F_STRLEFT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FONTLEFT] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ALEFT] [int] NULL,
	[F_STRCENTER] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FONTCENTER] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ACENTER] [int] NULL,
	[F_STRRIGHT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FONTRIGHT] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ARIGHT] [int] NULL,
	[F_ROWSPACE] [float] NULL,
	[F_OLEFT] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_OCENTER] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ORIGHT] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TITLEHEIGHT] [int] NULL,
 CONSTRAINT [PK__PRINTPAG__E06014D98D3963A5] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[PRINTPAGEHEADER]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRINTPAGEHEADER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRINTPAGEHEADER](
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX] [int] NOT NULL,
	[F_STRLEFT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FONTLEFT] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ALEFT] [int] NULL,
	[F_STRCENTER] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FONTCENTER] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ACENTER] [int] NULL,
	[F_STRRIGHT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FONTRIGHT] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ARIGHT] [int] NULL,
	[F_ROWSPACE] [float] NULL,
	[F_OLEFT] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_OCENTER] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ORIGHT] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PRINTPAG__E06014D9F3DC9179] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[PRINTPARAM]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRINTPARAM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRINTPARAM](
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TITLE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TOP] [int] NULL,
	[F_LEFT] [int] NULL,
	[F_PAPERSIZE] [int] NULL,
	[F_PAPERWIDTH] [int] NULL,
	[F_PAPERLENGTH] [int] NULL,
	[F_ORIENT] [int] NULL,
	[F_ROWS] [int] NULL,
	[F_TITLEFONT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BBFONT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_COLNUMBER] [int] NULL,
	[F_COLCAPTION] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_COLWIDTH] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PRINTPAR__2C6E30FA69F968CA] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[PRINTPARAME]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRINTPARAME]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PRINTPARAME](
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DEFAULTFONT] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TITLE] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TITLEVISIBLE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TITLEHEIGHT] [float] NULL,
	[F_TITLEFONT] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PAPERSIZE] [int] NULL,
	[F_ORIENT] [int] NULL,
	[F_PAPERWIDTH] [int] NULL,
	[F_PAPERLENGTH] [int] NULL,
	[F_PAPERLEFT] [int] NULL,
	[F_PAPERTOP] [int] NULL,
	[F_PRINTQUALITY] [int] NULL,
	[F_FIXROW] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MAXROW] [int] NULL,
	[F_LASTROW] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ROWHEIGHT] [float] NULL,
	[F_HEADERWIDTH1] [float] NULL,
	[F_HEADERWIDTH2] [float] NULL,
	[F_HEADERWIDTH3] [float] NULL,
	[F_FOOTERWIDTH1] [float] NULL,
	[F_FOOTERWIDTH2] [float] NULL,
	[F_FOOTERWIDTH3] [float] NULL,
	[F_CAPTIONHEIGHT] [float] NULL,
	[F_HEADERHEIGHT] [float] NULL,
	[F_BODYLINEOPTION] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FRAMEHLINE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FRAMEVLINE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CAPTIONHLINE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CAPTIONVLINE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BODYHLINE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BODYVLINE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LASTROWLINE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PRINTPAR__2C6E30FAC4BCC769] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[PSD]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PSD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PSD](
	[F_DATE] [datetime] NULL,
	[F_DJH] [int] NOT NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PSD__3C196CCD942ADED2] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[PSDMX]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PSDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PSDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [float] NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_CD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL1] [float] NULL,
	[F_SL2] [float] NULL,
	[F_SL3] [float] NULL,
	[F_SL4] [float] NULL,
	[F_SL5] [float] NULL,
	[F_SL6] [float] NULL,
	[F_SL7] [float] NULL,
	[F_SL] [float] NULL,
 CONSTRAINT [PK__PSDMX__FEDF803EDEAD0EDB] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[QDD]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QDD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QDD](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PSZQ] [int] NULL,
	[F_LJZQ] [int] NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__QDD__3C196CCD2ECC0D91] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[QDD2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QDD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QDD2](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PSZQ] [int] NULL,
	[F_LJZQ] [int] NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__QDD2__3C196CCD53528C80] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[QDD3]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QDD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QDD3](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PSZQ] [int] NULL,
	[F_LJZQ] [int] NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__QDD3__3C196CCD94DF359A] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[QDDMX]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QDDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QDDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_SL2] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_RJXL] [float] NULL,
	[F_JYSL] [float] NULL,
	[F_SLV] [float] NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
 CONSTRAINT [PK__QDDMX__FEDF803E83AD54A4] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[QDDMX2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QDDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QDDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_SL2] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_RJXL] [float] NULL,
	[F_JYSL] [float] NULL,
	[F_SLV] [float] NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
 CONSTRAINT [PK__QDDMX2__FEDF803E7741770F] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[QDDMX3]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QDDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QDDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_SL2] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_RJXL] [float] NULL,
	[F_JYSL] [float] NULL,
	[F_SLV] [float] NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
 CONSTRAINT [PK__QDDMX3__FEDF803EC85F0EE6] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[RETAIL]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RETAIL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RETAIL](
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NULL,
	[F_KL] [int] NULL,
	[F_DJ2] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFPH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_NEWPC] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[RETAIL11]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RETAIL11]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RETAIL11](
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NULL,
	[F_KL] [int] NULL,
	[F_DJ2] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFPH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_NEWPC] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[RETAIL2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RETAIL2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RETAIL2](
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NULL,
	[F_KL] [int] NULL,
	[F_DJ2] [float] NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFPH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_NEWPC] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[RETAILC]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RETAILC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RETAILC](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JE] [float] NULL
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[RETAILC11]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RETAILC11]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RETAILC11](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JE] [float] NULL
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[RETAILC2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RETAILC2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RETAILC2](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JE] [float] NULL
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[RETAILDJ]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RETAILDJ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RETAILDJ](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJH] [int] NULL,
 CONSTRAINT [PK__RETAILDJ__6F5CCECA417E1EEB] PRIMARY KEY CLUSTERED 
(
	[F_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[RKD]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKD](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2] [float] NULL,
 CONSTRAINT [PK__RKD__3C196CCD12BA7012] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[RKD2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKD2](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2] [float] NULL,
 CONSTRAINT [PK__RKD2__3C196CCD7DC4CBF3] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[RKD3]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKD3](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2] [float] NULL,
 CONSTRAINT [PK__RKD3__3C196CCD52859CAE] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[RKDMX]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_YLF] [float] NULL,
	[F_JGF] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_SL2] [float] NULL,
	[F_KL] [int] NULL,
 CONSTRAINT [PK__RKDMX__FEDF803E8349DAD5] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[RKDMX2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_YLF] [float] NULL,
	[F_JGF] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_SL2] [float] NULL,
	[F_KL] [int] NULL,
 CONSTRAINT [PK__RKDMX2__FEDF803EE4CFA788] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[RKDMX3]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_YLF] [float] NULL,
	[F_JGF] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_SL2] [float] NULL,
	[F_KL] [int] NULL,
 CONSTRAINT [PK__RKDMX3__FEDF803E55D1C872] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[SFZY]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SFZY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SFZY](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__SFZY__2C6EEFB6197DE2C1] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[SJMXZ]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SJMXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SJMXZ](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLX] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JXSE] [float] NULL,
	[F_XXSE] [float] NULL,
	[F_ZCSE] [float] NULL,
	[F_HC] [int] NULL
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[SJZZ]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SJZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SJZZ](
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_JXS1] [float] NULL,
	[F_JXS2] [float] NULL,
	[F_JXS3] [float] NULL,
	[F_JXS4] [float] NULL,
	[F_JXS5] [float] NULL,
	[F_JXS6] [float] NULL,
	[F_JXS7] [float] NULL,
	[F_JXS8] [float] NULL,
	[F_JXS9] [float] NULL,
	[F_JXS10] [float] NULL,
	[F_JXS11] [float] NULL,
	[F_JXS12] [float] NULL,
	[F_XXS1] [float] NULL,
	[F_XXS2] [float] NULL,
	[F_XXS3] [float] NULL,
	[F_XXS4] [float] NULL,
	[F_XXS5] [float] NULL,
	[F_XXS6] [float] NULL,
	[F_XXS7] [float] NULL,
	[F_XXS8] [float] NULL,
	[F_XXS9] [float] NULL,
	[F_XXS10] [float] NULL,
	[F_XXS11] [float] NULL,
	[F_XXS12] [float] NULL,
	[F_ZCS1] [float] NULL,
	[F_ZCS2] [float] NULL,
	[F_ZCS3] [float] NULL,
	[F_ZCS4] [float] NULL,
	[F_ZCS5] [float] NULL,
	[F_ZCS6] [float] NULL,
	[F_ZCS7] [float] NULL,
	[F_ZCS8] [float] NULL,
	[F_ZCS9] [float] NULL,
	[F_ZCS10] [float] NULL,
	[F_ZCS11] [float] NULL,
	[F_ZCS12] [float] NULL,
 CONSTRAINT [PK__SJZZ__80BE2AD5EFBF48E1] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[SP]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SP](
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZJM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX1] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX2] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX3] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX4] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX5] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_IFSJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PHCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFPH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CBFF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FUNCTION] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MAXPC] [int] NULL,
	[F_BZQ] [int] NULL,
	[F_UN1] [float] NULL,
	[F_UN2] [float] NULL,
	[F_UN3] [float] NULL,
	[F_UN4] [float] NULL,
	[F_UN5] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_DWCB] [float] NULL,
	[F_RATE] [float] NULL,
	[F_MAXJJ] [float] NULL,
	[F_MINJJ] [float] NULL,
	[F_RECENTJJ] [float] NULL,
	[F_CS] [float] NULL,
	[F_MAXSL] [float] NULL,
	[F_MINSL] [float] NULL,
	[F_SLV] [float] NULL,
	[F_GNZZ] [varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YF] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBM] [varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__SP__80BE2AD5293D4E64] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[SP2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SP2](
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__SP2__6465D252AEE63061] PRIMARY KEY CLUSTERED 
(
	[F_BM] ASC,
	[F_SPBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[SP3]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[SPDOWN]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPDOWN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SPDOWN](
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CBFF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MAXSL] [float] NULL,
	[F_MINSL] [float] NULL,
	[F_SPGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLV] [float] NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BZQ] [int] NULL,
	[F_ZJM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_DWCB] [float] NULL,
	[F_IFPH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX1] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX2] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX3] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX4] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX5] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_MAXPC] [int] NULL,
	[F_IFSJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_RATE] [float] NULL,
	[F_FUNCTION] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PHCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_MAXJJ] [float] NULL,
	[F_MINJJ] [float] NULL,
	[F_RECENTJJ] [float] NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_EDITDATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_INSERTDATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XZR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_SPDOWN] PRIMARY KEY NONCLUSTERED 
(
	[F_SPBH] ASC,
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[SPLB]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SPLB](
	[F_LBBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_LBBC] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_QCSL] [float] NULL,
	[F_QCCB] [float] NULL,
	[F_JC] [int] NULL,
 CONSTRAINT [PK__SPLB__BB2BA81360285162] PRIMARY KEY CLUSTERED 
(
	[F_LBBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[SPPC]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPPC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SPPC](
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
 CONSTRAINT [PK__SPPC__AF54A8AA70053769] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC,
	[F_PH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[SPSHORT]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPSHORT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SPSHORT](
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ2] [float] NULL,
	[F_CS] [int] NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__SPSHORT__EEA8DC0CC1AFE16E] PRIMARY KEY CLUSTERED 
(
	[F_BM] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[SYZZ]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SYZZ](
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__SYZZ__8278C6246AE5B572] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[TEXTSOURCE]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TEXTSOURCE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TEXTSOURCE](
	[F_NAME] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SQL] [varchar](255) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK__TEXTSOUR__4A3EA6708CB2FBFA] PRIMARY KEY CLUSTERED 
(
	[F_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[TJD]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TJD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TJD](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__TJD__3C196CCD40FF466E] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[TJD2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TJD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TJD2](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__TJD2__3C196CCD2557D0FD] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[TJD3]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TJD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TJD3](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__TJD3__3C196CCDC1BF08CF] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[TJDDOWNLOAD]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TJDDOWNLOAD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TJDDOWNLOAD](
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__TJDDOWNL__EFAFA63385D1FDF2] PRIMARY KEY CLUSTERED 
(
	[F_BM] ASC,
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[TJDMX]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TJDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TJDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ11] [float] NULL,
	[F_DJ12] [float] NULL,
	[F_DJ21] [float] NULL,
	[F_DJ22] [float] NULL,
	[F_SL] [float] NULL,
	[F_DJ31] [float] NULL,
	[F_DJ32] [float] NULL,
	[F_DJ42] [float] NULL,
	[F_DJ41] [float] NULL,
	[F_DJ51] [float] NULL,
	[F_DJ52] [float] NULL,
	[F_SLJC] [float] NULL,
 CONSTRAINT [PK__TJDMX__FEDF803E1331E3CA] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[TJDMX2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TJDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TJDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ11] [float] NULL,
	[F_DJ12] [float] NULL,
	[F_DJ21] [float] NULL,
	[F_DJ22] [float] NULL,
	[F_SL] [float] NULL,
	[F_DJ31] [float] NULL,
	[F_DJ32] [float] NULL,
	[F_DJ42] [float] NULL,
	[F_DJ41] [float] NULL,
	[F_DJ51] [float] NULL,
	[F_DJ52] [float] NULL,
	[F_SLJC] [float] NULL,
 CONSTRAINT [PK__TJDMX2__FEDF803EC5EEECC9] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[TJDMX3]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TJDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TJDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ11] [float] NULL,
	[F_DJ12] [float] NULL,
	[F_DJ21] [float] NULL,
	[F_DJ22] [float] NULL,
	[F_SL] [float] NULL,
	[F_DJ31] [float] NULL,
	[F_DJ32] [float] NULL,
	[F_DJ42] [float] NULL,
	[F_DJ41] [float] NULL,
	[F_DJ51] [float] NULL,
	[F_DJ52] [float] NULL,
	[F_SLJC] [float] NULL,
 CONSTRAINT [PK__TJDMX3__FEDF803EBE6BBD79] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[TRANSPORT]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TRANSPORT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TRANSPORT](
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TYPE] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX] [int] NULL,
	[F_ITEM] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_CAPTION] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_EXEC] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VIEWNAME1] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VIEWSQL1] [image] NULL,
	[F_VIEWNAME2] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VIEWSQL2] [image] NULL,
	[F_VIEWNAME3] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VIEWSQL3] [image] NULL,
 CONSTRAINT [PK__TRANSPOR__B41CB054EA7392D0] PRIMARY KEY CLUSTERED 
(
	[F_BM] ASC,
	[F_TYPE] ASC,
	[F_ITEM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[VEN_SP]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VEN_SP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VEN_SP](
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ] [float] NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VEN_SP__B14B6E5F505BD1BD] PRIMARY KEY CLUSTERED 
(
	[F_VENDOR] ASC,
	[F_SPBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[VENDOR]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VENDOR](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
	[F_ZJM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GROUP] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__VENDOR__2C6EEFB6BB0A0571] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[VENDOR3]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDOR3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VENDOR3](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VENDOR3__2C6EEFB66C2CDB38] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[VENDORGROUP]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDORGROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VENDORGROUP](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[VENDORLB]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDORLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VENDORLB](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_JC] [int] NULL,
 CONSTRAINT [PK__VENDORLB__2C6EEFB6A6F8E628] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[VIP]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VIP](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZJM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__VIP__2C6EEFB6AC6B91DE] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[VIP2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIP2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VIP2](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZJM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__VIP2__2C6EEFB664233179] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[XHD]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XHD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XHD](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_DHDJH] [int] NULL,
 CONSTRAINT [PK__XHD__3C196CCDA0212266] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[XHD2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XHD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XHD2](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_DHDJH] [int] NULL,
 CONSTRAINT [PK__XHD2__3C196CCD7592F8EA] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[XHD3]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XHD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XHD3](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_DHDJH] [int] NULL,
 CONSTRAINT [PK__XHD3__3C196CCDBBDCE0EC] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[XHDMX]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XHDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XHDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_KL] [int] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_CB] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_ZF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DWCB] [float] NULL,
	[F_RATE] [float] NULL,
	[F_SL2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_PC] [int] NULL,
 CONSTRAINT [PK__XHDMX__0015E5C7] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[XHDMX2]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XHDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XHDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_KL] [int] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_CB] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_ZF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DWCB] [float] NULL,
	[F_RATE] [float] NULL,
	[F_SL2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_PC] [int] NULL,
 CONSTRAINT [PK__XHDMX2__010A0A00] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[XHDMX3]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XHDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XHDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_KL] [int] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_CB] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_ZF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DWCB] [float] NULL,
	[F_RATE] [float] NULL,
	[F_SL2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_PC] [int] NULL,
 CONSTRAINT [PK__XHDMX3__01FE2E39] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[XSBB]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XSBB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XSBB](
	[F_CAPTION] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SP] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TOP] [int] NULL,
	[F_LEFT] [int] NULL,
	[F_ROWS] [int] NULL,
	[F_SIZE] [int] NULL,
	[F_LENGTH] [int] NULL,
	[F_WIDTH] [int] NULL,
	[F_ORIENT] [int] NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPLB] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [smallint] NULL,
	[F_TITLEFONT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BBFONT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_COLNUMBER] [int] NULL,
	[F_COLCAPTION] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_COLWIDTH] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__XSBB__2C6E30FABF78DB8D] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[XSLB]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XSLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XSLB](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJ] [int] NULL,
 CONSTRAINT [PK__XSLB__2C6EEFB6BA3AD9A3] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[XSMXZ]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XSMXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XSMXZ](
	[F_DATE] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_CB] [float] NULL,
	[F_DJ] [float] NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SE] [float] NULL,
	[F_HC] [int] NULL,
	[F_CX] [int] NULL
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[XSZZ]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XSZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XSZZ](
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__XSZZ__8278C6245DFAAF98] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[YFHXZ]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[YFJSD2]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[YFMXZ]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[YFZZ]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[YSHXZ]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[YSJSD2]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[YSMXZ]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[YSZZ]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[YWY]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YWY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YWY](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DE] [float] NULL,
 CONSTRAINT [PK__YWY__2C6EEFB605BCCA3E] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[YWY3]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[ZLFX_C_DAY]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[ZLFX_C_KJQJ]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[ZLFX_C_YEAR]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[ZLFX_V_DAY]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[ZLFX_V_KJQJ]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[ZLFX_V_YEAR]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[ZNPOWER]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[ZNXX]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZNXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZNXX](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK__ZNXX__2C6EEFB6C95BB60C] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[ZTCS]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[ZZD]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[ZZD2]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[ZZD3]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[ZZDMX]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[ZZDMX2]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[ZZDMX3]     脚本     时间： 2023/5/8 15:00:34 ******/
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
/****** 对像:  表   描述： [dbo].[ZZMB]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZMB](
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** 对像:  表   描述： [dbo].[ZZMBMX]     脚本     时间： 2023/5/8 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZMBMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZMBMX](
	[F_SPBH1] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPBH2] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_FIXED] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HC] [int] NULL
) ON [PRIMARY]
END
GO

IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__BM__F_DE__4FBCC72F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[BM] ADD  CONSTRAINT [DF__BM__F_DE__4FBCC72F]  DEFAULT ((0)) FOR [F_DE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CBPOWER__F_ITEMI__50B0EB68]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CBPOWER] ADD  CONSTRAINT [DF__CBPOWER__F_ITEMI__50B0EB68]  DEFAULT ((0)) FOR [F_ITEMINDEX]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGD__F_JS__51A50FA1]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGD] ADD  CONSTRAINT [DF__CGD__F_JS__51A50FA1]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGD__F_FPXZ__529933DA]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGD] ADD  CONSTRAINT [DF__CGD__F_FPXZ__529933DA]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGD2__F_JS__538D5813]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGD2] ADD  CONSTRAINT [DF__CGD2__F_JS__538D5813]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGD2__F_FPXZ__54817C4C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGD2] ADD  CONSTRAINT [DF__CGD2__F_FPXZ__54817C4C]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGD3__F_JS__5575A085]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGD3] ADD  CONSTRAINT [DF__CGD3__F_JS__5575A085]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGD3__F_FPXZ__5669C4BE]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGD3] ADD  CONSTRAINT [DF__CGD3__F_FPXZ__5669C4BE]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX__F_SL__575DE8F7]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__F_SL__575DE8F7]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX__F_DJ__58520D30]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__F_DJ__58520D30]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX__F_JE__59463169]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__F_JE__59463169]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX__F_SLV__5A3A55A2]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__F_SLV__5A3A55A2]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX__F_SE__5B2E79DB]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__F_SE__5B2E79DB]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX__F_HJ__5C229E14]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__F_HJ__5C229E14]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX__F_DJ1__5D16C24D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__F_DJ1__5D16C24D]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX__F_DJ2__5E0AE686]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__F_DJ2__5E0AE686]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX__F_SLJC__5EFF0ABF]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__F_SLJC__5EFF0ABF]  DEFAULT ((0)) FOR [F_SLJC]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX__F_SL2__5FF32EF8]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__F_SL2__5FF32EF8]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX2__F_SL__60E75331]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__F_SL__60E75331]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX2__F_DJ__61DB776A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__F_DJ__61DB776A]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX2__F_JE__62CF9BA3]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__F_JE__62CF9BA3]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX2__F_SLV__63C3BFDC]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__F_SLV__63C3BFDC]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX2__F_SE__64B7E415]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__F_SE__64B7E415]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX2__F_HJ__65AC084E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__F_HJ__65AC084E]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX2__F_DJ1__66A02C87]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__F_DJ1__66A02C87]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX2__F_DJ2__679450C0]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__F_DJ2__679450C0]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX2__F_SLJC__688874F9]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__F_SLJC__688874F9]  DEFAULT ((0)) FOR [F_SLJC]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX2__F_SL2__697C9932]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__F_SL2__697C9932]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX3__F_SL__6A70BD6B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__F_SL__6A70BD6B]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX3__F_DJ__6B64E1A4]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__F_DJ__6B64E1A4]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX3__F_JE__6C5905DD]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__F_JE__6C5905DD]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX3__F_SLV__6D4D2A16]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__F_SLV__6D4D2A16]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX3__F_SE__6E414E4F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__F_SE__6E414E4F]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX3__F_HJ__6F357288]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__F_HJ__6F357288]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX3__F_DJ1__702996C1]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__F_DJ1__702996C1]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX3__F_DJ2__711DBAFA]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__F_DJ2__711DBAFA]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX3__F_SLJC__7211DF33]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__F_SLJC__7211DF33]  DEFAULT ((0)) FOR [F_SLJC]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CGDMX3__F_SL2__7306036C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__F_SL2__7306036C]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CKD__F_FPXZ__73FA27A5]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CKD] ADD  CONSTRAINT [DF__CKD__F_FPXZ__73FA27A5]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CKD__F_SL2__74EE4BDE]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CKD] ADD  CONSTRAINT [DF__CKD__F_SL2__74EE4BDE]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CKD2__F_FPXZ__75E27017]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CKD2] ADD  CONSTRAINT [DF__CKD2__F_FPXZ__75E27017]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CKD2__F_SL2__76D69450]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CKD2] ADD  CONSTRAINT [DF__CKD2__F_SL2__76D69450]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CKD3__F_FPXZ__77CAB889]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CKD3] ADD  CONSTRAINT [DF__CKD3__F_FPXZ__77CAB889]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CKD3__F_SL2__78BEDCC2]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CKD3] ADD  CONSTRAINT [DF__CKD3__F_SL2__78BEDCC2]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CKDMX__F_SL__79B300FB]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CKDMX] ADD  CONSTRAINT [DF__CKDMX__F_SL__79B300FB]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CKDMX__F_DJ__7AA72534]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CKDMX] ADD  CONSTRAINT [DF__CKDMX__F_DJ__7AA72534]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CKDMX__F_JE__7B9B496D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CKDMX] ADD  CONSTRAINT [DF__CKDMX__F_JE__7B9B496D]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CKDMX__F_SLV__7C8F6DA6]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CKDMX] ADD  CONSTRAINT [DF__CKDMX__F_SLV__7C8F6DA6]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CKDMX__F_SE__7D8391DF]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CKDMX] ADD  CONSTRAINT [DF__CKDMX__F_SE__7D8391DF]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CKDMX__F_UN__7E77B618]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CKDMX] ADD  CONSTRAINT [DF__CKDMX__F_UN__7E77B618]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CKDMX__F_SL2__7F6BDA51]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CKDMX] ADD  CONSTRAINT [DF__CKDMX__F_SL2__7F6BDA51]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CKDMX2__F_SL__005FFE8A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CKDMX2] ADD  CONSTRAINT [DF__CKDMX2__F_SL__005FFE8A]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CKDMX2__F_DJ__015422C3]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CKDMX2] ADD  CONSTRAINT [DF__CKDMX2__F_DJ__015422C3]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CKDMX2__F_JE__024846FC]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CKDMX2] ADD  CONSTRAINT [DF__CKDMX2__F_JE__024846FC]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CKDMX2__F_SLV__033C6B35]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CKDMX2] ADD  CONSTRAINT [DF__CKDMX2__F_SLV__033C6B35]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CKDMX2__F_SE__04308F6E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CKDMX2] ADD  CONSTRAINT [DF__CKDMX2__F_SE__04308F6E]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CKDMX2__F_UN__0524B3A7]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CKDMX2] ADD  CONSTRAINT [DF__CKDMX2__F_UN__0524B3A7]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CKDMX2__F_SL2__0618D7E0]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CKDMX2] ADD  CONSTRAINT [DF__CKDMX2__F_SL2__0618D7E0]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CKDMX3__F_SL2__070CFC19]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CKDMX3] ADD  CONSTRAINT [DF__CKDMX3__F_SL2__070CFC19]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__COMXZ__F_FORMWID__08012052]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[COMXZ] ADD  CONSTRAINT [DF__COMXZ__F_FORMWID__08012052]  DEFAULT ((200)) FOR [F_FORMWIDTH]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__COMXZ__F_FORMHEI__08F5448B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[COMXZ] ADD  CONSTRAINT [DF__COMXZ__F_FORMHEI__08F5448B]  DEFAULT ((200)) FOR [F_FORMHEIGHT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_QCYE__09E968C4]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_QCYE__09E968C4]  DEFAULT ((0)) FOR [F_QCYE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_QMYE__0ADD8CFD]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_QMYE__0ADD8CFD]  DEFAULT ((0)) FOR [F_QMYE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_SXED__0BD1B136]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_SXED__0BD1B136]  DEFAULT ((0)) FOR [F_SXED]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_J1__0CC5D56F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J1__0CC5D56F]  DEFAULT ((0)) FOR [F_J1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_D1__0DB9F9A8]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D1__0DB9F9A8]  DEFAULT ((0)) FOR [F_D1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_J2__0EAE1DE1]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J2__0EAE1DE1]  DEFAULT ((0)) FOR [F_J2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_D2__0FA2421A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D2__0FA2421A]  DEFAULT ((0)) FOR [F_D2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_J3__10966653]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J3__10966653]  DEFAULT ((0)) FOR [F_J3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_D3__118A8A8C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D3__118A8A8C]  DEFAULT ((0)) FOR [F_D3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_J4__127EAEC5]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J4__127EAEC5]  DEFAULT ((0)) FOR [F_J4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_D4__1372D2FE]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D4__1372D2FE]  DEFAULT ((0)) FOR [F_D4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_J5__1466F737]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J5__1466F737]  DEFAULT ((0)) FOR [F_J5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_D5__155B1B70]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D5__155B1B70]  DEFAULT ((0)) FOR [F_D5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_J6__164F3FA9]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J6__164F3FA9]  DEFAULT ((0)) FOR [F_J6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_D6__174363E2]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D6__174363E2]  DEFAULT ((0)) FOR [F_D6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_J7__1837881B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J7__1837881B]  DEFAULT ((0)) FOR [F_J7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_D7__192BAC54]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D7__192BAC54]  DEFAULT ((0)) FOR [F_D7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_J8__1A1FD08D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J8__1A1FD08D]  DEFAULT ((0)) FOR [F_J8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_D8__1B13F4C6]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D8__1B13F4C6]  DEFAULT ((0)) FOR [F_D8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_J9__1C0818FF]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J9__1C0818FF]  DEFAULT ((0)) FOR [F_J9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_D9__1CFC3D38]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D9__1CFC3D38]  DEFAULT ((0)) FOR [F_D9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_J10__1DF06171]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J10__1DF06171]  DEFAULT ((0)) FOR [F_J10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_D10__1EE485AA]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D10__1EE485AA]  DEFAULT ((0)) FOR [F_D10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_J11__1FD8A9E3]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J11__1FD8A9E3]  DEFAULT ((0)) FOR [F_J11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_D11__20CCCE1C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D11__20CCCE1C]  DEFAULT ((0)) FOR [F_D11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_J12__21C0F255]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_J12__21C0F255]  DEFAULT ((0)) FOR [F_J12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOM__F_D12__22B5168E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOM] ADD  CONSTRAINT [DF__CUSTOM__F_D12__22B5168E]  DEFAULT ((0)) FOR [F_D12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOMGRAD__F_KL__61C668D1]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOMGRADE] ADD  CONSTRAINT [DF__CUSTOMGRAD__F_KL__61C668D1]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__CUSTOMGRA__F_PRI__5575A085]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[CUSTOMGRADE] ADD  CONSTRAINT [DF__CUSTOMGRA__F_PRI__5575A085]  DEFAULT ((2)) FOR [F_PRICENUMBER]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBDMX__F_SL__23A93AC7]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_SL__23A93AC7]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBDMX__F_JE__249D5F00]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_JE__249D5F00]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBDMX__F_SLJC__25918339]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_SLJC__25918339]  DEFAULT ((0)) FOR [F_SLJC]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBDMX__F_DJ__2685A772]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_DJ__2685A772]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBDMX__F_UN__2779CBAB]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_UN__2779CBAB]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBDMX__F_SL2__286DEFE4]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_SL2__286DEFE4]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBDMX2__F_SL__2962141D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_SL__2962141D]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBDMX2__F_JE__2A563856]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_JE__2A563856]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBDMX2__F_SLJC__2B4A5C8F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_SLJC__2B4A5C8F]  DEFAULT ((0)) FOR [F_SLJC]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBDMX2__F_DJ__2C3E80C8]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_DJ__2C3E80C8]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBDMX2__F_UN__2D32A501]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_UN__2D32A501]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBDMX2__F_SL2__2E26C93A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_SL2__2E26C93A]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLS1__2F1AED73]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS1__2F1AED73]  DEFAULT ((0)) FOR [F_SLS1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLS2__300F11AC]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS2__300F11AC]  DEFAULT ((0)) FOR [F_SLS2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLS3__310335E5]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS3__310335E5]  DEFAULT ((0)) FOR [F_SLS3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLS4__31F75A1E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS4__31F75A1E]  DEFAULT ((0)) FOR [F_SLS4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLS5__32EB7E57]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS5__32EB7E57]  DEFAULT ((0)) FOR [F_SLS5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLS6__33DFA290]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS6__33DFA290]  DEFAULT ((0)) FOR [F_SLS6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLS7__34D3C6C9]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS7__34D3C6C9]  DEFAULT ((0)) FOR [F_SLS7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLS8__35C7EB02]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS8__35C7EB02]  DEFAULT ((0)) FOR [F_SLS8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLS9__36BC0F3B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS9__36BC0F3B]  DEFAULT ((0)) FOR [F_SLS9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLS10__37B03374]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS10__37B03374]  DEFAULT ((0)) FOR [F_SLS10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLS11__38A457AD]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS11__38A457AD]  DEFAULT ((0)) FOR [F_SLS11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLS12__39987BE6]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS12__39987BE6]  DEFAULT ((0)) FOR [F_SLS12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JES1__3A8CA01F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES1__3A8CA01F]  DEFAULT ((0)) FOR [F_JES1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JES2__3B80C458]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES2__3B80C458]  DEFAULT ((0)) FOR [F_JES2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JES3__3C74E891]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES3__3C74E891]  DEFAULT ((0)) FOR [F_JES3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JES4__3D690CCA]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES4__3D690CCA]  DEFAULT ((0)) FOR [F_JES4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JES5__3E5D3103]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES5__3E5D3103]  DEFAULT ((0)) FOR [F_JES5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JES6__3F51553C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES6__3F51553C]  DEFAULT ((0)) FOR [F_JES6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JES7__40457975]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES7__40457975]  DEFAULT ((0)) FOR [F_JES7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JES8__41399DAE]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES8__41399DAE]  DEFAULT ((0)) FOR [F_JES8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JES9__422DC1E7]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES9__422DC1E7]  DEFAULT ((0)) FOR [F_JES9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JES10__4321E620]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES10__4321E620]  DEFAULT ((0)) FOR [F_JES10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JES11__44160A59]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES11__44160A59]  DEFAULT ((0)) FOR [F_JES11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JES12__450A2E92]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES12__450A2E92]  DEFAULT ((0)) FOR [F_JES12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLF1__45FE52CB]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF1__45FE52CB]  DEFAULT ((0)) FOR [F_SLF1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLF2__46F27704]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF2__46F27704]  DEFAULT ((0)) FOR [F_SLF2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLF3__47E69B3D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF3__47E69B3D]  DEFAULT ((0)) FOR [F_SLF3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLF4__48DABF76]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF4__48DABF76]  DEFAULT ((0)) FOR [F_SLF4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLF5__49CEE3AF]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF5__49CEE3AF]  DEFAULT ((0)) FOR [F_SLF5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLF6__4AC307E8]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF6__4AC307E8]  DEFAULT ((0)) FOR [F_SLF6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLF7__4BB72C21]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF7__4BB72C21]  DEFAULT ((0)) FOR [F_SLF7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLF8__4CAB505A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF8__4CAB505A]  DEFAULT ((0)) FOR [F_SLF8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLF9__4D9F7493]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF9__4D9F7493]  DEFAULT ((0)) FOR [F_SLF9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLF10__4E9398CC]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF10__4E9398CC]  DEFAULT ((0)) FOR [F_SLF10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLF11__4F87BD05]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF11__4F87BD05]  DEFAULT ((0)) FOR [F_SLF11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_SLF12__507BE13E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF12__507BE13E]  DEFAULT ((0)) FOR [F_SLF12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JEF1__51700577]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF1__51700577]  DEFAULT ((0)) FOR [F_JEF1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JEF2__526429B0]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF2__526429B0]  DEFAULT ((0)) FOR [F_JEF2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JEF3__53584DE9]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF3__53584DE9]  DEFAULT ((0)) FOR [F_JEF3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JEF4__544C7222]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF4__544C7222]  DEFAULT ((0)) FOR [F_JEF4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JEF5__5540965B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF5__5540965B]  DEFAULT ((0)) FOR [F_JEF5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JEF6__5634BA94]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF6__5634BA94]  DEFAULT ((0)) FOR [F_JEF6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JEF7__5728DECD]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF7__5728DECD]  DEFAULT ((0)) FOR [F_JEF7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JEF8__581D0306]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF8__581D0306]  DEFAULT ((0)) FOR [F_JEF8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JEF9__5911273F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF9__5911273F]  DEFAULT ((0)) FOR [F_JEF9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JEF10__5A054B78]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF10__5A054B78]  DEFAULT ((0)) FOR [F_JEF10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JEF11__5AF96FB1]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF11__5AF96FB1]  DEFAULT ((0)) FOR [F_JEF11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DBZZ__F_JEF12__5BED93EA]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF12__5BED93EA]  DEFAULT ((0)) FOR [F_JEF12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DHDMX__F_SL__5CE1B823]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DHDMX] ADD  CONSTRAINT [DF__DHDMX__F_SL__5CE1B823]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DHDMX__F_DJ__5DD5DC5C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DHDMX] ADD  CONSTRAINT [DF__DHDMX__F_DJ__5DD5DC5C]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DHDMX__F_KL__5ECA0095]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DHDMX] ADD  CONSTRAINT [DF__DHDMX__F_KL__5ECA0095]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DHDMX__F_JE__5FBE24CE]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DHDMX] ADD  CONSTRAINT [DF__DHDMX__F_JE__5FBE24CE]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DHDMX__F_SLV__60B24907]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DHDMX] ADD  CONSTRAINT [DF__DHDMX__F_SLV__60B24907]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DHDMX__F_SE__61A66D40]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DHDMX] ADD  CONSTRAINT [DF__DHDMX__F_SE__61A66D40]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DHDMX__F_CB__629A9179]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DHDMX] ADD  CONSTRAINT [DF__DHDMX__F_CB__629A9179]  DEFAULT ((0)) FOR [F_CB]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DHDMX__F_HJ__638EB5B2]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DHDMX] ADD  CONSTRAINT [DF__DHDMX__F_HJ__638EB5B2]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DHDMX__F_UN__6482D9EB]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DHDMX] ADD  CONSTRAINT [DF__DHDMX__F_UN__6482D9EB]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DHDMX2__F_SL__6576FE24]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DHDMX2] ADD  CONSTRAINT [DF__DHDMX2__F_SL__6576FE24]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DHDMX2__F_DJ__666B225D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DHDMX2] ADD  CONSTRAINT [DF__DHDMX2__F_DJ__666B225D]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DHDMX2__F_KL__675F4696]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DHDMX2] ADD  CONSTRAINT [DF__DHDMX2__F_KL__675F4696]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DHDMX2__F_JE__68536ACF]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DHDMX2] ADD  CONSTRAINT [DF__DHDMX2__F_JE__68536ACF]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DHDMX2__F_SLV__69478F08]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DHDMX2] ADD  CONSTRAINT [DF__DHDMX2__F_SLV__69478F08]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DHDMX2__F_SE__6A3BB341]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DHDMX2] ADD  CONSTRAINT [DF__DHDMX2__F_SE__6A3BB341]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DHDMX2__F_CB__6B2FD77A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DHDMX2] ADD  CONSTRAINT [DF__DHDMX2__F_CB__6B2FD77A]  DEFAULT ((0)) FOR [F_CB]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DHDMX2__F_HJ__6C23FBB3]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DHDMX2] ADD  CONSTRAINT [DF__DHDMX2__F_HJ__6C23FBB3]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DJH__F_JHD__6D181FEC]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DJH] ADD  CONSTRAINT [DF__DJH__F_JHD__6D181FEC]  DEFAULT ((0)) FOR [F_JHD]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DJH__F_XHD__6E0C4425]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DJH] ADD  CONSTRAINT [DF__DJH__F_XHD__6E0C4425]  DEFAULT ((0)) FOR [F_XHD]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DJH__F_CGD__6F00685E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DJH] ADD  CONSTRAINT [DF__DJH__F_CGD__6F00685E]  DEFAULT ((0)) FOR [F_CGD]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DJH__F_RKD__6FF48C97]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DJH] ADD  CONSTRAINT [DF__DJH__F_RKD__6FF48C97]  DEFAULT ((0)) FOR [F_RKD]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DJH__F_CKD__70E8B0D0]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DJH] ADD  CONSTRAINT [DF__DJH__F_CKD__70E8B0D0]  DEFAULT ((0)) FOR [F_CKD]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DJH__F_DBD__71DCD509]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DJH] ADD  CONSTRAINT [DF__DJH__F_DBD__71DCD509]  DEFAULT ((0)) FOR [F_DBD]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DJH__F_XSBB__72D0F942]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DJH] ADD  CONSTRAINT [DF__DJH__F_XSBB__72D0F942]  DEFAULT ((0)) FOR [F_XSBB]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DJH__F_PC__73C51D7B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DJH] ADD  CONSTRAINT [DF__DJH__F_PC__73C51D7B]  DEFAULT ((0)) FOR [F_PC]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DJH__F_YSJSD__74B941B4]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DJH] ADD  CONSTRAINT [DF__DJH__F_YSJSD__74B941B4]  DEFAULT ((0)) FOR [F_YSJSD]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DJH__F_YFJSD__75AD65ED]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DJH] ADD  CONSTRAINT [DF__DJH__F_YFJSD__75AD65ED]  DEFAULT ((0)) FOR [F_YFJSD]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DJH__F_ZZD__76A18A26]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DJH] ADD  CONSTRAINT [DF__DJH__F_ZZD__76A18A26]  DEFAULT ((0)) FOR [F_ZZD]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DJH__F_TJD__7795AE5F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DJH] ADD  CONSTRAINT [DF__DJH__F_TJD__7795AE5F]  DEFAULT ((0)) FOR [F_TJD]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DJH__F_PSD__7889D298]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DJH] ADD  CONSTRAINT [DF__DJH__F_PSD__7889D298]  DEFAULT ((0)) FOR [F_PSD]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DJH__F_JIEZ__797DF6D1]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DJH] ADD  CONSTRAINT [DF__DJH__F_JIEZ__797DF6D1]  DEFAULT ((0)) FOR [F_JIEZ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DJH__F_DHD__7A721B0A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DJH] ADD  CONSTRAINT [DF__DJH__F_DHD__7A721B0A]  DEFAULT ((0)) FOR [F_DHD]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF_DJH_F_CX]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DJH] ADD  CONSTRAINT [DF_DJH_F_CX]  DEFAULT ((0)) FOR [F_CX]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DJH__F_QDD__6FBF826D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DJH] ADD  CONSTRAINT [DF__DJH__F_QDD__6FBF826D]  DEFAULT ((0)) FOR [F_QDD]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DJH__F_NEWSP__70B3A6A6]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DJH] ADD  CONSTRAINT [DF__DJH__F_NEWSP__70B3A6A6]  DEFAULT ((0)) FOR [F_NEWSP]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DJH__F_ENEMY__71A7CADF]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DJH] ADD  CONSTRAINT [DF__DJH__F_ENEMY__71A7CADF]  DEFAULT ((0)) FOR [F_ENEMY]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DJH__F_PDD__729BEF18]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DJH] ADD  CONSTRAINT [DF__DJH__F_PDD__729BEF18]  DEFAULT ((0)) FOR [F_PDD]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__DJH__F_SP__7D197D8B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[DJH] ADD  CONSTRAINT [DF__DJH__F_SP__7D197D8B]  DEFAULT ((0)) FOR [F_SP]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF_ENEMYXX_F_DJ2]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[ENEMYXX] ADD  CONSTRAINT [DF_ENEMYXX_F_DJ2]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF_ENEMYXX_F_CS]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[ENEMYXX] ADD  CONSTRAINT [DF_ENEMYXX_F_CS]  DEFAULT ((1)) FOR [F_CS]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF_ENEMYXX_F_DJ0]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[ENEMYXX] ADD  CONSTRAINT [DF_ENEMYXX_F_DJ0]  DEFAULT ((0)) FOR [F_DJ0]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__EVENT__F_CONDITI__7B663F43]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[EVENT] ADD  CONSTRAINT [DF__EVENT__F_CONDITI__7B663F43]  DEFAULT ('') FOR [F_CONDITION]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__EVENT__F_HINT__7C5A637C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[EVENT] ADD  CONSTRAINT [DF__EVENT__F_HINT__7C5A637C]  DEFAULT ('') FOR [F_HINT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__FPCOL__F_ALIGNME__7D4E87B5]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[FPCOL] ADD  CONSTRAINT [DF__FPCOL__F_ALIGNME__7D4E87B5]  DEFAULT ((-1)) FOR [F_ALIGNMENT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__HW__F_LOCAL__7E42ABEE]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[HW] ADD  CONSTRAINT [DF__HW__F_LOCAL__7E42ABEE]  DEFAULT ('') FOR [F_LOCAL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLS1__7F36D027]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS1__7F36D027]  DEFAULT ((0)) FOR [F_SLS1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLS2__002AF460]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS2__002AF460]  DEFAULT ((0)) FOR [F_SLS2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLS3__011F1899]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS3__011F1899]  DEFAULT ((0)) FOR [F_SLS3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLS4__02133CD2]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS4__02133CD2]  DEFAULT ((0)) FOR [F_SLS4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLS5__0307610B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS5__0307610B]  DEFAULT ((0)) FOR [F_SLS5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLS6__03FB8544]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS6__03FB8544]  DEFAULT ((0)) FOR [F_SLS6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLS7__04EFA97D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS7__04EFA97D]  DEFAULT ((0)) FOR [F_SLS7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLS8__05E3CDB6]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS8__05E3CDB6]  DEFAULT ((0)) FOR [F_SLS8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLS9__06D7F1EF]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS9__06D7F1EF]  DEFAULT ((0)) FOR [F_SLS9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLS10__07CC1628]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS10__07CC1628]  DEFAULT ((0)) FOR [F_SLS10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLS11__08C03A61]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS11__08C03A61]  DEFAULT ((0)) FOR [F_SLS11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLS12__09B45E9A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS12__09B45E9A]  DEFAULT ((0)) FOR [F_SLS12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JES1__0AA882D3]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES1__0AA882D3]  DEFAULT ((0)) FOR [F_JES1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JES2__0B9CA70C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES2__0B9CA70C]  DEFAULT ((0)) FOR [F_JES2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JES3__0C90CB45]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES3__0C90CB45]  DEFAULT ((0)) FOR [F_JES3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JES4__0D84EF7E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES4__0D84EF7E]  DEFAULT ((0)) FOR [F_JES4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JES5__0E7913B7]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES5__0E7913B7]  DEFAULT ((0)) FOR [F_JES5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JES6__0F6D37F0]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES6__0F6D37F0]  DEFAULT ((0)) FOR [F_JES6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JES7__10615C29]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES7__10615C29]  DEFAULT ((0)) FOR [F_JES7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JES8__11558062]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES8__11558062]  DEFAULT ((0)) FOR [F_JES8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JES9__1249A49B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES9__1249A49B]  DEFAULT ((0)) FOR [F_JES9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JES10__133DC8D4]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES10__133DC8D4]  DEFAULT ((0)) FOR [F_JES10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JES11__1431ED0D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES11__1431ED0D]  DEFAULT ((0)) FOR [F_JES11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JES12__15261146]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES12__15261146]  DEFAULT ((0)) FOR [F_JES12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLF1__161A357F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF1__161A357F]  DEFAULT ((0)) FOR [F_SLF1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLF2__170E59B8]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF2__170E59B8]  DEFAULT ((0)) FOR [F_SLF2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLF3__18027DF1]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF3__18027DF1]  DEFAULT ((0)) FOR [F_SLF3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLF4__18F6A22A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF4__18F6A22A]  DEFAULT ((0)) FOR [F_SLF4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLF5__19EAC663]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF5__19EAC663]  DEFAULT ((0)) FOR [F_SLF5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLF6__1ADEEA9C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF6__1ADEEA9C]  DEFAULT ((0)) FOR [F_SLF6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLF7__1BD30ED5]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF7__1BD30ED5]  DEFAULT ((0)) FOR [F_SLF7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLF8__1CC7330E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF8__1CC7330E]  DEFAULT ((0)) FOR [F_SLF8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLF9__1DBB5747]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF9__1DBB5747]  DEFAULT ((0)) FOR [F_SLF9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLF10__1EAF7B80]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF10__1EAF7B80]  DEFAULT ((0)) FOR [F_SLF10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLF11__1FA39FB9]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF11__1FA39FB9]  DEFAULT ((0)) FOR [F_SLF11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_SLF12__2097C3F2]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF12__2097C3F2]  DEFAULT ((0)) FOR [F_SLF12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JEF1__218BE82B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF1__218BE82B]  DEFAULT ((0)) FOR [F_JEF1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JEF2__22800C64]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF2__22800C64]  DEFAULT ((0)) FOR [F_JEF2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JEF3__2374309D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF3__2374309D]  DEFAULT ((0)) FOR [F_JEF3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JEF4__246854D6]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF4__246854D6]  DEFAULT ((0)) FOR [F_JEF4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JEF5__255C790F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF5__255C790F]  DEFAULT ((0)) FOR [F_JEF5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JEF6__26509D48]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF6__26509D48]  DEFAULT ((0)) FOR [F_JEF6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JEF7__2744C181]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF7__2744C181]  DEFAULT ((0)) FOR [F_JEF7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JEF8__2838E5BA]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF8__2838E5BA]  DEFAULT ((0)) FOR [F_JEF8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JEF9__292D09F3]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF9__292D09F3]  DEFAULT ((0)) FOR [F_JEF9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JEF10__2A212E2C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF10__2A212E2C]  DEFAULT ((0)) FOR [F_JEF10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JEF11__2B155265]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF11__2B155265]  DEFAULT ((0)) FOR [F_JEF11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JGZZ__F_JEF12__2C09769E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF12__2C09769E]  DEFAULT ((0)) FOR [F_JEF12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHBB__F_ROWS__2CFD9AD7]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHBB] ADD  CONSTRAINT [DF__JHBB__F_ROWS__2CFD9AD7]  DEFAULT ((35)) FOR [F_ROWS]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHBB__F_SIZE__2DF1BF10]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHBB] ADD  CONSTRAINT [DF__JHBB__F_SIZE__2DF1BF10]  DEFAULT ((39)) FOR [F_SIZE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHBB__F_LENGTH__2EE5E349]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHBB] ADD  CONSTRAINT [DF__JHBB__F_LENGTH__2EE5E349]  DEFAULT ((2794)) FOR [F_LENGTH]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHBB__F_WIDTH__2FDA0782]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHBB] ADD  CONSTRAINT [DF__JHBB__F_WIDTH__2FDA0782]  DEFAULT ((3734)) FOR [F_WIDTH]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHBB__F_ORIENT__30CE2BBB]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHBB] ADD  CONSTRAINT [DF__JHBB__F_ORIENT__30CE2BBB]  DEFAULT ((1)) FOR [F_ORIENT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHBB__F_HZ__31C24FF4]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHBB] ADD  CONSTRAINT [DF__JHBB__F_HZ__31C24FF4]  DEFAULT ((0)) FOR [F_HZ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHBB__F_TITLEFON__32B6742D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHBB] ADD  CONSTRAINT [DF__JHBB__F_TITLEFON__32B6742D]  DEFAULT ('宋体,18,1000') FOR [F_TITLEFONT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHBB__F_BBFONT__33AA9866]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHBB] ADD  CONSTRAINT [DF__JHBB__F_BBFONT__33AA9866]  DEFAULT ('宋体,10,0000') FOR [F_BBFONT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHBB__F_COLNUMBE__349EBC9F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHBB] ADD  CONSTRAINT [DF__JHBB__F_COLNUMBE__349EBC9F]  DEFAULT ((7)) FOR [F_COLNUMBER]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHBB__F_COLCAPTI__3592E0D8]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHBB] ADD  CONSTRAINT [DF__JHBB__F_COLCAPTI__3592E0D8]  DEFAULT ('代码,名称,单位,进货数量,进货金额,进货税额,价税合计,') FOR [F_COLCAPTION]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHBB__F_COLWIDTH__36870511]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHBB] ADD  CONSTRAINT [DF__JHBB__F_COLWIDTH__36870511]  DEFAULT ('7,15,3,7,7,7,7,') FOR [F_COLWIDTH]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHD__F_JS__377B294A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHD] ADD  CONSTRAINT [DF__JHD__F_JS__377B294A]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHD__F_FPXZ__386F4D83]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHD] ADD  CONSTRAINT [DF__JHD__F_FPXZ__386F4D83]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHD2__F_JS__396371BC]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHD2] ADD  CONSTRAINT [DF__JHD2__F_JS__396371BC]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHD2__F_FPXZ__3A5795F5]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHD2] ADD  CONSTRAINT [DF__JHD2__F_FPXZ__3A5795F5]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX__F_SL__3B4BBA2E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_SL__3B4BBA2E]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX__F_DJ__3C3FDE67]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_DJ__3C3FDE67]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX__F_JE__3D3402A0]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_JE__3D3402A0]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX__F_SLV__3E2826D9]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_SLV__3E2826D9]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX__F_SE__3F1C4B12]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_SE__3F1C4B12]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX__F_HJ__40106F4B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_HJ__40106F4B]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX__F_UN__41049384]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_UN__41049384]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF_JHDMX_F_HSDJ]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX] ADD  CONSTRAINT [DF_JHDMX_F_HSDJ]  DEFAULT ((0)) FOR [F_HSDJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX__F_KL__7889D298]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_KL__7889D298]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX2__F_SL__41F8B7BD]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_SL__41F8B7BD]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX2__F_DJ__42ECDBF6]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_DJ__42ECDBF6]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX2__F_JE__43E1002F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_JE__43E1002F]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX2__F_SLV__44D52468]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_SLV__44D52468]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX2__F_SE__45C948A1]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_SE__45C948A1]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX2__F_HJ__46BD6CDA]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_HJ__46BD6CDA]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX2__F_UN__47B19113]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_UN__47B19113]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF_JHDMX2_F_HSDJ]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX2] ADD  CONSTRAINT [DF_JHDMX2_F_HSDJ]  DEFAULT ((0)) FOR [F_HSDJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX2__F_KL__797DF6D1]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_KL__797DF6D1]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX3__F_SL__48A5B54C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_SL__48A5B54C]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX3__F_DJ__4999D985]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_DJ__4999D985]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX3__F_JE__4A8DFDBE]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_JE__4A8DFDBE]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX3__F_SLV__4B8221F7]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_SLV__4B8221F7]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX3__F_SE__4C764630]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_SE__4C764630]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX3__F_HJ__4D6A6A69]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_HJ__4D6A6A69]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX3__F_UN__4E5E8EA2]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_UN__4E5E8EA2]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF_JHDMX3_F_HSDJ]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX3] ADD  CONSTRAINT [DF_JHDMX3_F_HSDJ]  DEFAULT ((0)) FOR [F_HSDJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHDMX3__F_KL__7A721B0A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_KL__7A721B0A]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SL1__4F52B2DB]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL1__4F52B2DB]  DEFAULT ((0)) FOR [F_SL1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SL2__5046D714]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL2__5046D714]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SL3__513AFB4D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL3__513AFB4D]  DEFAULT ((0)) FOR [F_SL3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SL4__522F1F86]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL4__522F1F86]  DEFAULT ((0)) FOR [F_SL4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SL5__532343BF]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL5__532343BF]  DEFAULT ((0)) FOR [F_SL5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SL6__541767F8]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL6__541767F8]  DEFAULT ((0)) FOR [F_SL6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SL7__550B8C31]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL7__550B8C31]  DEFAULT ((0)) FOR [F_SL7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SL8__55FFB06A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL8__55FFB06A]  DEFAULT ((0)) FOR [F_SL8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SL9__56F3D4A3]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL9__56F3D4A3]  DEFAULT ((0)) FOR [F_SL9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SL10__57E7F8DC]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL10__57E7F8DC]  DEFAULT ((0)) FOR [F_SL10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SL11__58DC1D15]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL11__58DC1D15]  DEFAULT ((0)) FOR [F_SL11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SL12__59D0414E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL12__59D0414E]  DEFAULT ((0)) FOR [F_SL12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_JE1__5AC46587]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE1__5AC46587]  DEFAULT ((0)) FOR [F_JE1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_JE2__5BB889C0]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE2__5BB889C0]  DEFAULT ((0)) FOR [F_JE2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_JE3__5CACADF9]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE3__5CACADF9]  DEFAULT ((0)) FOR [F_JE3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_JE4__5DA0D232]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE4__5DA0D232]  DEFAULT ((0)) FOR [F_JE4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_JE5__5E94F66B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE5__5E94F66B]  DEFAULT ((0)) FOR [F_JE5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_JE6__5F891AA4]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE6__5F891AA4]  DEFAULT ((0)) FOR [F_JE6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_JE7__607D3EDD]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE7__607D3EDD]  DEFAULT ((0)) FOR [F_JE7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_JE8__61716316]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE8__61716316]  DEFAULT ((0)) FOR [F_JE8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_JE9__6265874F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE9__6265874F]  DEFAULT ((0)) FOR [F_JE9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_JE10__6359AB88]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE10__6359AB88]  DEFAULT ((0)) FOR [F_JE10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_JE11__644DCFC1]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE11__644DCFC1]  DEFAULT ((0)) FOR [F_JE11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_JE12__6541F3FA]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE12__6541F3FA]  DEFAULT ((0)) FOR [F_JE12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SE1__66361833]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE1__66361833]  DEFAULT ((0)) FOR [F_SE1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SE2__672A3C6C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE2__672A3C6C]  DEFAULT ((0)) FOR [F_SE2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SE3__681E60A5]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE3__681E60A5]  DEFAULT ((0)) FOR [F_SE3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SE4__691284DE]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE4__691284DE]  DEFAULT ((0)) FOR [F_SE4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SE5__6A06A917]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE5__6A06A917]  DEFAULT ((0)) FOR [F_SE5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SE6__6AFACD50]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE6__6AFACD50]  DEFAULT ((0)) FOR [F_SE6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SE7__6BEEF189]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE7__6BEEF189]  DEFAULT ((0)) FOR [F_SE7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SE8__6CE315C2]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE8__6CE315C2]  DEFAULT ((0)) FOR [F_SE8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SE9__6DD739FB]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE9__6DD739FB]  DEFAULT ((0)) FOR [F_SE9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SE10__6ECB5E34]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE10__6ECB5E34]  DEFAULT ((0)) FOR [F_SE10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SE11__6FBF826D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE11__6FBF826D]  DEFAULT ((0)) FOR [F_SE11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JHZZ__F_SE12__70B3A6A6]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE12__70B3A6A6]  DEFAULT ((0)) FOR [F_SE12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JXCBB2__F_TOP__71A7CADF]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JXCBB2] ADD  CONSTRAINT [DF__JXCBB2__F_TOP__71A7CADF]  DEFAULT ((20)) FOR [F_TOP]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JXCBB2__F_LEFT__729BEF18]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JXCBB2] ADD  CONSTRAINT [DF__JXCBB2__F_LEFT__729BEF18]  DEFAULT ((20)) FOR [F_LEFT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JXCBB2__F_ROWS__73901351]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JXCBB2] ADD  CONSTRAINT [DF__JXCBB2__F_ROWS__73901351]  DEFAULT ((40)) FOR [F_ROWS]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JXCBB2__F_SIZE__7484378A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JXCBB2] ADD  CONSTRAINT [DF__JXCBB2__F_SIZE__7484378A]  DEFAULT ((39)) FOR [F_SIZE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JXCBB2__F_LENGTH__75785BC3]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JXCBB2] ADD  CONSTRAINT [DF__JXCBB2__F_LENGTH__75785BC3]  DEFAULT ((1379)) FOR [F_LENGTH]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JXCBB2__F_WIDTH__766C7FFC]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JXCBB2] ADD  CONSTRAINT [DF__JXCBB2__F_WIDTH__766C7FFC]  DEFAULT ((3937)) FOR [F_WIDTH]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JXCBB2__F_ORIENT__7760A435]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JXCBB2] ADD  CONSTRAINT [DF__JXCBB2__F_ORIENT__7760A435]  DEFAULT ((1)) FOR [F_ORIENT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JXCBB2__F_TITLEF__7854C86E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JXCBB2] ADD  CONSTRAINT [DF__JXCBB2__F_TITLEF__7854C86E]  DEFAULT ('宋体,18,0000') FOR [F_TITLEFONT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JXCBB2__F_BBFONT__7948ECA7]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JXCBB2] ADD  CONSTRAINT [DF__JXCBB2__F_BBFONT__7948ECA7]  DEFAULT ('宋体,10,0000') FOR [F_BBFONT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__JXCBB2__F_ROWSPA__7A3D10E0]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[JXCBB2] ADD  CONSTRAINT [DF__JXCBB2__F_ROWSPA__7A3D10E0]  DEFAULT ((1)) FOR [F_ROWSPACE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCMXZ__F_SLS__7B313519]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCMXZ] ADD  CONSTRAINT [DF__KCMXZ__F_SLS__7B313519]  DEFAULT ((0)) FOR [F_SLS]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCMXZ__F_JES__7C255952]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCMXZ] ADD  CONSTRAINT [DF__KCMXZ__F_JES__7C255952]  DEFAULT ((0)) FOR [F_JES]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCMXZ__F_SLF__7D197D8B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCMXZ] ADD  CONSTRAINT [DF__KCMXZ__F_SLF__7D197D8B]  DEFAULT ((0)) FOR [F_SLF]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCMXZ__F_JEF__7E0DA1C4]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCMXZ] ADD  CONSTRAINT [DF__KCMXZ__F_JEF__7E0DA1C4]  DEFAULT ((0)) FOR [F_JEF]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCYE__F_SLYE__7F01C5FD]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCYE] ADD  CONSTRAINT [DF__KCYE__F_SLYE__7F01C5FD]  DEFAULT ((0)) FOR [F_SLYE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SL0__7FF5EA36]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SL0__7FF5EA36]  DEFAULT ((0)) FOR [F_SL0]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JE0__00EA0E6F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JE0__00EA0E6F]  DEFAULT ((0)) FOR [F_JE0]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLYE__01DE32A8]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLYE__01DE32A8]  DEFAULT ((0)) FOR [F_SLYE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JEYE__02D256E1]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEYE__02D256E1]  DEFAULT ((0)) FOR [F_JEYE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_PJDJ__03C67B1A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_PJDJ__03C67B1A]  DEFAULT ((0)) FOR [F_PJDJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JE__04BA9F53]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JE__04BA9F53]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JJ__05AEC38C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JJ__05AEC38C]  DEFAULT ((0)) FOR [F_JJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLS1__06A2E7C5]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS1__06A2E7C5]  DEFAULT ((0)) FOR [F_SLS1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLS2__07970BFE]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS2__07970BFE]  DEFAULT ((0)) FOR [F_SLS2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLS3__088B3037]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS3__088B3037]  DEFAULT ((0)) FOR [F_SLS3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLS4__097F5470]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS4__097F5470]  DEFAULT ((0)) FOR [F_SLS4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLS5__0A7378A9]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS5__0A7378A9]  DEFAULT ((0)) FOR [F_SLS5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLS6__0B679CE2]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS6__0B679CE2]  DEFAULT ((0)) FOR [F_SLS6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLS7__0C5BC11B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS7__0C5BC11B]  DEFAULT ((0)) FOR [F_SLS7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLS8__0D4FE554]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS8__0D4FE554]  DEFAULT ((0)) FOR [F_SLS8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLS9__0E44098D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS9__0E44098D]  DEFAULT ((0)) FOR [F_SLS9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLS10__0F382DC6]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS10__0F382DC6]  DEFAULT ((0)) FOR [F_SLS10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLS11__102C51FF]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS11__102C51FF]  DEFAULT ((0)) FOR [F_SLS11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLS12__11207638]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS12__11207638]  DEFAULT ((0)) FOR [F_SLS12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JES1__12149A71]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES1__12149A71]  DEFAULT ((0)) FOR [F_JES1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JES2__1308BEAA]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES2__1308BEAA]  DEFAULT ((0)) FOR [F_JES2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JES3__13FCE2E3]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES3__13FCE2E3]  DEFAULT ((0)) FOR [F_JES3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JES4__14F1071C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES4__14F1071C]  DEFAULT ((0)) FOR [F_JES4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JES5__15E52B55]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES5__15E52B55]  DEFAULT ((0)) FOR [F_JES5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JES6__16D94F8E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES6__16D94F8E]  DEFAULT ((0)) FOR [F_JES6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JES7__17CD73C7]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES7__17CD73C7]  DEFAULT ((0)) FOR [F_JES7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JES8__18C19800]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES8__18C19800]  DEFAULT ((0)) FOR [F_JES8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JES9__19B5BC39]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES9__19B5BC39]  DEFAULT ((0)) FOR [F_JES9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JES10__1AA9E072]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES10__1AA9E072]  DEFAULT ((0)) FOR [F_JES10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JES11__1B9E04AB]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES11__1B9E04AB]  DEFAULT ((0)) FOR [F_JES11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JES12__1C9228E4]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES12__1C9228E4]  DEFAULT ((0)) FOR [F_JES12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLF1__1D864D1D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF1__1D864D1D]  DEFAULT ((0)) FOR [F_SLF1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLF2__1E7A7156]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF2__1E7A7156]  DEFAULT ((0)) FOR [F_SLF2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLF3__1F6E958F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF3__1F6E958F]  DEFAULT ((0)) FOR [F_SLF3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLF4__2062B9C8]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF4__2062B9C8]  DEFAULT ((0)) FOR [F_SLF4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLF5__2156DE01]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF5__2156DE01]  DEFAULT ((0)) FOR [F_SLF5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLF6__224B023A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF6__224B023A]  DEFAULT ((0)) FOR [F_SLF6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLF7__233F2673]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF7__233F2673]  DEFAULT ((0)) FOR [F_SLF7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLF8__24334AAC]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF8__24334AAC]  DEFAULT ((0)) FOR [F_SLF8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLF9__25276EE5]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF9__25276EE5]  DEFAULT ((0)) FOR [F_SLF9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLF10__261B931E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF10__261B931E]  DEFAULT ((0)) FOR [F_SLF10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLF11__270FB757]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF11__270FB757]  DEFAULT ((0)) FOR [F_SLF11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_SLF12__2803DB90]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF12__2803DB90]  DEFAULT ((0)) FOR [F_SLF12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JEF1__28F7FFC9]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF1__28F7FFC9]  DEFAULT ((0)) FOR [F_JEF1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JEF2__29EC2402]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF2__29EC2402]  DEFAULT ((0)) FOR [F_JEF2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JEF3__2AE0483B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF3__2AE0483B]  DEFAULT ((0)) FOR [F_JEF3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JEF4__2BD46C74]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF4__2BD46C74]  DEFAULT ((0)) FOR [F_JEF4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JEF5__2CC890AD]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF5__2CC890AD]  DEFAULT ((0)) FOR [F_JEF5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JEF6__2DBCB4E6]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF6__2DBCB4E6]  DEFAULT ((0)) FOR [F_JEF6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JEF7__2EB0D91F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF7__2EB0D91F]  DEFAULT ((0)) FOR [F_JEF7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JEF8__2FA4FD58]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF8__2FA4FD58]  DEFAULT ((0)) FOR [F_JEF8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JEF9__30992191]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF9__30992191]  DEFAULT ((0)) FOR [F_JEF9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JEF10__318D45CA]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF10__318D45CA]  DEFAULT ((0)) FOR [F_JEF10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JEF11__32816A03]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF11__32816A03]  DEFAULT ((0)) FOR [F_JEF11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__KCZZ__F_JEF12__33758E3C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF12__33758E3C]  DEFAULT ((0)) FOR [F_JEF12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__LSH__F_J1__3469B275]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[LSH] ADD  CONSTRAINT [DF__LSH__F_J1__3469B275]  DEFAULT ((0)) FOR [F_J1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__LSH__F_J2__355DD6AE]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[LSH] ADD  CONSTRAINT [DF__LSH__F_J2__355DD6AE]  DEFAULT ((0)) FOR [F_J2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__LSH__F_J3__3651FAE7]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[LSH] ADD  CONSTRAINT [DF__LSH__F_J3__3651FAE7]  DEFAULT ((0)) FOR [F_J3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__LSH__F_J4__37461F20]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[LSH] ADD  CONSTRAINT [DF__LSH__F_J4__37461F20]  DEFAULT ((0)) FOR [F_J4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__LSH__F_J5__383A4359]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[LSH] ADD  CONSTRAINT [DF__LSH__F_J5__383A4359]  DEFAULT ((0)) FOR [F_J5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__LSH__F_R1__392E6792]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[LSH] ADD  CONSTRAINT [DF__LSH__F_R1__392E6792]  DEFAULT ((0)) FOR [F_R1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__LSH__F_R2__3A228BCB]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[LSH] ADD  CONSTRAINT [DF__LSH__F_R2__3A228BCB]  DEFAULT ((0)) FOR [F_R2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__LSH__F_R3__3B16B004]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[LSH] ADD  CONSTRAINT [DF__LSH__F_R3__3B16B004]  DEFAULT ((0)) FOR [F_R3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__LSH__F_R4__3C0AD43D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[LSH] ADD  CONSTRAINT [DF__LSH__F_R4__3C0AD43D]  DEFAULT ((0)) FOR [F_R4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__LSH__F_R5__3CFEF876]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[LSH] ADD  CONSTRAINT [DF__LSH__F_R5__3CFEF876]  DEFAULT ((0)) FOR [F_R5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PDDMX__F_DJ2__7D8E7ED7]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PDDMX] ADD  CONSTRAINT [DF__PDDMX__F_DJ2__7D8E7ED7]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PDDMX2__F_DJ2__7E82A310]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PDDMX2] ADD  CONSTRAINT [DF__PDDMX2__F_DJ2__7E82A310]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PDDMX3__F_DJ2__7F76C749]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PDDMX3] ADD  CONSTRAINT [DF__PDDMX3__F_DJ2__7F76C749]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__POWERITEM__F_CLA__3DF31CAF]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[POWERITEM] ADD  CONSTRAINT [DF__POWERITEM__F_CLA__3DF31CAF]  DEFAULT ('') FOR [F_CLASSNAME]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PRINTCOLH__F_FON__3EE740E8]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PRINTCOLHEADER] ADD  CONSTRAINT [DF__PRINTCOLH__F_FON__3EE740E8]  DEFAULT ('宋体,10,1000') FOR [F_FONT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PRINTFIEL__F_FON__3FDB6521]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PRINTFIELD] ADD  CONSTRAINT [DF__PRINTFIEL__F_FON__3FDB6521]  DEFAULT ('宋体,10,1000') FOR [F_FONT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PRINTFIEL__F_CAP__40CF895A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PRINTFIELD] ADD  CONSTRAINT [DF__PRINTFIEL__F_CAP__40CF895A]  DEFAULT ('宋体,10,1000') FOR [F_CAPTIONFONT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PRINTPAGE__F_FON__41C3AD93]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PRINTPAGEFOOTER] ADD  CONSTRAINT [DF__PRINTPAGE__F_FON__41C3AD93]  DEFAULT ('宋体,10,1000') FOR [F_FONTLEFT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PRINTPAGE__F_FON__42B7D1CC]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PRINTPAGEFOOTER] ADD  CONSTRAINT [DF__PRINTPAGE__F_FON__42B7D1CC]  DEFAULT ('宋体,10,1000') FOR [F_FONTCENTER]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PRINTPAGE__F_FON__43ABF605]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PRINTPAGEFOOTER] ADD  CONSTRAINT [DF__PRINTPAGE__F_FON__43ABF605]  DEFAULT ('宋体,10,1000') FOR [F_FONTRIGHT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PRINTPAGE__F_ROW__44A01A3E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PRINTPAGEFOOTER] ADD  CONSTRAINT [DF__PRINTPAGE__F_ROW__44A01A3E]  DEFAULT ((1.5)) FOR [F_ROWSPACE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PRINTPAGE__F_FON__45943E77]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PRINTPAGEHEADER] ADD  CONSTRAINT [DF__PRINTPAGE__F_FON__45943E77]  DEFAULT ('宋体,10,1000') FOR [F_FONTLEFT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PRINTPAGE__F_FON__468862B0]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PRINTPAGEHEADER] ADD  CONSTRAINT [DF__PRINTPAGE__F_FON__468862B0]  DEFAULT ('宋体,10,1000') FOR [F_FONTCENTER]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PRINTPAGE__F_FON__477C86E9]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PRINTPAGEHEADER] ADD  CONSTRAINT [DF__PRINTPAGE__F_FON__477C86E9]  DEFAULT ('宋体,10,1000') FOR [F_FONTRIGHT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PRINTPAGE__F_ROW__4870AB22]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PRINTPAGEHEADER] ADD  CONSTRAINT [DF__PRINTPAGE__F_ROW__4870AB22]  DEFAULT ((1.5)) FOR [F_ROWSPACE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PRINTPARA__F_TOP__4964CF5B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PRINTPARAM] ADD  CONSTRAINT [DF__PRINTPARA__F_TOP__4964CF5B]  DEFAULT ((0)) FOR [F_TOP]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PRINTPARA__F_LEF__4A58F394]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PRINTPARAM] ADD  CONSTRAINT [DF__PRINTPARA__F_LEF__4A58F394]  DEFAULT ((0)) FOR [F_LEFT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PRINTPARA__F_PAP__4B4D17CD]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PRINTPARAM] ADD  CONSTRAINT [DF__PRINTPARA__F_PAP__4B4D17CD]  DEFAULT ((0)) FOR [F_PAPERSIZE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PRINTPARA__F_PAP__4C413C06]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PRINTPARAM] ADD  CONSTRAINT [DF__PRINTPARA__F_PAP__4C413C06]  DEFAULT ((0)) FOR [F_PAPERWIDTH]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PRINTPARA__F_PAP__4D35603F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PRINTPARAM] ADD  CONSTRAINT [DF__PRINTPARA__F_PAP__4D35603F]  DEFAULT ((0)) FOR [F_PAPERLENGTH]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PRINTPARA__F_ORI__4E298478]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PRINTPARAM] ADD  CONSTRAINT [DF__PRINTPARA__F_ORI__4E298478]  DEFAULT ((0)) FOR [F_ORIENT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PRINTPARA__F_ROW__4F1DA8B1]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PRINTPARAM] ADD  CONSTRAINT [DF__PRINTPARA__F_ROW__4F1DA8B1]  DEFAULT ((0)) FOR [F_ROWS]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PRINTPARA__F_COL__5011CCEA]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PRINTPARAM] ADD  CONSTRAINT [DF__PRINTPARA__F_COL__5011CCEA]  DEFAULT ((0)) FOR [F_COLNUMBER]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PRINTPARA__F_DEF__5105F123]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PRINTPARAME] ADD  CONSTRAINT [DF__PRINTPARA__F_DEF__5105F123]  DEFAULT ('宋体,10,1000') FOR [F_DEFAULTFONT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PRINTPARA__F_TIT__51FA155C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PRINTPARAME] ADD  CONSTRAINT [DF__PRINTPARA__F_TIT__51FA155C]  DEFAULT ('宋体,10,1000') FOR [F_TITLEFONT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PSDMX__F_SL1__52EE3995]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PSDMX] ADD  CONSTRAINT [DF__PSDMX__F_SL1__52EE3995]  DEFAULT ((0)) FOR [F_SL1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PSDMX__F_SL2__53E25DCE]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PSDMX] ADD  CONSTRAINT [DF__PSDMX__F_SL2__53E25DCE]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PSDMX__F_SL3__54D68207]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PSDMX] ADD  CONSTRAINT [DF__PSDMX__F_SL3__54D68207]  DEFAULT ((0)) FOR [F_SL3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PSDMX__F_SL4__55CAA640]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PSDMX] ADD  CONSTRAINT [DF__PSDMX__F_SL4__55CAA640]  DEFAULT ((0)) FOR [F_SL4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PSDMX__F_SL5__56BECA79]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PSDMX] ADD  CONSTRAINT [DF__PSDMX__F_SL5__56BECA79]  DEFAULT ((0)) FOR [F_SL5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PSDMX__F_SL6__57B2EEB2]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PSDMX] ADD  CONSTRAINT [DF__PSDMX__F_SL6__57B2EEB2]  DEFAULT ((0)) FOR [F_SL6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PSDMX__F_SL7__58A712EB]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PSDMX] ADD  CONSTRAINT [DF__PSDMX__F_SL7__58A712EB]  DEFAULT ((0)) FOR [F_SL7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__PSDMX__F_SL__599B3724]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[PSDMX] ADD  CONSTRAINT [DF__PSDMX__F_SL__599B3724]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDD__F_PSZQ__62707447]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDD] ADD  CONSTRAINT [DF__QDD__F_PSZQ__62707447]  DEFAULT ((30)) FOR [F_PSZQ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDD__F_LJZQ__63649880]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDD] ADD  CONSTRAINT [DF__QDD__F_LJZQ__63649880]  DEFAULT ((30)) FOR [F_LJZQ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDD2__F_PSZQ__6641052B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDD2] ADD  CONSTRAINT [DF__QDD2__F_PSZQ__6641052B]  DEFAULT ((30)) FOR [F_PSZQ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDD2__F_LJZQ__67352964]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDD2] ADD  CONSTRAINT [DF__QDD2__F_LJZQ__67352964]  DEFAULT ((30)) FOR [F_LJZQ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDD3__F_PSZQ__6A11960F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDD3] ADD  CONSTRAINT [DF__QDD3__F_PSZQ__6A11960F]  DEFAULT ((30)) FOR [F_PSZQ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDD3__F_LJZQ__6B05BA48]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDD3] ADD  CONSTRAINT [DF__QDD3__F_LJZQ__6B05BA48]  DEFAULT ((30)) FOR [F_LJZQ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX__F_SL__3B219CFC]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__F_SL__3B219CFC]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX__F_SL2__3C15C135]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__F_SL2__3C15C135]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX__F_SLJC__3D09E56E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__F_SLJC__3D09E56E]  DEFAULT ((0)) FOR [F_SLJC]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX__F_RJXL__3DFE09A7]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__F_RJXL__3DFE09A7]  DEFAULT ((0)) FOR [F_RJXL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX__F_JYSL__3EF22DE0]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__F_JYSL__3EF22DE0]  DEFAULT ((0)) FOR [F_JYSL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX__F_DJ1__3FE65219]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__F_DJ1__3FE65219]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX__F_DJ2__40DA7652]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__F_DJ2__40DA7652]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX__F_DJ3__41CE9A8B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__F_DJ3__41CE9A8B]  DEFAULT ((0)) FOR [F_DJ3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX__F_DJ4__42C2BEC4]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__F_DJ4__42C2BEC4]  DEFAULT ((0)) FOR [F_DJ4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX__F_DJ5__43B6E2FD]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__F_DJ5__43B6E2FD]  DEFAULT ((0)) FOR [F_DJ5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX2__F_SL__46934FA8]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__F_SL__46934FA8]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX2__F_SL2__478773E1]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__F_SL2__478773E1]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX2__F_SLJC__487B981A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__F_SLJC__487B981A]  DEFAULT ((0)) FOR [F_SLJC]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX2__F_RJXL__496FBC53]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__F_RJXL__496FBC53]  DEFAULT ((0)) FOR [F_RJXL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX2__F_JYSL__4A63E08C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__F_JYSL__4A63E08C]  DEFAULT ((0)) FOR [F_JYSL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX2__F_DJ1__4B5804C5]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__F_DJ1__4B5804C5]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX2__F_DJ2__4C4C28FE]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__F_DJ2__4C4C28FE]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX2__F_DJ3__4D404D37]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__F_DJ3__4D404D37]  DEFAULT ((0)) FOR [F_DJ3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX2__F_DJ4__4E347170]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__F_DJ4__4E347170]  DEFAULT ((0)) FOR [F_DJ4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX2__F_DJ5__4F2895A9]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__F_DJ5__4F2895A9]  DEFAULT ((0)) FOR [F_DJ5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX3__F_SL__52050254]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__F_SL__52050254]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX3__F_SL2__52F9268D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__F_SL2__52F9268D]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX3__F_SLJC__53ED4AC6]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__F_SLJC__53ED4AC6]  DEFAULT ((0)) FOR [F_SLJC]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX3__F_RJXL__54E16EFF]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__F_RJXL__54E16EFF]  DEFAULT ((0)) FOR [F_RJXL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX3__F_JYSL__55D59338]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__F_JYSL__55D59338]  DEFAULT ((0)) FOR [F_JYSL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX3__F_DJ1__56C9B771]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__F_DJ1__56C9B771]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX3__F_DJ2__57BDDBAA]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__F_DJ2__57BDDBAA]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX3__F_DJ3__58B1FFE3]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__F_DJ3__58B1FFE3]  DEFAULT ((0)) FOR [F_DJ3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX3__F_DJ4__59A6241C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__F_DJ4__59A6241C]  DEFAULT ((0)) FOR [F_DJ4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__QDDMX3__F_DJ5__5A9A4855]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__F_DJ5__5A9A4855]  DEFAULT ((0)) FOR [F_DJ5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RETAIL__F_SL__5A8F5B5D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RETAIL] ADD  CONSTRAINT [DF__RETAIL__F_SL__5A8F5B5D]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RETAIL__F_DJ__5B837F96]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RETAIL] ADD  CONSTRAINT [DF__RETAIL__F_DJ__5B837F96]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RETAIL__F_JE__5C77A3CF]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RETAIL] ADD  CONSTRAINT [DF__RETAIL__F_JE__5C77A3CF]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RETAIL__F_JS__5D6BC808]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RETAIL] ADD  CONSTRAINT [DF__RETAIL__F_JS__5D6BC808]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RETAIL__F_KL__5E5FEC41]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RETAIL] ADD  CONSTRAINT [DF__RETAIL__F_KL__5E5FEC41]  DEFAULT ((100)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RETAIL11__F_SL__5F54107A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RETAIL11] ADD  CONSTRAINT [DF__RETAIL11__F_SL__5F54107A]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RETAIL11__F_DJ__604834B3]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RETAIL11] ADD  CONSTRAINT [DF__RETAIL11__F_DJ__604834B3]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RETAIL11__F_JE__613C58EC]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RETAIL11] ADD  CONSTRAINT [DF__RETAIL11__F_JE__613C58EC]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RETAIL11__F_JS__62307D25]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RETAIL11] ADD  CONSTRAINT [DF__RETAIL11__F_JS__62307D25]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RETAIL11__F_KL__6324A15E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RETAIL11] ADD  CONSTRAINT [DF__RETAIL11__F_KL__6324A15E]  DEFAULT ((100)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RETAIL2__F_SL__6418C597]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RETAIL2] ADD  CONSTRAINT [DF__RETAIL2__F_SL__6418C597]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RETAIL2__F_DJ__650CE9D0]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RETAIL2] ADD  CONSTRAINT [DF__RETAIL2__F_DJ__650CE9D0]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RETAIL2__F_JE__66010E09]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RETAIL2] ADD  CONSTRAINT [DF__RETAIL2__F_JE__66010E09]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RETAIL2__F_JS__66F53242]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RETAIL2] ADD  CONSTRAINT [DF__RETAIL2__F_JS__66F53242]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RETAIL2__F_KL__67E9567B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RETAIL2] ADD  CONSTRAINT [DF__RETAIL2__F_KL__67E9567B]  DEFAULT ((100)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RETAILC__F_JE__68DD7AB4]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RETAILC] ADD  CONSTRAINT [DF__RETAILC__F_JE__68DD7AB4]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RETAILC11__F_JE__69D19EED]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RETAILC11] ADD  CONSTRAINT [DF__RETAILC11__F_JE__69D19EED]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RETAILC2__F_JE__6AC5C326]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RETAILC2] ADD  CONSTRAINT [DF__RETAILC2__F_JE__6AC5C326]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RETAILDJ__F_DJH__6BB9E75F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RETAILDJ] ADD  CONSTRAINT [DF__RETAILDJ__F_DJH__6BB9E75F]  DEFAULT ((0)) FOR [F_DJH]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RKD__F_FPXZ__6CAE0B98]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RKD] ADD  CONSTRAINT [DF__RKD__F_FPXZ__6CAE0B98]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RKD__F_SL2__6DA22FD1]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RKD] ADD  CONSTRAINT [DF__RKD__F_SL2__6DA22FD1]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RKD2__F_FPXZ__6E96540A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RKD2] ADD  CONSTRAINT [DF__RKD2__F_FPXZ__6E96540A]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RKD2__F_SL2__6F8A7843]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RKD2] ADD  CONSTRAINT [DF__RKD2__F_SL2__6F8A7843]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RKD3__F_FPXZ__707E9C7C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RKD3] ADD  CONSTRAINT [DF__RKD3__F_FPXZ__707E9C7C]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RKD3__F_SL2__7172C0B5]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RKD3] ADD  CONSTRAINT [DF__RKD3__F_SL2__7172C0B5]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RKDMX__F_SL__7266E4EE]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_SL__7266E4EE]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RKDMX__F_DJ__735B0927]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_DJ__735B0927]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RKDMX__F_JE__744F2D60]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_JE__744F2D60]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RKDMX__F_UN__75435199]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_UN__75435199]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RKDMX__F_YLF__763775D2]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_YLF__763775D2]  DEFAULT ((0)) FOR [F_YLF]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RKDMX__F_JGF__772B9A0B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_JGF__772B9A0B]  DEFAULT ((0)) FOR [F_JGF]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RKDMX__F_SL2__781FBE44]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_SL2__781FBE44]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RKDMX__F_KL__7B663F43]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_KL__7B663F43]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RKDMX2__F_SL__7913E27D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RKDMX2] ADD  CONSTRAINT [DF__RKDMX2__F_SL__7913E27D]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RKDMX2__F_DJ__7A0806B6]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RKDMX2] ADD  CONSTRAINT [DF__RKDMX2__F_DJ__7A0806B6]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RKDMX2__F_JE__7AFC2AEF]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RKDMX2] ADD  CONSTRAINT [DF__RKDMX2__F_JE__7AFC2AEF]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RKDMX2__F_UN__7BF04F28]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RKDMX2] ADD  CONSTRAINT [DF__RKDMX2__F_UN__7BF04F28]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RKDMX2__F_SL2__7CE47361]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RKDMX2] ADD  CONSTRAINT [DF__RKDMX2__F_SL2__7CE47361]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RKDMX2__F_KL__7C5A637C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RKDMX2] ADD  CONSTRAINT [DF__RKDMX2__F_KL__7C5A637C]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RKDMX3__F_SL2__7DD8979A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RKDMX3] ADD  CONSTRAINT [DF__RKDMX3__F_SL2__7DD8979A]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__RKDMX3__F_KL__7D4E87B5]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[RKDMX3] ADD  CONSTRAINT [DF__RKDMX3__F_KL__7D4E87B5]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJMXZ__F_JXSE__7ECCBBD3]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJMXZ] ADD  CONSTRAINT [DF__SJMXZ__F_JXSE__7ECCBBD3]  DEFAULT ((0)) FOR [F_JXSE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJMXZ__F_XXSE__7FC0E00C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJMXZ] ADD  CONSTRAINT [DF__SJMXZ__F_XXSE__7FC0E00C]  DEFAULT ((0)) FOR [F_XXSE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJMXZ__F_ZCSE__00B50445]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJMXZ] ADD  CONSTRAINT [DF__SJMXZ__F_ZCSE__00B50445]  DEFAULT ((0)) FOR [F_ZCSE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_JXS1__01A9287E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS1__01A9287E]  DEFAULT ((0)) FOR [F_JXS1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_JXS2__029D4CB7]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS2__029D4CB7]  DEFAULT ((0)) FOR [F_JXS2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_JXS3__039170F0]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS3__039170F0]  DEFAULT ((0)) FOR [F_JXS3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_JXS4__04859529]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS4__04859529]  DEFAULT ((0)) FOR [F_JXS4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_JXS5__0579B962]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS5__0579B962]  DEFAULT ((0)) FOR [F_JXS5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_JXS6__066DDD9B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS6__066DDD9B]  DEFAULT ((0)) FOR [F_JXS6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_JXS7__076201D4]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS7__076201D4]  DEFAULT ((0)) FOR [F_JXS7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_JXS8__0856260D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS8__0856260D]  DEFAULT ((0)) FOR [F_JXS8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_JXS9__094A4A46]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS9__094A4A46]  DEFAULT ((0)) FOR [F_JXS9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_JXS10__0A3E6E7F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS10__0A3E6E7F]  DEFAULT ((0)) FOR [F_JXS10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_JXS11__0B3292B8]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS11__0B3292B8]  DEFAULT ((0)) FOR [F_JXS11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_JXS12__0C26B6F1]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS12__0C26B6F1]  DEFAULT ((0)) FOR [F_JXS12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_XXS1__0D1ADB2A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS1__0D1ADB2A]  DEFAULT ((0)) FOR [F_XXS1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_XXS2__0E0EFF63]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS2__0E0EFF63]  DEFAULT ((0)) FOR [F_XXS2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_XXS3__0F03239C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS3__0F03239C]  DEFAULT ((0)) FOR [F_XXS3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_XXS4__0FF747D5]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS4__0FF747D5]  DEFAULT ((0)) FOR [F_XXS4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_XXS5__10EB6C0E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS5__10EB6C0E]  DEFAULT ((0)) FOR [F_XXS5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_XXS6__11DF9047]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS6__11DF9047]  DEFAULT ((0)) FOR [F_XXS6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_XXS7__12D3B480]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS7__12D3B480]  DEFAULT ((0)) FOR [F_XXS7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_XXS8__13C7D8B9]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS8__13C7D8B9]  DEFAULT ((0)) FOR [F_XXS8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_XXS9__14BBFCF2]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS9__14BBFCF2]  DEFAULT ((0)) FOR [F_XXS9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_XXS10__15B0212B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS10__15B0212B]  DEFAULT ((0)) FOR [F_XXS10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_XXS11__16A44564]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS11__16A44564]  DEFAULT ((0)) FOR [F_XXS11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_XXS12__1798699D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS12__1798699D]  DEFAULT ((0)) FOR [F_XXS12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_ZCS1__188C8DD6]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS1__188C8DD6]  DEFAULT ((0)) FOR [F_ZCS1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_ZCS2__1980B20F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS2__1980B20F]  DEFAULT ((0)) FOR [F_ZCS2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_ZCS3__1A74D648]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS3__1A74D648]  DEFAULT ((0)) FOR [F_ZCS3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_ZCS4__1B68FA81]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS4__1B68FA81]  DEFAULT ((0)) FOR [F_ZCS4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_ZCS5__1C5D1EBA]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS5__1C5D1EBA]  DEFAULT ((0)) FOR [F_ZCS5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_ZCS6__1D5142F3]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS6__1D5142F3]  DEFAULT ((0)) FOR [F_ZCS6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_ZCS7__1E45672C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS7__1E45672C]  DEFAULT ((0)) FOR [F_ZCS7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_ZCS8__1F398B65]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS8__1F398B65]  DEFAULT ((0)) FOR [F_ZCS8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_ZCS9__202DAF9E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS9__202DAF9E]  DEFAULT ((0)) FOR [F_ZCS9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_ZCS10__2121D3D7]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS10__2121D3D7]  DEFAULT ((0)) FOR [F_ZCS10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_ZCS11__2215F810]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS11__2215F810]  DEFAULT ((0)) FOR [F_ZCS11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SJZZ__F_ZCS12__230A1C49]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS12__230A1C49]  DEFAULT ((0)) FOR [F_ZCS12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SP__F_IFSJ__2D87AABC]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SP] ADD  CONSTRAINT [DF__SP__F_IFSJ__2D87AABC]  DEFAULT ('') FOR [F_IFSJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SP__F_FUNCTION__2F6FF32E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SP] ADD  CONSTRAINT [DF__SP__F_FUNCTION__2F6FF32E]  DEFAULT ('') FOR [F_FUNCTION]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SP__F_MAXPC__2C938683]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SP] ADD  CONSTRAINT [DF__SP__F_MAXPC__2C938683]  DEFAULT ((0)) FOR [F_MAXPC]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SP__F_UN1__30641767]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SP] ADD  CONSTRAINT [DF__SP__F_UN1__30641767]  DEFAULT ((0)) FOR [F_UN1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SP__F_UN2__31583BA0]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SP] ADD  CONSTRAINT [DF__SP__F_UN2__31583BA0]  DEFAULT ((0)) FOR [F_UN2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SP__F_UN3__324C5FD9]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SP] ADD  CONSTRAINT [DF__SP__F_UN3__324C5FD9]  DEFAULT ((0)) FOR [F_UN3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SP__F_UN4__33408412]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SP] ADD  CONSTRAINT [DF__SP__F_UN4__33408412]  DEFAULT ((0)) FOR [F_UN4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SP__F_UN5__3434A84B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SP] ADD  CONSTRAINT [DF__SP__F_UN5__3434A84B]  DEFAULT ((0)) FOR [F_UN5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SP__F_DJ1__26DAAD2D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SP] ADD  CONSTRAINT [DF__SP__F_DJ1__26DAAD2D]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SP__F_DJ2__27CED166]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SP] ADD  CONSTRAINT [DF__SP__F_DJ2__27CED166]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SP__F_DJ3__28C2F59F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SP] ADD  CONSTRAINT [DF__SP__F_DJ3__28C2F59F]  DEFAULT ((0)) FOR [F_DJ3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SP__F_DJ4__29B719D8]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SP] ADD  CONSTRAINT [DF__SP__F_DJ4__29B719D8]  DEFAULT ((0)) FOR [F_DJ4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SP__F_DJ5__2AAB3E11]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SP] ADD  CONSTRAINT [DF__SP__F_DJ5__2AAB3E11]  DEFAULT ((0)) FOR [F_DJ5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SP__F_DWCB__2B9F624A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SP] ADD  CONSTRAINT [DF__SP__F_DWCB__2B9F624A]  DEFAULT ((0)) FOR [F_DWCB]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SP__F_RATE__2E7BCEF5]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SP] ADD  CONSTRAINT [DF__SP__F_RATE__2E7BCEF5]  DEFAULT ((0)) FOR [F_RATE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SP__F_MAXJJ__3528CC84]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SP] ADD  CONSTRAINT [DF__SP__F_MAXJJ__3528CC84]  DEFAULT ((0)) FOR [F_MAXJJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SP__F_MINJJ__361CF0BD]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SP] ADD  CONSTRAINT [DF__SP__F_MINJJ__361CF0BD]  DEFAULT ((0)) FOR [F_MINJJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SP__F_RECENTJJ__371114F6]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SP] ADD  CONSTRAINT [DF__SP__F_RECENTJJ__371114F6]  DEFAULT ((0)) FOR [F_RECENTJJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF_SP_F_CS]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SP] ADD  CONSTRAINT [DF_SP_F_CS]  DEFAULT ((1)) FOR [F_CS]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SP__F_MAXSL__23FE4082]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SP] ADD  CONSTRAINT [DF__SP__F_MAXSL__23FE4082]  DEFAULT ((0)) FOR [F_MAXSL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SP__F_MINSL__24F264BB]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SP] ADD  CONSTRAINT [DF__SP__F_MINSL__24F264BB]  DEFAULT ((0)) FOR [F_MINSL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SP__F_SLV__25E688F4]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SP] ADD  CONSTRAINT [DF__SP__F_SLV__25E688F4]  DEFAULT ((0.17)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SPDOWN__F_MAXSL__3805392F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_MAXSL__3805392F]  DEFAULT ((0)) FOR [F_MAXSL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SPDOWN__F_MINSL__38F95D68]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_MINSL__38F95D68]  DEFAULT ((0)) FOR [F_MINSL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SPDOWN__F_SLV__39ED81A1]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_SLV__39ED81A1]  DEFAULT ((0.17)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SPDOWN__F_DJ1__3AE1A5DA]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_DJ1__3AE1A5DA]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SPDOWN__F_DJ2__3BD5CA13]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_DJ2__3BD5CA13]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SPDOWN__F_DJ3__3CC9EE4C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_DJ3__3CC9EE4C]  DEFAULT ((0)) FOR [F_DJ3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SPDOWN__F_DJ4__3DBE1285]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_DJ4__3DBE1285]  DEFAULT ((0)) FOR [F_DJ4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SPDOWN__F_DJ5__3EB236BE]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_DJ5__3EB236BE]  DEFAULT ((0)) FOR [F_DJ5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SPDOWN__F_DWCB__3FA65AF7]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_DWCB__3FA65AF7]  DEFAULT ((0)) FOR [F_DWCB]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SPDOWN__F_MAXPC__409A7F30]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_MAXPC__409A7F30]  DEFAULT ((0)) FOR [F_MAXPC]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SPDOWN__F_IFSJ__418EA369]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_IFSJ__418EA369]  DEFAULT ('') FOR [F_IFSJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SPDOWN__F_RATE__4282C7A2]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_RATE__4282C7A2]  DEFAULT ((0)) FOR [F_RATE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SPDOWN__F_FUNCTI__4376EBDB]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_FUNCTI__4376EBDB]  DEFAULT ('') FOR [F_FUNCTION]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF_SPDOWN_F_UN1]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_F_UN1]  DEFAULT ((0)) FOR [F_UN1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF_SPDOWN_F_UN2]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_F_UN2]  DEFAULT ((0)) FOR [F_UN2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF_SPDOWN_F_UN3]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_F_UN3]  DEFAULT ((0)) FOR [F_UN3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF_SPDOWN_F_UN4]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_F_UN4]  DEFAULT ((0)) FOR [F_UN4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF_SPDOWN_F_UN5]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_F_UN5]  DEFAULT ((0)) FOR [F_UN5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF_SPDOWN_F_MAXJJ]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_F_MAXJJ]  DEFAULT ((0)) FOR [F_MAXJJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF_SPDOWN_F_MINJJ]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_F_MINJJ]  DEFAULT ((0)) FOR [F_MINJJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF_SPDOWN_F_RECENTJJ]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_F_RECENTJJ]  DEFAULT ((0)) FOR [F_RECENTJJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SPPC__F_SL__446B1014]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPPC] ADD  CONSTRAINT [DF__SPPC__F_SL__446B1014]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SPPC__F_JE__455F344D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPPC] ADD  CONSTRAINT [DF__SPPC__F_JE__455F344D]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SPSHORT__F_DJ2__75785BC3]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPSHORT] ADD  CONSTRAINT [DF__SPSHORT__F_DJ2__75785BC3]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SPSHORT__F_CS__766C7FFC]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SPSHORT] ADD  CONSTRAINT [DF__SPSHORT__F_CS__766C7FFC]  DEFAULT ((0)) FOR [F_CS]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLS1__46535886]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS1__46535886]  DEFAULT ((0)) FOR [F_SLS1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLS2__47477CBF]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS2__47477CBF]  DEFAULT ((0)) FOR [F_SLS2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLS3__483BA0F8]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS3__483BA0F8]  DEFAULT ((0)) FOR [F_SLS3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLS4__492FC531]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS4__492FC531]  DEFAULT ((0)) FOR [F_SLS4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLS5__4A23E96A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS5__4A23E96A]  DEFAULT ((0)) FOR [F_SLS5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLS6__4B180DA3]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS6__4B180DA3]  DEFAULT ((0)) FOR [F_SLS6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLS7__4C0C31DC]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS7__4C0C31DC]  DEFAULT ((0)) FOR [F_SLS7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLS8__4D005615]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS8__4D005615]  DEFAULT ((0)) FOR [F_SLS8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLS9__4DF47A4E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS9__4DF47A4E]  DEFAULT ((0)) FOR [F_SLS9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLS10__4EE89E87]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS10__4EE89E87]  DEFAULT ((0)) FOR [F_SLS10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLS11__4FDCC2C0]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS11__4FDCC2C0]  DEFAULT ((0)) FOR [F_SLS11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLS12__50D0E6F9]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS12__50D0E6F9]  DEFAULT ((0)) FOR [F_SLS12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JES1__51C50B32]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES1__51C50B32]  DEFAULT ((0)) FOR [F_JES1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JES2__52B92F6B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES2__52B92F6B]  DEFAULT ((0)) FOR [F_JES2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JES3__53AD53A4]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES3__53AD53A4]  DEFAULT ((0)) FOR [F_JES3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JES4__54A177DD]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES4__54A177DD]  DEFAULT ((0)) FOR [F_JES4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JES5__55959C16]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES5__55959C16]  DEFAULT ((0)) FOR [F_JES5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JES6__5689C04F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES6__5689C04F]  DEFAULT ((0)) FOR [F_JES6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JES7__577DE488]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES7__577DE488]  DEFAULT ((0)) FOR [F_JES7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JES8__587208C1]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES8__587208C1]  DEFAULT ((0)) FOR [F_JES8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JES9__59662CFA]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES9__59662CFA]  DEFAULT ((0)) FOR [F_JES9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JES10__5A5A5133]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES10__5A5A5133]  DEFAULT ((0)) FOR [F_JES10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JES11__5B4E756C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES11__5B4E756C]  DEFAULT ((0)) FOR [F_JES11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JES12__5C4299A5]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES12__5C4299A5]  DEFAULT ((0)) FOR [F_JES12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLF1__5D36BDDE]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF1__5D36BDDE]  DEFAULT ((0)) FOR [F_SLF1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLF2__5E2AE217]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF2__5E2AE217]  DEFAULT ((0)) FOR [F_SLF2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLF3__5F1F0650]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF3__5F1F0650]  DEFAULT ((0)) FOR [F_SLF3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLF4__60132A89]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF4__60132A89]  DEFAULT ((0)) FOR [F_SLF4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLF5__61074EC2]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF5__61074EC2]  DEFAULT ((0)) FOR [F_SLF5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLF6__61FB72FB]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF6__61FB72FB]  DEFAULT ((0)) FOR [F_SLF6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLF7__62EF9734]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF7__62EF9734]  DEFAULT ((0)) FOR [F_SLF7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLF8__63E3BB6D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF8__63E3BB6D]  DEFAULT ((0)) FOR [F_SLF8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLF9__64D7DFA6]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF9__64D7DFA6]  DEFAULT ((0)) FOR [F_SLF9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLF10__65CC03DF]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF10__65CC03DF]  DEFAULT ((0)) FOR [F_SLF10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLF11__66C02818]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF11__66C02818]  DEFAULT ((0)) FOR [F_SLF11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SLF12__67B44C51]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF12__67B44C51]  DEFAULT ((0)) FOR [F_SLF12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JEF1__68A8708A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF1__68A8708A]  DEFAULT ((0)) FOR [F_JEF1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JEF2__699C94C3]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF2__699C94C3]  DEFAULT ((0)) FOR [F_JEF2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JEF3__6A90B8FC]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF3__6A90B8FC]  DEFAULT ((0)) FOR [F_JEF3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JEF4__6B84DD35]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF4__6B84DD35]  DEFAULT ((0)) FOR [F_JEF4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JEF5__6C79016E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF5__6C79016E]  DEFAULT ((0)) FOR [F_JEF5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JEF6__6D6D25A7]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF6__6D6D25A7]  DEFAULT ((0)) FOR [F_JEF6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JEF7__6E6149E0]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF7__6E6149E0]  DEFAULT ((0)) FOR [F_JEF7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JEF8__6F556E19]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF8__6F556E19]  DEFAULT ((0)) FOR [F_JEF8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JEF9__70499252]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF9__70499252]  DEFAULT ((0)) FOR [F_JEF9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JEF10__713DB68B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF10__713DB68B]  DEFAULT ((0)) FOR [F_JEF10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JEF11__7231DAC4]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF11__7231DAC4]  DEFAULT ((0)) FOR [F_JEF11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_JEF12__7325FEFD]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF12__7325FEFD]  DEFAULT ((0)) FOR [F_JEF12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SE1__741A2336]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE1__741A2336]  DEFAULT ((0)) FOR [F_SE1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SE2__750E476F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE2__750E476F]  DEFAULT ((0)) FOR [F_SE2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SE3__76026BA8]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE3__76026BA8]  DEFAULT ((0)) FOR [F_SE3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SE4__76F68FE1]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE4__76F68FE1]  DEFAULT ((0)) FOR [F_SE4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SE5__77EAB41A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE5__77EAB41A]  DEFAULT ((0)) FOR [F_SE5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SE6__78DED853]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE6__78DED853]  DEFAULT ((0)) FOR [F_SE6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SE7__79D2FC8C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE7__79D2FC8C]  DEFAULT ((0)) FOR [F_SE7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SE8__7AC720C5]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE8__7AC720C5]  DEFAULT ((0)) FOR [F_SE8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SE9__7BBB44FE]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE9__7BBB44FE]  DEFAULT ((0)) FOR [F_SE9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SE10__7CAF6937]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE10__7CAF6937]  DEFAULT ((0)) FOR [F_SE10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SE11__7DA38D70]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE11__7DA38D70]  DEFAULT ((0)) FOR [F_SE11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__SYZZ__F_SE12__7E97B1A9]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE12__7E97B1A9]  DEFAULT ((0)) FOR [F_SE12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__TRANSPORT__F_IND__7C255952]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[TRANSPORT] ADD  CONSTRAINT [DF__TRANSPORT__F_IND__7C255952]  DEFAULT ((0)) FOR [F_INDEX]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__VIP__F_LJXF__4FBCC72F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[VIP] ADD  CONSTRAINT [DF__VIP__F_LJXF__4FBCC72F]  DEFAULT ((0)) FOR [F_LJXF]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__VIP__F_GRADE__50B0EB68]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[VIP] ADD  CONSTRAINT [DF__VIP__F_GRADE__50B0EB68]  DEFAULT ((0)) FOR [F_GRADE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__VIP2__F_LJXF__538D5813]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[VIP2] ADD  CONSTRAINT [DF__VIP2__F_LJXF__538D5813]  DEFAULT ((0)) FOR [F_LJXF]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__VIP2__F_GRADE__54817C4C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[VIP2] ADD  CONSTRAINT [DF__VIP2__F_GRADE__54817C4C]  DEFAULT ((0)) FOR [F_GRADE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XHDMX__F_SL__7F8BD5E2]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XHDMX] ADD  CONSTRAINT [DF__XHDMX__F_SL__7F8BD5E2]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XHDMX__F_DJ__007FFA1B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XHDMX] ADD  CONSTRAINT [DF__XHDMX__F_DJ__007FFA1B]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XHDMX__F_KL__01741E54]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XHDMX] ADD  CONSTRAINT [DF__XHDMX__F_KL__01741E54]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XHDMX__F_JE__0268428D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XHDMX] ADD  CONSTRAINT [DF__XHDMX__F_JE__0268428D]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XHDMX__F_SLV__035C66C6]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XHDMX] ADD  CONSTRAINT [DF__XHDMX__F_SLV__035C66C6]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XHDMX__F_SE__04508AFF]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XHDMX] ADD  CONSTRAINT [DF__XHDMX__F_SE__04508AFF]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XHDMX__F_CB__0544AF38]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XHDMX] ADD  CONSTRAINT [DF__XHDMX__F_CB__0544AF38]  DEFAULT ((0)) FOR [F_CB]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XHDMX__F_HJ__0638D371]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XHDMX] ADD  CONSTRAINT [DF__XHDMX__F_HJ__0638D371]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XHDMX__F_UN__072CF7AA]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XHDMX] ADD  CONSTRAINT [DF__XHDMX__F_UN__072CF7AA]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XHDMX2__F_SL__08211BE3]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XHDMX2] ADD  CONSTRAINT [DF__XHDMX2__F_SL__08211BE3]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XHDMX2__F_DJ__0915401C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XHDMX2] ADD  CONSTRAINT [DF__XHDMX2__F_DJ__0915401C]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XHDMX2__F_KL__0A096455]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XHDMX2] ADD  CONSTRAINT [DF__XHDMX2__F_KL__0A096455]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XHDMX2__F_JE__0AFD888E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XHDMX2] ADD  CONSTRAINT [DF__XHDMX2__F_JE__0AFD888E]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XHDMX2__F_SLV__0BF1ACC7]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XHDMX2] ADD  CONSTRAINT [DF__XHDMX2__F_SLV__0BF1ACC7]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XHDMX2__F_SE__0CE5D100]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XHDMX2] ADD  CONSTRAINT [DF__XHDMX2__F_SE__0CE5D100]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XHDMX2__F_CB__0DD9F539]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XHDMX2] ADD  CONSTRAINT [DF__XHDMX2__F_CB__0DD9F539]  DEFAULT ((0)) FOR [F_CB]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XHDMX2__F_HJ__0ECE1972]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XHDMX2] ADD  CONSTRAINT [DF__XHDMX2__F_HJ__0ECE1972]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSBB__F_TOP__0FC23DAB]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_TOP__0FC23DAB]  DEFAULT ((0)) FOR [F_TOP]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSBB__F_LEFT__10B661E4]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_LEFT__10B661E4]  DEFAULT ((0)) FOR [F_LEFT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSBB__F_ROWS__11AA861D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_ROWS__11AA861D]  DEFAULT ((35)) FOR [F_ROWS]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSBB__F_SIZE__129EAA56]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_SIZE__129EAA56]  DEFAULT ((39)) FOR [F_SIZE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSBB__F_LENGTH__1392CE8F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_LENGTH__1392CE8F]  DEFAULT ((2794)) FOR [F_LENGTH]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSBB__F_WIDTH__1486F2C8]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_WIDTH__1486F2C8]  DEFAULT ((3734)) FOR [F_WIDTH]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSBB__F_ORIENT__157B1701]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_ORIENT__157B1701]  DEFAULT ((1)) FOR [F_ORIENT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSBB__F_HZ__166F3B3A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_HZ__166F3B3A]  DEFAULT ((0)) FOR [F_HZ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSBB__F_TITLEFON__17635F73]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_TITLEFON__17635F73]  DEFAULT ('宋体,18,1000') FOR [F_TITLEFONT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSBB__F_BBFONT__185783AC]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_BBFONT__185783AC]  DEFAULT ('宋体,10,0000') FOR [F_BBFONT]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSBB__F_COLNUMBE__194BA7E5]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_COLNUMBE__194BA7E5]  DEFAULT ((10)) FOR [F_COLNUMBER]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSBB__F_COLCAPTI__1A3FCC1E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_COLCAPTI__1A3FCC1E]  DEFAULT ('代码,名称,单位,销售数量,销售金额,销售成本,销售毛利,毛利率,销售税金,价税合计,') FOR [F_COLCAPTION]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSBB__F_COLWIDTH__1B33F057]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSBB] ADD  CONSTRAINT [DF__XSBB__F_COLWIDTH__1B33F057]  DEFAULT ('7,15,3,7,7,7,7,7,7,7,') FOR [F_COLWIDTH]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSMXZ__F_SL__1C281490]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSMXZ] ADD  CONSTRAINT [DF__XSMXZ__F_SL__1C281490]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSMXZ__F_JE__1D1C38C9]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSMXZ] ADD  CONSTRAINT [DF__XSMXZ__F_JE__1D1C38C9]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSMXZ__F_CB__1E105D02]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSMXZ] ADD  CONSTRAINT [DF__XSMXZ__F_CB__1E105D02]  DEFAULT ((0)) FOR [F_CB]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSMXZ__F_DJ__1F04813B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSMXZ] ADD  CONSTRAINT [DF__XSMXZ__F_DJ__1F04813B]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSMXZ__F_SE__1FF8A574]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSMXZ] ADD  CONSTRAINT [DF__XSMXZ__F_SE__1FF8A574]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SL1__20ECC9AD]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL1__20ECC9AD]  DEFAULT ((0)) FOR [F_SL1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SL2__21E0EDE6]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL2__21E0EDE6]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SL3__22D5121F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL3__22D5121F]  DEFAULT ((0)) FOR [F_SL3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SL4__23C93658]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL4__23C93658]  DEFAULT ((0)) FOR [F_SL4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SL5__24BD5A91]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL5__24BD5A91]  DEFAULT ((0)) FOR [F_SL5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SL6__25B17ECA]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL6__25B17ECA]  DEFAULT ((0)) FOR [F_SL6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SL7__26A5A303]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL7__26A5A303]  DEFAULT ((0)) FOR [F_SL7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SL8__2799C73C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL8__2799C73C]  DEFAULT ((0)) FOR [F_SL8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SL9__288DEB75]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL9__288DEB75]  DEFAULT ((0)) FOR [F_SL9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SL10__29820FAE]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL10__29820FAE]  DEFAULT ((0)) FOR [F_SL10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SL11__2A7633E7]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL11__2A7633E7]  DEFAULT ((0)) FOR [F_SL11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SL12__2B6A5820]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL12__2B6A5820]  DEFAULT ((0)) FOR [F_SL12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_JE1__2C5E7C59]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE1__2C5E7C59]  DEFAULT ((0)) FOR [F_JE1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_JE2__2D52A092]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE2__2D52A092]  DEFAULT ((0)) FOR [F_JE2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_JE3__2E46C4CB]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE3__2E46C4CB]  DEFAULT ((0)) FOR [F_JE3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_JE4__2F3AE904]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE4__2F3AE904]  DEFAULT ((0)) FOR [F_JE4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_JE5__302F0D3D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE5__302F0D3D]  DEFAULT ((0)) FOR [F_JE5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_JE6__31233176]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE6__31233176]  DEFAULT ((0)) FOR [F_JE6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_JE7__321755AF]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE7__321755AF]  DEFAULT ((0)) FOR [F_JE7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_JE8__330B79E8]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE8__330B79E8]  DEFAULT ((0)) FOR [F_JE8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_JE9__33FF9E21]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE9__33FF9E21]  DEFAULT ((0)) FOR [F_JE9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_JE10__34F3C25A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE10__34F3C25A]  DEFAULT ((0)) FOR [F_JE10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_JE11__35E7E693]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE11__35E7E693]  DEFAULT ((0)) FOR [F_JE11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_JE12__36DC0ACC]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE12__36DC0ACC]  DEFAULT ((0)) FOR [F_JE12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_CB1__37D02F05]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB1__37D02F05]  DEFAULT ((0)) FOR [F_CB1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_CB2__38C4533E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB2__38C4533E]  DEFAULT ((0)) FOR [F_CB2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_CB3__39B87777]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB3__39B87777]  DEFAULT ((0)) FOR [F_CB3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_CB4__3AAC9BB0]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB4__3AAC9BB0]  DEFAULT ((0)) FOR [F_CB4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_CB5__3BA0BFE9]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB5__3BA0BFE9]  DEFAULT ((0)) FOR [F_CB5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_CB6__3C94E422]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB6__3C94E422]  DEFAULT ((0)) FOR [F_CB6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_CB7__3D89085B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB7__3D89085B]  DEFAULT ((0)) FOR [F_CB7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_CB8__3E7D2C94]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB8__3E7D2C94]  DEFAULT ((0)) FOR [F_CB8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_CB9__3F7150CD]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB9__3F7150CD]  DEFAULT ((0)) FOR [F_CB9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_CB10__40657506]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB10__40657506]  DEFAULT ((0)) FOR [F_CB10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_CB11__4159993F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB11__4159993F]  DEFAULT ((0)) FOR [F_CB11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_CB12__424DBD78]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB12__424DBD78]  DEFAULT ((0)) FOR [F_CB12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SE1__4341E1B1]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE1__4341E1B1]  DEFAULT ((0)) FOR [F_SE1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SE2__443605EA]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE2__443605EA]  DEFAULT ((0)) FOR [F_SE2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SE3__452A2A23]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE3__452A2A23]  DEFAULT ((0)) FOR [F_SE3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SE4__461E4E5C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE4__461E4E5C]  DEFAULT ((0)) FOR [F_SE4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SE5__47127295]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE5__47127295]  DEFAULT ((0)) FOR [F_SE5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SE6__480696CE]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE6__480696CE]  DEFAULT ((0)) FOR [F_SE6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SE7__48FABB07]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE7__48FABB07]  DEFAULT ((0)) FOR [F_SE7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SE8__49EEDF40]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE8__49EEDF40]  DEFAULT ((0)) FOR [F_SE8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SE9__4AE30379]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE9__4AE30379]  DEFAULT ((0)) FOR [F_SE9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SE10__4BD727B2]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE10__4BD727B2]  DEFAULT ((0)) FOR [F_SE10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SE11__4CCB4BEB]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE11__4CCB4BEB]  DEFAULT ((0)) FOR [F_SE11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__XSZZ__F_SE12__4DBF7024]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE12__4DBF7024]  DEFAULT ((0)) FOR [F_SE12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFHXZ__F_JH__4EB3945D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFHXZ] ADD  CONSTRAINT [DF__YFHXZ__F_JH__4EB3945D]  DEFAULT ((0)) FOR [F_JH]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFHXZ__F_FK__4FA7B896]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFHXZ] ADD  CONSTRAINT [DF__YFHXZ__F_FK__4FA7B896]  DEFAULT ((0)) FOR [F_FK]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFHXZ__F_HXJE__509BDCCF]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFHXZ] ADD  CONSTRAINT [DF__YFHXZ__F_HXJE__509BDCCF]  DEFAULT ((0)) FOR [F_HXJE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFMXZ__F_SR__51900108]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFMXZ] ADD  CONSTRAINT [DF__YFMXZ__F_SR__51900108]  DEFAULT ((0)) FOR [F_SR]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFMXZ__F_FC__52842541]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFMXZ] ADD  CONSTRAINT [DF__YFMXZ__F_FC__52842541]  DEFAULT ((0)) FOR [F_FC]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFMXZ__F_YE__5378497A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFMXZ] ADD  CONSTRAINT [DF__YFMXZ__F_YE__5378497A]  DEFAULT ((0)) FOR [F_YE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFMXZ__F_HXJE__546C6DB3]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFMXZ] ADD  CONSTRAINT [DF__YFMXZ__F_HXJE__546C6DB3]  DEFAULT ((0)) FOR [F_HXJE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_QCYE__556091EC]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_QCYE__556091EC]  DEFAULT ((0)) FOR [F_QCYE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_QMYE__5654B625]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_QMYE__5654B625]  DEFAULT ((0)) FOR [F_QMYE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_J1__5748DA5E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J1__5748DA5E]  DEFAULT ((0)) FOR [F_J1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_D1__583CFE97]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D1__583CFE97]  DEFAULT ((0)) FOR [F_D1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_J2__593122D0]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J2__593122D0]  DEFAULT ((0)) FOR [F_J2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_D2__5A254709]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D2__5A254709]  DEFAULT ((0)) FOR [F_D2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_J3__5B196B42]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J3__5B196B42]  DEFAULT ((0)) FOR [F_J3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_D3__5C0D8F7B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D3__5C0D8F7B]  DEFAULT ((0)) FOR [F_D3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_J4__5D01B3B4]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J4__5D01B3B4]  DEFAULT ((0)) FOR [F_J4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_D4__5DF5D7ED]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D4__5DF5D7ED]  DEFAULT ((0)) FOR [F_D4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_J5__5EE9FC26]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J5__5EE9FC26]  DEFAULT ((0)) FOR [F_J5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_D5__5FDE205F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D5__5FDE205F]  DEFAULT ((0)) FOR [F_D5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_J6__60D24498]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J6__60D24498]  DEFAULT ((0)) FOR [F_J6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_D6__61C668D1]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D6__61C668D1]  DEFAULT ((0)) FOR [F_D6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_J7__62BA8D0A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J7__62BA8D0A]  DEFAULT ((0)) FOR [F_J7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_D7__63AEB143]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D7__63AEB143]  DEFAULT ((0)) FOR [F_D7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_J8__64A2D57C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J8__64A2D57C]  DEFAULT ((0)) FOR [F_J8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_D8__6596F9B5]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D8__6596F9B5]  DEFAULT ((0)) FOR [F_D8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_J9__668B1DEE]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J9__668B1DEE]  DEFAULT ((0)) FOR [F_J9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_D9__677F4227]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D9__677F4227]  DEFAULT ((0)) FOR [F_D9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_J10__68736660]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J10__68736660]  DEFAULT ((0)) FOR [F_J10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_D10__69678A99]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D10__69678A99]  DEFAULT ((0)) FOR [F_D10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_J11__6A5BAED2]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J11__6A5BAED2]  DEFAULT ((0)) FOR [F_J11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_D11__6B4FD30B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D11__6B4FD30B]  DEFAULT ((0)) FOR [F_D11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_J12__6C43F744]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J12__6C43F744]  DEFAULT ((0)) FOR [F_J12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YFZZ__F_D12__6D381B7D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D12__6D381B7D]  DEFAULT ((0)) FOR [F_D12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSHXZ__F_XS__6E2C3FB6]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSHXZ] ADD  CONSTRAINT [DF__YSHXZ__F_XS__6E2C3FB6]  DEFAULT ((0)) FOR [F_XS]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSHXZ__F_SK__6F2063EF]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSHXZ] ADD  CONSTRAINT [DF__YSHXZ__F_SK__6F2063EF]  DEFAULT ((0)) FOR [F_SK]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSHXZ__F_HXJE__70148828]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSHXZ] ADD  CONSTRAINT [DF__YSHXZ__F_HXJE__70148828]  DEFAULT ((0)) FOR [F_HXJE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSMXZ__F_SR__7108AC61]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSMXZ] ADD  CONSTRAINT [DF__YSMXZ__F_SR__7108AC61]  DEFAULT ((0)) FOR [F_SR]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSMXZ__F_FC__71FCD09A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSMXZ] ADD  CONSTRAINT [DF__YSMXZ__F_FC__71FCD09A]  DEFAULT ((0)) FOR [F_FC]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSMXZ__F_YE__72F0F4D3]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSMXZ] ADD  CONSTRAINT [DF__YSMXZ__F_YE__72F0F4D3]  DEFAULT ((0)) FOR [F_YE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSMXZ__F_HXJE__73E5190C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSMXZ] ADD  CONSTRAINT [DF__YSMXZ__F_HXJE__73E5190C]  DEFAULT ((0)) FOR [F_HXJE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_QCYE__74D93D45]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_QCYE__74D93D45]  DEFAULT ((0)) FOR [F_QCYE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_QMYE__75CD617E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_QMYE__75CD617E]  DEFAULT ((0)) FOR [F_QMYE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_J1__76C185B7]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J1__76C185B7]  DEFAULT ((0)) FOR [F_J1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_D1__77B5A9F0]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D1__77B5A9F0]  DEFAULT ((0)) FOR [F_D1]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_J2__78A9CE29]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J2__78A9CE29]  DEFAULT ((0)) FOR [F_J2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_D2__799DF262]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D2__799DF262]  DEFAULT ((0)) FOR [F_D2]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_J3__7A92169B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J3__7A92169B]  DEFAULT ((0)) FOR [F_J3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_D3__7B863AD4]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D3__7B863AD4]  DEFAULT ((0)) FOR [F_D3]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_J4__7C7A5F0D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J4__7C7A5F0D]  DEFAULT ((0)) FOR [F_J4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_D4__7D6E8346]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D4__7D6E8346]  DEFAULT ((0)) FOR [F_D4]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_J5__7E62A77F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J5__7E62A77F]  DEFAULT ((0)) FOR [F_J5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_D5__7F56CBB8]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D5__7F56CBB8]  DEFAULT ((0)) FOR [F_D5]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_J6__004AEFF1]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J6__004AEFF1]  DEFAULT ((0)) FOR [F_J6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_D6__013F142A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D6__013F142A]  DEFAULT ((0)) FOR [F_D6]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_J7__02333863]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J7__02333863]  DEFAULT ((0)) FOR [F_J7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_D7__03275C9C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D7__03275C9C]  DEFAULT ((0)) FOR [F_D7]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_J8__041B80D5]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J8__041B80D5]  DEFAULT ((0)) FOR [F_J8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_D8__050FA50E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D8__050FA50E]  DEFAULT ((0)) FOR [F_D8]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_J9__0603C947]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J9__0603C947]  DEFAULT ((0)) FOR [F_J9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_D9__06F7ED80]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D9__06F7ED80]  DEFAULT ((0)) FOR [F_D9]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_J10__07EC11B9]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J10__07EC11B9]  DEFAULT ((0)) FOR [F_J10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_D10__08E035F2]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D10__08E035F2]  DEFAULT ((0)) FOR [F_D10]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_J11__09D45A2B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J11__09D45A2B]  DEFAULT ((0)) FOR [F_J11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_D11__0AC87E64]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D11__0AC87E64]  DEFAULT ((0)) FOR [F_D11]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_J12__0BBCA29D]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J12__0BBCA29D]  DEFAULT ((0)) FOR [F_J12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__YSZZ__F_D12__0CB0C6D6]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D12__0CB0C6D6]  DEFAULT ((0)) FOR [F_D12]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__ZLFX_C_DA__F_DAY__548C6944]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[ZLFX_C_DAY] ADD  CONSTRAINT [DF__ZLFX_C_DA__F_DAY__548C6944]  DEFAULT ((0)) FOR [F_DAY]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__ZLFX_C_KJ__F_DAY__5768D5EF]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[ZLFX_C_KJQJ] ADD  CONSTRAINT [DF__ZLFX_C_KJ__F_DAY__5768D5EF]  DEFAULT ((0)) FOR [F_DAY]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__ZLFX_C_YE__F_DAY__5A45429A]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[ZLFX_C_YEAR] ADD  CONSTRAINT [DF__ZLFX_C_YE__F_DAY__5A45429A]  DEFAULT ((0)) FOR [F_DAY]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__ZLFX_V_DA__F_DAY__5D21AF45]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[ZLFX_V_DAY] ADD  CONSTRAINT [DF__ZLFX_V_DA__F_DAY__5D21AF45]  DEFAULT ((0)) FOR [F_DAY]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__ZLFX_V_KJ__F_DAY__5FFE1BF0]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[ZLFX_V_KJQJ] ADD  CONSTRAINT [DF__ZLFX_V_KJ__F_DAY__5FFE1BF0]  DEFAULT ((0)) FOR [F_DAY]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__ZLFX_V_YE__F_DAY__62DA889B]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[ZLFX_V_YEAR] ADD  CONSTRAINT [DF__ZLFX_V_YE__F_DAY__62DA889B]  DEFAULT ((0)) FOR [F_DAY]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__ZZDMX__F_DJ__0DA4EB0F]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[ZZDMX] ADD  CONSTRAINT [DF__ZZDMX__F_DJ__0DA4EB0F]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__ZZDMX__F_SL__0E990F48]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[ZZDMX] ADD  CONSTRAINT [DF__ZZDMX__F_SL__0E990F48]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__ZZDMX__F_JE__0F8D3381]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[ZZDMX] ADD  CONSTRAINT [DF__ZZDMX__F_JE__0F8D3381]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__ZZDMX2__F_DJ__108157BA]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[ZZDMX2] ADD  CONSTRAINT [DF__ZZDMX2__F_DJ__108157BA]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__ZZDMX2__F_SL__11757BF3]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[ZZDMX2] ADD  CONSTRAINT [DF__ZZDMX2__F_SL__11757BF3]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__ZZDMX2__F_JE__1269A02C]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[ZZDMX2] ADD  CONSTRAINT [DF__ZZDMX2__F_JE__1269A02C]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__ZZDMX3__F_DJ__135DC465]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[ZZDMX3] ADD  CONSTRAINT [DF__ZZDMX3__F_DJ__135DC465]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__ZZDMX3__F_SL__1451E89E]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[ZZDMX3] ADD  CONSTRAINT [DF__ZZDMX3__F_SL__1451E89E]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[DF__ZZDMX3__F_JE__15460CD7]') AND TYPE = 'D')
BEGIN
ALTER TABLE [DBO].[ZZDMX3] ADD  CONSTRAINT [DF__ZZDMX3__F_JE__15460CD7]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK_BM_F_HW_5G5H4D]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[BM]'))
ALTER TABLE [DBO].[BM] CHECK CONSTRAINT [FK_BM_F_HW_5G5H4D]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CGD__F_BM__5C229E14]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CGD]'))
ALTER TABLE [DBO].[CGD]  WITH CHECK ADD  CONSTRAINT [FK__CGD__F_BM__5C229E14] FOREIGN KEY([F_BM])
REFERENCES [DBO].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CGD__F_BM__5C229E14]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CGD]'))
ALTER TABLE [DBO].[CGD] CHECK CONSTRAINT [FK__CGD__F_BM__5C229E14]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CGD__F_HW__5D16C24D]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CGD]'))
ALTER TABLE [DBO].[CGD]  WITH CHECK ADD  CONSTRAINT [FK__CGD__F_HW__5D16C24D] FOREIGN KEY([F_HW])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CGD__F_HW__5D16C24D]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CGD]'))
ALTER TABLE [DBO].[CGD] CHECK CONSTRAINT [FK__CGD__F_HW__5D16C24D]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CGD__F_VENDOR__5E0AE686]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CGD]'))
ALTER TABLE [DBO].[CGD]  WITH CHECK ADD  CONSTRAINT [FK__CGD__F_VENDOR__5E0AE686] FOREIGN KEY([F_VENDOR])
REFERENCES [DBO].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CGD__F_VENDOR__5E0AE686]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CGD]'))
ALTER TABLE [DBO].[CGD] CHECK CONSTRAINT [FK__CGD__F_VENDOR__5E0AE686]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CGD2__F_BM__5EFF0ABF]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CGD2]'))
ALTER TABLE [DBO].[CGD2]  WITH CHECK ADD  CONSTRAINT [FK__CGD2__F_BM__5EFF0ABF] FOREIGN KEY([F_BM])
REFERENCES [DBO].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CGD2__F_BM__5EFF0ABF]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CGD2]'))
ALTER TABLE [DBO].[CGD2] CHECK CONSTRAINT [FK__CGD2__F_BM__5EFF0ABF]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CGD2__F_HW__5FF32EF8]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CGD2]'))
ALTER TABLE [DBO].[CGD2]  WITH CHECK ADD  CONSTRAINT [FK__CGD2__F_HW__5FF32EF8] FOREIGN KEY([F_HW])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CGD2__F_HW__5FF32EF8]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CGD2]'))
ALTER TABLE [DBO].[CGD2] CHECK CONSTRAINT [FK__CGD2__F_HW__5FF32EF8]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CGD2__F_VENDOR__60E75331]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CGD2]'))
ALTER TABLE [DBO].[CGD2]  WITH CHECK ADD  CONSTRAINT [FK__CGD2__F_VENDOR__60E75331] FOREIGN KEY([F_VENDOR])
REFERENCES [DBO].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CGD2__F_VENDOR__60E75331]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CGD2]'))
ALTER TABLE [DBO].[CGD2] CHECK CONSTRAINT [FK__CGD2__F_VENDOR__60E75331]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CGDMX__F_SPBH__61DB776A]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CGDMX]'))
ALTER TABLE [DBO].[CGDMX]  WITH CHECK ADD  CONSTRAINT [FK__CGDMX__F_SPBH__61DB776A] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CGDMX__F_SPBH__61DB776A]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CGDMX]'))
ALTER TABLE [DBO].[CGDMX] CHECK CONSTRAINT [FK__CGDMX__F_SPBH__61DB776A]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CGDMX2__F_SPBH__62CF9BA3]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CGDMX2]'))
ALTER TABLE [DBO].[CGDMX2]  WITH CHECK ADD  CONSTRAINT [FK__CGDMX2__F_SPBH__62CF9BA3] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CGDMX2__F_SPBH__62CF9BA3]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CGDMX2]'))
ALTER TABLE [DBO].[CGDMX2] CHECK CONSTRAINT [FK__CGDMX2__F_SPBH__62CF9BA3]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CKD__F_HW__63C3BFDC]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CKD]'))
ALTER TABLE [DBO].[CKD]  WITH CHECK ADD  CONSTRAINT [FK__CKD__F_HW__63C3BFDC] FOREIGN KEY([F_HW])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CKD__F_HW__63C3BFDC]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CKD]'))
ALTER TABLE [DBO].[CKD] CHECK CONSTRAINT [FK__CKD__F_HW__63C3BFDC]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CKD2__F_HW__64B7E415]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CKD2]'))
ALTER TABLE [DBO].[CKD2]  WITH CHECK ADD  CONSTRAINT [FK__CKD2__F_HW__64B7E415] FOREIGN KEY([F_HW])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CKD2__F_HW__64B7E415]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CKD2]'))
ALTER TABLE [DBO].[CKD2] CHECK CONSTRAINT [FK__CKD2__F_HW__64B7E415]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CKDMX__F_SPBH__65AC084E]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CKDMX]'))
ALTER TABLE [DBO].[CKDMX]  WITH CHECK ADD  CONSTRAINT [FK__CKDMX__F_SPBH__65AC084E] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CKDMX__F_SPBH__65AC084E]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CKDMX]'))
ALTER TABLE [DBO].[CKDMX] CHECK CONSTRAINT [FK__CKDMX__F_SPBH__65AC084E]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CKDMX2__F_SPBH__66A02C87]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CKDMX2]'))
ALTER TABLE [DBO].[CKDMX2]  WITH CHECK ADD  CONSTRAINT [FK__CKDMX2__F_SPBH__66A02C87] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__CKDMX2__F_SPBH__66A02C87]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[CKDMX2]'))
ALTER TABLE [DBO].[CKDMX2] CHECK CONSTRAINT [FK__CKDMX2__F_SPBH__66A02C87]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__DBD__F_HW1__679450C0]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[DBD]'))
ALTER TABLE [DBO].[DBD]  WITH CHECK ADD  CONSTRAINT [FK__DBD__F_HW1__679450C0] FOREIGN KEY([F_HW1])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__DBD__F_HW1__679450C0]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[DBD]'))
ALTER TABLE [DBO].[DBD] CHECK CONSTRAINT [FK__DBD__F_HW1__679450C0]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__DBD__F_HW2__688874F9]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[DBD]'))
ALTER TABLE [DBO].[DBD]  WITH CHECK ADD  CONSTRAINT [FK__DBD__F_HW2__688874F9] FOREIGN KEY([F_HW2])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__DBD__F_HW2__688874F9]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[DBD]'))
ALTER TABLE [DBO].[DBD] CHECK CONSTRAINT [FK__DBD__F_HW2__688874F9]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__DBD2__F_HW1__697C9932]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[DBD2]'))
ALTER TABLE [DBO].[DBD2]  WITH CHECK ADD  CONSTRAINT [FK__DBD2__F_HW1__697C9932] FOREIGN KEY([F_HW1])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__DBD2__F_HW1__697C9932]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[DBD2]'))
ALTER TABLE [DBO].[DBD2] CHECK CONSTRAINT [FK__DBD2__F_HW1__697C9932]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__DBD2__F_HW2__6A70BD6B]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[DBD2]'))
ALTER TABLE [DBO].[DBD2]  WITH CHECK ADD  CONSTRAINT [FK__DBD2__F_HW2__6A70BD6B] FOREIGN KEY([F_HW2])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__DBD2__F_HW2__6A70BD6B]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[DBD2]'))
ALTER TABLE [DBO].[DBD2] CHECK CONSTRAINT [FK__DBD2__F_HW2__6A70BD6B]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__DBDMX__F_SPBH__6B64E1A4]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[DBDMX]'))
ALTER TABLE [DBO].[DBDMX]  WITH CHECK ADD  CONSTRAINT [FK__DBDMX__F_SPBH__6B64E1A4] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__DBDMX__F_SPBH__6B64E1A4]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[DBDMX]'))
ALTER TABLE [DBO].[DBDMX] CHECK CONSTRAINT [FK__DBDMX__F_SPBH__6B64E1A4]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__DBDMX2__F_SPBH__6C5905DD]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[DBDMX2]'))
ALTER TABLE [DBO].[DBDMX2]  WITH CHECK ADD  CONSTRAINT [FK__DBDMX2__F_SPBH__6C5905DD] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__DBDMX2__F_SPBH__6C5905DD]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[DBDMX2]'))
ALTER TABLE [DBO].[DBDMX2] CHECK CONSTRAINT [FK__DBDMX2__F_SPBH__6C5905DD]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__DBZZ__F_HW__6D4D2A16]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[DBZZ]'))
ALTER TABLE [DBO].[DBZZ]  WITH CHECK ADD  CONSTRAINT [FK__DBZZ__F_HW__6D4D2A16] FOREIGN KEY([F_HW])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__DBZZ__F_HW__6D4D2A16]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[DBZZ]'))
ALTER TABLE [DBO].[DBZZ] CHECK CONSTRAINT [FK__DBZZ__F_HW__6D4D2A16]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__DBZZ__F_SPBH__6E414E4F]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[DBZZ]'))
ALTER TABLE [DBO].[DBZZ]  WITH CHECK ADD  CONSTRAINT [FK__DBZZ__F_SPBH__6E414E4F] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__DBZZ__F_SPBH__6E414E4F]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[DBZZ]'))
ALTER TABLE [DBO].[DBZZ] CHECK CONSTRAINT [FK__DBZZ__F_SPBH__6E414E4F]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JGZZ__F_HW__6F357288]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JGZZ]'))
ALTER TABLE [DBO].[JGZZ]  WITH CHECK ADD  CONSTRAINT [FK__JGZZ__F_HW__6F357288] FOREIGN KEY([F_HW])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JGZZ__F_HW__6F357288]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JGZZ]'))
ALTER TABLE [DBO].[JGZZ] CHECK CONSTRAINT [FK__JGZZ__F_HW__6F357288]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JGZZ__F_SPBH__702996C1]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JGZZ]'))
ALTER TABLE [DBO].[JGZZ]  WITH CHECK ADD  CONSTRAINT [FK__JGZZ__F_SPBH__702996C1] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JGZZ__F_SPBH__702996C1]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JGZZ]'))
ALTER TABLE [DBO].[JGZZ] CHECK CONSTRAINT [FK__JGZZ__F_SPBH__702996C1]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JHD__F_BM__711DBAFA]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JHD]'))
ALTER TABLE [DBO].[JHD]  WITH CHECK ADD  CONSTRAINT [FK__JHD__F_BM__711DBAFA] FOREIGN KEY([F_BM])
REFERENCES [DBO].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JHD__F_BM__711DBAFA]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JHD]'))
ALTER TABLE [DBO].[JHD] CHECK CONSTRAINT [FK__JHD__F_BM__711DBAFA]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JHD__F_HW__7211DF33]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JHD]'))
ALTER TABLE [DBO].[JHD]  WITH CHECK ADD  CONSTRAINT [FK__JHD__F_HW__7211DF33] FOREIGN KEY([F_HW])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JHD__F_HW__7211DF33]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JHD]'))
ALTER TABLE [DBO].[JHD] CHECK CONSTRAINT [FK__JHD__F_HW__7211DF33]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JHD__F_VENDOR__7306036C]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JHD]'))
ALTER TABLE [DBO].[JHD]  WITH CHECK ADD  CONSTRAINT [FK__JHD__F_VENDOR__7306036C] FOREIGN KEY([F_VENDOR])
REFERENCES [DBO].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JHD__F_VENDOR__7306036C]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JHD]'))
ALTER TABLE [DBO].[JHD] CHECK CONSTRAINT [FK__JHD__F_VENDOR__7306036C]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JHD2__F_BM__73FA27A5]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JHD2]'))
ALTER TABLE [DBO].[JHD2]  WITH CHECK ADD  CONSTRAINT [FK__JHD2__F_BM__73FA27A5] FOREIGN KEY([F_BM])
REFERENCES [DBO].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JHD2__F_BM__73FA27A5]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JHD2]'))
ALTER TABLE [DBO].[JHD2] CHECK CONSTRAINT [FK__JHD2__F_BM__73FA27A5]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JHD2__F_HW__74EE4BDE]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JHD2]'))
ALTER TABLE [DBO].[JHD2]  WITH CHECK ADD  CONSTRAINT [FK__JHD2__F_HW__74EE4BDE] FOREIGN KEY([F_HW])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JHD2__F_HW__74EE4BDE]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JHD2]'))
ALTER TABLE [DBO].[JHD2] CHECK CONSTRAINT [FK__JHD2__F_HW__74EE4BDE]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JHD2__F_VENDOR__75E27017]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JHD2]'))
ALTER TABLE [DBO].[JHD2]  WITH CHECK ADD  CONSTRAINT [FK__JHD2__F_VENDOR__75E27017] FOREIGN KEY([F_VENDOR])
REFERENCES [DBO].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JHD2__F_VENDOR__75E27017]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JHD2]'))
ALTER TABLE [DBO].[JHD2] CHECK CONSTRAINT [FK__JHD2__F_VENDOR__75E27017]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JHDMX__F_SPBH__76D69450]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JHDMX]'))
ALTER TABLE [DBO].[JHDMX]  WITH CHECK ADD  CONSTRAINT [FK__JHDMX__F_SPBH__76D69450] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JHDMX__F_SPBH__76D69450]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JHDMX]'))
ALTER TABLE [DBO].[JHDMX] CHECK CONSTRAINT [FK__JHDMX__F_SPBH__76D69450]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JHDMX2__F_SPBH__77CAB889]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JHDMX2]'))
ALTER TABLE [DBO].[JHDMX2]  WITH CHECK ADD  CONSTRAINT [FK__JHDMX2__F_SPBH__77CAB889] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JHDMX2__F_SPBH__77CAB889]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JHDMX2]'))
ALTER TABLE [DBO].[JHDMX2] CHECK CONSTRAINT [FK__JHDMX2__F_SPBH__77CAB889]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JHZZ__F_HW__78BEDCC2]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JHZZ]'))
ALTER TABLE [DBO].[JHZZ]  WITH CHECK ADD  CONSTRAINT [FK__JHZZ__F_HW__78BEDCC2] FOREIGN KEY([F_HW])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JHZZ__F_HW__78BEDCC2]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JHZZ]'))
ALTER TABLE [DBO].[JHZZ] CHECK CONSTRAINT [FK__JHZZ__F_HW__78BEDCC2]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JHZZ__F_SPBH__79B300FB]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JHZZ]'))
ALTER TABLE [DBO].[JHZZ]  WITH CHECK ADD  CONSTRAINT [FK__JHZZ__F_SPBH__79B300FB] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__JHZZ__F_SPBH__79B300FB]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[JHZZ]'))
ALTER TABLE [DBO].[JHZZ] CHECK CONSTRAINT [FK__JHZZ__F_SPBH__79B300FB]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__KCMXZ__F_HW__7AA72534]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[KCMXZ]'))
ALTER TABLE [DBO].[KCMXZ]  WITH CHECK ADD  CONSTRAINT [FK__KCMXZ__F_HW__7AA72534] FOREIGN KEY([F_HW])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__KCMXZ__F_HW__7AA72534]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[KCMXZ]'))
ALTER TABLE [DBO].[KCMXZ] CHECK CONSTRAINT [FK__KCMXZ__F_HW__7AA72534]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__KCMXZ__F_SPBH__7B9B496D]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[KCMXZ]'))
ALTER TABLE [DBO].[KCMXZ]  WITH CHECK ADD  CONSTRAINT [FK__KCMXZ__F_SPBH__7B9B496D] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__KCMXZ__F_SPBH__7B9B496D]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[KCMXZ]'))
ALTER TABLE [DBO].[KCMXZ] CHECK CONSTRAINT [FK__KCMXZ__F_SPBH__7B9B496D]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__KCZZ__F_HW__7C8F6DA6]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[KCZZ]'))
ALTER TABLE [DBO].[KCZZ]  WITH CHECK ADD  CONSTRAINT [FK__KCZZ__F_HW__7C8F6DA6] FOREIGN KEY([F_HW])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__KCZZ__F_HW__7C8F6DA6]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[KCZZ]'))
ALTER TABLE [DBO].[KCZZ] CHECK CONSTRAINT [FK__KCZZ__F_HW__7C8F6DA6]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__KCZZ__F_SPBH__7D8391DF]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[KCZZ]'))
ALTER TABLE [DBO].[KCZZ]  WITH CHECK ADD  CONSTRAINT [FK__KCZZ__F_SPBH__7D8391DF] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__KCZZ__F_SPBH__7D8391DF]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[KCZZ]'))
ALTER TABLE [DBO].[KCZZ] CHECK CONSTRAINT [FK__KCZZ__F_SPBH__7D8391DF]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__QDD__F_BM__7E77B618]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[QDD]'))
ALTER TABLE [DBO].[QDD]  WITH CHECK ADD  CONSTRAINT [FK__QDD__F_BM__7E77B618] FOREIGN KEY([F_BM])
REFERENCES [DBO].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__QDD__F_BM__7E77B618]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[QDD]'))
ALTER TABLE [DBO].[QDD] CHECK CONSTRAINT [FK__QDD__F_BM__7E77B618]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__QDD__F_HW__7F6BDA51]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[QDD]'))
ALTER TABLE [DBO].[QDD]  WITH CHECK ADD  CONSTRAINT [FK__QDD__F_HW__7F6BDA51] FOREIGN KEY([F_HW])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__QDD__F_HW__7F6BDA51]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[QDD]'))
ALTER TABLE [DBO].[QDD] CHECK CONSTRAINT [FK__QDD__F_HW__7F6BDA51]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__QDD2__F_BM__005FFE8A]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[QDD2]'))
ALTER TABLE [DBO].[QDD2]  WITH CHECK ADD  CONSTRAINT [FK__QDD2__F_BM__005FFE8A] FOREIGN KEY([F_BM])
REFERENCES [DBO].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__QDD2__F_BM__005FFE8A]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[QDD2]'))
ALTER TABLE [DBO].[QDD2] CHECK CONSTRAINT [FK__QDD2__F_BM__005FFE8A]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__QDD2__F_HW__015422C3]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[QDD2]'))
ALTER TABLE [DBO].[QDD2]  WITH CHECK ADD  CONSTRAINT [FK__QDD2__F_HW__015422C3] FOREIGN KEY([F_HW])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__QDD2__F_HW__015422C3]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[QDD2]'))
ALTER TABLE [DBO].[QDD2] CHECK CONSTRAINT [FK__QDD2__F_HW__015422C3]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__QDDMX__F_SPBH__024846FC]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[QDDMX]'))
ALTER TABLE [DBO].[QDDMX]  WITH CHECK ADD  CONSTRAINT [FK__QDDMX__F_SPBH__024846FC] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__QDDMX__F_SPBH__024846FC]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[QDDMX]'))
ALTER TABLE [DBO].[QDDMX] CHECK CONSTRAINT [FK__QDDMX__F_SPBH__024846FC]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__QDDMX2__F_SPBH__033C6B35]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[QDDMX2]'))
ALTER TABLE [DBO].[QDDMX2]  WITH CHECK ADD  CONSTRAINT [FK__QDDMX2__F_SPBH__033C6B35] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__QDDMX2__F_SPBH__033C6B35]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[QDDMX2]'))
ALTER TABLE [DBO].[QDDMX2] CHECK CONSTRAINT [FK__QDDMX2__F_SPBH__033C6B35]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__RKD__F_HW__04308F6E]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[RKD]'))
ALTER TABLE [DBO].[RKD]  WITH CHECK ADD  CONSTRAINT [FK__RKD__F_HW__04308F6E] FOREIGN KEY([F_HW])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__RKD__F_HW__04308F6E]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[RKD]'))
ALTER TABLE [DBO].[RKD] CHECK CONSTRAINT [FK__RKD__F_HW__04308F6E]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__RKD2__F_HW__0524B3A7]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[RKD2]'))
ALTER TABLE [DBO].[RKD2]  WITH CHECK ADD  CONSTRAINT [FK__RKD2__F_HW__0524B3A7] FOREIGN KEY([F_HW])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__RKD2__F_HW__0524B3A7]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[RKD2]'))
ALTER TABLE [DBO].[RKD2] CHECK CONSTRAINT [FK__RKD2__F_HW__0524B3A7]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__RKDMX__F_SPBH__0618D7E0]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[RKDMX]'))
ALTER TABLE [DBO].[RKDMX]  WITH CHECK ADD  CONSTRAINT [FK__RKDMX__F_SPBH__0618D7E0] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__RKDMX__F_SPBH__0618D7E0]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[RKDMX]'))
ALTER TABLE [DBO].[RKDMX] CHECK CONSTRAINT [FK__RKDMX__F_SPBH__0618D7E0]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__RKDMX2__F_SPBH__070CFC19]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[RKDMX2]'))
ALTER TABLE [DBO].[RKDMX2]  WITH CHECK ADD  CONSTRAINT [FK__RKDMX2__F_SPBH__070CFC19] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__RKDMX2__F_SPBH__070CFC19]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[RKDMX2]'))
ALTER TABLE [DBO].[RKDMX2] CHECK CONSTRAINT [FK__RKDMX2__F_SPBH__070CFC19]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__SPPC__F_HW__08012052]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[SPPC]'))
ALTER TABLE [DBO].[SPPC]  WITH CHECK ADD  CONSTRAINT [FK__SPPC__F_HW__08012052] FOREIGN KEY([F_HW])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__SPPC__F_HW__08012052]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[SPPC]'))
ALTER TABLE [DBO].[SPPC] CHECK CONSTRAINT [FK__SPPC__F_HW__08012052]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__SPPC__F_SPBH__08F5448B]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[SPPC]'))
ALTER TABLE [DBO].[SPPC]  WITH CHECK ADD  CONSTRAINT [FK__SPPC__F_SPBH__08F5448B] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__SPPC__F_SPBH__08F5448B]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[SPPC]'))
ALTER TABLE [DBO].[SPPC] CHECK CONSTRAINT [FK__SPPC__F_SPBH__08F5448B]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__SYZZ__F_HW__09E968C4]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[SYZZ]'))
ALTER TABLE [DBO].[SYZZ]  WITH CHECK ADD  CONSTRAINT [FK__SYZZ__F_HW__09E968C4] FOREIGN KEY([F_HW])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__SYZZ__F_HW__09E968C4]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[SYZZ]'))
ALTER TABLE [DBO].[SYZZ] CHECK CONSTRAINT [FK__SYZZ__F_HW__09E968C4]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__SYZZ__F_SPBH__0ADD8CFD]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[SYZZ]'))
ALTER TABLE [DBO].[SYZZ]  WITH CHECK ADD  CONSTRAINT [FK__SYZZ__F_SPBH__0ADD8CFD] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__SYZZ__F_SPBH__0ADD8CFD]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[SYZZ]'))
ALTER TABLE [DBO].[SYZZ] CHECK CONSTRAINT [FK__SYZZ__F_SPBH__0ADD8CFD]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__TJDMX2__F_SPBH__0BD1B136]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[TJDMX2]'))
ALTER TABLE [DBO].[TJDMX2]  WITH CHECK ADD  CONSTRAINT [FK__TJDMX2__F_SPBH__0BD1B136] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__TJDMX2__F_SPBH__0BD1B136]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[TJDMX2]'))
ALTER TABLE [DBO].[TJDMX2] CHECK CONSTRAINT [FK__TJDMX2__F_SPBH__0BD1B136]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XHD__F_BM__0CC5D56F]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XHD]'))
ALTER TABLE [DBO].[XHD]  WITH CHECK ADD  CONSTRAINT [FK__XHD__F_BM__0CC5D56F] FOREIGN KEY([F_BM])
REFERENCES [DBO].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XHD__F_BM__0CC5D56F]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XHD]'))
ALTER TABLE [DBO].[XHD] CHECK CONSTRAINT [FK__XHD__F_BM__0CC5D56F]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XHD__F_CUSTOM__0DB9F9A8]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XHD]'))
ALTER TABLE [DBO].[XHD]  WITH CHECK ADD  CONSTRAINT [FK__XHD__F_CUSTOM__0DB9F9A8] FOREIGN KEY([F_CUSTOM])
REFERENCES [DBO].[CUSTOM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XHD__F_CUSTOM__0DB9F9A8]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XHD]'))
ALTER TABLE [DBO].[XHD] CHECK CONSTRAINT [FK__XHD__F_CUSTOM__0DB9F9A8]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XHD__F_HW__0EAE1DE1]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XHD]'))
ALTER TABLE [DBO].[XHD]  WITH CHECK ADD  CONSTRAINT [FK__XHD__F_HW__0EAE1DE1] FOREIGN KEY([F_HW])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XHD__F_HW__0EAE1DE1]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XHD]'))
ALTER TABLE [DBO].[XHD] CHECK CONSTRAINT [FK__XHD__F_HW__0EAE1DE1]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XHD__F_YWY__0FA2421A]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XHD]'))
ALTER TABLE [DBO].[XHD]  WITH CHECK ADD  CONSTRAINT [FK__XHD__F_YWY__0FA2421A] FOREIGN KEY([F_YWY])
REFERENCES [DBO].[YWY] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XHD__F_YWY__0FA2421A]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XHD]'))
ALTER TABLE [DBO].[XHD] CHECK CONSTRAINT [FK__XHD__F_YWY__0FA2421A]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XHD2__F_BM__10966653]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XHD2]'))
ALTER TABLE [DBO].[XHD2]  WITH CHECK ADD  CONSTRAINT [FK__XHD2__F_BM__10966653] FOREIGN KEY([F_BM])
REFERENCES [DBO].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XHD2__F_BM__10966653]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XHD2]'))
ALTER TABLE [DBO].[XHD2] CHECK CONSTRAINT [FK__XHD2__F_BM__10966653]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XHD2__F_CUSTOM__118A8A8C]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XHD2]'))
ALTER TABLE [DBO].[XHD2]  WITH CHECK ADD  CONSTRAINT [FK__XHD2__F_CUSTOM__118A8A8C] FOREIGN KEY([F_CUSTOM])
REFERENCES [DBO].[CUSTOM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XHD2__F_CUSTOM__118A8A8C]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XHD2]'))
ALTER TABLE [DBO].[XHD2] CHECK CONSTRAINT [FK__XHD2__F_CUSTOM__118A8A8C]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XHD2__F_HW__127EAEC5]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XHD2]'))
ALTER TABLE [DBO].[XHD2]  WITH CHECK ADD  CONSTRAINT [FK__XHD2__F_HW__127EAEC5] FOREIGN KEY([F_HW])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XHD2__F_HW__127EAEC5]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XHD2]'))
ALTER TABLE [DBO].[XHD2] CHECK CONSTRAINT [FK__XHD2__F_HW__127EAEC5]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XHD2__F_YWY__1372D2FE]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XHD2]'))
ALTER TABLE [DBO].[XHD2]  WITH CHECK ADD  CONSTRAINT [FK__XHD2__F_YWY__1372D2FE] FOREIGN KEY([F_YWY])
REFERENCES [DBO].[YWY] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XHD2__F_YWY__1372D2FE]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XHD2]'))
ALTER TABLE [DBO].[XHD2] CHECK CONSTRAINT [FK__XHD2__F_YWY__1372D2FE]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XHDMX__F_SPBH__1466F737]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XHDMX]'))
ALTER TABLE [DBO].[XHDMX]  WITH CHECK ADD  CONSTRAINT [FK__XHDMX__F_SPBH__1466F737] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XHDMX__F_SPBH__1466F737]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XHDMX]'))
ALTER TABLE [DBO].[XHDMX] CHECK CONSTRAINT [FK__XHDMX__F_SPBH__1466F737]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XHDMX2__F_SPBH__155B1B70]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XHDMX2]'))
ALTER TABLE [DBO].[XHDMX2]  WITH CHECK ADD  CONSTRAINT [FK__XHDMX2__F_SPBH__155B1B70] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XHDMX2__F_SPBH__155B1B70]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XHDMX2]'))
ALTER TABLE [DBO].[XHDMX2] CHECK CONSTRAINT [FK__XHDMX2__F_SPBH__155B1B70]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XSMXZ__F_BM__164F3FA9]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XSMXZ]'))
ALTER TABLE [DBO].[XSMXZ]  WITH CHECK ADD  CONSTRAINT [FK__XSMXZ__F_BM__164F3FA9] FOREIGN KEY([F_BM])
REFERENCES [DBO].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XSMXZ__F_BM__164F3FA9]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XSMXZ]'))
ALTER TABLE [DBO].[XSMXZ] CHECK CONSTRAINT [FK__XSMXZ__F_BM__164F3FA9]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XSMXZ__F_CUSTOM__174363E2]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XSMXZ]'))
ALTER TABLE [DBO].[XSMXZ]  WITH CHECK ADD  CONSTRAINT [FK__XSMXZ__F_CUSTOM__174363E2] FOREIGN KEY([F_CUSTOM])
REFERENCES [DBO].[CUSTOM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XSMXZ__F_CUSTOM__174363E2]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XSMXZ]'))
ALTER TABLE [DBO].[XSMXZ] CHECK CONSTRAINT [FK__XSMXZ__F_CUSTOM__174363E2]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XSMXZ__F_HW__1837881B]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XSMXZ]'))
ALTER TABLE [DBO].[XSMXZ]  WITH CHECK ADD  CONSTRAINT [FK__XSMXZ__F_HW__1837881B] FOREIGN KEY([F_HW])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XSMXZ__F_HW__1837881B]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XSMXZ]'))
ALTER TABLE [DBO].[XSMXZ] CHECK CONSTRAINT [FK__XSMXZ__F_HW__1837881B]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XSMXZ__F_SPBH__192BAC54]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XSMXZ]'))
ALTER TABLE [DBO].[XSMXZ]  WITH CHECK ADD  CONSTRAINT [FK__XSMXZ__F_SPBH__192BAC54] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XSMXZ__F_SPBH__192BAC54]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XSMXZ]'))
ALTER TABLE [DBO].[XSMXZ] CHECK CONSTRAINT [FK__XSMXZ__F_SPBH__192BAC54]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XSMXZ__F_YWY__1A1FD08D]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XSMXZ]'))
ALTER TABLE [DBO].[XSMXZ]  WITH CHECK ADD  CONSTRAINT [FK__XSMXZ__F_YWY__1A1FD08D] FOREIGN KEY([F_YWY])
REFERENCES [DBO].[YWY] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XSMXZ__F_YWY__1A1FD08D]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XSMXZ]'))
ALTER TABLE [DBO].[XSMXZ] CHECK CONSTRAINT [FK__XSMXZ__F_YWY__1A1FD08D]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XSZZ__F_HW__1B13F4C6]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XSZZ]'))
ALTER TABLE [DBO].[XSZZ]  WITH CHECK ADD  CONSTRAINT [FK__XSZZ__F_HW__1B13F4C6] FOREIGN KEY([F_HW])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XSZZ__F_HW__1B13F4C6]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XSZZ]'))
ALTER TABLE [DBO].[XSZZ] CHECK CONSTRAINT [FK__XSZZ__F_HW__1B13F4C6]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XSZZ__F_SPBH__1C0818FF]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XSZZ]'))
ALTER TABLE [DBO].[XSZZ]  WITH CHECK ADD  CONSTRAINT [FK__XSZZ__F_SPBH__1C0818FF] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__XSZZ__F_SPBH__1C0818FF]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[XSZZ]'))
ALTER TABLE [DBO].[XSZZ] CHECK CONSTRAINT [FK__XSZZ__F_SPBH__1C0818FF]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YFHXZ__F_BM__1CFC3D38]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YFHXZ]'))
ALTER TABLE [DBO].[YFHXZ]  WITH CHECK ADD  CONSTRAINT [FK__YFHXZ__F_BM__1CFC3D38] FOREIGN KEY([F_BM])
REFERENCES [DBO].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YFHXZ__F_BM__1CFC3D38]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YFHXZ]'))
ALTER TABLE [DBO].[YFHXZ] CHECK CONSTRAINT [FK__YFHXZ__F_BM__1CFC3D38]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YFHXZ__F_VENDOR__1DF06171]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YFHXZ]'))
ALTER TABLE [DBO].[YFHXZ]  WITH CHECK ADD  CONSTRAINT [FK__YFHXZ__F_VENDOR__1DF06171] FOREIGN KEY([F_VENDOR])
REFERENCES [DBO].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YFHXZ__F_VENDOR__1DF06171]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YFHXZ]'))
ALTER TABLE [DBO].[YFHXZ] CHECK CONSTRAINT [FK__YFHXZ__F_VENDOR__1DF06171]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YFJSD2__F_BM__1EE485AA]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YFJSD2]'))
ALTER TABLE [DBO].[YFJSD2]  WITH CHECK ADD  CONSTRAINT [FK__YFJSD2__F_BM__1EE485AA] FOREIGN KEY([F_BM])
REFERENCES [DBO].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YFJSD2__F_BM__1EE485AA]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YFJSD2]'))
ALTER TABLE [DBO].[YFJSD2] CHECK CONSTRAINT [FK__YFJSD2__F_BM__1EE485AA]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YFJSD2__F_VENDOR__1FD8A9E3]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YFJSD2]'))
ALTER TABLE [DBO].[YFJSD2]  WITH CHECK ADD  CONSTRAINT [FK__YFJSD2__F_VENDOR__1FD8A9E3] FOREIGN KEY([F_VENDOR])
REFERENCES [DBO].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YFJSD2__F_VENDOR__1FD8A9E3]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YFJSD2]'))
ALTER TABLE [DBO].[YFJSD2] CHECK CONSTRAINT [FK__YFJSD2__F_VENDOR__1FD8A9E3]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YFMXZ__F_BM__20CCCE1C]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YFMXZ]'))
ALTER TABLE [DBO].[YFMXZ]  WITH CHECK ADD  CONSTRAINT [FK__YFMXZ__F_BM__20CCCE1C] FOREIGN KEY([F_BM])
REFERENCES [DBO].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YFMXZ__F_BM__20CCCE1C]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YFMXZ]'))
ALTER TABLE [DBO].[YFMXZ] CHECK CONSTRAINT [FK__YFMXZ__F_BM__20CCCE1C]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YFMXZ__F_VENDOR__21C0F255]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YFMXZ]'))
ALTER TABLE [DBO].[YFMXZ]  WITH CHECK ADD  CONSTRAINT [FK__YFMXZ__F_VENDOR__21C0F255] FOREIGN KEY([F_VENDOR])
REFERENCES [DBO].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YFMXZ__F_VENDOR__21C0F255]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YFMXZ]'))
ALTER TABLE [DBO].[YFMXZ] CHECK CONSTRAINT [FK__YFMXZ__F_VENDOR__21C0F255]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YFZZ__F_BM__22B5168E]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YFZZ]'))
ALTER TABLE [DBO].[YFZZ]  WITH CHECK ADD  CONSTRAINT [FK__YFZZ__F_BM__22B5168E] FOREIGN KEY([F_BM])
REFERENCES [DBO].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YFZZ__F_BM__22B5168E]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YFZZ]'))
ALTER TABLE [DBO].[YFZZ] CHECK CONSTRAINT [FK__YFZZ__F_BM__22B5168E]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YFZZ__F_DM__23A93AC7]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YFZZ]'))
ALTER TABLE [DBO].[YFZZ]  WITH CHECK ADD  CONSTRAINT [FK__YFZZ__F_DM__23A93AC7] FOREIGN KEY([F_DM])
REFERENCES [DBO].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YFZZ__F_DM__23A93AC7]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YFZZ]'))
ALTER TABLE [DBO].[YFZZ] CHECK CONSTRAINT [FK__YFZZ__F_DM__23A93AC7]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YSHXZ__F_BM__249D5F00]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YSHXZ]'))
ALTER TABLE [DBO].[YSHXZ]  WITH CHECK ADD  CONSTRAINT [FK__YSHXZ__F_BM__249D5F00] FOREIGN KEY([F_BM])
REFERENCES [DBO].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YSHXZ__F_BM__249D5F00]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YSHXZ]'))
ALTER TABLE [DBO].[YSHXZ] CHECK CONSTRAINT [FK__YSHXZ__F_BM__249D5F00]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YSHXZ__F_CUSTOM__25918339]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YSHXZ]'))
ALTER TABLE [DBO].[YSHXZ]  WITH CHECK ADD  CONSTRAINT [FK__YSHXZ__F_CUSTOM__25918339] FOREIGN KEY([F_CUSTOM])
REFERENCES [DBO].[CUSTOM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YSHXZ__F_CUSTOM__25918339]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YSHXZ]'))
ALTER TABLE [DBO].[YSHXZ] CHECK CONSTRAINT [FK__YSHXZ__F_CUSTOM__25918339]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YSJSD2__F_BM__2685A772]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YSJSD2]'))
ALTER TABLE [DBO].[YSJSD2]  WITH CHECK ADD  CONSTRAINT [FK__YSJSD2__F_BM__2685A772] FOREIGN KEY([F_BM])
REFERENCES [DBO].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YSJSD2__F_BM__2685A772]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YSJSD2]'))
ALTER TABLE [DBO].[YSJSD2] CHECK CONSTRAINT [FK__YSJSD2__F_BM__2685A772]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YSJSD2__F_CUSTOM__2779CBAB]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YSJSD2]'))
ALTER TABLE [DBO].[YSJSD2]  WITH CHECK ADD  CONSTRAINT [FK__YSJSD2__F_CUSTOM__2779CBAB] FOREIGN KEY([F_CUSTOM])
REFERENCES [DBO].[CUSTOM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YSJSD2__F_CUSTOM__2779CBAB]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YSJSD2]'))
ALTER TABLE [DBO].[YSJSD2] CHECK CONSTRAINT [FK__YSJSD2__F_CUSTOM__2779CBAB]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YSMXZ__F_BM__286DEFE4]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YSMXZ]'))
ALTER TABLE [DBO].[YSMXZ]  WITH CHECK ADD  CONSTRAINT [FK__YSMXZ__F_BM__286DEFE4] FOREIGN KEY([F_BM])
REFERENCES [DBO].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YSMXZ__F_BM__286DEFE4]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YSMXZ]'))
ALTER TABLE [DBO].[YSMXZ] CHECK CONSTRAINT [FK__YSMXZ__F_BM__286DEFE4]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YSMXZ__F_CUSTOM__2962141D]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YSMXZ]'))
ALTER TABLE [DBO].[YSMXZ]  WITH CHECK ADD  CONSTRAINT [FK__YSMXZ__F_CUSTOM__2962141D] FOREIGN KEY([F_CUSTOM])
REFERENCES [DBO].[CUSTOM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YSMXZ__F_CUSTOM__2962141D]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YSMXZ]'))
ALTER TABLE [DBO].[YSMXZ] CHECK CONSTRAINT [FK__YSMXZ__F_CUSTOM__2962141D]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YSZZ__F_BM__2A563856]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YSZZ]'))
ALTER TABLE [DBO].[YSZZ]  WITH CHECK ADD  CONSTRAINT [FK__YSZZ__F_BM__2A563856] FOREIGN KEY([F_BM])
REFERENCES [DBO].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YSZZ__F_BM__2A563856]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YSZZ]'))
ALTER TABLE [DBO].[YSZZ] CHECK CONSTRAINT [FK__YSZZ__F_BM__2A563856]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YSZZ__F_DM__2B4A5C8F]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YSZZ]'))
ALTER TABLE [DBO].[YSZZ]  WITH CHECK ADD  CONSTRAINT [FK__YSZZ__F_DM__2B4A5C8F] FOREIGN KEY([F_DM])
REFERENCES [DBO].[CUSTOM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YSZZ__F_DM__2B4A5C8F]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YSZZ]'))
ALTER TABLE [DBO].[YSZZ] CHECK CONSTRAINT [FK__YSZZ__F_DM__2B4A5C8F]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YWY__F_BM__2C3E80C8]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YWY]'))
ALTER TABLE [DBO].[YWY]  WITH CHECK ADD  CONSTRAINT [FK__YWY__F_BM__2C3E80C8] FOREIGN KEY([F_BM])
REFERENCES [DBO].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__YWY__F_BM__2C3E80C8]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[YWY]'))
ALTER TABLE [DBO].[YWY] CHECK CONSTRAINT [FK__YWY__F_BM__2C3E80C8]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__ZZD__F_HW1__2D32A501]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[ZZD]'))
ALTER TABLE [DBO].[ZZD]  WITH CHECK ADD  CONSTRAINT [FK__ZZD__F_HW1__2D32A501] FOREIGN KEY([F_HW1])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__ZZD__F_HW1__2D32A501]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[ZZD]'))
ALTER TABLE [DBO].[ZZD] CHECK CONSTRAINT [FK__ZZD__F_HW1__2D32A501]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__ZZD__F_HW2__2E26C93A]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[ZZD]'))
ALTER TABLE [DBO].[ZZD]  WITH CHECK ADD  CONSTRAINT [FK__ZZD__F_HW2__2E26C93A] FOREIGN KEY([F_HW2])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__ZZD__F_HW2__2E26C93A]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[ZZD]'))
ALTER TABLE [DBO].[ZZD] CHECK CONSTRAINT [FK__ZZD__F_HW2__2E26C93A]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__ZZD__F_SPBH__2F1AED73]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[ZZD]'))
ALTER TABLE [DBO].[ZZD]  WITH CHECK ADD  CONSTRAINT [FK__ZZD__F_SPBH__2F1AED73] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__ZZD__F_SPBH__2F1AED73]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[ZZD]'))
ALTER TABLE [DBO].[ZZD] CHECK CONSTRAINT [FK__ZZD__F_SPBH__2F1AED73]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__ZZD2__F_BM__300F11AC]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[ZZD2]'))
ALTER TABLE [DBO].[ZZD2]  WITH CHECK ADD  CONSTRAINT [FK__ZZD2__F_BM__300F11AC] FOREIGN KEY([F_BM])
REFERENCES [DBO].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__ZZD2__F_BM__300F11AC]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[ZZD2]'))
ALTER TABLE [DBO].[ZZD2] CHECK CONSTRAINT [FK__ZZD2__F_BM__300F11AC]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__ZZD2__F_HW1__310335E5]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[ZZD2]'))
ALTER TABLE [DBO].[ZZD2]  WITH CHECK ADD  CONSTRAINT [FK__ZZD2__F_HW1__310335E5] FOREIGN KEY([F_HW1])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__ZZD2__F_HW1__310335E5]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[ZZD2]'))
ALTER TABLE [DBO].[ZZD2] CHECK CONSTRAINT [FK__ZZD2__F_HW1__310335E5]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__ZZD2__F_HW2__31F75A1E]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[ZZD2]'))
ALTER TABLE [DBO].[ZZD2]  WITH CHECK ADD  CONSTRAINT [FK__ZZD2__F_HW2__31F75A1E] FOREIGN KEY([F_HW2])
REFERENCES [DBO].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__ZZD2__F_HW2__31F75A1E]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[ZZD2]'))
ALTER TABLE [DBO].[ZZD2] CHECK CONSTRAINT [FK__ZZD2__F_HW2__31F75A1E]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__ZZD2__F_SPBH__32EB7E57]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[ZZD2]'))
ALTER TABLE [DBO].[ZZD2]  WITH CHECK ADD  CONSTRAINT [FK__ZZD2__F_SPBH__32EB7E57] FOREIGN KEY([F_SPBH])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__ZZD2__F_SPBH__32EB7E57]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[ZZD2]'))
ALTER TABLE [DBO].[ZZD2] CHECK CONSTRAINT [FK__ZZD2__F_SPBH__32EB7E57]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__ZZMBMX__F_SPBH1__33DFA290]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[ZZMBMX]'))
ALTER TABLE [DBO].[ZZMBMX]  WITH CHECK ADD  CONSTRAINT [FK__ZZMBMX__F_SPBH1__33DFA290] FOREIGN KEY([F_SPBH1])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__ZZMBMX__F_SPBH1__33DFA290]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[ZZMBMX]'))
ALTER TABLE [DBO].[ZZMBMX] CHECK CONSTRAINT [FK__ZZMBMX__F_SPBH1__33DFA290]
GO
IF NOT EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__ZZMBMX__F_SPBH2__34D3C6C9]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[ZZMBMX]'))
ALTER TABLE [DBO].[ZZMBMX]  WITH CHECK ADD  CONSTRAINT [FK__ZZMBMX__F_SPBH2__34D3C6C9] FOREIGN KEY([F_SPBH2])
REFERENCES [DBO].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM SYS.FOREIGN_KEYS WHERE OBJECT_ID = OBJECT_ID(N'[DBO].[FK__ZZMBMX__F_SPBH2__34D3C6C9]') AND PARENT_OBJECT_ID = OBJECT_ID(N'[DBO].[ZZMBMX]'))
ALTER TABLE [DBO].[ZZMBMX] CHECK CONSTRAINT [FK__ZZMBMX__F_SPBH2__34D3C6C9]
GO
