USE [QuizOnline]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 27/05/2021 9:45:59 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question] [nvarchar](max) NULL,
	[option1] [nvarchar](max) NULL,
	[option2] [nvarchar](max) NULL,
	[option3] [nvarchar](max) NULL,
	[option4] [nvarchar](max) NULL,
	[answers] [text] NULL,
	[user_id] [int] NULL,
	[created_by] [nvarchar](50) NULL,
	[created_date] [date] NULL,
 CONSTRAINT [PK_Qestion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 27/05/2021 9:46:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](10) NULL,
	[created_by] [nvarchar](50) NULL,
	[created_date] [date] NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 27/05/2021 9:46:00 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[roleid] [int] NULL,
	[email] [nvarchar](50) NULL,
	[created_by] [nvarchar](50) NULL,
	[created_date] [date] NULL,
 CONSTRAINT [PK_Username] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([id], [question], [option1], [option2], [option3], [option4], [answers], [user_id], [created_by], [created_date]) VALUES (12, N'1+1 = ?', N'1', N'one', N'2', N'two', N'3, 4', 1, N'kubon', CAST(N'2021-05-27' AS Date))
INSERT [dbo].[Question] ([id], [question], [option1], [option2], [option3], [option4], [answers], [user_id], [created_by], [created_date]) VALUES (13, N'Which of the following is correct?', N'public static int main(String args) {}', N'public static main(String[] args) {}', N'public static final void main(String[] args) {}', N'public static void main(String[] args) {}', N'4', 1, N'kubon', CAST(N'2021-05-27' AS Date))
INSERT [dbo].[Question] ([id], [question], [option1], [option2], [option3], [option4], [answers], [user_id], [created_by], [created_date]) VALUES (14, N'1+2 =?', N'1', N'2', N'3', N'4', N'3', 1, N'kubon', CAST(N'2021-05-27' AS Date))
INSERT [dbo].[Question] ([id], [question], [option1], [option2], [option3], [option4], [answers], [user_id], [created_by], [created_date]) VALUES (15, N'2+2 = ?', N'3', N'4', N'5', N'6', N'2', 1, N'kubon', CAST(N'2021-05-27' AS Date))
INSERT [dbo].[Question] ([id], [question], [option1], [option2], [option3], [option4], [answers], [user_id], [created_by], [created_date]) VALUES (16, N'3+3 =?', N'7', N'8', N'9', N'6', N'4', 1, N'kubon', CAST(N'2021-05-27' AS Date))
INSERT [dbo].[Question] ([id], [question], [option1], [option2], [option3], [option4], [answers], [user_id], [created_by], [created_date]) VALUES (17, N'4+4 =?', N'1', N'2', N'3', N'8', N'4', 1, N'kubon', CAST(N'2021-05-27' AS Date))
SET IDENTITY_INSERT [dbo].[Question] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id], [name], [created_by], [created_date]) VALUES (1, N'Teacher   ', N'admin', NULL)
INSERT [dbo].[Role] ([id], [name], [created_by], [created_date]) VALUES (2, N'Student   ', N'admin', NULL)
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [username], [password], [roleid], [email], [created_by], [created_date]) VALUES (1, N'kubon', N'Toiyeuem2000@@', 1, N'kubon9xhd@gmail.com', N'', CAST(N'2021-05-24' AS Date))
INSERT [dbo].[User] ([id], [username], [password], [roleid], [email], [created_by], [created_date]) VALUES (3, N'kubon2', N'123456', 2, N'kubon9xhd123@gmail.com', NULL, NULL)
INSERT [dbo].[User] ([id], [username], [password], [roleid], [email], [created_by], [created_date]) VALUES (4, N'hungnd', N'1234567889', 2, N'hungnguyen113@gmail.com', N'', CAST(N'2021-05-27' AS Date))
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Qestion_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Qestion_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK__User__roleid__239E4DCF] FOREIGN KEY([roleid])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK__User__roleid__239E4DCF]
GO
