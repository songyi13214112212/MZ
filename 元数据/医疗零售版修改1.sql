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
/****** Object:  Table [dbo].[AINPUTSOURCE]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AINPUTSOURCE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AINPUTSOURCE](
	[F_NAME] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_CAPTION] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK__AINPUTSO__4A3EA670E7DAAC18] PRIMARY KEY CLUSTERED 
(
	[F_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BM]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BM](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DE] [float] NULL,
 CONSTRAINT [PK__BM__2C6EEFB6109F7D3C] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BM3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BM3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BM3](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__BM3__2C6EEFB6A7D02163] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CGD]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CGD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CGD](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CGD__3C196CCD159B4FED] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CGD2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CGD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CGD2](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
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
/****** Object:  Table [dbo].[CGD3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CGD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CGD3](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CGD3__3C196CCDECDF2F34] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CGDMX]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CGDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CGDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_SL2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
 CONSTRAINT [PK__CGDMX__FEDF803E7D444CCE] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CGDMX2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CGDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CGDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_SL2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
 CONSTRAINT [PK__CGDMX2__FEDF803ECA0B079B] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CGDMX3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CGDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CGDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_SL2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
 CONSTRAINT [PK__CGDMX3__FEDF803EB9670655] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CKD]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKD](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2] [float] NULL,
 CONSTRAINT [PK__CKD__3C196CCDCC15FEBA] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CKD2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKD2](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2] [float] NULL,
 CONSTRAINT [PK__CKD2__3C196CCD83ACFAD9] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CKD3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKD3](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2] [float] NULL,
 CONSTRAINT [PK__CKD3__3C196CCD59B78737] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CKDMX]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__CKDMX__FEDF803E7026DC33] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CKDMX2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__CKDMX2__FEDF803EE6F4D50D] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CKDMX3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CKDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CKDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__CKDMX3__FEDF803E6643C5CE] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CUS_SP]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUS_SP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUS_SP](
	[F_CUSTOM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MINDJ] [float] NULL,
	[F_MAXDJ] [float] NULL,
	[F_RECENTDJ] [float] NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NULL,
 CONSTRAINT [PK__CUS_SP__41B72FC0F43786D8] PRIMARY KEY CLUSTERED 
(
	[F_CUSTOM] ASC,
	[F_SPBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CUSTOM]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOM]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOM](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
	[F_ZJM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__CUSTOM__2C6EEFB6EF866EE3] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CUSTOM3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOM3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOM3](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CUSTOM3__2C6EEFB69F0D6819] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CUSTOMDJ]    Script Date: 2023/9/12 20:13:36 ******/
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
 CONSTRAINT [PK__CUSTOMDJ__AD8EBB6A9BC37BA4] PRIMARY KEY CLUSTERED 
(
	[F_DJLX] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CUSTOMGRADE]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMGRADE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMGRADE](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_KL] [int] NULL,
	[F_PRICENUMBER] [int] NULL,
 CONSTRAINT [PK__CUSTOMGR__2C6EEFB67EE7E964] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CUSTOMGROUP]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMGROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CUSTOMGROUP](
	[F_DM] [varchar](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](40) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK__CUSTOMGR__2C6EEFB622D48A78] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CUSTOMLB]    Script Date: 2023/9/12 20:13:36 ******/
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
 CONSTRAINT [PK__CUSTOMLB__2C6EEFB611193A2A] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DBD]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBD](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW1] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW2] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
 CONSTRAINT [PK__DBD__3C196CCDC34D0953] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DBD2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBD2](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW1] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW2] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
 CONSTRAINT [PK__DBD2__3C196CCD1CC80B61] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DBD3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBD3](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW1] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW2] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
 CONSTRAINT [PK__DBD3__3C196CCDFCAB638F] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DBDMX]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__DBDMX__FEDF803ED16085C1] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DBDMX2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__DBDMX2__FEDF803E8C54B63F] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DBDMX3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__DBDMX3__FEDF803E82893AEB] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DBZZ]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBZZ](
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__DBZZ__8278C6245204DEA3] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DHD]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DHD](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_NEWSP] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DHD__3C196CCD6A26924D] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DHD2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DHD2](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_NEWSP] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DHD2__3C196CCD65765F84] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DHD3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DHD3](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_NEWSP] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DHD3__3C196CCD541DE44C] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DHDMX]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DHDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__DHDMX__FEDF803EF50BC370] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DHDMX2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DHDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__DHDMX2__FEDF803E3DC068EA] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DHDMX3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DHDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__DHDMX3__FEDF803EE3B352E9] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DJH]    Script Date: 2023/9/12 20:13:36 ******/
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
/****** Object:  Table [dbo].[ENEMYXX]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ENEMYXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ENEMYXX](
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ2] [float] NULL,
	[F_CS] [int] NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ENEMY] [varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ0] [float] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ENV]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ENV]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ENV](
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATA] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__ENV__2C6E30FAFEF07E59] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EVENT]    Script Date: 2023/9/12 20:13:36 ******/
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
	[F_TYPE] [varchar](4) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HINT] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__EVENT__AD8EBB6AC02DFAEC] PRIMARY KEY CLUSTERED 
