/*    ==脚本参数==

    源服务器版本 : SQL Server 2012 (11.0.2100)
    源数据库引擎版本 : Microsoft SQL Server Standard Edition
    源数据库引擎类型 : 独立的 SQL Server

    目标服务器版本 : SQL Server 2012
    目标数据库引擎版本 : Microsoft SQL Server Standard Edition
    目标数据库引擎类型 : 独立的 SQL Server
*/

USE [DATA1]
GO
/****** Object:  Table [dbo].[BM]    Script Date: 2023/6/4 19:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BM](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BMMC] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DE] [float] NULL,
	[F_DE1] [float] NULL,
	[F_ZJM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FLAG] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FROZEN] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZTID] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TEL] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__BM__08961D2F] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CBPOWER]    Script Date: 2023/6/4 19:14:22 ******/
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
 CONSTRAINT [PK__CBPOWER__0C66AE13] PRIMARY KEY CLUSTERED 
(
	[F_FORMNAME] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CKD]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKD](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2] [float] NULL,
	[F_GUID] [varchar](60) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CKD__1313ABA2] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CKD2]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKD2](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2] [float] NULL,
	[F_GUID] [varchar](60) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CKD2__1407CFDB] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CKD3]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKD3](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2] [float] NULL,
	[F_GUID] [varchar](60) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CKD3__14FBF414] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CKDMX]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_DQDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SCDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CKDMX__15F0184D] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CKDMX2]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_DQDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SCDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CKDMX2__16E43C86] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CKDMX3]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_DQDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SCDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CKDMX3__17D860BF] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CUSTOMDJ]    Script Date: 2023/6/4 19:14:22 ******/
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
	[F_READONLY] [varchar](5) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VISIBLE] [varchar](5) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PANEL] [varchar](5) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VTYPE] [int] NULL,
	[F_CHECKBOX] [varchar](5) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CUSTOMDJ__1E855E4E] PRIMARY KEY CLUSTERED 
(
	[F_DJLX] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DBD]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBD](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW1] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW2] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_DBYSD] [int] NULL,
	[F_TJ2] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GUID] [varchar](60) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DBD__2AEB3533] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DBD2]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBD2](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW1] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW2] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_DBYSD] [int] NULL,
	[F_TJ2] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GUID] [varchar](60) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DBD2__2BDF596C] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DBD3]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBD3](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW1] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW2] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_DBYSD] [int] NULL,
	[F_TJ2] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GUID] [varchar](60) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DBD3__2CD37DA5] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DBDMX]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_DQDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SCDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DBDMX__2DC7A1DE] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DBDMX2]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_DQDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SCDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DBDMX2__2EBBC617] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DBDMX3]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_DQDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SCDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DBDMX3__2FAFEA50] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DJH]    Script Date: 2023/6/4 19:14:22 ******/
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
	[F_SP] [int] NULL,
	[F_CXFA] [int] NULL,
	[F_DBYSD] [int] NULL,
	[F_CZCARD] [int] NULL,
	[F_GBF] [float] NULL,
	[F_SKD] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[GHD]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GHD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GHD](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJH] [int] NOT NULL,
	[F_LB] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUNAME] [varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JE] [float] NOT NULL,
	[F_GBF] [float] NOT NULL,
	[F_ZF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__GHD__44AB0736] PRIMARY KEY CLUSTERED 
(
	[F_DATE] ASC,
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[GHDH]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GHDH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GHDH](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJH] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[GHHZ]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GHHZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GHHZ](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJH] [int] NOT NULL,
	[F_YSH] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GHDATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_JE] [float] NULL,
	[F_JZ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__GHHZ__459F2B6F] PRIMARY KEY CLUSTERED 
(
	[F_GHDATE] ASC,
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[GHLB]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GHLB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GHLB](
	[F_DM] [varchar](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_GHLBMC] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FEE] [float] NULL,
	[F_GBF] [float] NULL,
 CONSTRAINT [PK__GHLB__46934FA8] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[HW]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HW](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HWMC] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_LOCAL] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__HW__478773E1] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[HWSPBGY]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HWSPBGY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HWSPBGY](
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BGY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__HWSPBGY__496FBC53] PRIMARY KEY CLUSTERED 
(
	[F_HW] ASC,
	[F_SPBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHD]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHD](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_FPLX] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GUID] [varchar](60) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JHD__4C4C28FE] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHD2]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHD2](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_FPLX] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GUID] [varchar](60) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JHD2__4D404D37] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHD3]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHD3](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_FPLX] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GUID] [varchar](60) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JHD3__4E347170] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHDMX]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_DQDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SCDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JHDMX__4F2895A9] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHDMX2]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_DQDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SCDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JHDMX2__501CB9E2] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHDMX3]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_DQDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SCDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JHDMX3__5110DE1B] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHZZ]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHZZ](
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__JHZZ__52050254] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JSFS]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JSFS]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JSFS](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_JC] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
	[F_POSUSED] [int] NULL,
	[F_DEFAULT] [int] NULL,
	[F_ZJM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISJFJE] [int] NULL,
	[F_ISJEJF] [int] NULL,
	[F_IFJF] [int] NULL,
 CONSTRAINT [PK__JSFS__52F9268D] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[KCMXZ]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KCMXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KCMXZ](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLS] [float] NULL,
	[F_JES] [float] NULL,
	[F_SLF] [float] NULL,
	[F_JEF] [float] NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLX] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HC] [int] NULL,
	[F_CX] [int] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[KCYE]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KCYE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KCYE](
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SLYE] [float] NULL,
 CONSTRAINT [PK__KCYE__5C8290C7] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[KCZZ]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KCZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KCZZ](
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__KCZZ__5E6AD939] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[KJQJ]    Script Date: 2023/6/4 19:14:22 ******/
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
 CONSTRAINT [PK__KJQJ__5F5EFD72] PRIMARY KEY CLUSTERED 
(
	[F_YF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[OPERATOR]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OPERATOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[OPERATOR](
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_NAME] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_PASSWORD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZN] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_RED] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FROZEN] [int] NULL,
	[F_CO] [varchar](3) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SALEID] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PURID] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_INVID] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_QCHKID] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FINID] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFFIXSALE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFFIXINV] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFFIXFIN] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFFIXQCHK] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFFIXPUR] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__OPERATOR__67001F3A] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PDD]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PDD](
	[F_DJH] [int] NOT NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BZ] [varchar](250) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFPHPD] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZTYPE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PDD__68E867AC] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PDD2]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PDD2](
	[F_DJH] [int] NOT NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BZ] [varchar](250) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFPHPD] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZTYPE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PDD2__69DC8BE5] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PDD3]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PDD3](
	[F_DJH] [int] NOT NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BZ] [varchar](250) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFPHPD] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZTYPE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PDD3__6AD0B01E] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PDDMX]    Script Date: 2023/6/4 19:14:22 ******/
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
	[F_DQ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLYE] [float] NULL,
	[F_PDSL] [float] NULL,
	[F_PYSL] [float] NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ2] [float] NULL,
	[F_PDSL1] [float] NULL,
	[F_PYSL1] [float] NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_READONLY] [int] NULL,
	[F_DQDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SCDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PDDMX__6BC4D457] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PDDMX2]    Script Date: 2023/6/4 19:14:22 ******/
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
	[F_DQ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLYE] [float] NULL,
	[F_PDSL] [float] NULL,
	[F_PYSL] [float] NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ2] [float] NULL,
	[F_PDSL1] [float] NULL,
	[F_PYSL1] [float] NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_READONLY] [int] NULL,
	[F_DQDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SCDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PDDMX2__6CB8F890] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PDDMX3]    Script Date: 2023/6/4 19:14:22 ******/
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
	[F_DQ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLYE] [float] NULL,
	[F_PDSL] [float] NULL,
	[F_PYSL] [float] NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ2] [float] NULL,
	[F_PDSL1] [float] NULL,
	[F_PYSL1] [float] NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_READONLY] [int] NULL,
	[F_DQDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SCDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PDDMX3__6DAD1CC9] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[POWER]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[POWER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[POWER](
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZT] [varchar](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_QX] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GN] [varchar](40) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SY] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DY] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[POWERITEM]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[POWERITEM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[POWERITEM](
	[F_BH] [varchar](4) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_NAME] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CAPTION] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CLASSNAME] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RECIPE]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RECIPE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RECIPE](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_NUM] [int] NULL,
	[F_SPMC] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SK] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SKR] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CO] [varchar](3) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISSAVE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GUID] [varchar](60) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__RECIPE__7DE38492] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RECIPE2]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RECIPE2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RECIPE2](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_NUM] [int] NULL,
	[F_SPMC] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SK] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SKR] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CO] [varchar](3) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISSAVE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GUID] [varchar](60) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__RECIPE2__7ED7A8CB] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RECIPEDJH]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RECIPEDJH]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RECIPEDJH](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJH] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RECIPEMX]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RECIPEMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RECIPEMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_KL] [int] NULL,
	[F_DJ2] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__RECIPEMX__7FCBCD04] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RECIPEMX2]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RECIPEMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RECIPEMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_KL] [int] NULL,
	[F_DJ2] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__RECIPEMX2__00BFF13D] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RKD]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKD](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2] [float] NULL,
	[F_GUID] [varchar](60) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__RKD__04908221] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RKD2]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKD2](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2] [float] NULL,
	[F_GUID] [varchar](60) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__RKD2__0584A65A] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RKD3]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKD3](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2] [float] NULL,
	[F_GUID] [varchar](60) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__RKD3__0678CA93] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RKDMX]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_DQDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SCDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__RKDMX__076CEECC] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RKDMX2]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_DQDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SCDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__RKDMX2__08611305] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RKDMX3]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_DQDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SCDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__RKDMX3__0955373E] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SFZY]    Script Date: 2023/6/4 19:14:22 ******/
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
 CONSTRAINT [PK__SFZY__0A495B77] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SP]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SP](
	[F_TM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CBFF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFPH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PHCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MAXSL] [float] NULL,
	[F_MINSL] [float] NULL,
	[F_SLV] [float] NULL,
	[F_CS] [float] NULL,
	[F_BZQ] [int] NULL,
	[F_ZJM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_DWCB] [float] NULL,
	[F_SPSX1] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX2] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX3] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX4] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX5] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_RATE] [float] NULL,
	[F_FUNCTION] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_GNZZ] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YF] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZFBL] [float] NULL,
	[F_YBLB] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JX] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_EDITDATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_INSERTDATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MAKER] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GMP] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PZWH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ALIAS] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ENGMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_QBZ] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_STUFF] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZCSB] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PACKUNIT1] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PACKRATE1] [int] NULL,
	[F_PACKUNIT2] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PACKRATE2] [int] NULL,
	[F_PACKUNIT3] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PACKRATE3] [int] NULL,
	[F_ZLBZ] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC2] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC3] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VIRTUALSP] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFDQ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFDQDATE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFSCDATE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH2] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFNKC] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FROZEN] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC6] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC7] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC8] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC9] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC10] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__SP__0D25C822] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SPLB]    Script Date: 2023/6/4 19:14:22 ******/
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
 CONSTRAINT [PK__SPLB__11EA7D3F] PRIMARY KEY CLUSTERED 
(
	[F_LBBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SPPC]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPPC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SPPC](
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DQ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_DQDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SCDATE] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__SPPC__12DEA178] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC,
	[F_PH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SPSHORT]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPSHORT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SPSHORT](
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ2] [float] NULL,
	[F_CS] [int] NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MEMO] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UP] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UPFLAG] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UPTIME] [datetime] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VEN_SP]    Script Date: 2023/6/4 19:14:22 ******/
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
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ] [float] NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VEN_SP__1F44785D] PRIMARY KEY CLUSTERED 
(
	[F_VENDOR] ASC,
	[F_SPBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VENDOR]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VENDOR](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](80) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TEL] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_POSTCODE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ADDRESS] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LXR] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZH] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SH] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_KHH] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_EMAIL] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FAX] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GMP] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XKZH] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YXQ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZZH] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_EDITDATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_INSERTDATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC6] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC7] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC8] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC9] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC10] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VENDOR__20389C96] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VENDOR3]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDOR3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VENDOR3](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VENDOR3__212CC0CF] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VENDORGROUP]    Script Date: 2023/6/4 19:14:22 ******/
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
/****** Object:  Table [dbo].[VENDORLB]    Script Date: 2023/6/4 19:14:22 ******/
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
 CONSTRAINT [PK__VENDORLB__2220E508] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VIP]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VIP](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZJM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TEL] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_POSTCODE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ADDRESS] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_KHH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LJXF] [float] NULL,
	[F_GRADE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_USED] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CANCEL] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFYH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISYH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BZ] [varchar](250) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LJCS] [int] NULL,
	[F_LJFF] [float] NULL,
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
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DEP] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LJXFJF] [float] NULL,
	[F_LJFFJF] [float] NULL,
	[F_SEX] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BIRTHDAY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VIP__23150941] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VIP_JFFORMULA]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIP_JFFORMULA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VIP_JFFORMULA](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FORMULA] [varchar](250) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MEMO] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VIP_JFFORMULA__24092D7A] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VIP_JFTOJEFORMULA]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIP_JFTOJEFORMULA]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VIP_JFTOJEFORMULA](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FORMULA] [varchar](250) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_USED] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MEMO] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VIP_JFTOJEFORMUL__24FD51B3] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VIP_ZPDY]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIP_ZPDY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VIP_ZPDY](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZJM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MEMO] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DELJE] [float] NULL,
	[F_DELJF] [float] NULL,
	[F_ISCLEARJE] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCLEARJF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GLKC] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VIP_ZPDY__25F175EC] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VIP2]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIP2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VIP2](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZJM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZ] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TEL] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_POSTCODE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ADDRESS] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_KHH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LJXF] [float] NULL,
	[F_GRADE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_USED] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CANCEL] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFYH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISYH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BZ] [varchar](250) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LJCS] [int] NULL,
	[F_LJFF] [float] NULL,
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
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DEP] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_LJXFJF] [float] NULL,
	[F_LJFFJF] [float] NULL,
	[F_SEX] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BIRTHDAY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VIP2__26E59A25] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VIP3]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIP3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VIP3](
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_VIP] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK__VIP3__27D9BE5E] PRIMARY KEY CLUSTERED 
(
	[F_BM] ASC,
	[F_VIP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VIPMODIFY]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIPMODIFY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VIPMODIFY](
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX] [int] NOT NULL,
	[F_DEP] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_OPERATOR] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VIP] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MEMO] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATA] [image] NULL,
 CONSTRAINT [PK__VIPMODIFY__29C206D0] PRIMARY KEY CLUSTERED 
(
	[F_BM] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VIPMODIFY_UPLOAD]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIPMODIFY_UPLOAD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VIPMODIFY_UPLOAD](
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX] [int] NOT NULL,
 CONSTRAINT [PK__VIPMODIFY_UPLOAD__2AB62B09] PRIMARY KEY CLUSTERED 
(
	[F_BM] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[XSLB]    Script Date: 2023/6/4 19:14:22 ******/
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
 CONSTRAINT [PK__XSLB__4A2ED662] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YFHXZ]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YFHXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YFHXZ](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATEJH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATEFK] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJHJH] [int] NOT NULL,
	[F_DJHFK] [int] NOT NULL,
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JH] [float] NULL,
	[F_FK] [float] NULL,
	[F_HXJE] [float] NULL,
	[F_HXCX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YFHXZ3]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YFHXZ3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YFHXZ3](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATEJH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATEFK] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJHJH] [int] NOT NULL,
	[F_DJHFK] [int] NULL,
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_JH] [float] NULL,
	[F_FK] [float] NULL,
	[F_HXJE] [float] NULL,
	[F_HXCX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YFHXZMX]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YFHXZMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YFHXZMX](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATEJH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATEFK] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJHJH] [int] NOT NULL,
	[F_DJHFK] [int] NULL,
	[F_HC] [int] NULL,
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_HXSL] [float] NULL,
	[F_HXJE] [float] NULL,
	[F_FK] [float] NULL,
	[F_HCJH] [int] NULL,
	[F_HCFK] [int] NULL,
	[F_HXCX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YFHXZMX3]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YFHXZMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YFHXZMX3](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATEJH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATEFK] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJHJH] [int] NULL,
	[F_DJHFK] [int] NULL,
	[F_HC] [int] NULL,
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_HXSL] [float] NULL,
	[F_HXJE] [float] NULL,
	[F_FK] [float] NULL,
	[F_HCJH] [int] NULL,
	[F_HCFK] [int] NULL,
	[F_HXCX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YFJSD2]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YFJSD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YFJSD2](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SKR] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CN] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSJE] [float] NULL,
	[F_BZ] [varchar](250) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YE] [float] NULL,
	[F_HXJE] [float] NULL,
	[F_ZK] [float] NULL,
 CONSTRAINT [PK__YFJSD2__4C171ED4] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YFMXZ]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YFMXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YFMXZ](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLX] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SR] [float] NULL,
	[F_FC] [float] NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YE] [float] NULL,
	[F_HXJE] [float] NULL,
	[F_CX] [int] NULL,
	[F_ZK] [float] NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YFMXZ3]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YFMXZ3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YFMXZ3](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLX] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SR] [float] NULL,
	[F_FC] [float] NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HXJE] [float] NULL,
	[F_CX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YFMXZMX]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YFMXZMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YFMXZMX](
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_HXJE] [float] NULL,
	[F_HXSL] [float] NULL,
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YFMXZMXQC]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YFMXZMXQC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YFMXZMXQC](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_VENDOR] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
 CONSTRAINT [PK__YFMXZMXQC__4D0B430D] PRIMARY KEY CLUSTERED 
