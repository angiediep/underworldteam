USE [VietNamImage]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 05/17/2010 20:46:16 ******/
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
/****** Object:  Table [dbo].[SubCategories]    Script Date: 05/17/2010 20:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategories](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Language] [int] NOT NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_SubCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[Language] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 05/17/2010 20:46:16 ******/
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
/****** Object:  Table [dbo].[Activities]    Script Date: 05/17/2010 20:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Activities](
	[Activity] [varchar](50) NULL,
	[ID] [int] NOT NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Activities] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Abbreviation]    Script Date: 05/17/2010 20:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abbreviation](
	[Name] [nvarchar](255) NULL,
	[Abbr] [int] NOT NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Abbreviation] PRIMARY KEY CLUSTERED 
(
	[Abbr] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OtherInfo]    Script Date: 05/17/2010 20:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OtherInfo](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[ContentInfo] [text] NOT NULL,
	[Language] [int] NOT NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_OtherInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[Language] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 05/17/2010 20:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Sex] [tinyint] NULL,
	[Birthday] [datetime] NULL,
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
	[RandomKey] [varchar](255) NULL,
	[Active] [bigint] NULL,
	[LoginNumber] [bigint] NULL,
	[RegisterDate] [datetime] NULL,
	[DisableDate] [datetime] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Image]    Script Date: 05/17/2010 20:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[ImgID] [int] NOT NULL,
	[ImgSource] [text] NOT NULL,
	[ImgType] [int] NOT NULL,
	[CategoryID] [int] NULL,
	[Author] [int] NOT NULL,
	[DateUpload] [datetime] NOT NULL,
	[IDUserType] [int] NOT NULL,
	[Downloaded] [int] NOT NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[ImgID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Relationship]    Script Date: 05/17/2010 20:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relationship](
	[IDSubCate] [int] NOT NULL,
	[IDCate] [int] NOT NULL,
	[Language] [int] NOT NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Relationship] PRIMARY KEY CLUSTERED 
(
	[IDSubCate] ASC,
	[IDCate] ASC,
	[Language] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLog]    Script Date: 05/17/2010 20:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserLog](
	[IDUserLog] [int] NOT NULL,
	[IDUser] [int] NOT NULL,
	[Date] [datetime] NULL,
	[IDActivity] [int] NULL,
	[AbbrType] [int] NULL,
	[LogContent] [int] NULL,
	[Status] [int] NULL,
	[IPAddress] [varchar](50) NULL,
 CONSTRAINT [PK_UserLog] PRIMARY KEY CLUSTERED 
(
	[IDUserLog] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ImgInfo]    Script Date: 05/17/2010 20:46:16 ******/
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
	[IDSubcate] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_ImgInfo] PRIMARY KEY CLUSTERED 
(
	[ImgID] ASC,
	[Languages] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Image_UserType]    Script Date: 05/17/2010 20:46:16 ******/
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_UserType] FOREIGN KEY([IDUserType])
REFERENCES [dbo].[UserType] ([ID])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_UserType]
GO
/****** Object:  ForeignKey [FK_ImgInfo_Image]    Script Date: 05/17/2010 20:46:16 ******/
ALTER TABLE [dbo].[ImgInfo]  WITH CHECK ADD  CONSTRAINT [FK_ImgInfo_Image] FOREIGN KEY([ImgID])
REFERENCES [dbo].[Image] ([ImgID])
GO
ALTER TABLE [dbo].[ImgInfo] CHECK CONSTRAINT [FK_ImgInfo_Image]
GO
/****** Object:  ForeignKey [FK_ImgInfo_SubCategories1]    Script Date: 05/17/2010 20:46:16 ******/
ALTER TABLE [dbo].[ImgInfo]  WITH CHECK ADD  CONSTRAINT [FK_ImgInfo_SubCategories1] FOREIGN KEY([IDSubcate], [Languages])
REFERENCES [dbo].[SubCategories] ([ID], [Language])
GO
ALTER TABLE [dbo].[ImgInfo] CHECK CONSTRAINT [FK_ImgInfo_SubCategories1]
GO
/****** Object:  ForeignKey [FK_Relationship_Categories]    Script Date: 05/17/2010 20:46:16 ******/
ALTER TABLE [dbo].[Relationship]  WITH CHECK ADD  CONSTRAINT [FK_Relationship_Categories] FOREIGN KEY([IDCate], [Language])
REFERENCES [dbo].[Categories] ([ID], [Language])
GO
ALTER TABLE [dbo].[Relationship] CHECK CONSTRAINT [FK_Relationship_Categories]
GO
/****** Object:  ForeignKey [FK_Relationship_SubCategories]    Script Date: 05/17/2010 20:46:16 ******/
ALTER TABLE [dbo].[Relationship]  WITH CHECK ADD  CONSTRAINT [FK_Relationship_SubCategories] FOREIGN KEY([IDSubCate], [Language])
REFERENCES [dbo].[SubCategories] ([ID], [Language])
GO
ALTER TABLE [dbo].[Relationship] CHECK CONSTRAINT [FK_Relationship_SubCategories]
GO
/****** Object:  ForeignKey [FK_User_UserType]    Script Date: 05/17/2010 20:46:16 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserType] FOREIGN KEY([UserType])
REFERENCES [dbo].[UserType] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserType]
GO
/****** Object:  ForeignKey [FK_UserLog_Abbreviation]    Script Date: 05/17/2010 20:46:16 ******/
ALTER TABLE [dbo].[UserLog]  WITH CHECK ADD  CONSTRAINT [FK_UserLog_Abbreviation] FOREIGN KEY([AbbrType])
REFERENCES [dbo].[Abbreviation] ([Abbr])
GO
ALTER TABLE [dbo].[UserLog] CHECK CONSTRAINT [FK_UserLog_Abbreviation]
GO
/****** Object:  ForeignKey [FK_UserLog_Activities]    Script Date: 05/17/2010 20:46:16 ******/
ALTER TABLE [dbo].[UserLog]  WITH CHECK ADD  CONSTRAINT [FK_UserLog_Activities] FOREIGN KEY([IDActivity])
REFERENCES [dbo].[Activities] ([ID])
GO
ALTER TABLE [dbo].[UserLog] CHECK CONSTRAINT [FK_UserLog_Activities]
GO
/****** Object:  ForeignKey [FK_UserLog_User1]    Script Date: 05/17/2010 20:46:16 ******/
ALTER TABLE [dbo].[UserLog]  WITH CHECK ADD  CONSTRAINT [FK_UserLog_User1] FOREIGN KEY([IDUser])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[UserLog] CHECK CONSTRAINT [FK_UserLog_User1]
GO
