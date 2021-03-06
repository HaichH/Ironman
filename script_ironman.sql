USE [ironman]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 2018/08/07 18:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[CommentDescription] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Penalty]    Script Date: 2018/08/07 18:49:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Penalty](
	[PenaltyID] [int] IDENTITY(1,1) NOT NULL,
	[CommentID] [int] NULL,
	[TentID] [int] NULL,
	[RacerID] [int] NULL,
	[RefID] [int] NULL,
	[PenaltyPicturePath] [nvarchar](500) NULL,
	[PenaltyLocation] [nvarchar](max) NULL,
	[PenaltyTime] [time](7) NULL,
	[PenaltyDate] [date] NULL,
	[TicketID] [int] NULL,
	[RacerArrival] [nvarchar](50) NULL,
	[RacerLeave] [nvarchar](50) NULL,
	[longitude] [float] NULL,
	[latitude] [float] NULL,
 CONSTRAINT [PK_Penalty] PRIMARY KEY CLUSTERED 
(
	[PenaltyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Racer]    Script Date: 2018/08/07 18:49:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Racer](
	[RacerID] [int] NOT NULL,
	[RacerName] [nvarchar](500) NOT NULL,
	[RacerSurname] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Racer] PRIMARY KEY CLUSTERED 
(
	[RacerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Referee]    Script Date: 2018/08/07 18:49:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Referee](
	[RefID] [int] IDENTITY(1,1) NOT NULL,
	[RefFullName] [nvarchar](500) NOT NULL,
	[RefEmail] [nvarchar](500) NOT NULL,
	[RefPassword] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Referee] PRIMARY KEY CLUSTERED 
(
	[RefID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tent]    Script Date: 2018/08/07 18:49:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tent](
	[TentID] [int] NOT NULL,
	[TentName] [nvarchar](500) NULL,
 CONSTRAINT [PK_Tent] PRIMARY KEY CLUSTERED 
(
	[TentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 2018/08/07 18:49:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[TicketID] [int] IDENTITY(1,1) NOT NULL,
	[TicketType] [int] NOT NULL,
	[TicketName] [nvarchar](50) NOT NULL,
	[TicketColour] [nvarchar](50) NULL,
	[TicketTip] [nvarchar](500) NULL,
	[TimeServing] [float] NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[TicketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TicketComment]    Script Date: 2018/08/07 18:49:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicketComment](
	[TicketID] [int] NOT NULL,
	[CommentID] [int] NOT NULL,
 CONSTRAINT [PK_TicketComment] PRIMARY KEY CLUSTERED 
(
	[TicketID] ASC,
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([CommentID], [CommentDescription]) VALUES (1, N'Littering out of the trash/rubbish drop zones')
INSERT [dbo].[Comment] ([CommentID], [CommentDescription]) VALUES (2, N'using unsportman behavior')
INSERT [dbo].[Comment] ([CommentID], [CommentDescription]) VALUES (3, N'Drafting violation')
SET IDENTITY_INSERT [dbo].[Comment] OFF
SET IDENTITY_INSERT [dbo].[Penalty] ON 

INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (1, 3, 1, 4444, 1, NULL, NULL, CAST(N'00:52:45.4066667' AS Time), CAST(N'2018-07-28' AS Date), 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (2, 1, 2, 1234, 1, NULL, NULL, CAST(N'01:03:28.6500000' AS Time), CAST(N'2018-07-28' AS Date), 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (5, 2, 2, 6767, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180728094307.PNG', NULL, CAST(N'09:44:21' AS Time), CAST(N'2018-07-28' AS Date), 2, N'Mon Aug 06 2018 21:44:33 GMT 0200 (South Africa St', N'Mon Aug 06 2018 21:50:03 GMT 0200 (South Africa St', NULL, NULL)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (6, 1, 2, 255, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180728094752.PNG', NULL, CAST(N'09:47:52' AS Time), CAST(N'2018-07-28' AS Date), 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (7, 1, 1, 255, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180728094818.PNG', NULL, CAST(N'09:48:18' AS Time), CAST(N'2018-07-28' AS Date), 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (10, 2, 2, 1472, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180728111514.PNG', NULL, CAST(N'11:15:14' AS Time), CAST(N'2018-07-28' AS Date), 2, N'Sun Jul 29 2018 10:11:48 GMT+0200 (South Africa St', N'Sun Jul 29 2018 10:11:48 GMT+0200 (South Africa St', NULL, NULL)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (14, 1, 2, 798, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180728221230.PNG', NULL, CAST(N'10:12:30' AS Time), CAST(N'2018-07-28' AS Date), 3, N'Sun Jul 29 2018 07:18:54 GMT+0200 (South Africa St', N'Sun Jul 29 2018 07:18:54 GMT+0200 (South Africa St', 56.700000762939453, 56.700000762939453)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (18, 1, 2, 1234, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180729012156.PNG', NULL, CAST(N'01:21:56' AS Time), CAST(N'2018-07-28' AS Date), 1, NULL, NULL, 25.6706139, 56)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (19, 3, 1, 1234, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180729015115.PNG', NULL, CAST(N'01:51:15' AS Time), CAST(N'2018-07-28' AS Date), 3, NULL, NULL, 25.6706139, 56.700000762939453)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (20, 3, 1, 1234, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180729015145.PNG', NULL, CAST(N'01:51:45' AS Time), CAST(N'2018-07-28' AS Date), 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (21, 3, 1, 1234, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180729015219.PNG', NULL, CAST(N'01:52:19' AS Time), CAST(N'2018-07-28' AS Date), 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (22, 3, 2, 789, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180729015255.PNG', NULL, CAST(N'01:52:55' AS Time), CAST(N'2018-07-28' AS Date), 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (23, 1, 2, 789, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180729015320.PNG', NULL, CAST(N'01:53:20' AS Time), CAST(N'2018-07-28' AS Date), 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (24, 1, 2, 789, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180729015339.PNG', NULL, CAST(N'01:53:39' AS Time), CAST(N'2018-07-28' AS Date), 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (25, 3, 1, 4444, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180729015541.PNG', NULL, CAST(N'01:55:41' AS Time), CAST(N'2018-07-28' AS Date), 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (26, 1, 1, 4444, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180729015605.PNG', NULL, CAST(N'01:56:05' AS Time), CAST(N'2018-07-28' AS Date), 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (27, 1, 1, 255, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180729015702.PNG', NULL, CAST(N'01:57:02' AS Time), CAST(N'2018-07-28' AS Date), 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (28, 3, 1, 1234, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180729030755.PNG', NULL, CAST(N'03:07:56' AS Time), CAST(N'2018-07-28' AS Date), 3, NULL, NULL, 25.6707013, 56.700000762939453)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (29, 1, 1, 255, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180729053622.PNG', NULL, CAST(N'05:36:27' AS Time), CAST(N'2018-07-28' AS Date), 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (30, 1, 1, 4444, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180729054339.PNG', NULL, CAST(N'05:43:40' AS Time), CAST(N'2018-07-28' AS Date), 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (31, 1, 2, 798, 1, NULL, NULL, CAST(N'06:05:37' AS Time), CAST(N'2018-07-28' AS Date), 2, N'Sun Jul 29 2018 07:18:54 GMT+0200 (South Africa St', N'Sun Jul 29 2018 07:18:54 GMT+0200 (South Africa St', 25.67068, 0)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (34, 3, 1, 4444, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180729100725.PNG', NULL, CAST(N'10:07:25' AS Time), CAST(N'2018-07-29' AS Date), 3, NULL, NULL, -122.084, 0)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (36, 1, 1, 1234, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180729132016.PNG', NULL, CAST(N'01:20:16' AS Time), CAST(N'2018-07-29' AS Date), 3, NULL, NULL, -122.084, 0)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (38, 1, 1, 255, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180801191815.PNG', NULL, CAST(N'07:18:15' AS Time), CAST(N'2018-08-01' AS Date), 3, NULL, NULL, -122.084, 0)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (39, 1, 2, 6767, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180801195108.PNG', NULL, CAST(N'07:51:08' AS Time), CAST(N'2018-08-01' AS Date), 3, N'Mon Aug 06 2018 21:44:33 GMT 0200 (South Africa St', N'Mon Aug 06 2018 21:50:03 GMT 0200 (South Africa St', -122.084, 0)
INSERT [dbo].[Penalty] ([PenaltyID], [CommentID], [TentID], [RacerID], [RefID], [PenaltyPicturePath], [PenaltyLocation], [PenaltyTime], [PenaltyDate], [TicketID], [RacerArrival], [RacerLeave], [longitude], [latitude]) VALUES (40, 2, 2, 4444, 1, N'http://sict-iis.nmmu.ac.za/codecentrix/IronMan/pictures/PIC20180801224221.PNG', NULL, CAST(N'10:42:21' AS Time), CAST(N'2018-08-01' AS Date), 2, NULL, NULL, -122.084, 0)
SET IDENTITY_INSERT [dbo].[Penalty] OFF
INSERT [dbo].[Racer] ([RacerID], [RacerName], [RacerSurname]) VALUES (128, N'John', N'Doe')
INSERT [dbo].[Racer] ([RacerID], [RacerName], [RacerSurname]) VALUES (132, N'Sedge', N'Ricardo')
INSERT [dbo].[Racer] ([RacerID], [RacerName], [RacerSurname]) VALUES (189, N'Billiam', N'Farso')
INSERT [dbo].[Racer] ([RacerID], [RacerName], [RacerSurname]) VALUES (255, N'Black', N'Man')
INSERT [dbo].[Racer] ([RacerID], [RacerName], [RacerSurname]) VALUES (365, N'Jabulane', N'Mahlangu')
INSERT [dbo].[Racer] ([RacerID], [RacerName], [RacerSurname]) VALUES (387, N'Philly ', N'Montero')
INSERT [dbo].[Racer] ([RacerID], [RacerName], [RacerSurname]) VALUES (789, N'doris', N'Luke')
INSERT [dbo].[Racer] ([RacerID], [RacerName], [RacerSurname]) VALUES (798, N'Fill', N'Simth')
INSERT [dbo].[Racer] ([RacerID], [RacerName], [RacerSurname]) VALUES (1234, N'Sean', N'james')
INSERT [dbo].[Racer] ([RacerID], [RacerName], [RacerSurname]) VALUES (1472, N'Pelina', N'Seposethu')
INSERT [dbo].[Racer] ([RacerID], [RacerName], [RacerSurname]) VALUES (4444, N'Healing', N'Legodi')
INSERT [dbo].[Racer] ([RacerID], [RacerName], [RacerSurname]) VALUES (6767, N'Jime', N'Rohn')
SET IDENTITY_INSERT [dbo].[Referee] ON 

INSERT [dbo].[Referee] ([RefID], [RefFullName], [RefEmail], [RefPassword]) VALUES (1, N'Sipho', N'anathi@gmail.com', N'anathi123')
INSERT [dbo].[Referee] ([RefID], [RefFullName], [RefEmail], [RefPassword]) VALUES (2, N'Jonh', N'Cena@gmail.com', N'cena123')
SET IDENTITY_INSERT [dbo].[Referee] OFF
INSERT [dbo].[Tent] ([TentID], [TentName]) VALUES (1, N'Tent 1 out')
INSERT [dbo].[Tent] ([TentID], [TentName]) VALUES (2, N'Tent 2 back')
SET IDENTITY_INSERT [dbo].[Ticket] ON 

INSERT [dbo].[Ticket] ([TicketID], [TicketType], [TicketName], [TicketColour], [TicketTip], [TimeServing]) VALUES (1, 1, N'Red', N'Red', N'Red', 0)
INSERT [dbo].[Ticket] ([TicketID], [TicketType], [TicketName], [TicketColour], [TicketTip], [TimeServing]) VALUES (2, 2, N'Yellow', N'Yellow', N'Yellow', 30)
INSERT [dbo].[Ticket] ([TicketID], [TicketType], [TicketName], [TicketColour], [TicketTip], [TimeServing]) VALUES (3, 3, N'Blue', N'Blue', N'Blue', 300)
SET IDENTITY_INSERT [dbo].[Ticket] OFF
INSERT [dbo].[TicketComment] ([TicketID], [CommentID]) VALUES (1, 1)
INSERT [dbo].[TicketComment] ([TicketID], [CommentID]) VALUES (2, 1)
INSERT [dbo].[TicketComment] ([TicketID], [CommentID]) VALUES (2, 2)
INSERT [dbo].[TicketComment] ([TicketID], [CommentID]) VALUES (3, 1)
INSERT [dbo].[TicketComment] ([TicketID], [CommentID]) VALUES (3, 3)
ALTER TABLE [dbo].[Penalty]  WITH CHECK ADD  CONSTRAINT [FK_Penalty_Comment] FOREIGN KEY([CommentID])
REFERENCES [dbo].[Comment] ([CommentID])
GO
ALTER TABLE [dbo].[Penalty] CHECK CONSTRAINT [FK_Penalty_Comment]
GO
ALTER TABLE [dbo].[Penalty]  WITH CHECK ADD  CONSTRAINT [FK_Penalty_Racer] FOREIGN KEY([RacerID])
REFERENCES [dbo].[Racer] ([RacerID])
GO
ALTER TABLE [dbo].[Penalty] CHECK CONSTRAINT [FK_Penalty_Racer]
GO
ALTER TABLE [dbo].[Penalty]  WITH CHECK ADD  CONSTRAINT [FK_Penalty_Referee] FOREIGN KEY([RefID])
REFERENCES [dbo].[Referee] ([RefID])
GO
ALTER TABLE [dbo].[Penalty] CHECK CONSTRAINT [FK_Penalty_Referee]
GO
ALTER TABLE [dbo].[Penalty]  WITH CHECK ADD  CONSTRAINT [FK_Penalty_Tent] FOREIGN KEY([TentID])
REFERENCES [dbo].[Tent] ([TentID])
GO
ALTER TABLE [dbo].[Penalty] CHECK CONSTRAINT [FK_Penalty_Tent]
GO
ALTER TABLE [dbo].[Penalty]  WITH CHECK ADD  CONSTRAINT [FK_Penalty_Ticket] FOREIGN KEY([TicketID])
REFERENCES [dbo].[Ticket] ([TicketID])
GO
ALTER TABLE [dbo].[Penalty] CHECK CONSTRAINT [FK_Penalty_Ticket]
GO
ALTER TABLE [dbo].[TicketComment]  WITH CHECK ADD  CONSTRAINT [FK_TicketComment_Comment] FOREIGN KEY([CommentID])
REFERENCES [dbo].[Comment] ([CommentID])
GO
ALTER TABLE [dbo].[TicketComment] CHECK CONSTRAINT [FK_TicketComment_Comment]
GO
ALTER TABLE [dbo].[TicketComment]  WITH CHECK ADD  CONSTRAINT [FK_TicketComment_Ticket] FOREIGN KEY([TicketID])
REFERENCES [dbo].[Ticket] ([TicketID])
GO
ALTER TABLE [dbo].[TicketComment] CHECK CONSTRAINT [FK_TicketComment_Ticket]
GO
/****** Object:  StoredProcedure [dbo].[uspAddPenalty]    Script Date: 2018/08/07 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[uspAddPenalty]
	-- Add the parameters for the stored procedure here
	@TicketID int,
    @TentID int,
    @RacerID int,
    @RefID int,
    @CommentID int,
	@PenaltyTime time,
	@PenaltyPicturePath nvarchar(500),
	@longitude float,
	@latitude float
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	INSERT INTO Penalty (TicketID,TentID,RacerID,RefID,CommentID,PenaltyDate,PenaltyTime,PenaltyPicturePath,longitude,latitude)
	VALUES (@TicketID ,@TentID ,@RacerID ,@RefID ,@CommentID ,CONVERT( date,GETDATE(),7),@PenaltyTime,	@PenaltyPicturePath,@longitude,@latitude)
	
END

GO
/****** Object:  StoredProcedure [dbo].[uspALLPenalties]    Script Date: 2018/08/07 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[uspALLPenalties]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  p.RacerID, SUM(TimeServing) AS seconds, RacerSurname, TentID, SUM(CASE WHEN p.TicketID=2 THEN 1 ELSE 0 END) AS YellowTickets, SUM( CASE WHEN p.TicketID=3 THEN 1 ELSE 0 END) AS BlueTickets
	FROM  Penalty p ,Ticket t, Racer r

	WHERE p.TicketID = t.TicketID AND r.RacerID = p.RacerID
	AND	p.RacerArrival is null
	AND p.TicketID <> 1  AND
	 p.RacerID NOT IN ( SELECT DISTINCT	RacerID
					FROM Penalty
					WHERE TicketID =  3
					GROUP BY RacerID
					HAVING COUNT(RacerID) >2)
	GROUP BY  P.RacerID, RacerSurname, TentID	
END

GO
/****** Object:  StoredProcedure [dbo].[uspArrivalTime]    Script Date: 2018/08/07 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[uspArrivalTime]
@ath_id int,
@time NVARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

    -- Insert statements for procedure here
	UPDATE Penalty
	SET RacerArrival =@time
	WHERE RacerID = @ath_id
END

GO
/****** Object:  StoredProcedure [dbo].[uspDepartureTime]    Script Date: 2018/08/07 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[uspDepartureTime]
@ath_id int,
@time NVARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

    -- Insert statements for procedure here
	UPDATE Penalty
	SET RacerLeave = @time
	WHERE RacerID = @ath_id
END

GO
/****** Object:  StoredProcedure [dbo].[uspGetAdministeredPenalty]    Script Date: 2018/08/07 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[uspGetAdministeredPenalty]  
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM Penalty
	WHERE Penalty.RacerArrival IS NOT NULL
	AND Penalty.RacerLeave IS NOT NULL
END

GO
/****** Object:  StoredProcedure [dbo].[uspGetAllRacerers]    Script Date: 2018/08/07 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[uspGetAllRacerers]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM Racer
	ORDER BY RacerID
END

GO
/****** Object:  StoredProcedure [dbo].[uspGetComments]    Script Date: 2018/08/07 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[uspGetComments]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Comment.*, TicketComment.TicketID
	FROM Comment,TicketComment
	WHERE Comment.CommentID = TicketComment.CommentID
END

GO
/****** Object:  StoredProcedure [dbo].[uspGetDisqualifiedRacers]    Script Date: 2018/08/07 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[uspGetDisqualifiedRacers]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT DISTINCT p.RacerID, r.RacerSurname,  SUM(CASE WHEN TicketID=1 THEN 1 ELSE 0 END) AS RedTickets, SUM( CASE WHEN TicketID=3 THEN 1 ELSE 0 END) AS BlueTickets
	FROM Penalty p, Racer r 
	WHERE TicketID = 1
	OR p.RacerID IN ( SELECT	RacerID
					FROM Penalty
					WHERE TicketID =  3
					GROUP BY RacerID
					HAVING COUNT(RacerID) >2)
	AND p.RacerID = r.RacerID
	GROUP BY p.RacerID	, r.RacerSurname			
	

END

GO
/****** Object:  StoredProcedure [dbo].[uspGetNoArrivalPenalty]    Script Date: 2018/08/07 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[uspGetNoArrivalPenalty]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM Penalty
	WHERE Penalty.RacerArrival is null
END

GO
/****** Object:  StoredProcedure [dbo].[uspGetTickets]    Script Date: 2018/08/07 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[uspGetTickets]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM Ticket
END

GO
/****** Object:  StoredProcedure [dbo].[uspLogin]    Script Date: 2018/08/07 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[uspLogin]
@email nvarchar(500), @password nvarchar(500)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM Referee
	WHERE LOWER(RefEmail) = LOWER(@email) AND RefPassword = @password
END

GO
/****** Object:  StoredProcedure [dbo].[uspUpdatePenalty]    Script Date: 2018/08/07 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[uspUpdatePenalty]
@ath_id int,
@start_date nvarchar(50),
@end_date nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT OFF;

    -- Insert statements for procedure here
	UPDATE Penalty 
	SET RacerArrival = @start_date, RacerLeave = @end_date
	WHERE RacerID = @ath_id
END

GO
/****** Object:  StoredProcedure [dbo].[uspWEBAthPenalties]    Script Date: 2018/08/07 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[uspWEBAthPenalties]
@racer_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		SELECT r.RacerSurname, p.RacerID, SUM(TimeServing) AS seconds
	FROM  Penalty p , Ticket t,Racer r
	WHERE (p.RacerID = @racer_id) AND r.RacerID = p.RacerID AND t.TicketID = p.TicketID  AND RacerArrival IS NULL
	GROUP BY  r.RacerName ,r.RacerSurname, p.RacerID
END

GO
/****** Object:  StoredProcedure [dbo].[uspWEBflagDisq]    Script Date: 2018/08/07 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[uspWEBflagDisq]
@racer_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT DISTINCT RacerID, CommentDescription
	FROM  Penalty p, Comment c
	WHERE (RacerID = @racer_id AND TicketID= 1 OR ((SELECT COUNT(PenaltyID) FROM Penalty WHERE RacerID=@racer_id AND TicketID =3 ) >=3))
	AND (p.CommentID = c.CommentID);
	
END

GO
/****** Object:  StoredProcedure [dbo].[uspWEBGetOverview]    Script Date: 2018/08/07 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[uspWEBGetOverview]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT (SELECT COUNT(RacerID) FROM Penalty 
	WHERE (TicketID <> 1) AND 
	RacerID NOT IN ( SELECT RacerID
					FROM Penalty
					WHERE TicketID =  3
					GROUP BY RacerID
					HAVING COUNT(RacerID) >2					
					)
					AND 
	 (RacerArrival is null)
	) AS AllPenalties ,
	 
	(SELECT COUNT(PenaltyID) FROM Penalty WHERE (TentID =1) AND  
			(TicketID <> 1) AND 
	RacerID NOT IN ( SELECT RacerID
					FROM Penalty
					WHERE TicketID =  3
					GROUP BY RacerID
					HAVING COUNT(RacerID) >2					
					)
					AND 
	 (RacerArrival is null)
	) AS TentOne,

	(SELECT COUNT(PenaltyID) FROM Penalty WHERE (TentID =2) AND
	(TicketID <> 1) AND 
	RacerID NOT IN ( SELECT RacerID
					FROM Penalty
					WHERE TicketID =  3
					GROUP BY RacerID
					HAVING COUNT(RacerID) >2					
					)
					AND 
	 (RacerArrival is null)
	) AS TentTwo,

	(SELECT COUNT(DISTINCT RacerID) FROM Penalty WHERE (TicketID=1) OR 
	RacerID IN( SELECT RacerID
					FROM Penalty
					WHERE TicketID =  3
					GROUP BY RacerID
					HAVING COUNT(RacerID) >2					
					)
	
	) AS Disqualified	

END

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[uspAdministered]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT r.RacerID , RacerSurname, RacerArrival, RacerLeave, TicketName 
	FROM Penalty p, Racer r, Ticket t
	WHERE (p.RacerID = r.RacerID AND t.TicketID = p.TicketID) AND 
	(RacerLeave IS NOT NULL AND RacerArrival IS NOT NULL) AND 
		(r.RacerID NOT IN ( SELECT	RacerID
					FROM Penalty
					WHERE TicketID =  3
					GROUP BY RacerID
					HAVING COUNT(RacerID) >2))
	ORDER BY r.RacerID
END


/****** Object:  StoredProcedure [dbo].[uspAdministeredCheck]    Script Date: 2018/08/10 10:57:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[uspAdministeredCheck]
@last_refresh VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT r.RacerID , RacerSurname, RacerArrival, RacerLeave, TicketName 
	FROM Penalty p, Racer r, Ticket t
	WHERE (p.RacerID = r.RacerID AND t.TicketID = p.TicketID) AND 
	(RacerLeave IS NOT NULL AND RacerArrival IS NOT NULL) AND 
		(r.RacerID NOT IN ( SELECT	RacerID
					FROM Penalty
					WHERE TicketID =  3
					GROUP BY RacerID
					HAVING COUNT(RacerID) >2)) AND CONVERT(datetime,RacerLeave,101) > CONVERT(datetime,@last_refresh,101)
	ORDER BY r.RacerID
END
