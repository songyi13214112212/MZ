USE [DATA]
GO
/****** Object:  Table [dbo].[ZZMBMX]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZMBMX]') AND type in (N'U'))
DROP TABLE [dbo].[ZZMBMX]
GO
/****** Object:  Table [dbo].[ZZMB]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZMB]') AND type in (N'U'))
DROP TABLE [dbo].[ZZMB]
GO
/****** Object:  Table [dbo].[ZZDMX3]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZDMX3]') AND type in (N'U'))
DROP TABLE [dbo].[ZZDMX3]
GO
/****** Object:  Table [dbo].[ZZDMX2]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZDMX2]') AND type in (N'U'))
DROP TABLE [dbo].[ZZDMX2]
GO
/****** Object:  Table [dbo].[ZZDMX]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZDMX]') AND type in (N'U'))
DROP TABLE [dbo].[ZZDMX]
GO
/****** Object:  Table [dbo].[ZZD3]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZD3]') AND type in (N'U'))
DROP TABLE [dbo].[ZZD3]
GO
/****** Object:  Table [dbo].[ZZD2]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZD2]') AND type in (N'U'))
DROP TABLE [dbo].[ZZD2]
GO
/****** Object:  Table [dbo].[ZZD]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZZD]') AND type in (N'U'))
DROP TABLE [dbo].[ZZD]
GO
/****** Object:  Table [dbo].[ZTCS]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ZTCS]') AND type in (N'U'))
DROP TABLE [dbo].[ZTCS]
GO
/****** Object:  Table [dbo].[XSZZ]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XSZZ]') AND type in (N'U'))
DROP TABLE [dbo].[XSZZ]
GO
/****** Object:  Table [dbo].[XSMXZ]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XSMXZ]') AND type in (N'U'))
DROP TABLE [dbo].[XSMXZ]
GO
/****** Object:  Table [dbo].[XSLB]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XSLB]') AND type in (N'U'))
DROP TABLE [dbo].[XSLB]
GO
/****** Object:  Table [dbo].[VIP2]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIP2]') AND type in (N'U'))
DROP TABLE [dbo].[VIP2]
GO
/****** Object:  Table [dbo].[VIP]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VIP]') AND type in (N'U'))
DROP TABLE [dbo].[VIP]
GO
/****** Object:  Table [dbo].[VENDORLB]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDORLB]') AND type in (N'U'))
DROP TABLE [dbo].[VENDORLB]
GO
/****** Object:  Table [dbo].[VENDOR]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDOR]') AND type in (N'U'))
DROP TABLE [dbo].[VENDOR]
GO
/****** Object:  Table [dbo].[VEN_SP]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VEN_SP]') AND type in (N'U'))
DROP TABLE [dbo].[VEN_SP]
GO
/****** Object:  Table [dbo].[SYZZ]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYZZ]') AND type in (N'U'))
DROP TABLE [dbo].[SYZZ]
GO
/****** Object:  Table [dbo].[SPPC]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPPC]') AND type in (N'U'))
DROP TABLE [dbo].[SPPC]
GO
/****** Object:  Table [dbo].[SPLB]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SPLB]') AND type in (N'U'))
DROP TABLE [dbo].[SPLB]
GO
/****** Object:  Table [dbo].[SP3]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP3]') AND type in (N'U'))
DROP TABLE [dbo].[SP3]
GO
/****** Object:  Table [dbo].[SP2]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP2]') AND type in (N'U'))
DROP TABLE [dbo].[SP2]
GO
/****** Object:  Table [dbo].[DRUG]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DRUG]') AND type in (N'U'))
DROP TABLE [dbo].[DRUG]
GO
/****** Object:  Table [dbo].[SJZZ]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SJZZ]') AND type in (N'U'))
DROP TABLE [dbo].[SJZZ]
GO
/****** Object:  Table [dbo].[SJMXZ]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SJMXZ]') AND type in (N'U'))
DROP TABLE [dbo].[SJMXZ]
GO
/****** Object:  Table [dbo].[SFZY]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SFZY]') AND type in (N'U'))
DROP TABLE [dbo].[SFZY]
GO
/****** Object:  Table [dbo].[PDDMX3]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDDMX3]') AND type in (N'U'))
DROP TABLE [dbo].[PDDMX3]
GO
/****** Object:  Table [dbo].[PDDMX2]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDDMX2]') AND type in (N'U'))
DROP TABLE [dbo].[PDDMX2]
GO
/****** Object:  Table [dbo].[PDDMX]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDDMX]') AND type in (N'U'))
DROP TABLE [dbo].[PDDMX]
GO
/****** Object:  Table [dbo].[PDD3]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDD3]') AND type in (N'U'))
DROP TABLE [dbo].[PDD3]
GO
/****** Object:  Table [dbo].[PDD2]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDD2]') AND type in (N'U'))
DROP TABLE [dbo].[PDD2]
GO
/****** Object:  Table [dbo].[PDD]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PDD]') AND type in (N'U'))
DROP TABLE [dbo].[PDD]
GO
/****** Object:  Table [dbo].[PATIENT]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PATIENT]') AND type in (N'U'))
DROP TABLE [dbo].[PATIENT]
GO
/****** Object:  Table [dbo].[OPERATOR]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OPERATOR]') AND type in (N'U'))
DROP TABLE [dbo].[OPERATOR]
GO
/****** Object:  Table [dbo].[KJQJ]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KJQJ]') AND type in (N'U'))
DROP TABLE [dbo].[KJQJ]
GO
/****** Object:  Table [dbo].[KCZZ]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KCZZ]') AND type in (N'U'))
DROP TABLE [dbo].[KCZZ]
GO
/****** Object:  Table [dbo].[KCYE]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KCYE]') AND type in (N'U'))
DROP TABLE [dbo].[KCYE]
GO
/****** Object:  Table [dbo].[KCMXZ]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KCMXZ]') AND type in (N'U'))
DROP TABLE [dbo].[KCMXZ]
GO
/****** Object:  Table [dbo].[JSFS]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JSFS]') AND type in (N'U'))
DROP TABLE [dbo].[JSFS]
GO
/****** Object:  Table [dbo].[JHZZ]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JHZZ]') AND type in (N'U'))
DROP TABLE [dbo].[JHZZ]
GO
/****** Object:  Table [dbo].[JGZZ]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JGZZ]') AND type in (N'U'))
DROP TABLE [dbo].[JGZZ]
GO
/****** Object:  Table [dbo].[HW]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HW]') AND type in (N'U'))
DROP TABLE [dbo].[HW]
GO
/****** Object:  Table [dbo].[ENV]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ENV]') AND type in (N'U'))
DROP TABLE [dbo].[ENV]
GO
/****** Object:  Table [dbo].[DOCTOR]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOCTOR]') AND type in (N'U'))
DROP TABLE [dbo].[DOCTOR]
GO
/****** Object:  Table [dbo].[DJH]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DJH]') AND type in (N'U'))
DROP TABLE [dbo].[DJH]
GO
/****** Object:  Table [dbo].[DEPART]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DEPART]') AND type in (N'U'))
DROP TABLE [dbo].[DEPART]
GO
/****** Object:  Table [dbo].[DBZZ]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBZZ]') AND type in (N'U'))
DROP TABLE [dbo].[DBZZ]
GO
/****** Object:  Table [dbo].[DBDMX3]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBDMX3]') AND type in (N'U'))
DROP TABLE [dbo].[DBDMX3]
GO
/****** Object:  Table [dbo].[DBDMX2]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBDMX2]') AND type in (N'U'))
DROP TABLE [dbo].[DBDMX2]
GO
/****** Object:  Table [dbo].[DBDMX]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBDMX]') AND type in (N'U'))
DROP TABLE [dbo].[DBDMX]
GO
/****** Object:  Table [dbo].[DBD3]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBD3]') AND type in (N'U'))
DROP TABLE [dbo].[DBD3]
GO
/****** Object:  Table [dbo].[DBD2]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBD2]') AND type in (N'U'))
DROP TABLE [dbo].[DBD2]
GO
/****** Object:  Table [dbo].[DBD]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBD]') AND type in (N'U'))
DROP TABLE [dbo].[DBD]
GO
/****** Object:  Table [dbo].[CUSTOMLB]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMLB]') AND type in (N'U'))
DROP TABLE [dbo].[CUSTOMLB]
GO
/****** Object:  Table [dbo].[CUSTOMGROUP]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMGROUP]') AND type in (N'U'))
DROP TABLE [dbo].[CUSTOMGROUP]
GO
/****** Object:  Table [dbo].[CUSTOMGRADE]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMGRADE]') AND type in (N'U'))
DROP TABLE [dbo].[CUSTOMGRADE]
GO
/****** Object:  Table [dbo].[CUSTOMDJ]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUSTOMDJ]') AND type in (N'U'))
DROP TABLE [dbo].[CUSTOMDJ]
GO
/****** Object:  Table [dbo].[CUS_SP]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CUS_SP]') AND type in (N'U'))
DROP TABLE [dbo].[CUS_SP]
GO
/****** Object:  Table [dbo].[CRKDMX3]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CRKDMX3]') AND type in (N'U'))
DROP TABLE [dbo].[CRKDMX3]
GO
/****** Object:  Table [dbo].[CRKDMX2]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CRKDMX2]') AND type in (N'U'))
DROP TABLE [dbo].[CRKDMX2]
GO
/****** Object:  Table [dbo].[CRKDMX1]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CRKDMX1]') AND type in (N'U'))
DROP TABLE [dbo].[CRKDMX1]
GO
/****** Object:  Table [dbo].[CRKD3]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CRKD3]') AND type in (N'U'))
DROP TABLE [dbo].[CRKD3]
GO
/****** Object:  Table [dbo].[CRKD2]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CRKD2]') AND type in (N'U'))
DROP TABLE [dbo].[CRKD2]
GO
/****** Object:  Table [dbo].[CRKD1]    Script Date: 2023/5/5 11:59:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CRKD1]') AND type in (N'U'))
DROP TABLE [dbo].[CRKD1]
GO
/****** Object:  Table [dbo].[CRKD1]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CRKD1](
	[F_DATE] [varchar](30) NOT NULL,
	[F_DJH] [int] NOT NULL,
	[F_PATIENT] [varchar](30) NULL,
	[F_VENDOR] [varchar](30) NULL,
	[F_FPH] [varchar](30) NULL,
	[F_DEPART] [varchar](30) NULL,
	[F_DOCTOR] [varchar](30) NULL,
	[F_HW] [varchar](30) NULL,
	[F_SFZY] [varchar](100) NULL,
	[F_JSFS] [varchar](30) NULL,
	[F_FPXZ] [varchar](30) NULL,
	[F_FPLX] [varchar](30) NULL,
	[F_ZD] [varchar](30) NULL,
	[F_DJLB] [varchar](10) NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](max) NULL,
	[F_SL2] [float] NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](30) NULL,
	[F_XSLB] [varchar](30) NULL,
	[F_HZ] [varchar](30) NULL,
	[F_DHDJH] [int] NULL,
	[F_TJ] [varchar](1) NULL,
 CONSTRAINT [PK_C43B3D56-DAF1-40D5-8E2D-5ABD89EADEC7] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CRKD2]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CRKD2](
	[F_DATE] [varchar](30) NOT NULL,
	[F_DJH] [int] NOT NULL,
	[F_PATIENT] [varchar](30) NULL,
	[F_VENDOR] [varchar](30) NULL,
	[F_FPH] [varchar](30) NULL,
	[F_DEPART] [varchar](30) NULL,
	[F_DOCTOR] [varchar](30) NULL,
	[F_HW] [varchar](30) NULL,
	[F_SFZY] [varchar](100) NULL,
	[F_JSFS] [varchar](30) NULL,
	[F_FPXZ] [varchar](30) NULL,
	[F_FPLX] [varchar](30) NULL,
	[F_ZD] [varchar](30) NULL,
	[F_DJLB] [varchar](10) NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](max) NULL,
	[F_SL2] [float] NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](30) NULL,
	[F_XSLB] [varchar](30) NULL,
	[F_HZ] [varchar](30) NULL,
	[F_DHDJH] [int] NULL,
	[F_TJ] [varchar](1) NULL,
 CONSTRAINT [PK_E7C09A7C-2843-46B1-B5F3-4F2432FF29D7] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CRKD3]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CRKD3](
	[F_DATE] [varchar](30) NOT NULL,
	[F_DJH] [int] NOT NULL,
	[F_PATIENT] [varchar](30) NULL,
	[F_VENDOR] [varchar](30) NULL,
	[F_FPH] [varchar](30) NULL,
	[F_DEPART] [varchar](30) NULL,
	[F_DOCTOR] [varchar](30) NULL,
	[F_HW] [varchar](30) NULL,
	[F_SFZY] [varchar](100) NULL,
	[F_JSFS] [varchar](30) NULL,
	[F_FPXZ] [varchar](30) NULL,
	[F_FPLX] [varchar](30) NULL,
	[F_ZD] [varchar](30) NULL,
	[F_DJLB] [varchar](10) NULL,
	[F_DJH0] [int] NULL,
	[F_MEMO] [varchar](max) NULL,
	[F_SL2] [float] NULL,
	[F_JS] [float] NULL,
	[F_JSH] [varchar](30) NULL,
	[F_XSLB] [varchar](30) NULL,
	[F_HZ] [varchar](30) NULL,
	[F_DHDJH] [int] NULL,
	[F_TJ] [varchar](1) NULL,
 CONSTRAINT [PK_EBEBA589-4836-43B7-977D-2E3955CE0CA9] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CRKDMX1]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CRKDMX1](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_GROUP] [int] NULL,
	[F_TM] [varchar](20) NULL,
	[F_DRUGBH] [varchar](30) NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_DW] [varchar](6) NULL,
	[F_PH] [varchar](40) NULL,
	[F_DQ] [varchar](40) NULL,
	[F_ISCB] [varchar](1) NULL,
	[F_UC] [varchar](200) NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_SL2] [float] NULL,
	[F_KL] [int] NULL,
	[F_CB] [float] NULL,
	[F_HJ] [float] NULL,
	[F_FPH] [varchar](30) NULL,
	[F_ZF] [varchar](1) NULL,
	[F_DWCB] [float] NULL,
	[F_RATE] [float] NULL,
	[F_PC] [int] NULL,
	[F_HSDJ] [float] NULL,
	[F_YLF] [float] NULL,
	[F_JGF] [float] NULL,
 CONSTRAINT [PK_806D1B90-8160-4B33-8DDE-E09470FA3ED0] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CRKDMX2]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CRKDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_GROUP] [int] NULL,
	[F_TM] [varchar](20) NULL,
	[F_DRUGBH] [varchar](30) NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_DW] [varchar](6) NULL,
	[F_PH] [varchar](40) NULL,
	[F_DQ] [varchar](40) NULL,
	[F_ISCB] [varchar](1) NULL,
	[F_UC] [varchar](200) NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_SL2] [float] NULL,
	[F_KL] [int] NULL,
	[F_CB] [float] NULL,
	[F_HJ] [float] NULL,
	[F_FPH] [varchar](30) NULL,
	[F_ZF] [varchar](1) NULL,
	[F_DWCB] [float] NULL,
	[F_RATE] [float] NULL,
	[F_PC] [int] NULL,
	[F_HSDJ] [float] NULL,
	[F_YLF] [float] NULL,
	[F_JGF] [float] NULL,
 CONSTRAINT [PK_A2AF89C3-9895-4B33-862B-9FD6634106B1] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CRKDMX3]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CRKDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_GROUP] [int] NULL,
	[F_TM] [varchar](20) NULL,
	[F_DRUGBH] [varchar](30) NULL,
	[F_SL] [float] NULL,
	[F_DJ] [float] NULL,
	[F_JE] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SE] [float] NULL,
	[F_DW] [varchar](6) NULL,
	[F_PH] [varchar](40) NULL,
	[F_DQ] [varchar](40) NULL,
	[F_ISCB] [varchar](1) NULL,
	[F_UC] [varchar](200) NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_SLJC] [float] NULL,
	[F_SL2] [float] NULL,
	[F_KL] [int] NULL,
	[F_CB] [float] NULL,
	[F_HJ] [float] NULL,
	[F_FPH] [varchar](30) NULL,
	[F_ZF] [varchar](1) NULL,
	[F_DWCB] [float] NULL,
	[F_RATE] [float] NULL,
	[F_PC] [int] NULL,
	[F_HSDJ] [float] NULL,
	[F_YLF] [float] NULL,
	[F_JGF] [float] NULL,
 CONSTRAINT [PK_806D1B90-8160-4B33-8DDE-E09470FA3ED2] PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUS_SP]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUS_SP](
	[F_PATIENT] [varchar](30) NOT NULL,
	[F_DRUGBH] [varchar](30) NOT NULL,
	[F_MINDJ] [float] NULL,
	[F_MAXDJ] [float] NULL,
	[F_RECENTDJ] [float] NULL,
	[F_DATE] [varchar](30) NULL,
	[F_DJH] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_PATIENT] ASC,
	[F_DRUGBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUSTOMDJ]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMDJ](
	[F_DJLX] [varchar](30) NOT NULL,
	[F_INDEX] [int] NOT NULL,
	[F_FIELD] [varchar](40) NULL,
	[F_DISPLAYLABEL] [varchar](100) NULL,
	[F_CAPTION] [varchar](40) NULL,
	[F_WIDTH] [int] NULL,
	[F_READONLY] [varchar](5) NULL,
	[F_VISIBLE] [varchar](5) NULL,
	[F_PANEL] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DJLX] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUSTOMGRADE]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMGRADE](
	[F_DM] [varchar](30) NOT NULL,
	[F_CUSTOMGRADEMC] [varchar](50) NOT NULL,
	[F_KL] [int] NULL,
	[F_PRICENUMBER] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUSTOMGROUP]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMGROUP](
	[F_DM] [varchar](30) NOT NULL,
	[F_CUSTOMGROUPMC] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUSTOMLB]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMLB](
	[F_DM] [varchar](30) NOT NULL,
	[F_CUSTOMLBMC] [varchar](50) NOT NULL,
	[F_JC] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DBD]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBD](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](30) NULL,
	[F_DOCTOR] [varchar](30) NULL,
	[F_ZD] [varchar](30) NULL,
	[F_HW1] [varchar](30) NULL,
	[F_HW2] [varchar](30) NULL,
	[F_FPH] [varchar](30) NULL,
	[F_TJ] [varchar](1) NULL,
	[F_DJH0] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DBD2]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBD2](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](30) NULL,
	[F_DOCTOR] [varchar](30) NULL,
	[F_ZD] [varchar](30) NULL,
	[F_HW1] [varchar](30) NULL,
	[F_HW2] [varchar](30) NULL,
	[F_FPH] [varchar](30) NULL,
	[F_TJ] [varchar](1) NULL,
	[F_DJH0] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DBD3]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBD3](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](30) NULL,
	[F_DOCTOR] [varchar](30) NULL,
	[F_ZD] [varchar](30) NULL,
	[F_HW1] [varchar](30) NULL,
	[F_HW2] [varchar](30) NULL,
	[F_FPH] [varchar](30) NULL,
	[F_TJ] [varchar](1) NULL,
	[F_DJH0] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DBDMX]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](20) NULL,
	[F_DRUGBH] [varchar](30) NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_DW] [varchar](6) NULL,
	[F_PH] [varchar](40) NULL,
	[F_DQ] [varchar](40) NULL,
	[F_SLJC] [float] NULL,
	[F_DJ] [float] NULL,
	[F_ISCB] [varchar](1) NULL,
	[F_UC] [varchar](200) NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_SL2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DBDMX2]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](20) NULL,
	[F_DRUGBH] [varchar](30) NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_DW] [varchar](6) NULL,
	[F_PH] [varchar](40) NULL,
	[F_DQ] [varchar](40) NULL,
	[F_SLJC] [float] NULL,
	[F_DJ] [float] NULL,
	[F_ISCB] [varchar](1) NULL,
	[F_UC] [varchar](200) NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_SL2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DBDMX3]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_TM] [varchar](20) NULL,
	[F_DRUGBH] [varchar](30) NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_DW] [varchar](6) NULL,
	[F_PH] [varchar](40) NULL,
	[F_DQ] [varchar](40) NULL,
	[F_SLJC] [float] NULL,
	[F_DJ] [float] NULL,
	[F_ISCB] [varchar](1) NULL,
	[F_UC] [varchar](200) NULL,
	[F_UN] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_SL2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DBZZ]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBZZ](
	[F_DRUGBH] [varchar](30) NOT NULL,
	[F_HW] [varchar](30) NOT NULL,
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
PRIMARY KEY CLUSTERED 
(
	[F_DRUGBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEPART]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPART](
	[F_DM] [varchar](30) NOT NULL,
	[F_DEPARTMC] [varchar](50) NOT NULL,
	[F_DE] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DJH]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DJH](
	[F_JHD] [int] NULL,
	[F_XHD] [int] NULL,
	[F_CGD] [int] NULL,
	[F_RKD] [int] NULL,
	[F_CKD] [int] NULL,
	[F_DBD] [int] NULL,
	[F_ZZD] [int] NULL,
	[F_TJD] [int] NULL,
	[F_PSD] [int] NULL,
	[F_DHD] [int] NULL,
	[F_QDD] [int] NULL,
	[F_PDD] [int] NULL,
	[F_RECIPE] [int] NULL,
	[F_RETAIL] [int] NULL,
	[F_XSBB] [int] NULL,
	[F_PC] [int] NULL,
	[F_JIEZ] [int] NULL,
	[F_YSQC] [varchar](1) NULL,
	[F_YFQC] [varchar](1) NULL,
	[F_YSJSD] [int] NULL,
	[F_YFJSD] [int] NULL,
	[F_NEWSP] [int] NULL,
	[F_ENEMY] [int] NULL,
	[F_SP] [int] NULL,
	[F_CX] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCTOR]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCTOR](
	[F_DM] [varchar](30) NOT NULL,
	[F_DOCTORMC] [varchar](50) NOT NULL,
	[F_DEPART] [varchar](30) NOT NULL,
	[F_DE] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ENV]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENV](
	[F_BH] [varchar](30) NOT NULL,
	[F_ENVMC] [varchar](50) NULL,
	[F_DATA] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HW]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HW](
	[F_DM] [varchar](30) NOT NULL,
	[F_HWMC] [varchar](50) NOT NULL,
	[F_LOCAL] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JGZZ]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JGZZ](
	[F_DRUGBH] [varchar](30) NOT NULL,
	[F_HW] [varchar](30) NOT NULL,
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
PRIMARY KEY CLUSTERED 
(
	[F_DRUGBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JHZZ]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JHZZ](
	[F_DRUGBH] [varchar](30) NOT NULL,
	[F_HW] [varchar](30) NOT NULL,
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
PRIMARY KEY CLUSTERED 
(
	[F_DRUGBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JSFS]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JSFS](
	[F_DM] [varchar](30) NOT NULL,
	[F_JSFSMC] [varchar](10) NOT NULL,
	[F_JC] [varchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KCMXZ]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KCMXZ](
	[F_DATE] [varchar](30) NULL,
	[F_DJH] [int] NOT NULL,
	[F_ZY] [varchar](100) NULL,
	[F_SLS] [float] NULL,
	[F_JES] [float] NULL,
	[F_SLF] [float] NULL,
	[F_JEF] [float] NULL,
	[F_HW] [varchar](30) NOT NULL,
	[F_DRUGBH] [varchar](30) NULL,
	[F_DJLX] [varchar](30) NULL,
	[F_HC] [int] NULL,
	[F_CX] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KCYE]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KCYE](
	[F_DRUGBH] [varchar](30) NOT NULL,
	[F_HW] [varchar](30) NOT NULL,
	[F_SLYE] [float] NULL,
	[F_SLCB] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DRUGBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KCZZ]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KCZZ](
	[F_DRUGBH] [varchar](30) NOT NULL,
	[F_HW] [varchar](30) NOT NULL,
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
PRIMARY KEY CLUSTERED 
(
	[F_DRUGBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KJQJ]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KJQJ](
	[F_YF] [int] NOT NULL,
	[F_START] [varchar](10) NULL,
	[F_END] [varchar](10) NULL,
	[F_JZ] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_YF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OPERATOR]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OPERATOR](
	[F_BH] [varchar](30) NOT NULL,
	[F_NAME] [varchar](50) NOT NULL,
	[F_PASSWORD] [varchar](20) NULL,
	[F_DEPART] [varchar](30) NULL,
	[F_ZN] [varchar](30) NULL,
	[F_RED] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PATIENT]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PATIENT](
	[F_DM] [varchar](30) NOT NULL,
	[F_PATIENTMC] [varchar](80) NULL,
	[F_IDCARD] [varchar](20) NULL,
	[F_TEL] [varchar](100) NULL,
	[F_GENDER] [varchar](2) NULL,
	[F_BIRTHDAY] [varchar](20) NULL,
	[F_AGE] [float] NULL,
	[F_MEDICALHISTORY] [varchar](100) NULL,
	[F_HISTORYALLERGY] [varchar](100) NULL,
	[F_YBLB] [varchar](20) NULL,
	[F_YBK] [varchar](20) NULL,
	[F_GROUP] [varchar](10) NULL,
	[F_ZJM] [varchar](40) NULL,
	[F_LJCS] [float] NULL,
	[F_LJXF] [float] NULL,
	[F_UN1] [float] NULL,
	[F_UN2] [float] NULL,
	[F_UN3] [float] NULL,
	[F_J1] [float] NULL,
	[F_J2] [float] NULL,
	[F_J3] [float] NULL,
	[F_J4] [float] NULL,
	[F_J5] [float] NULL,
	[F_J6] [float] NULL,
	[F_J7] [float] NULL,
	[F_J8] [float] NULL,
	[F_J9] [float] NULL,
	[F_J10] [float] NULL,
	[F_J11] [float] NULL,
	[F_J12] [float] NULL,
	[F_D1] [float] NULL,
	[F_D2] [float] NULL,
	[F_D3] [float] NULL,
	[F_D4] [float] NULL,
	[F_D5] [float] NULL,
	[F_D6] [float] NULL,
	[F_D7] [float] NULL,
	[F_D8] [float] NULL,
	[F_D9] [float] NULL,
	[F_D10] [float] NULL,
	[F_D11] [float] NULL,
	[F_D12] [float] NULL,
	[F_QCYE] [float] NULL,
	[F_QMYE] [float] NULL,
	[F_SXED] [float] NULL,
	[F_LB1] [varchar](10) NULL,
	[F_LB2] [varchar](10) NULL,
	[F_LB3] [varchar](10) NULL,
	[F_LB4] [varchar](10) NULL,
	[F_LB5] [varchar](10) NULL,
	[F_UC1] [varchar](200) NULL,
	[F_UC2] [varchar](200) NULL,
	[F_UC3] [varchar](200) NULL,
	[F_UC4] [varchar](200) NULL,
	[F_UC5] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PDD]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDD](
	[F_DJH] [int] NOT NULL,
	[F_HW] [varchar](30) NULL,
	[F_DATE] [varchar](30) NULL,
	[F_ZD] [varchar](30) NULL,
	[F_BGY] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PDD2]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDD2](
	[F_DJH] [int] NOT NULL,
	[F_HW] [varchar](30) NULL,
	[F_DATE] [varchar](30) NULL,
	[F_ZD] [varchar](30) NULL,
	[F_BGY] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PDD3]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDD3](
	[F_DJH] [int] NOT NULL,
	[F_HW] [varchar](30) NULL,
	[F_DATE] [varchar](30) NULL,
	[F_ZD] [varchar](30) NULL,
	[F_BGY] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PDDMX]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDDMX](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_DRUGBH] [varchar](30) NULL,
	[F_PC] [int] NULL,
	[F_PH] [varchar](40) NULL,
	[F_DQ] [varchar](40) NULL,
	[F_SLYE] [float] NULL,
	[F_PDSL] [float] NULL,
	[F_PYSL] [float] NULL,
	[F_TJ] [varchar](1) NULL,
	[F_DJ2] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PDDMX2]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDDMX2](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_DRUGBH] [varchar](30) NULL,
	[F_PC] [int] NULL,
	[F_PH] [varchar](40) NULL,
	[F_DQ] [varchar](40) NULL,
	[F_SLYE] [float] NULL,
	[F_PDSL] [float] NULL,
	[F_PYSL] [float] NULL,
	[F_TJ] [varchar](1) NULL,
	[F_DJ2] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PDDMX3]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PDDMX3](
	[F_DJH] [int] NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_DRUGBH] [varchar](30) NULL,
	[F_PC] [int] NULL,
	[F_PH] [varchar](40) NULL,
	[F_DQ] [varchar](40) NULL,
	[F_SLYE] [float] NULL,
	[F_PDSL] [float] NULL,
	[F_PYSL] [float] NULL,
	[F_TJ] [varchar](1) NULL,
	[F_DJ2] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SFZY]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SFZY](
	[F_DM] [varchar](30) NOT NULL,
	[F_SFZYMC] [varchar](100) NOT NULL,
	[F_SF] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SJMXZ]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SJMXZ](
	[F_DATE] [varchar](30) NULL,
	[F_DJLX] [varchar](30) NULL,
	[F_DJH] [int] NULL,
	[F_DRUGBH] [varchar](30) NULL,
	[F_ZY] [varchar](100) NULL,
	[F_JXSE] [float] NULL,
	[F_XXSE] [float] NULL,
	[F_ZCSE] [float] NULL,
	[F_HC] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SJZZ]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SJZZ](
	[F_DRUGBH] [varchar](30) NOT NULL,
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
PRIMARY KEY CLUSTERED 
(
	[F_DRUGBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DRUG]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DRUG](
	[F_TM] [varchar](20) NULL,
	[F_DRUGBH] [varchar](30) NOT NULL,
	[F_DRUGMC] [varchar](50) NOT NULL,
	[F_DRUGGG] [varchar](20) NULL,
	[F_DRUGCD] [varchar](20) NULL,
	[F_DW] [varchar](6) NULL,
	[F_DW2] [varchar](6) NULL,
	[F_SYDW] [varchar](6) NULL,
	[F_ZJM] [varchar](50) NULL,
	[F_BGY] [varchar](30) NULL,
	[F_GYTJ] [varchar](50) NULL,
	[F_GYPC] [varchar](50) NULL,
	[F_JX] [varchar](10) NULL,
	[F_ISO] [varchar](50) NULL,
	[F_GMP] [varchar](50) NULL,
	[F_PZWH] [varchar](50) NULL,
	[F_ZCSB] [varchar](50) NULL,
	[F_LB1] [varchar](20) NULL,
	[F_LB2] [varchar](20) NULL,
	[F_LB3] [varchar](20) NULL,
	[F_LB4] [varchar](20) NULL,
	[F_LB5] [varchar](20) NULL,
	[F_LB6] [varchar](20) NULL,
	[F_LB7] [varchar](20) NULL,
	[F_LB8] [varchar](20) NULL,
	[F_LB9] [varchar](20) NULL,
	[F_LB10] [varchar](20) NULL,
	[F_MAXPC] [int] NULL,
	[F_BZQ] [int] NULL,
	[F_IFSJ] [varchar](1) NULL,
	[F_PHCB] [varchar](1) NULL,
	[F_IFPH] [varchar](1) NULL,
	[F_CBFF] [varchar](1) NULL,
	[F_IFKC] [varchar](1) NULL,
	[F_IFPS] [varchar](1) NULL,
	[F_IFZK] [varchar](1) NULL,
	[F_SX1] [varchar](1) NULL,
	[F_SX2] [varchar](1) NULL,
	[F_SX3] [varchar](1) NULL,
	[F_SX4] [varchar](1) NULL,
	[F_SX5] [varchar](1) NULL,
	[F_GNZZ] [varchar](max) NULL,
	[F_YF] [varchar](max) NULL,
	[F_FUNCTION] [varchar](max) NULL,
	[F_SPBM] [varchar](max) NULL,
	[F_RATE] [float] NULL,
	[F_MAXJJ] [float] NULL,
	[F_MINJJ] [float] NULL,
	[F_RECENTJJ] [float] NULL,
	[F_DWCB] [float] NULL,
	[F_CS] [float] NULL,
	[F_MAXSL] [float] NULL,
	[F_MINSL] [float] NULL,
	[F_SLV] [float] NULL,
	[F_SYJL] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
	[F_UN1] [float] NULL,
	[F_UN2] [float] NULL,
	[F_UN3] [float] NULL,
	[F_UN4] [float] NULL,
	[F_UN5] [float] NULL,
	[F_UC1] [varchar](200) NULL,
	[F_UC2] [varchar](200) NULL,
	[F_UC3] [varchar](200) NULL,
	[F_UC4] [varchar](200) NULL,
	[F_UC5] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DRUGBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SP2]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SP2](
	[F_DEPART] [varchar](30) NOT NULL,
	[F_DRUGBH] [varchar](30) NOT NULL,
	[F_DATE] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DEPART] ASC,
	[F_DRUGBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SP3]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SP3](
	[F_DRUGBH] [varchar](30) NOT NULL,
	[F_DATE] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DRUGBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SPLB]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SPLB](
	[F_LBBH] [varchar](20) NOT NULL,
	[F_LBBC] [varchar](30) NOT NULL,
	[F_QCSL] [float] NULL,
	[F_QCCB] [float] NULL,
	[F_JC] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_LBBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SPPC]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SPPC](
	[F_DRUGBH] [varchar](30) NOT NULL,
	[F_HW] [varchar](30) NOT NULL,
	[F_PH] [varchar](40) NOT NULL,
	[F_DQ] [varchar](40) NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DRUGBH] ASC,
	[F_HW] ASC,
	[F_PH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SYZZ]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYZZ](
	[F_DRUGBH] [varchar](30) NOT NULL,
	[F_HW] [varchar](30) NOT NULL,
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
PRIMARY KEY CLUSTERED 
(
	[F_DRUGBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VEN_SP]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VEN_SP](
	[F_VENDOR] [varchar](30) NOT NULL,
	[F_DRUGBH] [varchar](30) NOT NULL,
	[F_DW] [varchar](6) NULL,
	[F_DRUGGG] [varchar](20) NULL,
	[F_DRUGCD] [varchar](20) NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ] [float] NULL,
	[F_DRUGMC] [varchar](30) NULL,
	[F_DATE] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_VENDOR] ASC,
	[F_DRUGBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENDOR]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENDOR](
	[F_DM] [varchar](30) NOT NULL,
	[F_VENDORMC] [varchar](80) NOT NULL,
	[F_TEL] [varchar](30) NULL,
	[F_POSTCODE] [varchar](10) NULL,
	[F_ADDRESS] [varchar](30) NULL,
	[F_LXR] [varchar](20) NULL,
	[F_ZH] [varchar](20) NULL,
	[F_SH] [varchar](20) NULL,
	[F_KHH] [varchar](20) NULL,
	[F_ZJM] [varchar](10) NULL,
	[F_GROUP] [varchar](2) NULL,
	[F_QCYE] [float] NULL,
	[F_QMYE] [float] NULL,
	[F_D1] [float] NULL,
	[F_D2] [float] NULL,
	[F_D3] [float] NULL,
	[F_D4] [float] NULL,
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
	[F_J5] [float] NULL,
	[F_J6] [float] NULL,
	[F_J7] [float] NULL,
	[F_J8] [float] NULL,
	[F_J9] [float] NULL,
	[F_J10] [float] NULL,
	[F_J11] [float] NULL,
	[F_J12] [float] NULL,
	[F_LB1] [varchar](10) NULL,
	[F_LB2] [varchar](10) NULL,
	[F_LB3] [varchar](10) NULL,
	[F_LB4] [varchar](10) NULL,
	[F_UC1] [varchar](200) NULL,
	[F_UC2] [varchar](200) NULL,
	[F_UC3] [varchar](200) NULL,
	[F_UC4] [varchar](200) NULL,
	[F_UC5] [varchar](200) NULL,
	[F_UN1] [float] NULL,
	[F_UN2] [float] NULL,
	[F_UN3] [float] NULL,
	[F_UN4] [float] NULL,
	[F_UN5] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENDORLB]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENDORLB](
	[F_DM] [varchar](30) NOT NULL,
	[F_VENDORLBMC] [varchar](50) NOT NULL,
	[F_JC] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VIP]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIP](
	[F_DM] [varchar](30) NOT NULL,
	[F_VIPMC] [varchar](80) NULL,
	[F_ZJM] [varchar](10) NULL,
	[F_SFZ] [varchar](20) NULL,
	[F_TEL] [varchar](20) NULL,
	[F_POSTCODE] [varchar](10) NULL,
	[F_ADDRESS] [varchar](30) NULL,
	[F_ZH] [varchar](20) NULL,
	[F_SH] [varchar](20) NULL,
	[F_KHH] [varchar](20) NULL,
	[F_LJXF] [float] NULL,
	[F_GRADE] [varchar](10) NULL,
	[F_USED] [varchar](1) NULL,
	[F_CANCEL] [varchar](1) NULL,
	[F_IFYH] [varchar](1) NULL,
	[F_ISYH] [varchar](1) NULL,
	[F_BZ] [varchar](100) NULL,
	[F_ZD] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VIP2]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIP2](
	[F_DM] [varchar](30) NOT NULL,
	[F_VIPMC] [varchar](80) NULL,
	[F_ZJM] [varchar](10) NULL,
	[F_SFZ] [varchar](20) NULL,
	[F_TEL] [varchar](20) NULL,
	[F_POSTCODE] [varchar](10) NULL,
	[F_ADDRESS] [varchar](30) NULL,
	[F_ZH] [varchar](20) NULL,
	[F_SH] [varchar](20) NULL,
	[F_KHH] [varchar](20) NULL,
	[F_LJXF] [float] NULL,
	[F_GRADE] [varchar](10) NULL,
	[F_USED] [varchar](1) NULL,
	[F_CANCEL] [varchar](1) NULL,
	[F_IFYH] [varchar](1) NULL,
	[F_ISYH] [varchar](1) NULL,
	[F_BZ] [varchar](100) NULL,
	[F_ZD] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XSLB]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XSLB](
	[F_DM] [varchar](30) NOT NULL,
	[F_XSLBMC] [varchar](10) NOT NULL,
	[F_DJ] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XSMXZ]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XSMXZ](
	[F_DATE] [varchar](30) NULL,
	[F_DJH] [int] NULL,
	[F_DRUGBH] [varchar](30) NOT NULL,
	[F_ZY] [varchar](100) NULL,
	[F_HW] [varchar](30) NOT NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_CB] [float] NULL,
	[F_DJ] [float] NULL,
	[F_DEPART] [varchar](30) NULL,
	[F_DOCTOR] [varchar](30) NULL,
	[F_PATIENT] [varchar](30) NULL,
	[F_SE] [float] NULL,
	[F_HC] [int] NULL,
	[F_CX] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XSZZ]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XSZZ](
	[F_DRUGBH] [varchar](30) NOT NULL,
	[F_HW] [varchar](30) NOT NULL,
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
PRIMARY KEY CLUSTERED 
(
	[F_DRUGBH] ASC,
	[F_HW] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZTCS]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZTCS](
	[F_ZTBH] [varchar](2) NULL,
	[F_NAME] [varchar](20) NULL,
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
	[F_PRICE1] [varchar](20) NULL,
	[F_PRICE2] [varchar](20) NULL,
	[F_PRICE3] [varchar](20) NULL,
	[F_PRICE4] [varchar](20) NULL,
	[F_PRICE5] [varchar](20) NULL,
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
	[F_YC] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZZD]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZZD](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](30) NULL,
	[F_DEPART] [varchar](30) NULL,
	[F_DOCTOR] [varchar](30) NULL,
	[F_HW1] [varchar](30) NULL,
	[F_HW2] [varchar](30) NULL,
	[F_FPH] [varchar](30) NULL,
	[F_TJ] [varchar](1) NULL,
	[F_ZD] [varchar](30) NULL,
	[F_DW] [varchar](6) NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_DRUGMC] [varchar](30) NULL,
	[F_DRUGBH] [varchar](30) NULL,
	[F_GG] [varchar](20) NULL,
	[F_SHL] [float] NULL,
	[F_DW1] [varchar](6) NULL,
	[F_DW2] [varchar](6) NULL,
	[F_CS] [float] NULL,
	[F_DJH0] [int] NULL,
	[F_PH] [varchar](40) NULL,
	[F_DQ] [varchar](10) NULL,
	[F_FPXZ] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZZD2]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZZD2](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](30) NULL,
	[F_DEPART] [varchar](30) NULL,
	[F_DOCTOR] [varchar](30) NULL,
	[F_HW1] [varchar](30) NULL,
	[F_HW2] [varchar](30) NULL,
	[F_FPH] [varchar](30) NULL,
	[F_TJ] [varchar](1) NULL,
	[F_ZD] [varchar](30) NULL,
	[F_DW] [varchar](6) NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_DRUGMC] [varchar](30) NULL,
	[F_DRUGBH] [varchar](30) NULL,
	[F_GG] [varchar](20) NULL,
	[F_SHL] [float] NULL,
	[F_DW1] [varchar](6) NULL,
	[F_DW2] [varchar](6) NULL,
	[F_CS] [float] NULL,
	[F_DJH0] [int] NULL,
	[F_PH] [varchar](40) NULL,
	[F_DQ] [varchar](10) NULL,
	[F_FPXZ] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZZD3]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZZD3](
	[F_DJH] [int] NOT NULL,
	[F_DATE] [varchar](30) NULL,
	[F_DEPART] [varchar](30) NULL,
	[F_DOCTOR] [varchar](30) NULL,
	[F_HW1] [varchar](30) NULL,
	[F_HW2] [varchar](30) NULL,
	[F_FPH] [varchar](30) NULL,
	[F_TJ] [varchar](1) NULL,
	[F_ZD] [varchar](30) NULL,
	[F_DW] [varchar](6) NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_DRUGMC] [varchar](30) NULL,
	[F_DRUGBH] [varchar](30) NULL,
	[F_GG] [varchar](20) NULL,
	[F_SHL] [float] NULL,
	[F_DW1] [varchar](6) NULL,
	[F_DW2] [varchar](6) NULL,
	[F_CS] [float] NULL,
	[F_DJH0] [int] NULL,
	[F_PH] [varchar](40) NULL,
	[F_DQ] [varchar](10) NULL,
	[F_FPXZ] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZZDMX]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZZDMX](
	[F_DJH] [int] NOT NULL,
	[F_DRUGBH] [varchar](30) NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_DJ] [float] NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_TM] [varchar](20) NULL,
	[F_DRUGMC] [varchar](30) NULL,
	[F_DW] [varchar](6) NULL,
	[F_DRUGCD] [varchar](20) NULL,
	[F_GG] [varchar](20) NULL,
	[F_DW1] [varchar](6) NULL,
	[F_DW2] [varchar](6) NULL,
	[F_CS] [float] NULL,
	[F_PH] [varchar](40) NULL,
	[F_DQ] [varchar](40) NULL,
	[F_ISCB] [varchar](1) NULL,
	[F_SLJC] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZZDMX2]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZZDMX2](
	[F_DJH] [int] NOT NULL,
	[F_DRUGBH] [varchar](30) NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_DJ] [float] NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_TM] [varchar](20) NULL,
	[F_DRUGMC] [varchar](30) NULL,
	[F_DW] [varchar](6) NULL,
	[F_DRUGCD] [varchar](20) NULL,
	[F_GG] [varchar](20) NULL,
	[F_DW1] [varchar](6) NULL,
	[F_DW2] [varchar](6) NULL,
	[F_CS] [float] NULL,
	[F_PH] [varchar](40) NULL,
	[F_DQ] [varchar](40) NULL,
	[F_ISCB] [varchar](1) NULL,
	[F_SLJC] [float] NULL,
	[F_DJ1] [float] NULL,
	[F_DJ2] [float] NULL,
	[F_DJ3] [float] NULL,
	[F_DJ4] [float] NULL,
	[F_DJ5] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[F_DJH] ASC,
	[F_HC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZZDMX3]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZZDMX3](
	[F_DJH] [int] NOT NULL,
	[F_DRUGBH] [varchar](30) NOT NULL,
	[F_HC] [int] NOT NULL,
	[F_DJ] [float] NULL,
	[F_SL] [float] NULL,
	[F_JE] [float] NULL,
	[F_TM] [varchar](20) NULL,
	[F_DRUGMC] [varchar](30) NULL,
	[F_DW] [varchar](6) NULL,
	[F_DRUGCD] [varchar](20) NULL,
	[F_GG] [varchar](20) NULL,
	[F_DW1] [varchar](6) NULL,
	[F_DW2] [varchar](6) NULL,
	[F_CS] [float] NULL,
	[F_PH] [varchar](40) NULL,
	[F_DQ] [varchar](40) NULL,
	[F_ISCB] [varchar](1) NULL,
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
GO
/****** Object:  Table [dbo].[ZZMB]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZZMB](
	[F_DRUGBH] [varchar](30) NOT NULL,
	[F_DRUGMC] [varchar](30) NULL,
	[F_DW] [varchar](6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZZMBMX]    Script Date: 2023/5/5 11:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZZMBMX](
	[F_DRUGBH1] [varchar](30) NOT NULL,
	[F_DRUGBH2] [varchar](30) NOT NULL,
	[F_DRUGMC] [varchar](30) NULL,
	[F_DW] [varchar](6) NULL,
	[F_SL] [float] NULL,
	[F_FIXED] [varchar](1) NULL,
	[F_HC] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CUSTOMGRADE] ADD  CONSTRAINT [DF_PATIENTGRAD__F_KL__61C668D1]  DEFAULT ((0)) FOR [F_KL]
GO
ALTER TABLE [dbo].[CUSTOMGRADE] ADD  CONSTRAINT [DF_PATIENTGRA__F_PRI__5575A085]  DEFAULT ((2)) FOR [F_PRICENUMBER]
GO
ALTER TABLE [dbo].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_SL__23A93AC7]  DEFAULT ((0)) FOR [F_SL]
GO
ALTER TABLE [dbo].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_JE__249D5F00]  DEFAULT ((0)) FOR [F_JE]
GO
ALTER TABLE [dbo].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_SLJC__25918339]  DEFAULT ((0)) FOR [F_SLJC]
GO
ALTER TABLE [dbo].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_DJ__2685A772]  DEFAULT ((0)) FOR [F_DJ]
GO
ALTER TABLE [dbo].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_UN__2779CBAB]  DEFAULT ((0)) FOR [F_UN]
GO
ALTER TABLE [dbo].[DBDMX] ADD  CONSTRAINT [DF__DBDMX__F_SL2__286DEFE4]  DEFAULT ((0)) FOR [F_SL2]
GO
ALTER TABLE [dbo].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_SL__2962141D]  DEFAULT ((0)) FOR [F_SL]
GO
ALTER TABLE [dbo].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_JE__2A563856]  DEFAULT ((0)) FOR [F_JE]
GO
ALTER TABLE [dbo].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_SLJC__2B4A5C8F]  DEFAULT ((0)) FOR [F_SLJC]
GO
ALTER TABLE [dbo].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_DJ__2C3E80C8]  DEFAULT ((0)) FOR [F_DJ]
GO
ALTER TABLE [dbo].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_UN__2D32A501]  DEFAULT ((0)) FOR [F_UN]
GO
ALTER TABLE [dbo].[DBDMX2] ADD  CONSTRAINT [DF__DBDMX2__F_SL2__2E26C93A]  DEFAULT ((0)) FOR [F_SL2]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS1__2F1AED73]  DEFAULT ((0)) FOR [F_SLS1]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS2__300F11AC]  DEFAULT ((0)) FOR [F_SLS2]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS3__310335E5]  DEFAULT ((0)) FOR [F_SLS3]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS4__31F75A1E]  DEFAULT ((0)) FOR [F_SLS4]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS5__32EB7E57]  DEFAULT ((0)) FOR [F_SLS5]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS6__33DFA290]  DEFAULT ((0)) FOR [F_SLS6]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS7__34D3C6C9]  DEFAULT ((0)) FOR [F_SLS7]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS8__35C7EB02]  DEFAULT ((0)) FOR [F_SLS8]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS9__36BC0F3B]  DEFAULT ((0)) FOR [F_SLS9]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS10__37B03374]  DEFAULT ((0)) FOR [F_SLS10]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS11__38A457AD]  DEFAULT ((0)) FOR [F_SLS11]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLS12__39987BE6]  DEFAULT ((0)) FOR [F_SLS12]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES1__3A8CA01F]  DEFAULT ((0)) FOR [F_JES1]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES2__3B80C458]  DEFAULT ((0)) FOR [F_JES2]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES3__3C74E891]  DEFAULT ((0)) FOR [F_JES3]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES4__3D690CCA]  DEFAULT ((0)) FOR [F_JES4]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES5__3E5D3103]  DEFAULT ((0)) FOR [F_JES5]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES6__3F51553C]  DEFAULT ((0)) FOR [F_JES6]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES7__40457975]  DEFAULT ((0)) FOR [F_JES7]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES8__41399DAE]  DEFAULT ((0)) FOR [F_JES8]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES9__422DC1E7]  DEFAULT ((0)) FOR [F_JES9]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES10__4321E620]  DEFAULT ((0)) FOR [F_JES10]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES11__44160A59]  DEFAULT ((0)) FOR [F_JES11]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JES12__450A2E92]  DEFAULT ((0)) FOR [F_JES12]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF1__45FE52CB]  DEFAULT ((0)) FOR [F_SLF1]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF2__46F27704]  DEFAULT ((0)) FOR [F_SLF2]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF3__47E69B3D]  DEFAULT ((0)) FOR [F_SLF3]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF4__48DABF76]  DEFAULT ((0)) FOR [F_SLF4]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF5__49CEE3AF]  DEFAULT ((0)) FOR [F_SLF5]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF6__4AC307E8]  DEFAULT ((0)) FOR [F_SLF6]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF7__4BB72C21]  DEFAULT ((0)) FOR [F_SLF7]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF8__4CAB505A]  DEFAULT ((0)) FOR [F_SLF8]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF9__4D9F7493]  DEFAULT ((0)) FOR [F_SLF9]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF10__4E9398CC]  DEFAULT ((0)) FOR [F_SLF10]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF11__4F87BD05]  DEFAULT ((0)) FOR [F_SLF11]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_SLF12__507BE13E]  DEFAULT ((0)) FOR [F_SLF12]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF1__51700577]  DEFAULT ((0)) FOR [F_JEF1]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF2__526429B0]  DEFAULT ((0)) FOR [F_JEF2]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF3__53584DE9]  DEFAULT ((0)) FOR [F_JEF3]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF4__544C7222]  DEFAULT ((0)) FOR [F_JEF4]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF5__5540965B]  DEFAULT ((0)) FOR [F_JEF5]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF6__5634BA94]  DEFAULT ((0)) FOR [F_JEF6]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF7__5728DECD]  DEFAULT ((0)) FOR [F_JEF7]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF8__581D0306]  DEFAULT ((0)) FOR [F_JEF8]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF9__5911273F]  DEFAULT ((0)) FOR [F_JEF9]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF10__5A054B78]  DEFAULT ((0)) FOR [F_JEF10]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF11__5AF96FB1]  DEFAULT ((0)) FOR [F_JEF11]
GO
ALTER TABLE [dbo].[DBZZ] ADD  CONSTRAINT [DF__DBZZ__F_JEF12__5BED93EA]  DEFAULT ((0)) FOR [F_JEF12]
GO
ALTER TABLE [dbo].[DEPART] ADD  CONSTRAINT [DF_DEPART__F_DE__4FBCC72F]  DEFAULT ((0)) FOR [F_DE]
GO
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_JHD__6D181FEC]  DEFAULT ((0)) FOR [F_JHD]
GO
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_XHD__6E0C4425]  DEFAULT ((0)) FOR [F_XHD]
GO
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_CGD__6F00685E]  DEFAULT ((0)) FOR [F_CGD]
GO
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_RKD__6FF48C97]  DEFAULT ((0)) FOR [F_RKD]
GO
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_CKD__70E8B0D0]  DEFAULT ((0)) FOR [F_CKD]
GO
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_DBD__71DCD509]  DEFAULT ((0)) FOR [F_DBD]
GO
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_ZZD__76A18A26]  DEFAULT ((0)) FOR [F_ZZD]
GO
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_TJD__7795AE5F]  DEFAULT ((0)) FOR [F_TJD]
GO
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_PSD__7889D298]  DEFAULT ((0)) FOR [F_PSD]
GO
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_DHD__7A721B0A]  DEFAULT ((0)) FOR [F_DHD]
GO
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_QDD__6FBF826D]  DEFAULT ((0)) FOR [F_QDD]
GO
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_PDD__729BEF18]  DEFAULT ((0)) FOR [F_PDD]
GO
ALTER TABLE [dbo].[DJH] ADD  DEFAULT ((0)) FOR [F_RECIPE]
GO
ALTER TABLE [dbo].[DJH] ADD  DEFAULT ((0)) FOR [F_RETAIL]
GO
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_XSBB__72D0F942]  DEFAULT ((0)) FOR [F_XSBB]
GO
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_PC__73C51D7B]  DEFAULT ((0)) FOR [F_PC]
GO
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_JIEZ__797DF6D1]  DEFAULT ((0)) FOR [F_JIEZ]
GO
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_YSJSD__74B941B4]  DEFAULT ((0)) FOR [F_YSJSD]
GO
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_YFJSD__75AD65ED]  DEFAULT ((0)) FOR [F_YFJSD]
GO
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_NEWSP__70B3A6A6]  DEFAULT ((0)) FOR [F_NEWSP]
GO
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_ENEMY__71A7CADF]  DEFAULT ((0)) FOR [F_ENEMY]
GO
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF__DJH__F_SP__7D197D8B]  DEFAULT ((0)) FOR [F_SP]
GO
ALTER TABLE [dbo].[DJH] ADD  CONSTRAINT [DF_DJH_F_CX]  DEFAULT ((0)) FOR [F_CX]
GO
ALTER TABLE [dbo].[HW] ADD  CONSTRAINT [DF__HW__F_LOCAL__7E42ABEE]  DEFAULT ('') FOR [F_LOCAL]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS1__7F36D027]  DEFAULT ((0)) FOR [F_SLS1]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS2__002AF460]  DEFAULT ((0)) FOR [F_SLS2]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS3__011F1899]  DEFAULT ((0)) FOR [F_SLS3]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS4__02133CD2]  DEFAULT ((0)) FOR [F_SLS4]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS5__0307610B]  DEFAULT ((0)) FOR [F_SLS5]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS6__03FB8544]  DEFAULT ((0)) FOR [F_SLS6]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS7__04EFA97D]  DEFAULT ((0)) FOR [F_SLS7]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS8__05E3CDB6]  DEFAULT ((0)) FOR [F_SLS8]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS9__06D7F1EF]  DEFAULT ((0)) FOR [F_SLS9]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS10__07CC1628]  DEFAULT ((0)) FOR [F_SLS10]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS11__08C03A61]  DEFAULT ((0)) FOR [F_SLS11]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLS12__09B45E9A]  DEFAULT ((0)) FOR [F_SLS12]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES1__0AA882D3]  DEFAULT ((0)) FOR [F_JES1]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES2__0B9CA70C]  DEFAULT ((0)) FOR [F_JES2]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES3__0C90CB45]  DEFAULT ((0)) FOR [F_JES3]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES4__0D84EF7E]  DEFAULT ((0)) FOR [F_JES4]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES5__0E7913B7]  DEFAULT ((0)) FOR [F_JES5]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES6__0F6D37F0]  DEFAULT ((0)) FOR [F_JES6]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES7__10615C29]  DEFAULT ((0)) FOR [F_JES7]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES8__11558062]  DEFAULT ((0)) FOR [F_JES8]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES9__1249A49B]  DEFAULT ((0)) FOR [F_JES9]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES10__133DC8D4]  DEFAULT ((0)) FOR [F_JES10]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES11__1431ED0D]  DEFAULT ((0)) FOR [F_JES11]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JES12__15261146]  DEFAULT ((0)) FOR [F_JES12]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF1__161A357F]  DEFAULT ((0)) FOR [F_SLF1]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF2__170E59B8]  DEFAULT ((0)) FOR [F_SLF2]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF3__18027DF1]  DEFAULT ((0)) FOR [F_SLF3]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF4__18F6A22A]  DEFAULT ((0)) FOR [F_SLF4]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF5__19EAC663]  DEFAULT ((0)) FOR [F_SLF5]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF6__1ADEEA9C]  DEFAULT ((0)) FOR [F_SLF6]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF7__1BD30ED5]  DEFAULT ((0)) FOR [F_SLF7]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF8__1CC7330E]  DEFAULT ((0)) FOR [F_SLF8]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF9__1DBB5747]  DEFAULT ((0)) FOR [F_SLF9]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF10__1EAF7B80]  DEFAULT ((0)) FOR [F_SLF10]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF11__1FA39FB9]  DEFAULT ((0)) FOR [F_SLF11]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_SLF12__2097C3F2]  DEFAULT ((0)) FOR [F_SLF12]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF1__218BE82B]  DEFAULT ((0)) FOR [F_JEF1]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF2__22800C64]  DEFAULT ((0)) FOR [F_JEF2]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF3__2374309D]  DEFAULT ((0)) FOR [F_JEF3]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF4__246854D6]  DEFAULT ((0)) FOR [F_JEF4]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF5__255C790F]  DEFAULT ((0)) FOR [F_JEF5]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF6__26509D48]  DEFAULT ((0)) FOR [F_JEF6]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF7__2744C181]  DEFAULT ((0)) FOR [F_JEF7]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF8__2838E5BA]  DEFAULT ((0)) FOR [F_JEF8]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF9__292D09F3]  DEFAULT ((0)) FOR [F_JEF9]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF10__2A212E2C]  DEFAULT ((0)) FOR [F_JEF10]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF11__2B155265]  DEFAULT ((0)) FOR [F_JEF11]
GO
ALTER TABLE [dbo].[JGZZ] ADD  CONSTRAINT [DF__JGZZ__F_JEF12__2C09769E]  DEFAULT ((0)) FOR [F_JEF12]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL1__4F52B2DB]  DEFAULT ((0)) FOR [F_SL1]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL2__5046D714]  DEFAULT ((0)) FOR [F_SL2]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL3__513AFB4D]  DEFAULT ((0)) FOR [F_SL3]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL4__522F1F86]  DEFAULT ((0)) FOR [F_SL4]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL5__532343BF]  DEFAULT ((0)) FOR [F_SL5]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL6__541767F8]  DEFAULT ((0)) FOR [F_SL6]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL7__550B8C31]  DEFAULT ((0)) FOR [F_SL7]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL8__55FFB06A]  DEFAULT ((0)) FOR [F_SL8]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL9__56F3D4A3]  DEFAULT ((0)) FOR [F_SL9]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL10__57E7F8DC]  DEFAULT ((0)) FOR [F_SL10]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL11__58DC1D15]  DEFAULT ((0)) FOR [F_SL11]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SL12__59D0414E]  DEFAULT ((0)) FOR [F_SL12]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE1__5AC46587]  DEFAULT ((0)) FOR [F_JE1]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE2__5BB889C0]  DEFAULT ((0)) FOR [F_JE2]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE3__5CACADF9]  DEFAULT ((0)) FOR [F_JE3]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE4__5DA0D232]  DEFAULT ((0)) FOR [F_JE4]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE5__5E94F66B]  DEFAULT ((0)) FOR [F_JE5]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE6__5F891AA4]  DEFAULT ((0)) FOR [F_JE6]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE7__607D3EDD]  DEFAULT ((0)) FOR [F_JE7]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE8__61716316]  DEFAULT ((0)) FOR [F_JE8]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE9__6265874F]  DEFAULT ((0)) FOR [F_JE9]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE10__6359AB88]  DEFAULT ((0)) FOR [F_JE10]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE11__644DCFC1]  DEFAULT ((0)) FOR [F_JE11]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_JE12__6541F3FA]  DEFAULT ((0)) FOR [F_JE12]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE1__66361833]  DEFAULT ((0)) FOR [F_SE1]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE2__672A3C6C]  DEFAULT ((0)) FOR [F_SE2]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE3__681E60A5]  DEFAULT ((0)) FOR [F_SE3]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE4__691284DE]  DEFAULT ((0)) FOR [F_SE4]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE5__6A06A917]  DEFAULT ((0)) FOR [F_SE5]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE6__6AFACD50]  DEFAULT ((0)) FOR [F_SE6]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE7__6BEEF189]  DEFAULT ((0)) FOR [F_SE7]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE8__6CE315C2]  DEFAULT ((0)) FOR [F_SE8]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE9__6DD739FB]  DEFAULT ((0)) FOR [F_SE9]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE10__6ECB5E34]  DEFAULT ((0)) FOR [F_SE10]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE11__6FBF826D]  DEFAULT ((0)) FOR [F_SE11]
GO
ALTER TABLE [dbo].[JHZZ] ADD  CONSTRAINT [DF__JHZZ__F_SE12__70B3A6A6]  DEFAULT ((0)) FOR [F_SE12]
GO
ALTER TABLE [dbo].[KCMXZ] ADD  CONSTRAINT [DF__KCMXZ__F_SLS__7B313519]  DEFAULT ((0)) FOR [F_SLS]
GO
ALTER TABLE [dbo].[KCMXZ] ADD  CONSTRAINT [DF__KCMXZ__F_JES__7C255952]  DEFAULT ((0)) FOR [F_JES]
GO
ALTER TABLE [dbo].[KCMXZ] ADD  CONSTRAINT [DF__KCMXZ__F_SLF__7D197D8B]  DEFAULT ((0)) FOR [F_SLF]
GO
ALTER TABLE [dbo].[KCMXZ] ADD  CONSTRAINT [DF__KCMXZ__F_JEF__7E0DA1C4]  DEFAULT ((0)) FOR [F_JEF]
GO
ALTER TABLE [dbo].[KCYE] ADD  CONSTRAINT [DF__KCYE__F_SLYE__7F01C5FD]  DEFAULT ((0)) FOR [F_SLYE]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SL0__7FF5EA36]  DEFAULT ((0)) FOR [F_SL0]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JE0__00EA0E6F]  DEFAULT ((0)) FOR [F_JE0]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLYE__01DE32A8]  DEFAULT ((0)) FOR [F_SLYE]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEYE__02D256E1]  DEFAULT ((0)) FOR [F_JEYE]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_PJDJ__03C67B1A]  DEFAULT ((0)) FOR [F_PJDJ]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JE__04BA9F53]  DEFAULT ((0)) FOR [F_JE]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JJ__05AEC38C]  DEFAULT ((0)) FOR [F_JJ]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS1__06A2E7C5]  DEFAULT ((0)) FOR [F_SLS1]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS2__07970BFE]  DEFAULT ((0)) FOR [F_SLS2]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS3__088B3037]  DEFAULT ((0)) FOR [F_SLS3]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS4__097F5470]  DEFAULT ((0)) FOR [F_SLS4]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS5__0A7378A9]  DEFAULT ((0)) FOR [F_SLS5]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS6__0B679CE2]  DEFAULT ((0)) FOR [F_SLS6]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS7__0C5BC11B]  DEFAULT ((0)) FOR [F_SLS7]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS8__0D4FE554]  DEFAULT ((0)) FOR [F_SLS8]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS9__0E44098D]  DEFAULT ((0)) FOR [F_SLS9]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS10__0F382DC6]  DEFAULT ((0)) FOR [F_SLS10]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS11__102C51FF]  DEFAULT ((0)) FOR [F_SLS11]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLS12__11207638]  DEFAULT ((0)) FOR [F_SLS12]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES1__12149A71]  DEFAULT ((0)) FOR [F_JES1]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES2__1308BEAA]  DEFAULT ((0)) FOR [F_JES2]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES3__13FCE2E3]  DEFAULT ((0)) FOR [F_JES3]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES4__14F1071C]  DEFAULT ((0)) FOR [F_JES4]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES5__15E52B55]  DEFAULT ((0)) FOR [F_JES5]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES6__16D94F8E]  DEFAULT ((0)) FOR [F_JES6]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES7__17CD73C7]  DEFAULT ((0)) FOR [F_JES7]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES8__18C19800]  DEFAULT ((0)) FOR [F_JES8]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES9__19B5BC39]  DEFAULT ((0)) FOR [F_JES9]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES10__1AA9E072]  DEFAULT ((0)) FOR [F_JES10]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES11__1B9E04AB]  DEFAULT ((0)) FOR [F_JES11]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JES12__1C9228E4]  DEFAULT ((0)) FOR [F_JES12]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF1__1D864D1D]  DEFAULT ((0)) FOR [F_SLF1]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF2__1E7A7156]  DEFAULT ((0)) FOR [F_SLF2]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF3__1F6E958F]  DEFAULT ((0)) FOR [F_SLF3]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF4__2062B9C8]  DEFAULT ((0)) FOR [F_SLF4]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF5__2156DE01]  DEFAULT ((0)) FOR [F_SLF5]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF6__224B023A]  DEFAULT ((0)) FOR [F_SLF6]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF7__233F2673]  DEFAULT ((0)) FOR [F_SLF7]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF8__24334AAC]  DEFAULT ((0)) FOR [F_SLF8]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF9__25276EE5]  DEFAULT ((0)) FOR [F_SLF9]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF10__261B931E]  DEFAULT ((0)) FOR [F_SLF10]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF11__270FB757]  DEFAULT ((0)) FOR [F_SLF11]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_SLF12__2803DB90]  DEFAULT ((0)) FOR [F_SLF12]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF1__28F7FFC9]  DEFAULT ((0)) FOR [F_JEF1]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF2__29EC2402]  DEFAULT ((0)) FOR [F_JEF2]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF3__2AE0483B]  DEFAULT ((0)) FOR [F_JEF3]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF4__2BD46C74]  DEFAULT ((0)) FOR [F_JEF4]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF5__2CC890AD]  DEFAULT ((0)) FOR [F_JEF5]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF6__2DBCB4E6]  DEFAULT ((0)) FOR [F_JEF6]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF7__2EB0D91F]  DEFAULT ((0)) FOR [F_JEF7]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF8__2FA4FD58]  DEFAULT ((0)) FOR [F_JEF8]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF9__30992191]  DEFAULT ((0)) FOR [F_JEF9]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF10__318D45CA]  DEFAULT ((0)) FOR [F_JEF10]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF11__32816A03]  DEFAULT ((0)) FOR [F_JEF11]
GO
ALTER TABLE [dbo].[KCZZ] ADD  CONSTRAINT [DF__KCZZ__F_JEF12__33758E3C]  DEFAULT ((0)) FOR [F_JEF12]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_J1__0CC5D56F]  DEFAULT ((0)) FOR [F_J1]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_J2__0EAE1DE1]  DEFAULT ((0)) FOR [F_J2]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_J3__10966653]  DEFAULT ((0)) FOR [F_J3]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_J4__127EAEC5]  DEFAULT ((0)) FOR [F_J4]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_J5__1466F737]  DEFAULT ((0)) FOR [F_J5]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_J6__164F3FA9]  DEFAULT ((0)) FOR [F_J6]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_J7__1837881B]  DEFAULT ((0)) FOR [F_J7]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_J8__1A1FD08D]  DEFAULT ((0)) FOR [F_J8]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_J9__1C0818FF]  DEFAULT ((0)) FOR [F_J9]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_J10__1DF06171]  DEFAULT ((0)) FOR [F_J10]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_J11__1FD8A9E3]  DEFAULT ((0)) FOR [F_J11]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_J12__21C0F255]  DEFAULT ((0)) FOR [F_J12]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_D1__0DB9F9A8]  DEFAULT ((0)) FOR [F_D1]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_D2__0FA2421A]  DEFAULT ((0)) FOR [F_D2]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_D3__118A8A8C]  DEFAULT ((0)) FOR [F_D3]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_D4__1372D2FE]  DEFAULT ((0)) FOR [F_D4]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_D5__155B1B70]  DEFAULT ((0)) FOR [F_D5]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_D6__174363E2]  DEFAULT ((0)) FOR [F_D6]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_D7__192BAC54]  DEFAULT ((0)) FOR [F_D7]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_D8__1B13F4C6]  DEFAULT ((0)) FOR [F_D8]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_D9__1CFC3D38]  DEFAULT ((0)) FOR [F_D9]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_D10__1EE485AA]  DEFAULT ((0)) FOR [F_D10]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_D11__20CCCE1C]  DEFAULT ((0)) FOR [F_D11]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_D12__22B5168E]  DEFAULT ((0)) FOR [F_D12]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_QCYE__09E968C4]  DEFAULT ((0)) FOR [F_QCYE]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_QMYE__0ADD8CFD]  DEFAULT ((0)) FOR [F_QMYE]
GO
ALTER TABLE [dbo].[PATIENT] ADD  CONSTRAINT [DF_PATIENT__F_SXED__0BD1B136]  DEFAULT ((0)) FOR [F_SXED]
GO
ALTER TABLE [dbo].[PDDMX] ADD  CONSTRAINT [DF__PDDMX__F_DJ2__7D8E7ED7]  DEFAULT ((0)) FOR [F_DJ2]
GO
ALTER TABLE [dbo].[PDDMX2] ADD  CONSTRAINT [DF__PDDMX2__F_DJ2__7E82A310]  DEFAULT ((0)) FOR [F_DJ2]
GO
ALTER TABLE [dbo].[PDDMX3] ADD  CONSTRAINT [DF__PDDMX3__F_DJ2__7F76C749]  DEFAULT ((0)) FOR [F_DJ2]
GO
ALTER TABLE [dbo].[SJMXZ] ADD  CONSTRAINT [DF__SJMXZ__F_JXSE__7ECCBBD3]  DEFAULT ((0)) FOR [F_JXSE]
GO
ALTER TABLE [dbo].[SJMXZ] ADD  CONSTRAINT [DF__SJMXZ__F_XXSE__7FC0E00C]  DEFAULT ((0)) FOR [F_XXSE]
GO
ALTER TABLE [dbo].[SJMXZ] ADD  CONSTRAINT [DF__SJMXZ__F_ZCSE__00B50445]  DEFAULT ((0)) FOR [F_ZCSE]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS1__01A9287E]  DEFAULT ((0)) FOR [F_JXS1]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS2__029D4CB7]  DEFAULT ((0)) FOR [F_JXS2]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS3__039170F0]  DEFAULT ((0)) FOR [F_JXS3]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS4__04859529]  DEFAULT ((0)) FOR [F_JXS4]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS5__0579B962]  DEFAULT ((0)) FOR [F_JXS5]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS6__066DDD9B]  DEFAULT ((0)) FOR [F_JXS6]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS7__076201D4]  DEFAULT ((0)) FOR [F_JXS7]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS8__0856260D]  DEFAULT ((0)) FOR [F_JXS8]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS9__094A4A46]  DEFAULT ((0)) FOR [F_JXS9]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS10__0A3E6E7F]  DEFAULT ((0)) FOR [F_JXS10]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS11__0B3292B8]  DEFAULT ((0)) FOR [F_JXS11]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_JXS12__0C26B6F1]  DEFAULT ((0)) FOR [F_JXS12]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS1__0D1ADB2A]  DEFAULT ((0)) FOR [F_XXS1]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS2__0E0EFF63]  DEFAULT ((0)) FOR [F_XXS2]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS3__0F03239C]  DEFAULT ((0)) FOR [F_XXS3]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS4__0FF747D5]  DEFAULT ((0)) FOR [F_XXS4]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS5__10EB6C0E]  DEFAULT ((0)) FOR [F_XXS5]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS6__11DF9047]  DEFAULT ((0)) FOR [F_XXS6]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS7__12D3B480]  DEFAULT ((0)) FOR [F_XXS7]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS8__13C7D8B9]  DEFAULT ((0)) FOR [F_XXS8]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS9__14BBFCF2]  DEFAULT ((0)) FOR [F_XXS9]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS10__15B0212B]  DEFAULT ((0)) FOR [F_XXS10]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS11__16A44564]  DEFAULT ((0)) FOR [F_XXS11]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_XXS12__1798699D]  DEFAULT ((0)) FOR [F_XXS12]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS1__188C8DD6]  DEFAULT ((0)) FOR [F_ZCS1]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS2__1980B20F]  DEFAULT ((0)) FOR [F_ZCS2]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS3__1A74D648]  DEFAULT ((0)) FOR [F_ZCS3]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS4__1B68FA81]  DEFAULT ((0)) FOR [F_ZCS4]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS5__1C5D1EBA]  DEFAULT ((0)) FOR [F_ZCS5]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS6__1D5142F3]  DEFAULT ((0)) FOR [F_ZCS6]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS7__1E45672C]  DEFAULT ((0)) FOR [F_ZCS7]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS8__1F398B65]  DEFAULT ((0)) FOR [F_ZCS8]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS9__202DAF9E]  DEFAULT ((0)) FOR [F_ZCS9]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS10__2121D3D7]  DEFAULT ((0)) FOR [F_ZCS10]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS11__2215F810]  DEFAULT ((0)) FOR [F_ZCS11]
GO
ALTER TABLE [dbo].[SJZZ] ADD  CONSTRAINT [DF__SJZZ__F_ZCS12__230A1C49]  DEFAULT ((0)) FOR [F_ZCS12]
GO
ALTER TABLE [dbo].[DRUG] ADD  CONSTRAINT [DF__SP__F_MAXPC__2C938683]  DEFAULT ((0)) FOR [F_MAXPC]
GO
ALTER TABLE [dbo].[DRUG] ADD  CONSTRAINT [DF__SP__F_IFSJ__2D87AABC]  DEFAULT ('') FOR [F_IFSJ]
GO
ALTER TABLE [dbo].[DRUG] ADD  CONSTRAINT [DF__SP__F_FUNCTION__2F6FF32E]  DEFAULT ('') FOR [F_FUNCTION]
GO
ALTER TABLE [dbo].[DRUG] ADD  CONSTRAINT [DF__SP__F_RATE__2E7BCEF5]  DEFAULT ((0)) FOR [F_RATE]
GO
ALTER TABLE [dbo].[DRUG] ADD  CONSTRAINT [DF__SP__F_MAXJJ__3528CC84]  DEFAULT ((0)) FOR [F_MAXJJ]
GO
ALTER TABLE [dbo].[DRUG] ADD  CONSTRAINT [DF__SP__F_MINJJ__361CF0BD]  DEFAULT ((0)) FOR [F_MINJJ]
GO
ALTER TABLE [dbo].[DRUG] ADD  CONSTRAINT [DF__SP__F_RECENTJJ__371114F6]  DEFAULT ((0)) FOR [F_RECENTJJ]
GO
ALTER TABLE [dbo].[DRUG] ADD  CONSTRAINT [DF__SP__F_DWCB__2B9F624A]  DEFAULT ((0)) FOR [F_DWCB]
GO
ALTER TABLE [dbo].[DRUG] ADD  CONSTRAINT [DF_SP_F_CS]  DEFAULT ((1)) FOR [F_CS]
GO
ALTER TABLE [dbo].[DRUG] ADD  CONSTRAINT [DF__SP__F_MAXSL__23FE4082]  DEFAULT ((0)) FOR [F_MAXSL]
GO
ALTER TABLE [dbo].[DRUG] ADD  CONSTRAINT [DF__SP__F_MINSL__24F264BB]  DEFAULT ((0)) FOR [F_MINSL]
GO
ALTER TABLE [dbo].[DRUG] ADD  CONSTRAINT [DF__SP__F_SLV__25E688F4]  DEFAULT ((0.17)) FOR [F_SLV]
GO
ALTER TABLE [dbo].[DRUG] ADD  CONSTRAINT [DF__SP__F_DJ1__26DAAD2D]  DEFAULT ((0)) FOR [F_DJ1]
GO
ALTER TABLE [dbo].[DRUG] ADD  CONSTRAINT [DF__SP__F_DJ2__27CED166]  DEFAULT ((0)) FOR [F_DJ2]
GO
ALTER TABLE [dbo].[DRUG] ADD  CONSTRAINT [DF__SP__F_DJ3__28C2F59F]  DEFAULT ((0)) FOR [F_DJ3]
GO
ALTER TABLE [dbo].[DRUG] ADD  CONSTRAINT [DF__SP__F_DJ4__29B719D8]  DEFAULT ((0)) FOR [F_DJ4]
GO
ALTER TABLE [dbo].[DRUG] ADD  CONSTRAINT [DF__SP__F_DJ5__2AAB3E11]  DEFAULT ((0)) FOR [F_DJ5]
GO
ALTER TABLE [dbo].[DRUG] ADD  CONSTRAINT [DF__SP__F_UN1__30641767]  DEFAULT ((0)) FOR [F_UN1]
GO
ALTER TABLE [dbo].[DRUG] ADD  CONSTRAINT [DF__SP__F_UN2__31583BA0]  DEFAULT ((0)) FOR [F_UN2]
GO
ALTER TABLE [dbo].[DRUG] ADD  CONSTRAINT [DF__SP__F_UN3__324C5FD9]  DEFAULT ((0)) FOR [F_UN3]
GO
ALTER TABLE [dbo].[DRUG] ADD  CONSTRAINT [DF__SP__F_UN4__33408412]  DEFAULT ((0)) FOR [F_UN4]
GO
ALTER TABLE [dbo].[DRUG] ADD  CONSTRAINT [DF__SP__F_UN5__3434A84B]  DEFAULT ((0)) FOR [F_UN5]
GO
ALTER TABLE [dbo].[SPPC] ADD  CONSTRAINT [DF__SPPC__F_SL__446B1014]  DEFAULT ((0)) FOR [F_SL]
GO
ALTER TABLE [dbo].[SPPC] ADD  CONSTRAINT [DF__SPPC__F_JE__455F344D]  DEFAULT ((0)) FOR [F_JE]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS1__46535886]  DEFAULT ((0)) FOR [F_SLS1]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS2__47477CBF]  DEFAULT ((0)) FOR [F_SLS2]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS3__483BA0F8]  DEFAULT ((0)) FOR [F_SLS3]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS4__492FC531]  DEFAULT ((0)) FOR [F_SLS4]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS5__4A23E96A]  DEFAULT ((0)) FOR [F_SLS5]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS6__4B180DA3]  DEFAULT ((0)) FOR [F_SLS6]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS7__4C0C31DC]  DEFAULT ((0)) FOR [F_SLS7]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS8__4D005615]  DEFAULT ((0)) FOR [F_SLS8]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS9__4DF47A4E]  DEFAULT ((0)) FOR [F_SLS9]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS10__4EE89E87]  DEFAULT ((0)) FOR [F_SLS10]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS11__4FDCC2C0]  DEFAULT ((0)) FOR [F_SLS11]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLS12__50D0E6F9]  DEFAULT ((0)) FOR [F_SLS12]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES1__51C50B32]  DEFAULT ((0)) FOR [F_JES1]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES2__52B92F6B]  DEFAULT ((0)) FOR [F_JES2]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES3__53AD53A4]  DEFAULT ((0)) FOR [F_JES3]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES4__54A177DD]  DEFAULT ((0)) FOR [F_JES4]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES5__55959C16]  DEFAULT ((0)) FOR [F_JES5]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES6__5689C04F]  DEFAULT ((0)) FOR [F_JES6]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES7__577DE488]  DEFAULT ((0)) FOR [F_JES7]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES8__587208C1]  DEFAULT ((0)) FOR [F_JES8]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES9__59662CFA]  DEFAULT ((0)) FOR [F_JES9]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES10__5A5A5133]  DEFAULT ((0)) FOR [F_JES10]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES11__5B4E756C]  DEFAULT ((0)) FOR [F_JES11]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JES12__5C4299A5]  DEFAULT ((0)) FOR [F_JES12]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF1__5D36BDDE]  DEFAULT ((0)) FOR [F_SLF1]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF2__5E2AE217]  DEFAULT ((0)) FOR [F_SLF2]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF3__5F1F0650]  DEFAULT ((0)) FOR [F_SLF3]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF4__60132A89]  DEFAULT ((0)) FOR [F_SLF4]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF5__61074EC2]  DEFAULT ((0)) FOR [F_SLF5]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF6__61FB72FB]  DEFAULT ((0)) FOR [F_SLF6]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF7__62EF9734]  DEFAULT ((0)) FOR [F_SLF7]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF8__63E3BB6D]  DEFAULT ((0)) FOR [F_SLF8]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF9__64D7DFA6]  DEFAULT ((0)) FOR [F_SLF9]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF10__65CC03DF]  DEFAULT ((0)) FOR [F_SLF10]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF11__66C02818]  DEFAULT ((0)) FOR [F_SLF11]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SLF12__67B44C51]  DEFAULT ((0)) FOR [F_SLF12]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF1__68A8708A]  DEFAULT ((0)) FOR [F_JEF1]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF2__699C94C3]  DEFAULT ((0)) FOR [F_JEF2]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF3__6A90B8FC]  DEFAULT ((0)) FOR [F_JEF3]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF4__6B84DD35]  DEFAULT ((0)) FOR [F_JEF4]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF5__6C79016E]  DEFAULT ((0)) FOR [F_JEF5]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF6__6D6D25A7]  DEFAULT ((0)) FOR [F_JEF6]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF7__6E6149E0]  DEFAULT ((0)) FOR [F_JEF7]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF8__6F556E19]  DEFAULT ((0)) FOR [F_JEF8]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF9__70499252]  DEFAULT ((0)) FOR [F_JEF9]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF10__713DB68B]  DEFAULT ((0)) FOR [F_JEF10]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF11__7231DAC4]  DEFAULT ((0)) FOR [F_JEF11]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_JEF12__7325FEFD]  DEFAULT ((0)) FOR [F_JEF12]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE1__741A2336]  DEFAULT ((0)) FOR [F_SE1]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE2__750E476F]  DEFAULT ((0)) FOR [F_SE2]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE3__76026BA8]  DEFAULT ((0)) FOR [F_SE3]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE4__76F68FE1]  DEFAULT ((0)) FOR [F_SE4]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE5__77EAB41A]  DEFAULT ((0)) FOR [F_SE5]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE6__78DED853]  DEFAULT ((0)) FOR [F_SE6]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE7__79D2FC8C]  DEFAULT ((0)) FOR [F_SE7]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE8__7AC720C5]  DEFAULT ((0)) FOR [F_SE8]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE9__7BBB44FE]  DEFAULT ((0)) FOR [F_SE9]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE10__7CAF6937]  DEFAULT ((0)) FOR [F_SE10]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE11__7DA38D70]  DEFAULT ((0)) FOR [F_SE11]
GO
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__F_SE12__7E97B1A9]  DEFAULT ((0)) FOR [F_SE12]
GO
ALTER TABLE [dbo].[VIP] ADD  CONSTRAINT [DF__VIP__F_LJXF__4FBCC72F]  DEFAULT ((0)) FOR [F_LJXF]
GO
ALTER TABLE [dbo].[VIP] ADD  CONSTRAINT [DF__VIP__F_GRADE__50B0EB68]  DEFAULT ((0)) FOR [F_GRADE]
GO
ALTER TABLE [dbo].[VIP2] ADD  CONSTRAINT [DF__VIP2__F_LJXF__538D5813]  DEFAULT ((0)) FOR [F_LJXF]
GO
ALTER TABLE [dbo].[VIP2] ADD  CONSTRAINT [DF__VIP2__F_GRADE__54817C4C]  DEFAULT ((0)) FOR [F_GRADE]
GO
ALTER TABLE [dbo].[XSMXZ] ADD  CONSTRAINT [DF__XSMXZ__F_SL__1C281490]  DEFAULT ((0)) FOR [F_SL]
GO
ALTER TABLE [dbo].[XSMXZ] ADD  CONSTRAINT [DF__XSMXZ__F_JE__1D1C38C9]  DEFAULT ((0)) FOR [F_JE]
GO
ALTER TABLE [dbo].[XSMXZ] ADD  CONSTRAINT [DF__XSMXZ__F_CB__1E105D02]  DEFAULT ((0)) FOR [F_CB]
GO
ALTER TABLE [dbo].[XSMXZ] ADD  CONSTRAINT [DF__XSMXZ__F_DJ__1F04813B]  DEFAULT ((0)) FOR [F_DJ]
GO
ALTER TABLE [dbo].[XSMXZ] ADD  CONSTRAINT [DF__XSMXZ__F_SE__1FF8A574]  DEFAULT ((0)) FOR [F_SE]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL1__20ECC9AD]  DEFAULT ((0)) FOR [F_SL1]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL2__21E0EDE6]  DEFAULT ((0)) FOR [F_SL2]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL3__22D5121F]  DEFAULT ((0)) FOR [F_SL3]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL4__23C93658]  DEFAULT ((0)) FOR [F_SL4]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL5__24BD5A91]  DEFAULT ((0)) FOR [F_SL5]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL6__25B17ECA]  DEFAULT ((0)) FOR [F_SL6]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL7__26A5A303]  DEFAULT ((0)) FOR [F_SL7]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL8__2799C73C]  DEFAULT ((0)) FOR [F_SL8]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL9__288DEB75]  DEFAULT ((0)) FOR [F_SL9]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL10__29820FAE]  DEFAULT ((0)) FOR [F_SL10]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL11__2A7633E7]  DEFAULT ((0)) FOR [F_SL11]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SL12__2B6A5820]  DEFAULT ((0)) FOR [F_SL12]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE1__2C5E7C59]  DEFAULT ((0)) FOR [F_JE1]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE2__2D52A092]  DEFAULT ((0)) FOR [F_JE2]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE3__2E46C4CB]  DEFAULT ((0)) FOR [F_JE3]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE4__2F3AE904]  DEFAULT ((0)) FOR [F_JE4]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE5__302F0D3D]  DEFAULT ((0)) FOR [F_JE5]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE6__31233176]  DEFAULT ((0)) FOR [F_JE6]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE7__321755AF]  DEFAULT ((0)) FOR [F_JE7]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE8__330B79E8]  DEFAULT ((0)) FOR [F_JE8]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE9__33FF9E21]  DEFAULT ((0)) FOR [F_JE9]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE10__34F3C25A]  DEFAULT ((0)) FOR [F_JE10]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE11__35E7E693]  DEFAULT ((0)) FOR [F_JE11]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_JE12__36DC0ACC]  DEFAULT ((0)) FOR [F_JE12]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB1__37D02F05]  DEFAULT ((0)) FOR [F_CB1]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB2__38C4533E]  DEFAULT ((0)) FOR [F_CB2]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB3__39B87777]  DEFAULT ((0)) FOR [F_CB3]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB4__3AAC9BB0]  DEFAULT ((0)) FOR [F_CB4]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB5__3BA0BFE9]  DEFAULT ((0)) FOR [F_CB5]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB6__3C94E422]  DEFAULT ((0)) FOR [F_CB6]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB7__3D89085B]  DEFAULT ((0)) FOR [F_CB7]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB8__3E7D2C94]  DEFAULT ((0)) FOR [F_CB8]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB9__3F7150CD]  DEFAULT ((0)) FOR [F_CB9]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB10__40657506]  DEFAULT ((0)) FOR [F_CB10]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB11__4159993F]  DEFAULT ((0)) FOR [F_CB11]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_CB12__424DBD78]  DEFAULT ((0)) FOR [F_CB12]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE1__4341E1B1]  DEFAULT ((0)) FOR [F_SE1]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE2__443605EA]  DEFAULT ((0)) FOR [F_SE2]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE3__452A2A23]  DEFAULT ((0)) FOR [F_SE3]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE4__461E4E5C]  DEFAULT ((0)) FOR [F_SE4]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE5__47127295]  DEFAULT ((0)) FOR [F_SE5]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE6__480696CE]  DEFAULT ((0)) FOR [F_SE6]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE7__48FABB07]  DEFAULT ((0)) FOR [F_SE7]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE8__49EEDF40]  DEFAULT ((0)) FOR [F_SE8]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE9__4AE30379]  DEFAULT ((0)) FOR [F_SE9]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE10__4BD727B2]  DEFAULT ((0)) FOR [F_SE10]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE11__4CCB4BEB]  DEFAULT ((0)) FOR [F_SE11]
GO
ALTER TABLE [dbo].[XSZZ] ADD  CONSTRAINT [DF__XSZZ__F_SE12__4DBF7024]  DEFAULT ((0)) FOR [F_SE12]
GO
ALTER TABLE [dbo].[ZZDMX] ADD  CONSTRAINT [DF__ZZDMX__F_DJ__0DA4EB0F]  DEFAULT ((0)) FOR [F_DJ]
GO
ALTER TABLE [dbo].[ZZDMX] ADD  CONSTRAINT [DF__ZZDMX__F_SL__0E990F48]  DEFAULT ((0)) FOR [F_SL]
GO
ALTER TABLE [dbo].[ZZDMX] ADD  CONSTRAINT [DF__ZZDMX__F_JE__0F8D3381]  DEFAULT ((0)) FOR [F_JE]
GO
ALTER TABLE [dbo].[ZZDMX2] ADD  CONSTRAINT [DF__ZZDMX2__F_DJ__108157BA]  DEFAULT ((0)) FOR [F_DJ]
GO
ALTER TABLE [dbo].[ZZDMX2] ADD  CONSTRAINT [DF__ZZDMX2__F_SL__11757BF3]  DEFAULT ((0)) FOR [F_SL]
GO
ALTER TABLE [dbo].[ZZDMX2] ADD  CONSTRAINT [DF__ZZDMX2__F_JE__1269A02C]  DEFAULT ((0)) FOR [F_JE]
GO
ALTER TABLE [dbo].[ZZDMX3] ADD  CONSTRAINT [DF__ZZDMX3__F_DJ__135DC465]  DEFAULT ((0)) FOR [F_DJ]
GO
ALTER TABLE [dbo].[ZZDMX3] ADD  CONSTRAINT [DF__ZZDMX3__F_SL__1451E89E]  DEFAULT ((0)) FOR [F_SL]
GO
ALTER TABLE [dbo].[ZZDMX3] ADD  CONSTRAINT [DF__ZZDMX3__F_JE__15460CD7]  DEFAULT ((0)) FOR [F_JE]
GO
ALTER TABLE [dbo].[CRKD1]  WITH CHECK ADD FOREIGN KEY([F_DEPART])
REFERENCES [dbo].[DEPART] ([F_DM])
GO
ALTER TABLE [dbo].[CRKD1]  WITH CHECK ADD FOREIGN KEY([F_DOCTOR])
REFERENCES [dbo].[DOCTOR] ([F_DM])
GO
ALTER TABLE [dbo].[CRKD1]  WITH CHECK ADD FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
ALTER TABLE [dbo].[CRKD1]  WITH CHECK ADD FOREIGN KEY([F_PATIENT])
REFERENCES [dbo].[PATIENT] ([F_DM])
GO
ALTER TABLE [dbo].[CRKD1]  WITH CHECK ADD FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
ALTER TABLE [dbo].[CRKD2]  WITH CHECK ADD FOREIGN KEY([F_DEPART])
REFERENCES [dbo].[DEPART] ([F_DM])
GO
ALTER TABLE [dbo].[CRKD2]  WITH CHECK ADD FOREIGN KEY([F_DOCTOR])
REFERENCES [dbo].[DOCTOR] ([F_DM])
GO
ALTER TABLE [dbo].[CRKD2]  WITH CHECK ADD FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
ALTER TABLE [dbo].[CRKD2]  WITH CHECK ADD FOREIGN KEY([F_PATIENT])
REFERENCES [dbo].[PATIENT] ([F_DM])
GO
ALTER TABLE [dbo].[CRKD2]  WITH CHECK ADD FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
ALTER TABLE [dbo].[CRKD3]  WITH CHECK ADD FOREIGN KEY([F_DEPART])
REFERENCES [dbo].[DEPART] ([F_DM])
GO
ALTER TABLE [dbo].[CRKD3]  WITH CHECK ADD FOREIGN KEY([F_DOCTOR])
REFERENCES [dbo].[DOCTOR] ([F_DM])
GO
ALTER TABLE [dbo].[CRKD3]  WITH CHECK ADD FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
ALTER TABLE [dbo].[CRKD3]  WITH CHECK ADD FOREIGN KEY([F_PATIENT])
REFERENCES [dbo].[PATIENT] ([F_DM])
GO
ALTER TABLE [dbo].[CRKD3]  WITH CHECK ADD FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[VENDOR] ([F_DM])
GO
ALTER TABLE [dbo].[CRKDMX1]  WITH CHECK ADD FOREIGN KEY([F_DRUGBH])
REFERENCES [dbo].[DRUG] ([F_DRUGBH])
GO
ALTER TABLE [dbo].[CRKDMX2]  WITH CHECK ADD FOREIGN KEY([F_DRUGBH])
REFERENCES [dbo].[DRUG] ([F_DRUGBH])
GO
ALTER TABLE [dbo].[CRKDMX3]  WITH CHECK ADD FOREIGN KEY([F_DRUGBH])
REFERENCES [dbo].[DRUG] ([F_DRUGBH])
GO
ALTER TABLE [dbo].[DBD]  WITH CHECK ADD FOREIGN KEY([F_HW1])
REFERENCES [dbo].[HW] ([F_DM])
GO
ALTER TABLE [dbo].[DBD]  WITH CHECK ADD FOREIGN KEY([F_HW2])
REFERENCES [dbo].[HW] ([F_DM])
GO
ALTER TABLE [dbo].[DBD2]  WITH CHECK ADD FOREIGN KEY([F_HW1])
REFERENCES [dbo].[HW] ([F_DM])
GO
ALTER TABLE [dbo].[DBD2]  WITH CHECK ADD FOREIGN KEY([F_HW2])
REFERENCES [dbo].[HW] ([F_DM])
GO
ALTER TABLE [dbo].[DBDMX]  WITH CHECK ADD FOREIGN KEY([F_DRUGBH])
REFERENCES [dbo].[DRUG] ([F_DRUGBH])
GO
ALTER TABLE [dbo].[DBDMX2]  WITH CHECK ADD FOREIGN KEY([F_DRUGBH])
REFERENCES [dbo].[DRUG] ([F_DRUGBH])
GO
ALTER TABLE [dbo].[DBZZ]  WITH CHECK ADD FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
ALTER TABLE [dbo].[DBZZ]  WITH CHECK ADD FOREIGN KEY([F_DRUGBH])
REFERENCES [dbo].[DRUG] ([F_DRUGBH])
GO
ALTER TABLE [dbo].[DOCTOR]  WITH CHECK ADD FOREIGN KEY([F_DEPART])
REFERENCES [dbo].[DEPART] ([F_DM])
GO
ALTER TABLE [dbo].[JGZZ]  WITH CHECK ADD FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
ALTER TABLE [dbo].[JGZZ]  WITH CHECK ADD FOREIGN KEY([F_DRUGBH])
REFERENCES [dbo].[DRUG] ([F_DRUGBH])
GO
ALTER TABLE [dbo].[JHZZ]  WITH CHECK ADD FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
ALTER TABLE [dbo].[JHZZ]  WITH CHECK ADD FOREIGN KEY([F_DRUGBH])
REFERENCES [dbo].[DRUG] ([F_DRUGBH])
GO
ALTER TABLE [dbo].[KCMXZ]  WITH CHECK ADD FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
ALTER TABLE [dbo].[KCMXZ]  WITH CHECK ADD FOREIGN KEY([F_DRUGBH])
REFERENCES [dbo].[DRUG] ([F_DRUGBH])
GO
ALTER TABLE [dbo].[KCZZ]  WITH CHECK ADD FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
ALTER TABLE [dbo].[KCZZ]  WITH CHECK ADD FOREIGN KEY([F_DRUGBH])
REFERENCES [dbo].[DRUG] ([F_DRUGBH])
GO
ALTER TABLE [dbo].[SPPC]  WITH CHECK ADD FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
ALTER TABLE [dbo].[SPPC]  WITH CHECK ADD FOREIGN KEY([F_DRUGBH])
REFERENCES [dbo].[DRUG] ([F_DRUGBH])
GO
ALTER TABLE [dbo].[SYZZ]  WITH CHECK ADD FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
ALTER TABLE [dbo].[SYZZ]  WITH CHECK ADD FOREIGN KEY([F_DRUGBH])
REFERENCES [dbo].[DRUG] ([F_DRUGBH])
GO
ALTER TABLE [dbo].[XSMXZ]  WITH CHECK ADD FOREIGN KEY([F_DEPART])
REFERENCES [dbo].[DEPART] ([F_DM])
GO
ALTER TABLE [dbo].[XSMXZ]  WITH CHECK ADD FOREIGN KEY([F_DOCTOR])
REFERENCES [dbo].[DOCTOR] ([F_DM])
GO
ALTER TABLE [dbo].[XSMXZ]  WITH CHECK ADD FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
ALTER TABLE [dbo].[XSMXZ]  WITH CHECK ADD FOREIGN KEY([F_PATIENT])
REFERENCES [dbo].[PATIENT] ([F_DM])
GO
ALTER TABLE [dbo].[XSMXZ]  WITH CHECK ADD FOREIGN KEY([F_DRUGBH])
REFERENCES [dbo].[DRUG] ([F_DRUGBH])
GO
ALTER TABLE [dbo].[XSZZ]  WITH CHECK ADD FOREIGN KEY([F_HW])
REFERENCES [dbo].[HW] ([F_DM])
GO
ALTER TABLE [dbo].[XSZZ]  WITH CHECK ADD FOREIGN KEY([F_DRUGBH])
REFERENCES [dbo].[DRUG] ([F_DRUGBH])
GO
ALTER TABLE [dbo].[ZZD]  WITH CHECK ADD FOREIGN KEY([F_HW1])
REFERENCES [dbo].[HW] ([F_DM])
GO
ALTER TABLE [dbo].[ZZD]  WITH CHECK ADD FOREIGN KEY([F_HW2])
REFERENCES [dbo].[HW] ([F_DM])
GO
ALTER TABLE [dbo].[ZZD]  WITH CHECK ADD FOREIGN KEY([F_DRUGBH])
REFERENCES [dbo].[DRUG] ([F_DRUGBH])
GO
ALTER TABLE [dbo].[ZZD2]  WITH CHECK ADD FOREIGN KEY([F_DEPART])
REFERENCES [dbo].[DEPART] ([F_DM])
GO
ALTER TABLE [dbo].[ZZD2]  WITH CHECK ADD FOREIGN KEY([F_HW1])
REFERENCES [dbo].[HW] ([F_DM])
GO
ALTER TABLE [dbo].[ZZD2]  WITH CHECK ADD FOREIGN KEY([F_HW2])
REFERENCES [dbo].[HW] ([F_DM])
GO
ALTER TABLE [dbo].[ZZD2]  WITH CHECK ADD FOREIGN KEY([F_DRUGBH])
REFERENCES [dbo].[DRUG] ([F_DRUGBH])
GO
ALTER TABLE [dbo].[ZZMBMX]  WITH CHECK ADD FOREIGN KEY([F_DRUGBH1])
REFERENCES [dbo].[DRUG] ([F_DRUGBH])
GO
ALTER TABLE [dbo].[ZZMBMX]  WITH CHECK ADD FOREIGN KEY([F_DRUGBH2])
REFERENCES [dbo].[DRUG] ([F_DRUGBH])
GO
