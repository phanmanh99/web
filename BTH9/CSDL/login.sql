USE [Login]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 12/9/2020 9:14:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[PassWord] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Loginn] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([UserID], [UserName], [PassWord], [Status]) VALUES (1, N'Mai Anh', N'12345', NULL)
INSERT [dbo].[Login] ([UserID], [UserName], [PassWord], [Status]) VALUES (2, N'Hoàng Huy', N'12389', NULL)
INSERT [dbo].[Login] ([UserID], [UserName], [PassWord], [Status]) VALUES (3, N'Gia Huy', N'1212', NULL)
INSERT [dbo].[Login] ([UserID], [UserName], [PassWord], [Status]) VALUES (4, N'Gia Hân', N'han99', NULL)
SET IDENTITY_INSERT [dbo].[Login] OFF