(
	[F_DJLX] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[FJXX]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FJXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FJXX](
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_XX] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BH] [int] NOT NULL,
 CONSTRAINT [PK__FJXX__3278C9DA36F364E3] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[HW]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HW]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HW](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_LOCAL] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__HW__2C6EEFB637155ECC] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[HW3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HW3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HW3](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__HW3__2C6EEFB68857B6F9] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JGZZ]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JGZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JGZZ](
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__JGZZ__8278C624987D1421] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHBB]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHBB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHBB](
	[F_CAPTION] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SP] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TOP] [int] NULL,
	[F_LEFT] [int] NULL,
	[F_ROWS] [int] NULL,
	[F_SIZE] [int] NULL,
	[F_LENGTH] [int] NULL,
	[F_WIDTH] [int] NULL,
	[F_ORIENT] [int] NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPLB] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [smallint] NULL,
	[F_TITLEFONT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BBFONT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_COLNUMBER] [int] NULL,
	[F_COLCAPTION] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_COLWIDTH] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JHBB__2C6E30FAC1D17DC4] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHD]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHD](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_FPLX] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JHD__3C196CCD424F5F6B] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHD2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHD2](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_FPLX] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JHD2__3C196CCDFAFAAF2F] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHD3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHD3](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_FPLX] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JHD3__3C196CCDD705AC70] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHDMX]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__JHDMX__FEDF803E1C657E5F] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHDMX2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__JHDMX2__FEDF803E0A4F00C1] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHDMX3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_HJ] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__JHDMX3__FEDF803E9971CC36] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JHZZ]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JHZZ](
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__JHZZ__8278C6244B1BCEF8] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[JSFS]    Script Date: 2023/9/12 20:13:36 ******/
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
 CONSTRAINT [PK__JSFS__2C6EEFB6FA88B5E7] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[KCMXZ]    Script Date: 2023/9/12 20:13:36 ******/
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
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLX] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HC] [int] NULL,
	[F_CX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[KCYE]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KCYE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KCYE](
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SLYE] [float] NULL,
 CONSTRAINT [PK__KCYE__8278C624F8EB5055] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[KCZZ]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KCZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KCZZ](
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__KCZZ__8278C624B0CF171D] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[KJQJ]    Script Date: 2023/9/12 20:13:36 ******/
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
 CONSTRAINT [PK__KJQJ__2C6D7DE58099C1B8] PRIMARY KEY CLUSTERED 
(
	[F_YF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LSH]    Script Date: 2023/9/12 20:13:36 ******/
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
/****** Object:  Table [dbo].[OPERATOR]    Script Date: 2023/9/12 20:13:36 ******/
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
	[F_BM] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZN] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_RED] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__OPERATOR__2C6E30FAA5A316D7] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PAD]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PAD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PAD](
	[F_DM] [int] NOT NULL,
	[F_TEXT] [image] NULL,
 CONSTRAINT [PK__PAD__2C6EEFB6E7AAC802] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PDD]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PDD](
	[F_DJH] [int] NOT NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PDD__3C196CCDEA8219C0] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PDD2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PDD2](
	[F_DJH] [int] NOT NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PDD2__3C196CCD64D3E3AA] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PDD3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PDD3](
	[F_DJH] [int] NOT NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PDD3__3C196CCDFB65D786] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PDDMX]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PDDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PC] [int] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLYE] [float] NULL,
	[F_PDSL] [float] NULL,
	[F_PYSL] [float] NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ2] [float] NULL,
 CONSTRAINT [PK__PDDMX__FEDF803E28837DAA] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PDDMX2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PDDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PC] [int] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLYE] [float] NULL,
	[F_PDSL] [float] NULL,
	[F_PYSL] [float] NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ2] [float] NULL,
 CONSTRAINT [PK__PDDMX2__FEDF803E6D6CC116] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PDDMX3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PDDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PC] [int] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLYE] [float] NULL,
	[F_PDSL] [float] NULL,
	[F_PYSL] [float] NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ2] [float] NULL,
 CONSTRAINT [PK__PDDMX3__FEDF803E3D7A7553] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[POWER]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[POWER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[POWER](
	[F_CZY] [varchar](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_ZT] [varchar](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_QX] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GN] [varchar](4) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SY] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DY] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[POWERITEM]    Script Date: 2023/9/12 20:13:36 ******/
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
/****** Object:  Table [dbo].[PSD]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PSD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PSD](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PSD__3C196CCD30CE0361] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PSDMX]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PSDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PSDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [float] NOT NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL1] [float] NULL,
	[F_SL2] [float] NULL,
	[F_SL3] [float] NULL,
	[F_SL4] [float] NULL,
	[F_SL5] [float] NULL,
	[F_SL6] [float] NULL,
	[F_SL7] [float] NULL,
	[F_SL] [float] NULL,
 CONSTRAINT [PK__PSDMX__FEDF803E75320203] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[QDD]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QDD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QDD](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PSZQ] [int] NULL,
	[F_LJZQ] [int] NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__QDD__3C196CCD853EB6B7] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[QDD2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QDD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QDD2](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PSZQ] [int] NULL,
	[F_LJZQ] [int] NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__QDD2__3C196CCD8320B890] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[QDD3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QDD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QDD3](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PSZQ] [int] NULL,
	[F_LJZQ] [int] NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__QDD3__3C196CCD36062787] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[QDDMX]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QDDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QDDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__QDDMX__FEDF803EF6D4B331] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[QDDMX2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QDDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QDDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__QDDMX2__FEDF803EB0EE443F] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[QDDMX3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QDDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QDDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__QDDMX3__FEDF803E1DAC3606] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RKD]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKD](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2] [float] NULL,
 CONSTRAINT [PK__RKD__3C196CCD4214BFB1] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RKD2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKD2](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2] [float] NULL,
 CONSTRAINT [PK__RKD2__3C196CCD955F7CBB] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RKD3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKD3](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL2] [float] NULL,
 CONSTRAINT [PK__RKD3__3C196CCDB34DC80B] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RKDMX]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__RKDMX__FEDF803E4E92C6C7] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RKDMX2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__RKDMX2__FEDF803EB3E3780B] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[RKDMX3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RKDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RKDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__RKDMX3__FEDF803EDECD020A] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SFZY]    Script Date: 2023/9/12 20:13:36 ******/
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
 CONSTRAINT [PK__SFZY__2C6EEFB6DCBAAA53] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SJMXZ]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SJMXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SJMXZ](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLX] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JXSE] [float] NULL,
	[F_XXSE] [float] NULL,
	[F_ZCSE] [float] NULL,
	[F_HC] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SJZZ]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SJZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SJZZ](
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__SJZZ__80BE2AD5A62F94ED] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SP]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SP](
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CBFF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MAXSL] [float] NULL,
	[F_MINSL] [float] NULL,
	[F_SLV] [float] NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_BZQ] [int] NULL,
	[F_ZJM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_SPSX1] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX2] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX3] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX4] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPSX5] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MAXJJ] [float] NULL,
	[F_MINJJ] [float] NULL,
	[F_RECENTJJ] [float] NULL,
	[F_GNZZ] [varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YF] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__SP__80BE2AD5B06A1637] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SP2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SP2](
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__SP2__6465D252B7803A86] PRIMARY KEY CLUSTERED 
(
	[F_BM] ASC,
	[F_SPBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SP3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SP3](
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__SP3__80BE2AD5A8AF2DA0] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SPDOWN]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPDOWN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SPDOWN](
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CBFF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_MAXSL] [float] NULL,
	[F_MINSL] [float] NULL,
	[F_SPGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLV] [float] NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BZQ] [int] NULL,
	[F_ZJM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BGY] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_DWCB] [float] NULL,
	[F_IFPH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
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
/****** Object:  Table [dbo].[SPLB]    Script Date: 2023/9/12 20:13:36 ******/
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
 CONSTRAINT [PK__SPLB__BB2BA813E70E9D24] PRIMARY KEY CLUSTERED 
(
	[F_LBBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SPPC]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPPC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SPPC](
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
 CONSTRAINT [PK__SPPC__AF54A8AAA6B3443C] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC,
	[F_PH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SPSHORT]    Script Date: 2023/9/12 20:13:36 ******/
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
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ2] [float] NULL,
	[F_CS] [int] NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__SPSHORT__EEA8DC0CF25FED94] PRIMARY KEY CLUSTERED 