(
	[F_DATE] ASC,
	[F_VENDOR] ASC,
	[F_BM] ASC,
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YFZZ]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YFZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YFZZ](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__YFZZ__4DFF6746] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC,
	[F_BM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YSHXZ]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YSHXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YSHXZ](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATEXS] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATESK] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJHXS] [int] NOT NULL,
	[F_DJHSK] [int] NOT NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XS] [float] NULL,
	[F_SK] [float] NULL,
	[F_HXJE] [float] NULL,
	[F_HXCX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YSHXZ3]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YSHXZ3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YSHXZ3](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATEXS] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATESK] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJHXS] [int] NOT NULL,
	[F_DJHSK] [int] NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_XS] [float] NULL,
	[F_SK] [float] NULL,
	[F_HXJE] [float] NULL,
	[F_HXCX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YSHXZMX]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YSHXZMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YSHXZMX](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATEXS] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATESK] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJHXS] [int] NOT NULL,
	[F_DJHSK] [int] NULL,
	[F_HC] [int] NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_HXSL] [float] NULL,
	[F_HXJE] [float] NULL,
	[F_SK] [float] NULL,
	[F_HCXS] [int] NULL,
	[F_HCSK] [int] NULL,
	[F_HXCX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YSHXZMX3]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YSHXZMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YSHXZMX3](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATEXS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATESK] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJHXS] [int] NULL,
	[F_DJHSK] [int] NULL,
	[F_HC] [int] NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_HXSL] [float] NULL,
	[F_HXJE] [float] NULL,
	[F_SK] [float] NULL,
	[F_HCXS] [int] NULL,
	[F_HCSK] [int] NULL,
	[F_HXCX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YSJSD2]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YSJSD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YSJSD2](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SKR] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CN] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSJE] [float] NULL,
	[F_BZ] [varchar](250) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YE] [float] NULL,
	[F_HXJE] [float] NULL,
	[F_ZK] [float] NULL,
 CONSTRAINT [PK__YSJSD2__4EF38B7F] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YSMXZ]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YSMXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YSMXZ](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLX] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SR] [float] NULL,
	[F_FC] [float] NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YE] [float] NULL,
	[F_HXJE] [float] NULL,
	[F_CX] [int] NULL,
	[F_ZK] [float] NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YSMXZ3]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YSMXZ3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YSMXZ3](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJLX] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SR] [float] NULL,
	[F_FC] [float] NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HXJE] [float] NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YSMXZMX]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YSMXZMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YSMXZMX](
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_HXJE] [float] NULL,
	[F_HXSL] [float] NULL,
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YSMXZMXQC]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YSMXZMXQC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YSMXZMXQC](
	[F_DATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
 CONSTRAINT [PK__YSMXZMXQC__4FE7AFB8] PRIMARY KEY CLUSTERED 
(
	[F_DATE] ASC,
	[F_CUSTOM] ASC,
	[F_BM] ASC,
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YSZZ]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YSZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YSZZ](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__YSZZ__50DBD3F1] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC,
	[F_BM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YWY]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YWY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YWY](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_YWYMC] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DE] [float] NULL,
	[F_DE1] [float] NULL,
	[F_ZJM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__YWY__51CFF82A] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZNPOWER]    Script Date: 2023/6/4 19:14:22 ******/
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
	[F_DY] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__ZNPOWER__63EEA865] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC,
	[F_GN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZNXX]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZNXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZNXX](
	[F_DM] [varchar](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SA] [int] NULL,
	[F_CO] [varchar](3) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__ZNXX__64E2CC9E] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZTCS]    Script Date: 2023/6/4 19:14:22 ******/
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
	[F_YC] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VER] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZTID] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZTID]    Script Date: 2023/6/4 19:14:22 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZTID]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZTID](
	[F_DM] [varchar](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](80) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_ZJM] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FLAG] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__ZTID__65D6F0D7] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CGD', 1, N'F_SPBH', N'商品编号', N'商品编号', 67, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CGD', 2, N'F_SPMC', N'商品名称', N'商品名称', 105, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CGD', 3, N'F_DW', N'单位', N'单位', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CGD', 4, N'F_CD', N'产地', N'产地', -1, N'TRUE ', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CGD', 5, N'F_SPGG', N'商品规格', N'商品规格', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CGD', 6, N'F_SL2', N'件数', N'件数', 62, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CGD', 7, N'F_SL', N'数量', N'数量', 67, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CGD', 8, N'F_DJ', N'含税单价', N'含税单价', 74, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CGD', 9, N'F_JE', N'含税金额', N'含税金额', 88, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CGD', 10, N'F_DJ1', N'批发价', N'批发价', -1, N'FALSE', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CGD', 11, N'F_DJ2', N'零售价', N'零售价', -1, N'FALSE', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CGD', 12, N'F_PH', N'批号', N'批号', 128, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CGD', 13, N'F_DQ', N'到期', N'到期', 92, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CGD', 14, N'F_UC', N'字符自定义', N'字符自定义', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CGD', 15, N'F_UN', N'数值自定义', N'数值自定义', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CGD', 16, N'F_SLJC', N'结存数量', N'结存数量', -1, N'FALSE', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CGD', 17, N'F_DJ3', N'单价3', N'单价3', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CGD', 18, N'F_DJ4', N'单价4', N'单价4', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CGD', 19, N'F_DJ5', N'单价5', N'单价5', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CGD', 20, N'F_SPSX1', N'F_SPSX1', N'F_SPSX1', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CGD', 21, N'F_SPSX2', N'F_SPSX2', N'F_SPSX2', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 1, N'F_TM', N'条码', N'条码', 128, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 2, N'F_SPBH', N'商品编号', N'商品编号', 90, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 3, N'F_SPMC', N'商品名称', N'商品名称', 139, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 4, N'F_DW', N'单位', N'单位', 46, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 5, N'F_CD', N'产地', N'产地', 144, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 6, N'F_SPGG', N'规格', N'规格', 144, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 7, N'F_PH', N'批号', N'批号', 84, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 8, N'F_DQ', N'到期', N'到期', 60, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 9, N'F_SL', N'F_SL', N'数量', 56, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 10, N'F_DJ', N'F_DJ', N'单价', 74, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 11, N'F_JE', N'F_JE', N'金额', 89, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 12, N'F_SLV', N'税率', N'税率', 78, N'TRUE ', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 13, N'F_SE', N'税额', N'税额', 92, N'TRUE ', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 14, N'F_UC', N'字符自定义', N'字符自定义', 111, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 15, N'F_UN', N'数值自定义', N'数值自定义', 116, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 16, N'F_DJ1', N'批发价', N'批发价', 74, N'FALSE', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 17, N'F_DJ2', N'零售价', N'零售价', 74, N'FALSE', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 18, N'F_DJ3', N'单价3', N'单价3', 74, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 19, N'F_DJ4', N'单价4', N'单价4', 74, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 20, N'F_DJ5', N'单价5', N'单价5', 74, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 21, N'F_SLJC', N'数量结存', N'数量结存', 116, N'FALSE', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 22, N'F_SPSX1', N'F_SPSX1', N'F_SPSX1', 53, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 23, N'F_SPSX2', N'F_SPSX2', N'F_SPSX2', 53, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 24, N'F_DW2', N'F_DW2', N'F_DW2', 46, N'FALSE', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CKD', 25, N'F_SL2', N'件数', N'件数', 116, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CUSTOM', 1, N'F_DM', N'客户代码', N'客户代码', 74, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CUSTOM', 2, N'F_MC', N'客户名称', N'客户名称', 165, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CUSTOM', 3, N'F_ZJM', N'助记码', N'助记码', 74, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CUSTOM', 4, N'F_TEL', N'电话', N'电话', 214, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CUSTOM', 5, N'F_POSTCODE', N'邮政编码', N'邮政编码', 74, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CUSTOM', 6, N'F_ADDRESS', N'地址', N'地址', 214, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CUSTOM', 7, N'F_LXR', N'业务员', N'业务员', 144, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CUSTOM', 8, N'F_ZH', N'帐号', N'帐号', 144, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CUSTOM', 9, N'F_SH', N'税号', N'税号', 144, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CUSTOM', 10, N'F_KHH', N'开户行', N'开户行', 144, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CUSTOM', 11, N'F_SXED', N'授信额度', N'授信额度', 116, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CUSTOM', 12, N'F_UC1', N'F_UC1', N'F_UC1', 1404, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CUSTOM', 13, N'F_UC2', N'F_UC2', N'F_UC2', 1404, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CUSTOM', 14, N'F_UC3', N'F_UC3', N'F_UC3', 1404, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CUSTOM', 15, N'F_UC4', N'F_UC4', N'F_UC4', 1404, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CUSTOM', 16, N'F_UC5', N'F_UC5', N'客户等级', 1404, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CUSTOM', 17, N'F_UN1', N'F_UN1', N'F_UN1', 116, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CUSTOM', 18, N'F_UN2', N'F_UN2', N'F_UN2', 116, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CUSTOM', 19, N'F_UN3', N'F_UN3', N'F_UN3', 116, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CUSTOM', 20, N'F_UN4', N'F_UN4', N'F_UN4', 116, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'CUSTOM', 21, N'F_UN5', N'F_UN5', N'累计消费额', 116, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 1, N'F_TM', N'条码', N'条码', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 2, N'F_SPBH', N'商品编号', N'商品编号', 94, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 3, N'F_SPMC', N'商品名称', N'商品名称', 153, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 4, N'F_DW', N'单位', N'单位', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 5, N'F_CD', N'产地', N'产地', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 6, N'F_SPGG', N'商品规格', N'商品规格', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 7, N'F_SL', N'数量', N'数量', 63, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 8, N'F_PH', N'批号', N'批号', 78, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 9, N'F_DQ', N'到期', N'到期', 60, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 10, N'F_DJ', N'单价', N'单价', 74, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 11, N'F_JE', N'金额', N'金额', 116, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 12, N'F_DJ1', N'批发价', N'批发价', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 13, N'F_DJ2', N'零售价', N'零售价', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 14, N'F_UC', N'字符自定义', N'字符自定义', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 15, N'F_UN', N'数值自定义', N'数值自定义', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 16, N'F_SL2', N'件数', N'件数', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 17, N'F_SLJC', N'数量结存', N'数量结存', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 18, N'F_DJ3', N'单价3', N'单价3', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 19, N'F_DJ4', N'单价4', N'单价4', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 20, N'F_DJ5', N'单价5', N'单价5', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 21, N'F_SPSX1', N'F_SPSX1', N'F_SPSX1', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 22, N'F_SPSX2', N'F_SPSX2', N'F_SPSX2', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DBD', 23, N'F_DW2', N'包装单位', N'包装单位', -1, N'FALSE', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DHD', 1, N'F_TM', N'条码', N'条码', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DHD', 2, N'F_SPBH', N'商品编号', N'商品编号', 62, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DHD', 3, N'F_SPMC', N'商品名称', N'商品名称', 99, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DHD', 4, N'F_DW', N'单位', N'单位', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DHD', 5, N'F_CD', N'产地', N'产地', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DHD', 6, N'F_GG', N'规格', N'规格', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DHD', 7, N'F_SL', N'数量', N'数量', 40, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DHD', 8, N'F_DJ', N'含税单价', N'含税单价', 74, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DHD', 9, N'F_KL', N'扣(%)', N'扣(%)', 36, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DHD', 10, N'F_DJ11', N'单价', N'单价', 74, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DHD', 11, N'F_JE', N'金额', N'金额', 77, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DHD', 12, N'F_SLV', N'税率', N'税率', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DHD', 13, N'F_SE', N'税额', N'税额', -1, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DHD', 14, N'F_HJ', N'价税合计', N'价税合计', 83, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DHD', 15, N'F_DJ1', N'批发价', N'批发价', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DHD', 16, N'F_DJ2', N'零售价', N'零售价', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DHD', 17, N'F_UC', N'字符自定义', N'字符自定义', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DHD', 18, N'F_UN', N'数值制定义', N'数值制定义', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DHD', 19, N'F_SLJC', N'数量结存', N'数量结存', -1, N'FALSE', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DHD', 20, N'F_DJ3', N'单价3', N'单价3', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DHD', 21, N'F_DJ4', N'单价4', N'单价4', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'DHD', 22, N'F_DJ5', N'单价5', N'单价5', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 1, N'F_TM', N'条码', N'条码', 121, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 2, N'F_SPBH', N'商品编号', N'商品编号', 82, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 3, N'F_SPMC', N'商品名称', N'商品名称', 106, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 4, N'F_DW', N'单位', N'单位', 33, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 5, N'F_CD', N'产地', N'产地', 144, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 6, N'F_SPGG', N'商品规格', N'商品规格', 91, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 7, N'F_CS', N'参数', N'参数', 116, N'TRUE ', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 8, N'F_PH', N'批号', N'批号', 87, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 9, N'F_DQ', N'到期', N'到期', 77, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 10, N'F_SL', N'数量', N'数量', 73, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 11, N'F_SL2', N'件数', N'件数', 51, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 12, N'F_JE', N'金额', N'金额', 80, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 13, N'F_DJ', N'单价', N'单价', 74, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 14, N'F_HSDJ', N'含税单价', N'含税单价', 116, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 15, N'F_KL', N'扣(%)', N'扣(%)', 45, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 16, N'F_HJ', N'价税合计', N'价税合计', 88, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 17, N'F_SLV', N'税率', N'税率', 50, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 18, N'F_SE', N'税额', N'税额', 85, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 19, N'F_DJ1', N'批发价', N'批发价', 74, N'TRUE ', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 20, N'F_DJ2', N'零售价', N'零售价', 74, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 21, N'F_UC', N'字符自定义', N'字符自定义', 89, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 22, N'F_UN', N'数值自定义', N'数值自定义', 86, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 23, N'F_SLJC', N'数量结存', N'数量结存', 116, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 24, N'F_MLV', N'毛利率', N'毛利率', 74, N'TRUE ', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 25, N'F_DJ3', N'单价3', N'单价3', 74, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 26, N'F_DJ4', N'单价4', N'单价4', 74, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 27, N'F_DJ5', N'单价5', N'单价5', 74, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 28, N'F_SPSX1', N'F_SPSX1', N'F_SPSX1', 53, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'JHD', 29, N'F_SPSX2', N'F_SPSX2', N'F_SPSX2', 57, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'QCYE', 1, N'F_TM', N'条码', N'条码', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'QCYE', 2, N'F_SPBH', N'商品编号', N'商品编号', 90, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'QCYE', 3, N'F_SPMC', N'商品名称', N'商品名称', 139, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'QCYE', 4, N'F_DW', N'单位', N'单位', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'QCYE', 5, N'F_CD', N'产地', N'产地', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'QCYE', 6, N'F_SPGG', N'F_SPGG', N'商品规格', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'QCYE', 7, N'F_PH', N'批号', N'批号', 84, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'QCYE', 8, N'F_DQ', N'到期', N'到期', 60, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'QCYE', 9, N'F_YLF', N'原料费用', N'原料费用', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'QCYE', 10, N'F_JGF', N'加工费用', N'加工费用', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'QCYE', 11, N'F_SL', N'F_SL', N'数量', 56, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'QCYE', 12, N'F_DJ', N'F_DJ', N'单价', 74, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'QCYE', 13, N'F_JE', N'F_JE', N'金额', 89, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'QCYE', 14, N'F_DJ1', N'批发价', N'批发价', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'QCYE', 15, N'F_DJ2', N'零售价', N'零售价', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'QCYE', 16, N'F_UC', N'字符自定义', N'字符自定义', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'QCYE', 17, N'F_UN', N'数值自定义', N'数值自定义', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'QCYE', 18, N'F_DJ3', N'单价3', N'单价3', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'QCYE', 19, N'F_DJ4', N'单价4', N'单价4', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'QCYE', 20, N'F_DJ5', N'单价5', N'单价5', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'RKD', 1, N'F_TM', N'条码', N'条码', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'RKD', 2, N'F_SPBH', N'商品编号', N'商品编号', 90, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'RKD', 3, N'F_SPMC', N'商品名称', N'商品名称', 139, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'RKD', 4, N'F_DW', N'单位', N'单位', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'RKD', 5, N'F_CD', N'产地', N'产地', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'RKD', 6, N'F_SPGG', N'规格', N'商品规格', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'RKD', 7, N'F_PH', N'批号', N'批号', 84, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'RKD', 8, N'F_DQ', N'到期', N'到期', 60, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'RKD', 9, N'F_YLF', N'原料费用', N'原料费用', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'RKD', 10, N'F_JGF', N'加工费用', N'加工费用', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'RKD', 11, N'F_SL', N'数量', N'数量', 56, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'RKD', 12, N'F_DJ', N'单价', N'单价', 74, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'RKD', 13, N'F_JE', N'金额', N'金额', 89, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'RKD', 14, N'F_DJ1', N'批发价', N'批发价', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'RKD', 15, N'F_DJ2', N'零售价', N'零售价', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'RKD', 16, N'F_UC', N'字符自定义', N'字符自定义', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'RKD', 17, N'F_UN', N'字符自定义', N'字符自定义', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'RKD', 18, N'F_DJ3', N'代理价', N'单价3', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'RKD', 19, N'F_DJ4', N'优惠价', N'单价4', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'RKD', 20, N'F_DJ5', N'特惠价', N'单价5', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'RKD', 21, N'F_SLJC', N'数量结存', N'数量结存', -1, N'FALSE', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'TJD', 1, N'F_SPBH', N'商品编号', N'商品编号', 83, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'TJD', 2, N'F_SPMC', N'商品名称', N'商品名称', 104, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'TJD', 3, N'F_DW', N'单位', N'单位', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'TJD', 4, N'F_CD', N'产地', N'产地', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'TJD', 5, N'F_GG', N'规格', N'规格', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'TJD', 6, N'F_DJ11', N'调前批发价', N'调前批发价', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'TJD', 7, N'F_DJ12', N'调后批发价', N'调后批发价', 73, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'TJD', 8, N'F_DJ21', N'调前零售价', N'调前零售价', -1, N'FALSE', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'TJD', 9, N'F_DJ22', N'调后零售价', N'调后零售价', 88, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'TJD', 10, N'F_SLJC', N'结存数量', N'结存数量', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'TJD', 11, N'F_DJ31', N'F_DJ31', N'调前DJ3', 74, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'TJD', 12, N'F_DJ32', N'F_DJ32', N'调后DJ3', 74, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'TJD', 13, N'F_DJ41', N'F_DJ41', N'F_DJ41', -1, N'TRUE ', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'TJD', 14, N'F_DJ42', N'F_DJ42', N'F_DJ42', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'TJD', 15, N'F_DJ51', N'F_DJ51', N'F_DJ51', -1, N'TRUE ', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'TJD', 16, N'F_DJ52', N'F_DJ52', N'F_DJ52', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VENDOR', 1, N'F_DM', N'供货商代码', N'供货商代码', 74, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VENDOR', 2, N'F_MC', N'供货商名称', N'供货商名称', 182, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VENDOR', 3, N'F_UC1', N'F_UC1', N'F_UC1', 130, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VENDOR', 4, N'F_ZJM', N'助记码', N'助记码', 74, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VENDOR', 5, N'F_TEL', N'电话', N'单位电话', 103, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VENDOR', 6, N'F_LXR', N'联系人', N'联系人', 52, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VENDOR', 7, N'F_POSTCODE', N'邮编', N'邮编', 60, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VENDOR', 8, N'F_ADDRESS', N'地址', N'地址', 214, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VENDOR', 9, N'F_ZH', N'帐号', N'帐号', 144, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VENDOR', 10, N'F_SH', N'税号', N'税号', 144, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VENDOR', 11, N'F_KHH', N'开户行', N'开户行', 144, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VENDOR', 12, N'F_UC2', N'F_UC2', N'F_UC2', 1404, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VENDOR', 13, N'F_UC3', N'F_UC3', N'F_UC3', 1404, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VENDOR', 14, N'F_UC4', N'F_UC4', N'F_UC4', 1404, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VENDOR', 15, N'F_UC5', N'F_UC5', N'F_UC5', 1404, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VENDOR', 16, N'F_UN1', N'F_UN1', N'F_UN1', 116, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VENDOR', 17, N'F_UN2', N'F_UN2', N'F_UN2', 116, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VENDOR', 18, N'F_UN3', N'F_UN3', N'F_UN3', 116, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VENDOR', 19, N'F_UN4', N'F_UN4', N'F_UN4', 116, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VENDOR', 20, N'F_UN5', N'F_UN5', N'F_UN5', 116, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VIP', 1, N'F_DM', N'卡号', N'卡号', 102, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VIP', 2, N'F_MC', N'持卡人名称', N'持卡人名称', 102, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VIP', 3, N'F_GRADE', N'等级', N'等级', 33, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VIP', 4, N'F_LJXF', N'累计消费', N'累计消费', 63, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VIP', 5, N'F_ZJM', N'助记码', N'助记码', 62, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VIP', 6, N'F_SFZ', N'身份证', N'身份证', 97, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VIP', 7, N'F_TEL', N'电话', N'电话', 102, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VIP', 8, N'F_POSTCODE', N'邮政编码', N'邮政编码', 74, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VIP', 9, N'F_ADDRESS', N'地址', N'地址', 105, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VIP', 10, N'F_ZD', N'发卡人', N'发卡人', 74, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VIP', 11, N'F_USED', N'使用', N'使用', 32, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'VIP', 12, N'F_CANCEL', N'挂失', N'挂失', 32, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 1, N'F_TM', N'条码', N'条码', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 2, N'F_SPBH', N'商品编号', N'商品编号', 62, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 3, N'F_SPMC', N'商品名称', N'商品名称', 99, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 4, N'F_DW', N'单位', N'单位', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 5, N'F_CD', N'产地', N'产地', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 6, N'F_GG', N'规格', N'规格', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 7, N'F_PH', N'批号', N'批号', 50, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 8, N'F_DQ', N'到期', N'到期', 54, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 9, N'F_SL', N'数量', N'数量', 40, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 10, N'F_DJ', N'含税单价', N'含税单价', 74, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 11, N'F_KL', N'扣(%)', N'扣(%)', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 12, N'F_DJ11', N'单价', N'单价', 74, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 13, N'F_JE', N'金额', N'金额', 77, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 14, N'F_SLV', N'税率', N'税率', 34, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 15, N'F_SE', N'税额', N'税额', 62, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 16, N'F_HJ', N'价税合计', N'价税合计', 83, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 17, N'F_CB', N'成本', N'成本', 71, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 18, N'F_DJ1', N'批发价', N'批发价', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 19, N'F_DJ2', N'零售价', N'零售价', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 20, N'F_UC', N'字符自定义', N'字符自定义', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 21, N'F_UN', N'数值自定义', N'数值自定义', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 22, N'F_ML', N'毛利', N'毛利', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 23, N'F_MLV', N'毛利率', N'毛利率', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 24, N'F_SLJC', N'数量结存', N'数量结存', -1, N'FALSE', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 25, N'F_DJ3', N'单价3', N'单价3', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 26, N'F_DJ4', N'单价4', N'单价4', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 27, N'F_DJ5', N'单价5', N'单价5', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 28, N'F_SJJE', N'售价金额', N'售价金额', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 29, N'F_SPSX1', N'商品属性1', N'商品属性1', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 30, N'F_SPSX2', N'商品属性2', N'商品属性1', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'XHD', 31, N'F_SL2', N'F_SL2', N'F_SL2', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'ZZD', 1, N'F_SPBH', N'商品编号', N'商品编号', 62, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'ZZD', 2, N'F_SPMC', N'商品名称', N'商品名称', 104, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'ZZD', 3, N'F_DW', N'单位', N'单位', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'ZZD', 4, N'F_CD', N'产地', N'产地', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'ZZD', 5, N'F_SPGG', N'规格', N'规格', -1, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'ZZD', 6, N'F_SL', N'数量', N'数量', 69, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'ZZD', 7, N'F_DJ', N'单价', N'单价', 68, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'ZZD', 8, N'F_JE', N'金额', N'金额', 86, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'ZZD', 9, N'F_PH', N'批号', N'批号', 96, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'ZZD', 10, N'F_DQ', N'到期', N'到期', 60, N'TRUE ', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'ZZD', 11, N'F_DJ31', N'批发价', N'批发价', 74, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'ZZD', 12, N'F_DJ32', N'零售价', N'零售价', 74, N'FALSE', N'TRUE ', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'ZZD', 13, N'F_DJ33', N'单价3', N'单价3', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'ZZD', 14, N'F_DJ34', N'单价4', N'单价4', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'ZZD', 15, N'F_DJ35', N'单价5', N'单价5', -1, N'FALSE', N'FALSE', N'FALSE', NULL, NULL)
