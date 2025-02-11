USE [VietNamImage]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 05/16/2010 00:51:38 ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 05/16/2010 00:51:38 ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 05/16/2010 00:51:38 ******/
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
/****** Object:  Table [dbo].[SubCategories]    Script Date: 05/16/2010 00:51:38 ******/
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
 CONSTRAINT [PK_SubCategories_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[CategoryID] ASC,
	[Language] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLog]    Script Date: 05/16/2010 00:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserLog](
	[ID_UserLog] [int] NOT NULL,
	[ID_User] [int] NOT NULL,
	[IpAddress] [varchar](50) NOT NULL,
	[LastLogindate] [datetime] NULL,
	[LastActiveDate] [datetime] NULL,
	[Session] [varchar](100) NULL,
 CONSTRAINT [PK_UserLog] PRIMARY KEY CLUSTERED 
(
	[ID_UserLog] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Image]    Script Date: 05/16/2010 00:51:38 ******/
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
	[Language] [int] NULL,
	[Downloaded] [int] NOT NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[ImgID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OtherInfo]    Script Date: 05/16/2010 00:51:38 ******/
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
/****** Object:  Table [dbo].[ImgInfo]    Script Date: 05/16/2010 00:51:38 ******/
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
/****** Object:  ForeignKey [FK_Image_SubCategories1]    Script Date: 05/16/2010 00:51:38 ******/
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_SubCategories1] FOREIGN KEY([ImgType], [CategoryID], [Language])
REFERENCES [dbo].[SubCategories] ([ID], [CategoryID], [Language])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_SubCategories1]
GO
/****** Object:  ForeignKey [FK_Image_UserType]    Script Date: 05/16/2010 00:51:38 ******/
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_UserType] FOREIGN KEY([IDUserType])
REFERENCES [dbo].[UserType] ([ID])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_UserType]
GO
/****** Object:  ForeignKey [FK_ImgInfo_Image]    Script Date: 05/16/2010 00:51:38 ******/
ALTER TABLE [dbo].[ImgInfo]  WITH CHECK ADD  CONSTRAINT [FK_ImgInfo_Image] FOREIGN KEY([ImgID])
REFERENCES [dbo].[Image] ([ImgID])
GO
ALTER TABLE [dbo].[ImgInfo] CHECK CONSTRAINT [FK_ImgInfo_Image]
GO
/****** Object:  ForeignKey [FK_OtherInfo_Image]    Script Date: 05/16/2010 00:51:38 ******/
ALTER TABLE [dbo].[OtherInfo]  WITH CHECK ADD  CONSTRAINT [FK_OtherInfo_Image] FOREIGN KEY([ID])
REFERENCES [dbo].[Image] ([ImgID])
GO
ALTER TABLE [dbo].[OtherInfo] CHECK CONSTRAINT [FK_OtherInfo_Image]
GO
/****** Object:  ForeignKey [FK_SubCategories_Categories]    Script Date: 05/16/2010 00:51:38 ******/
ALTER TABLE [dbo].[SubCategories]  WITH CHECK ADD  CONSTRAINT [FK_SubCategories_Categories] FOREIGN KEY([CategoryID], [Language])
REFERENCES [dbo].[Categories] ([ID], [Language])
GO
ALTER TABLE [dbo].[SubCategories] CHECK CONSTRAINT [FK_SubCategories_Categories]
GO
/****** Object:  ForeignKey [FK_User_UserType]    Script Date: 05/16/2010 00:51:38 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserType] FOREIGN KEY([UserType])
REFERENCES [dbo].[UserType] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserType]
GO
/****** Object:  ForeignKey [FK_UserLog_User]    Script Date: 05/16/2010 00:51:38 ******/
ALTER TABLE [dbo].[UserLog]  WITH CHECK ADD  CONSTRAINT [FK_UserLog_User] FOREIGN KEY([ID_User])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[UserLog] CHECK CONSTRAINT [FK_UserLog_User]
GO