(
	[F_BM] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SYZZ]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SYZZ](
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__SYZZ__8278C624F31DA9EA] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TEXTSOURCE]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TEXTSOURCE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TEXTSOURCE](
	[F_NAME] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SQL] [varchar](255) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK__TEXTSOUR__4A3EA6704A2E87E8] PRIMARY KEY CLUSTERED 
(
	[F_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TJD]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TJD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TJD](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__TJD__3C196CCD83FC6603] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TJD2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TJD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TJD2](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__TJD2__3C196CCD8A21AB11] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TJD3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TJD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TJD3](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__TJD3__3C196CCDF428A11D] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TJDDOWNLOAD]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TJDDOWNLOAD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TJDDOWNLOAD](
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DJH] [int] NOT NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__TJDDOWNL__EFAFA6333BA15D92] PRIMARY KEY CLUSTERED 
(
	[F_BM] ASC,
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TJDMX]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TJDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TJDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__TJDMX__FEDF803E50E45D89] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TJDMX2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TJDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TJDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__TJDMX2__FEDF803E17EFA6A6] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TJDMX3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TJDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TJDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__TJDMX3__FEDF803EA077345A] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TRANSPORT]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TRANSPORT]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TRANSPORT](
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TYPE] [varchar](4) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__TRANSPOR__B41CB054E038E5D2] PRIMARY KEY CLUSTERED 
(
	[F_BM] ASC,
	[F_TYPE] ASC,
	[F_ITEM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VEN_SP]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VEN_SP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VEN_SP](
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPGG] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ] [float] NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VEN_SP__B14B6E5FF93960F3] PRIMARY KEY CLUSTERED 
(
	[F_VENDOR] ASC,
	[F_SPBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VENDOR]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDOR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VENDOR](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
	[F_ZJM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__VENDOR__2C6EEFB6568C5D4C] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VENDOR3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDOR3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VENDOR3](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VENDOR3__2C6EEFB6C8BB0F91] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VENDORGROUP]    Script Date: 2023/9/12 20:13:36 ******/
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
/****** Object:  Table [dbo].[VENDORLB]    Script Date: 2023/9/12 20:13:36 ******/
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
 CONSTRAINT [PK__VENDORLB__2C6EEFB6B8505AC4] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VIP]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VIP](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZJM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__VIP__2C6EEFB6A26B88AD] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[VIP2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIP2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VIP2](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZJM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__VIP2__2C6EEFB674636D08] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[XHD]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XHD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XHD](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_DHDJH] [int] NULL,
 CONSTRAINT [PK__XHD__3C196CCD224F9F2C] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[XHD2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XHD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XHD2](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_DHDJH] [int] NULL,
 CONSTRAINT [PK__XHD2__3C196CCDEE072C32] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[XHD3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XHD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XHD3](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NOT NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SFZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH0] [int] NULL,
	[F_DHDJH] [int] NULL,
 CONSTRAINT [PK__XHD3__3C196CCDE8E53D5D] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[XHDMX]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XHDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XHDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
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
/****** Object:  Table [dbo].[XHDMX2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XHDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XHDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
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
/****** Object:  Table [dbo].[XHDMX3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XHDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XHDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
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
/****** Object:  Table [dbo].[XSBB]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XSBB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XSBB](
	[F_CAPTION] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SP] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TOP] [int] NULL,
	[F_LEFT] [int] NULL,
	[F_ROWS] [int] NULL,
	[F_SIZE] [int] NULL,
	[F_LENGTH] [int] NULL,
	[F_WIDTH] [int] NULL,
	[F_ORIENT] [int] NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPLB] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [smallint] NULL,
	[F_TITLEFONT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BBFONT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_COLNUMBER] [int] NULL,
	[F_COLCAPTION] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_COLWIDTH] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__XSBB__2C6E30FA99765207] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[XSLB]    Script Date: 2023/9/12 20:13:36 ******/
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
 CONSTRAINT [PK__XSLB__2C6EEFB683AB92EC] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[XSMXZ]    Script Date: 2023/9/12 20:13:36 ******/
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
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_CB] [float] NULL,
	[F_DJ] [float] NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SE] [float] NULL,
	[F_HC] [int] NULL,
	[F_CX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[XSZZ]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XSZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[XSZZ](
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__XSZZ__8278C6243DA791D4] PRIMARY KEY CLUSTERED 
(
	[F_SPBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YFHXZ]    Script Date: 2023/9/12 20:13:36 ******/
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
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JH] [float] NULL,
	[F_FK] [float] NULL,
	[F_HXJE] [float] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YFJSD2]    Script Date: 2023/9/12 20:13:36 ******/
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
	[F_CN] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSH] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSJE] [float] NULL,
	[F_BZ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YE] [float] NULL,
	[F_HXJE] [float] NULL,
 CONSTRAINT [PK__YFJSD2__3C196CCD53D7FFA1] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YFMXZ]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YFMXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YFMXZ](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLX] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SR] [float] NULL,
	[F_FC] [float] NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YE] [float] NULL,
	[F_HXJE] [float] NULL,
	[F_CX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YFZZ]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YFZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YFZZ](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__YFZZ__CEA80CB94E39DA2D] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC,
	[F_BM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YSHXZ]    Script Date: 2023/9/12 20:13:36 ******/
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
	[F_CUSTOM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XS] [float] NULL,
	[F_SK] [float] NULL,
	[F_HXJE] [float] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YSJSD2]    Script Date: 2023/9/12 20:13:36 ******/
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
	[F_CN] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSFS] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSH] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSJE] [float] NULL,
	[F_BZ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YE] [float] NULL,
	[F_HXJE] [float] NULL,
 CONSTRAINT [PK__YSJSD2__3C196CCD1F5634F5] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YSMXZ]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YSMXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YSMXZ](
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJLX] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DJH] [int] NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SR] [float] NULL,
	[F_FC] [float] NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YE] [float] NULL,
	[F_HXJE] [float] NULL,
	[F_CX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YSZZ]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YSZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YSZZ](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__YSZZ__CEA80CB9AD0CFC6A] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC,
	[F_BM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YWY]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YWY]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YWY](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DE] [float] NULL,
 CONSTRAINT [PK__YWY__2C6EEFB64C8245A9] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[YWY3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[YWY3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[YWY3](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__YWY3__2C6EEFB69CA39151] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZNPOWER]    Script Date: 2023/9/12 20:13:36 ******/
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
/****** Object:  Table [dbo].[ZNXX]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZNXX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZNXX](
	[F_DM] [varchar](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](12) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK__ZNXX__2C6EEFB62CA5F753] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZTCS]    Script Date: 2023/9/12 20:13:36 ******/
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
	[F_YC] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZZD]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZD]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZD](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW1] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW2] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SHL] [float] NULL,
	[F_DW1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_DJH0] [int] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__ZZD__3C196CCDA970C567] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZZD2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZD2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZD2](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW1] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW2] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SHL] [float] NULL,
	[F_DW1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_DJH0] [int] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__ZZD2__3C196CCDC86EAE51] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZZD3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZD3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZD3](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BM] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YWY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW1] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HW2] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPH] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZD] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SHL] [float] NULL,
	[F_DW1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_DJH0] [int] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPXZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__ZZD3__3C196CCD7164D1DC] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZZDMX]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZDMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZDMX](
	[F_DJH] [int] NOT NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_DJ] [float] NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLJC] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
 CONSTRAINT [PK__ZZDMX__FEDF803E683A3B5E] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZZDMX2]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZDMX2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZDMX2](
	[F_DJH] [int] NOT NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_DJ] [float] NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SLJC] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
 CONSTRAINT [PK__ZZDMX2__FEDF803ECBE265D2] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZZDMX3]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZDMX3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZDMX3](
	[F_DJH] [int] NOT NULL,
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_DJ] [float] NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_TM] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CD] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW2] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CS] [float] NULL,
	[F_PH] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DQ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
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
/****** Object:  Table [dbo].[ZZMB]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZMB]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZMB](
	[F_SPBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ZZMBMX]    Script Date: 2023/9/12 20:13:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZMBMX]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ZZMBMX](
	[F_SPBH1] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPBH2] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPMC] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DW] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SL] [float] NULL,
	[F_FIXED] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HC] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [KCMXZ_DATE]    Script Date: 2023/9/12 20:13:36 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[KCMXZ]') AND name = N'KCMXZ_DATE')
CREATE NONCLUSTERED INDEX [KCMXZ_DATE] ON [dbo].[KCMXZ]
(
	[F_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [KCMXZ_DJH]    Script Date: 2023/9/12 20:13:36 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[KCMXZ]') AND name = N'KCMXZ_DJH')
CREATE NONCLUSTERED INDEX [KCMXZ_DJH] ON [dbo].[KCMXZ]
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [SFZY_MC]    Script Date: 2023/9/12 20:13:36 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SFZY]') AND name = N'SFZY_MC')
CREATE NONCLUSTERED INDEX [SFZY_MC] ON [dbo].[SFZY]
(
	[F_MC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [SP_TM]    Script Date: 2023/9/12 20:13:36 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SP]') AND name = N'SP_TM')
CREATE NONCLUSTERED INDEX [SP_TM] ON [dbo].[SP]
(
	[F_TM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [SPMC]    Script Date: 2023/9/12 20:13:36 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SP]') AND name = N'SPMC')
CREATE NONCLUSTERED INDEX [SPMC] ON [dbo].[SP]
(
	[F_SPMC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ZJM]    Script Date: 2023/9/12 20:13:36 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SP]') AND name = N'ZJM')
CREATE NONCLUSTERED INDEX [ZJM] ON [dbo].[SP]
(
	[F_ZJM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [XSMXZ_DATE]    Script Date: 2023/9/12 20:13:36 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XSMXZ]') AND name = N'XSMXZ_DATE')
CREATE NONCLUSTERED INDEX [XSMXZ_DATE] ON [dbo].[XSMXZ]
(
	[F_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [XSMXZ_DJH]    Script Date: 2023/9/12 20:13:36 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[XSMXZ]') AND name = N'XSMXZ_DJH')
CREATE NONCLUSTERED INDEX [XSMXZ_DJH] ON [dbo].[XSMXZ]
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YFHXZ_DATE]    Script Date: 2023/9/12 20:13:36 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YFHXZ]') AND name = N'YFHXZ_DATE')
CREATE NONCLUSTERED INDEX [YFHXZ_DATE] ON [dbo].[YFHXZ]
(
	[F_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YFHXZ_DATESK]    Script Date: 2023/9/12 20:13:36 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YFHXZ]') AND name = N'YFHXZ_DATESK')
CREATE NONCLUSTERED INDEX [YFHXZ_DATESK] ON [dbo].[YFHXZ]
(
	[F_DATEFK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YFHXZ_DATEXS]    Script Date: 2023/9/12 20:13:36 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YFHXZ]') AND name = N'YFHXZ_DATEXS')
CREATE NONCLUSTERED INDEX [YFHXZ_DATEXS] ON [dbo].[YFHXZ]
(
	[F_DATEJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [YFHXZ_DJHFK]    Script Date: 2023/9/12 20:13:36 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YFHXZ]') AND name = N'YFHXZ_DJHFK')
CREATE NONCLUSTERED INDEX [YFHXZ_DJHFK] ON [dbo].[YFHXZ]
(
	[F_DJHFK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [YFHXZ_DJHJH]    Script Date: 2023/9/12 20:13:36 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YFHXZ]') AND name = N'YFHXZ_DJHJH')
CREATE NONCLUSTERED INDEX [YFHXZ_DJHJH] ON [dbo].[YFHXZ]
(
	[F_DJHJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YFHXZ_VENDOR]    Script Date: 2023/9/12 20:13:36 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YFHXZ]') AND name = N'YFHXZ_VENDOR')
CREATE NONCLUSTERED INDEX [YFHXZ_VENDOR] ON [dbo].[YFHXZ]
(
	[F_VENDOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YSHXZ_CUSTOM]    Script Date: 2023/9/12 20:13:36 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YSHXZ]') AND name = N'YSHXZ_CUSTOM')
CREATE NONCLUSTERED INDEX [YSHXZ_CUSTOM] ON [dbo].[YSHXZ]
(
	[F_CUSTOM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YSHXZ_DATE]    Script Date: 2023/9/12 20:13:36 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YSHXZ]') AND name = N'YSHXZ_DATE')
CREATE NONCLUSTERED INDEX [YSHXZ_DATE] ON [dbo].[YSHXZ]
(
	[F_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YSHXZ_DATESK]    Script Date: 2023/9/12 20:13:36 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YSHXZ]') AND name = N'YSHXZ_DATESK')
CREATE NONCLUSTERED INDEX [YSHXZ_DATESK] ON [dbo].[YSHXZ]
(
	[F_DATESK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YSHXZ_DATEXS]    Script Date: 2023/9/12 20:13:36 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YSHXZ]') AND name = N'YSHXZ_DATEXS')
CREATE NONCLUSTERED INDEX [YSHXZ_DATEXS] ON [dbo].[YSHXZ]
(
	[F_DATEXS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [YSHXZ_DJHSK]    Script Date: 2023/9/12 20:13:36 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YSHXZ]') AND name = N'YSHXZ_DJHSK')
CREATE NONCLUSTERED INDEX [YSHXZ_DJHSK] ON [dbo].[YSHXZ]
(
	[F_DJHSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [YSHXZ_DJHXS]    Script Date: 2023/9/12 20:13:36 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[YSHXZ]') AND name = N'YSHXZ_DJHXS')
CREATE NONCLUSTERED INDEX [YSHXZ_DJHXS] ON [dbo].[YSHXZ]
(
	[F_DJHXS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__BM__F_DE__4FBCC72F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BM] ADD  CONSTRAINT [DF__BM__F_DE__4FBCC72F]  DEFAULT ((0)) FOR [F_DE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGD__F_JS__51A50FA1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGD] ADD  CONSTRAINT [DF__CGD__F_JS__51A50FA1]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGD__F_FPXZ__529933DA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGD] ADD  CONSTRAINT [DF__CGD__F_FPXZ__529933DA]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGD2__F_JS__538D5813]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGD2] ADD  CONSTRAINT [DF__CGD2__F_JS__538D5813]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGD2__F_FPXZ__54817C4C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGD2] ADD  CONSTRAINT [DF__CGD2__F_FPXZ__54817C4C]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGD3__F_JS__5575A085]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGD3] ADD  CONSTRAINT [DF__CGD3__F_JS__5575A085]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGD3__F_FPXZ__5669C4BE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGD3] ADD  CONSTRAINT [DF__CGD3__F_FPXZ__5669C4BE]  DEFAULT ('') FOR [F_FPXZ]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__F_DJ1__5D16C24D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__F_DJ1__5D16C24D]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__F_DJ2__5E0AE686]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__F_DJ2__5E0AE686]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__F_SLJC__5EFF0ABF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__F_SLJC__5EFF0ABF]  DEFAULT ((0)) FOR [F_SLJC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__F_SL2__5FF32EF8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX] ADD  CONSTRAINT [DF__CGDMX__F_SL2__5FF32EF8]  DEFAULT ((0)) FOR [F_SL2]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__F_DJ1__66A02C87]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__F_DJ1__66A02C87]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__F_DJ2__679450C0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__F_DJ2__679450C0]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__F_SLJC__688874F9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__F_SLJC__688874F9]  DEFAULT ((0)) FOR [F_SLJC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__F_SL2__697C9932]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX2] ADD  CONSTRAINT [DF__CGDMX2__F_SL2__697C9932]  DEFAULT ((0)) FOR [F_SL2]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__F_DJ1__702996C1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__F_DJ1__702996C1]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__F_DJ2__711DBAFA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__F_DJ2__711DBAFA]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__F_SLJC__7211DF33]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__F_SLJC__7211DF33]  DEFAULT ((0)) FOR [F_SLJC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__F_SL2__7306036C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CGDMX3] ADD  CONSTRAINT [DF__CGDMX3__F_SL2__7306036C]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD__F_FPXZ__73FA27A5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKD] ADD  CONSTRAINT [DF__CKD__F_FPXZ__73FA27A5]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD__F_SL2__74EE4BDE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKD] ADD  CONSTRAINT [DF__CKD__F_SL2__74EE4BDE]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD2__F_FPXZ__75E27017]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKD2] ADD  CONSTRAINT [DF__CKD2__F_FPXZ__75E27017]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD2__F_SL2__76D69450]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKD2] ADD  CONSTRAINT [DF__CKD2__F_SL2__76D69450]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD3__F_FPXZ__77CAB889]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKD3] ADD  CONSTRAINT [DF__CKD3__F_FPXZ__77CAB889]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD3__F_SL2__78BEDCC2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKD3] ADD  CONSTRAINT [DF__CKD3__F_SL2__78BEDCC2]  DEFAULT ((0)) FOR [F_SL2]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX__F_SL2__7F6BDA51]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX] ADD  CONSTRAINT [DF__CKDMX__F_SL2__7F6BDA51]  DEFAULT ((0)) FOR [F_SL2]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX2__F_SL2__0618D7E0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX2] ADD  CONSTRAINT [DF__CKDMX2__F_SL2__0618D7E0]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX3__F_SL2__070CFC19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CKDMX3] ADD  CONSTRAINT [DF__CKDMX3__F_SL2__070CFC19]  DEFAULT ((0)) FOR [F_SL2]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX__F_SL2__286DEFE4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_SL2__286DEFE4]  DEFAULT ((0)) FOR [F_SL2]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX2__F_SL2__2E26C93A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_SL2__2E26C93A]  DEFAULT ((0)) FOR [F_SL2]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX__F_SL__5CE1B823]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX] ADD  CONSTRAINT [DF__DHDMX__F_SL__5CE1B823]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX__F_DJ__5DD5DC5C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX] ADD  CONSTRAINT [DF__DHDMX__F_DJ__5DD5DC5C]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX__F_KL__5ECA0095]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX] ADD  CONSTRAINT [DF__DHDMX__F_KL__5ECA0095]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX__F_JE__5FBE24CE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX] ADD  CONSTRAINT [DF__DHDMX__F_JE__5FBE24CE]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX__F_SLV__60B24907]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX] ADD  CONSTRAINT [DF__DHDMX__F_SLV__60B24907]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX__F_SE__61A66D40]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX] ADD  CONSTRAINT [DF__DHDMX__F_SE__61A66D40]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX__F_CB__629A9179]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX] ADD  CONSTRAINT [DF__DHDMX__F_CB__629A9179]  DEFAULT ((0)) FOR [F_CB]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX__F_HJ__638EB5B2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX] ADD  CONSTRAINT [DF__DHDMX__F_HJ__638EB5B2]  DEFAULT ((0)) FOR [F_HJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX__F_UN__6482D9EB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX] ADD  CONSTRAINT [DF__DHDMX__F_UN__6482D9EB]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX2__F_SL__6576FE24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX2] ADD  CONSTRAINT [DF__DHDMX2__F_SL__6576FE24]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX2__F_DJ__666B225D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX2] ADD  CONSTRAINT [DF__DHDMX2__F_DJ__666B225D]  DEFAULT ((0)) FOR [F_DJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX2__F_KL__675F4696]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX2] ADD  CONSTRAINT [DF__DHDMX2__F_KL__675F4696]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX2__F_JE__68536ACF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX2] ADD  CONSTRAINT [DF__DHDMX2__F_JE__68536ACF]  DEFAULT ((0)) FOR [F_JE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX2__F_SLV__69478F08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX2] ADD  CONSTRAINT [DF__DHDMX2__F_SLV__69478F08]  DEFAULT ((0)) FOR [F_SLV]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX2__F_SE__6A3BB341]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX2] ADD  CONSTRAINT [DF__DHDMX2__F_SE__6A3BB341]  DEFAULT ((0)) FOR [F_SE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX2__F_CB__6B2FD77A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX2] ADD  CONSTRAINT [DF__DHDMX2__F_CB__6B2FD77A]  DEFAULT ((0)) FOR [F_CB]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX2__F_HJ__6C23FBB3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DHDMX2] ADD  CONSTRAINT [DF__DHDMX2__F_HJ__6C23FBB3]  DEFAULT ((0)) FOR [F_HJ]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_NEWSP__70B3A6A6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_NEWSP__70B3A6A6]  DEFAULT ((0)) FOR [F_NEWSP]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_SP__7D197D8B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_SP__7D197D8B]  DEFAULT ((0)) FOR [F_SP]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ENEMYXX_F_DJ0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ENEMYXX] ADD  CONSTRAINT [DF_ENEMYXX_F_DJ0]  DEFAULT ((0)) FOR [F_DJ0]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__HW__F_LOCAL__7E42ABEE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[HW] ADD  CONSTRAINT [DF__HW__F_LOCAL__7E42ABEE]  DEFAULT ('') FOR [F_LOCAL]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHD__F_FPXZ__386F4D83]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHD] ADD  CONSTRAINT [DF__JHD__F_FPXZ__386F4D83]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHD2__F_JS__396371BC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHD2] ADD  CONSTRAINT [DF__JHD2__F_JS__396371BC]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHD2__F_FPXZ__3A5795F5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHD2] ADD  CONSTRAINT [DF__JHD2__F_FPXZ__3A5795F5]  DEFAULT ('') FOR [F_FPXZ]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_JHDMX_F_HSDJ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX] ADD  CONSTRAINT [DF_JHDMX_F_HSDJ]  DEFAULT ((0)) FOR [F_HSDJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__F_KL__7889D298]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX] ADD  CONSTRAINT [DF__JHDMX__F_KL__7889D298]  DEFAULT ((0)) FOR [F_KL]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_JHDMX2_F_HSDJ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX2] ADD  CONSTRAINT [DF_JHDMX2_F_HSDJ]  DEFAULT ((0)) FOR [F_HSDJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__F_KL__797DF6D1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX2] ADD  CONSTRAINT [DF__JHDMX2__F_KL__797DF6D1]  DEFAULT ((0)) FOR [F_KL]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_JHDMX3_F_HSDJ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX3] ADD  CONSTRAINT [DF_JHDMX3_F_HSDJ]  DEFAULT ((0)) FOR [F_HSDJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__F_KL__7A721B0A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JHDMX3] ADD  CONSTRAINT [DF__JHDMX3__F_KL__7A721B0A]  DEFAULT ((0)) FOR [F_KL]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX__F_DJ2__7D8E7ED7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX] ADD  CONSTRAINT [DF__PDDMX__F_DJ2__7D8E7ED7]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX2__F_DJ2__7E82A310]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX2] ADD  CONSTRAINT [DF__PDDMX2__F_DJ2__7E82A310]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX3__F_DJ2__7F76C749]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PDDMX3] ADD  CONSTRAINT [DF__PDDMX3__F_DJ2__7F76C749]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__POWERITEM__F_CLA__3DF31CAF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[POWERITEM] ADD  CONSTRAINT [DF__POWERITEM__F_CLA__3DF31CAF]  DEFAULT ('') FOR [F_CLASSNAME]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__F_SL__3B219CFC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__F_SL__3B219CFC]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__F_SL2__3C15C135]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__F_SL2__3C15C135]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__F_SLJC__3D09E56E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__F_SLJC__3D09E56E]  DEFAULT ((0)) FOR [F_SLJC]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__F_DJ1__3FE65219]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__F_DJ1__3FE65219]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__F_DJ2__40DA7652]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__F_DJ2__40DA7652]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__F_DJ3__41CE9A8B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__F_DJ3__41CE9A8B]  DEFAULT ((0)) FOR [F_DJ3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__F_DJ4__42C2BEC4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__F_DJ4__42C2BEC4]  DEFAULT ((0)) FOR [F_DJ4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__F_DJ5__43B6E2FD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX] ADD  CONSTRAINT [DF__QDDMX__F_DJ5__43B6E2FD]  DEFAULT ((0)) FOR [F_DJ5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__F_SL__46934FA8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__F_SL__46934FA8]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__F_SL2__478773E1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__F_SL2__478773E1]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__F_SLJC__487B981A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__F_SLJC__487B981A]  DEFAULT ((0)) FOR [F_SLJC]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__F_DJ1__4B5804C5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__F_DJ1__4B5804C5]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__F_DJ2__4C4C28FE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__F_DJ2__4C4C28FE]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__F_DJ3__4D404D37]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__F_DJ3__4D404D37]  DEFAULT ((0)) FOR [F_DJ3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__F_DJ4__4E347170]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__F_DJ4__4E347170]  DEFAULT ((0)) FOR [F_DJ4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__F_DJ5__4F2895A9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX2] ADD  CONSTRAINT [DF__QDDMX2__F_DJ5__4F2895A9]  DEFAULT ((0)) FOR [F_DJ5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__F_SL__52050254]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__F_SL__52050254]  DEFAULT ((0)) FOR [F_SL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__F_SL2__52F9268D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__F_SL2__52F9268D]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__F_SLJC__53ED4AC6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__F_SLJC__53ED4AC6]  DEFAULT ((0)) FOR [F_SLJC]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__F_DJ1__56C9B771]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__F_DJ1__56C9B771]  DEFAULT ((0)) FOR [F_DJ1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__F_DJ2__57BDDBAA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__F_DJ2__57BDDBAA]  DEFAULT ((0)) FOR [F_DJ2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__F_DJ3__58B1FFE3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__F_DJ3__58B1FFE3]  DEFAULT ((0)) FOR [F_DJ3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__F_DJ4__59A6241C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__F_DJ4__59A6241C]  DEFAULT ((0)) FOR [F_DJ4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__F_DJ5__5A9A4855]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[QDDMX3] ADD  CONSTRAINT [DF__QDDMX3__F_DJ5__5A9A4855]  DEFAULT ((0)) FOR [F_DJ5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD__F_FPXZ__6CAE0B98]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKD] ADD  CONSTRAINT [DF__RKD__F_FPXZ__6CAE0B98]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD__F_SL2__6DA22FD1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKD] ADD  CONSTRAINT [DF__RKD__F_SL2__6DA22FD1]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD2__F_FPXZ__6E96540A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKD2] ADD  CONSTRAINT [DF__RKD2__F_FPXZ__6E96540A]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD2__F_SL2__6F8A7843]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKD2] ADD  CONSTRAINT [DF__RKD2__F_SL2__6F8A7843]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD3__F_FPXZ__707E9C7C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKD3] ADD  CONSTRAINT [DF__RKD3__F_FPXZ__707E9C7C]  DEFAULT ('') FOR [F_FPXZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD3__F_SL2__7172C0B5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKD3] ADD  CONSTRAINT [DF__RKD3__F_SL2__7172C0B5]  DEFAULT ((0)) FOR [F_SL2]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__F_SL2__781FBE44]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_SL2__781FBE44]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__F_KL__7B663F43]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX] ADD  CONSTRAINT [DF__RKDMX__F_KL__7B663F43]  DEFAULT ((0)) FOR [F_KL]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX2__F_SL2__7CE47361]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX2] ADD  CONSTRAINT [DF__RKDMX2__F_SL2__7CE47361]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX2__F_KL__7C5A637C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX2] ADD  CONSTRAINT [DF__RKDMX2__F_KL__7C5A637C]  DEFAULT ((0)) FOR [F_KL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX3__F_SL2__7DD8979A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX3] ADD  CONSTRAINT [DF__RKDMX3__F_SL2__7DD8979A]  DEFAULT ((0)) FOR [F_SL2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX3__F_KL__7D4E87B5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[RKDMX3] ADD  CONSTRAINT [DF__RKDMX3__F_KL__7D4E87B5]  DEFAULT ((0)) FOR [F_KL]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SP_F_CS]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF_SP_F_CS]  DEFAULT ((1)) FOR [F_CS]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_DWCB__2B9F624A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_DWCB__2B9F624A]  DEFAULT ((0)) FOR [F_DWCB]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_MAXPC__2C938683]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_MAXPC__2C938683]  DEFAULT ((0)) FOR [F_MAXPC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_IFSJ__2D87AABC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_IFSJ__2D87AABC]  DEFAULT ('') FOR [F_IFSJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_RATE__2E7BCEF5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_RATE__2E7BCEF5]  DEFAULT ((0)) FOR [F_RATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_FUNCTION__2F6FF32E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_FUNCTION__2F6FF32E]  DEFAULT ('') FOR [F_FUNCTION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_UN1__30641767]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_UN1__30641767]  DEFAULT ((0)) FOR [F_UN1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_UN2__31583BA0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_UN2__31583BA0]  DEFAULT ((0)) FOR [F_UN2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_UN3__324C5FD9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_UN3__324C5FD9]  DEFAULT ((0)) FOR [F_UN3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_UN4__33408412]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_UN4__33408412]  DEFAULT ((0)) FOR [F_UN4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_UN5__3434A84B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_UN5__3434A84B]  DEFAULT ((0)) FOR [F_UN5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_MAXJJ__3528CC84]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_MAXJJ__3528CC84]  DEFAULT ((0)) FOR [F_MAXJJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_MINJJ__361CF0BD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_MINJJ__361CF0BD]  DEFAULT ((0)) FOR [F_MINJJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_RECENTJJ__371114F6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SP] ADD  CONSTRAINT [DF__SP__F_RECENTJJ__371114F6]  DEFAULT ((0)) FOR [F_RECENTJJ]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__F_MAXPC__409A7F30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_MAXPC__409A7F30]  DEFAULT ((0)) FOR [F_MAXPC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__F_IFSJ__418EA369]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_IFSJ__418EA369]  DEFAULT ('') FOR [F_IFSJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__F_RATE__4282C7A2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_RATE__4282C7A2]  DEFAULT ((0)) FOR [F_RATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__F_FUNCTI__4376EBDB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF__SPDOWN__F_FUNCTI__4376EBDB]  DEFAULT ('') FOR [F_FUNCTION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_F_UN1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_F_UN1]  DEFAULT ((0)) FOR [F_UN1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_F_UN2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_F_UN2]  DEFAULT ((0)) FOR [F_UN2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_F_UN3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_F_UN3]  DEFAULT ((0)) FOR [F_UN3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_F_UN4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_F_UN4]  DEFAULT ((0)) FOR [F_UN4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_F_UN5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_F_UN5]  DEFAULT ((0)) FOR [F_UN5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_F_MAXJJ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_F_MAXJJ]  DEFAULT ((0)) FOR [F_MAXJJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_F_MINJJ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_F_MINJJ]  DEFAULT ((0)) FOR [F_MINJJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_F_RECENTJJ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SPDOWN] ADD  CONSTRAINT [DF_SPDOWN_F_RECENTJJ]  DEFAULT ((0)) FOR [F_RECENTJJ]
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
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZMBMX__F_SPBH1__33DFA290]') AND parent_object_id = OBJECT_ID(N'[dbo].[ZZMBMX]'))
ALTER TABLE [dbo].[ZZMBMX]  WITH CHECK ADD  CONSTRAINT [FK__ZZMBMX__F_SPBH1__33DFA290] FOREIGN KEY([F_SPBH1])
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