GO
INSERT [dbo].[CUSTOMDJ] ([F_DJLX], [F_INDEX], [F_FIELD], [F_DISPLAYLABEL], [F_CAPTION], [F_WIDTH], [F_READONLY], [F_VISIBLE], [F_PANEL], [F_VTYPE], [F_CHECKBOX]) VALUES (N'ZZD', 16, N'F_SLJC', N'数量结存', N'数量结存', 116, N'TRUE ', N'FALSE', N'TRUE ', NULL, NULL)
GO
INSERT [dbo].[DJH] ([F_JHD], [F_XHD], [F_CGD], [F_RKD], [F_CKD], [F_DBD], [F_XSBB], [F_PC], [F_YSJSD], [F_YFJSD], [F_ZZD], [F_TJD], [F_PSD], [F_JIEZ], [F_DHD], [F_YSQC], [F_YFQC], [F_CX], [F_QDD], [F_NEWSP], [F_ENEMY], [F_PDD], [F_SP], [F_CXFA], [F_DBYSD], [F_CZCARD], [F_GBF], [F_SKD]) VALUES (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[KJQJ] ([F_YF], [F_START], [F_END], [F_JZ]) VALUES (1, N'2023-01-01', N'2023-01-31', NULL)
GO
INSERT [dbo].[KJQJ] ([F_YF], [F_START], [F_END], [F_JZ]) VALUES (2, N'2023-02-01', N'2023-02-28', NULL)
GO
INSERT [dbo].[KJQJ] ([F_YF], [F_START], [F_END], [F_JZ]) VALUES (3, N'2023-03-01', N'2023-03-31', NULL)
GO
INSERT [dbo].[KJQJ] ([F_YF], [F_START], [F_END], [F_JZ]) VALUES (4, N'2023-04-01', N'2023-04-30', NULL)
GO
INSERT [dbo].[KJQJ] ([F_YF], [F_START], [F_END], [F_JZ]) VALUES (5, N'2023-05-01', N'2023-05-31', NULL)
GO
INSERT [dbo].[KJQJ] ([F_YF], [F_START], [F_END], [F_JZ]) VALUES (6, N'2023-06-01', N'2023-06-30', NULL)
GO
INSERT [dbo].[KJQJ] ([F_YF], [F_START], [F_END], [F_JZ]) VALUES (7, N'2023-07-01', N'2023-07-31', NULL)
GO
INSERT [dbo].[KJQJ] ([F_YF], [F_START], [F_END], [F_JZ]) VALUES (8, N'2023-08-01', N'2023-08-31', NULL)
GO
INSERT [dbo].[KJQJ] ([F_YF], [F_START], [F_END], [F_JZ]) VALUES (9, N'2023-09-01', N'2023-09-30', NULL)
GO
INSERT [dbo].[KJQJ] ([F_YF], [F_START], [F_END], [F_JZ]) VALUES (10, N'2023-10-01', N'2023-10-31', NULL)
GO
INSERT [dbo].[KJQJ] ([F_YF], [F_START], [F_END], [F_JZ]) VALUES (11, N'2023-11-01', N'2023-11-30', NULL)
GO
INSERT [dbo].[KJQJ] ([F_YF], [F_START], [F_END], [F_JZ]) VALUES (12, N'2023-12-01', N'2023-12-31', NULL)
GO
INSERT [dbo].[OPERATOR] ([F_BH], [F_NAME], [F_PASSWORD], [F_BM], [F_ZN], [F_RED], [F_FROZEN], [F_CO], [F_SALEID], [F_PURID], [F_INVID], [F_QCHKID], [F_FINID], [F_IFFIXSALE], [F_IFFIXINV], [F_IFFIXFIN], [F_IFFIXQCHK], [F_IFFIXPUR]) VALUES (N'00', N'SYSTEM', N'               ', NULL, N'01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'D001', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'E001', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'E002', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'E004', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'E005', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'E006', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'E007', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'E009', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'M001', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'M002', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'M003', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'M004', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'M005', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'M006', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'M007', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'M014', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'M020', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'N001', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'N002', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'N003', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'N004', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'N005', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'N006', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'N007', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'N008', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'N009', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'N010', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'N888', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Q001', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Q002', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Q003', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Q005', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Q007', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Q008', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Q009', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Q010', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Q011', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Q012', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Q013', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Q014', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Q015', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Q016', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y001', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y002', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y003', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y004', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y005', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y007', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y009', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y010', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y011', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y012', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y013', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y015', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y016', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y017', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y018', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y019', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y020', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y021', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y022', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y023', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y024', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y025', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y041', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWER] ([F_ZD], [F_ZT], [F_QX], [F_GN], [F_SY], [F_SH], [F_JZ], [F_DY], [F_BJ]) VALUES (N'00', N'01', NULL, N'Y042', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'E006', N'N_YFKQC             ', N'应付款期初录入                          ', N'TFMYFKQC            ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'E007', N'N11                 ', N'发票版式设计                            ', N'TFMFPWH             ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'E008', N'N38                 ', N'业务员定额录入                          ', N'TFMYWYDE            ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'E009', N'N7                  ', N'通用报表                                ', N'TFMBBMAIN           ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'M001', N'N45                 ', N'公告牌内容                              ', N'TFMPAD              ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'M002', N'N_XSBB              ', N'销售报表查询                            ', N'TFMXSBB             ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'M003', N'N_JHBB              ', N'进货报表查询                            ', N'TFMJHBB             ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'M004', N'N48                 ', N'已入帐销货单                            ', N'TFMXHD2             ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'M005', N'N_CUSTOM            ', N'客户信息定义                            ', N'TFMCUSTOM           ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'M006', N'N_VENDOR            ', N'供货商档案定义                          ', N'TFMVENDOR           ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'M007', N'N3                  ', N'商品信息管理                            ', N'TFMSPMLGL           ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'M014', N'N19                 ', N'已入帐销售订单                          ', N'TFMDHD2             ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'M020', N'N_VIP               ', N'VIP信息维护                             ', N'TFMVIP              ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'N001', N'N_XJ                ', N'商品询价                                ', N'TFMBJCX             ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'N002', N'N65                 ', N'从服务器下载基础信息                    ', N'TFMDOWNLOAD         ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'N003', N'N_UPLOAD            ', N'提交数据到远程服务器                    ', N'TFMUPLOAD           ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'N004', N'N_LSJS              ', N'零售结算                                ', N'TFMLSJS             ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'N005', N'N54                 ', N'结帐处理                                ', N'TFMJIEZ             ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'N006', N'N16                 ', N'结转下年                                ', N'TFMNEXTYEAR         ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'N007', N'NENV                ', N'环境变量设置                            ', N'TFMENV              ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'N008', N'N_S6                ', N'数据备份                                ', N'TFMBACKUP           ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'N009', N'N_S7                ', N'数据恢复                                ', N'TFMRETORE           ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'N010', N'N_GHCX              ', N'供货查询                                ', N'TFMVEN_SPCX         ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'N888', N'N_CBPOWER           ', N'成本权限                                ', N'TFMCBPOWER888       ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Q001', N'N_JHD               ', N'进货入库                                ', N'TFMJHD              ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Q002', N'N_XHD               ', N'销货出库                                ', N'TFMXHD              ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Q003', N'N12                 ', N'库存入库                                ', N'TFMRKD              ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Q004', N'N13                 ', N'加工收回                                ', N'TFMRKDJGSH          ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Q005', N'N14                 ', N'库存出库                                ', N'TFMCKD              ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Q006', N'N15                 ', N'加工拨出                                ', N'TFMCKDJG            ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Q007', N'N_K3                ', N'内调处理                                ', N'TFMDBD              ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Q008', N'N53                 ', N'调价业务                                ', N'TFMTJD              ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Q009', N'N33                 ', N'组装单                                  ', N'TFMZZD              ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Q010', N'N42                 ', N'收款单                                  ', N'TFMSKD              ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Q011', N'N43                 ', N'预收冲应收                              ', N'TFMYSVYS            ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Q012', N'N46                 ', N'应付款结算                              ', N'TFMFKD              ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Q013', N'N52                 ', N'预付冲应付                              ', N'TFMYFVYF            ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Q014', N'N9                  ', N'销售订单                                ', N'TFMDHD              ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Q015', N'N_QCYE              ', N'期初余额                                ', N'TFMQCYE             ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Q016', N'N87                 ', N'盘点处理                                ', N'TFMKCPDD            ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y001', N'N_PDD2              ', N'已入帐盘点单                            ', N'TFMKCPDD2           ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y002', N'N_Z1                ', N'库存商品帐查询                          ', N'TFMSPZ              ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y003', N'N_KCYE              ', N'储位库存余额                            ', N'TFMKCYEB            ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y004', N'N31                 ', N'销售分部门分析                          ', N'TFMXSFX             ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y005', N'N47                 ', N'已入帐进货单                            ', N'TFMJHD2             ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y007', N'N49                 ', N'已入帐其他入库单                        ', N'TFMRKD2             ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y009', N'N50                 ', N'已入帐其他出库单                        ', N'TFMCKD2             ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y010', N'N51                 ', N'已入帐调拨单                            ', N'TFMDBD2             ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y011', N'N55                 ', N'已入帐组装单                            ', N'TFMZZD2             ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y012', N'N_KCHZB             ', N'库存汇总表查询                          ', N'TFMKCHZB            ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y013', N'N_XSHZB             ', N'销售汇总表查询                          ', N'TFMXSHZB            ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y015', N'N62                 ', N'进货综合查询                            ', N'TFMJHZHCX           ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y016', N'N40                 ', N'库存综合查询                            ', N'TFMKCZHCX           ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y017', N'N41                 ', N'销售综合查询                            ', N'TFMXSZHCX           ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y018', N'N_SKD2              ', N'已入帐收款单                            ', N'TFMSKD2             ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y019', N'N_YSZZ              ', N'应收总帐                                ', N'TFMWLHZ             ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y020', N'N_YSMXZ             ', N'应收明细帐                              ', N'TFMWLZ              ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y021', N'N_FKD2              ', N'已入帐付款单                            ', N'TFMFKD2             ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y022', N'N_YFZZ              ', N'应付总帐                                ', N'TFMWLHZ             ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y023', N'N_YFMXZ             ', N'应付明细帐                              ', N'TFMWLZ              ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y024', N'N88                 ', N'安全库存报告                            ', N'TFMAQKC             ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y025', N'N34                 ', N'库存分类别汇总                          ', N'TFMKCZZ1            ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y041', N'N_YSZLFX            ', N'应收款帐龄分析                          ', N'TFMZLFX_C_OPTION    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'Y042', N'N_YFZLFX            ', N'应付款帐龄分析                          ', N'TFMZLFX_V_OPTION    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B000', NULL, N'数据检测(ZZSL<>PCSL)                    ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B001', NULL, N'库存盘点表                              ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B002', NULL, N'业务员定额完成情况                      ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B003', NULL, N'调拨查询                                ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B004', NULL, N'销售报表(应收、实收)                    ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B005', NULL, N'进货汇总表                              ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B006', NULL, N'销售报表(打折)                          ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B007', NULL, N'库存盘点表                              ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B008', NULL, N'有效期查询                              ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B009', NULL, N'调价信息                                ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B010', NULL, N'提成                                    ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B011', NULL, N'提成                                    ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B082', NULL, N'销售汇总(部门、日)                      ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B090', NULL, N'下载商品信息                            ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B094', NULL, N'进货明细表                              ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B095', NULL, N'进货按供货商汇总                        ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B096', NULL, N'销售分部门统计                          ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B097', NULL, N'销售分业务员统计                        ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B098', NULL, N'库存商品分大类查询                      ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B099', NULL, N'进销存综合查询                          ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B100', NULL, N'销售报表(应收、实收)                    ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B111', NULL, N'库存余额                                ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B123', NULL, N'进销存综合查询(某范围)                  ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'B213', NULL, N'TEST                                    ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'BD00', NULL, N'批次和总帐不符的记录                    ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'BJ01', NULL, N'加工报表1                               ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'BJ02', NULL, N'加工报表2                               ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'BJ03', NULL, N'加工费用统计报表                        ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'BK01', NULL, N'按业务员分大类统计销售额                ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'BK02', NULL, N'各大类商品销售汇总表                    ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'BK06', NULL, N'各大类商品销售汇总表                    ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'BK07', NULL, N'各大类商品销售汇总表(日期范围)          ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'BK08', NULL, N'库存汇总表(售价)                        ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'BKKK', NULL, N'DSG                                     ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'BNNN', NULL, N'各大类商品销售汇总表                    ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'BTTU', NULL, N'销售汇总(部门、日)                      ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'BZZ1', NULL, N'库存余额                                ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'BZZ2', NULL, N'进货综合查询                            ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'BZZZ', NULL, N'演示报表                                ', N'                    ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'D001', N'N_CGD               ', N'商品请购                                ', N'TFMCGD              ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'E001', N'N1                  ', N'批号修改                                ', N'TFMPHEDIT           ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'E002', N'N30                 ', N'组装模板                                ', N'TFMZZMB             ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'E004', N'N_I1                ', N'初始信息定义                            ', N'TFMINIT             ')
GO
INSERT [dbo].[POWERITEM] ([F_BH], [F_NAME], [F_CAPTION], [F_CLASSNAME]) VALUES (N'E005', N'N_YSKQC             ', N'应收款期初录入                          ', N'TFMYSKQC            ')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'D001', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'E001', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'E002', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'E004', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'E005', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'E006', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'E007', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'E009', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'M001', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'M002', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'M003', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'M004', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'M005', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'M006', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'M007', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'M014', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'M020', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'N001', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'N002', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'N003', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'N004', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'N005', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'N006', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'N007', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'N008', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'N009', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'N010', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'N888', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Q001', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Q002', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Q003', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Q005', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Q007', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Q008', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Q009', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Q010', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Q011', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Q012', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Q013', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Q014', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Q015', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Q016', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y001', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y002', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y003', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y004', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y005', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y007', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y009', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y010', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y011', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y012', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y013', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y015', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y016', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y017', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y018', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y019', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y020', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y021', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y022', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y023', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y024', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y025', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y041', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNPOWER] ([F_DM], [F_GN], [F_SY], [F_BJ], [F_SH], [F_JZ], [F_DY]) VALUES (N'01', N'Y042', N'*', N'*', N'*', N'*', N'*')
GO
INSERT [dbo].[ZNXX] ([F_DM], [F_MC], [F_SA], [F_CO]) VALUES (N'01', N'系统管理员', NULL, NULL)
GO
INSERT [dbo].[ZTCS] ([F_ZTBH], [F_NAME], [F_LBLENGTH], [F_LB1], [F_LB2], [F_LB3], [F_LB4], [F_LB5], [F_LB6], [F_LB7], [F_LB8], [F_LB9], [F_LB10], [F_SPLENGTH], [F_PRICENUMBER], [F_PRICE1], [F_PRICE2], [F_PRICE3], [F_PRICE4], [F_PRICE5], [F_CB], [F_CLENGTH], [F_CLB1], [F_CLB2], [F_CLB3], [F_CLB4], [F_VLENGTH], [F_VLB1], [F_VLB2], [F_VLB3], [F_VLB4], [F_YC], [F_VER], [F_ZTID]) VALUES (N'01', N'WSAAASDASDASFD      ', 2, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 3, 5, N'批发价              ', N'零售价              ', N'代理价              ', N'优惠价              ', N'特惠价              ', 0, 2, 1, 2, 0, 0, 2, 1, 2, 0, 0, N' ', N'2.6.2.30318', NULL)
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__BM__F_DE__6C43F744]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BM] ADD  CONSTRAINT [DF__BM__F_DE__6C43F744]  DEFAULT ((0)) FOR [F_DE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__BM__F_DE1__6D381B7D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BM] ADD  CONSTRAINT [DF__BM__F_DE1__6D381B7D]  DEFAULT ((0)) FOR [F_DE1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CBPOWER__F_ITEMI__6E2C3FB6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CBPOWER] ADD  CONSTRAINT [DF__CBPOWER__F_ITEMI__6E2C3FB6]  DEFAULT ((0)) FOR [F_ITEMINDEX]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD__F_FPXZ__0F8D3381]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKD] ADD  CONSTRAINT [DF__CKD__F_FPXZ__0F8D3381]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD__F_SL2__108157BA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKD] ADD  CONSTRAINT [DF__CKD__F_SL2__108157BA]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD2__F_FPXZ__11757BF3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKD2] ADD  CONSTRAINT [DF__CKD2__F_FPXZ__11757BF3]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD2__F_SL2__1269A02C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKD2] ADD  CONSTRAINT [DF__CKD2__F_SL2__1269A02C]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD3__F_FPXZ__135DC465]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKD3] ADD  CONSTRAINT [DF__CKD3__F_FPXZ__135DC465]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD3__F_SL2__1451E89E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKD3] ADD  CONSTRAINT [DF__CKD3__F_SL2__1451E89E]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX__F_SL__15460CD7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX] ADD  CONSTRAINT [DF__CKDMX__F_SL__15460CD7]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX__F_DJ__163A3110]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX] ADD  CONSTRAINT [DF__CKDMX__F_DJ__163A3110]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX__F_JE__172E5549]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX] ADD  CONSTRAINT [DF__CKDMX__F_JE__172E5549]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX__F_SLV__18227982]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX] ADD  CONSTRAINT [DF__CKDMX__F_SLV__18227982]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX__F_SE__19169DBB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX] ADD  CONSTRAINT [DF__CKDMX__F_SE__19169DBB]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX__F_UN__1A0AC1F4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX] ADD  CONSTRAINT [DF__CKDMX__F_UN__1A0AC1F4]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX__F_SL2__1AFEE62D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX] ADD  CONSTRAINT [DF__CKDMX__F_SL2__1AFEE62D]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX2__F_SL__1BF30A66]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX2] ADD  CONSTRAINT [DF__CKDMX2__F_SL__1BF30A66]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX2__F_DJ__1CE72E9F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX2] ADD  CONSTRAINT [DF__CKDMX2__F_DJ__1CE72E9F]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX2__F_JE__1DDB52D8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX2] ADD  CONSTRAINT [DF__CKDMX2__F_JE__1DDB52D8]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX2__F_SLV__1ECF7711]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX2] ADD  CONSTRAINT [DF__CKDMX2__F_SLV__1ECF7711]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX2__F_SE__1FC39B4A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX2] ADD  CONSTRAINT [DF__CKDMX2__F_SE__1FC39B4A]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX2__F_UN__20B7BF83]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX2] ADD  CONSTRAINT [DF__CKDMX2__F_UN__20B7BF83]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX2__F_SL2__21ABE3BC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX2] ADD  CONSTRAINT [DF__CKDMX2__F_SL2__21ABE3BC]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX3__F_SL2__22A007F5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX3] ADD  CONSTRAINT [DF__CKDMX3__F_SL2__22A007F5]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBD__F_DBYSD__41248F15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBD] ADD  CONSTRAINT [DF__DBD__F_DBYSD__41248F15]  DEFAULT ((0)) FOR [F_DBYSD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBD2__F_DBYSD__4218B34E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBD2] ADD  CONSTRAINT [DF__DBD2__F_DBYSD__4218B34E]  DEFAULT ((0)) FOR [F_DBYSD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBD3__F_DBYSD__430CD787]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBD3] ADD  CONSTRAINT [DF__DBD3__F_DBYSD__430CD787]  DEFAULT ((0)) FOR [F_DBYSD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX__F_SL__4400FBC0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_SL__4400FBC0]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX__F_JE__44F51FF9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_JE__44F51FF9]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX__F_SLJC__45E94432]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_SLJC__45E94432]  DEFAULT ((0)) FOR [F_SLJC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX__F_DJ__46DD686B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_DJ__46DD686B]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX__F_UN__47D18CA4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_UN__47D18CA4]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX__F_SL2__48C5B0DD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_SL2__48C5B0DD]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX2__F_SL__49B9D516]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_SL__49B9D516]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX2__F_JE__4AADF94F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_JE__4AADF94F]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX2__F_SLJC__4BA21D88]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_SLJC__4BA21D88]  DEFAULT ((0)) FOR [F_SLJC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX2__F_DJ__4C9641C1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_DJ__4C9641C1]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX2__F_UN__4D8A65FA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_UN__4D8A65FA]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX2__F_SL2__4E7E8A33]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_SL2__4E7E8A33]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_JHD__0D6FE0E5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_JHD__0D6FE0E5]  DEFAULT ((0)) FOR [F_JHD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_XHD__0E64051E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_XHD__0E64051E]  DEFAULT ((0)) FOR [F_XHD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_CGD__0F582957]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_CGD__0F582957]  DEFAULT ((0)) FOR [F_CGD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_RKD__104C4D90]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_RKD__104C4D90]  DEFAULT ((0)) FOR [F_RKD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_CKD__114071C9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_CKD__114071C9]  DEFAULT ((0)) FOR [F_CKD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_DBD__12349602]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_DBD__12349602]  DEFAULT ((0)) FOR [F_DBD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_XSBB__1328BA3B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_XSBB__1328BA3B]  DEFAULT ((0)) FOR [F_XSBB]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_PC__141CDE74]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_PC__141CDE74]  DEFAULT ((0)) FOR [F_PC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_YSJSD__151102AD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_YSJSD__151102AD]  DEFAULT ((0)) FOR [F_YSJSD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_YFJSD__160526E6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_YFJSD__160526E6]  DEFAULT ((0)) FOR [F_YFJSD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_ZZD__16F94B1F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_ZZD__16F94B1F]  DEFAULT ((0)) FOR [F_ZZD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_TJD__17ED6F58]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_TJD__17ED6F58]  DEFAULT ((0)) FOR [F_TJD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_PSD__18E19391]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_PSD__18E19391]  DEFAULT ((0)) FOR [F_PSD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_JIEZ__19D5B7CA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_JIEZ__19D5B7CA]  DEFAULT ((0)) FOR [F_JIEZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_DHD__1AC9DC03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_DHD__1AC9DC03]  DEFAULT ((0)) FOR [F_DHD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_CX__1BBE003C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_CX__1BBE003C]  DEFAULT ((0)) FOR [F_CX]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_QDD__1CB22475]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_QDD__1CB22475]  DEFAULT ((0)) FOR [F_QDD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_NEWSP__1DA648AE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_NEWSP__1DA648AE]  DEFAULT ((0)) FOR [F_NEWSP]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_ENEMY__1E9A6CE7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_ENEMY__1E9A6CE7]  DEFAULT ((0)) FOR [F_ENEMY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_PDD__1F8E9120]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_PDD__1F8E9120]  DEFAULT ((0)) FOR [F_PDD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_SP__2082B559]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_SP__2082B559]  DEFAULT ((0)) FOR [F_SP]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_CXFA__2176D992]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_CXFA__2176D992]  DEFAULT ((0)) FOR [F_CXFA]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_DBYSD__226AFDCB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_DBYSD__226AFDCB]  DEFAULT ((0)) FOR [F_DBYSD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_CZCARD__235F2204]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_CZCARD__235F2204]  DEFAULT ((0)) FOR [F_CZCARD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_GBF__2453463D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_GBF__2453463D]  DEFAULT ((0)) FOR [F_GBF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_SKD__25476A76]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_SKD__25476A76]  DEFAULT ((0)) FOR [F_SKD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__GHD__F_JE__0ECE1972]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GHD] ADD  CONSTRAINT [DF__GHD__F_JE__0ECE1972]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__GHD__F_GBF__0FC23DAB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GHD] ADD  CONSTRAINT [DF__GHD__F_GBF__0FC23DAB]  DEFAULT ((0)) FOR [F_GBF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__GHHZ__F_JE__0BF1ACC7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[GHHZ] ADD  CONSTRAINT [DF__GHHZ__F_JE__0BF1ACC7]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__HW__F_LOCAL__2BF46805]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[HW] ADD  CONSTRAINT [DF__HW__F_LOCAL__2BF46805]  DEFAULT ('') FOR [F_LOCAL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHD__F_JS__652CE561]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHD] ADD  CONSTRAINT [DF__JHD__F_JS__652CE561]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHD__F_FPXZ__6621099A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHD] ADD  CONSTRAINT [DF__JHD__F_FPXZ__6621099A]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHD2__F_JS__67152DD3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHD2] ADD  CONSTRAINT [DF__JHD2__F_JS__67152DD3]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHD2__F_FPXZ__6809520C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHD2] ADD  CONSTRAINT [DF__JHD2__F_FPXZ__6809520C]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__F_SL__68FD7645]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_SL__68FD7645]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__F_DJ__69F19A7E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_DJ__69F19A7E]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__F_JE__6AE5BEB7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_JE__6AE5BEB7]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__F_SLV__6BD9E2F0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_SLV__6BD9E2F0]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__F_SE__6CCE0729]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_SE__6CCE0729]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__F_HJ__6DC22B62]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_HJ__6DC22B62]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__F_UN__6EB64F9B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_UN__6EB64F9B]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__F_HSDJ__6FAA73D4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_HSDJ__6FAA73D4]  DEFAULT ((0)) FOR [F_HSDJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__F_KL__709E980D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_KL__709E980D]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__F_SL__7192BC46]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_SL__7192BC46]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__F_DJ__7286E07F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_DJ__7286E07F]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__F_JE__737B04B8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_JE__737B04B8]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__F_SLV__746F28F1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_SLV__746F28F1]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__F_SE__75634D2A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_SE__75634D2A]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__F_HJ__76577163]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_HJ__76577163]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__F_UN__774B959C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_UN__774B959C]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__F_HSDJ__783FB9D5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_HSDJ__783FB9D5]  DEFAULT ((0)) FOR [F_HSDJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__F_KL__7933DE0E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_KL__7933DE0E]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__F_SL__7A280247]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_SL__7A280247]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__F_DJ__7B1C2680]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_DJ__7B1C2680]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__F_JE__7C104AB9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_JE__7C104AB9]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__F_SLV__7D046EF2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_SLV__7D046EF2]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__F_SE__7DF8932B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_SE__7DF8932B]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__F_HJ__7EECB764]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_HJ__7EECB764]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__F_UN__7FE0DB9D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_UN__7FE0DB9D]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__F_HSDJ__00D4FFD6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_HSDJ__00D4FFD6]  DEFAULT ((0)) FOR [F_HSDJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__F_KL__01C9240F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_KL__01C9240F]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL1__02BD4848]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL1__02BD4848]  DEFAULT ((0)) FOR [F_SL1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL2__03B16C81]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL2__03B16C81]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL3__04A590BA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL3__04A590BA]  DEFAULT ((0)) FOR [F_SL3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL4__0599B4F3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL4__0599B4F3]  DEFAULT ((0)) FOR [F_SL4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL5__068DD92C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL5__068DD92C]  DEFAULT ((0)) FOR [F_SL5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL6__0781FD65]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL6__0781FD65]  DEFAULT ((0)) FOR [F_SL6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL7__0876219E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL7__0876219E]  DEFAULT ((0)) FOR [F_SL7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL8__096A45D7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL8__096A45D7]  DEFAULT ((0)) FOR [F_SL8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL9__0A5E6A10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL9__0A5E6A10]  DEFAULT ((0)) FOR [F_SL9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL10__0B528E49]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL10__0B528E49]  DEFAULT ((0)) FOR [F_SL10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL11__0C46B282]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL11__0C46B282]  DEFAULT ((0)) FOR [F_SL11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SL12__0D3AD6BB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL12__0D3AD6BB]  DEFAULT ((0)) FOR [F_SL12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE1__0E2EFAF4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE1__0E2EFAF4]  DEFAULT ((0)) FOR [F_JE1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE2__0F231F2D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE2__0F231F2D]  DEFAULT ((0)) FOR [F_JE2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE3__10174366]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE3__10174366]  DEFAULT ((0)) FOR [F_JE3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE4__110B679F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE4__110B679F]  DEFAULT ((0)) FOR [F_JE4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE5__11FF8BD8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE5__11FF8BD8]  DEFAULT ((0)) FOR [F_JE5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE6__12F3B011]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE6__12F3B011]  DEFAULT ((0)) FOR [F_JE6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE7__13E7D44A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE7__13E7D44A]  DEFAULT ((0)) FOR [F_JE7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE8__14DBF883]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE8__14DBF883]  DEFAULT ((0)) FOR [F_JE8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE9__15D01CBC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE9__15D01CBC]  DEFAULT ((0)) FOR [F_JE9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE10__16C440F5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE10__16C440F5]  DEFAULT ((0)) FOR [F_JE10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE11__17B8652E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE11__17B8652E]  DEFAULT ((0)) FOR [F_JE11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_JE12__18AC8967]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE12__18AC8967]  DEFAULT ((0)) FOR [F_JE12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE1__19A0ADA0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE1__19A0ADA0]  DEFAULT ((0)) FOR [F_SE1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE2__1A94D1D9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE2__1A94D1D9]  DEFAULT ((0)) FOR [F_SE2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE3__1B88F612]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE3__1B88F612]  DEFAULT ((0)) FOR [F_SE3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE4__1C7D1A4B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE4__1C7D1A4B]  DEFAULT ((0)) FOR [F_SE4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE5__1D713E84]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE5__1D713E84]  DEFAULT ((0)) FOR [F_SE5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE6__1E6562BD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE6__1E6562BD]  DEFAULT ((0)) FOR [F_SE6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE7__1F5986F6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE7__1F5986F6]  DEFAULT ((0)) FOR [F_SE7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE8__204DAB2F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE8__204DAB2F]  DEFAULT ((0)) FOR [F_SE8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE9__2141CF68]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE9__2141CF68]  DEFAULT ((0)) FOR [F_SE9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE10__2235F3A1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE10__2235F3A1]  DEFAULT ((0)) FOR [F_SE10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE11__232A17DA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE11__232A17DA]  DEFAULT ((0)) FOR [F_SE11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__F_SE12__241E3C13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE12__241E3C13]  DEFAULT ((0)) FOR [F_SE12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JSFS__F_POSUSED__2512604C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JSFS] ADD  CONSTRAINT [DF__JSFS__F_POSUSED__2512604C]  DEFAULT ((0)) FOR [F_POSUSED]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JSFS__F_DEFAULT__26068485]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JSFS] ADD  CONSTRAINT [DF__JSFS__F_DEFAULT__26068485]  DEFAULT ((0)) FOR [F_DEFAULT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JSFS__F_ISJFJE__26FAA8BE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JSFS] ADD  CONSTRAINT [DF__JSFS__F_ISJFJE__26FAA8BE]  DEFAULT ((0)) FOR [F_ISJFJE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JSFS__F_ISJEJF__27EECCF7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JSFS] ADD  CONSTRAINT [DF__JSFS__F_ISJEJF__27EECCF7]  DEFAULT ((0)) FOR [F_ISJEJF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JSFS__F_IFJF__28E2F130]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JSFS] ADD  CONSTRAINT [DF__JSFS__F_IFJF__28E2F130]  DEFAULT ((0)) FOR [F_IFJF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCMXZ__F_SLS__33607FA3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCMXZ] ADD  CONSTRAINT [DF__KCMXZ__F_SLS__33607FA3]  DEFAULT ((0)) FOR [F_SLS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCMXZ__F_JES__3454A3DC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCMXZ] ADD  CONSTRAINT [DF__KCMXZ__F_JES__3454A3DC]  DEFAULT ((0)) FOR [F_JES]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCMXZ__F_SLF__3548C815]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCMXZ] ADD  CONSTRAINT [DF__KCMXZ__F_SLF__3548C815]  DEFAULT ((0)) FOR [F_SLF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCMXZ__F_JEF__363CEC4E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCMXZ] ADD  CONSTRAINT [DF__KCMXZ__F_JEF__363CEC4E]  DEFAULT ((0)) FOR [F_JEF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCYE__F_SLYE__37311087]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCYE] ADD  CONSTRAINT [DF__KCYE__F_SLYE__37311087]  DEFAULT ((0)) FOR [F_SLYE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SL0__382534C0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SL0__382534C0]  DEFAULT ((0)) FOR [F_SL0]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JE0__391958F9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JE0__391958F9]  DEFAULT ((0)) FOR [F_JE0]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLYE__3A0D7D32]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLYE__3A0D7D32]  DEFAULT ((0)) FOR [F_SLYE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEYE__3B01A16B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEYE__3B01A16B]  DEFAULT ((0)) FOR [F_JEYE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_PJDJ__3BF5C5A4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_PJDJ__3BF5C5A4]  DEFAULT ((0)) FOR [F_PJDJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JE__3CE9E9DD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JE__3CE9E9DD]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JJ__3DDE0E16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JJ__3DDE0E16]  DEFAULT ((0)) FOR [F_JJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS1__3ED2324F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS1__3ED2324F]  DEFAULT ((0)) FOR [F_SLS1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS2__3FC65688]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS2__3FC65688]  DEFAULT ((0)) FOR [F_SLS2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS3__40BA7AC1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS3__40BA7AC1]  DEFAULT ((0)) FOR [F_SLS3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS4__41AE9EFA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS4__41AE9EFA]  DEFAULT ((0)) FOR [F_SLS4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS5__42A2C333]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS5__42A2C333]  DEFAULT ((0)) FOR [F_SLS5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS6__4396E76C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS6__4396E76C]  DEFAULT ((0)) FOR [F_SLS6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS7__448B0BA5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS7__448B0BA5]  DEFAULT ((0)) FOR [F_SLS7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS8__457F2FDE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS8__457F2FDE]  DEFAULT ((0)) FOR [F_SLS8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS9__46735417]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS9__46735417]  DEFAULT ((0)) FOR [F_SLS9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS10__47677850]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS10__47677850]  DEFAULT ((0)) FOR [F_SLS10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS11__485B9C89]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS11__485B9C89]  DEFAULT ((0)) FOR [F_SLS11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLS12__494FC0C2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS12__494FC0C2]  DEFAULT ((0)) FOR [F_SLS12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES1__4A43E4FB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES1__4A43E4FB]  DEFAULT ((0)) FOR [F_JES1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES2__4B380934]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES2__4B380934]  DEFAULT ((0)) FOR [F_JES2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES3__4C2C2D6D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES3__4C2C2D6D]  DEFAULT ((0)) FOR [F_JES3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES4__4D2051A6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES4__4D2051A6]  DEFAULT ((0)) FOR [F_JES4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES5__4E1475DF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES5__4E1475DF]  DEFAULT ((0)) FOR [F_JES5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES6__4F089A18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES6__4F089A18]  DEFAULT ((0)) FOR [F_JES6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES7__4FFCBE51]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES7__4FFCBE51]  DEFAULT ((0)) FOR [F_JES7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES8__50F0E28A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES8__50F0E28A]  DEFAULT ((0)) FOR [F_JES8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES9__51E506C3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES9__51E506C3]  DEFAULT ((0)) FOR [F_JES9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES10__52D92AFC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES10__52D92AFC]  DEFAULT ((0)) FOR [F_JES10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES11__53CD4F35]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES11__53CD4F35]  DEFAULT ((0)) FOR [F_JES11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JES12__54C1736E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES12__54C1736E]  DEFAULT ((0)) FOR [F_JES12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF1__55B597A7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF1__55B597A7]  DEFAULT ((0)) FOR [F_SLF1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF2__56A9BBE0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF2__56A9BBE0]  DEFAULT ((0)) FOR [F_SLF2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF3__579DE019]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF3__579DE019]  DEFAULT ((0)) FOR [F_SLF3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF4__58920452]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF4__58920452]  DEFAULT ((0)) FOR [F_SLF4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF5__5986288B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF5__5986288B]  DEFAULT ((0)) FOR [F_SLF5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF6__5A7A4CC4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF6__5A7A4CC4]  DEFAULT ((0)) FOR [F_SLF6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF7__5B6E70FD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF7__5B6E70FD]  DEFAULT ((0)) FOR [F_SLF7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF8__5C629536]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF8__5C629536]  DEFAULT ((0)) FOR [F_SLF8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF9__5D56B96F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF9__5D56B96F]  DEFAULT ((0)) FOR [F_SLF9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF10__5E4ADDA8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF10__5E4ADDA8]  DEFAULT ((0)) FOR [F_SLF10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF11__5F3F01E1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF11__5F3F01E1]  DEFAULT ((0)) FOR [F_SLF11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_SLF12__6033261A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF12__6033261A]  DEFAULT ((0)) FOR [F_SLF12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF1__61274A53]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF1__61274A53]  DEFAULT ((0)) FOR [F_JEF1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF2__621B6E8C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF2__621B6E8C]  DEFAULT ((0)) FOR [F_JEF2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF3__630F92C5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF3__630F92C5]  DEFAULT ((0)) FOR [F_JEF3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF4__6403B6FE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF4__6403B6FE]  DEFAULT ((0)) FOR [F_JEF4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF5__64F7DB37]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF5__64F7DB37]  DEFAULT ((0)) FOR [F_JEF5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF6__65EBFF70]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF6__65EBFF70]  DEFAULT ((0)) FOR [F_JEF6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF7__66E023A9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF7__66E023A9]  DEFAULT ((0)) FOR [F_JEF7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF8__67D447E2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF8__67D447E2]  DEFAULT ((0)) FOR [F_JEF8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF9__68C86C1B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF9__68C86C1B]  DEFAULT ((0)) FOR [F_JEF9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF10__69BC9054]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF10__69BC9054]  DEFAULT ((0)) FOR [F_JEF10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF11__6AB0B48D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF11__6AB0B48D]  DEFAULT ((0)) FOR [F_JEF11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JEF12__6BA4D8C6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF12__6BA4D8C6]  DEFAULT ((0)) FOR [F_JEF12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__OPERATOR__F_FROZ__6C98FCFF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[OPERATOR] ADD  CONSTRAINT [DF__OPERATOR__F_FROZ__6C98FCFF]  DEFAULT ((0)) FOR [F_FROZEN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX__F_DJ2__6E814571]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX] ADD  CONSTRAINT [DF__PDDMX__F_DJ2__6E814571]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX__F_PDSL1__6F7569AA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX] ADD  CONSTRAINT [DF__PDDMX__F_PDSL1__6F7569AA]  DEFAULT ((0)) FOR [F_PDSL1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX__F_PYSL1__70698DE3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX] ADD  CONSTRAINT [DF__PDDMX__F_PYSL1__70698DE3]  DEFAULT ((0)) FOR [F_PYSL1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX__F_UN__715DB21C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX] ADD  CONSTRAINT [DF__PDDMX__F_UN__715DB21C]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX__F_DJ1__7251D655]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX] ADD  CONSTRAINT [DF__PDDMX__F_DJ1__7251D655]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX__F_DJ3__7345FA8E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX] ADD  CONSTRAINT [DF__PDDMX__F_DJ3__7345FA8E]  DEFAULT ((0)) FOR [F_DJ3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX__F_DJ4__743A1EC7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX] ADD  CONSTRAINT [DF__PDDMX__F_DJ4__743A1EC7]  DEFAULT ((0)) FOR [F_DJ4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX__F_DJ5__752E4300]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX] ADD  CONSTRAINT [DF__PDDMX__F_DJ5__752E4300]  DEFAULT ((0)) FOR [F_DJ5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX__F_READONL__76226739]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX] ADD  CONSTRAINT [DF__PDDMX__F_READONL__76226739]  DEFAULT ((1)) FOR [F_READONLY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX2__F_DJ2__77168B72]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX2] ADD  CONSTRAINT [DF__PDDMX2__F_DJ2__77168B72]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX2__F_PDSL1__780AAFAB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX2] ADD  CONSTRAINT [DF__PDDMX2__F_PDSL1__780AAFAB]  DEFAULT ((0)) FOR [F_PDSL1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX2__F_PYSL1__78FED3E4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX2] ADD  CONSTRAINT [DF__PDDMX2__F_PYSL1__78FED3E4]  DEFAULT ((0)) FOR [F_PYSL1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX2__F_UN__79F2F81D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX2] ADD  CONSTRAINT [DF__PDDMX2__F_UN__79F2F81D]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX2__F_DJ1__7AE71C56]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX2] ADD  CONSTRAINT [DF__PDDMX2__F_DJ1__7AE71C56]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX2__F_DJ3__7BDB408F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX2] ADD  CONSTRAINT [DF__PDDMX2__F_DJ3__7BDB408F]  DEFAULT ((0)) FOR [F_DJ3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX2__F_DJ4__7CCF64C8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX2] ADD  CONSTRAINT [DF__PDDMX2__F_DJ4__7CCF64C8]  DEFAULT ((0)) FOR [F_DJ4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX2__F_DJ5__7DC38901]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX2] ADD  CONSTRAINT [DF__PDDMX2__F_DJ5__7DC38901]  DEFAULT ((0)) FOR [F_DJ5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX2__F_READON__7EB7AD3A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX2] ADD  CONSTRAINT [DF__PDDMX2__F_READON__7EB7AD3A]  DEFAULT ((1)) FOR [F_READONLY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX3__F_DJ2__7FABD173]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX3] ADD  CONSTRAINT [DF__PDDMX3__F_DJ2__7FABD173]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX3__F_PDSL1__009FF5AC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX3] ADD  CONSTRAINT [DF__PDDMX3__F_PDSL1__009FF5AC]  DEFAULT ((0)) FOR [F_PDSL1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX3__F_PYSL1__019419E5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX3] ADD  CONSTRAINT [DF__PDDMX3__F_PYSL1__019419E5]  DEFAULT ((0)) FOR [F_PYSL1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX3__F_UN__02883E1E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX3] ADD  CONSTRAINT [DF__PDDMX3__F_UN__02883E1E]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX3__F_DJ1__037C6257]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX3] ADD  CONSTRAINT [DF__PDDMX3__F_DJ1__037C6257]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX3__F_DJ3__04708690]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX3] ADD  CONSTRAINT [DF__PDDMX3__F_DJ3__04708690]  DEFAULT ((0)) FOR [F_DJ3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX3__F_DJ4__0564AAC9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX3] ADD  CONSTRAINT [DF__PDDMX3__F_DJ4__0564AAC9]  DEFAULT ((0)) FOR [F_DJ4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX3__F_DJ5__0658CF02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX3] ADD  CONSTRAINT [DF__PDDMX3__F_DJ5__0658CF02]  DEFAULT ((0)) FOR [F_DJ5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX3__F_READON__074CF33B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX3] ADD  CONSTRAINT [DF__PDDMX3__F_READON__074CF33B]  DEFAULT ((1)) FOR [F_READONLY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__POWERITEM__F_CLA__08411774]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[POWERITEM] ADD  CONSTRAINT [DF__POWERITEM__F_CLA__08411774]  DEFAULT ('') FOR [F_CLASSNAME]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RECIPE__F_NUM__76F68FE1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RECIPE] ADD  CONSTRAINT [DF__RECIPE__F_NUM__76F68FE1]  DEFAULT ((0)) FOR [F_NUM]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RECIPE__F_SK__77EAB41A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RECIPE] ADD  CONSTRAINT [DF__RECIPE__F_SK__77EAB41A]  DEFAULT ('') FOR [F_SK]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RECIPE__F_SKR__78DED853]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RECIPE] ADD  CONSTRAINT [DF__RECIPE__F_SKR__78DED853]  DEFAULT ('') FOR [F_SKR]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RECIPEMX__F_SL__6F556E19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RECIPEMX] ADD  CONSTRAINT [DF__RECIPEMX__F_SL__6F556E19]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RECIPEMX__F_DJ__70499252]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RECIPEMX] ADD  CONSTRAINT [DF__RECIPEMX__F_DJ__70499252]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RECIPEMX__F_JE__713DB68B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RECIPEMX] ADD  CONSTRAINT [DF__RECIPEMX__F_JE__713DB68B]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RECIPEMX__F_KL__7231DAC4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RECIPEMX] ADD  CONSTRAINT [DF__RECIPEMX__F_KL__7231DAC4]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RECIPEMX__F_DJ2__7325FEFD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RECIPEMX] ADD  CONSTRAINT [DF__RECIPEMX__F_DJ2__7325FEFD]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RECIPEMX2__F_KL__6C79016E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RECIPEMX2] ADD  CONSTRAINT [DF__RECIPEMX2__F_KL__6C79016E]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RECIPEMX2__F_DJ2__6D6D25A7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RECIPEMX2] ADD  CONSTRAINT [DF__RECIPEMX2__F_DJ2__6D6D25A7]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD__F_FPXZ__4CEB477C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKD] ADD  CONSTRAINT [DF__RKD__F_FPXZ__4CEB477C]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD__F_SL2__4DDF6BB5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKD] ADD  CONSTRAINT [DF__RKD__F_SL2__4DDF6BB5]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD2__F_FPXZ__4ED38FEE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKD2] ADD  CONSTRAINT [DF__RKD2__F_FPXZ__4ED38FEE]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD2__F_SL2__4FC7B427]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKD2] ADD  CONSTRAINT [DF__RKD2__F_SL2__4FC7B427]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD3__F_FPXZ__50BBD860]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKD3] ADD  CONSTRAINT [DF__RKD3__F_FPXZ__50BBD860]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD3__F_SL2__51AFFC99]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKD3] ADD  CONSTRAINT [DF__RKD3__F_SL2__51AFFC99]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__F_SL__52A420D2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_SL__52A420D2]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__F_DJ__5398450B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_DJ__5398450B]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__F_JE__548C6944]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_JE__548C6944]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__F_UN__55808D7D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_UN__55808D7D]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__F_YLF__5674B1B6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_YLF__5674B1B6]  DEFAULT ((0)) FOR [F_YLF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__F_JGF__5768D5EF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_JGF__5768D5EF]  DEFAULT ((0)) FOR [F_JGF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__F_SL2__585CFA28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_SL2__585CFA28]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__F_KL__59511E61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_KL__59511E61]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX2__F_SL__5A45429A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX2] ADD  CONSTRAINT [DF__RKDMX2__F_SL__5A45429A]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX2__F_DJ__5B3966D3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX2] ADD  CONSTRAINT [DF__RKDMX2__F_DJ__5B3966D3]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX2__F_JE__5C2D8B0C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX2] ADD  CONSTRAINT [DF__RKDMX2__F_JE__5C2D8B0C]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX2__F_UN__5D21AF45]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX2] ADD  CONSTRAINT [DF__RKDMX2__F_UN__5D21AF45]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX2__F_SL2__5E15D37E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX2] ADD  CONSTRAINT [DF__RKDMX2__F_SL2__5E15D37E]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX2__F_KL__5F09F7B7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX2] ADD  CONSTRAINT [DF__RKDMX2__F_KL__5F09F7B7]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX3__F_SL2__5FFE1BF0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX3] ADD  CONSTRAINT [DF__RKDMX3__F_SL2__5FFE1BF0]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX3__F_KL__60F24029]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX3] ADD  CONSTRAINT [DF__RKDMX3__F_KL__60F24029]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_IFSJ__6D58170E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_IFSJ__6D58170E]  DEFAULT ('') FOR [F_IFSJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_MAXSL__61E66462]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_MAXSL__61E66462]  DEFAULT ((0)) FOR [F_MAXSL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_MINSL__62DA889B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_MINSL__62DA889B]  DEFAULT ((0)) FOR [F_MINSL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_SLV__63CEACD4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_SLV__63CEACD4]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_CS__64C2D10D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_CS__64C2D10D]  DEFAULT ((1)) FOR [F_CS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_BZQ__65B6F546]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_BZQ__65B6F546]  DEFAULT ((0)) FOR [F_BZQ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_DJ1__66AB197F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_DJ1__66AB197F]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_DJ2__679F3DB8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_DJ2__679F3DB8]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_DJ3__689361F1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_DJ3__689361F1]  DEFAULT ((0)) FOR [F_DJ3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_DJ4__6987862A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_DJ4__6987862A]  DEFAULT ((0)) FOR [F_DJ4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_DJ5__6A7BAA63]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_DJ5__6A7BAA63]  DEFAULT ((0)) FOR [F_DJ5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_DWCB__6B6FCE9C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_DWCB__6B6FCE9C]  DEFAULT ((0)) FOR [F_DWCB]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_MAXPC__6C63F2D5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_MAXPC__6C63F2D5]  DEFAULT ((0)) FOR [F_MAXPC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_RATE__6E4C3B47]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_RATE__6E4C3B47]  DEFAULT ((0)) FOR [F_RATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_FUNCTION__6F405F80]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_FUNCTION__6F405F80]  DEFAULT ('') FOR [F_FUNCTION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_UN1__703483B9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_UN1__703483B9]  DEFAULT ((0)) FOR [F_UN1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_UN2__7128A7F2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_UN2__7128A7F2]  DEFAULT ((0)) FOR [F_UN2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_UN3__721CCC2B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_UN3__721CCC2B]  DEFAULT ((0)) FOR [F_UN3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_UN4__7310F064]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_UN4__7310F064]  DEFAULT ((0)) FOR [F_UN4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_UN5__7405149D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_UN5__7405149D]  DEFAULT ((0)) FOR [F_UN5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_MAXJJ__74F938D6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_MAXJJ__74F938D6]  DEFAULT ((0)) FOR [F_MAXJJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_MINJJ__75ED5D0F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_MINJJ__75ED5D0F]  DEFAULT ((0)) FOR [F_MINJJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_RECENTJJ__76E18148]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_RECENTJJ__76E18148]  DEFAULT ((0)) FOR [F_RECENTJJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_ZFBL__77D5A581]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_ZFBL__77D5A581]  DEFAULT ((0)) FOR [F_ZFBL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPPC__F_SL__0CD0C267]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPPC] ADD  CONSTRAINT [DF__SPPC__F_SL__0CD0C267]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPPC__F_JE__0DC4E6A0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPPC] ADD  CONSTRAINT [DF__SPPC__F_JE__0DC4E6A0]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP__F_LJXF__48E5AC6E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP] ADD  CONSTRAINT [DF__VIP__F_LJXF__48E5AC6E]  DEFAULT ((0)) FOR [F_LJXF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP__F_GRADE__49D9D0A7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP] ADD  CONSTRAINT [DF__VIP__F_GRADE__49D9D0A7]  DEFAULT ((0)) FOR [F_GRADE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP__F_LJCS__4ACDF4E0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP] ADD  CONSTRAINT [DF__VIP__F_LJCS__4ACDF4E0]  DEFAULT ((0)) FOR [F_LJCS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP__F_LJFF__4BC21919]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP] ADD  CONSTRAINT [DF__VIP__F_LJFF__4BC21919]  DEFAULT ((0)) FOR [F_LJFF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP__F_UN1__4CB63D52]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP] ADD  CONSTRAINT [DF__VIP__F_UN1__4CB63D52]  DEFAULT ((0)) FOR [F_UN1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP__F_UN2__4DAA618B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP] ADD  CONSTRAINT [DF__VIP__F_UN2__4DAA618B]  DEFAULT ((0)) FOR [F_UN2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP__F_UN3__4E9E85C4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP] ADD  CONSTRAINT [DF__VIP__F_UN3__4E9E85C4]  DEFAULT ((0)) FOR [F_UN3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP__F_UN4__4F92A9FD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP] ADD  CONSTRAINT [DF__VIP__F_UN4__4F92A9FD]  DEFAULT ((0)) FOR [F_UN4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP__F_UN5__5086CE36]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP] ADD  CONSTRAINT [DF__VIP__F_UN5__5086CE36]  DEFAULT ((0)) FOR [F_UN5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP__F_LJXFJF__517AF26F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP] ADD  CONSTRAINT [DF__VIP__F_LJXFJF__517AF26F]  DEFAULT ((0)) FOR [F_LJXFJF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP__F_LJFFJF__526F16A8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP] ADD  CONSTRAINT [DF__VIP__F_LJFFJF__526F16A8]  DEFAULT ((0)) FOR [F_LJFFJF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP2__F_LJXF__53633AE1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP2] ADD  CONSTRAINT [DF__VIP2__F_LJXF__53633AE1]  DEFAULT ((0)) FOR [F_LJXF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP2__F_GRADE__54575F1A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP2] ADD  CONSTRAINT [DF__VIP2__F_GRADE__54575F1A]  DEFAULT ((0)) FOR [F_GRADE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP2__F_LJCS__554B8353]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP2] ADD  CONSTRAINT [DF__VIP2__F_LJCS__554B8353]  DEFAULT ((0)) FOR [F_LJCS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP2__F_LJFF__563FA78C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP2] ADD  CONSTRAINT [DF__VIP2__F_LJFF__563FA78C]  DEFAULT ((0)) FOR [F_LJFF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP2__F_UN1__5733CBC5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP2] ADD  CONSTRAINT [DF__VIP2__F_UN1__5733CBC5]  DEFAULT ((0)) FOR [F_UN1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP2__F_UN2__5827EFFE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP2] ADD  CONSTRAINT [DF__VIP2__F_UN2__5827EFFE]  DEFAULT ((0)) FOR [F_UN2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP2__F_UN3__591C1437]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP2] ADD  CONSTRAINT [DF__VIP2__F_UN3__591C1437]  DEFAULT ((0)) FOR [F_UN3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP2__F_UN4__5A103870]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP2] ADD  CONSTRAINT [DF__VIP2__F_UN4__5A103870]  DEFAULT ((0)) FOR [F_UN4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP2__F_UN5__5B045CA9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP2] ADD  CONSTRAINT [DF__VIP2__F_UN5__5B045CA9]  DEFAULT ((0)) FOR [F_UN5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP2__F_LJXFJF__5BF880E2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP2] ADD  CONSTRAINT [DF__VIP2__F_LJXFJF__5BF880E2]  DEFAULT ((0)) FOR [F_LJXFJF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP2__F_LJFFJF__5CECA51B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[VIP2] ADD  CONSTRAINT [DF__VIP2__F_LJFFJF__5CECA51B]  DEFAULT ((0)) FOR [F_LJFFJF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFHXZ__F_JH__2DFCAC08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFHXZ] ADD  CONSTRAINT [DF__YFHXZ__F_JH__2DFCAC08]  DEFAULT ((0)) FOR [F_JH]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFHXZ__F_FK__2EF0D041]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFHXZ] ADD  CONSTRAINT [DF__YFHXZ__F_FK__2EF0D041]  DEFAULT ((0)) FOR [F_FK]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFHXZ__F_HXJE__2FE4F47A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFHXZ] ADD  CONSTRAINT [DF__YFHXZ__F_HXJE__2FE4F47A]  DEFAULT ((0)) FOR [F_HXJE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFHXZMX__F_HC__58A712EB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFHXZMX] ADD  CONSTRAINT [DF__YFHXZMX__F_HC__58A712EB]  DEFAULT ((0)) FOR [F_HC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFHXZMX__F_SL__599B3724]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFHXZMX] ADD  CONSTRAINT [DF__YFHXZMX__F_SL__599B3724]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFHXZMX__F_JE__5A8F5B5D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFHXZMX] ADD  CONSTRAINT [DF__YFHXZMX__F_JE__5A8F5B5D]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFHXZMX__F_HXSL__5B837F96]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFHXZMX] ADD  CONSTRAINT [DF__YFHXZMX__F_HXSL__5B837F96]  DEFAULT ((0)) FOR [F_HXSL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFHXZMX__F_HXJE__5C77A3CF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFHXZMX] ADD  CONSTRAINT [DF__YFHXZMX__F_HXJE__5C77A3CF]  DEFAULT ((0)) FOR [F_HXJE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFHXZMX__F_FK__5D6BC808]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFHXZMX] ADD  CONSTRAINT [DF__YFHXZMX__F_FK__5D6BC808]  DEFAULT ((0)) FOR [F_FK]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFJSD2__F_ZK__30D918B3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFJSD2] ADD  CONSTRAINT [DF__YFJSD2__F_ZK__30D918B3]  DEFAULT ((0)) FOR [F_ZK]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZ__F_SR__31CD3CEC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFMXZ] ADD  CONSTRAINT [DF__YFMXZ__F_SR__31CD3CEC]  DEFAULT ((0)) FOR [F_SR]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZ__F_FC__32C16125]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFMXZ] ADD  CONSTRAINT [DF__YFMXZ__F_FC__32C16125]  DEFAULT ((0)) FOR [F_FC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZ__F_YE__33B5855E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFMXZ] ADD  CONSTRAINT [DF__YFMXZ__F_YE__33B5855E]  DEFAULT ((0)) FOR [F_YE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZ__F_HXJE__34A9A997]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFMXZ] ADD  CONSTRAINT [DF__YFMXZ__F_HXJE__34A9A997]  DEFAULT ((0)) FOR [F_HXJE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZ__F_ZK__359DCDD0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFMXZ] ADD  CONSTRAINT [DF__YFMXZ__F_ZK__359DCDD0]  DEFAULT ((0)) FOR [F_ZK]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZMX__F_HC__5105F123]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFMXZMX] ADD  CONSTRAINT [DF__YFMXZMX__F_HC__5105F123]  DEFAULT ((0)) FOR [F_HC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZMX__F_SL__51FA155C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFMXZMX] ADD  CONSTRAINT [DF__YFMXZMX__F_SL__51FA155C]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZMX__F_JE__52EE3995]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFMXZMX] ADD  CONSTRAINT [DF__YFMXZMX__F_JE__52EE3995]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZMX__F_HXJE__53E25DCE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFMXZMX] ADD  CONSTRAINT [DF__YFMXZMX__F_HXJE__53E25DCE]  DEFAULT ((0)) FOR [F_HXJE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZMX__F_HXSL__54D68207]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFMXZMX] ADD  CONSTRAINT [DF__YFMXZMX__F_HXSL__54D68207]  DEFAULT ((0)) FOR [F_HXSL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZMXQC__F_HC__4D35603F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFMXZMXQC] ADD  CONSTRAINT [DF__YFMXZMXQC__F_HC__4D35603F]  DEFAULT ((0)) FOR [F_HC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZMXQC__F_SL__4E298478]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFMXZMXQC] ADD  CONSTRAINT [DF__YFMXZMXQC__F_SL__4E298478]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZMXQC__F_JE__4F1DA8B1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFMXZMXQC] ADD  CONSTRAINT [DF__YFMXZMXQC__F_JE__4F1DA8B1]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_QCYE__3691F209]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_QCYE__3691F209]  DEFAULT ((0)) FOR [F_QCYE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_QMYE__37861642]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_QMYE__37861642]  DEFAULT ((0)) FOR [F_QMYE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J1__387A3A7B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J1__387A3A7B]  DEFAULT ((0)) FOR [F_J1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D1__396E5EB4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D1__396E5EB4]  DEFAULT ((0)) FOR [F_D1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J2__3A6282ED]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J2__3A6282ED]  DEFAULT ((0)) FOR [F_J2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D2__3B56A726]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D2__3B56A726]  DEFAULT ((0)) FOR [F_D2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J3__3C4ACB5F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J3__3C4ACB5F]  DEFAULT ((0)) FOR [F_J3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D3__3D3EEF98]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D3__3D3EEF98]  DEFAULT ((0)) FOR [F_D3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J4__3E3313D1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J4__3E3313D1]  DEFAULT ((0)) FOR [F_J4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D4__3F27380A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D4__3F27380A]  DEFAULT ((0)) FOR [F_D4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J5__401B5C43]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J5__401B5C43]  DEFAULT ((0)) FOR [F_J5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D5__410F807C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D5__410F807C]  DEFAULT ((0)) FOR [F_D5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J6__4203A4B5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J6__4203A4B5]  DEFAULT ((0)) FOR [F_J6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D6__42F7C8EE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D6__42F7C8EE]  DEFAULT ((0)) FOR [F_D6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J7__43EBED27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J7__43EBED27]  DEFAULT ((0)) FOR [F_J7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D7__44E01160]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D7__44E01160]  DEFAULT ((0)) FOR [F_D7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J8__45D43599]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J8__45D43599]  DEFAULT ((0)) FOR [F_J8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D8__46C859D2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D8__46C859D2]  DEFAULT ((0)) FOR [F_D8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J9__47BC7E0B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J9__47BC7E0B]  DEFAULT ((0)) FOR [F_J9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D9__48B0A244]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D9__48B0A244]  DEFAULT ((0)) FOR [F_D9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J10__49A4C67D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J10__49A4C67D]  DEFAULT ((0)) FOR [F_J10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D10__4A98EAB6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D10__4A98EAB6]  DEFAULT ((0)) FOR [F_D10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J11__4B8D0EEF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J11__4B8D0EEF]  DEFAULT ((0)) FOR [F_J11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D11__4C813328]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D11__4C813328]  DEFAULT ((0)) FOR [F_D11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J12__4D755761]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_J12__4D755761]  DEFAULT ((0)) FOR [F_J12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D12__4E697B9A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YFZZ] ADD  CONSTRAINT [DF__YFZZ__F_D12__4E697B9A]  DEFAULT ((0)) FOR [F_D12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSHXZ__F_XS__4F5D9FD3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSHXZ] ADD  CONSTRAINT [DF__YSHXZ__F_XS__4F5D9FD3]  DEFAULT ((0)) FOR [F_XS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSHXZ__F_SK__5051C40C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSHXZ] ADD  CONSTRAINT [DF__YSHXZ__F_SK__5051C40C]  DEFAULT ((0)) FOR [F_SK]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSHXZ__F_HXJE__5145E845]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSHXZ] ADD  CONSTRAINT [DF__YSHXZ__F_HXJE__5145E845]  DEFAULT ((0)) FOR [F_HXJE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSHXZMX__F_HC__45943E77]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSHXZMX] ADD  CONSTRAINT [DF__YSHXZMX__F_HC__45943E77]  DEFAULT ((0)) FOR [F_HC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSHXZMX__F_SL__468862B0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSHXZMX] ADD  CONSTRAINT [DF__YSHXZMX__F_SL__468862B0]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSHXZMX__F_JE__477C86E9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSHXZMX] ADD  CONSTRAINT [DF__YSHXZMX__F_JE__477C86E9]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSHXZMX__F_HXSL__4870AB22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSHXZMX] ADD  CONSTRAINT [DF__YSHXZMX__F_HXSL__4870AB22]  DEFAULT ((0)) FOR [F_HXSL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSHXZMX__F_HXJE__4964CF5B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSHXZMX] ADD  CONSTRAINT [DF__YSHXZMX__F_HXJE__4964CF5B]  DEFAULT ((0)) FOR [F_HXJE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSHXZMX__F_SK__4A58F394]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSHXZMX] ADD  CONSTRAINT [DF__YSHXZMX__F_SK__4A58F394]  DEFAULT ((0)) FOR [F_SK]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSJSD2__F_ZK__523A0C7E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSJSD2] ADD  CONSTRAINT [DF__YSJSD2__F_ZK__523A0C7E]  DEFAULT ((0)) FOR [F_ZK]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZ__F_SR__532E30B7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSMXZ] ADD  CONSTRAINT [DF__YSMXZ__F_SR__532E30B7]  DEFAULT ((0)) FOR [F_SR]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZ__F_FC__542254F0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSMXZ] ADD  CONSTRAINT [DF__YSMXZ__F_FC__542254F0]  DEFAULT ((0)) FOR [F_FC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZ__F_YE__55167929]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSMXZ] ADD  CONSTRAINT [DF__YSMXZ__F_YE__55167929]  DEFAULT ((0)) FOR [F_YE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZ__F_HXJE__560A9D62]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSMXZ] ADD  CONSTRAINT [DF__YSMXZ__F_HXJE__560A9D62]  DEFAULT ((0)) FOR [F_HXJE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZ__F_ZK__56FEC19B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSMXZ] ADD  CONSTRAINT [DF__YSMXZ__F_ZK__56FEC19B]  DEFAULT ((0)) FOR [F_ZK]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZMX__F_HC__3DF31CAF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSMXZMX] ADD  CONSTRAINT [DF__YSMXZMX__F_HC__3DF31CAF]  DEFAULT ((0)) FOR [F_HC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZMX__F_SL__3EE740E8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSMXZMX] ADD  CONSTRAINT [DF__YSMXZMX__F_SL__3EE740E8]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZMX__F_JE__3FDB6521]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSMXZMX] ADD  CONSTRAINT [DF__YSMXZMX__F_JE__3FDB6521]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZMX__F_HXJE__40CF895A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSMXZMX] ADD  CONSTRAINT [DF__YSMXZMX__F_HXJE__40CF895A]  DEFAULT ((0)) FOR [F_HXJE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZMX__F_HXSL__41C3AD93]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSMXZMX] ADD  CONSTRAINT [DF__YSMXZMX__F_HXSL__41C3AD93]  DEFAULT ((0)) FOR [F_HXSL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZMXQC__F_HC__3A228BCB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSMXZMXQC] ADD  CONSTRAINT [DF__YSMXZMXQC__F_HC__3A228BCB]  DEFAULT ((0)) FOR [F_HC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZMXQC__F_SL__3B16B004]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSMXZMXQC] ADD  CONSTRAINT [DF__YSMXZMXQC__F_SL__3B16B004]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZMXQC__F_JE__3C0AD43D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSMXZMXQC] ADD  CONSTRAINT [DF__YSMXZMXQC__F_JE__3C0AD43D]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_QCYE__57F2E5D4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_QCYE__57F2E5D4]  DEFAULT ((0)) FOR [F_QCYE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_QMYE__58E70A0D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_QMYE__58E70A0D]  DEFAULT ((0)) FOR [F_QMYE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J1__59DB2E46]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J1__59DB2E46]  DEFAULT ((0)) FOR [F_J1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D1__5ACF527F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D1__5ACF527F]  DEFAULT ((0)) FOR [F_D1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J2__5BC376B8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J2__5BC376B8]  DEFAULT ((0)) FOR [F_J2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D2__5CB79AF1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D2__5CB79AF1]  DEFAULT ((0)) FOR [F_D2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J3__5DABBF2A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J3__5DABBF2A]  DEFAULT ((0)) FOR [F_J3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D3__5E9FE363]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D3__5E9FE363]  DEFAULT ((0)) FOR [F_D3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J4__5F94079C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J4__5F94079C]  DEFAULT ((0)) FOR [F_J4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D4__60882BD5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D4__60882BD5]  DEFAULT ((0)) FOR [F_D4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J5__617C500E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J5__617C500E]  DEFAULT ((0)) FOR [F_J5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D5__62707447]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D5__62707447]  DEFAULT ((0)) FOR [F_D5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J6__63649880]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J6__63649880]  DEFAULT ((0)) FOR [F_J6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D6__6458BCB9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D6__6458BCB9]  DEFAULT ((0)) FOR [F_D6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J7__654CE0F2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J7__654CE0F2]  DEFAULT ((0)) FOR [F_J7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D7__6641052B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D7__6641052B]  DEFAULT ((0)) FOR [F_D7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J8__67352964]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J8__67352964]  DEFAULT ((0)) FOR [F_J8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D8__68294D9D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D8__68294D9D]  DEFAULT ((0)) FOR [F_D8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J9__691D71D6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J9__691D71D6]  DEFAULT ((0)) FOR [F_J9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D9__6A11960F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D9__6A11960F]  DEFAULT ((0)) FOR [F_D9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J10__6B05BA48]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J10__6B05BA48]  DEFAULT ((0)) FOR [F_J10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D10__6BF9DE81]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D10__6BF9DE81]  DEFAULT ((0)) FOR [F_D10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J11__6CEE02BA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J11__6CEE02BA]  DEFAULT ((0)) FOR [F_J11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D11__6DE226F3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D11__6DE226F3]  DEFAULT ((0)) FOR [F_D11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J12__6ED64B2C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_J12__6ED64B2C]  DEFAULT ((0)) FOR [F_J12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D12__6FCA6F65]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YSZZ] ADD  CONSTRAINT [DF__YSZZ__F_D12__6FCA6F65]  DEFAULT ((0)) FOR [F_D12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YWY__F_DE__70BE939E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YWY] ADD  CONSTRAINT [DF__YWY__F_DE__70BE939E]  DEFAULT ((0)) FOR [F_DE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YWY__F_DE1__71B2B7D7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[YWY] ADD  CONSTRAINT [DF__YWY__F_DE1__71B2B7D7]  DEFAULT ((0)) FOR [F_DE1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKD__F_HW__082C08DB]') AND parent_object_id = OBJECT_ID(N'[dbo].[CKD]'))
ALTER TABLE [dbo].[CKD]  WITH CHECK ADD  CONSTRAINT [FK__CKD__F_HW__082C08DB] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKD__F_HW__082C08DB]') AND parent_object_id = OBJECT_ID(N'[dbo].[CKD]'))
ALTER TABLE [dbo].[CKD] CHECK CONSTRAINT [FK__CKD__F_HW__082C08DB]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKD2__F_HW__0B087586]') AND parent_object_id = OBJECT_ID(N'[dbo].[CKD2]'))
ALTER TABLE [dbo].[CKD2]  WITH CHECK ADD  CONSTRAINT [FK__CKD2__F_HW__0B087586] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKD2__F_HW__0B087586]') AND parent_object_id = OBJECT_ID(N'[dbo].[CKD2]'))
ALTER TABLE [dbo].[CKD2] CHECK CONSTRAINT [FK__CKD2__F_HW__0B087586]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKDMX__F_SPBH__0BFC99BF]') AND parent_object_id = OBJECT_ID(N'[dbo].[CKDMX]'))
ALTER TABLE [dbo].[CKDMX]  WITH CHECK ADD  CONSTRAINT [FK__CKDMX__F_SPBH__0BFC99BF] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKDMX__F_SPBH__0BFC99BF]') AND parent_object_id = OBJECT_ID(N'[dbo].[CKDMX]'))
ALTER TABLE [dbo].[CKDMX] CHECK CONSTRAINT [FK__CKDMX__F_SPBH__0BFC99BF]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKDMX2__F_SPBH__0CF0BDF8]') AND parent_object_id = OBJECT_ID(N'[dbo].[CKDMX2]'))
ALTER TABLE [dbo].[CKDMX2]  WITH CHECK ADD  CONSTRAINT [FK__CKDMX2__F_SPBH__0CF0BDF8] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKDMX2__F_SPBH__0CF0BDF8]') AND parent_object_id = OBJECT_ID(N'[dbo].[CKDMX2]'))
ALTER TABLE [dbo].[CKDMX2] CHECK CONSTRAINT [FK__CKDMX2__F_SPBH__0CF0BDF8]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD__F_HW1__0FCD2AA3]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBD]'))
ALTER TABLE [dbo].[DBD]  WITH CHECK ADD  CONSTRAINT [FK__DBD__F_HW1__0FCD2AA3] FOREIGN KEY([F_HW1])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD__F_HW1__0FCD2AA3]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBD]'))
ALTER TABLE [dbo].[DBD] CHECK CONSTRAINT [FK__DBD__F_HW1__0FCD2AA3]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD__F_HW2__10C14EDC]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBD]'))
ALTER TABLE [dbo].[DBD]  WITH CHECK ADD  CONSTRAINT [FK__DBD__F_HW2__10C14EDC] FOREIGN KEY([F_HW2])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD__F_HW2__10C14EDC]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBD]'))
ALTER TABLE [dbo].[DBD] CHECK CONSTRAINT [FK__DBD__F_HW2__10C14EDC]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD2__F_HW1__11B57315]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBD2]'))
ALTER TABLE [dbo].[DBD2]  WITH CHECK ADD  CONSTRAINT [FK__DBD2__F_HW1__11B57315] FOREIGN KEY([F_HW1])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD2__F_HW1__11B57315]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBD2]'))
ALTER TABLE [dbo].[DBD2] CHECK CONSTRAINT [FK__DBD2__F_HW1__11B57315]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD2__F_HW2__12A9974E]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBD2]'))
ALTER TABLE [dbo].[DBD2]  WITH CHECK ADD  CONSTRAINT [FK__DBD2__F_HW2__12A9974E] FOREIGN KEY([F_HW2])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD2__F_HW2__12A9974E]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBD2]'))
ALTER TABLE [dbo].[DBD2] CHECK CONSTRAINT [FK__DBD2__F_HW2__12A9974E]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBDMX__F_SPBH__139DBB87]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBDMX]'))
ALTER TABLE [dbo].[DBDMX]  WITH CHECK ADD  CONSTRAINT [FK__DBDMX__F_SPBH__139DBB87] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBDMX__F_SPBH__139DBB87]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBDMX]'))
ALTER TABLE [dbo].[DBDMX] CHECK CONSTRAINT [FK__DBDMX__F_SPBH__139DBB87]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBDMX2__F_SPBH__760D58A0]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBDMX2]'))
ALTER TABLE [dbo].[DBDMX2]  WITH CHECK ADD  CONSTRAINT [FK__DBDMX2__F_SPBH__760D58A0] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBDMX2__F_SPBH__760D58A0]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBDMX2]'))
ALTER TABLE [dbo].[DBDMX2] CHECK CONSTRAINT [FK__DBDMX2__F_SPBH__760D58A0]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD__F_BM__176E4C6B]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD]'))
ALTER TABLE [dbo].[JHD]  WITH CHECK ADD  CONSTRAINT [FK__JHD__F_BM__176E4C6B] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD__F_BM__176E4C6B]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD]'))
ALTER TABLE [dbo].[JHD] CHECK CONSTRAINT [FK__JHD__F_BM__176E4C6B]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD__F_HW__1A4AB916]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD]'))
ALTER TABLE [dbo].[JHD]  WITH CHECK ADD  CONSTRAINT [FK__JHD__F_HW__1A4AB916] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD__F_HW__1A4AB916]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD]'))
ALTER TABLE [dbo].[JHD] CHECK CONSTRAINT [FK__JHD__F_HW__1A4AB916]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD__F_VENDOR__1B3EDD4F]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD]'))
ALTER TABLE [dbo].[JHD]  WITH CHECK ADD  CONSTRAINT [FK__JHD__F_VENDOR__1B3EDD4F] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD__F_VENDOR__1B3EDD4F]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD]'))
ALTER TABLE [dbo].[JHD] CHECK CONSTRAINT [FK__JHD__F_VENDOR__1B3EDD4F]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD2__F_BM__7F96C2DA]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD2]'))
ALTER TABLE [dbo].[JHD2]  WITH CHECK ADD  CONSTRAINT [FK__JHD2__F_BM__7F96C2DA] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD2__F_BM__7F96C2DA]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD2]'))
ALTER TABLE [dbo].[JHD2] CHECK CONSTRAINT [FK__JHD2__F_BM__7F96C2DA]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD2__F_HW__008AE713]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD2]'))
ALTER TABLE [dbo].[JHD2]  WITH CHECK ADD  CONSTRAINT [FK__JHD2__F_HW__008AE713] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD2__F_HW__008AE713]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD2]'))
ALTER TABLE [dbo].[JHD2] CHECK CONSTRAINT [FK__JHD2__F_HW__008AE713]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD2__F_VENDOR__1C330188]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD2]'))
ALTER TABLE [dbo].[JHD2]  WITH CHECK ADD  CONSTRAINT [FK__JHD2__F_VENDOR__1C330188] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD2__F_VENDOR__1C330188]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHD2]'))
ALTER TABLE [dbo].[JHD2] CHECK CONSTRAINT [FK__JHD2__F_VENDOR__1C330188]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHDMX__F_SPBH__1D2725C1]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHDMX]'))
ALTER TABLE [dbo].[JHDMX]  WITH CHECK ADD  CONSTRAINT [FK__JHDMX__F_SPBH__1D2725C1] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHDMX__F_SPBH__1D2725C1]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHDMX]'))
ALTER TABLE [dbo].[JHDMX] CHECK CONSTRAINT [FK__JHDMX__F_SPBH__1D2725C1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHDMX2__F_SPBH__1E1B49FA]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHDMX2]'))
ALTER TABLE [dbo].[JHDMX2]  WITH CHECK ADD  CONSTRAINT [FK__JHDMX2__F_SPBH__1E1B49FA] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHDMX2__F_SPBH__1E1B49FA]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHDMX2]'))
ALTER TABLE [dbo].[JHDMX2] CHECK CONSTRAINT [FK__JHDMX2__F_SPBH__1E1B49FA]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHZZ__F_HW__1F0F6E33]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHZZ]'))
ALTER TABLE [dbo].[JHZZ]  WITH CHECK ADD  CONSTRAINT [FK__JHZZ__F_HW__1F0F6E33] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHZZ__F_HW__1F0F6E33]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHZZ]'))
ALTER TABLE [dbo].[JHZZ] CHECK CONSTRAINT [FK__JHZZ__F_HW__1F0F6E33]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHZZ__F_SPBH__2003926C]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHZZ]'))
ALTER TABLE [dbo].[JHZZ]  WITH CHECK ADD  CONSTRAINT [FK__JHZZ__F_SPBH__2003926C] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHZZ__F_SPBH__2003926C]') AND parent_object_id = OBJECT_ID(N'[dbo].[JHZZ]'))
ALTER TABLE [dbo].[JHZZ] CHECK CONSTRAINT [FK__JHZZ__F_SPBH__2003926C]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCMXZ__F_HW__20F7B6A5]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCMXZ]'))
ALTER TABLE [dbo].[KCMXZ]  WITH CHECK ADD  CONSTRAINT [FK__KCMXZ__F_HW__20F7B6A5] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCMXZ__F_HW__20F7B6A5]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCMXZ]'))
ALTER TABLE [dbo].[KCMXZ] CHECK CONSTRAINT [FK__KCMXZ__F_HW__20F7B6A5]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCMXZ__F_SPBH__21EBDADE]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCMXZ]'))
ALTER TABLE [dbo].[KCMXZ]  WITH CHECK ADD  CONSTRAINT [FK__KCMXZ__F_SPBH__21EBDADE] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCMXZ__F_SPBH__21EBDADE]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCMXZ]'))
ALTER TABLE [dbo].[KCMXZ] CHECK CONSTRAINT [FK__KCMXZ__F_SPBH__21EBDADE]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCZZ__F_HW__22DFFF17]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCZZ]'))
ALTER TABLE [dbo].[KCZZ]  WITH CHECK ADD  CONSTRAINT [FK__KCZZ__F_HW__22DFFF17] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCZZ__F_HW__22DFFF17]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCZZ]'))
ALTER TABLE [dbo].[KCZZ] CHECK CONSTRAINT [FK__KCZZ__F_HW__22DFFF17]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCZZ__F_SPBH__09202D14]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCZZ]'))
ALTER TABLE [dbo].[KCZZ]  WITH CHECK ADD  CONSTRAINT [FK__KCZZ__F_SPBH__09202D14] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCZZ__F_SPBH__09202D14]') AND parent_object_id = OBJECT_ID(N'[dbo].[KCZZ]'))
ALTER TABLE [dbo].[KCZZ] CHECK CONSTRAINT [FK__KCZZ__F_SPBH__09202D14]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKD__F_HW__2898D86D]') AND parent_object_id = OBJECT_ID(N'[dbo].[RKD]'))
ALTER TABLE [dbo].[RKD]  WITH CHECK ADD  CONSTRAINT [FK__RKD__F_HW__2898D86D] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKD__F_HW__2898D86D]') AND parent_object_id = OBJECT_ID(N'[dbo].[RKD]'))
ALTER TABLE [dbo].[RKD] CHECK CONSTRAINT [FK__RKD__F_HW__2898D86D]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKD2__F_HW__298CFCA6]') AND parent_object_id = OBJECT_ID(N'[dbo].[RKD2]'))
ALTER TABLE [dbo].[RKD2]  WITH CHECK ADD  CONSTRAINT [FK__RKD2__F_HW__298CFCA6] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKD2__F_HW__298CFCA6]') AND parent_object_id = OBJECT_ID(N'[dbo].[RKD2]'))
ALTER TABLE [dbo].[RKD2] CHECK CONSTRAINT [FK__RKD2__F_HW__298CFCA6]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKDMX__F_SPBH__2A8120DF]') AND parent_object_id = OBJECT_ID(N'[dbo].[RKDMX]'))
ALTER TABLE [dbo].[RKDMX]  WITH CHECK ADD  CONSTRAINT [FK__RKDMX__F_SPBH__2A8120DF] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKDMX__F_SPBH__2A8120DF]') AND parent_object_id = OBJECT_ID(N'[dbo].[RKDMX]'))
ALTER TABLE [dbo].[RKDMX] CHECK CONSTRAINT [FK__RKDMX__F_SPBH__2A8120DF]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKDMX2__F_SPBH__6D78129F]') AND parent_object_id = OBJECT_ID(N'[dbo].[RKDMX2]'))
ALTER TABLE [dbo].[RKDMX2]  WITH CHECK ADD  CONSTRAINT [FK__RKDMX2__F_SPBH__6D78129F] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKDMX2__F_SPBH__6D78129F]') AND parent_object_id = OBJECT_ID(N'[dbo].[RKDMX2]'))
ALTER TABLE [dbo].[RKDMX2] CHECK CONSTRAINT [FK__RKDMX2__F_SPBH__6D78129F]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SPPC__F_HW__6E6C36D8]') AND parent_object_id = OBJECT_ID(N'[dbo].[SPPC]'))
ALTER TABLE [dbo].[SPPC]  WITH CHECK ADD  CONSTRAINT [FK__SPPC__F_HW__6E6C36D8] FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SPPC__F_HW__6E6C36D8]') AND parent_object_id = OBJECT_ID(N'[dbo].[SPPC]'))
ALTER TABLE [dbo].[SPPC] CHECK CONSTRAINT [FK__SPPC__F_HW__6E6C36D8]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SPPC__F_SPBH__2B754518]') AND parent_object_id = OBJECT_ID(N'[dbo].[SPPC]'))
ALTER TABLE [dbo].[SPPC]  WITH CHECK ADD  CONSTRAINT [FK__SPPC__F_SPBH__2B754518] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SPPC__F_SPBH__2B754518]') AND parent_object_id = OBJECT_ID(N'[dbo].[SPPC]'))
ALTER TABLE [dbo].[SPPC] CHECK CONSTRAINT [FK__SPPC__F_SPBH__2B754518]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFHXZ__F_BM__3F7C3DC5]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFHXZ]'))
ALTER TABLE [dbo].[YFHXZ]  WITH CHECK ADD  CONSTRAINT [FK__YFHXZ__F_BM__3F7C3DC5] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFHXZ__F_BM__3F7C3DC5]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFHXZ]'))
ALTER TABLE [dbo].[YFHXZ] CHECK CONSTRAINT [FK__YFHXZ__F_BM__3F7C3DC5]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFHXZ__F_VENDOR__407061FE]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFHXZ]'))
ALTER TABLE [dbo].[YFHXZ]  WITH CHECK ADD  CONSTRAINT [FK__YFHXZ__F_VENDOR__407061FE] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFHXZ__F_VENDOR__407061FE]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFHXZ]'))
ALTER TABLE [dbo].[YFHXZ] CHECK CONSTRAINT [FK__YFHXZ__F_VENDOR__407061FE]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFHXZMX__F_BM__41648637]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFHXZMX]'))
ALTER TABLE [dbo].[YFHXZMX]  WITH CHECK ADD  CONSTRAINT [FK__YFHXZMX__F_BM__41648637] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFHXZMX__F_BM__41648637]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFHXZMX]'))
ALTER TABLE [dbo].[YFHXZMX] CHECK CONSTRAINT [FK__YFHXZMX__F_BM__41648637]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFHXZMX__F_VENDO__4258AA70]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFHXZMX]'))
ALTER TABLE [dbo].[YFHXZMX]  WITH CHECK ADD  CONSTRAINT [FK__YFHXZMX__F_VENDO__4258AA70] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFHXZMX__F_VENDO__4258AA70]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFHXZMX]'))
ALTER TABLE [dbo].[YFHXZMX] CHECK CONSTRAINT [FK__YFHXZMX__F_VENDO__4258AA70]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFJSD2__F_BM__434CCEA9]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFJSD2]'))
ALTER TABLE [dbo].[YFJSD2]  WITH CHECK ADD  CONSTRAINT [FK__YFJSD2__F_BM__434CCEA9] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFJSD2__F_BM__434CCEA9]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFJSD2]'))
ALTER TABLE [dbo].[YFJSD2] CHECK CONSTRAINT [FK__YFJSD2__F_BM__434CCEA9]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZ__F_BM__4535171B]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZ]'))
ALTER TABLE [dbo].[YFMXZ]  WITH CHECK ADD  CONSTRAINT [FK__YFMXZ__F_BM__4535171B] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZ__F_BM__4535171B]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZ]'))
ALTER TABLE [dbo].[YFMXZ] CHECK CONSTRAINT [FK__YFMXZ__F_BM__4535171B]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZ__F_VENDOR__46293B54]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZ]'))
ALTER TABLE [dbo].[YFMXZ]  WITH CHECK ADD  CONSTRAINT [FK__YFMXZ__F_VENDOR__46293B54] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZ__F_VENDOR__46293B54]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZ]'))
ALTER TABLE [dbo].[YFMXZ] CHECK CONSTRAINT [FK__YFMXZ__F_VENDOR__46293B54]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZMX__F_BM__4905A7FF]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZMX]'))
ALTER TABLE [dbo].[YFMXZMX]  WITH CHECK ADD  CONSTRAINT [FK__YFMXZMX__F_BM__4905A7FF] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZMX__F_BM__4905A7FF]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZMX]'))
ALTER TABLE [dbo].[YFMXZMX] CHECK CONSTRAINT [FK__YFMXZMX__F_BM__4905A7FF]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZMX__F_SPBH__49F9CC38]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZMX]'))
ALTER TABLE [dbo].[YFMXZMX]  WITH CHECK ADD  CONSTRAINT [FK__YFMXZMX__F_SPBH__49F9CC38] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZMX__F_SPBH__49F9CC38]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZMX]'))
ALTER TABLE [dbo].[YFMXZMX] CHECK CONSTRAINT [FK__YFMXZMX__F_SPBH__49F9CC38]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZMX__F_VENDO__4AEDF071]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZMX]'))
ALTER TABLE [dbo].[YFMXZMX]  WITH CHECK ADD  CONSTRAINT [FK__YFMXZMX__F_VENDO__4AEDF071] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZMX__F_VENDO__4AEDF071]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZMX]'))
ALTER TABLE [dbo].[YFMXZMX] CHECK CONSTRAINT [FK__YFMXZMX__F_VENDO__4AEDF071]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZMXQC__F_BM__4BE214AA]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZMXQC]'))
ALTER TABLE [dbo].[YFMXZMXQC]  WITH CHECK ADD  CONSTRAINT [FK__YFMXZMXQC__F_BM__4BE214AA] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZMXQC__F_BM__4BE214AA]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZMXQC]'))
ALTER TABLE [dbo].[YFMXZMXQC] CHECK CONSTRAINT [FK__YFMXZMXQC__F_BM__4BE214AA]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZMXQC__F_SPB__4CD638E3]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZMXQC]'))
ALTER TABLE [dbo].[YFMXZMXQC]  WITH CHECK ADD  CONSTRAINT [FK__YFMXZMXQC__F_SPB__4CD638E3] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZMXQC__F_SPB__4CD638E3]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZMXQC]'))
ALTER TABLE [dbo].[YFMXZMXQC] CHECK CONSTRAINT [FK__YFMXZMXQC__F_SPB__4CD638E3]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZMXQC__F_VEN__4DCA5D1C]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZMXQC]'))
ALTER TABLE [dbo].[YFMXZMXQC]  WITH CHECK ADD  CONSTRAINT [FK__YFMXZMXQC__F_VEN__4DCA5D1C] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZMXQC__F_VEN__4DCA5D1C]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFMXZMXQC]'))
ALTER TABLE [dbo].[YFMXZMXQC] CHECK CONSTRAINT [FK__YFMXZMXQC__F_VEN__4DCA5D1C]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFZZ__F_BM__4EBE8155]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFZZ]'))
ALTER TABLE [dbo].[YFZZ]  WITH CHECK ADD  CONSTRAINT [FK__YFZZ__F_BM__4EBE8155] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFZZ__F_BM__4EBE8155]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFZZ]'))
ALTER TABLE [dbo].[YFZZ] CHECK CONSTRAINT [FK__YFZZ__F_BM__4EBE8155]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFZZ__F_DM__4FB2A58E]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFZZ]'))
ALTER TABLE [dbo].[YFZZ]  WITH CHECK ADD  CONSTRAINT [FK__YFZZ__F_DM__4FB2A58E] FOREIGN KEY([F_DM])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFZZ__F_DM__4FB2A58E]') AND parent_object_id = OBJECT_ID(N'[dbo].[YFZZ]'))
ALTER TABLE [dbo].[YFZZ] CHECK CONSTRAINT [FK__YFZZ__F_DM__4FB2A58E]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSHXZ__F_BM__50A6C9C7]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSHXZ]'))
ALTER TABLE [dbo].[YSHXZ]  WITH CHECK ADD  CONSTRAINT [FK__YSHXZ__F_BM__50A6C9C7] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSHXZ__F_BM__50A6C9C7]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSHXZ]'))
ALTER TABLE [dbo].[YSHXZ] CHECK CONSTRAINT [FK__YSHXZ__F_BM__50A6C9C7]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSHXZMX__F_BM__528F1239]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSHXZMX]'))
ALTER TABLE [dbo].[YSHXZMX]  WITH CHECK ADD  CONSTRAINT [FK__YSHXZMX__F_BM__528F1239] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSHXZMX__F_BM__528F1239]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSHXZMX]'))
ALTER TABLE [dbo].[YSHXZMX] CHECK CONSTRAINT [FK__YSHXZMX__F_BM__528F1239]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSJSD2__F_BM__54775AAB]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSJSD2]'))
ALTER TABLE [dbo].[YSJSD2]  WITH CHECK ADD  CONSTRAINT [FK__YSJSD2__F_BM__54775AAB] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSJSD2__F_BM__54775AAB]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSJSD2]'))
ALTER TABLE [dbo].[YSJSD2] CHECK CONSTRAINT [FK__YSJSD2__F_BM__54775AAB]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSMXZ__F_BM__565FA31D]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSMXZ]'))
ALTER TABLE [dbo].[YSMXZ]  WITH CHECK ADD  CONSTRAINT [FK__YSMXZ__F_BM__565FA31D] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSMXZ__F_BM__565FA31D]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSMXZ]'))
ALTER TABLE [dbo].[YSMXZ] CHECK CONSTRAINT [FK__YSMXZ__F_BM__565FA31D]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSMXZMX__F_BM__5847EB8F]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSMXZMX]'))
ALTER TABLE [dbo].[YSMXZMX]  WITH CHECK ADD  CONSTRAINT [FK__YSMXZMX__F_BM__5847EB8F] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSMXZMX__F_BM__5847EB8F]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSMXZMX]'))
ALTER TABLE [dbo].[YSMXZMX] CHECK CONSTRAINT [FK__YSMXZMX__F_BM__5847EB8F]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSMXZMXQC__F_BM__70547F4A]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSMXZMXQC]'))
ALTER TABLE [dbo].[YSMXZMXQC]  WITH CHECK ADD  CONSTRAINT [FK__YSMXZMXQC__F_BM__70547F4A] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSMXZMXQC__F_BM__70547F4A]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSMXZMXQC]'))
ALTER TABLE [dbo].[YSMXZMXQC] CHECK CONSTRAINT [FK__YSMXZMXQC__F_BM__70547F4A]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSMXZMXQC__F_SPB__723CC7BC]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSMXZMXQC]'))
ALTER TABLE [dbo].[YSMXZMXQC]  WITH CHECK ADD  CONSTRAINT [FK__YSMXZMXQC__F_SPB__723CC7BC] FOREIGN KEY([F_SPBH])
REFERENCES [dbo].[SP] ([F_SPBH])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSMXZMXQC__F_SPB__723CC7BC]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSMXZMXQC]'))
ALTER TABLE [dbo].[YSMXZMXQC] CHECK CONSTRAINT [FK__YSMXZMXQC__F_SPB__723CC7BC]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSZZ__F_BM__7330EBF5]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSZZ]'))
ALTER TABLE [dbo].[YSZZ]  WITH CHECK ADD  CONSTRAINT [FK__YSZZ__F_BM__7330EBF5] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSZZ__F_BM__7330EBF5]') AND parent_object_id = OBJECT_ID(N'[dbo].[YSZZ]'))
ALTER TABLE [dbo].[YSZZ] CHECK CONSTRAINT [FK__YSZZ__F_BM__7330EBF5]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YWY__F_BM__75193467]') AND parent_object_id = OBJECT_ID(N'[dbo].[YWY]'))
ALTER TABLE [dbo].[YWY]  WITH CHECK ADD  CONSTRAINT [FK__YWY__F_BM__75193467] FOREIGN KEY([F_BM])
REFERENCES [dbo].[BM] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YWY__F_BM__75193467]') AND parent_object_id = OBJECT_ID(N'[dbo].[YWY]'))
ALTER TABLE [dbo].[YWY] CHECK CONSTRAINT [FK__YWY__F_BM__75193467]
GO
