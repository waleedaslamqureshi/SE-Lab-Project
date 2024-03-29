USE [Project_Final]
GO
/****** Object:  Table [dbo].[advisor]    Script Date: 12/19/2019 9:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[advisor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Department] [nvarchar](50) NOT NULL,
	[CNIC] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_advisor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[assign_project]    Script Date: 12/19/2019 9:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assign_project](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Advisor] [nvarchar](50) NOT NULL,
	[Project] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_assign_project] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[evaluationProject]    Script Date: 12/19/2019 9:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evaluationProject](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](max) NOT NULL,
	[Obtain Marks] [nchar](10) NOT NULL,
 CONSTRAINT [PK_evaluationProject] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project]    Script Date: 12/19/2019 9:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Project Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_project] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 12/19/2019 9:19:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Student Name] [nvarchar](50) NOT NULL,
	[Father Name] [nvarchar](50) NOT NULL,
	[CNIC] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Degree] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[advisor] ON 

INSERT [dbo].[advisor] ([ID], [Name], [Department], [CNIC], [Email]) VALUES (1, N'Ali', N'CS', N'234', N'ali@gmail.com')
SET IDENTITY_INSERT [dbo].[advisor] OFF
SET IDENTITY_INSERT [dbo].[project] ON 

INSERT [dbo].[project] ([ID], [Project Name], [Description]) VALUES (1, N'AI', N'Design a python application')
INSERT [dbo].[project] ([ID], [Project Name], [Description]) VALUES (2, N'SE', N'Design a wordpress application')
SET IDENTITY_INSERT [dbo].[project] OFF
SET IDENTITY_INSERT [dbo].[student] ON 

INSERT [dbo].[student] ([ID], [Student Name], [Father Name], [CNIC], [Phone], [Email], [Degree]) VALUES (2, N'Waleed', N'Aslam', N'1234', N'0213', N'waleed1@gmail.com', N'System.Web.UI.WebControls.TextBox')
SET IDENTITY_INSERT [dbo].[student] OFF
