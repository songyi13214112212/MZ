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
/****** Object:  Table [dbo].[SJMXZ]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SJMXZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SJMXZ](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单价LX] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JXSE] [float] NULL,
	[F_XXSE] [float] NULL,
	[F_ZCSE] [float] NULL,
	[行次] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SJZZ]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SJZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SJZZ](
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__SJZZ__80BE2AD523369112] PRIMARY KEY CLUSTERED 
(
	[商品编号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SYZZ]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SYZZ]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SYZZ](
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[数量S1] [float] NULL,
	[数量S2] [float] NULL,
	[数量S3] [float] NULL,
	[数量S4] [float] NULL,
	[数量S5] [float] NULL,
	[数量S6] [float] NULL,
	[数量S7] [float] NULL,
	[数量S8] [float] NULL,
	[数量S9] [float] NULL,
	[数量S10] [float] NULL,
	[数量S11] [float] NULL,
	[数量S12] [float] NULL,
	[金额S1] [float] NULL,
	[金额S2] [float] NULL,
	[金额S3] [float] NULL,
	[金额S4] [float] NULL,
	[金额S5] [float] NULL,
	[金额S6] [float] NULL,
	[金额S7] [float] NULL,
	[金额S8] [float] NULL,
	[金额S9] [float] NULL,
	[金额S10] [float] NULL,
	[金额S11] [float] NULL,
	[金额S12] [float] NULL,
	[数量F1] [float] NULL,
	[数量F2] [float] NULL,
	[数量F3] [float] NULL,
	[数量F4] [float] NULL,
	[数量F5] [float] NULL,
	[数量F6] [float] NULL,
	[数量F7] [float] NULL,
	[数量F8] [float] NULL,
	[数量F9] [float] NULL,
	[数量F10] [float] NULL,
	[数量F11] [float] NULL,
	[数量F12] [float] NULL,
	[金额F1] [float] NULL,
	[金额F2] [float] NULL,
	[金额F3] [float] NULL,
	[金额F4] [float] NULL,
	[金额F5] [float] NULL,
	[金额F6] [float] NULL,
	[金额F7] [float] NULL,
	[金额F8] [float] NULL,
	[金额F9] [float] NULL,
	[金额F10] [float] NULL,
	[金额F11] [float] NULL,
	[金额F12] [float] NULL,
	[税额1] [float] NULL,
	[税额2] [float] NULL,
	[税额3] [float] NULL,
	[税额4] [float] NULL,
	[税额5] [float] NULL,
	[税额6] [float] NULL,
	[税额7] [float] NULL,
	[税额8] [float] NULL,
	[税额9] [float] NULL,
	[税额10] [float] NULL,
	[税额11] [float] NULL,
	[税额12] [float] NULL,
 CONSTRAINT [PK__SYZZ__8278C624FF9D12C7] PRIMARY KEY CLUSTERED 
(
	[商品编号] ASC,
	[储位] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TEXTSOURCE]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TEXTSOURCE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TEXTSOURCE](
	[F_NAME] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SQL] [varchar](255) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK__TEXTSOUR__4A3EA67034D3151C] PRIMARY KEY CLUSTERED 
(
	[F_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[采购单]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[采购单]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[采购单](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NOT NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[结算方式] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[结算号] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[收发摘要] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CGD__3C196CCDA01B2E3B] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[采购单2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[采购单2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[采购单2](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NOT NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[结算方式] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[结算号] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[收发摘要] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CGD2__1BF30A66] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[采购单3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[采购单3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[采购单3](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NOT NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[结算方式] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[结算号] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[收发摘要] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CGD3__3C196CCDE1FC667B] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[采购单明细]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[采购单明细]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[采购单明细](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[单价] [float] NULL,
	[金额] [float] NULL,
	[税率] [float] NULL,
	[税额] [float] NULL,
	[税价合计] [float] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[数量结存] [float] NULL,
	[件数] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
 CONSTRAINT [PK__CGDMX__FEDF803E68DAFA8E] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[采购单明细2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[采购单明细2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[采购单明细2](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[单价] [float] NULL,
	[金额] [float] NULL,
	[税率] [float] NULL,
	[税额] [float] NULL,
	[税价合计] [float] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[数量结存] [float] NULL,
	[件数] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
 CONSTRAINT [PK__CGDMX2__FEDF803E73B895A4] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[采购单明细3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[采购单明细3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[采购单明细3](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[单价] [float] NULL,
	[金额] [float] NULL,
	[税率] [float] NULL,
	[税额] [float] NULL,
	[税价合计] [float] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[数量结存] [float] NULL,
	[件数] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
 CONSTRAINT [PK__CGDMX3__FEDF803E992C6BD5] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[操作员]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[操作员]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[操作员](
	[F_BH] [varchar](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_NAME] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_PASSWORD] [varchar](15) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ZN] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[F_RED] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__OPERATOR__2C6E30FA75F08BF2] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[出库单]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[出库单]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[出库单](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[单据号] [int] NOT NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[收发摘要] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据类别] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号0] [int] NULL,
	[备注] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[件数] [float] NULL,
 CONSTRAINT [PK__CKD__3C196CCDFAD491AE] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[出库单2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[出库单2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[出库单2](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[单据号] [int] NOT NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[收发摘要] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据类别] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号0] [int] NULL,
	[备注] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[件数] [float] NULL,
 CONSTRAINT [PK__CKD2__3C196CCDE7E90C3B] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[出库单3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[出库单3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[出库单3](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[单据号] [int] NOT NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[收发摘要] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据类别] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号0] [int] NULL,
	[备注] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[件数] [float] NULL,
 CONSTRAINT [PK__CKD3__3C196CCD0D4C8374] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[出库单明细]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[出库单明细]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[出库单明细](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[单价] [float] NULL,
	[金额] [float] NULL,
	[税率] [float] NULL,
	[税额] [float] NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
	[数量结存] [float] NULL,
	[件数] [float] NULL,
 CONSTRAINT [PK__CKDMX__FEDF803E8157CD51] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[出库单明细2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[出库单明细2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[出库单明细2](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[单价] [float] NULL,
	[金额] [float] NULL,
	[税率] [float] NULL,
	[税额] [float] NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
	[数量结存] [float] NULL,
	[件数] [float] NULL,
 CONSTRAINT [PK__CKDMX2__FEDF803EFC1209A0] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[出库单明细3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[出库单明细3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[出库单明细3](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[单价] [float] NULL,
	[金额] [float] NULL,
	[税率] [float] NULL,
	[税额] [float] NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
	[数量结存] [float] NULL,
	[件数] [float] NULL,
 CONSTRAINT [PK__CKDMX3__FEDF803EEED294CF] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[储位]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[储位]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[储位](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_LOCAL] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__HW__2C6EEFB6F86D8BAA] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[储位3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[储位3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[储位3](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__HW3__2C6EEFB65081F184] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[单据号]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[单据号]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[单据号](
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
	[调价单] [int] NULL,
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
/****** Object:  Table [dbo].[调拨单]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[调拨单]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[调拨单](
	[单据号] [int] NOT NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位1] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位2] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号0] [int] NULL,
 CONSTRAINT [PK__DBD__3C196CCD8879C2B0] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[调拨单2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[调拨单2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[调拨单2](
	[单据号] [int] NOT NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位1] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位2] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号0] [int] NULL,
 CONSTRAINT [PK__DBD2__3C196CCD156B4678] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[调拨单3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[调拨单3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[调拨单3](
	[单据号] [int] NOT NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位1] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位2] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号0] [int] NULL,
 CONSTRAINT [PK__DBD3__3C196CCD9CA3E653] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[调拨单明细]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[调拨单明细]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[调拨单明细](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[金额] [float] NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[数量结存] [float] NULL,
	[单价] [float] NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[件数] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
 CONSTRAINT [PK__DBDMX__FEDF803E4325DAEC] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[调拨单明细2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[调拨单明细2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[调拨单明细2](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[金额] [float] NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[数量结存] [float] NULL,
	[单价] [float] NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[件数] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
 CONSTRAINT [PK__DBDMX2__FEDF803EB7FEB2AF] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[调拨单明细3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[调拨单明细3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[调拨单明细3](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[金额] [float] NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[数量结存] [float] NULL,
	[单价] [float] NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[件数] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
 CONSTRAINT [PK__DBDMX3__FEDF803E76D2807F] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[调拨总帐]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[调拨总帐]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[调拨总帐](
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[数量S1] [float] NULL,
	[数量S2] [float] NULL,
	[数量S3] [float] NULL,
	[数量S4] [float] NULL,
	[数量S5] [float] NULL,
	[数量S6] [float] NULL,
	[数量S7] [float] NULL,
	[数量S8] [float] NULL,
	[数量S9] [float] NULL,
	[数量S10] [float] NULL,
	[数量S11] [float] NULL,
	[数量S12] [float] NULL,
	[金额S1] [float] NULL,
	[金额S2] [float] NULL,
	[金额S3] [float] NULL,
	[金额S4] [float] NULL,
	[金额S5] [float] NULL,
	[金额S6] [float] NULL,
	[金额S7] [float] NULL,
	[金额S8] [float] NULL,
	[金额S9] [float] NULL,
	[金额S10] [float] NULL,
	[金额S11] [float] NULL,
	[金额S12] [float] NULL,
	[数量F1] [float] NULL,
	[数量F2] [float] NULL,
	[数量F3] [float] NULL,
	[数量F4] [float] NULL,
	[数量F5] [float] NULL,
	[数量F6] [float] NULL,
	[数量F7] [float] NULL,
	[数量F8] [float] NULL,
	[数量F9] [float] NULL,
	[数量F10] [float] NULL,
	[数量F11] [float] NULL,
	[数量F12] [float] NULL,
	[金额F1] [float] NULL,
	[金额F2] [float] NULL,
	[金额F3] [float] NULL,
	[金额F4] [float] NULL,
	[金额F5] [float] NULL,
	[金额F6] [float] NULL,
	[金额F7] [float] NULL,
	[金额F8] [float] NULL,
	[金额F9] [float] NULL,
	[金额F10] [float] NULL,
	[金额F11] [float] NULL,
	[金额F12] [float] NULL,
 CONSTRAINT [PK__DBZZ__8278C624B951909A] PRIMARY KEY CLUSTERED 
(
	[商品编号] ASC,
	[储位] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[调价单]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[调价单]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[调价单](
	[单据号] [int] NOT NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__TJD__3C196CCDEE6DA61C] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[调价单2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[调价单2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[调价单2](
	[单据号] [int] NOT NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__TJD2__3C196CCD43537554] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[调价单3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[调价单3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[调价单3](
	[单据号] [int] NOT NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__TJD3__3C196CCDB906F597] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[调价单明细]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[调价单明细]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[调价单明细](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[商品名称] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品产地] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[批发价1] [float] NULL,
	[批发价2] [float] NULL,
	[零售价1] [float] NULL,
	[零售价2] [float] NULL,
	[数量] [float] NULL,
	[优惠价1] [float] NULL,
	[优惠价2] [float] NULL,
	[会员价2] [float] NULL,
	[会员价1] [float] NULL,
	[特惠价1] [float] NULL,
	[特惠价2] [float] NULL,
	[数量结存] [float] NULL,
 CONSTRAINT [PK__TJDMX__FEDF803E04957741] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[调价单明细2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[调价单明细2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[调价单明细2](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[商品名称] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品产地] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[批发价1] [float] NULL,
	[批发价2] [float] NULL,
	[零售价1] [float] NULL,
	[零售价2] [float] NULL,
	[数量] [float] NULL,
	[优惠价1] [float] NULL,
	[优惠价2] [float] NULL,
	[会员价2] [float] NULL,
	[会员价1] [float] NULL,
	[特惠价1] [float] NULL,
	[特惠价2] [float] NULL,
	[数量结存] [float] NULL,
 CONSTRAINT [PK__TJDMX2__FEDF803EA838513B] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[调价单明细3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[调价单明细3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[调价单明细3](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[商品名称] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品产地] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[批发价1] [float] NULL,
	[批发价2] [float] NULL,
	[零售价1] [float] NULL,
	[零售价2] [float] NULL,
	[数量] [float] NULL,
	[优惠价1] [float] NULL,
	[优惠价2] [float] NULL,
	[会员价2] [float] NULL,
	[会员价1] [float] NULL,
	[特惠价1] [float] NULL,
	[特惠价2] [float] NULL,
	[数量结存] [float] NULL,
 CONSTRAINT [PK__TJDMX3__FEDF803ED9CDFA57] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[调价单下载]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[调价单下载]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[调价单下载](
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[单据号] [int] NOT NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__TJDDOWNL__EFAFA63308F6349E] PRIMARY KEY CLUSTERED 
(
	[部门] ASC,
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[订货单]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[订货单]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[订货单](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NOT NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[结算号] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[收发摘要] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[结算方式] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号0] [int] NULL,
	[F_NEWSP] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DHD__3C196CCD450D79F6] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[订货单2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[订货单2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[订货单2](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NOT NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[结算号] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[收发摘要] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[结算方式] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号0] [int] NULL,
	[F_NEWSP] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DHD2__3C196CCDDD524C9E] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[订货单3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[订货单3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[订货单3](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NOT NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[结算号] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[收发摘要] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[结算方式] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号0] [int] NULL,
	[F_NEWSP] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__DHD3__3C196CCD4D95CC12] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[订货单明细]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[订货单明细]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[订货单明细](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[单价] [float] NULL,
	[扣率] [int] NULL,
	[金额] [float] NULL,
	[税率] [float] NULL,
	[税额] [float] NULL,
	[F_CB] [float] NULL,
	[税价合计] [float] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[数量结存] [float] NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[F_ZF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[单位成本] [float] NULL,
	[F_RATE] [float] NULL,
	[件数] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
 CONSTRAINT [PK__DHDMX__FEDF803EA2282998] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[订货单明细2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[订货单明细2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[订货单明细2](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[单价] [float] NULL,
	[扣率] [int] NULL,
	[金额] [float] NULL,
	[税率] [float] NULL,
	[税额] [float] NULL,
	[F_CB] [float] NULL,
	[税价合计] [float] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[数量结存] [float] NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[F_ZF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[单位成本] [float] NULL,
	[F_RATE] [float] NULL,
	[件数] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
 CONSTRAINT [PK__DHDMX2__FEDF803E3E7B94A0] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[订货单明细3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[订货单明细3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[订货单明细3](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[单价] [float] NULL,
	[扣率] [int] NULL,
	[金额] [float] NULL,
	[税率] [float] NULL,
	[税额] [float] NULL,
	[F_CB] [float] NULL,
	[税价合计] [float] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[数量结存] [float] NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[F_ZF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[单位成本] [float] NULL,
	[F_RATE] [float] NULL,
	[件数] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
 CONSTRAINT [PK__DHDMX3__FEDF803EEEF0AD26] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[供应商]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[供应商]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[供应商](
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
	[助记码] [varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__VENDOR__2C6EEFB680F72EAE] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[供应商3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[供应商3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[供应商3](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VENDOR3__2C6EEFB6562418A8] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[供应商分组]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[供应商分组]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[供应商分组](
	[F_DM] [varchar](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[供应商类别]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[供应商类别]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[供应商类别](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_JC] [int] NULL,
 CONSTRAINT [PK__VENDORLB__2C6EEFB682F9F1D2] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[供应商商品]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[供应商商品]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[供应商商品](
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[商品规格] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[商品产地] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[单价] [float] NULL,
	[商品名称] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VEN_SP__B14B6E5FCC1FD90D] PRIMARY KEY CLUSTERED 
(
	[F_VENDOR] ASC,
	[商品编号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[环境设置]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[环境设置]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[环境设置](
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DATA] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__ENV__2C6E30FA0399E7D1] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[会计期间]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[会计期间]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[会计期间](
	[F_YF] [int] NOT NULL,
	[F_START] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_END] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JZ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__KJQJ__2C6D7DE52ABFD463] PRIMARY KEY CLUSTERED 
(
	[F_YF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[会员]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[会员]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[会员](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
	[助记码] [varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
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
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VIP__2C6EEFB6841AD57C] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[会员2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[会员2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[会员2](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
	[助记码] [varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
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
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__VIP2__2C6EEFB647A6B32D] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[加工总帐]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[加工总帐]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[加工总帐](
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[数量S1] [float] NULL,
	[数量S2] [float] NULL,
	[数量S3] [float] NULL,
	[数量S4] [float] NULL,
	[数量S5] [float] NULL,
	[数量S6] [float] NULL,
	[数量S7] [float] NULL,
	[数量S8] [float] NULL,
	[数量S9] [float] NULL,
	[数量S10] [float] NULL,
	[数量S11] [float] NULL,
	[数量S12] [float] NULL,
	[金额S1] [float] NULL,
	[金额S2] [float] NULL,
	[金额S3] [float] NULL,
	[金额S4] [float] NULL,
	[金额S5] [float] NULL,
	[金额S6] [float] NULL,
	[金额S7] [float] NULL,
	[金额S8] [float] NULL,
	[金额S9] [float] NULL,
	[金额S10] [float] NULL,
	[金额S11] [float] NULL,
	[金额S12] [float] NULL,
	[数量F1] [float] NULL,
	[数量F2] [float] NULL,
	[数量F3] [float] NULL,
	[数量F4] [float] NULL,
	[数量F5] [float] NULL,
	[数量F6] [float] NULL,
	[数量F7] [float] NULL,
	[数量F8] [float] NULL,
	[数量F9] [float] NULL,
	[数量F10] [float] NULL,
	[数量F11] [float] NULL,
	[数量F12] [float] NULL,
	[金额F1] [float] NULL,
	[金额F2] [float] NULL,
	[金额F3] [float] NULL,
	[金额F4] [float] NULL,
	[金额F5] [float] NULL,
	[金额F6] [float] NULL,
	[金额F7] [float] NULL,
	[金额F8] [float] NULL,
	[金额F9] [float] NULL,
	[金额F10] [float] NULL,
	[金额F11] [float] NULL,
	[金额F12] [float] NULL,
 CONSTRAINT [PK__JGZZ__8278C624B8FB8E5E] PRIMARY KEY CLUSTERED 
(
	[商品编号] ASC,
	[储位] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[结算方式]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[结算方式]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[结算方式](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_JC] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JSFS__2C6EEFB69F0A9C15] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[进货报表]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[进货报表]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[进货报表](
	[F_CAPTION] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SP] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TOP] [int] NULL,
	[F_LEFT] [int] NULL,
	[F_ROWS] [int] NULL,
	[F_SIZE] [int] NULL,
	[F_LENGTH] [int] NULL,
	[F_WIDTH] [int] NULL,
	[F_ORIENT] [int] NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPLB] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [smallint] NULL,
	[F_TITLEFONT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BBFONT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_COLNUMBER] [int] NULL,
	[F_COLCAPTION] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_COLWIDTH] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JHBB__2C6E30FAED1CBAA0] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[进货单]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[进货单]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[进货单](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NOT NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[结算方式] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[结算号] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[收发摘要] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号0] [int] NULL,
	[F_FPLX] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JHD__3C196CCD08C98FBA] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[进货单2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[进货单2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[进货单2](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NOT NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[结算方式] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[结算号] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[收发摘要] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号0] [int] NULL,
	[F_FPLX] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JHD2__3C196CCD119C9B61] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[进货单3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[进货单3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[进货单3](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NOT NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[结算方式] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[结算号] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[收发摘要] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号0] [int] NULL,
	[F_FPLX] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__JHD3__3C196CCDC7F50504] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[进货单明细]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[进货单明细]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[进货单明细](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[单价] [float] NULL,
	[金额] [float] NULL,
	[税率] [float] NULL,
	[税额] [float] NULL,
	[税价合计] [float] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[数量结存] [float] NULL,
	[件数] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
	[F_HSDJ] [float] NULL,
	[扣率] [int] NULL,
 CONSTRAINT [PK__JHDMX__FEDF803E5A17A6D3] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[进货单明细2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[进货单明细2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[进货单明细2](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[单价] [float] NULL,
	[金额] [float] NULL,
	[税率] [float] NULL,
	[税额] [float] NULL,
	[税价合计] [float] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[数量结存] [float] NULL,
	[件数] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
	[F_HSDJ] [float] NULL,
	[扣率] [int] NULL,
 CONSTRAINT [PK__JHDMX2__FEDF803E91947CD7] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[进货单明细3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[进货单明细3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[进货单明细3](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[单价] [float] NULL,
	[金额] [float] NULL,
	[税率] [float] NULL,
	[税额] [float] NULL,
	[税价合计] [float] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[数量结存] [float] NULL,
	[件数] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
	[F_HSDJ] [float] NULL,
	[扣率] [int] NULL,
 CONSTRAINT [PK__JHDMX3__FEDF803E3BB65870] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[进货总帐]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[进货总帐]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[进货总帐](
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[数量1] [float] NULL,
	[件数] [float] NULL,
	[数量3] [float] NULL,
	[数量4] [float] NULL,
	[数量5] [float] NULL,
	[数量6] [float] NULL,
	[数量7] [float] NULL,
	[数量8] [float] NULL,
	[数量9] [float] NULL,
	[数量10] [float] NULL,
	[数量11] [float] NULL,
	[数量12] [float] NULL,
	[金额1] [float] NULL,
	[金额2] [float] NULL,
	[金额3] [float] NULL,
	[金额4] [float] NULL,
	[金额5] [float] NULL,
	[金额6] [float] NULL,
	[金额7] [float] NULL,
	[金额8] [float] NULL,
	[金额9] [float] NULL,
	[金额10] [float] NULL,
	[金额11] [float] NULL,
	[金额12] [float] NULL,
	[税额1] [float] NULL,
	[税额2] [float] NULL,
	[税额3] [float] NULL,
	[税额4] [float] NULL,
	[税额5] [float] NULL,
	[税额6] [float] NULL,
	[税额7] [float] NULL,
	[税额8] [float] NULL,
	[税额9] [float] NULL,
	[税额10] [float] NULL,
	[税额11] [float] NULL,
	[税额12] [float] NULL,
 CONSTRAINT [PK__JHZZ__8278C62480133093] PRIMARY KEY CLUSTERED 
(
	[商品编号] ASC,
	[储位] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[科室]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[科室]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[科室](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DE] [float] NULL,
 CONSTRAINT [PK__BM__2C6EEFB6F1B19B0F] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[科室3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[科室3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[科室3](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__BM3__2C6EEFB6A3EF4E50] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[客户]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[客户]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[客户](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
	[助记码] [varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
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
 CONSTRAINT [PK__CUSTOM__2C6EEFB6B7EF2A95] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[客户3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[客户3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[客户3](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CUSTOM3__2C6EEFB61AA6A8B9] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[客户等级]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[客户等级]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[客户等级](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[扣率] [int] NULL,
	[F_PRICENUMBER] [int] NULL,
 CONSTRAINT [PK__CUSTOMGR__2C6EEFB6B8D7F975] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[客户类别]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[客户类别]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[客户类别](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_JC] [int] NULL,
 CONSTRAINT [PK__CUSTOMLB__2C6EEFB686EC2C51] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[客户商品]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[客户商品]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[客户商品](
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MINDJ] [float] NULL,
	[F_MAXDJ] [float] NULL,
	[F_RECENTDJ] [float] NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NULL,
 CONSTRAINT [PK__CUS_SP__41B72FC07D3B63B6] PRIMARY KEY CLUSTERED 
(
	[F_CUSTOM] ASC,
	[商品编号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[客户组]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[客户组]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[客户组](
	[F_DM] [varchar](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](40) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK__CUSTOMGR__2C6EEFB6AB9F48AE] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[库存明细帐]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[库存明细帐]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[库存明细帐](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NOT NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[数量S] [float] NULL,
	[金额S] [float] NULL,
	[数量F] [float] NULL,
	[金额F] [float] NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[单价LX] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[行次] [int] NULL,
	[F_CX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[库存余额]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[库存余额]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[库存余额](
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[数量YE] [float] NULL,
 CONSTRAINT [PK__KCYE__8278C624A7A0036E] PRIMARY KEY CLUSTERED 
(
	[商品编号] ASC,
	[储位] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[库存总帐]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[库存总帐]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[库存总帐](
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[数量0] [float] NULL,
	[金额0] [float] NULL,
	[数量YE] [float] NULL,
	[金额YE] [float] NULL,
	[F_PJDJ] [float] NULL,
	[金额] [float] NULL,
	[F_JJ] [float] NULL,
	[数量S1] [float] NULL,
	[数量S2] [float] NULL,
	[数量S3] [float] NULL,
	[数量S4] [float] NULL,
	[数量S5] [float] NULL,
	[数量S6] [float] NULL,
	[数量S7] [float] NULL,
	[数量S8] [float] NULL,
	[数量S9] [float] NULL,
	[数量S10] [float] NULL,
	[数量S11] [float] NULL,
	[数量S12] [float] NULL,
	[金额S1] [float] NULL,
	[金额S2] [float] NULL,
	[金额S3] [float] NULL,
	[金额S4] [float] NULL,
	[金额S5] [float] NULL,
	[金额S6] [float] NULL,
	[金额S7] [float] NULL,
	[金额S8] [float] NULL,
	[金额S9] [float] NULL,
	[金额S10] [float] NULL,
	[金额S11] [float] NULL,
	[金额S12] [float] NULL,
	[数量F1] [float] NULL,
	[数量F2] [float] NULL,
	[数量F3] [float] NULL,
	[数量F4] [float] NULL,
	[数量F5] [float] NULL,
	[数量F6] [float] NULL,
	[数量F7] [float] NULL,
	[数量F8] [float] NULL,
	[数量F9] [float] NULL,
	[数量F10] [float] NULL,
	[数量F11] [float] NULL,
	[数量F12] [float] NULL,
	[金额F1] [float] NULL,
	[金额F2] [float] NULL,
	[金额F3] [float] NULL,
	[金额F4] [float] NULL,
	[金额F5] [float] NULL,
	[金额F6] [float] NULL,
	[金额F7] [float] NULL,
	[金额F8] [float] NULL,
	[金额F9] [float] NULL,
	[金额F10] [float] NULL,
	[金额F11] [float] NULL,
	[金额F12] [float] NULL,
 CONSTRAINT [PK__KCZZ__8278C6243A0FF238] PRIMARY KEY CLUSTERED 
(
	[商品编号] ASC,
	[储位] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[零售]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[零售]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[零售](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[金额] [float] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[零售11]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[零售11]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[零售11](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[金额] [float] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[零售2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[零售2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[零售2](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[金额] [float] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[零售单据号]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[零售单据号]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[零售单据号](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[单据号] [int] NULL,
 CONSTRAINT [PK__RETAILDJ__6F5CCECA47B02532] PRIMARY KEY CLUSTERED 
(
	[日期时间] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[零售号]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[零售号]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[零售号](
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
/****** Object:  Table [dbo].[零售明细]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[零售明细]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[零售明细](
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品名称] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[单价] [float] NULL,
	[金额] [float] NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[商品产地] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NULL,
	[扣率] [int] NULL,
	[零售价] [float] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFPH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_NEWPC] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[结算方式] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[零售明细11]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[零售明细11]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[零售明细11](
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品名称] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[单价] [float] NULL,
	[金额] [float] NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[商品产地] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NULL,
	[扣率] [int] NULL,
	[零售价] [float] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFPH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_NEWPC] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[结算方式] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[零售明细2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[零售明细2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[零售明细2](
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[商品名称] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[单价] [float] NULL,
	[金额] [float] NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CZY] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[商品产地] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[F_TIME] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NULL,
	[扣率] [int] NULL,
	[零售价] [float] NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_IFPH] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_NEWPC] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[结算方式] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[盘点单]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[盘点单]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[盘点单](
	[单据号] [int] NOT NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[保管员] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PDD__3C196CCD3FF44738] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[盘点单2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[盘点单2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[盘点单2](
	[单据号] [int] NOT NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[保管员] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PDD2__3C196CCD55472D95] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[盘点单3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[盘点单3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[盘点单3](
	[单据号] [int] NOT NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[保管员] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PDD3__3C196CCD67715705] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[盘点单明细]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[盘点单明细]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[盘点单明细](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PC] [int] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[数量YE] [float] NULL,
	[F_PDSL] [float] NULL,
	[F_PYSL] [float] NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[零售价] [float] NULL,
 CONSTRAINT [PK__PDDMX__FEDF803E10EEE3D1] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[盘点单明细2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[盘点单明细2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[盘点单明细2](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PC] [int] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[数量YE] [float] NULL,
	[F_PDSL] [float] NULL,
	[F_PYSL] [float] NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[零售价] [float] NULL,
 CONSTRAINT [PK__PDDMX2__FEDF803EA572EEDD] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[盘点单明细3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[盘点单明细3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[盘点单明细3](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PC] [int] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[数量YE] [float] NULL,
	[F_PDSL] [float] NULL,
	[F_PYSL] [float] NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[零售价] [float] NULL,
 CONSTRAINT [PK__PDDMX3__FEDF803E05F568DC] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[配送单]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[配送单]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[配送单](
	[日期时间] [varchar](20) NULL,
	[单据号] [int] NOT NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__PSD__3C196CCD341FC16A] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[配送单明细]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[配送单明细]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[配送单明细](
	[单据号] [int] NOT NULL,
	[行次] [float] NOT NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[商品名称] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[单位1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[包装] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[参数] [float] NULL,
	[商品产地] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[商品规格] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[数量1] [float] NULL,
	[件数] [float] NULL,
	[数量3] [float] NULL,
	[数量4] [float] NULL,
	[数量5] [float] NULL,
	[数量6] [float] NULL,
	[数量7] [float] NULL,
	[数量] [float] NULL,
 CONSTRAINT [PK__PSDMX__FEDF803EC68E815F] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[签订单]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[签订单]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[签订单](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NOT NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PSZQ] [int] NULL,
	[F_LJZQ] [int] NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__QDD__3C196CCD228D7CB9] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[签订单2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[签订单2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[签订单2](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NOT NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PSZQ] [int] NULL,
	[F_LJZQ] [int] NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__QDD2__3C196CCD00429B67] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[签订单3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[签订单3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[签订单3](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NOT NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PSZQ] [int] NULL,
	[F_LJZQ] [int] NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__QDD3__3C196CCDB58CCF7F] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[签订单明细]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[签订单明细]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[签订单明细](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[件数] [float] NULL,
	[数量结存] [float] NULL,
	[F_RJXL] [float] NULL,
	[F_JYSL] [float] NULL,
	[税率] [float] NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
 CONSTRAINT [PK__QDDMX__FEDF803EF0B7646C] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[签订单明细2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[签订单明细2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[签订单明细2](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[件数] [float] NULL,
	[数量结存] [float] NULL,
	[F_RJXL] [float] NULL,
	[F_JYSL] [float] NULL,
	[税率] [float] NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
 CONSTRAINT [PK__QDDMX2__FEDF803E8EA94AEE] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[签订单明细3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[签订单明细3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[签订单明细3](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[件数] [float] NULL,
	[数量结存] [float] NULL,
	[F_RJXL] [float] NULL,
	[F_JYSL] [float] NULL,
	[税率] [float] NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
 CONSTRAINT [PK__QDDMX3__FEDF803E38979101] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[入库单]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[入库单]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[入库单](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NOT NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[收发摘要] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据类别] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号0] [int] NULL,
	[备注] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[件数] [float] NULL,
 CONSTRAINT [PK__RKD__3C196CCD29AB2FB0] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[入库单2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[入库单2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[入库单2](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NOT NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[收发摘要] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据类别] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号0] [int] NULL,
	[备注] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[件数] [float] NULL,
 CONSTRAINT [PK__RKD2__3C196CCDAD22A49B] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[入库单3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[入库单3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[入库单3](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NOT NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[收发摘要] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据类别] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号0] [int] NULL,
	[备注] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[件数] [float] NULL,
 CONSTRAINT [PK__RKD3__3C196CCDF6A10E62] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[入库单明细]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[入库单明细]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[入库单明细](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[单价] [float] NULL,
	[金额] [float] NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_YLF] [float] NULL,
	[F_JGF] [float] NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
	[数量结存] [float] NULL,
	[件数] [float] NULL,
	[扣率] [int] NULL,
 CONSTRAINT [PK__RKDMX__FEDF803E27B9CAC5] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[入库单明细2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[入库单明细2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[入库单明细2](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[数量] [float] NULL,
	[单价] [float] NULL,
	[金额] [float] NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_YLF] [float] NULL,
	[F_JGF] [float] NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
	[数量结存] [float] NULL,
	[件数] [float] NULL,
	[扣率] [int] NULL,
 CONSTRAINT [PK__RKDMX2__FEDF803E81EEDF34] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[入库单明细3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[入库单明细3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[入库单明细3](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[单价] [float] NULL,
	[金额] [float] NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[F_YLF] [float] NULL,
	[F_JGF] [float] NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
	[数量结存] [float] NULL,
	[件数] [float] NULL,
	[扣率] [int] NULL,
 CONSTRAINT [PK__RKDMX3__FEDF803EA61DE24A] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[商品]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[商品]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[商品](
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[商品名称] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[成本发放] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[库存高限] [float] NULL,
	[库存低限] [float] NULL,
	[商品规格] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[税率] [float] NULL,
	[包装] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[参数] [float] NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品产地] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[保质期] [int] NULL,
	[助记码] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[保管员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
	[单位成本] [float] NULL,
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
	[最大批次] [int] NULL,
	[F_IFSJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_RATE] [float] NULL,
	[F_FUNCTION] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[批号成本] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
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
	[F_GNZZ] [varchar](80) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YF] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__SP__80BE2AD5AC06A047] PRIMARY KEY CLUSTERED 
(
	[商品编号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[商品2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[商品2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[商品2](
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__SP2__6465D25266818654] PRIMARY KEY CLUSTERED 
(
	[部门] ASC,
	[商品编号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[商品3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[商品3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[商品3](
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__SP3__80BE2AD534BCE3A1] PRIMARY KEY CLUSTERED 
(
	[商品编号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[商品类别]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[商品类别]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[商品类别](
	[F_LBBH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_LBBC] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_QCSL] [float] NULL,
	[F_QCCB] [float] NULL,
	[F_JC] [int] NULL,
 CONSTRAINT [PK__SPLB__BB2BA8135DD036EC] PRIMARY KEY CLUSTERED 
(
	[F_LBBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[商品历史]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[商品历史]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[商品历史](
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[行次] [int] NOT NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品名称] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[商品规格] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[商品产地] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[零售价] [float] NULL,
	[参数] [int] NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__SPSHORT__EEA8DC0CCCD4D1D3] PRIMARY KEY CLUSTERED 
(
	[部门] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[商品批次]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[商品批次]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[商品批次](
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[金额] [float] NULL,
 CONSTRAINT [PK__SPPC__AF54A8AA302FF9B6] PRIMARY KEY CLUSTERED 
(
	[商品编号] ASC,
	[储位] ASC,
	[批号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[商品下载]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[商品下载]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[商品下载](
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[商品名称] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[成本发放] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[库存高限] [float] NULL,
	[库存低限] [float] NULL,
	[商品规格] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[税率] [float] NULL,
	[包装] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[参数] [float] NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品产地] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[保质期] [int] NULL,
	[助记码] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[保管员] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
	[单位成本] [float] NULL,
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
	[最大批次] [int] NULL,
	[F_IFSJ] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_RATE] [float] NULL,
	[F_FUNCTION] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[批号成本] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
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
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NOT NULL,
	[F_EDITDATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_INSERTDATE] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XZR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_SPDOWN] PRIMARY KEY NONCLUSTERED 
(
	[商品编号] ASC,
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[收发摘要]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[收发摘要]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[收发摘要](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__SFZY__2C6EEFB6EC6AE290] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[销售报表]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[销售报表]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[销售报表](
	[F_CAPTION] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SP] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_TOP] [int] NULL,
	[F_LEFT] [int] NULL,
	[F_ROWS] [int] NULL,
	[F_SIZE] [int] NULL,
	[F_LENGTH] [int] NULL,
	[F_WIDTH] [int] NULL,
	[F_ORIENT] [int] NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BH] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_SPLB] [varchar](12) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [smallint] NULL,
	[F_TITLEFONT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_BBFONT] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_COLNUMBER] [int] NULL,
	[F_COLCAPTION] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_COLWIDTH] [varchar](255) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__XSBB__2C6E30FA27D76B2C] PRIMARY KEY CLUSTERED 
(
	[F_BH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[销售单]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[销售单]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[销售单](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NOT NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[结算号] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[收发摘要] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[结算方式] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号0] [int] NULL,
	[F_DHDJH] [int] NULL,
 CONSTRAINT [PK__XHD__3C196CCD5BA35C66] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[销售单2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[销售单2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[销售单2](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NOT NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[结算号] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[收发摘要] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[结算方式] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号0] [int] NULL,
	[F_DHDJH] [int] NULL,
 CONSTRAINT [PK__XHD2__3C196CCD4B0B6D46] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[销售单3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[销售单3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[销售单3](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NOT NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JS] [float] NULL,
	[结算号] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XSLB] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[收发摘要] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[结算方式] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_HZ] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_FPLX] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号0] [int] NULL,
	[F_DHDJH] [int] NULL,
 CONSTRAINT [PK__XHD3__3C196CCD6381AB65] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[销售单明细]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[销售单明细]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[销售单明细](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[单价] [float] NULL,
	[扣率] [int] NULL,
	[金额] [float] NULL,
	[税率] [float] NULL,
	[税额] [float] NULL,
	[F_CB] [float] NULL,
	[税价合计] [float] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[数量结存] [float] NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[F_ZF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[单位成本] [float] NULL,
	[F_RATE] [float] NULL,
	[件数] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
	[F_PC] [int] NULL,
 CONSTRAINT [PK__XHDMX__0015E5C7] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[销售单明细2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[销售单明细2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[销售单明细2](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[单价] [float] NULL,
	[扣率] [int] NULL,
	[金额] [float] NULL,
	[税率] [float] NULL,
	[税额] [float] NULL,
	[F_CB] [float] NULL,
	[税价合计] [float] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[数量结存] [float] NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[F_ZF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[单位成本] [float] NULL,
	[F_RATE] [float] NULL,
	[件数] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
	[F_PC] [int] NULL,
 CONSTRAINT [PK__XHDMX2__010A0A00] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[销售单明细3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[销售单明细3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[销售单明细3](
	[单据号] [int] NOT NULL,
	[行次] [int] NOT NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[单价] [float] NULL,
	[扣率] [int] NULL,
	[金额] [float] NULL,
	[税率] [float] NULL,
	[税额] [float] NULL,
	[F_CB] [float] NULL,
	[税价合计] [float] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UC] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[F_UN] [float] NULL,
	[数量结存] [float] NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[F_ZF] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[单位成本] [float] NULL,
	[F_RATE] [float] NULL,
	[件数] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
	[F_PC] [int] NULL,
 CONSTRAINT [PK__XHDMX3__01FE2E39] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[销售类别]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[销售类别]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[销售类别](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[单价] [int] NULL,
 CONSTRAINT [PK__XSLB__2C6EEFB60C08DBE3] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[销售明细帐]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[销售明细帐]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[销售明细帐](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[数量] [float] NULL,
	[金额] [float] NULL,
	[F_CB] [float] NULL,
	[单价] [float] NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[税额] [float] NULL,
	[行次] [int] NULL,
	[F_CX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[销售总帐]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[销售总帐]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[销售总帐](
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[储位] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[数量1] [float] NULL,
	[件数] [float] NULL,
	[数量3] [float] NULL,
	[数量4] [float] NULL,
	[数量5] [float] NULL,
	[数量6] [float] NULL,
	[数量7] [float] NULL,
	[数量8] [float] NULL,
	[数量9] [float] NULL,
	[数量10] [float] NULL,
	[数量11] [float] NULL,
	[数量12] [float] NULL,
	[金额1] [float] NULL,
	[金额2] [float] NULL,
	[金额3] [float] NULL,
	[金额4] [float] NULL,
	[金额5] [float] NULL,
	[金额6] [float] NULL,
	[金额7] [float] NULL,
	[金额8] [float] NULL,
	[金额9] [float] NULL,
	[金额10] [float] NULL,
	[金额11] [float] NULL,
	[金额12] [float] NULL,
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
	[税额1] [float] NULL,
	[税额2] [float] NULL,
	[税额3] [float] NULL,
	[税额4] [float] NULL,
	[税额5] [float] NULL,
	[税额6] [float] NULL,
	[税额7] [float] NULL,
	[税额8] [float] NULL,
	[税额9] [float] NULL,
	[税额10] [float] NULL,
	[税额11] [float] NULL,
	[税额12] [float] NULL,
 CONSTRAINT [PK__XSZZ__8278C62462B3BEF9] PRIMARY KEY CLUSTERED 
(
	[商品编号] ASC,
	[储位] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[业务员]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[业务员]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[业务员](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_MC] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_DE] [float] NULL,
 CONSTRAINT [PK__YWY__2C6EEFB6D00B939D] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[业务员3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[业务员3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[业务员3](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__YWY3__2C6EEFB61057B0D1] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[应付核销帐]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[应付核销帐]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[应付核销帐](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[日期时间JH] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[日期时间FK] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[单据号JH] [int] NOT NULL,
	[单据号FK] [int] NOT NULL,
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JH] [float] NULL,
	[F_FK] [float] NULL,
	[F_HXJE] [float] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[应付结算单2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[应付结算单2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[应付结算单2](
	[单据号] [int] NOT NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SKR] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CN] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[结算方式] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[结算号] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSJE] [float] NULL,
	[F_BZ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YE] [float] NULL,
	[F_HXJE] [float] NULL,
 CONSTRAINT [PK__YFJSD2__3C196CCD2E517C85] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[应付明细帐]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[应付明细帐]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[应付明细帐](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VENDOR] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[单价LX] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SR] [float] NULL,
	[F_FC] [float] NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YE] [float] NULL,
	[F_HXJE] [float] NULL,
	[F_CX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[应付总帐]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[应付总帐]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[应付总帐](
	[F_DM] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__YFZZ__CEA80CB9A7421E6E] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC,
	[部门] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[应收核销帐]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[应收核销帐]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[应收核销帐](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[日期时间XS] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[日期时间SK] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[单据号XS] [int] NOT NULL,
	[单据号SK] [int] NOT NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_XS] [float] NULL,
	[F_SK] [float] NULL,
	[F_HXJE] [float] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[应收结算单2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[应收结算单2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[应收结算单2](
	[单据号] [int] NOT NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SKR] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CN] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[结算方式] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[结算号] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_JSJE] [float] NULL,
	[F_BZ] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YE] [float] NULL,
	[F_HXJE] [float] NULL,
 CONSTRAINT [PK__YSJSD2__3C196CCDE065BAE1] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[应收明细帐]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[应收明细帐]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[应收明细帐](
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CUSTOM] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[单价LX] [varchar](2) COLLATE Chinese_PRC_CI_AS NULL,
	[单据号] [int] NULL,
	[F_ZY] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SR] [float] NULL,
	[F_FC] [float] NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[F_YE] [float] NULL,
	[F_HXJE] [float] NULL,
	[F_CX] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[应收总帐]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[应收总帐]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[应收总帐](
	[F_DM] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
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
 CONSTRAINT [PK__YSZZ__CEA80CB9D67869BB] PRIMARY KEY CLUSTERED 
(
	[F_DM] ASC,
	[部门] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[帐套参数]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[帐套参数]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[帐套参数](
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
/****** Object:  Table [dbo].[字段定制]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[字段定制]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[字段定制](
	[单价LX] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[F_INDEX] [int] NOT NULL,
	[F_FIELD] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_DISPLAYLABEL] [varchar](100) COLLATE Chinese_PRC_CI_AS NULL,
	[F_CAPTION] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[F_WIDTH] [int] NULL,
	[F_READONLY] [varchar](5) COLLATE Chinese_PRC_CI_AS NULL,
	[F_VISIBLE] [varchar](5) COLLATE Chinese_PRC_CI_AS NULL,
	[F_PANEL] [varchar](5) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__CUSTOMDJ__AD8EBB6A29FB765F] PRIMARY KEY CLUSTERED 
(
	[单价LX] ASC,
	[F_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[组装单]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[组装单]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[组装单](
	[单据号] [int] NOT NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位1] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位2] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[金额] [float] NULL,
	[商品名称] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SHL] [float] NULL,
	[单位1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[包装] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[参数] [float] NULL,
	[单据号0] [int] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__ZZD__3C196CCD6238C92B] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[组装单2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[组装单2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[组装单2](
	[单据号] [int] NOT NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位1] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位2] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[金额] [float] NULL,
	[商品名称] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SHL] [float] NULL,
	[单位1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[包装] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[参数] [float] NULL,
	[单据号0] [int] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__ZZD2__3C196CCD85CF102B] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[组装单3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[组装单3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[组装单3](
	[单据号] [int] NOT NULL,
	[日期时间] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[部门] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[业务员] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位1] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[储位2] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[发票号] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[提交] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[制单] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[金额] [float] NULL,
	[商品名称] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_SHL] [float] NULL,
	[单位1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[包装] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[参数] [float] NULL,
	[单据号0] [int] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](10) COLLATE Chinese_PRC_CI_AS NULL,
	[发票性质] [varchar](4) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK__ZZD3__3C196CCD8D4055B1] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[组装单明细]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[组装单明细]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[组装单明细](
	[单据号] [int] NOT NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[行次] [int] NOT NULL,
	[单价] [float] NULL,
	[数量] [float] NULL,
	[金额] [float] NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品名称] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[商品产地] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单位1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[包装] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[参数] [float] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[数量结存] [float] NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
 CONSTRAINT [PK__ZZDMX__FEDF803E914740FF] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[组装单明细2]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[组装单明细2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[组装单明细2](
	[单据号] [int] NOT NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[行次] [int] NOT NULL,
	[单价] [float] NULL,
	[数量] [float] NULL,
	[金额] [float] NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品名称] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[商品产地] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单位1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[包装] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[参数] [float] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[数量结存] [float] NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
 CONSTRAINT [PK__ZZDMX2__FEDF803EA1FA1CDA] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[组装单明细3]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[组装单明细3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[组装单明细3](
	[单据号] [int] NOT NULL,
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[行次] [int] NOT NULL,
	[单价] [float] NULL,
	[数量] [float] NULL,
	[金额] [float] NULL,
	[条码] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[商品名称] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[商品产地] [varchar](8) COLLATE Chinese_PRC_CI_AS NULL,
	[F_GG] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[单位1] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[包装] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[参数] [float] NULL,
	[批号] [varchar](40) COLLATE Chinese_PRC_CI_AS NULL,
	[到期] [varchar](20) COLLATE Chinese_PRC_CI_AS NULL,
	[F_ISCB] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[数量结存] [float] NULL,
	[批发价] [float] NULL,
	[零售价] [float] NULL,
	[优惠价] [float] NULL,
	[会员价] [float] NULL,
	[特惠价] [float] NULL,
 CONSTRAINT [PK__ZZDMX3__12349602] PRIMARY KEY CLUSTERED 
(
	[单据号] ASC,
	[行次] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[组装模板]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[组装模板]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[组装模板](
	[商品编号] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[商品名称] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[组装模板明细]    Script Date: 2023/5/16 23:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[组装模板明细]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[组装模板明细](
	[商品编号1] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[商品编号2] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[商品名称] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[单位] [varchar](6) COLLATE Chinese_PRC_CI_AS NULL,
	[数量] [float] NULL,
	[F_FIXED] [varchar](1) COLLATE Chinese_PRC_CI_AS NULL,
	[行次] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [KCMXZ_DATE]    Script Date: 2023/5/16 23:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[库存明细帐]') AND name = N'KCMXZ_DATE')
CREATE NONCLUSTERED INDEX [KCMXZ_DATE] ON [dbo].[库存明细帐]
(
	[日期时间] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [KCMXZ_DJH]    Script Date: 2023/5/16 23:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[库存明细帐]') AND name = N'KCMXZ_DJH')
CREATE NONCLUSTERED INDEX [KCMXZ_DJH] ON [dbo].[库存明细帐]
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [SP_TM]    Script Date: 2023/5/16 23:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[商品]') AND name = N'SP_TM')
CREATE NONCLUSTERED INDEX [SP_TM] ON [dbo].[商品]
(
	[条码] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [SPMC]    Script Date: 2023/5/16 23:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[商品]') AND name = N'SPMC')
CREATE NONCLUSTERED INDEX [SPMC] ON [dbo].[商品]
(
	[商品名称] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ZJM]    Script Date: 2023/5/16 23:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[商品]') AND name = N'ZJM')
CREATE NONCLUSTERED INDEX [ZJM] ON [dbo].[商品]
(
	[助记码] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [SFZY_MC]    Script Date: 2023/5/16 23:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[收发摘要]') AND name = N'SFZY_MC')
CREATE NONCLUSTERED INDEX [SFZY_MC] ON [dbo].[收发摘要]
(
	[F_MC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [XSMXZ_DATE]    Script Date: 2023/5/16 23:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[销售明细帐]') AND name = N'XSMXZ_DATE')
CREATE NONCLUSTERED INDEX [XSMXZ_DATE] ON [dbo].[销售明细帐]
(
	[日期时间] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [XSMXZ_DJH]    Script Date: 2023/5/16 23:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[销售明细帐]') AND name = N'XSMXZ_DJH')
CREATE NONCLUSTERED INDEX [XSMXZ_DJH] ON [dbo].[销售明细帐]
(
	[单据号] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YFHXZ_DATE]    Script Date: 2023/5/16 23:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[应付核销帐]') AND name = N'YFHXZ_DATE')
CREATE NONCLUSTERED INDEX [YFHXZ_DATE] ON [dbo].[应付核销帐]
(
	[日期时间] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YFHXZ_DATESK]    Script Date: 2023/5/16 23:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[应付核销帐]') AND name = N'YFHXZ_DATESK')
CREATE NONCLUSTERED INDEX [YFHXZ_DATESK] ON [dbo].[应付核销帐]
(
	[日期时间FK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YFHXZ_DATEXS]    Script Date: 2023/5/16 23:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[应付核销帐]') AND name = N'YFHXZ_DATEXS')
CREATE NONCLUSTERED INDEX [YFHXZ_DATEXS] ON [dbo].[应付核销帐]
(
	[日期时间JH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [YFHXZ_DJHFK]    Script Date: 2023/5/16 23:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[应付核销帐]') AND name = N'YFHXZ_DJHFK')
CREATE NONCLUSTERED INDEX [YFHXZ_DJHFK] ON [dbo].[应付核销帐]
(
	[单据号FK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [YFHXZ_DJHJH]    Script Date: 2023/5/16 23:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[应付核销帐]') AND name = N'YFHXZ_DJHJH')
CREATE NONCLUSTERED INDEX [YFHXZ_DJHJH] ON [dbo].[应付核销帐]
(
	[单据号JH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YFHXZ_VENDOR]    Script Date: 2023/5/16 23:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[应付核销帐]') AND name = N'YFHXZ_VENDOR')
CREATE NONCLUSTERED INDEX [YFHXZ_VENDOR] ON [dbo].[应付核销帐]
(
	[F_VENDOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YSHXZ_CUSTOM]    Script Date: 2023/5/16 23:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[应收核销帐]') AND name = N'YSHXZ_CUSTOM')
CREATE NONCLUSTERED INDEX [YSHXZ_CUSTOM] ON [dbo].[应收核销帐]
(
	[F_CUSTOM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YSHXZ_DATE]    Script Date: 2023/5/16 23:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[应收核销帐]') AND name = N'YSHXZ_DATE')
CREATE NONCLUSTERED INDEX [YSHXZ_DATE] ON [dbo].[应收核销帐]
(
	[日期时间] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YSHXZ_DATESK]    Script Date: 2023/5/16 23:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[应收核销帐]') AND name = N'YSHXZ_DATESK')
CREATE NONCLUSTERED INDEX [YSHXZ_DATESK] ON [dbo].[应收核销帐]
(
	[日期时间SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [YSHXZ_DATEXS]    Script Date: 2023/5/16 23:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[应收核销帐]') AND name = N'YSHXZ_DATEXS')
CREATE NONCLUSTERED INDEX [YSHXZ_DATEXS] ON [dbo].[应收核销帐]
(
	[日期时间XS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [YSHXZ_DJHSK]    Script Date: 2023/5/16 23:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[应收核销帐]') AND name = N'YSHXZ_DJHSK')
CREATE NONCLUSTERED INDEX [YSHXZ_DJHSK] ON [dbo].[应收核销帐]
(
	[单据号SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [YSHXZ_DJHXS]    Script Date: 2023/5/16 23:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[应收核销帐]') AND name = N'YSHXZ_DJHXS')
CREATE NONCLUSTERED INDEX [YSHXZ_DJHXS] ON [dbo].[应收核销帐]
(
	[单据号XS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量S1__46535886]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量S1__46535886]  DEFAULT ((0)) FOR [数量S1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量S2__47477CBF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量S2__47477CBF]  DEFAULT ((0)) FOR [数量S2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量S3__483BA0F8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量S3__483BA0F8]  DEFAULT ((0)) FOR [数量S3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量S4__492FC531]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量S4__492FC531]  DEFAULT ((0)) FOR [数量S4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量S5__4A23E96A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量S5__4A23E96A]  DEFAULT ((0)) FOR [数量S5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量S6__4B180DA3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量S6__4B180DA3]  DEFAULT ((0)) FOR [数量S6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量S7__4C0C31DC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量S7__4C0C31DC]  DEFAULT ((0)) FOR [数量S7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量S8__4D005615]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量S8__4D005615]  DEFAULT ((0)) FOR [数量S8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量S9__4DF47A4E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量S9__4DF47A4E]  DEFAULT ((0)) FOR [数量S9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量S10__4EE89E87]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量S10__4EE89E87]  DEFAULT ((0)) FOR [数量S10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量S11__4FDCC2C0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量S11__4FDCC2C0]  DEFAULT ((0)) FOR [数量S11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量S12__50D0E6F9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量S12__50D0E6F9]  DEFAULT ((0)) FOR [数量S12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额S1__51C50B32]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额S1__51C50B32]  DEFAULT ((0)) FOR [金额S1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额S2__52B92F6B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额S2__52B92F6B]  DEFAULT ((0)) FOR [金额S2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额S3__53AD53A4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额S3__53AD53A4]  DEFAULT ((0)) FOR [金额S3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额S4__54A177DD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额S4__54A177DD]  DEFAULT ((0)) FOR [金额S4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额S5__55959C16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额S5__55959C16]  DEFAULT ((0)) FOR [金额S5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额S6__5689C04F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额S6__5689C04F]  DEFAULT ((0)) FOR [金额S6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额S7__577DE488]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额S7__577DE488]  DEFAULT ((0)) FOR [金额S7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额S8__587208C1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额S8__587208C1]  DEFAULT ((0)) FOR [金额S8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额S9__59662CFA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额S9__59662CFA]  DEFAULT ((0)) FOR [金额S9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额S10__5A5A5133]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额S10__5A5A5133]  DEFAULT ((0)) FOR [金额S10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额S11__5B4E756C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额S11__5B4E756C]  DEFAULT ((0)) FOR [金额S11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额S12__5C4299A5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额S12__5C4299A5]  DEFAULT ((0)) FOR [金额S12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量F1__5D36BDDE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量F1__5D36BDDE]  DEFAULT ((0)) FOR [数量F1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量F2__5E2AE217]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量F2__5E2AE217]  DEFAULT ((0)) FOR [数量F2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量F3__5F1F0650]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量F3__5F1F0650]  DEFAULT ((0)) FOR [数量F3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量F4__60132A89]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量F4__60132A89]  DEFAULT ((0)) FOR [数量F4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量F5__61074EC2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量F5__61074EC2]  DEFAULT ((0)) FOR [数量F5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量F6__61FB72FB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量F6__61FB72FB]  DEFAULT ((0)) FOR [数量F6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量F7__62EF9734]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量F7__62EF9734]  DEFAULT ((0)) FOR [数量F7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量F8__63E3BB6D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量F8__63E3BB6D]  DEFAULT ((0)) FOR [数量F8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量F9__64D7DFA6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量F9__64D7DFA6]  DEFAULT ((0)) FOR [数量F9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量F10__65CC03DF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量F10__65CC03DF]  DEFAULT ((0)) FOR [数量F10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量F11__66C02818]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量F11__66C02818]  DEFAULT ((0)) FOR [数量F11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__数量F12__67B44C51]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__数量F12__67B44C51]  DEFAULT ((0)) FOR [数量F12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额F1__68A8708A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额F1__68A8708A]  DEFAULT ((0)) FOR [金额F1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额F2__699C94C3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额F2__699C94C3]  DEFAULT ((0)) FOR [金额F2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额F3__6A90B8FC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额F3__6A90B8FC]  DEFAULT ((0)) FOR [金额F3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额F4__6B84DD35]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额F4__6B84DD35]  DEFAULT ((0)) FOR [金额F4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额F5__6C79016E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额F5__6C79016E]  DEFAULT ((0)) FOR [金额F5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额F6__6D6D25A7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额F6__6D6D25A7]  DEFAULT ((0)) FOR [金额F6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额F7__6E6149E0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额F7__6E6149E0]  DEFAULT ((0)) FOR [金额F7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额F8__6F556E19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额F8__6F556E19]  DEFAULT ((0)) FOR [金额F8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额F9__70499252]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额F9__70499252]  DEFAULT ((0)) FOR [金额F9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额F10__713DB68B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额F10__713DB68B]  DEFAULT ((0)) FOR [金额F10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额F11__7231DAC4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额F11__7231DAC4]  DEFAULT ((0)) FOR [金额F11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__金额F12__7325FEFD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__金额F12__7325FEFD]  DEFAULT ((0)) FOR [金额F12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__税额1__741A2336]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__税额1__741A2336]  DEFAULT ((0)) FOR [税额1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__税额2__750E476F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__税额2__750E476F]  DEFAULT ((0)) FOR [税额2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__税额3__76026BA8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__税额3__76026BA8]  DEFAULT ((0)) FOR [税额3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__税额4__76F68FE1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__税额4__76F68FE1]  DEFAULT ((0)) FOR [税额4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__税额5__77EAB41A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__税额5__77EAB41A]  DEFAULT ((0)) FOR [税额5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__税额6__78DED853]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__税额6__78DED853]  DEFAULT ((0)) FOR [税额6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__税额7__79D2FC8C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__税额7__79D2FC8C]  DEFAULT ((0)) FOR [税额7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__税额8__7AC720C5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__税额8__7AC720C5]  DEFAULT ((0)) FOR [税额8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__税额9__7BBB44FE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__税额9__7BBB44FE]  DEFAULT ((0)) FOR [税额9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__税额10__7CAF6937]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__税额10__7CAF6937]  DEFAULT ((0)) FOR [税额10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__税额11__7DA38D70]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__税额11__7DA38D70]  DEFAULT ((0)) FOR [税额11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SYZZ__税额12__7E97B1A9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SYZZ] ADD  CONSTRAINT [DF__SYZZ__税额12__7E97B1A9]  DEFAULT ((0)) FOR [税额12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGD__F_JS__51A50FA1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单] ADD  CONSTRAINT [DF__CGD__F_JS__51A50FA1]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGD__发票性质__529933DA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单] ADD  CONSTRAINT [DF__CGD__发票性质__529933DA]  DEFAULT ('') FOR [发票性质]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGD2__F_JS__538D5813]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单2] ADD  CONSTRAINT [DF__CGD2__F_JS__538D5813]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGD2__发票性质__54817C4C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单2] ADD  CONSTRAINT [DF__CGD2__发票性质__54817C4C]  DEFAULT ('') FOR [发票性质]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGD3__F_JS__5575A085]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单3] ADD  CONSTRAINT [DF__CGD3__F_JS__5575A085]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGD3__发票性质__5669C4BE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单3] ADD  CONSTRAINT [DF__CGD3__发票性质__5669C4BE]  DEFAULT ('') FOR [发票性质]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__数量__575DE8F7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细] ADD  CONSTRAINT [DF__CGDMX__数量__575DE8F7]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__单价__58520D30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细] ADD  CONSTRAINT [DF__CGDMX__单价__58520D30]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__金额__59463169]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细] ADD  CONSTRAINT [DF__CGDMX__金额__59463169]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__税率__5A3A55A2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细] ADD  CONSTRAINT [DF__CGDMX__税率__5A3A55A2]  DEFAULT ((0)) FOR [税率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__税额__5B2E79DB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细] ADD  CONSTRAINT [DF__CGDMX__税额__5B2E79DB]  DEFAULT ((0)) FOR [税额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__税价合计__5C229E14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细] ADD  CONSTRAINT [DF__CGDMX__税价合计__5C229E14]  DEFAULT ((0)) FOR [税价合计]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__批发价__5D16C24D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细] ADD  CONSTRAINT [DF__CGDMX__批发价__5D16C24D]  DEFAULT ((0)) FOR [批发价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__零售价__5E0AE686]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细] ADD  CONSTRAINT [DF__CGDMX__零售价__5E0AE686]  DEFAULT ((0)) FOR [零售价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__数量结存__5EFF0ABF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细] ADD  CONSTRAINT [DF__CGDMX__数量结存__5EFF0ABF]  DEFAULT ((0)) FOR [数量结存]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX__件数__5FF32EF8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细] ADD  CONSTRAINT [DF__CGDMX__件数__5FF32EF8]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__数量__60E75331]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细2] ADD  CONSTRAINT [DF__CGDMX2__数量__60E75331]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__单价__61DB776A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细2] ADD  CONSTRAINT [DF__CGDMX2__单价__61DB776A]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__金额__62CF9BA3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细2] ADD  CONSTRAINT [DF__CGDMX2__金额__62CF9BA3]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__税率__63C3BFDC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细2] ADD  CONSTRAINT [DF__CGDMX2__税率__63C3BFDC]  DEFAULT ((0)) FOR [税率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__税额__64B7E415]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细2] ADD  CONSTRAINT [DF__CGDMX2__税额__64B7E415]  DEFAULT ((0)) FOR [税额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__税价合计__65AC084E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细2] ADD  CONSTRAINT [DF__CGDMX2__税价合计__65AC084E]  DEFAULT ((0)) FOR [税价合计]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__批发价__66A02C87]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细2] ADD  CONSTRAINT [DF__CGDMX2__批发价__66A02C87]  DEFAULT ((0)) FOR [批发价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__零售价__679450C0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细2] ADD  CONSTRAINT [DF__CGDMX2__零售价__679450C0]  DEFAULT ((0)) FOR [零售价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__数量结存__688874F9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细2] ADD  CONSTRAINT [DF__CGDMX2__数量结存__688874F9]  DEFAULT ((0)) FOR [数量结存]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX2__件数__697C9932]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细2] ADD  CONSTRAINT [DF__CGDMX2__件数__697C9932]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__数量__6A70BD6B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细3] ADD  CONSTRAINT [DF__CGDMX3__数量__6A70BD6B]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__单价__6B64E1A4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细3] ADD  CONSTRAINT [DF__CGDMX3__单价__6B64E1A4]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__金额__6C5905DD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细3] ADD  CONSTRAINT [DF__CGDMX3__金额__6C5905DD]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__税率__6D4D2A16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细3] ADD  CONSTRAINT [DF__CGDMX3__税率__6D4D2A16]  DEFAULT ((0)) FOR [税率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__税额__6E414E4F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细3] ADD  CONSTRAINT [DF__CGDMX3__税额__6E414E4F]  DEFAULT ((0)) FOR [税额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__税价合计__6F357288]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细3] ADD  CONSTRAINT [DF__CGDMX3__税价合计__6F357288]  DEFAULT ((0)) FOR [税价合计]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__批发价__702996C1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细3] ADD  CONSTRAINT [DF__CGDMX3__批发价__702996C1]  DEFAULT ((0)) FOR [批发价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__零售价__711DBAFA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细3] ADD  CONSTRAINT [DF__CGDMX3__零售价__711DBAFA]  DEFAULT ((0)) FOR [零售价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__数量结存__7211DF33]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细3] ADD  CONSTRAINT [DF__CGDMX3__数量结存__7211DF33]  DEFAULT ((0)) FOR [数量结存]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CGDMX3__件数__7306036C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[采购单明细3] ADD  CONSTRAINT [DF__CGDMX3__件数__7306036C]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD__发票性质__73FA27A5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[出库单] ADD  CONSTRAINT [DF__CKD__发票性质__73FA27A5]  DEFAULT ('') FOR [发票性质]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD__件数__74EE4BDE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[出库单] ADD  CONSTRAINT [DF__CKD__件数__74EE4BDE]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD2__发票性质__75E27017]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[出库单2] ADD  CONSTRAINT [DF__CKD2__发票性质__75E27017]  DEFAULT ('') FOR [发票性质]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD2__件数__76D69450]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[出库单2] ADD  CONSTRAINT [DF__CKD2__件数__76D69450]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD3__发票性质__77CAB889]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[出库单3] ADD  CONSTRAINT [DF__CKD3__发票性质__77CAB889]  DEFAULT ('') FOR [发票性质]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKD3__件数__78BEDCC2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[出库单3] ADD  CONSTRAINT [DF__CKD3__件数__78BEDCC2]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX__数量__79B300FB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[出库单明细] ADD  CONSTRAINT [DF__CKDMX__数量__79B300FB]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX__单价__7AA72534]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[出库单明细] ADD  CONSTRAINT [DF__CKDMX__单价__7AA72534]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX__金额__7B9B496D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[出库单明细] ADD  CONSTRAINT [DF__CKDMX__金额__7B9B496D]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX__税率__7C8F6DA6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[出库单明细] ADD  CONSTRAINT [DF__CKDMX__税率__7C8F6DA6]  DEFAULT ((0)) FOR [税率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX__税额__7D8391DF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[出库单明细] ADD  CONSTRAINT [DF__CKDMX__税额__7D8391DF]  DEFAULT ((0)) FOR [税额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX__F_UN__7E77B618]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[出库单明细] ADD  CONSTRAINT [DF__CKDMX__F_UN__7E77B618]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX__件数__7F6BDA51]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[出库单明细] ADD  CONSTRAINT [DF__CKDMX__件数__7F6BDA51]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX2__数量__005FFE8A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[出库单明细2] ADD  CONSTRAINT [DF__CKDMX2__数量__005FFE8A]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX2__单价__015422C3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[出库单明细2] ADD  CONSTRAINT [DF__CKDMX2__单价__015422C3]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX2__金额__024846FC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[出库单明细2] ADD  CONSTRAINT [DF__CKDMX2__金额__024846FC]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX2__税率__033C6B35]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[出库单明细2] ADD  CONSTRAINT [DF__CKDMX2__税率__033C6B35]  DEFAULT ((0)) FOR [税率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX2__税额__04308F6E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[出库单明细2] ADD  CONSTRAINT [DF__CKDMX2__税额__04308F6E]  DEFAULT ((0)) FOR [税额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX2__F_UN__0524B3A7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[出库单明细2] ADD  CONSTRAINT [DF__CKDMX2__F_UN__0524B3A7]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX2__件数__0618D7E0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[出库单明细2] ADD  CONSTRAINT [DF__CKDMX2__件数__0618D7E0]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CKDMX3__件数__070CFC19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[出库单明细3] ADD  CONSTRAINT [DF__CKDMX3__件数__070CFC19]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__HW__F_LOCAL__7E42ABEE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[储位] ADD  CONSTRAINT [DF__HW__F_LOCAL__7E42ABEE]  DEFAULT ('') FOR [F_LOCAL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_JHD__6D181FEC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[单据号] ADD  CONSTRAINT [DF__DJH__F_JHD__6D181FEC]  DEFAULT ((0)) FOR [F_JHD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_XHD__6E0C4425]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[单据号] ADD  CONSTRAINT [DF__DJH__F_XHD__6E0C4425]  DEFAULT ((0)) FOR [F_XHD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_CGD__6F00685E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[单据号] ADD  CONSTRAINT [DF__DJH__F_CGD__6F00685E]  DEFAULT ((0)) FOR [F_CGD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_RKD__6FF48C97]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[单据号] ADD  CONSTRAINT [DF__DJH__F_RKD__6FF48C97]  DEFAULT ((0)) FOR [F_RKD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_CKD__70E8B0D0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[单据号] ADD  CONSTRAINT [DF__DJH__F_CKD__70E8B0D0]  DEFAULT ((0)) FOR [F_CKD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_DBD__71DCD509]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[单据号] ADD  CONSTRAINT [DF__DJH__F_DBD__71DCD509]  DEFAULT ((0)) FOR [F_DBD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_XSBB__72D0F942]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[单据号] ADD  CONSTRAINT [DF__DJH__F_XSBB__72D0F942]  DEFAULT ((0)) FOR [F_XSBB]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_PC__73C51D7B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[单据号] ADD  CONSTRAINT [DF__DJH__F_PC__73C51D7B]  DEFAULT ((0)) FOR [F_PC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_YSJSD__74B941B4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[单据号] ADD  CONSTRAINT [DF__DJH__F_YSJSD__74B941B4]  DEFAULT ((0)) FOR [F_YSJSD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_YFJSD__75AD65ED]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[单据号] ADD  CONSTRAINT [DF__DJH__F_YFJSD__75AD65ED]  DEFAULT ((0)) FOR [F_YFJSD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_ZZD__76A18A26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[单据号] ADD  CONSTRAINT [DF__DJH__F_ZZD__76A18A26]  DEFAULT ((0)) FOR [F_ZZD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__调价单__7795AE5F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[单据号] ADD  CONSTRAINT [DF__DJH__调价单__7795AE5F]  DEFAULT ((0)) FOR [调价单]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_PSD__7889D298]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[单据号] ADD  CONSTRAINT [DF__DJH__F_PSD__7889D298]  DEFAULT ((0)) FOR [F_PSD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_JIEZ__797DF6D1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[单据号] ADD  CONSTRAINT [DF__DJH__F_JIEZ__797DF6D1]  DEFAULT ((0)) FOR [F_JIEZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_DHD__7A721B0A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[单据号] ADD  CONSTRAINT [DF__DJH__F_DHD__7A721B0A]  DEFAULT ((0)) FOR [F_DHD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[D单据号_F_CX]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[单据号] ADD  CONSTRAINT [D单据号_F_CX]  DEFAULT ((0)) FOR [F_CX]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_QDD__6FBF826D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[单据号] ADD  CONSTRAINT [DF__DJH__F_QDD__6FBF826D]  DEFAULT ((0)) FOR [F_QDD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_NEWSP__70B3A6A6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[单据号] ADD  CONSTRAINT [DF__DJH__F_NEWSP__70B3A6A6]  DEFAULT ((0)) FOR [F_NEWSP]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_ENEMY__71A7CADF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[单据号] ADD  CONSTRAINT [DF__DJH__F_ENEMY__71A7CADF]  DEFAULT ((0)) FOR [F_ENEMY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_PDD__729BEF18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[单据号] ADD  CONSTRAINT [DF__DJH__F_PDD__729BEF18]  DEFAULT ((0)) FOR [F_PDD]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DJH__F_SP__7D197D8B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[单据号] ADD  CONSTRAINT [DF__DJH__F_SP__7D197D8B]  DEFAULT ((0)) FOR [F_SP]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX__数量__23A93AC7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨单明细] ADD  CONSTRAINT [DF__DBDMX__数量__23A93AC7]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX__金额__249D5F00]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨单明细] ADD  CONSTRAINT [DF__DBDMX__金额__249D5F00]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX__数量结存__25918339]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨单明细] ADD  CONSTRAINT [DF__DBDMX__数量结存__25918339]  DEFAULT ((0)) FOR [数量结存]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX__单价__2685A772]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨单明细] ADD  CONSTRAINT [DF__DBDMX__单价__2685A772]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX__F_UN__2779CBAB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨单明细] ADD  CONSTRAINT [DF__DBDMX__F_UN__2779CBAB]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX__件数__286DEFE4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨单明细] ADD  CONSTRAINT [DF__DBDMX__件数__286DEFE4]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX2__数量__2962141D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨单明细2] ADD  CONSTRAINT [DF__DBDMX2__数量__2962141D]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX2__金额__2A563856]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨单明细2] ADD  CONSTRAINT [DF__DBDMX2__金额__2A563856]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX2__数量结存__2B4A5C8F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨单明细2] ADD  CONSTRAINT [DF__DBDMX2__数量结存__2B4A5C8F]  DEFAULT ((0)) FOR [数量结存]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX2__单价__2C3E80C8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨单明细2] ADD  CONSTRAINT [DF__DBDMX2__单价__2C3E80C8]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX2__F_UN__2D32A501]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨单明细2] ADD  CONSTRAINT [DF__DBDMX2__F_UN__2D32A501]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBDMX2__件数__2E26C93A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨单明细2] ADD  CONSTRAINT [DF__DBDMX2__件数__2E26C93A]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量S1__2F1AED73]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量S1__2F1AED73]  DEFAULT ((0)) FOR [数量S1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量S2__300F11AC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量S2__300F11AC]  DEFAULT ((0)) FOR [数量S2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量S3__310335E5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量S3__310335E5]  DEFAULT ((0)) FOR [数量S3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量S4__31F75A1E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量S4__31F75A1E]  DEFAULT ((0)) FOR [数量S4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量S5__32EB7E57]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量S5__32EB7E57]  DEFAULT ((0)) FOR [数量S5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量S6__33DFA290]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量S6__33DFA290]  DEFAULT ((0)) FOR [数量S6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量S7__34D3C6C9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量S7__34D3C6C9]  DEFAULT ((0)) FOR [数量S7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量S8__35C7EB02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量S8__35C7EB02]  DEFAULT ((0)) FOR [数量S8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量S9__36BC0F3B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量S9__36BC0F3B]  DEFAULT ((0)) FOR [数量S9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量S10__37B03374]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量S10__37B03374]  DEFAULT ((0)) FOR [数量S10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量S11__38A457AD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量S11__38A457AD]  DEFAULT ((0)) FOR [数量S11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量S12__39987BE6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量S12__39987BE6]  DEFAULT ((0)) FOR [数量S12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额S1__3A8CA01F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额S1__3A8CA01F]  DEFAULT ((0)) FOR [金额S1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额S2__3B80C458]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额S2__3B80C458]  DEFAULT ((0)) FOR [金额S2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额S3__3C74E891]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额S3__3C74E891]  DEFAULT ((0)) FOR [金额S3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额S4__3D690CCA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额S4__3D690CCA]  DEFAULT ((0)) FOR [金额S4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额S5__3E5D3103]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额S5__3E5D3103]  DEFAULT ((0)) FOR [金额S5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额S6__3F51553C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额S6__3F51553C]  DEFAULT ((0)) FOR [金额S6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额S7__40457975]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额S7__40457975]  DEFAULT ((0)) FOR [金额S7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额S8__41399DAE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额S8__41399DAE]  DEFAULT ((0)) FOR [金额S8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额S9__422DC1E7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额S9__422DC1E7]  DEFAULT ((0)) FOR [金额S9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额S10__4321E620]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额S10__4321E620]  DEFAULT ((0)) FOR [金额S10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额S11__44160A59]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额S11__44160A59]  DEFAULT ((0)) FOR [金额S11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额S12__450A2E92]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额S12__450A2E92]  DEFAULT ((0)) FOR [金额S12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量F1__45FE52CB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量F1__45FE52CB]  DEFAULT ((0)) FOR [数量F1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量F2__46F27704]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量F2__46F27704]  DEFAULT ((0)) FOR [数量F2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量F3__47E69B3D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量F3__47E69B3D]  DEFAULT ((0)) FOR [数量F3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量F4__48DABF76]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量F4__48DABF76]  DEFAULT ((0)) FOR [数量F4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量F5__49CEE3AF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量F5__49CEE3AF]  DEFAULT ((0)) FOR [数量F5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量F6__4AC307E8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量F6__4AC307E8]  DEFAULT ((0)) FOR [数量F6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量F7__4BB72C21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量F7__4BB72C21]  DEFAULT ((0)) FOR [数量F7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量F8__4CAB505A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量F8__4CAB505A]  DEFAULT ((0)) FOR [数量F8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量F9__4D9F7493]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量F9__4D9F7493]  DEFAULT ((0)) FOR [数量F9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量F10__4E9398CC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量F10__4E9398CC]  DEFAULT ((0)) FOR [数量F10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量F11__4F87BD05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量F11__4F87BD05]  DEFAULT ((0)) FOR [数量F11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__数量F12__507BE13E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__数量F12__507BE13E]  DEFAULT ((0)) FOR [数量F12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额F1__51700577]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额F1__51700577]  DEFAULT ((0)) FOR [金额F1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额F2__526429B0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额F2__526429B0]  DEFAULT ((0)) FOR [金额F2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额F3__53584DE9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额F3__53584DE9]  DEFAULT ((0)) FOR [金额F3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额F4__544C7222]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额F4__544C7222]  DEFAULT ((0)) FOR [金额F4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额F5__5540965B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额F5__5540965B]  DEFAULT ((0)) FOR [金额F5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额F6__5634BA94]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额F6__5634BA94]  DEFAULT ((0)) FOR [金额F6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额F7__5728DECD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额F7__5728DECD]  DEFAULT ((0)) FOR [金额F7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额F8__581D0306]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额F8__581D0306]  DEFAULT ((0)) FOR [金额F8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额F9__5911273F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额F9__5911273F]  DEFAULT ((0)) FOR [金额F9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额F10__5A054B78]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额F10__5A054B78]  DEFAULT ((0)) FOR [金额F10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额F11__5AF96FB1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额F11__5AF96FB1]  DEFAULT ((0)) FOR [金额F11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DBZZ__金额F12__5BED93EA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[调拨总帐] ADD  CONSTRAINT [DF__DBZZ__金额F12__5BED93EA]  DEFAULT ((0)) FOR [金额F12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX__数量__5CE1B823]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[订货单明细] ADD  CONSTRAINT [DF__DHDMX__数量__5CE1B823]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX__单价__5DD5DC5C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[订货单明细] ADD  CONSTRAINT [DF__DHDMX__单价__5DD5DC5C]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX__扣率__5ECA0095]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[订货单明细] ADD  CONSTRAINT [DF__DHDMX__扣率__5ECA0095]  DEFAULT ((0)) FOR [扣率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX__金额__5FBE24CE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[订货单明细] ADD  CONSTRAINT [DF__DHDMX__金额__5FBE24CE]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX__税率__60B24907]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[订货单明细] ADD  CONSTRAINT [DF__DHDMX__税率__60B24907]  DEFAULT ((0)) FOR [税率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX__税额__61A66D40]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[订货单明细] ADD  CONSTRAINT [DF__DHDMX__税额__61A66D40]  DEFAULT ((0)) FOR [税额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX__F_CB__629A9179]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[订货单明细] ADD  CONSTRAINT [DF__DHDMX__F_CB__629A9179]  DEFAULT ((0)) FOR [F_CB]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX__税价合计__638EB5B2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[订货单明细] ADD  CONSTRAINT [DF__DHDMX__税价合计__638EB5B2]  DEFAULT ((0)) FOR [税价合计]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX__F_UN__6482D9EB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[订货单明细] ADD  CONSTRAINT [DF__DHDMX__F_UN__6482D9EB]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX2__数量__6576FE24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[订货单明细2] ADD  CONSTRAINT [DF__DHDMX2__数量__6576FE24]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX2__单价__666B225D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[订货单明细2] ADD  CONSTRAINT [DF__DHDMX2__单价__666B225D]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX2__扣率__675F4696]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[订货单明细2] ADD  CONSTRAINT [DF__DHDMX2__扣率__675F4696]  DEFAULT ((0)) FOR [扣率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX2__金额__68536ACF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[订货单明细2] ADD  CONSTRAINT [DF__DHDMX2__金额__68536ACF]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX2__税率__69478F08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[订货单明细2] ADD  CONSTRAINT [DF__DHDMX2__税率__69478F08]  DEFAULT ((0)) FOR [税率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX2__税额__6A3BB341]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[订货单明细2] ADD  CONSTRAINT [DF__DHDMX2__税额__6A3BB341]  DEFAULT ((0)) FOR [税额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX2__F_CB__6B2FD77A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[订货单明细2] ADD  CONSTRAINT [DF__DHDMX2__F_CB__6B2FD77A]  DEFAULT ((0)) FOR [F_CB]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__DHDMX2__税价合计__6C23FBB3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[订货单明细2] ADD  CONSTRAINT [DF__DHDMX2__税价合计__6C23FBB3]  DEFAULT ((0)) FOR [税价合计]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP__F_LJXF__4FBCC72F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[会员] ADD  CONSTRAINT [DF__VIP__F_LJXF__4FBCC72F]  DEFAULT ((0)) FOR [F_LJXF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP__F_GRADE__50B0EB68]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[会员] ADD  CONSTRAINT [DF__VIP__F_GRADE__50B0EB68]  DEFAULT ((0)) FOR [F_GRADE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP2__F_LJXF__538D5813]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[会员2] ADD  CONSTRAINT [DF__VIP2__F_LJXF__538D5813]  DEFAULT ((0)) FOR [F_LJXF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__VIP2__F_GRADE__54817C4C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[会员2] ADD  CONSTRAINT [DF__VIP2__F_GRADE__54817C4C]  DEFAULT ((0)) FOR [F_GRADE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量S1__7F36D027]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量S1__7F36D027]  DEFAULT ((0)) FOR [数量S1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量S2__002AF460]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量S2__002AF460]  DEFAULT ((0)) FOR [数量S2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量S3__011F1899]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量S3__011F1899]  DEFAULT ((0)) FOR [数量S3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量S4__02133CD2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量S4__02133CD2]  DEFAULT ((0)) FOR [数量S4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量S5__0307610B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量S5__0307610B]  DEFAULT ((0)) FOR [数量S5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量S6__03FB8544]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量S6__03FB8544]  DEFAULT ((0)) FOR [数量S6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量S7__04EFA97D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量S7__04EFA97D]  DEFAULT ((0)) FOR [数量S7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量S8__05E3CDB6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量S8__05E3CDB6]  DEFAULT ((0)) FOR [数量S8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量S9__06D7F1EF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量S9__06D7F1EF]  DEFAULT ((0)) FOR [数量S9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量S10__07CC1628]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量S10__07CC1628]  DEFAULT ((0)) FOR [数量S10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量S11__08C03A61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量S11__08C03A61]  DEFAULT ((0)) FOR [数量S11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量S12__09B45E9A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量S12__09B45E9A]  DEFAULT ((0)) FOR [数量S12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额S1__0AA882D3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额S1__0AA882D3]  DEFAULT ((0)) FOR [金额S1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额S2__0B9CA70C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额S2__0B9CA70C]  DEFAULT ((0)) FOR [金额S2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额S3__0C90CB45]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额S3__0C90CB45]  DEFAULT ((0)) FOR [金额S3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额S4__0D84EF7E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额S4__0D84EF7E]  DEFAULT ((0)) FOR [金额S4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额S5__0E7913B7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额S5__0E7913B7]  DEFAULT ((0)) FOR [金额S5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额S6__0F6D37F0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额S6__0F6D37F0]  DEFAULT ((0)) FOR [金额S6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额S7__10615C29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额S7__10615C29]  DEFAULT ((0)) FOR [金额S7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额S8__11558062]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额S8__11558062]  DEFAULT ((0)) FOR [金额S8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额S9__1249A49B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额S9__1249A49B]  DEFAULT ((0)) FOR [金额S9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额S10__133DC8D4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额S10__133DC8D4]  DEFAULT ((0)) FOR [金额S10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额S11__1431ED0D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额S11__1431ED0D]  DEFAULT ((0)) FOR [金额S11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额S12__15261146]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额S12__15261146]  DEFAULT ((0)) FOR [金额S12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量F1__161A357F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量F1__161A357F]  DEFAULT ((0)) FOR [数量F1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量F2__170E59B8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量F2__170E59B8]  DEFAULT ((0)) FOR [数量F2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量F3__18027DF1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量F3__18027DF1]  DEFAULT ((0)) FOR [数量F3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量F4__18F6A22A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量F4__18F6A22A]  DEFAULT ((0)) FOR [数量F4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量F5__19EAC663]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量F5__19EAC663]  DEFAULT ((0)) FOR [数量F5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量F6__1ADEEA9C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量F6__1ADEEA9C]  DEFAULT ((0)) FOR [数量F6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量F7__1BD30ED5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量F7__1BD30ED5]  DEFAULT ((0)) FOR [数量F7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量F8__1CC7330E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量F8__1CC7330E]  DEFAULT ((0)) FOR [数量F8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量F9__1DBB5747]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量F9__1DBB5747]  DEFAULT ((0)) FOR [数量F9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量F10__1EAF7B80]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量F10__1EAF7B80]  DEFAULT ((0)) FOR [数量F10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量F11__1FA39FB9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量F11__1FA39FB9]  DEFAULT ((0)) FOR [数量F11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__数量F12__2097C3F2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__数量F12__2097C3F2]  DEFAULT ((0)) FOR [数量F12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额F1__218BE82B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额F1__218BE82B]  DEFAULT ((0)) FOR [金额F1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额F2__22800C64]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额F2__22800C64]  DEFAULT ((0)) FOR [金额F2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额F3__2374309D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额F3__2374309D]  DEFAULT ((0)) FOR [金额F3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额F4__246854D6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额F4__246854D6]  DEFAULT ((0)) FOR [金额F4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额F5__255C790F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额F5__255C790F]  DEFAULT ((0)) FOR [金额F5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额F6__26509D48]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额F6__26509D48]  DEFAULT ((0)) FOR [金额F6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额F7__2744C181]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额F7__2744C181]  DEFAULT ((0)) FOR [金额F7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额F8__2838E5BA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额F8__2838E5BA]  DEFAULT ((0)) FOR [金额F8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额F9__292D09F3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额F9__292D09F3]  DEFAULT ((0)) FOR [金额F9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额F10__2A212E2C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额F10__2A212E2C]  DEFAULT ((0)) FOR [金额F10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额F11__2B155265]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额F11__2B155265]  DEFAULT ((0)) FOR [金额F11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JGZZ__金额F12__2C09769E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[加工总帐] ADD  CONSTRAINT [DF__JGZZ__金额F12__2C09769E]  DEFAULT ((0)) FOR [金额F12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHBB__F_ROWS__2CFD9AD7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货报表] ADD  CONSTRAINT [DF__JHBB__F_ROWS__2CFD9AD7]  DEFAULT ((35)) FOR [F_ROWS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHBB__F_SIZE__2DF1BF10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货报表] ADD  CONSTRAINT [DF__JHBB__F_SIZE__2DF1BF10]  DEFAULT ((39)) FOR [F_SIZE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHBB__F_LENGTH__2EE5E349]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货报表] ADD  CONSTRAINT [DF__JHBB__F_LENGTH__2EE5E349]  DEFAULT ((2794)) FOR [F_LENGTH]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHBB__F_WIDTH__2FDA0782]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货报表] ADD  CONSTRAINT [DF__JHBB__F_WIDTH__2FDA0782]  DEFAULT ((3734)) FOR [F_WIDTH]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHBB__F_ORIENT__30CE2BBB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货报表] ADD  CONSTRAINT [DF__JHBB__F_ORIENT__30CE2BBB]  DEFAULT ((1)) FOR [F_ORIENT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHBB__F_HZ__31C24FF4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货报表] ADD  CONSTRAINT [DF__JHBB__F_HZ__31C24FF4]  DEFAULT ((0)) FOR [F_HZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHBB__F_TITLEFON__32B6742D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货报表] ADD  CONSTRAINT [DF__JHBB__F_TITLEFON__32B6742D]  DEFAULT ('宋体,18,1000') FOR [F_TITLEFONT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHBB__F_BBFONT__33AA9866]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货报表] ADD  CONSTRAINT [DF__JHBB__F_BBFONT__33AA9866]  DEFAULT ('宋体,10,0000') FOR [F_BBFONT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHBB__F_COLNUMBE__349EBC9F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货报表] ADD  CONSTRAINT [DF__JHBB__F_COLNUMBE__349EBC9F]  DEFAULT ((7)) FOR [F_COLNUMBER]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHBB__F_COLCAPTI__3592E0D8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货报表] ADD  CONSTRAINT [DF__JHBB__F_COLCAPTI__3592E0D8]  DEFAULT ('代码,名称,单位,进货数量,进货金额,进货税额,价税合计,') FOR [F_COLCAPTION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHBB__F_COLWIDTH__36870511]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货报表] ADD  CONSTRAINT [DF__JHBB__F_COLWIDTH__36870511]  DEFAULT ('7,15,3,7,7,7,7,') FOR [F_COLWIDTH]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHD__F_JS__377B294A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单] ADD  CONSTRAINT [DF__JHD__F_JS__377B294A]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHD__发票性质__386F4D83]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单] ADD  CONSTRAINT [DF__JHD__发票性质__386F4D83]  DEFAULT ('') FOR [发票性质]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHD2__F_JS__396371BC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单2] ADD  CONSTRAINT [DF__JHD2__F_JS__396371BC]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHD2__发票性质__3A5795F5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单2] ADD  CONSTRAINT [DF__JHD2__发票性质__3A5795F5]  DEFAULT ('') FOR [发票性质]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__数量__3B4BBA2E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细] ADD  CONSTRAINT [DF__JHDMX__数量__3B4BBA2E]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__单价__3C3FDE67]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细] ADD  CONSTRAINT [DF__JHDMX__单价__3C3FDE67]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__金额__3D3402A0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细] ADD  CONSTRAINT [DF__JHDMX__金额__3D3402A0]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__税率__3E2826D9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细] ADD  CONSTRAINT [DF__JHDMX__税率__3E2826D9]  DEFAULT ((0)) FOR [税率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__税额__3F1C4B12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细] ADD  CONSTRAINT [DF__JHDMX__税额__3F1C4B12]  DEFAULT ((0)) FOR [税额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__税价合计__40106F4B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细] ADD  CONSTRAINT [DF__JHDMX__税价合计__40106F4B]  DEFAULT ((0)) FOR [税价合计]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__F_UN__41049384]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细] ADD  CONSTRAINT [DF__JHDMX__F_UN__41049384]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_JHDMX_F_HSDJ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细] ADD  CONSTRAINT [DF_JHDMX_F_HSDJ]  DEFAULT ((0)) FOR [F_HSDJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX__扣率__7889D298]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细] ADD  CONSTRAINT [DF__JHDMX__扣率__7889D298]  DEFAULT ((0)) FOR [扣率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__数量__41F8B7BD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细2] ADD  CONSTRAINT [DF__JHDMX2__数量__41F8B7BD]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__单价__42ECDBF6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细2] ADD  CONSTRAINT [DF__JHDMX2__单价__42ECDBF6]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__金额__43E1002F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细2] ADD  CONSTRAINT [DF__JHDMX2__金额__43E1002F]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__税率__44D52468]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细2] ADD  CONSTRAINT [DF__JHDMX2__税率__44D52468]  DEFAULT ((0)) FOR [税率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__税额__45C948A1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细2] ADD  CONSTRAINT [DF__JHDMX2__税额__45C948A1]  DEFAULT ((0)) FOR [税额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__税价合计__46BD6CDA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细2] ADD  CONSTRAINT [DF__JHDMX2__税价合计__46BD6CDA]  DEFAULT ((0)) FOR [税价合计]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__F_UN__47B19113]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细2] ADD  CONSTRAINT [DF__JHDMX2__F_UN__47B19113]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_JHDMX2_F_HSDJ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细2] ADD  CONSTRAINT [DF_JHDMX2_F_HSDJ]  DEFAULT ((0)) FOR [F_HSDJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX2__扣率__797DF6D1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细2] ADD  CONSTRAINT [DF__JHDMX2__扣率__797DF6D1]  DEFAULT ((0)) FOR [扣率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__数量__48A5B54C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细3] ADD  CONSTRAINT [DF__JHDMX3__数量__48A5B54C]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__单价__4999D985]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细3] ADD  CONSTRAINT [DF__JHDMX3__单价__4999D985]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__金额__4A8DFDBE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细3] ADD  CONSTRAINT [DF__JHDMX3__金额__4A8DFDBE]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__税率__4B8221F7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细3] ADD  CONSTRAINT [DF__JHDMX3__税率__4B8221F7]  DEFAULT ((0)) FOR [税率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__税额__4C764630]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细3] ADD  CONSTRAINT [DF__JHDMX3__税额__4C764630]  DEFAULT ((0)) FOR [税额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__税价合计__4D6A6A69]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细3] ADD  CONSTRAINT [DF__JHDMX3__税价合计__4D6A6A69]  DEFAULT ((0)) FOR [税价合计]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__F_UN__4E5E8EA2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细3] ADD  CONSTRAINT [DF__JHDMX3__F_UN__4E5E8EA2]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_JHDMX3_F_HSDJ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细3] ADD  CONSTRAINT [DF_JHDMX3_F_HSDJ]  DEFAULT ((0)) FOR [F_HSDJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHDMX3__扣率__7A721B0A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货单明细3] ADD  CONSTRAINT [DF__JHDMX3__扣率__7A721B0A]  DEFAULT ((0)) FOR [扣率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__数量1__4F52B2DB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__数量1__4F52B2DB]  DEFAULT ((0)) FOR [数量1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__件数__5046D714]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__件数__5046D714]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__数量3__513AFB4D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__数量3__513AFB4D]  DEFAULT ((0)) FOR [数量3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__数量4__522F1F86]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__数量4__522F1F86]  DEFAULT ((0)) FOR [数量4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__数量5__532343BF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__数量5__532343BF]  DEFAULT ((0)) FOR [数量5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__数量6__541767F8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__数量6__541767F8]  DEFAULT ((0)) FOR [数量6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__数量7__550B8C31]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__数量7__550B8C31]  DEFAULT ((0)) FOR [数量7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__数量8__55FFB06A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__数量8__55FFB06A]  DEFAULT ((0)) FOR [数量8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__数量9__56F3D4A3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__数量9__56F3D4A3]  DEFAULT ((0)) FOR [数量9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__数量10__57E7F8DC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__数量10__57E7F8DC]  DEFAULT ((0)) FOR [数量10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__数量11__58DC1D15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__数量11__58DC1D15]  DEFAULT ((0)) FOR [数量11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__数量12__59D0414E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__数量12__59D0414E]  DEFAULT ((0)) FOR [数量12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__金额1__5AC46587]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__金额1__5AC46587]  DEFAULT ((0)) FOR [金额1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__金额2__5BB889C0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__金额2__5BB889C0]  DEFAULT ((0)) FOR [金额2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__金额3__5CACADF9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__金额3__5CACADF9]  DEFAULT ((0)) FOR [金额3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__金额4__5DA0D232]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__金额4__5DA0D232]  DEFAULT ((0)) FOR [金额4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__金额5__5E94F66B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__金额5__5E94F66B]  DEFAULT ((0)) FOR [金额5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__金额6__5F891AA4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__金额6__5F891AA4]  DEFAULT ((0)) FOR [金额6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__金额7__607D3EDD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__金额7__607D3EDD]  DEFAULT ((0)) FOR [金额7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__金额8__61716316]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__金额8__61716316]  DEFAULT ((0)) FOR [金额8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__金额9__6265874F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__金额9__6265874F]  DEFAULT ((0)) FOR [金额9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__金额10__6359AB88]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__金额10__6359AB88]  DEFAULT ((0)) FOR [金额10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__金额11__644DCFC1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__金额11__644DCFC1]  DEFAULT ((0)) FOR [金额11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__金额12__6541F3FA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__金额12__6541F3FA]  DEFAULT ((0)) FOR [金额12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__税额1__66361833]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__税额1__66361833]  DEFAULT ((0)) FOR [税额1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__税额2__672A3C6C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__税额2__672A3C6C]  DEFAULT ((0)) FOR [税额2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__税额3__681E60A5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__税额3__681E60A5]  DEFAULT ((0)) FOR [税额3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__税额4__691284DE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__税额4__691284DE]  DEFAULT ((0)) FOR [税额4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__税额5__6A06A917]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__税额5__6A06A917]  DEFAULT ((0)) FOR [税额5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__税额6__6AFACD50]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__税额6__6AFACD50]  DEFAULT ((0)) FOR [税额6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__税额7__6BEEF189]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__税额7__6BEEF189]  DEFAULT ((0)) FOR [税额7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__税额8__6CE315C2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__税额8__6CE315C2]  DEFAULT ((0)) FOR [税额8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__税额9__6DD739FB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__税额9__6DD739FB]  DEFAULT ((0)) FOR [税额9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__税额10__6ECB5E34]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__税额10__6ECB5E34]  DEFAULT ((0)) FOR [税额10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__税额11__6FBF826D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__税额11__6FBF826D]  DEFAULT ((0)) FOR [税额11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__JHZZ__税额12__70B3A6A6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[进货总帐] ADD  CONSTRAINT [DF__JHZZ__税额12__70B3A6A6]  DEFAULT ((0)) FOR [税额12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__BM__F_DE__4FBCC72F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[科室] ADD  CONSTRAINT [DF__BM__F_DE__4FBCC72F]  DEFAULT ((0)) FOR [F_DE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_QCYE__09E968C4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_QCYE__09E968C4]  DEFAULT ((0)) FOR [F_QCYE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_QMYE__0ADD8CFD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_QMYE__0ADD8CFD]  DEFAULT ((0)) FOR [F_QMYE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_SXED__0BD1B136]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_SXED__0BD1B136]  DEFAULT ((0)) FOR [F_SXED]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J1__0CC5D56F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_J1__0CC5D56F]  DEFAULT ((0)) FOR [F_J1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D1__0DB9F9A8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_D1__0DB9F9A8]  DEFAULT ((0)) FOR [F_D1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J2__0EAE1DE1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_J2__0EAE1DE1]  DEFAULT ((0)) FOR [F_J2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D2__0FA2421A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_D2__0FA2421A]  DEFAULT ((0)) FOR [F_D2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J3__10966653]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_J3__10966653]  DEFAULT ((0)) FOR [F_J3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D3__118A8A8C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_D3__118A8A8C]  DEFAULT ((0)) FOR [F_D3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J4__127EAEC5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_J4__127EAEC5]  DEFAULT ((0)) FOR [F_J4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D4__1372D2FE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_D4__1372D2FE]  DEFAULT ((0)) FOR [F_D4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J5__1466F737]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_J5__1466F737]  DEFAULT ((0)) FOR [F_J5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D5__155B1B70]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_D5__155B1B70]  DEFAULT ((0)) FOR [F_D5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J6__164F3FA9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_J6__164F3FA9]  DEFAULT ((0)) FOR [F_J6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D6__174363E2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_D6__174363E2]  DEFAULT ((0)) FOR [F_D6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J7__1837881B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_J7__1837881B]  DEFAULT ((0)) FOR [F_J7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D7__192BAC54]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_D7__192BAC54]  DEFAULT ((0)) FOR [F_D7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J8__1A1FD08D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_J8__1A1FD08D]  DEFAULT ((0)) FOR [F_J8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D8__1B13F4C6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_D8__1B13F4C6]  DEFAULT ((0)) FOR [F_D8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J9__1C0818FF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_J9__1C0818FF]  DEFAULT ((0)) FOR [F_J9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D9__1CFC3D38]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_D9__1CFC3D38]  DEFAULT ((0)) FOR [F_D9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J10__1DF06171]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_J10__1DF06171]  DEFAULT ((0)) FOR [F_J10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D10__1EE485AA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_D10__1EE485AA]  DEFAULT ((0)) FOR [F_D10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J11__1FD8A9E3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_J11__1FD8A9E3]  DEFAULT ((0)) FOR [F_J11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D11__20CCCE1C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_D11__20CCCE1C]  DEFAULT ((0)) FOR [F_D11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_J12__21C0F255]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_J12__21C0F255]  DEFAULT ((0)) FOR [F_J12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOM__F_D12__22B5168E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户] ADD  CONSTRAINT [DF__CUSTOM__F_D12__22B5168E]  DEFAULT ((0)) FOR [F_D12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOMGRAD__扣率__61C668D1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户等级] ADD  CONSTRAINT [DF__CUSTOMGRAD__扣率__61C668D1]  DEFAULT ((0)) FOR [扣率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__CUSTOMGRA__F_PRI__5575A085]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[客户等级] ADD  CONSTRAINT [DF__CUSTOMGRA__F_PRI__5575A085]  DEFAULT ((2)) FOR [F_PRICENUMBER]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCMXZ__数量S__7B313519]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存明细帐] ADD  CONSTRAINT [DF__KCMXZ__数量S__7B313519]  DEFAULT ((0)) FOR [数量S]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCMXZ__金额S__7C255952]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存明细帐] ADD  CONSTRAINT [DF__KCMXZ__金额S__7C255952]  DEFAULT ((0)) FOR [金额S]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCMXZ__数量F__7D197D8B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存明细帐] ADD  CONSTRAINT [DF__KCMXZ__数量F__7D197D8B]  DEFAULT ((0)) FOR [数量F]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCMXZ__金额F__7E0DA1C4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存明细帐] ADD  CONSTRAINT [DF__KCMXZ__金额F__7E0DA1C4]  DEFAULT ((0)) FOR [金额F]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCYE__数量YE__7F01C5FD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存余额] ADD  CONSTRAINT [DF__KCYE__数量YE__7F01C5FD]  DEFAULT ((0)) FOR [数量YE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量0__7FF5EA36]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量0__7FF5EA36]  DEFAULT ((0)) FOR [数量0]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额0__00EA0E6F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额0__00EA0E6F]  DEFAULT ((0)) FOR [金额0]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量YE__01DE32A8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量YE__01DE32A8]  DEFAULT ((0)) FOR [数量YE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额YE__02D256E1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额YE__02D256E1]  DEFAULT ((0)) FOR [金额YE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_PJDJ__03C67B1A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__F_PJDJ__03C67B1A]  DEFAULT ((0)) FOR [F_PJDJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额__04BA9F53]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额__04BA9F53]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__F_JJ__05AEC38C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__F_JJ__05AEC38C]  DEFAULT ((0)) FOR [F_JJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量S1__06A2E7C5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量S1__06A2E7C5]  DEFAULT ((0)) FOR [数量S1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量S2__07970BFE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量S2__07970BFE]  DEFAULT ((0)) FOR [数量S2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量S3__088B3037]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量S3__088B3037]  DEFAULT ((0)) FOR [数量S3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量S4__097F5470]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量S4__097F5470]  DEFAULT ((0)) FOR [数量S4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量S5__0A7378A9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量S5__0A7378A9]  DEFAULT ((0)) FOR [数量S5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量S6__0B679CE2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量S6__0B679CE2]  DEFAULT ((0)) FOR [数量S6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量S7__0C5BC11B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量S7__0C5BC11B]  DEFAULT ((0)) FOR [数量S7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量S8__0D4FE554]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量S8__0D4FE554]  DEFAULT ((0)) FOR [数量S8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量S9__0E44098D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量S9__0E44098D]  DEFAULT ((0)) FOR [数量S9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量S10__0F382DC6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量S10__0F382DC6]  DEFAULT ((0)) FOR [数量S10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量S11__102C51FF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量S11__102C51FF]  DEFAULT ((0)) FOR [数量S11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量S12__11207638]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量S12__11207638]  DEFAULT ((0)) FOR [数量S12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额S1__12149A71]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额S1__12149A71]  DEFAULT ((0)) FOR [金额S1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额S2__1308BEAA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额S2__1308BEAA]  DEFAULT ((0)) FOR [金额S2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额S3__13FCE2E3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额S3__13FCE2E3]  DEFAULT ((0)) FOR [金额S3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额S4__14F1071C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额S4__14F1071C]  DEFAULT ((0)) FOR [金额S4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额S5__15E52B55]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额S5__15E52B55]  DEFAULT ((0)) FOR [金额S5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额S6__16D94F8E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额S6__16D94F8E]  DEFAULT ((0)) FOR [金额S6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额S7__17CD73C7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额S7__17CD73C7]  DEFAULT ((0)) FOR [金额S7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额S8__18C19800]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额S8__18C19800]  DEFAULT ((0)) FOR [金额S8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额S9__19B5BC39]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额S9__19B5BC39]  DEFAULT ((0)) FOR [金额S9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额S10__1AA9E072]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额S10__1AA9E072]  DEFAULT ((0)) FOR [金额S10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额S11__1B9E04AB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额S11__1B9E04AB]  DEFAULT ((0)) FOR [金额S11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额S12__1C9228E4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额S12__1C9228E4]  DEFAULT ((0)) FOR [金额S12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量F1__1D864D1D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量F1__1D864D1D]  DEFAULT ((0)) FOR [数量F1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量F2__1E7A7156]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量F2__1E7A7156]  DEFAULT ((0)) FOR [数量F2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量F3__1F6E958F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量F3__1F6E958F]  DEFAULT ((0)) FOR [数量F3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量F4__2062B9C8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量F4__2062B9C8]  DEFAULT ((0)) FOR [数量F4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量F5__2156DE01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量F5__2156DE01]  DEFAULT ((0)) FOR [数量F5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量F6__224B023A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量F6__224B023A]  DEFAULT ((0)) FOR [数量F6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量F7__233F2673]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量F7__233F2673]  DEFAULT ((0)) FOR [数量F7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量F8__24334AAC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量F8__24334AAC]  DEFAULT ((0)) FOR [数量F8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量F9__25276EE5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量F9__25276EE5]  DEFAULT ((0)) FOR [数量F9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量F10__261B931E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量F10__261B931E]  DEFAULT ((0)) FOR [数量F10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量F11__270FB757]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量F11__270FB757]  DEFAULT ((0)) FOR [数量F11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__数量F12__2803DB90]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__数量F12__2803DB90]  DEFAULT ((0)) FOR [数量F12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额F1__28F7FFC9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额F1__28F7FFC9]  DEFAULT ((0)) FOR [金额F1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额F2__29EC2402]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额F2__29EC2402]  DEFAULT ((0)) FOR [金额F2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额F3__2AE0483B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额F3__2AE0483B]  DEFAULT ((0)) FOR [金额F3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额F4__2BD46C74]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额F4__2BD46C74]  DEFAULT ((0)) FOR [金额F4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额F5__2CC890AD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额F5__2CC890AD]  DEFAULT ((0)) FOR [金额F5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额F6__2DBCB4E6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额F6__2DBCB4E6]  DEFAULT ((0)) FOR [金额F6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额F7__2EB0D91F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额F7__2EB0D91F]  DEFAULT ((0)) FOR [金额F7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额F8__2FA4FD58]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额F8__2FA4FD58]  DEFAULT ((0)) FOR [金额F8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额F9__30992191]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额F9__30992191]  DEFAULT ((0)) FOR [金额F9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额F10__318D45CA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额F10__318D45CA]  DEFAULT ((0)) FOR [金额F10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额F11__32816A03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额F11__32816A03]  DEFAULT ((0)) FOR [金额F11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__KCZZ__金额F12__33758E3C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[库存总帐] ADD  CONSTRAINT [DF__KCZZ__金额F12__33758E3C]  DEFAULT ((0)) FOR [金额F12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAILC__金额__68DD7AB4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售] ADD  CONSTRAINT [DF__RETAILC__金额__68DD7AB4]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAILC11__金额__69D19EED]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售11] ADD  CONSTRAINT [DF__RETAILC11__金额__69D19EED]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAILC2__金额__6AC5C326]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售2] ADD  CONSTRAINT [DF__RETAILC2__金额__6AC5C326]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAILDJ__单据号__6BB9E75F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售单据号] ADD  CONSTRAINT [DF__RETAILDJ__单据号__6BB9E75F]  DEFAULT ((0)) FOR [单据号]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__LSH__F_J1__3469B275]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售号] ADD  CONSTRAINT [DF__LSH__F_J1__3469B275]  DEFAULT ((0)) FOR [F_J1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__LSH__F_J2__355DD6AE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售号] ADD  CONSTRAINT [DF__LSH__F_J2__355DD6AE]  DEFAULT ((0)) FOR [F_J2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__LSH__F_J3__3651FAE7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售号] ADD  CONSTRAINT [DF__LSH__F_J3__3651FAE7]  DEFAULT ((0)) FOR [F_J3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__LSH__F_J4__37461F20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售号] ADD  CONSTRAINT [DF__LSH__F_J4__37461F20]  DEFAULT ((0)) FOR [F_J4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__LSH__F_J5__383A4359]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售号] ADD  CONSTRAINT [DF__LSH__F_J5__383A4359]  DEFAULT ((0)) FOR [F_J5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__LSH__F_R1__392E6792]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售号] ADD  CONSTRAINT [DF__LSH__F_R1__392E6792]  DEFAULT ((0)) FOR [F_R1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__LSH__F_R2__3A228BCB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售号] ADD  CONSTRAINT [DF__LSH__F_R2__3A228BCB]  DEFAULT ((0)) FOR [F_R2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__LSH__F_R3__3B16B004]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售号] ADD  CONSTRAINT [DF__LSH__F_R3__3B16B004]  DEFAULT ((0)) FOR [F_R3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__LSH__F_R4__3C0AD43D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售号] ADD  CONSTRAINT [DF__LSH__F_R4__3C0AD43D]  DEFAULT ((0)) FOR [F_R4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__LSH__F_R5__3CFEF876]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售号] ADD  CONSTRAINT [DF__LSH__F_R5__3CFEF876]  DEFAULT ((0)) FOR [F_R5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL__数量__5A8F5B5D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售明细] ADD  CONSTRAINT [DF__RETAIL__数量__5A8F5B5D]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL__单价__5B837F96]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售明细] ADD  CONSTRAINT [DF__RETAIL__单价__5B837F96]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL__金额__5C77A3CF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售明细] ADD  CONSTRAINT [DF__RETAIL__金额__5C77A3CF]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL__F_JS__5D6BC808]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售明细] ADD  CONSTRAINT [DF__RETAIL__F_JS__5D6BC808]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL__扣率__5E5FEC41]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售明细] ADD  CONSTRAINT [DF__RETAIL__扣率__5E5FEC41]  DEFAULT ((100)) FOR [扣率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL11__数量__5F54107A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售明细11] ADD  CONSTRAINT [DF__RETAIL11__数量__5F54107A]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL11__单价__604834B3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售明细11] ADD  CONSTRAINT [DF__RETAIL11__单价__604834B3]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL11__金额__613C58EC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售明细11] ADD  CONSTRAINT [DF__RETAIL11__金额__613C58EC]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL11__F_JS__62307D25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售明细11] ADD  CONSTRAINT [DF__RETAIL11__F_JS__62307D25]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL11__扣率__6324A15E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售明细11] ADD  CONSTRAINT [DF__RETAIL11__扣率__6324A15E]  DEFAULT ((100)) FOR [扣率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL2__数量__6418C597]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售明细2] ADD  CONSTRAINT [DF__RETAIL2__数量__6418C597]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL2__单价__650CE9D0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售明细2] ADD  CONSTRAINT [DF__RETAIL2__单价__650CE9D0]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL2__金额__66010E09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售明细2] ADD  CONSTRAINT [DF__RETAIL2__金额__66010E09]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL2__F_JS__66F53242]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售明细2] ADD  CONSTRAINT [DF__RETAIL2__F_JS__66F53242]  DEFAULT ((0)) FOR [F_JS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RETAIL2__扣率__67E9567B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[零售明细2] ADD  CONSTRAINT [DF__RETAIL2__扣率__67E9567B]  DEFAULT ((100)) FOR [扣率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX__零售价__7D8E7ED7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[盘点单明细] ADD  CONSTRAINT [DF__PDDMX__零售价__7D8E7ED7]  DEFAULT ((0)) FOR [零售价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX2__零售价__7E82A310]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[盘点单明细2] ADD  CONSTRAINT [DF__PDDMX2__零售价__7E82A310]  DEFAULT ((0)) FOR [零售价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PDDMX3__零售价__7F76C749]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[盘点单明细3] ADD  CONSTRAINT [DF__PDDMX3__零售价__7F76C749]  DEFAULT ((0)) FOR [零售价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PSDMX__数量1__52EE3995]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[配送单明细] ADD  CONSTRAINT [DF__PSDMX__数量1__52EE3995]  DEFAULT ((0)) FOR [数量1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PSDMX__件数__53E25DCE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[配送单明细] ADD  CONSTRAINT [DF__PSDMX__件数__53E25DCE]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PSDMX__数量3__54D68207]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[配送单明细] ADD  CONSTRAINT [DF__PSDMX__数量3__54D68207]  DEFAULT ((0)) FOR [数量3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PSDMX__数量4__55CAA640]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[配送单明细] ADD  CONSTRAINT [DF__PSDMX__数量4__55CAA640]  DEFAULT ((0)) FOR [数量4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PSDMX__数量5__56BECA79]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[配送单明细] ADD  CONSTRAINT [DF__PSDMX__数量5__56BECA79]  DEFAULT ((0)) FOR [数量5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PSDMX__数量6__57B2EEB2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[配送单明细] ADD  CONSTRAINT [DF__PSDMX__数量6__57B2EEB2]  DEFAULT ((0)) FOR [数量6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PSDMX__数量7__58A712EB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[配送单明细] ADD  CONSTRAINT [DF__PSDMX__数量7__58A712EB]  DEFAULT ((0)) FOR [数量7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__PSDMX__数量__599B3724]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[配送单明细] ADD  CONSTRAINT [DF__PSDMX__数量__599B3724]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDD__F_PSZQ__62707447]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单] ADD  CONSTRAINT [DF__QDD__F_PSZQ__62707447]  DEFAULT ((30)) FOR [F_PSZQ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDD__F_LJZQ__63649880]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单] ADD  CONSTRAINT [DF__QDD__F_LJZQ__63649880]  DEFAULT ((30)) FOR [F_LJZQ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDD2__F_PSZQ__6641052B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单2] ADD  CONSTRAINT [DF__QDD2__F_PSZQ__6641052B]  DEFAULT ((30)) FOR [F_PSZQ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDD2__F_LJZQ__67352964]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单2] ADD  CONSTRAINT [DF__QDD2__F_LJZQ__67352964]  DEFAULT ((30)) FOR [F_LJZQ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDD3__F_PSZQ__6A11960F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单3] ADD  CONSTRAINT [DF__QDD3__F_PSZQ__6A11960F]  DEFAULT ((30)) FOR [F_PSZQ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDD3__F_LJZQ__6B05BA48]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单3] ADD  CONSTRAINT [DF__QDD3__F_LJZQ__6B05BA48]  DEFAULT ((30)) FOR [F_LJZQ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__数量__3B219CFC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细] ADD  CONSTRAINT [DF__QDDMX__数量__3B219CFC]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__件数__3C15C135]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细] ADD  CONSTRAINT [DF__QDDMX__件数__3C15C135]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__数量结存__3D09E56E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细] ADD  CONSTRAINT [DF__QDDMX__数量结存__3D09E56E]  DEFAULT ((0)) FOR [数量结存]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__F_RJXL__3DFE09A7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细] ADD  CONSTRAINT [DF__QDDMX__F_RJXL__3DFE09A7]  DEFAULT ((0)) FOR [F_RJXL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__F_JYSL__3EF22DE0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细] ADD  CONSTRAINT [DF__QDDMX__F_JYSL__3EF22DE0]  DEFAULT ((0)) FOR [F_JYSL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__批发价__3FE65219]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细] ADD  CONSTRAINT [DF__QDDMX__批发价__3FE65219]  DEFAULT ((0)) FOR [批发价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__零售价__40DA7652]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细] ADD  CONSTRAINT [DF__QDDMX__零售价__40DA7652]  DEFAULT ((0)) FOR [零售价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__优惠价__41CE9A8B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细] ADD  CONSTRAINT [DF__QDDMX__优惠价__41CE9A8B]  DEFAULT ((0)) FOR [优惠价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__会员价__42C2BEC4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细] ADD  CONSTRAINT [DF__QDDMX__会员价__42C2BEC4]  DEFAULT ((0)) FOR [会员价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX__特惠价__43B6E2FD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细] ADD  CONSTRAINT [DF__QDDMX__特惠价__43B6E2FD]  DEFAULT ((0)) FOR [特惠价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__数量__46934FA8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细2] ADD  CONSTRAINT [DF__QDDMX2__数量__46934FA8]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__件数__478773E1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细2] ADD  CONSTRAINT [DF__QDDMX2__件数__478773E1]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__数量结存__487B981A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细2] ADD  CONSTRAINT [DF__QDDMX2__数量结存__487B981A]  DEFAULT ((0)) FOR [数量结存]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__F_RJXL__496FBC53]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细2] ADD  CONSTRAINT [DF__QDDMX2__F_RJXL__496FBC53]  DEFAULT ((0)) FOR [F_RJXL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__F_JYSL__4A63E08C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细2] ADD  CONSTRAINT [DF__QDDMX2__F_JYSL__4A63E08C]  DEFAULT ((0)) FOR [F_JYSL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__批发价__4B5804C5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细2] ADD  CONSTRAINT [DF__QDDMX2__批发价__4B5804C5]  DEFAULT ((0)) FOR [批发价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__零售价__4C4C28FE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细2] ADD  CONSTRAINT [DF__QDDMX2__零售价__4C4C28FE]  DEFAULT ((0)) FOR [零售价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__优惠价__4D404D37]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细2] ADD  CONSTRAINT [DF__QDDMX2__优惠价__4D404D37]  DEFAULT ((0)) FOR [优惠价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__会员价__4E347170]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细2] ADD  CONSTRAINT [DF__QDDMX2__会员价__4E347170]  DEFAULT ((0)) FOR [会员价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX2__特惠价__4F2895A9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细2] ADD  CONSTRAINT [DF__QDDMX2__特惠价__4F2895A9]  DEFAULT ((0)) FOR [特惠价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__数量__52050254]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细3] ADD  CONSTRAINT [DF__QDDMX3__数量__52050254]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__件数__52F9268D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细3] ADD  CONSTRAINT [DF__QDDMX3__件数__52F9268D]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__数量结存__53ED4AC6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细3] ADD  CONSTRAINT [DF__QDDMX3__数量结存__53ED4AC6]  DEFAULT ((0)) FOR [数量结存]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__F_RJXL__54E16EFF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细3] ADD  CONSTRAINT [DF__QDDMX3__F_RJXL__54E16EFF]  DEFAULT ((0)) FOR [F_RJXL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__F_JYSL__55D59338]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细3] ADD  CONSTRAINT [DF__QDDMX3__F_JYSL__55D59338]  DEFAULT ((0)) FOR [F_JYSL]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__批发价__56C9B771]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细3] ADD  CONSTRAINT [DF__QDDMX3__批发价__56C9B771]  DEFAULT ((0)) FOR [批发价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__零售价__57BDDBAA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细3] ADD  CONSTRAINT [DF__QDDMX3__零售价__57BDDBAA]  DEFAULT ((0)) FOR [零售价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__优惠价__58B1FFE3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细3] ADD  CONSTRAINT [DF__QDDMX3__优惠价__58B1FFE3]  DEFAULT ((0)) FOR [优惠价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__会员价__59A6241C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细3] ADD  CONSTRAINT [DF__QDDMX3__会员价__59A6241C]  DEFAULT ((0)) FOR [会员价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__QDDMX3__特惠价__5A9A4855]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[签订单明细3] ADD  CONSTRAINT [DF__QDDMX3__特惠价__5A9A4855]  DEFAULT ((0)) FOR [特惠价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD__发票性质__6CAE0B98]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[入库单] ADD  CONSTRAINT [DF__RKD__发票性质__6CAE0B98]  DEFAULT ('') FOR [发票性质]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD__件数__6DA22FD1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[入库单] ADD  CONSTRAINT [DF__RKD__件数__6DA22FD1]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD2__发票性质__6E96540A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[入库单2] ADD  CONSTRAINT [DF__RKD2__发票性质__6E96540A]  DEFAULT ('') FOR [发票性质]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD2__件数__6F8A7843]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[入库单2] ADD  CONSTRAINT [DF__RKD2__件数__6F8A7843]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD3__发票性质__707E9C7C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[入库单3] ADD  CONSTRAINT [DF__RKD3__发票性质__707E9C7C]  DEFAULT ('') FOR [发票性质]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKD3__件数__7172C0B5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[入库单3] ADD  CONSTRAINT [DF__RKD3__件数__7172C0B5]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__数量__7266E4EE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[入库单明细] ADD  CONSTRAINT [DF__RKDMX__数量__7266E4EE]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__单价__735B0927]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[入库单明细] ADD  CONSTRAINT [DF__RKDMX__单价__735B0927]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__金额__744F2D60]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[入库单明细] ADD  CONSTRAINT [DF__RKDMX__金额__744F2D60]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__F_UN__75435199]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[入库单明细] ADD  CONSTRAINT [DF__RKDMX__F_UN__75435199]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__F_YLF__763775D2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[入库单明细] ADD  CONSTRAINT [DF__RKDMX__F_YLF__763775D2]  DEFAULT ((0)) FOR [F_YLF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__F_JGF__772B9A0B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[入库单明细] ADD  CONSTRAINT [DF__RKDMX__F_JGF__772B9A0B]  DEFAULT ((0)) FOR [F_JGF]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__件数__781FBE44]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[入库单明细] ADD  CONSTRAINT [DF__RKDMX__件数__781FBE44]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX__扣率__7B663F43]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[入库单明细] ADD  CONSTRAINT [DF__RKDMX__扣率__7B663F43]  DEFAULT ((0)) FOR [扣率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX2__数量__7913E27D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[入库单明细2] ADD  CONSTRAINT [DF__RKDMX2__数量__7913E27D]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX2__单价__7A0806B6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[入库单明细2] ADD  CONSTRAINT [DF__RKDMX2__单价__7A0806B6]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX2__金额__7AFC2AEF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[入库单明细2] ADD  CONSTRAINT [DF__RKDMX2__金额__7AFC2AEF]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX2__F_UN__7BF04F28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[入库单明细2] ADD  CONSTRAINT [DF__RKDMX2__F_UN__7BF04F28]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX2__件数__7CE47361]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[入库单明细2] ADD  CONSTRAINT [DF__RKDMX2__件数__7CE47361]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX2__扣率__7C5A637C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[入库单明细2] ADD  CONSTRAINT [DF__RKDMX2__扣率__7C5A637C]  DEFAULT ((0)) FOR [扣率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX3__件数__7DD8979A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[入库单明细3] ADD  CONSTRAINT [DF__RKDMX3__件数__7DD8979A]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__RKDMX3__扣率__7D4E87B5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[入库单明细3] ADD  CONSTRAINT [DF__RKDMX3__扣率__7D4E87B5]  DEFAULT ((0)) FOR [扣率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__库存高限__23FE4082]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品] ADD  CONSTRAINT [DF__SP__库存高限__23FE4082]  DEFAULT ((0)) FOR [库存高限]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__库存低限__24F264BB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品] ADD  CONSTRAINT [DF__SP__库存低限__24F264BB]  DEFAULT ((0)) FOR [库存低限]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__税率__25E688F4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品] ADD  CONSTRAINT [DF__SP__税率__25E688F4]  DEFAULT ((0.17)) FOR [税率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SP_参数]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品] ADD  CONSTRAINT [DF_SP_参数]  DEFAULT ((1)) FOR [参数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__批发价__26DAAD2D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品] ADD  CONSTRAINT [DF__SP__批发价__26DAAD2D]  DEFAULT ((0)) FOR [批发价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__零售价__27CED166]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品] ADD  CONSTRAINT [DF__SP__零售价__27CED166]  DEFAULT ((0)) FOR [零售价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__优惠价__28C2F59F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品] ADD  CONSTRAINT [DF__SP__优惠价__28C2F59F]  DEFAULT ((0)) FOR [优惠价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__会员价__29B719D8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品] ADD  CONSTRAINT [DF__SP__会员价__29B719D8]  DEFAULT ((0)) FOR [会员价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__特惠价__2AAB3E11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品] ADD  CONSTRAINT [DF__SP__特惠价__2AAB3E11]  DEFAULT ((0)) FOR [特惠价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__单位成本__2B9F624A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品] ADD  CONSTRAINT [DF__SP__单位成本__2B9F624A]  DEFAULT ((0)) FOR [单位成本]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__最大批次__2C938683]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品] ADD  CONSTRAINT [DF__SP__最大批次__2C938683]  DEFAULT ((0)) FOR [最大批次]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_IFSJ__2D87AABC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品] ADD  CONSTRAINT [DF__SP__F_IFSJ__2D87AABC]  DEFAULT ('') FOR [F_IFSJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_RATE__2E7BCEF5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品] ADD  CONSTRAINT [DF__SP__F_RATE__2E7BCEF5]  DEFAULT ((0)) FOR [F_RATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_FUNCTION__2F6FF32E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品] ADD  CONSTRAINT [DF__SP__F_FUNCTION__2F6FF32E]  DEFAULT ('') FOR [F_FUNCTION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_UN1__30641767]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品] ADD  CONSTRAINT [DF__SP__F_UN1__30641767]  DEFAULT ((0)) FOR [F_UN1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_UN2__31583BA0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品] ADD  CONSTRAINT [DF__SP__F_UN2__31583BA0]  DEFAULT ((0)) FOR [F_UN2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_UN3__324C5FD9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品] ADD  CONSTRAINT [DF__SP__F_UN3__324C5FD9]  DEFAULT ((0)) FOR [F_UN3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_UN4__33408412]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品] ADD  CONSTRAINT [DF__SP__F_UN4__33408412]  DEFAULT ((0)) FOR [F_UN4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_UN5__3434A84B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品] ADD  CONSTRAINT [DF__SP__F_UN5__3434A84B]  DEFAULT ((0)) FOR [F_UN5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_MAXJJ__3528CC84]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品] ADD  CONSTRAINT [DF__SP__F_MAXJJ__3528CC84]  DEFAULT ((0)) FOR [F_MAXJJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_MINJJ__361CF0BD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品] ADD  CONSTRAINT [DF__SP__F_MINJJ__361CF0BD]  DEFAULT ((0)) FOR [F_MINJJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SP__F_RECENTJJ__371114F6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品] ADD  CONSTRAINT [DF__SP__F_RECENTJJ__371114F6]  DEFAULT ((0)) FOR [F_RECENTJJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPSHORT__零售价__75785BC3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品历史] ADD  CONSTRAINT [DF__SPSHORT__零售价__75785BC3]  DEFAULT ((0)) FOR [零售价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPSHORT__参数__766C7FFC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品历史] ADD  CONSTRAINT [DF__SPSHORT__参数__766C7FFC]  DEFAULT ((0)) FOR [参数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPPC__数量__446B1014]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品批次] ADD  CONSTRAINT [DF__SPPC__数量__446B1014]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPPC__金额__455F344D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品批次] ADD  CONSTRAINT [DF__SPPC__金额__455F344D]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__库存高限__3805392F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品下载] ADD  CONSTRAINT [DF__SPDOWN__库存高限__3805392F]  DEFAULT ((0)) FOR [库存高限]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__库存低限__38F95D68]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品下载] ADD  CONSTRAINT [DF__SPDOWN__库存低限__38F95D68]  DEFAULT ((0)) FOR [库存低限]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__税率__39ED81A1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品下载] ADD  CONSTRAINT [DF__SPDOWN__税率__39ED81A1]  DEFAULT ((0.17)) FOR [税率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__批发价__3AE1A5DA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品下载] ADD  CONSTRAINT [DF__SPDOWN__批发价__3AE1A5DA]  DEFAULT ((0)) FOR [批发价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__零售价__3BD5CA13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品下载] ADD  CONSTRAINT [DF__SPDOWN__零售价__3BD5CA13]  DEFAULT ((0)) FOR [零售价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__优惠价__3CC9EE4C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品下载] ADD  CONSTRAINT [DF__SPDOWN__优惠价__3CC9EE4C]  DEFAULT ((0)) FOR [优惠价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__会员价__3DBE1285]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品下载] ADD  CONSTRAINT [DF__SPDOWN__会员价__3DBE1285]  DEFAULT ((0)) FOR [会员价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__特惠价__3EB236BE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品下载] ADD  CONSTRAINT [DF__SPDOWN__特惠价__3EB236BE]  DEFAULT ((0)) FOR [特惠价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__单位成本__3FA65AF7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品下载] ADD  CONSTRAINT [DF__SPDOWN__单位成本__3FA65AF7]  DEFAULT ((0)) FOR [单位成本]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__最大批次__409A7F30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品下载] ADD  CONSTRAINT [DF__SPDOWN__最大批次__409A7F30]  DEFAULT ((0)) FOR [最大批次]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__F_IFSJ__418EA369]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品下载] ADD  CONSTRAINT [DF__SPDOWN__F_IFSJ__418EA369]  DEFAULT ('') FOR [F_IFSJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__F_RATE__4282C7A2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品下载] ADD  CONSTRAINT [DF__SPDOWN__F_RATE__4282C7A2]  DEFAULT ((0)) FOR [F_RATE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__SPDOWN__F_FUNCTI__4376EBDB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品下载] ADD  CONSTRAINT [DF__SPDOWN__F_FUNCTI__4376EBDB]  DEFAULT ('') FOR [F_FUNCTION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_F_UN1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品下载] ADD  CONSTRAINT [DF_SPDOWN_F_UN1]  DEFAULT ((0)) FOR [F_UN1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_F_UN2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品下载] ADD  CONSTRAINT [DF_SPDOWN_F_UN2]  DEFAULT ((0)) FOR [F_UN2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_F_UN3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品下载] ADD  CONSTRAINT [DF_SPDOWN_F_UN3]  DEFAULT ((0)) FOR [F_UN3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_F_UN4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品下载] ADD  CONSTRAINT [DF_SPDOWN_F_UN4]  DEFAULT ((0)) FOR [F_UN4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_F_UN5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品下载] ADD  CONSTRAINT [DF_SPDOWN_F_UN5]  DEFAULT ((0)) FOR [F_UN5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_F_MAXJJ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品下载] ADD  CONSTRAINT [DF_SPDOWN_F_MAXJJ]  DEFAULT ((0)) FOR [F_MAXJJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_F_MINJJ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品下载] ADD  CONSTRAINT [DF_SPDOWN_F_MINJJ]  DEFAULT ((0)) FOR [F_MINJJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SPDOWN_F_RECENTJJ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[商品下载] ADD  CONSTRAINT [DF_SPDOWN_F_RECENTJJ]  DEFAULT ((0)) FOR [F_RECENTJJ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_TOP__0FC23DAB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售报表] ADD  CONSTRAINT [DF__XSBB__F_TOP__0FC23DAB]  DEFAULT ((0)) FOR [F_TOP]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_LEFT__10B661E4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售报表] ADD  CONSTRAINT [DF__XSBB__F_LEFT__10B661E4]  DEFAULT ((0)) FOR [F_LEFT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_ROWS__11AA861D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售报表] ADD  CONSTRAINT [DF__XSBB__F_ROWS__11AA861D]  DEFAULT ((35)) FOR [F_ROWS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_SIZE__129EAA56]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售报表] ADD  CONSTRAINT [DF__XSBB__F_SIZE__129EAA56]  DEFAULT ((39)) FOR [F_SIZE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_LENGTH__1392CE8F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售报表] ADD  CONSTRAINT [DF__XSBB__F_LENGTH__1392CE8F]  DEFAULT ((2794)) FOR [F_LENGTH]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_WIDTH__1486F2C8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售报表] ADD  CONSTRAINT [DF__XSBB__F_WIDTH__1486F2C8]  DEFAULT ((3734)) FOR [F_WIDTH]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_ORIENT__157B1701]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售报表] ADD  CONSTRAINT [DF__XSBB__F_ORIENT__157B1701]  DEFAULT ((1)) FOR [F_ORIENT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_HZ__166F3B3A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售报表] ADD  CONSTRAINT [DF__XSBB__F_HZ__166F3B3A]  DEFAULT ((0)) FOR [F_HZ]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_TITLEFON__17635F73]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售报表] ADD  CONSTRAINT [DF__XSBB__F_TITLEFON__17635F73]  DEFAULT ('宋体,18,1000') FOR [F_TITLEFONT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_BBFONT__185783AC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售报表] ADD  CONSTRAINT [DF__XSBB__F_BBFONT__185783AC]  DEFAULT ('宋体,10,0000') FOR [F_BBFONT]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_COLNUMBE__194BA7E5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售报表] ADD  CONSTRAINT [DF__XSBB__F_COLNUMBE__194BA7E5]  DEFAULT ((10)) FOR [F_COLNUMBER]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_COLCAPTI__1A3FCC1E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售报表] ADD  CONSTRAINT [DF__XSBB__F_COLCAPTI__1A3FCC1E]  DEFAULT ('代码,名称,单位,销售数量,销售金额,销售成本,销售毛利,毛利率,销售税金,价税合计,') FOR [F_COLCAPTION]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSBB__F_COLWIDTH__1B33F057]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售报表] ADD  CONSTRAINT [DF__XSBB__F_COLWIDTH__1B33F057]  DEFAULT ('7,15,3,7,7,7,7,7,7,7,') FOR [F_COLWIDTH]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX__数量__7F8BD5E2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售单明细] ADD  CONSTRAINT [DF__XHDMX__数量__7F8BD5E2]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX__单价__007FFA1B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售单明细] ADD  CONSTRAINT [DF__XHDMX__单价__007FFA1B]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX__扣率__01741E54]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售单明细] ADD  CONSTRAINT [DF__XHDMX__扣率__01741E54]  DEFAULT ((0)) FOR [扣率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX__金额__0268428D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售单明细] ADD  CONSTRAINT [DF__XHDMX__金额__0268428D]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX__税率__035C66C6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售单明细] ADD  CONSTRAINT [DF__XHDMX__税率__035C66C6]  DEFAULT ((0)) FOR [税率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX__税额__04508AFF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售单明细] ADD  CONSTRAINT [DF__XHDMX__税额__04508AFF]  DEFAULT ((0)) FOR [税额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX__F_CB__0544AF38]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售单明细] ADD  CONSTRAINT [DF__XHDMX__F_CB__0544AF38]  DEFAULT ((0)) FOR [F_CB]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX__税价合计__0638D371]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售单明细] ADD  CONSTRAINT [DF__XHDMX__税价合计__0638D371]  DEFAULT ((0)) FOR [税价合计]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX__F_UN__072CF7AA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售单明细] ADD  CONSTRAINT [DF__XHDMX__F_UN__072CF7AA]  DEFAULT ((0)) FOR [F_UN]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX2__数量__08211BE3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售单明细2] ADD  CONSTRAINT [DF__XHDMX2__数量__08211BE3]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX2__单价__0915401C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售单明细2] ADD  CONSTRAINT [DF__XHDMX2__单价__0915401C]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX2__扣率__0A096455]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售单明细2] ADD  CONSTRAINT [DF__XHDMX2__扣率__0A096455]  DEFAULT ((0)) FOR [扣率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX2__金额__0AFD888E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售单明细2] ADD  CONSTRAINT [DF__XHDMX2__金额__0AFD888E]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX2__税率__0BF1ACC7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售单明细2] ADD  CONSTRAINT [DF__XHDMX2__税率__0BF1ACC7]  DEFAULT ((0)) FOR [税率]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX2__税额__0CE5D100]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售单明细2] ADD  CONSTRAINT [DF__XHDMX2__税额__0CE5D100]  DEFAULT ((0)) FOR [税额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX2__F_CB__0DD9F539]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售单明细2] ADD  CONSTRAINT [DF__XHDMX2__F_CB__0DD9F539]  DEFAULT ((0)) FOR [F_CB]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XHDMX2__税价合计__0ECE1972]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售单明细2] ADD  CONSTRAINT [DF__XHDMX2__税价合计__0ECE1972]  DEFAULT ((0)) FOR [税价合计]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSMXZ__数量__1C281490]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售明细帐] ADD  CONSTRAINT [DF__XSMXZ__数量__1C281490]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSMXZ__金额__1D1C38C9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售明细帐] ADD  CONSTRAINT [DF__XSMXZ__金额__1D1C38C9]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSMXZ__F_CB__1E105D02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售明细帐] ADD  CONSTRAINT [DF__XSMXZ__F_CB__1E105D02]  DEFAULT ((0)) FOR [F_CB]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSMXZ__单价__1F04813B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售明细帐] ADD  CONSTRAINT [DF__XSMXZ__单价__1F04813B]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSMXZ__税额__1FF8A574]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售明细帐] ADD  CONSTRAINT [DF__XSMXZ__税额__1FF8A574]  DEFAULT ((0)) FOR [税额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__数量1__20ECC9AD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__数量1__20ECC9AD]  DEFAULT ((0)) FOR [数量1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__件数__21E0EDE6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__件数__21E0EDE6]  DEFAULT ((0)) FOR [件数]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__数量3__22D5121F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__数量3__22D5121F]  DEFAULT ((0)) FOR [数量3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__数量4__23C93658]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__数量4__23C93658]  DEFAULT ((0)) FOR [数量4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__数量5__24BD5A91]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__数量5__24BD5A91]  DEFAULT ((0)) FOR [数量5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__数量6__25B17ECA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__数量6__25B17ECA]  DEFAULT ((0)) FOR [数量6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__数量7__26A5A303]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__数量7__26A5A303]  DEFAULT ((0)) FOR [数量7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__数量8__2799C73C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__数量8__2799C73C]  DEFAULT ((0)) FOR [数量8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__数量9__288DEB75]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__数量9__288DEB75]  DEFAULT ((0)) FOR [数量9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__数量10__29820FAE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__数量10__29820FAE]  DEFAULT ((0)) FOR [数量10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__数量11__2A7633E7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__数量11__2A7633E7]  DEFAULT ((0)) FOR [数量11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__数量12__2B6A5820]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__数量12__2B6A5820]  DEFAULT ((0)) FOR [数量12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__金额1__2C5E7C59]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__金额1__2C5E7C59]  DEFAULT ((0)) FOR [金额1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__金额2__2D52A092]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__金额2__2D52A092]  DEFAULT ((0)) FOR [金额2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__金额3__2E46C4CB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__金额3__2E46C4CB]  DEFAULT ((0)) FOR [金额3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__金额4__2F3AE904]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__金额4__2F3AE904]  DEFAULT ((0)) FOR [金额4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__金额5__302F0D3D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__金额5__302F0D3D]  DEFAULT ((0)) FOR [金额5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__金额6__31233176]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__金额6__31233176]  DEFAULT ((0)) FOR [金额6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__金额7__321755AF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__金额7__321755AF]  DEFAULT ((0)) FOR [金额7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__金额8__330B79E8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__金额8__330B79E8]  DEFAULT ((0)) FOR [金额8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__金额9__33FF9E21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__金额9__33FF9E21]  DEFAULT ((0)) FOR [金额9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__金额10__34F3C25A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__金额10__34F3C25A]  DEFAULT ((0)) FOR [金额10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__金额11__35E7E693]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__金额11__35E7E693]  DEFAULT ((0)) FOR [金额11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__金额12__36DC0ACC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__金额12__36DC0ACC]  DEFAULT ((0)) FOR [金额12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB1__37D02F05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__F_CB1__37D02F05]  DEFAULT ((0)) FOR [F_CB1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB2__38C4533E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__F_CB2__38C4533E]  DEFAULT ((0)) FOR [F_CB2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB3__39B87777]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__F_CB3__39B87777]  DEFAULT ((0)) FOR [F_CB3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB4__3AAC9BB0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__F_CB4__3AAC9BB0]  DEFAULT ((0)) FOR [F_CB4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB5__3BA0BFE9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__F_CB5__3BA0BFE9]  DEFAULT ((0)) FOR [F_CB5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB6__3C94E422]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__F_CB6__3C94E422]  DEFAULT ((0)) FOR [F_CB6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB7__3D89085B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__F_CB7__3D89085B]  DEFAULT ((0)) FOR [F_CB7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB8__3E7D2C94]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__F_CB8__3E7D2C94]  DEFAULT ((0)) FOR [F_CB8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB9__3F7150CD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__F_CB9__3F7150CD]  DEFAULT ((0)) FOR [F_CB9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB10__40657506]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__F_CB10__40657506]  DEFAULT ((0)) FOR [F_CB10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB11__4159993F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__F_CB11__4159993F]  DEFAULT ((0)) FOR [F_CB11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__F_CB12__424DBD78]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__F_CB12__424DBD78]  DEFAULT ((0)) FOR [F_CB12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__税额1__4341E1B1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__税额1__4341E1B1]  DEFAULT ((0)) FOR [税额1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__税额2__443605EA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__税额2__443605EA]  DEFAULT ((0)) FOR [税额2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__税额3__452A2A23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__税额3__452A2A23]  DEFAULT ((0)) FOR [税额3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__税额4__461E4E5C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__税额4__461E4E5C]  DEFAULT ((0)) FOR [税额4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__税额5__47127295]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__税额5__47127295]  DEFAULT ((0)) FOR [税额5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__税额6__480696CE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__税额6__480696CE]  DEFAULT ((0)) FOR [税额6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__税额7__48FABB07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__税额7__48FABB07]  DEFAULT ((0)) FOR [税额7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__税额8__49EEDF40]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__税额8__49EEDF40]  DEFAULT ((0)) FOR [税额8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__税额9__4AE30379]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__税额9__4AE30379]  DEFAULT ((0)) FOR [税额9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__税额10__4BD727B2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__税额10__4BD727B2]  DEFAULT ((0)) FOR [税额10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__税额11__4CCB4BEB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__税额11__4CCB4BEB]  DEFAULT ((0)) FOR [税额11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__XSZZ__税额12__4DBF7024]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[销售总帐] ADD  CONSTRAINT [DF__XSZZ__税额12__4DBF7024]  DEFAULT ((0)) FOR [税额12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFHXZ__F_JH__4EB3945D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付核销帐] ADD  CONSTRAINT [DF__YFHXZ__F_JH__4EB3945D]  DEFAULT ((0)) FOR [F_JH]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFHXZ__F_FK__4FA7B896]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付核销帐] ADD  CONSTRAINT [DF__YFHXZ__F_FK__4FA7B896]  DEFAULT ((0)) FOR [F_FK]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFHXZ__F_HXJE__509BDCCF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付核销帐] ADD  CONSTRAINT [DF__YFHXZ__F_HXJE__509BDCCF]  DEFAULT ((0)) FOR [F_HXJE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZ__F_SR__51900108]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付明细帐] ADD  CONSTRAINT [DF__YFMXZ__F_SR__51900108]  DEFAULT ((0)) FOR [F_SR]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZ__F_FC__52842541]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付明细帐] ADD  CONSTRAINT [DF__YFMXZ__F_FC__52842541]  DEFAULT ((0)) FOR [F_FC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZ__F_YE__5378497A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付明细帐] ADD  CONSTRAINT [DF__YFMXZ__F_YE__5378497A]  DEFAULT ((0)) FOR [F_YE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFMXZ__F_HXJE__546C6DB3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付明细帐] ADD  CONSTRAINT [DF__YFMXZ__F_HXJE__546C6DB3]  DEFAULT ((0)) FOR [F_HXJE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_QCYE__556091EC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_QCYE__556091EC]  DEFAULT ((0)) FOR [F_QCYE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_QMYE__5654B625]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_QMYE__5654B625]  DEFAULT ((0)) FOR [F_QMYE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J1__5748DA5E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_J1__5748DA5E]  DEFAULT ((0)) FOR [F_J1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D1__583CFE97]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_D1__583CFE97]  DEFAULT ((0)) FOR [F_D1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J2__593122D0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_J2__593122D0]  DEFAULT ((0)) FOR [F_J2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D2__5A254709]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_D2__5A254709]  DEFAULT ((0)) FOR [F_D2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J3__5B196B42]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_J3__5B196B42]  DEFAULT ((0)) FOR [F_J3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D3__5C0D8F7B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_D3__5C0D8F7B]  DEFAULT ((0)) FOR [F_D3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J4__5D01B3B4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_J4__5D01B3B4]  DEFAULT ((0)) FOR [F_J4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D4__5DF5D7ED]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_D4__5DF5D7ED]  DEFAULT ((0)) FOR [F_D4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J5__5EE9FC26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_J5__5EE9FC26]  DEFAULT ((0)) FOR [F_J5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D5__5FDE205F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_D5__5FDE205F]  DEFAULT ((0)) FOR [F_D5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J6__60D24498]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_J6__60D24498]  DEFAULT ((0)) FOR [F_J6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D6__61C668D1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_D6__61C668D1]  DEFAULT ((0)) FOR [F_D6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J7__62BA8D0A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_J7__62BA8D0A]  DEFAULT ((0)) FOR [F_J7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D7__63AEB143]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_D7__63AEB143]  DEFAULT ((0)) FOR [F_D7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J8__64A2D57C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_J8__64A2D57C]  DEFAULT ((0)) FOR [F_J8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D8__6596F9B5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_D8__6596F9B5]  DEFAULT ((0)) FOR [F_D8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J9__668B1DEE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_J9__668B1DEE]  DEFAULT ((0)) FOR [F_J9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D9__677F4227]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_D9__677F4227]  DEFAULT ((0)) FOR [F_D9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J10__68736660]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_J10__68736660]  DEFAULT ((0)) FOR [F_J10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D10__69678A99]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_D10__69678A99]  DEFAULT ((0)) FOR [F_D10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J11__6A5BAED2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_J11__6A5BAED2]  DEFAULT ((0)) FOR [F_J11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D11__6B4FD30B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_D11__6B4FD30B]  DEFAULT ((0)) FOR [F_D11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_J12__6C43F744]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_J12__6C43F744]  DEFAULT ((0)) FOR [F_J12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YFZZ__F_D12__6D381B7D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应付总帐] ADD  CONSTRAINT [DF__YFZZ__F_D12__6D381B7D]  DEFAULT ((0)) FOR [F_D12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSHXZ__F_XS__6E2C3FB6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收核销帐] ADD  CONSTRAINT [DF__YSHXZ__F_XS__6E2C3FB6]  DEFAULT ((0)) FOR [F_XS]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSHXZ__F_SK__6F2063EF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收核销帐] ADD  CONSTRAINT [DF__YSHXZ__F_SK__6F2063EF]  DEFAULT ((0)) FOR [F_SK]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSHXZ__F_HXJE__70148828]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收核销帐] ADD  CONSTRAINT [DF__YSHXZ__F_HXJE__70148828]  DEFAULT ((0)) FOR [F_HXJE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZ__F_SR__7108AC61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收明细帐] ADD  CONSTRAINT [DF__YSMXZ__F_SR__7108AC61]  DEFAULT ((0)) FOR [F_SR]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZ__F_FC__71FCD09A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收明细帐] ADD  CONSTRAINT [DF__YSMXZ__F_FC__71FCD09A]  DEFAULT ((0)) FOR [F_FC]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZ__F_YE__72F0F4D3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收明细帐] ADD  CONSTRAINT [DF__YSMXZ__F_YE__72F0F4D3]  DEFAULT ((0)) FOR [F_YE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSMXZ__F_HXJE__73E5190C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收明细帐] ADD  CONSTRAINT [DF__YSMXZ__F_HXJE__73E5190C]  DEFAULT ((0)) FOR [F_HXJE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_QCYE__74D93D45]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_QCYE__74D93D45]  DEFAULT ((0)) FOR [F_QCYE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_QMYE__75CD617E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_QMYE__75CD617E]  DEFAULT ((0)) FOR [F_QMYE]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J1__76C185B7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_J1__76C185B7]  DEFAULT ((0)) FOR [F_J1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D1__77B5A9F0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_D1__77B5A9F0]  DEFAULT ((0)) FOR [F_D1]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J2__78A9CE29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_J2__78A9CE29]  DEFAULT ((0)) FOR [F_J2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D2__799DF262]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_D2__799DF262]  DEFAULT ((0)) FOR [F_D2]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J3__7A92169B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_J3__7A92169B]  DEFAULT ((0)) FOR [F_J3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D3__7B863AD4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_D3__7B863AD4]  DEFAULT ((0)) FOR [F_D3]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J4__7C7A5F0D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_J4__7C7A5F0D]  DEFAULT ((0)) FOR [F_J4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D4__7D6E8346]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_D4__7D6E8346]  DEFAULT ((0)) FOR [F_D4]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J5__7E62A77F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_J5__7E62A77F]  DEFAULT ((0)) FOR [F_J5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D5__7F56CBB8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_D5__7F56CBB8]  DEFAULT ((0)) FOR [F_D5]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J6__004AEFF1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_J6__004AEFF1]  DEFAULT ((0)) FOR [F_J6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D6__013F142A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_D6__013F142A]  DEFAULT ((0)) FOR [F_D6]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J7__02333863]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_J7__02333863]  DEFAULT ((0)) FOR [F_J7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D7__03275C9C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_D7__03275C9C]  DEFAULT ((0)) FOR [F_D7]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J8__041B80D5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_J8__041B80D5]  DEFAULT ((0)) FOR [F_J8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D8__050FA50E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_D8__050FA50E]  DEFAULT ((0)) FOR [F_D8]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J9__0603C947]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_J9__0603C947]  DEFAULT ((0)) FOR [F_J9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D9__06F7ED80]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_D9__06F7ED80]  DEFAULT ((0)) FOR [F_D9]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J10__07EC11B9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_J10__07EC11B9]  DEFAULT ((0)) FOR [F_J10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D10__08E035F2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_D10__08E035F2]  DEFAULT ((0)) FOR [F_D10]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J11__09D45A2B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_J11__09D45A2B]  DEFAULT ((0)) FOR [F_J11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D11__0AC87E64]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_D11__0AC87E64]  DEFAULT ((0)) FOR [F_D11]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_J12__0BBCA29D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_J12__0BBCA29D]  DEFAULT ((0)) FOR [F_J12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__YSZZ__F_D12__0CB0C6D6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[应收总帐] ADD  CONSTRAINT [DF__YSZZ__F_D12__0CB0C6D6]  DEFAULT ((0)) FOR [F_D12]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__ZZDMX__单价__0DA4EB0F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[组装单明细] ADD  CONSTRAINT [DF__ZZDMX__单价__0DA4EB0F]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__ZZDMX__数量__0E990F48]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[组装单明细] ADD  CONSTRAINT [DF__ZZDMX__数量__0E990F48]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__ZZDMX__金额__0F8D3381]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[组装单明细] ADD  CONSTRAINT [DF__ZZDMX__金额__0F8D3381]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__ZZDMX2__单价__108157BA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[组装单明细2] ADD  CONSTRAINT [DF__ZZDMX2__单价__108157BA]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__ZZDMX2__数量__11757BF3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[组装单明细2] ADD  CONSTRAINT [DF__ZZDMX2__数量__11757BF3]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__ZZDMX2__金额__1269A02C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[组装单明细2] ADD  CONSTRAINT [DF__ZZDMX2__金额__1269A02C]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__ZZDMX3__单价__135DC465]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[组装单明细3] ADD  CONSTRAINT [DF__ZZDMX3__单价__135DC465]  DEFAULT ((0)) FOR [单价]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__ZZDMX3__数量__1451E89E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[组装单明细3] ADD  CONSTRAINT [DF__ZZDMX3__数量__1451E89E]  DEFAULT ((0)) FOR [数量]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__ZZDMX3__金额__15460CD7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[组装单明细3] ADD  CONSTRAINT [DF__ZZDMX3__金额__15460CD7]  DEFAULT ((0)) FOR [金额]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SYZZ__储位__09E968C4]') AND parent_object_id = OBJECT_ID(N'[dbo].[SYZZ]'))
ALTER TABLE [dbo].[SYZZ]  WITH CHECK ADD  CONSTRAINT [FK__SYZZ__储位__09E968C4] FOREIGN KEY([储位])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SYZZ__储位__09E968C4]') AND parent_object_id = OBJECT_ID(N'[dbo].[SYZZ]'))
ALTER TABLE [dbo].[SYZZ] CHECK CONSTRAINT [FK__SYZZ__储位__09E968C4]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SYZZ__商品编号__0ADD8CFD]') AND parent_object_id = OBJECT_ID(N'[dbo].[SYZZ]'))
ALTER TABLE [dbo].[SYZZ]  WITH CHECK ADD  CONSTRAINT [FK__SYZZ__商品编号__0ADD8CFD] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SYZZ__商品编号__0ADD8CFD]') AND parent_object_id = OBJECT_ID(N'[dbo].[SYZZ]'))
ALTER TABLE [dbo].[SYZZ] CHECK CONSTRAINT [FK__SYZZ__商品编号__0ADD8CFD]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD__部门__5C229E14]') AND parent_object_id = OBJECT_ID(N'[dbo].[采购单]'))
ALTER TABLE [dbo].[采购单]  WITH CHECK ADD  CONSTRAINT [FK__CGD__部门__5C229E14] FOREIGN KEY([部门])
REFERENCES [dbo].[科室] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD__部门__5C229E14]') AND parent_object_id = OBJECT_ID(N'[dbo].[采购单]'))
ALTER TABLE [dbo].[采购单] CHECK CONSTRAINT [FK__CGD__部门__5C229E14]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD__储位__5D16C24D]') AND parent_object_id = OBJECT_ID(N'[dbo].[采购单]'))
ALTER TABLE [dbo].[采购单]  WITH CHECK ADD  CONSTRAINT [FK__CGD__储位__5D16C24D] FOREIGN KEY([储位])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD__储位__5D16C24D]') AND parent_object_id = OBJECT_ID(N'[dbo].[采购单]'))
ALTER TABLE [dbo].[采购单] CHECK CONSTRAINT [FK__CGD__储位__5D16C24D]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD__F_VENDOR__5E0AE686]') AND parent_object_id = OBJECT_ID(N'[dbo].[采购单]'))
ALTER TABLE [dbo].[采购单]  WITH CHECK ADD  CONSTRAINT [FK__CGD__F_VENDOR__5E0AE686] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[供应商] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD__F_VENDOR__5E0AE686]') AND parent_object_id = OBJECT_ID(N'[dbo].[采购单]'))
ALTER TABLE [dbo].[采购单] CHECK CONSTRAINT [FK__CGD__F_VENDOR__5E0AE686]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD2__部门__5EFF0ABF]') AND parent_object_id = OBJECT_ID(N'[dbo].[采购单2]'))
ALTER TABLE [dbo].[采购单2]  WITH CHECK ADD  CONSTRAINT [FK__CGD2__部门__5EFF0ABF] FOREIGN KEY([部门])
REFERENCES [dbo].[科室] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD2__部门__5EFF0ABF]') AND parent_object_id = OBJECT_ID(N'[dbo].[采购单2]'))
ALTER TABLE [dbo].[采购单2] CHECK CONSTRAINT [FK__CGD2__部门__5EFF0ABF]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD2__储位__5FF32EF8]') AND parent_object_id = OBJECT_ID(N'[dbo].[采购单2]'))
ALTER TABLE [dbo].[采购单2]  WITH CHECK ADD  CONSTRAINT [FK__CGD2__储位__5FF32EF8] FOREIGN KEY([储位])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD2__储位__5FF32EF8]') AND parent_object_id = OBJECT_ID(N'[dbo].[采购单2]'))
ALTER TABLE [dbo].[采购单2] CHECK CONSTRAINT [FK__CGD2__储位__5FF32EF8]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD2__F_VENDOR__60E75331]') AND parent_object_id = OBJECT_ID(N'[dbo].[采购单2]'))
ALTER TABLE [dbo].[采购单2]  WITH CHECK ADD  CONSTRAINT [FK__CGD2__F_VENDOR__60E75331] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[供应商] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGD2__F_VENDOR__60E75331]') AND parent_object_id = OBJECT_ID(N'[dbo].[采购单2]'))
ALTER TABLE [dbo].[采购单2] CHECK CONSTRAINT [FK__CGD2__F_VENDOR__60E75331]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGDMX__商品编号__61DB776A]') AND parent_object_id = OBJECT_ID(N'[dbo].[采购单明细]'))
ALTER TABLE [dbo].[采购单明细]  WITH CHECK ADD  CONSTRAINT [FK__CGDMX__商品编号__61DB776A] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGDMX__商品编号__61DB776A]') AND parent_object_id = OBJECT_ID(N'[dbo].[采购单明细]'))
ALTER TABLE [dbo].[采购单明细] CHECK CONSTRAINT [FK__CGDMX__商品编号__61DB776A]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGDMX2__商品编号__62CF9BA3]') AND parent_object_id = OBJECT_ID(N'[dbo].[采购单明细2]'))
ALTER TABLE [dbo].[采购单明细2]  WITH CHECK ADD  CONSTRAINT [FK__CGDMX2__商品编号__62CF9BA3] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CGDMX2__商品编号__62CF9BA3]') AND parent_object_id = OBJECT_ID(N'[dbo].[采购单明细2]'))
ALTER TABLE [dbo].[采购单明细2] CHECK CONSTRAINT [FK__CGDMX2__商品编号__62CF9BA3]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKD__储位__63C3BFDC]') AND parent_object_id = OBJECT_ID(N'[dbo].[出库单]'))
ALTER TABLE [dbo].[出库单]  WITH CHECK ADD  CONSTRAINT [FK__CKD__储位__63C3BFDC] FOREIGN KEY([储位])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKD__储位__63C3BFDC]') AND parent_object_id = OBJECT_ID(N'[dbo].[出库单]'))
ALTER TABLE [dbo].[出库单] CHECK CONSTRAINT [FK__CKD__储位__63C3BFDC]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKD2__储位__64B7E415]') AND parent_object_id = OBJECT_ID(N'[dbo].[出库单2]'))
ALTER TABLE [dbo].[出库单2]  WITH CHECK ADD  CONSTRAINT [FK__CKD2__储位__64B7E415] FOREIGN KEY([储位])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKD2__储位__64B7E415]') AND parent_object_id = OBJECT_ID(N'[dbo].[出库单2]'))
ALTER TABLE [dbo].[出库单2] CHECK CONSTRAINT [FK__CKD2__储位__64B7E415]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKDMX__商品编号__65AC084E]') AND parent_object_id = OBJECT_ID(N'[dbo].[出库单明细]'))
ALTER TABLE [dbo].[出库单明细]  WITH CHECK ADD  CONSTRAINT [FK__CKDMX__商品编号__65AC084E] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKDMX__商品编号__65AC084E]') AND parent_object_id = OBJECT_ID(N'[dbo].[出库单明细]'))
ALTER TABLE [dbo].[出库单明细] CHECK CONSTRAINT [FK__CKDMX__商品编号__65AC084E]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKDMX2__商品编号__66A02C87]') AND parent_object_id = OBJECT_ID(N'[dbo].[出库单明细2]'))
ALTER TABLE [dbo].[出库单明细2]  WITH CHECK ADD  CONSTRAINT [FK__CKDMX2__商品编号__66A02C87] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CKDMX2__商品编号__66A02C87]') AND parent_object_id = OBJECT_ID(N'[dbo].[出库单明细2]'))
ALTER TABLE [dbo].[出库单明细2] CHECK CONSTRAINT [FK__CKDMX2__商品编号__66A02C87]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD__储位1__679450C0]') AND parent_object_id = OBJECT_ID(N'[dbo].[调拨单]'))
ALTER TABLE [dbo].[调拨单]  WITH CHECK ADD  CONSTRAINT [FK__DBD__储位1__679450C0] FOREIGN KEY([储位1])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD__储位1__679450C0]') AND parent_object_id = OBJECT_ID(N'[dbo].[调拨单]'))
ALTER TABLE [dbo].[调拨单] CHECK CONSTRAINT [FK__DBD__储位1__679450C0]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD__储位2__688874F9]') AND parent_object_id = OBJECT_ID(N'[dbo].[调拨单]'))
ALTER TABLE [dbo].[调拨单]  WITH CHECK ADD  CONSTRAINT [FK__DBD__储位2__688874F9] FOREIGN KEY([储位2])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD__储位2__688874F9]') AND parent_object_id = OBJECT_ID(N'[dbo].[调拨单]'))
ALTER TABLE [dbo].[调拨单] CHECK CONSTRAINT [FK__DBD__储位2__688874F9]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD2__储位1__697C9932]') AND parent_object_id = OBJECT_ID(N'[dbo].[调拨单2]'))
ALTER TABLE [dbo].[调拨单2]  WITH CHECK ADD  CONSTRAINT [FK__DBD2__储位1__697C9932] FOREIGN KEY([储位1])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD2__储位1__697C9932]') AND parent_object_id = OBJECT_ID(N'[dbo].[调拨单2]'))
ALTER TABLE [dbo].[调拨单2] CHECK CONSTRAINT [FK__DBD2__储位1__697C9932]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD2__储位2__6A70BD6B]') AND parent_object_id = OBJECT_ID(N'[dbo].[调拨单2]'))
ALTER TABLE [dbo].[调拨单2]  WITH CHECK ADD  CONSTRAINT [FK__DBD2__储位2__6A70BD6B] FOREIGN KEY([储位2])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBD2__储位2__6A70BD6B]') AND parent_object_id = OBJECT_ID(N'[dbo].[调拨单2]'))
ALTER TABLE [dbo].[调拨单2] CHECK CONSTRAINT [FK__DBD2__储位2__6A70BD6B]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBDMX__商品编号__6B64E1A4]') AND parent_object_id = OBJECT_ID(N'[dbo].[调拨单明细]'))
ALTER TABLE [dbo].[调拨单明细]  WITH CHECK ADD  CONSTRAINT [FK__DBDMX__商品编号__6B64E1A4] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBDMX__商品编号__6B64E1A4]') AND parent_object_id = OBJECT_ID(N'[dbo].[调拨单明细]'))
ALTER TABLE [dbo].[调拨单明细] CHECK CONSTRAINT [FK__DBDMX__商品编号__6B64E1A4]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBDMX2__商品编号__6C5905DD]') AND parent_object_id = OBJECT_ID(N'[dbo].[调拨单明细2]'))
ALTER TABLE [dbo].[调拨单明细2]  WITH CHECK ADD  CONSTRAINT [FK__DBDMX2__商品编号__6C5905DD] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBDMX2__商品编号__6C5905DD]') AND parent_object_id = OBJECT_ID(N'[dbo].[调拨单明细2]'))
ALTER TABLE [dbo].[调拨单明细2] CHECK CONSTRAINT [FK__DBDMX2__商品编号__6C5905DD]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBZZ__储位__6D4D2A16]') AND parent_object_id = OBJECT_ID(N'[dbo].[调拨总帐]'))
ALTER TABLE [dbo].[调拨总帐]  WITH CHECK ADD  CONSTRAINT [FK__DBZZ__储位__6D4D2A16] FOREIGN KEY([储位])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBZZ__储位__6D4D2A16]') AND parent_object_id = OBJECT_ID(N'[dbo].[调拨总帐]'))
ALTER TABLE [dbo].[调拨总帐] CHECK CONSTRAINT [FK__DBZZ__储位__6D4D2A16]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBZZ__商品编号__6E414E4F]') AND parent_object_id = OBJECT_ID(N'[dbo].[调拨总帐]'))
ALTER TABLE [dbo].[调拨总帐]  WITH CHECK ADD  CONSTRAINT [FK__DBZZ__商品编号__6E414E4F] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__DBZZ__商品编号__6E414E4F]') AND parent_object_id = OBJECT_ID(N'[dbo].[调拨总帐]'))
ALTER TABLE [dbo].[调拨总帐] CHECK CONSTRAINT [FK__DBZZ__商品编号__6E414E4F]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__TJDMX2__商品编号__0BD1B136]') AND parent_object_id = OBJECT_ID(N'[dbo].[调价单明细2]'))
ALTER TABLE [dbo].[调价单明细2]  WITH CHECK ADD  CONSTRAINT [FK__TJDMX2__商品编号__0BD1B136] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__TJDMX2__商品编号__0BD1B136]') AND parent_object_id = OBJECT_ID(N'[dbo].[调价单明细2]'))
ALTER TABLE [dbo].[调价单明细2] CHECK CONSTRAINT [FK__TJDMX2__商品编号__0BD1B136]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JGZZ__储位__6F357288]') AND parent_object_id = OBJECT_ID(N'[dbo].[加工总帐]'))
ALTER TABLE [dbo].[加工总帐]  WITH CHECK ADD  CONSTRAINT [FK__JGZZ__储位__6F357288] FOREIGN KEY([储位])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JGZZ__储位__6F357288]') AND parent_object_id = OBJECT_ID(N'[dbo].[加工总帐]'))
ALTER TABLE [dbo].[加工总帐] CHECK CONSTRAINT [FK__JGZZ__储位__6F357288]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JGZZ__商品编号__702996C1]') AND parent_object_id = OBJECT_ID(N'[dbo].[加工总帐]'))
ALTER TABLE [dbo].[加工总帐]  WITH CHECK ADD  CONSTRAINT [FK__JGZZ__商品编号__702996C1] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JGZZ__商品编号__702996C1]') AND parent_object_id = OBJECT_ID(N'[dbo].[加工总帐]'))
ALTER TABLE [dbo].[加工总帐] CHECK CONSTRAINT [FK__JGZZ__商品编号__702996C1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD__部门__711DBAFA]') AND parent_object_id = OBJECT_ID(N'[dbo].[进货单]'))
ALTER TABLE [dbo].[进货单]  WITH CHECK ADD  CONSTRAINT [FK__JHD__部门__711DBAFA] FOREIGN KEY([部门])
REFERENCES [dbo].[科室] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD__部门__711DBAFA]') AND parent_object_id = OBJECT_ID(N'[dbo].[进货单]'))
ALTER TABLE [dbo].[进货单] CHECK CONSTRAINT [FK__JHD__部门__711DBAFA]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD__储位__7211DF33]') AND parent_object_id = OBJECT_ID(N'[dbo].[进货单]'))
ALTER TABLE [dbo].[进货单]  WITH CHECK ADD  CONSTRAINT [FK__JHD__储位__7211DF33] FOREIGN KEY([储位])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD__储位__7211DF33]') AND parent_object_id = OBJECT_ID(N'[dbo].[进货单]'))
ALTER TABLE [dbo].[进货单] CHECK CONSTRAINT [FK__JHD__储位__7211DF33]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD__F_VENDOR__7306036C]') AND parent_object_id = OBJECT_ID(N'[dbo].[进货单]'))
ALTER TABLE [dbo].[进货单]  WITH CHECK ADD  CONSTRAINT [FK__JHD__F_VENDOR__7306036C] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[供应商] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD__F_VENDOR__7306036C]') AND parent_object_id = OBJECT_ID(N'[dbo].[进货单]'))
ALTER TABLE [dbo].[进货单] CHECK CONSTRAINT [FK__JHD__F_VENDOR__7306036C]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD2__部门__73FA27A5]') AND parent_object_id = OBJECT_ID(N'[dbo].[进货单2]'))
ALTER TABLE [dbo].[进货单2]  WITH CHECK ADD  CONSTRAINT [FK__JHD2__部门__73FA27A5] FOREIGN KEY([部门])
REFERENCES [dbo].[科室] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD2__部门__73FA27A5]') AND parent_object_id = OBJECT_ID(N'[dbo].[进货单2]'))
ALTER TABLE [dbo].[进货单2] CHECK CONSTRAINT [FK__JHD2__部门__73FA27A5]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD2__储位__74EE4BDE]') AND parent_object_id = OBJECT_ID(N'[dbo].[进货单2]'))
ALTER TABLE [dbo].[进货单2]  WITH CHECK ADD  CONSTRAINT [FK__JHD2__储位__74EE4BDE] FOREIGN KEY([储位])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD2__储位__74EE4BDE]') AND parent_object_id = OBJECT_ID(N'[dbo].[进货单2]'))
ALTER TABLE [dbo].[进货单2] CHECK CONSTRAINT [FK__JHD2__储位__74EE4BDE]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD2__F_VENDOR__75E27017]') AND parent_object_id = OBJECT_ID(N'[dbo].[进货单2]'))
ALTER TABLE [dbo].[进货单2]  WITH CHECK ADD  CONSTRAINT [FK__JHD2__F_VENDOR__75E27017] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[供应商] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHD2__F_VENDOR__75E27017]') AND parent_object_id = OBJECT_ID(N'[dbo].[进货单2]'))
ALTER TABLE [dbo].[进货单2] CHECK CONSTRAINT [FK__JHD2__F_VENDOR__75E27017]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHDMX__商品编号__76D69450]') AND parent_object_id = OBJECT_ID(N'[dbo].[进货单明细]'))
ALTER TABLE [dbo].[进货单明细]  WITH CHECK ADD  CONSTRAINT [FK__JHDMX__商品编号__76D69450] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHDMX__商品编号__76D69450]') AND parent_object_id = OBJECT_ID(N'[dbo].[进货单明细]'))
ALTER TABLE [dbo].[进货单明细] CHECK CONSTRAINT [FK__JHDMX__商品编号__76D69450]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHDMX2__商品编号__77CAB889]') AND parent_object_id = OBJECT_ID(N'[dbo].[进货单明细2]'))
ALTER TABLE [dbo].[进货单明细2]  WITH CHECK ADD  CONSTRAINT [FK__JHDMX2__商品编号__77CAB889] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHDMX2__商品编号__77CAB889]') AND parent_object_id = OBJECT_ID(N'[dbo].[进货单明细2]'))
ALTER TABLE [dbo].[进货单明细2] CHECK CONSTRAINT [FK__JHDMX2__商品编号__77CAB889]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHZZ__储位__78BEDCC2]') AND parent_object_id = OBJECT_ID(N'[dbo].[进货总帐]'))
ALTER TABLE [dbo].[进货总帐]  WITH CHECK ADD  CONSTRAINT [FK__JHZZ__储位__78BEDCC2] FOREIGN KEY([储位])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHZZ__储位__78BEDCC2]') AND parent_object_id = OBJECT_ID(N'[dbo].[进货总帐]'))
ALTER TABLE [dbo].[进货总帐] CHECK CONSTRAINT [FK__JHZZ__储位__78BEDCC2]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHZZ__商品编号__79B300FB]') AND parent_object_id = OBJECT_ID(N'[dbo].[进货总帐]'))
ALTER TABLE [dbo].[进货总帐]  WITH CHECK ADD  CONSTRAINT [FK__JHZZ__商品编号__79B300FB] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__JHZZ__商品编号__79B300FB]') AND parent_object_id = OBJECT_ID(N'[dbo].[进货总帐]'))
ALTER TABLE [dbo].[进货总帐] CHECK CONSTRAINT [FK__JHZZ__商品编号__79B300FB]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCMXZ__储位__7AA72534]') AND parent_object_id = OBJECT_ID(N'[dbo].[库存明细帐]'))
ALTER TABLE [dbo].[库存明细帐]  WITH CHECK ADD  CONSTRAINT [FK__KCMXZ__储位__7AA72534] FOREIGN KEY([储位])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCMXZ__储位__7AA72534]') AND parent_object_id = OBJECT_ID(N'[dbo].[库存明细帐]'))
ALTER TABLE [dbo].[库存明细帐] CHECK CONSTRAINT [FK__KCMXZ__储位__7AA72534]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCMXZ__商品编号__7B9B496D]') AND parent_object_id = OBJECT_ID(N'[dbo].[库存明细帐]'))
ALTER TABLE [dbo].[库存明细帐]  WITH CHECK ADD  CONSTRAINT [FK__KCMXZ__商品编号__7B9B496D] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCMXZ__商品编号__7B9B496D]') AND parent_object_id = OBJECT_ID(N'[dbo].[库存明细帐]'))
ALTER TABLE [dbo].[库存明细帐] CHECK CONSTRAINT [FK__KCMXZ__商品编号__7B9B496D]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCZZ__储位__7C8F6DA6]') AND parent_object_id = OBJECT_ID(N'[dbo].[库存总帐]'))
ALTER TABLE [dbo].[库存总帐]  WITH CHECK ADD  CONSTRAINT [FK__KCZZ__储位__7C8F6DA6] FOREIGN KEY([储位])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCZZ__储位__7C8F6DA6]') AND parent_object_id = OBJECT_ID(N'[dbo].[库存总帐]'))
ALTER TABLE [dbo].[库存总帐] CHECK CONSTRAINT [FK__KCZZ__储位__7C8F6DA6]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCZZ__商品编号__7D8391DF]') AND parent_object_id = OBJECT_ID(N'[dbo].[库存总帐]'))
ALTER TABLE [dbo].[库存总帐]  WITH CHECK ADD  CONSTRAINT [FK__KCZZ__商品编号__7D8391DF] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__KCZZ__商品编号__7D8391DF]') AND parent_object_id = OBJECT_ID(N'[dbo].[库存总帐]'))
ALTER TABLE [dbo].[库存总帐] CHECK CONSTRAINT [FK__KCZZ__商品编号__7D8391DF]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDD__部门__7E77B618]') AND parent_object_id = OBJECT_ID(N'[dbo].[签订单]'))
ALTER TABLE [dbo].[签订单]  WITH CHECK ADD  CONSTRAINT [FK__QDD__部门__7E77B618] FOREIGN KEY([部门])
REFERENCES [dbo].[科室] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDD__部门__7E77B618]') AND parent_object_id = OBJECT_ID(N'[dbo].[签订单]'))
ALTER TABLE [dbo].[签订单] CHECK CONSTRAINT [FK__QDD__部门__7E77B618]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDD__储位__7F6BDA51]') AND parent_object_id = OBJECT_ID(N'[dbo].[签订单]'))
ALTER TABLE [dbo].[签订单]  WITH CHECK ADD  CONSTRAINT [FK__QDD__储位__7F6BDA51] FOREIGN KEY([储位])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDD__储位__7F6BDA51]') AND parent_object_id = OBJECT_ID(N'[dbo].[签订单]'))
ALTER TABLE [dbo].[签订单] CHECK CONSTRAINT [FK__QDD__储位__7F6BDA51]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDD2__部门__005FFE8A]') AND parent_object_id = OBJECT_ID(N'[dbo].[签订单2]'))
ALTER TABLE [dbo].[签订单2]  WITH CHECK ADD  CONSTRAINT [FK__QDD2__部门__005FFE8A] FOREIGN KEY([部门])
REFERENCES [dbo].[科室] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDD2__部门__005FFE8A]') AND parent_object_id = OBJECT_ID(N'[dbo].[签订单2]'))
ALTER TABLE [dbo].[签订单2] CHECK CONSTRAINT [FK__QDD2__部门__005FFE8A]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDD2__储位__015422C3]') AND parent_object_id = OBJECT_ID(N'[dbo].[签订单2]'))
ALTER TABLE [dbo].[签订单2]  WITH CHECK ADD  CONSTRAINT [FK__QDD2__储位__015422C3] FOREIGN KEY([储位])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDD2__储位__015422C3]') AND parent_object_id = OBJECT_ID(N'[dbo].[签订单2]'))
ALTER TABLE [dbo].[签订单2] CHECK CONSTRAINT [FK__QDD2__储位__015422C3]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDDMX__商品编号__024846FC]') AND parent_object_id = OBJECT_ID(N'[dbo].[签订单明细]'))
ALTER TABLE [dbo].[签订单明细]  WITH CHECK ADD  CONSTRAINT [FK__QDDMX__商品编号__024846FC] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDDMX__商品编号__024846FC]') AND parent_object_id = OBJECT_ID(N'[dbo].[签订单明细]'))
ALTER TABLE [dbo].[签订单明细] CHECK CONSTRAINT [FK__QDDMX__商品编号__024846FC]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDDMX2__商品编号__033C6B35]') AND parent_object_id = OBJECT_ID(N'[dbo].[签订单明细2]'))
ALTER TABLE [dbo].[签订单明细2]  WITH CHECK ADD  CONSTRAINT [FK__QDDMX2__商品编号__033C6B35] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__QDDMX2__商品编号__033C6B35]') AND parent_object_id = OBJECT_ID(N'[dbo].[签订单明细2]'))
ALTER TABLE [dbo].[签订单明细2] CHECK CONSTRAINT [FK__QDDMX2__商品编号__033C6B35]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKD__储位__04308F6E]') AND parent_object_id = OBJECT_ID(N'[dbo].[入库单]'))
ALTER TABLE [dbo].[入库单]  WITH CHECK ADD  CONSTRAINT [FK__RKD__储位__04308F6E] FOREIGN KEY([储位])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKD__储位__04308F6E]') AND parent_object_id = OBJECT_ID(N'[dbo].[入库单]'))
ALTER TABLE [dbo].[入库单] CHECK CONSTRAINT [FK__RKD__储位__04308F6E]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKD2__储位__0524B3A7]') AND parent_object_id = OBJECT_ID(N'[dbo].[入库单2]'))
ALTER TABLE [dbo].[入库单2]  WITH CHECK ADD  CONSTRAINT [FK__RKD2__储位__0524B3A7] FOREIGN KEY([储位])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKD2__储位__0524B3A7]') AND parent_object_id = OBJECT_ID(N'[dbo].[入库单2]'))
ALTER TABLE [dbo].[入库单2] CHECK CONSTRAINT [FK__RKD2__储位__0524B3A7]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKDMX__商品编号__0618D7E0]') AND parent_object_id = OBJECT_ID(N'[dbo].[入库单明细]'))
ALTER TABLE [dbo].[入库单明细]  WITH CHECK ADD  CONSTRAINT [FK__RKDMX__商品编号__0618D7E0] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKDMX__商品编号__0618D7E0]') AND parent_object_id = OBJECT_ID(N'[dbo].[入库单明细]'))
ALTER TABLE [dbo].[入库单明细] CHECK CONSTRAINT [FK__RKDMX__商品编号__0618D7E0]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKDMX2__商品编号__070CFC19]') AND parent_object_id = OBJECT_ID(N'[dbo].[入库单明细2]'))
ALTER TABLE [dbo].[入库单明细2]  WITH CHECK ADD  CONSTRAINT [FK__RKDMX2__商品编号__070CFC19] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__RKDMX2__商品编号__070CFC19]') AND parent_object_id = OBJECT_ID(N'[dbo].[入库单明细2]'))
ALTER TABLE [dbo].[入库单明细2] CHECK CONSTRAINT [FK__RKDMX2__商品编号__070CFC19]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SPPC__储位__08012052]') AND parent_object_id = OBJECT_ID(N'[dbo].[商品批次]'))
ALTER TABLE [dbo].[商品批次]  WITH CHECK ADD  CONSTRAINT [FK__SPPC__储位__08012052] FOREIGN KEY([储位])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SPPC__储位__08012052]') AND parent_object_id = OBJECT_ID(N'[dbo].[商品批次]'))
ALTER TABLE [dbo].[商品批次] CHECK CONSTRAINT [FK__SPPC__储位__08012052]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SPPC__商品编号__08F5448B]') AND parent_object_id = OBJECT_ID(N'[dbo].[商品批次]'))
ALTER TABLE [dbo].[商品批次]  WITH CHECK ADD  CONSTRAINT [FK__SPPC__商品编号__08F5448B] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SPPC__商品编号__08F5448B]') AND parent_object_id = OBJECT_ID(N'[dbo].[商品批次]'))
ALTER TABLE [dbo].[商品批次] CHECK CONSTRAINT [FK__SPPC__商品编号__08F5448B]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD__部门__0CC5D56F]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售单]'))
ALTER TABLE [dbo].[销售单]  WITH CHECK ADD  CONSTRAINT [FK__XHD__部门__0CC5D56F] FOREIGN KEY([部门])
REFERENCES [dbo].[科室] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD__部门__0CC5D56F]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售单]'))
ALTER TABLE [dbo].[销售单] CHECK CONSTRAINT [FK__XHD__部门__0CC5D56F]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD__F_CUSTOM__0DB9F9A8]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售单]'))
ALTER TABLE [dbo].[销售单]  WITH CHECK ADD  CONSTRAINT [FK__XHD__F_CUSTOM__0DB9F9A8] FOREIGN KEY([F_CUSTOM])
REFERENCES [dbo].[客户] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD__F_CUSTOM__0DB9F9A8]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售单]'))
ALTER TABLE [dbo].[销售单] CHECK CONSTRAINT [FK__XHD__F_CUSTOM__0DB9F9A8]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD__储位__0EAE1DE1]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售单]'))
ALTER TABLE [dbo].[销售单]  WITH CHECK ADD  CONSTRAINT [FK__XHD__储位__0EAE1DE1] FOREIGN KEY([储位])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD__储位__0EAE1DE1]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售单]'))
ALTER TABLE [dbo].[销售单] CHECK CONSTRAINT [FK__XHD__储位__0EAE1DE1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD__业务员__0FA2421A]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售单]'))
ALTER TABLE [dbo].[销售单]  WITH CHECK ADD  CONSTRAINT [FK__XHD__业务员__0FA2421A] FOREIGN KEY([业务员])
REFERENCES [dbo].[业务员] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD__业务员__0FA2421A]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售单]'))
ALTER TABLE [dbo].[销售单] CHECK CONSTRAINT [FK__XHD__业务员__0FA2421A]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD2__部门__10966653]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售单2]'))
ALTER TABLE [dbo].[销售单2]  WITH CHECK ADD  CONSTRAINT [FK__XHD2__部门__10966653] FOREIGN KEY([部门])
REFERENCES [dbo].[科室] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD2__部门__10966653]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售单2]'))
ALTER TABLE [dbo].[销售单2] CHECK CONSTRAINT [FK__XHD2__部门__10966653]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD2__F_CUSTOM__118A8A8C]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售单2]'))
ALTER TABLE [dbo].[销售单2]  WITH CHECK ADD  CONSTRAINT [FK__XHD2__F_CUSTOM__118A8A8C] FOREIGN KEY([F_CUSTOM])
REFERENCES [dbo].[客户] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD2__F_CUSTOM__118A8A8C]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售单2]'))
ALTER TABLE [dbo].[销售单2] CHECK CONSTRAINT [FK__XHD2__F_CUSTOM__118A8A8C]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD2__储位__127EAEC5]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售单2]'))
ALTER TABLE [dbo].[销售单2]  WITH CHECK ADD  CONSTRAINT [FK__XHD2__储位__127EAEC5] FOREIGN KEY([储位])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD2__储位__127EAEC5]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售单2]'))
ALTER TABLE [dbo].[销售单2] CHECK CONSTRAINT [FK__XHD2__储位__127EAEC5]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD2__业务员__1372D2FE]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售单2]'))
ALTER TABLE [dbo].[销售单2]  WITH CHECK ADD  CONSTRAINT [FK__XHD2__业务员__1372D2FE] FOREIGN KEY([业务员])
REFERENCES [dbo].[业务员] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHD2__业务员__1372D2FE]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售单2]'))
ALTER TABLE [dbo].[销售单2] CHECK CONSTRAINT [FK__XHD2__业务员__1372D2FE]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHDMX__商品编号__1466F737]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售单明细]'))
ALTER TABLE [dbo].[销售单明细]  WITH CHECK ADD  CONSTRAINT [FK__XHDMX__商品编号__1466F737] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHDMX__商品编号__1466F737]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售单明细]'))
ALTER TABLE [dbo].[销售单明细] CHECK CONSTRAINT [FK__XHDMX__商品编号__1466F737]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHDMX2__商品编号__155B1B70]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售单明细2]'))
ALTER TABLE [dbo].[销售单明细2]  WITH CHECK ADD  CONSTRAINT [FK__XHDMX2__商品编号__155B1B70] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XHDMX2__商品编号__155B1B70]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售单明细2]'))
ALTER TABLE [dbo].[销售单明细2] CHECK CONSTRAINT [FK__XHDMX2__商品编号__155B1B70]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__部门__164F3FA9]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售明细帐]'))
ALTER TABLE [dbo].[销售明细帐]  WITH CHECK ADD  CONSTRAINT [FK__XSMXZ__部门__164F3FA9] FOREIGN KEY([部门])
REFERENCES [dbo].[科室] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__部门__164F3FA9]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售明细帐]'))
ALTER TABLE [dbo].[销售明细帐] CHECK CONSTRAINT [FK__XSMXZ__部门__164F3FA9]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__F_CUSTOM__174363E2]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售明细帐]'))
ALTER TABLE [dbo].[销售明细帐]  WITH CHECK ADD  CONSTRAINT [FK__XSMXZ__F_CUSTOM__174363E2] FOREIGN KEY([F_CUSTOM])
REFERENCES [dbo].[客户] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__F_CUSTOM__174363E2]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售明细帐]'))
ALTER TABLE [dbo].[销售明细帐] CHECK CONSTRAINT [FK__XSMXZ__F_CUSTOM__174363E2]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__储位__1837881B]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售明细帐]'))
ALTER TABLE [dbo].[销售明细帐]  WITH CHECK ADD  CONSTRAINT [FK__XSMXZ__储位__1837881B] FOREIGN KEY([储位])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__储位__1837881B]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售明细帐]'))
ALTER TABLE [dbo].[销售明细帐] CHECK CONSTRAINT [FK__XSMXZ__储位__1837881B]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__商品编号__192BAC54]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售明细帐]'))
ALTER TABLE [dbo].[销售明细帐]  WITH CHECK ADD  CONSTRAINT [FK__XSMXZ__商品编号__192BAC54] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__商品编号__192BAC54]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售明细帐]'))
ALTER TABLE [dbo].[销售明细帐] CHECK CONSTRAINT [FK__XSMXZ__商品编号__192BAC54]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__业务员__1A1FD08D]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售明细帐]'))
ALTER TABLE [dbo].[销售明细帐]  WITH CHECK ADD  CONSTRAINT [FK__XSMXZ__业务员__1A1FD08D] FOREIGN KEY([业务员])
REFERENCES [dbo].[业务员] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSMXZ__业务员__1A1FD08D]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售明细帐]'))
ALTER TABLE [dbo].[销售明细帐] CHECK CONSTRAINT [FK__XSMXZ__业务员__1A1FD08D]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSZZ__储位__1B13F4C6]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售总帐]'))
ALTER TABLE [dbo].[销售总帐]  WITH CHECK ADD  CONSTRAINT [FK__XSZZ__储位__1B13F4C6] FOREIGN KEY([储位])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSZZ__储位__1B13F4C6]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售总帐]'))
ALTER TABLE [dbo].[销售总帐] CHECK CONSTRAINT [FK__XSZZ__储位__1B13F4C6]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSZZ__商品编号__1C0818FF]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售总帐]'))
ALTER TABLE [dbo].[销售总帐]  WITH CHECK ADD  CONSTRAINT [FK__XSZZ__商品编号__1C0818FF] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__XSZZ__商品编号__1C0818FF]') AND parent_object_id = OBJECT_ID(N'[dbo].[销售总帐]'))
ALTER TABLE [dbo].[销售总帐] CHECK CONSTRAINT [FK__XSZZ__商品编号__1C0818FF]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YWY__部门__2C3E80C8]') AND parent_object_id = OBJECT_ID(N'[dbo].[业务员]'))
ALTER TABLE [dbo].[业务员]  WITH CHECK ADD  CONSTRAINT [FK__YWY__部门__2C3E80C8] FOREIGN KEY([部门])
REFERENCES [dbo].[科室] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YWY__部门__2C3E80C8]') AND parent_object_id = OBJECT_ID(N'[dbo].[业务员]'))
ALTER TABLE [dbo].[业务员] CHECK CONSTRAINT [FK__YWY__部门__2C3E80C8]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFHXZ__部门__1CFC3D38]') AND parent_object_id = OBJECT_ID(N'[dbo].[应付核销帐]'))
ALTER TABLE [dbo].[应付核销帐]  WITH CHECK ADD  CONSTRAINT [FK__YFHXZ__部门__1CFC3D38] FOREIGN KEY([部门])
REFERENCES [dbo].[科室] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFHXZ__部门__1CFC3D38]') AND parent_object_id = OBJECT_ID(N'[dbo].[应付核销帐]'))
ALTER TABLE [dbo].[应付核销帐] CHECK CONSTRAINT [FK__YFHXZ__部门__1CFC3D38]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFHXZ__F_VENDOR__1DF06171]') AND parent_object_id = OBJECT_ID(N'[dbo].[应付核销帐]'))
ALTER TABLE [dbo].[应付核销帐]  WITH CHECK ADD  CONSTRAINT [FK__YFHXZ__F_VENDOR__1DF06171] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[供应商] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFHXZ__F_VENDOR__1DF06171]') AND parent_object_id = OBJECT_ID(N'[dbo].[应付核销帐]'))
ALTER TABLE [dbo].[应付核销帐] CHECK CONSTRAINT [FK__YFHXZ__F_VENDOR__1DF06171]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFJSD2__部门__1EE485AA]') AND parent_object_id = OBJECT_ID(N'[dbo].[应付结算单2]'))
ALTER TABLE [dbo].[应付结算单2]  WITH CHECK ADD  CONSTRAINT [FK__YFJSD2__部门__1EE485AA] FOREIGN KEY([部门])
REFERENCES [dbo].[科室] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFJSD2__部门__1EE485AA]') AND parent_object_id = OBJECT_ID(N'[dbo].[应付结算单2]'))
ALTER TABLE [dbo].[应付结算单2] CHECK CONSTRAINT [FK__YFJSD2__部门__1EE485AA]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFJSD2__F_VENDOR__1FD8A9E3]') AND parent_object_id = OBJECT_ID(N'[dbo].[应付结算单2]'))
ALTER TABLE [dbo].[应付结算单2]  WITH CHECK ADD  CONSTRAINT [FK__YFJSD2__F_VENDOR__1FD8A9E3] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[供应商] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFJSD2__F_VENDOR__1FD8A9E3]') AND parent_object_id = OBJECT_ID(N'[dbo].[应付结算单2]'))
ALTER TABLE [dbo].[应付结算单2] CHECK CONSTRAINT [FK__YFJSD2__F_VENDOR__1FD8A9E3]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZ__部门__20CCCE1C]') AND parent_object_id = OBJECT_ID(N'[dbo].[应付明细帐]'))
ALTER TABLE [dbo].[应付明细帐]  WITH CHECK ADD  CONSTRAINT [FK__YFMXZ__部门__20CCCE1C] FOREIGN KEY([部门])
REFERENCES [dbo].[科室] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZ__部门__20CCCE1C]') AND parent_object_id = OBJECT_ID(N'[dbo].[应付明细帐]'))
ALTER TABLE [dbo].[应付明细帐] CHECK CONSTRAINT [FK__YFMXZ__部门__20CCCE1C]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZ__F_VENDOR__21C0F255]') AND parent_object_id = OBJECT_ID(N'[dbo].[应付明细帐]'))
ALTER TABLE [dbo].[应付明细帐]  WITH CHECK ADD  CONSTRAINT [FK__YFMXZ__F_VENDOR__21C0F255] FOREIGN KEY([F_VENDOR])
REFERENCES [dbo].[供应商] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFMXZ__F_VENDOR__21C0F255]') AND parent_object_id = OBJECT_ID(N'[dbo].[应付明细帐]'))
ALTER TABLE [dbo].[应付明细帐] CHECK CONSTRAINT [FK__YFMXZ__F_VENDOR__21C0F255]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFZZ__部门__22B5168E]') AND parent_object_id = OBJECT_ID(N'[dbo].[应付总帐]'))
ALTER TABLE [dbo].[应付总帐]  WITH CHECK ADD  CONSTRAINT [FK__YFZZ__部门__22B5168E] FOREIGN KEY([部门])
REFERENCES [dbo].[科室] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFZZ__部门__22B5168E]') AND parent_object_id = OBJECT_ID(N'[dbo].[应付总帐]'))
ALTER TABLE [dbo].[应付总帐] CHECK CONSTRAINT [FK__YFZZ__部门__22B5168E]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFZZ__F_DM__23A93AC7]') AND parent_object_id = OBJECT_ID(N'[dbo].[应付总帐]'))
ALTER TABLE [dbo].[应付总帐]  WITH CHECK ADD  CONSTRAINT [FK__YFZZ__F_DM__23A93AC7] FOREIGN KEY([F_DM])
REFERENCES [dbo].[供应商] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YFZZ__F_DM__23A93AC7]') AND parent_object_id = OBJECT_ID(N'[dbo].[应付总帐]'))
ALTER TABLE [dbo].[应付总帐] CHECK CONSTRAINT [FK__YFZZ__F_DM__23A93AC7]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSHXZ__部门__249D5F00]') AND parent_object_id = OBJECT_ID(N'[dbo].[应收核销帐]'))
ALTER TABLE [dbo].[应收核销帐]  WITH CHECK ADD  CONSTRAINT [FK__YSHXZ__部门__249D5F00] FOREIGN KEY([部门])
REFERENCES [dbo].[科室] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSHXZ__部门__249D5F00]') AND parent_object_id = OBJECT_ID(N'[dbo].[应收核销帐]'))
ALTER TABLE [dbo].[应收核销帐] CHECK CONSTRAINT [FK__YSHXZ__部门__249D5F00]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSHXZ__F_CUSTOM__25918339]') AND parent_object_id = OBJECT_ID(N'[dbo].[应收核销帐]'))
ALTER TABLE [dbo].[应收核销帐]  WITH CHECK ADD  CONSTRAINT [FK__YSHXZ__F_CUSTOM__25918339] FOREIGN KEY([F_CUSTOM])
REFERENCES [dbo].[客户] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSHXZ__F_CUSTOM__25918339]') AND parent_object_id = OBJECT_ID(N'[dbo].[应收核销帐]'))
ALTER TABLE [dbo].[应收核销帐] CHECK CONSTRAINT [FK__YSHXZ__F_CUSTOM__25918339]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSJSD2__部门__2685A772]') AND parent_object_id = OBJECT_ID(N'[dbo].[应收结算单2]'))
ALTER TABLE [dbo].[应收结算单2]  WITH CHECK ADD  CONSTRAINT [FK__YSJSD2__部门__2685A772] FOREIGN KEY([部门])
REFERENCES [dbo].[科室] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSJSD2__部门__2685A772]') AND parent_object_id = OBJECT_ID(N'[dbo].[应收结算单2]'))
ALTER TABLE [dbo].[应收结算单2] CHECK CONSTRAINT [FK__YSJSD2__部门__2685A772]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSJSD2__F_CUSTOM__2779CBAB]') AND parent_object_id = OBJECT_ID(N'[dbo].[应收结算单2]'))
ALTER TABLE [dbo].[应收结算单2]  WITH CHECK ADD  CONSTRAINT [FK__YSJSD2__F_CUSTOM__2779CBAB] FOREIGN KEY([F_CUSTOM])
REFERENCES [dbo].[客户] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSJSD2__F_CUSTOM__2779CBAB]') AND parent_object_id = OBJECT_ID(N'[dbo].[应收结算单2]'))
ALTER TABLE [dbo].[应收结算单2] CHECK CONSTRAINT [FK__YSJSD2__F_CUSTOM__2779CBAB]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSMXZ__部门__286DEFE4]') AND parent_object_id = OBJECT_ID(N'[dbo].[应收明细帐]'))
ALTER TABLE [dbo].[应收明细帐]  WITH CHECK ADD  CONSTRAINT [FK__YSMXZ__部门__286DEFE4] FOREIGN KEY([部门])
REFERENCES [dbo].[科室] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSMXZ__部门__286DEFE4]') AND parent_object_id = OBJECT_ID(N'[dbo].[应收明细帐]'))
ALTER TABLE [dbo].[应收明细帐] CHECK CONSTRAINT [FK__YSMXZ__部门__286DEFE4]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSMXZ__F_CUSTOM__2962141D]') AND parent_object_id = OBJECT_ID(N'[dbo].[应收明细帐]'))
ALTER TABLE [dbo].[应收明细帐]  WITH CHECK ADD  CONSTRAINT [FK__YSMXZ__F_CUSTOM__2962141D] FOREIGN KEY([F_CUSTOM])
REFERENCES [dbo].[客户] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSMXZ__F_CUSTOM__2962141D]') AND parent_object_id = OBJECT_ID(N'[dbo].[应收明细帐]'))
ALTER TABLE [dbo].[应收明细帐] CHECK CONSTRAINT [FK__YSMXZ__F_CUSTOM__2962141D]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSZZ__部门__2A563856]') AND parent_object_id = OBJECT_ID(N'[dbo].[应收总帐]'))
ALTER TABLE [dbo].[应收总帐]  WITH CHECK ADD  CONSTRAINT [FK__YSZZ__部门__2A563856] FOREIGN KEY([部门])
REFERENCES [dbo].[科室] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSZZ__部门__2A563856]') AND parent_object_id = OBJECT_ID(N'[dbo].[应收总帐]'))
ALTER TABLE [dbo].[应收总帐] CHECK CONSTRAINT [FK__YSZZ__部门__2A563856]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSZZ__F_DM__2B4A5C8F]') AND parent_object_id = OBJECT_ID(N'[dbo].[应收总帐]'))
ALTER TABLE [dbo].[应收总帐]  WITH CHECK ADD  CONSTRAINT [FK__YSZZ__F_DM__2B4A5C8F] FOREIGN KEY([F_DM])
REFERENCES [dbo].[客户] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__YSZZ__F_DM__2B4A5C8F]') AND parent_object_id = OBJECT_ID(N'[dbo].[应收总帐]'))
ALTER TABLE [dbo].[应收总帐] CHECK CONSTRAINT [FK__YSZZ__F_DM__2B4A5C8F]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD__储位1__2D32A501]') AND parent_object_id = OBJECT_ID(N'[dbo].[组装单]'))
ALTER TABLE [dbo].[组装单]  WITH CHECK ADD  CONSTRAINT [FK__ZZD__储位1__2D32A501] FOREIGN KEY([储位1])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD__储位1__2D32A501]') AND parent_object_id = OBJECT_ID(N'[dbo].[组装单]'))
ALTER TABLE [dbo].[组装单] CHECK CONSTRAINT [FK__ZZD__储位1__2D32A501]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD__储位2__2E26C93A]') AND parent_object_id = OBJECT_ID(N'[dbo].[组装单]'))
ALTER TABLE [dbo].[组装单]  WITH CHECK ADD  CONSTRAINT [FK__ZZD__储位2__2E26C93A] FOREIGN KEY([储位2])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD__储位2__2E26C93A]') AND parent_object_id = OBJECT_ID(N'[dbo].[组装单]'))
ALTER TABLE [dbo].[组装单] CHECK CONSTRAINT [FK__ZZD__储位2__2E26C93A]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD__商品编号__2F1AED73]') AND parent_object_id = OBJECT_ID(N'[dbo].[组装单]'))
ALTER TABLE [dbo].[组装单]  WITH CHECK ADD  CONSTRAINT [FK__ZZD__商品编号__2F1AED73] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD__商品编号__2F1AED73]') AND parent_object_id = OBJECT_ID(N'[dbo].[组装单]'))
ALTER TABLE [dbo].[组装单] CHECK CONSTRAINT [FK__ZZD__商品编号__2F1AED73]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD2__部门__300F11AC]') AND parent_object_id = OBJECT_ID(N'[dbo].[组装单2]'))
ALTER TABLE [dbo].[组装单2]  WITH CHECK ADD  CONSTRAINT [FK__ZZD2__部门__300F11AC] FOREIGN KEY([部门])
REFERENCES [dbo].[科室] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD2__部门__300F11AC]') AND parent_object_id = OBJECT_ID(N'[dbo].[组装单2]'))
ALTER TABLE [dbo].[组装单2] CHECK CONSTRAINT [FK__ZZD2__部门__300F11AC]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD2__储位1__310335E5]') AND parent_object_id = OBJECT_ID(N'[dbo].[组装单2]'))
ALTER TABLE [dbo].[组装单2]  WITH CHECK ADD  CONSTRAINT [FK__ZZD2__储位1__310335E5] FOREIGN KEY([储位1])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD2__储位1__310335E5]') AND parent_object_id = OBJECT_ID(N'[dbo].[组装单2]'))
ALTER TABLE [dbo].[组装单2] CHECK CONSTRAINT [FK__ZZD2__储位1__310335E5]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD2__储位2__31F75A1E]') AND parent_object_id = OBJECT_ID(N'[dbo].[组装单2]'))
ALTER TABLE [dbo].[组装单2]  WITH CHECK ADD  CONSTRAINT [FK__ZZD2__储位2__31F75A1E] FOREIGN KEY([储位2])
REFERENCES [dbo].[储位] ([F_DM])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD2__储位2__31F75A1E]') AND parent_object_id = OBJECT_ID(N'[dbo].[组装单2]'))
ALTER TABLE [dbo].[组装单2] CHECK CONSTRAINT [FK__ZZD2__储位2__31F75A1E]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD2__商品编号__32EB7E57]') AND parent_object_id = OBJECT_ID(N'[dbo].[组装单2]'))
ALTER TABLE [dbo].[组装单2]  WITH CHECK ADD  CONSTRAINT [FK__ZZD2__商品编号__32EB7E57] FOREIGN KEY([商品编号])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZD2__商品编号__32EB7E57]') AND parent_object_id = OBJECT_ID(N'[dbo].[组装单2]'))
ALTER TABLE [dbo].[组装单2] CHECK CONSTRAINT [FK__ZZD2__商品编号__32EB7E57]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZMBMX__商品编号1__33DFA290]') AND parent_object_id = OBJECT_ID(N'[dbo].[组装模板明细]'))
ALTER TABLE [dbo].[组装模板明细]  WITH CHECK ADD  CONSTRAINT [FK__ZZMBMX__商品编号1__33DFA290] FOREIGN KEY([商品编号1])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZMBMX__商品编号1__33DFA290]') AND parent_object_id = OBJECT_ID(N'[dbo].[组装模板明细]'))
ALTER TABLE [dbo].[组装模板明细] CHECK CONSTRAINT [FK__ZZMBMX__商品编号1__33DFA290]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZMBMX__商品编号2__34D3C6C9]') AND parent_object_id = OBJECT_ID(N'[dbo].[组装模板明细]'))
ALTER TABLE [dbo].[组装模板明细]  WITH CHECK ADD  CONSTRAINT [FK__ZZMBMX__商品编号2__34D3C6C9] FOREIGN KEY([商品编号2])
REFERENCES [dbo].[商品] ([商品编号])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__ZZMBMX__商品编号2__34D3C6C9]') AND parent_object_id = OBJECT_ID(N'[dbo].[组装模板明细]'))
ALTER TABLE [dbo].[组装模板明细] CHECK CONSTRAINT [FK__ZZMBMX__商品编号2__34D3C6C9]
GO
