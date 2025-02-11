USE [VietNamImage]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 05/14/2010 00:37:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[ID] [int] NOT NULL,
	[Type] [nchar](100) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 05/14/2010 00:37:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Position] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](200) NULL,
	[Phone] [nvarchar](25) NULL,
	[Fax] [nvarchar](25) NULL,
	[Email] [varchar](50) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Subcribe] [int] NULL,
	[UserType] [int] NOT NULL,
	[Salt] [nchar](16) NOT NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 05/14/2010 00:37:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategories](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](150) NULL,
	[CategoryID] [int] NOT NULL,
	[Language] [int] NOT NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_SubCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[CategoryID] ASC,
	[Language] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OtherInfo]    Script Date: 05/14/2010 00:37:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtherInfo](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Content] [text] NOT NULL,
	[Language] [int] NOT NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_OtherInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[Language] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgInfo]    Script Date: 05/14/2010 00:37:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgInfo](
	[DateCreate] [datetime] NULL,
	[ImgName] [nvarchar](50) NULL,
	[Caption] [text] NULL,
	[Tag] [text] NULL,
	[ImgID] [int] NOT NULL,
	[Languages] [int] NOT NULL,
 CONSTRAINT [PK_ImgInfo] PRIMARY KEY CLUSTERED 
(
	[ImgID] ASC,
	[Languages] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 05/14/2010 00:37:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[ImgID] [int] NOT NULL,
	[ImgSource] [text] NOT NULL,
	[ImgType] [int] NOT NULL,
	[Author] [int] NOT NULL,
	[DateUpload] [datetime] NOT NULL,
	[Downloaded] [int] NOT NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[ImgID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 05/14/2010 00:37:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Language] [int] NOT NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[Language] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
