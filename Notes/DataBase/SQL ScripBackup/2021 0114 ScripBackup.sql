USE [ManagementSystem]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 14-01-02021 4:49:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 14-01-02021 4:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 14-01-02021 4:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 14-01-02021 4:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 14-01-02021 4:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 14-01-02021 4:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 14-01-02021 4:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 14-01-02021 4:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarDrivers]    Script Date: 14-01-02021 4:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarDrivers](
	[CarID] [int] NOT NULL,
	[PeopleID] [int] NOT NULL,
	[DriverNote] [nvarchar](max) NULL,
 CONSTRAINT [PK_CarDrivers] PRIMARY KEY CLUSTERED 
(
	[PeopleID] ASC,
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarInspections]    Script Date: 14-01-02021 4:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarInspections](
	[CarInspectionID] [int] IDENTITY(1,1) NOT NULL,
	[CarID] [int] NULL,
	[InspectionDate] [datetime2](7) NULL,
	[CarInspectionValidUntil] [datetime2](7) NULL,
	[CarInspectionImagePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_CarInspections] PRIMARY KEY CLUSTERED 
(
	[CarInspectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarInsurances]    Script Date: 14-01-02021 4:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarInsurances](
	[CarInsuranceID] [int] IDENTITY(1,1) NOT NULL,
	[CarID] [int] NOT NULL,
	[CarInsuranceDate] [datetime2](7) NULL,
	[CarInsuranceValidUntil] [datetime2](7) NULL,
	[CarInsuranceImagePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_CarInsurances] PRIMARY KEY CLUSTERED 
(
	[CarInsuranceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarModels]    Script Date: 14-01-02021 4:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarModels](
	[CarModelID] [int] IDENTITY(1,1) NOT NULL,
	[CarModelVendor] [nvarchar](max) NOT NULL,
	[CarModelModel] [nvarchar](max) NOT NULL,
	[CarModelNumberOfSeat] [nvarchar](max) NOT NULL,
	[CarModelImageUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_CarModels] PRIMARY KEY CLUSTERED 
(
	[CarModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarRegistrations]    Script Date: 14-01-02021 4:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarRegistrations](
	[CarRegistrationID] [int] IDENTITY(1,1) NOT NULL,
	[CarID] [int] NULL,
	[PeopleID] [int] NULL,
	[CarPlate] [nvarchar](max) NULL,
	[CarPlateColor] [nvarchar](max) NULL,
	[CarDateofFirstRegistration] [datetime2](7) NULL,
	[CarDateRegistration] [datetime2](7) NULL,
	[CarRegistrationNote] [nvarchar](max) NULL,
	[CarRegistrationImageUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_CarRegistrations] PRIMARY KEY CLUSTERED 
(
	[CarRegistrationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 14-01-02021 4:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[CarID] [int] IDENTITY(1,1) NOT NULL,
	[CarModelID] [int] NULL,
	[CarEngieNumber] [nvarchar](max) NULL,
	[CarEngieChassisNumber] [nvarchar](max) NULL,
	[CarManufactureYear] [nvarchar](max) NULL,
	[CarManufactureCountry] [nvarchar](max) NULL,
	[LocationCompanyID] [int] NULL,
	[LocationUser] [nvarchar](max) NULL,
	[LocationPass] [nvarchar](max) NULL,
	[LocationValidUntil] [datetime2](7) NULL,
	[PeopleID] [int] NULL,
	[CarPlate] [nvarchar](max) NULL,
	[CarOwnerNote] [nvarchar](max) NULL,
 CONSTRAINT [PK_Cars] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 14-01-02021 4:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[PeopleID] [int] NULL,
	[ContactNo] [nvarchar](max) NULL,
	[LastCall] [datetime2](7) NULL,
	[NumberStatus] [nvarchar](max) NULL,
	[NumberNote] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DriverLicenceImages]    Script Date: 14-01-02021 4:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DriverLicenceImages](
	[DLID] [int] IDENTITY(1,1) NOT NULL,
	[PeopleID] [int] NOT NULL,
	[DriverLicenceFront] [nvarchar](max) NULL,
	[DriverLicenceBack] [nvarchar](max) NULL,
 CONSTRAINT [PK_DriverLicenceImages] PRIMARY KEY CLUSTERED 
(
	[DLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DriverLicences]    Script Date: 14-01-02021 4:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DriverLicences](
	[PeopleID] [int] NOT NULL,
	[DriverLicenceNo] [nvarchar](max) NULL,
	[DriverLicenceIssueDate] [datetime2](7) NULL,
	[DriverLicenceClass] [nvarchar](max) NULL,
	[DriverLicenceValidUntil] [datetime2](7) NULL,
	[DriverLicencePlace] [nvarchar](max) NULL,
 CONSTRAINT [PK_DriverLicences] PRIMARY KEY CLUSTERED 
(
	[PeopleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocationCompanies]    Script Date: 14-01-02021 4:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationCompanies](
	[LocationCompanyID] [int] IDENTITY(1,1) NOT NULL,
	[LocationCompanyName] [nvarchar](max) NULL,
	[LocationCompanyWeb] [nvarchar](max) NULL,
	[LocationCompanyLogoPath] [nvarchar](max) NULL,
 CONSTRAINT [PK_LocationCompanies] PRIMARY KEY CLUSTERED 
(
	[LocationCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peoples]    Script Date: 14-01-02021 4:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peoples](
	[PeopleID] [int] IDENTITY(1,1) NOT NULL,
	[PeopleName] [nvarchar](max) NOT NULL,
	[PeopleFrom] [nvarchar](max) NULL,
	[PeopleGende] [nvarchar](max) NULL,
	[PeopleDateOfBirth] [datetime2](7) NULL,
	[PeopleAddress] [nvarchar](max) NULL,
	[PeoplePIDNumber] [nvarchar](max) NULL,
	[PeoplePIDDate] [datetime2](7) NULL,
	[PeoplePIDPlace] [nvarchar](max) NULL,
	[PeoplePIDValidUntil] [datetime2](7) NULL,
	[JoinDate] [datetime2](7) NULL,
	[PeopleImagePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_Peoples] PRIMARY KEY CLUSTERED 
(
	[PeopleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PIDImages]    Script Date: 14-01-02021 4:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PIDImages](
	[PID] [int] IDENTITY(1,1) NOT NULL,
	[PeopleID] [int] NOT NULL,
	[PIDFront] [nvarchar](max) NULL,
	[PIDBack] [nvarchar](max) NULL,
 CONSTRAINT [PK_PIDImages] PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201230080602_Initial', N'5.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210105034840_Add-PIDTable', N'5.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210105035431_Add-DriverLicenceTable', N'5.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210105035503_Add-DriverLicenceTable2', N'5.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210107065931_addImageTo-CarInspectionModel', N'5.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210107102526_ModifyCarmodel', N'5.0.1')
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Facebook', N'4765129766862627', N'Facebook', N'b110cdd4-a679-482d-a108-72de9f1581c6')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'google', N'107233783438891268193', N'Google', N'9ec37244-b953-4b77-801b-d649f5e61a85')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'google', N'118157473807411729462', N'Google', N'f7c58d4c-b5f0-4e85-9435-32db18a62c7d')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9ec37244-b953-4b77-801b-d649f5e61a85', N'nguyentuananh921@gmail.com', N'NGUYENTUANANH921@GMAIL.COM', N'nguyentuananh921@gmail.com', N'NGUYENTUANANH921@GMAIL.COM', 1, NULL, N'2EPBMLESZHZ2IVLLSHUZPXCOTDTAYB4S', N'ff286353-7574-47cb-b675-c2cddff3f45f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b110cdd4-a679-482d-a108-72de9f1581c6', N'nguyentuananhvn@yahoo.com', N'NGUYENTUANANHVN@YAHOO.COM', N'nguyentuananhvn@yahoo.com', N'NGUYENTUANANHVN@YAHOO.COM', 1, NULL, N'IBFJWAKNT3E4H6PZOBWJZOB7VE5GDRGM', N'25fe6ee0-43bc-462c-ac33-10f1b46d2c0c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f7c58d4c-b5f0-4e85-9435-32db18a62c7d', N'htxvtthanhnam@gmail.com', N'HTXVTTHANHNAM@GMAIL.COM', N'htxvtthanhnam@gmail.com', N'HTXVTTHANHNAM@GMAIL.COM', 1, NULL, N'UE37IAIYHHD2LXQVSJJUDTF3KJECSXKU', N'7e07b40c-78a0-4a61-9741-9cdd7dfc5fd6', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (15, 1, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (97, 1, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (19, 2, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (21, 4, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (24, 4, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (32, 5, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (33, 6, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (37, 7, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (38, 8, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (50, 9, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (51, 10, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (90, 10, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (42, 11, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (55, 12, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (1, 13, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (2, 16, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (41, 17, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (58, 18, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (61, 19, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (75, 23, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (158, 24, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (168, 25, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (253, 26, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (69, 27, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (249, 28, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (86, 29, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (27, 30, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (160, 31, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (47, 32, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (242, 33, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (265, 34, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (89, 35, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (166, 36, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (225, 37, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (93, 38, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (128, 39, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (293, 40, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (114, 41, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (220, 42, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (72, 43, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (231, 44, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (67, 45, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (53, 46, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (284, 46, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (213, 47, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (135, 48, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (254, 49, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (115, 50, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (185, 51, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (109, 52, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (78, 53, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (286, 54, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (135, 55, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (22, 56, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (165, 57, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (197, 58, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (147, 59, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (110, 60, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (152, 61, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (117, 62, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (223, 63, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (143, 64, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (183, 65, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (261, 66, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (224, 67, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (202, 68, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (294, 69, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (294, 70, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (125, 71, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (212, 72, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (187, 73, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (187, 74, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (16, 75, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (192, 76, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (285, 76, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (20, 77, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (285, 77, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (251, 78, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (98, 79, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (127, 80, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (185, 81, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (118, 82, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (48, 83, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (214, 84, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (132, 85, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (237, 86, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (106, 87, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (18, 88, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (219, 89, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (219, 90, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (189, 91, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (83, 92, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (162, 93, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (222, 94, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (291, 95, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (91, 96, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (76, 97, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (227, 98, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (35, 99, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (28, 100, NULL)
GO
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (156, 101, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (81, 102, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (179, 103, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (94, 104, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (197, 105, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (221, 106, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (85, 107, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (4, 108, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (271, 108, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (96, 109, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (208, 110, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (74, 111, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (66, 112, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (105, 113, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (150, 114, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (9, 115, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (151, 116, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (216, 117, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (100, 118, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (194, 119, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (299, 120, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (10, 121, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (49, 122, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (65, 123, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (80, 124, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (174, 125, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (8, 126, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (292, 126, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (159, 127, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (5, 128, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (256, 128, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (26, 129, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (217, 129, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (155, 130, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (124, 131, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (190, 132, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (139, 133, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (68, 134, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (257, 135, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (229, 136, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (243, 137, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (200, 138, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (36, 139, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (280, 140, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (46, 141, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (217, 142, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (45, 143, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (175, 144, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (234, 145, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (270, 146, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (196, 147, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (167, 148, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (129, 149, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (153, 150, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (197, 151, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (82, 152, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (238, 153, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (207, 154, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (39, 155, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (275, 155, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (233, 156, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (285, 156, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (119, 157, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (84, 158, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (263, 159, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (193, 160, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (282, 161, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (123, 162, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (62, 163, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (287, 164, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (116, 165, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (235, 166, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (211, 167, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (260, 168, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (70, 169, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (17, 170, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (112, 171, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (115, 172, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (173, 173, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (266, 174, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (18, 175, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (40, 175, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (295, 176, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (195, 177, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (161, 178, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (240, 179, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (255, 180, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (230, 181, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (273, 182, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (141, 183, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (73, 184, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (40, 186, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (148, 187, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (259, 187, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (169, 188, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (103, 189, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (31, 190, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (241, 190, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (204, 191, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (215, 192, NULL)
GO
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (138, 193, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (252, 194, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (18, 195, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (38, 195, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (218, 195, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (235, 196, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (236, 197, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (144, 198, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (144, 199, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (159, 200, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (181, 201, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (248, 201, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (226, 202, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (140, 203, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (232, 203, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (198, 204, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (164, 205, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (52, 206, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (113, 206, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (11, 207, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (276, 207, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (178, 208, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (159, 209, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (133, 210, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (239, 210, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (25, 211, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (290, 211, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (260, 212, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (14, 213, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (232, 213, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (191, 214, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (240, 215, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (12, 216, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (279, 216, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (201, 217, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (240, 218, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (13, 219, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (283, 219, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (57, 220, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (184, 221, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (102, 222, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (149, 223, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (244, 224, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (264, 225, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (199, 226, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (131, 227, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (193, 228, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (34, 229, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (99, 230, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (92, 231, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (87, 232, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (262, 233, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (176, 234, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (251, 235, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (88, 236, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (247, 237, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (52, 238, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (246, 239, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (268, 239, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (69, 240, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (3, 241, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (172, 242, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (296, 243, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (60, 244, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (108, 245, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (6, 246, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (186, 247, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (30, 248, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (288, 249, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (272, 250, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (274, 251, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (159, 252, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (43, 253, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (107, 254, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (120, 255, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (101, 256, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (182, 257, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (170, 258, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (54, 259, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (36, 260, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (126, 261, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (64, 262, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (297, 263, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (20, 264, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (245, 264, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (267, 265, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (77, 266, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (171, 267, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (121, 268, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (63, 269, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (210, 270, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (209, 271, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (122, 272, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (223, 273, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (180, 274, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (269, 275, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (203, 276, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (166, 277, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (250, 278, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (111, 279, NULL)
GO
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (145, 280, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (278, 280, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (137, 281, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (281, 281, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (298, 282, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (298, 283, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (298, 284, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (206, 285, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (228, 286, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (289, 287, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (59, 288, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (134, 289, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (7, 290, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (171, 291, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (277, 292, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (130, 293, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (154, 294, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (23, 295, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (205, 296, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (29, 297, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (188, 298, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (71, 299, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (95, 300, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (258, 301, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (216, 302, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (133, 303, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (71, 304, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (56, 305, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (148, 306, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (146, 307, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (157, 308, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (104, 309, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (136, 310, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (44, 311, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (177, 312, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (95, 313, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (142, 314, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (79, 315, NULL)
INSERT [dbo].[CarDrivers] ([CarID], [PeopleID], [DriverNote]) VALUES (236, 316, NULL)
GO
SET IDENTITY_INSERT [dbo].[CarInspections] ON 

INSERT [dbo].[CarInspections] ([CarInspectionID], [CarID], [InspectionDate], [CarInspectionValidUntil], [CarInspectionImagePath]) VALUES (1, 1, CAST(N'2020-10-12T00:00:00.0000000' AS DateTime2), CAST(N'2021-04-11T00:00:00.0000000' AS DateTime2), N'30E-580.66 Đăng kiểm 2020-10-12 ac644b82-425c-4f96-97b7-dcba9df48adc.jpg')
INSERT [dbo].[CarInspections] ([CarInspectionID], [CarID], [InspectionDate], [CarInspectionValidUntil], [CarInspectionImagePath]) VALUES (2, 2, CAST(N'2019-12-03T00:00:00.0000000' AS DateTime2), CAST(N'2021-06-02T00:00:00.0000000' AS DateTime2), N'17A-080.66 Đăng kiểm 2021-06-02 42612e4c-2273-4142-9aa1-e11cfa7e36f8.jpg')
INSERT [dbo].[CarInspections] ([CarInspectionID], [CarID], [InspectionDate], [CarInspectionValidUntil], [CarInspectionImagePath]) VALUES (3, 2, CAST(N'2020-12-03T00:00:00.0000000' AS DateTime2), CAST(N'2021-06-03T00:00:00.0000000' AS DateTime2), N'17A-080.66 Đăng kiểm 2021-06-03 24d95423-bf64-4081-b74b-1a47db411060.jpg')
INSERT [dbo].[CarInspections] ([CarInspectionID], [CarID], [InspectionDate], [CarInspectionValidUntil], [CarInspectionImagePath]) VALUES (4, 299, CAST(N'2019-10-24T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-23T00:00:00.0000000' AS DateTime2), N'90A-097.22 Đăng kiểm 2020-04-23 c24af6a5-b716-437e-9f75-b82f901ec57a.jpg')
INSERT [dbo].[CarInspections] ([CarInspectionID], [CarID], [InspectionDate], [CarInspectionValidUntil], [CarInspectionImagePath]) VALUES (5, 298, CAST(N'2020-12-03T00:00:00.0000000' AS DateTime2), CAST(N'2021-06-02T00:00:00.0000000' AS DateTime2), N'90A-078.63 Đăng kiểm 2021-06-02 bf59f746-75d1-4513-ad2c-4d5a3a368107.jpg')
INSERT [dbo].[CarInspections] ([CarInspectionID], [CarID], [InspectionDate], [CarInspectionValidUntil], [CarInspectionImagePath]) VALUES (6, 19, CAST(N'2020-07-03T00:00:00.0000000' AS DateTime2), CAST(N'2021-01-02T00:00:00.0000000' AS DateTime2), N'29A-862.46 Đăng kiểm 2021-01-02 933e1a02-2027-40ad-8f4a-7c0c429e9b80.jpg')
INSERT [dbo].[CarInspections] ([CarInspectionID], [CarID], [InspectionDate], [CarInspectionValidUntil], [CarInspectionImagePath]) VALUES (7, 24, CAST(N'2020-09-21T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-20T00:00:00.0000000' AS DateTime2), N'29A-982.17 Đăng kiểm 2021-03-20 f9b6f8b1-c29d-44ef-b835-be7c92b9079a.jpg')
INSERT [dbo].[CarInspections] ([CarInspectionID], [CarID], [InspectionDate], [CarInspectionValidUntil], [CarInspectionImagePath]) VALUES (8, 22, CAST(N'2020-09-10T00:00:00.0000000' AS DateTime2), CAST(N'2021-03-09T00:00:00.0000000' AS DateTime2), N'29A-936.44 Đăng kiểm 2021-03-09 a3f87cbc-d283-4a68-bdb6-60466bdea9d1.jpg')
SET IDENTITY_INSERT [dbo].[CarInspections] OFF
GO
SET IDENTITY_INSERT [dbo].[CarInsurances] ON 

INSERT [dbo].[CarInsurances] ([CarInsuranceID], [CarID], [CarInsuranceDate], [CarInsuranceValidUntil], [CarInsuranceImagePath]) VALUES (1, 38, CAST(N'2019-12-30T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-30T00:00:00.0000000' AS DateTime2), N'30A-419.49 Bảo hiểm 2019-12-30 edd55bd0-29ff-4a1a-8405-fd1a31adb610.jpg')
INSERT [dbo].[CarInsurances] ([CarInsuranceID], [CarID], [CarInsuranceDate], [CarInsuranceValidUntil], [CarInsuranceImagePath]) VALUES (2, 197, CAST(N'2020-11-02T00:00:00.0000000' AS DateTime2), CAST(N'2021-11-02T00:00:00.0000000' AS DateTime2), N'30E-824.55 Bảo hiểm 2020-11-02 b7a131e8-60c6-4ee2-9603-f47c0e6b24c2.jpg')
INSERT [dbo].[CarInsurances] ([CarInsuranceID], [CarID], [CarInsuranceDate], [CarInsuranceValidUntil], [CarInsuranceImagePath]) VALUES (3, 187, CAST(N'2020-06-15T00:00:00.0000000' AS DateTime2), CAST(N'2021-06-15T00:00:00.0000000' AS DateTime2), N'30E-740.79 Bảo hiểm 2020-06-15 7f10c264-c8c7-4033-999d-b762e31f96cb.jpg')
INSERT [dbo].[CarInsurances] ([CarInsuranceID], [CarID], [CarInsuranceDate], [CarInsuranceValidUntil], [CarInsuranceImagePath]) VALUES (4, 1, CAST(N'2020-05-28T00:00:00.0000000' AS DateTime2), CAST(N'2021-05-28T00:00:00.0000000' AS DateTime2), N'30E-580.66 Bảo hiểm 2020-05-28 c362d6ce-e39d-4e8b-9910-619bde4fe828.jpg')
INSERT [dbo].[CarInsurances] ([CarInsuranceID], [CarID], [CarInsuranceDate], [CarInsuranceValidUntil], [CarInsuranceImagePath]) VALUES (5, 2, CAST(N'2020-12-04T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-04T00:00:00.0000000' AS DateTime2), N'17A-080.66 Bảo hiểm 2020-12-04 8a3233e2-bfb6-401e-b326-c09c3ac060c0.jpg')
INSERT [dbo].[CarInsurances] ([CarInsuranceID], [CarID], [CarInsuranceDate], [CarInsuranceValidUntil], [CarInsuranceImagePath]) VALUES (6, 299, CAST(N'2019-10-22T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-22T00:00:00.0000000' AS DateTime2), N'90A-097.22 Bảo hiểm 2019-10-22 98a07237-ef03-4eef-be20-d88f179872b4.jpg')
INSERT [dbo].[CarInsurances] ([CarInsuranceID], [CarID], [CarInsuranceDate], [CarInsuranceValidUntil], [CarInsuranceImagePath]) VALUES (7, 19, CAST(N'2020-08-08T00:00:00.0000000' AS DateTime2), CAST(N'2021-08-08T00:00:00.0000000' AS DateTime2), N'29A-862.46 Bảo hiểm 2020-08-08 aa8cd76a-7519-452e-9035-f06ccccdf976.jpg')
INSERT [dbo].[CarInsurances] ([CarInsuranceID], [CarID], [CarInsuranceDate], [CarInsuranceValidUntil], [CarInsuranceImagePath]) VALUES (8, 22, CAST(N'2020-06-30T00:00:00.0000000' AS DateTime2), CAST(N'2021-06-30T00:00:00.0000000' AS DateTime2), N'29A-936.44 Bảo hiểm 2020-06-30 9bc4797a-daaf-495d-9353-07dbc3ee5761.jpg')
SET IDENTITY_INSERT [dbo].[CarInsurances] OFF
GO
SET IDENTITY_INSERT [dbo].[CarModels] ON 

INSERT [dbo].[CarModels] ([CarModelID], [CarModelVendor], [CarModelModel], [CarModelNumberOfSeat], [CarModelImageUrl]) VALUES (1, N'Toyota', N'Vios', N'5', N'Toyota-Vios.png')
INSERT [dbo].[CarModels] ([CarModelID], [CarModelVendor], [CarModelModel], [CarModelNumberOfSeat], [CarModelImageUrl]) VALUES (2, N'Kia', N'Morning', N'5', N'Kia-Morning.jpg')
INSERT [dbo].[CarModels] ([CarModelID], [CarModelVendor], [CarModelModel], [CarModelNumberOfSeat], [CarModelImageUrl]) VALUES (3, N'Kia', N'Picanto', N'5', N'Kia-Picanto.jpg')
INSERT [dbo].[CarModels] ([CarModelID], [CarModelVendor], [CarModelModel], [CarModelNumberOfSeat], [CarModelImageUrl]) VALUES (4, N'Kia', N'Rio', N'5', N'Kia-Rio.jpg')
INSERT [dbo].[CarModels] ([CarModelID], [CarModelVendor], [CarModelModel], [CarModelNumberOfSeat], [CarModelImageUrl]) VALUES (5, N'Kia', N'Sorento', N'5', N'Kia-Sorento.jpg')
INSERT [dbo].[CarModels] ([CarModelID], [CarModelVendor], [CarModelModel], [CarModelNumberOfSeat], [CarModelImageUrl]) VALUES (6, N'Mazda', N'Mazda 3', N'5', N'Mazda-Mazda 3.png')
INSERT [dbo].[CarModels] ([CarModelID], [CarModelVendor], [CarModelModel], [CarModelNumberOfSeat], [CarModelImageUrl]) VALUES (7, N'Mazda', N'Mazda 2', N'5', N'Mazda-Mazda 2.png')
INSERT [dbo].[CarModels] ([CarModelID], [CarModelVendor], [CarModelModel], [CarModelNumberOfSeat], [CarModelImageUrl]) VALUES (8, N'Toyota', N'Innova', N'7', N'Toyota-Innova.jpg')
INSERT [dbo].[CarModels] ([CarModelID], [CarModelVendor], [CarModelModel], [CarModelNumberOfSeat], [CarModelImageUrl]) VALUES (9, N'Toyota', N'Fortuner', N'7', N'Toyota-Fortuner.png')
INSERT [dbo].[CarModels] ([CarModelID], [CarModelVendor], [CarModelModel], [CarModelNumberOfSeat], [CarModelImageUrl]) VALUES (10, N'Hyundai', N'Grand I10', N'5', N'Hyundai-Grand I10.png')
INSERT [dbo].[CarModels] ([CarModelID], [CarModelVendor], [CarModelModel], [CarModelNumberOfSeat], [CarModelImageUrl]) VALUES (11, N'Hyundai', N'Accent', N'5', N'Hyundai-Accent.png')
INSERT [dbo].[CarModels] ([CarModelID], [CarModelVendor], [CarModelModel], [CarModelNumberOfSeat], [CarModelImageUrl]) VALUES (17, N'Nissan', N'Sunny', N'5', N'Nissan-Sunny.jpg')
INSERT [dbo].[CarModels] ([CarModelID], [CarModelVendor], [CarModelModel], [CarModelNumberOfSeat], [CarModelImageUrl]) VALUES (18, N'Mitsubishi', N'Attrage', N'5', N'Mitsubishi-Attrage.jpg')
INSERT [dbo].[CarModels] ([CarModelID], [CarModelVendor], [CarModelModel], [CarModelNumberOfSeat], [CarModelImageUrl]) VALUES (19, N'Toyota', N'Wigo', N'5', N'Toyota-Wigo.png')
SET IDENTITY_INSERT [dbo].[CarModels] OFF
GO
SET IDENTITY_INSERT [dbo].[CarRegistrations] ON 

INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (1, 59, 320, N'30A-792.87', N'Trắng', CAST(N'2015-09-17T00:00:00.0000000' AS DateTime2), CAST(N'2015-09-17T00:00:00.0000000' AS DateTime2), N'Đang cầm ngân hàng.', N'30A-792.87 Đăng ký 2015-09-17 1cceb124-13a9-4cf3-b6c2-c042ced0c373.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (2, 1, 14, N'30E-580.66', N'Trắng', CAST(N'2016-11-17T00:00:00.0000000' AS DateTime2), CAST(N'2016-11-17T00:00:00.0000000' AS DateTime2), N'Đã bán cho Thọ Tám', N'30E-580.66 Đăng ký 2016-11-17 f35ecd0f-ab20-4e9c-999f-f61f89474825.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (3, 1, 13, N'30E-580.66', N'Trắng', CAST(N'2016-11-17T00:00:00.0000000' AS DateTime2), CAST(N'2019-03-29T00:00:00.0000000' AS DateTime2), N'Mua lại của Hải Yến', N'30E-580.66 Đăng ký 2019-03-29 8cc90341-0272-4c18-8695-39d6d3c2fd56.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (4, 126, 261, N'30E-431.35', N'Trắng', CAST(N'2017-04-12T00:00:00.0000000' AS DateTime2), CAST(N'2017-04-12T00:00:00.0000000' AS DateTime2), NULL, N'30E-431.35 Đăng ký 2017-04-12 b66dc18e-6294-4988-ae60-73ae84df983d.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (5, 130, 293, N'30E-438.57', N'Trắng', CAST(N'2017-06-12T00:00:00.0000000' AS DateTime2), CAST(N'2017-06-12T00:00:00.0000000' AS DateTime2), NULL, N'30E-438.57 Đăng ký 2017-06-12 30e366c3-9bd6-4a00-aa94-ef6921afa9f8.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (6, 132, 85, N'30E-443.29', N'Trắng', CAST(N'2017-06-29T00:00:00.0000000' AS DateTime2), CAST(N'2017-06-29T00:00:00.0000000' AS DateTime2), NULL, N'30E-443.29 Đăng ký 2017-06-29 83590c2c-05e6-4adb-a97d-e36951eddb14.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (7, 133, 210, N'30E-443.75', N'Trắng', CAST(N'2017-07-03T00:00:00.0000000' AS DateTime2), CAST(N'2017-07-03T00:00:00.0000000' AS DateTime2), NULL, N'30E-443.75 Đăng ký 2017-07-03 8831d1a7-ca26-4485-93c4-bd48f3e615a9.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (8, 139, 133, N'30E-478.01', N'Trắng', CAST(N'2015-03-18T00:00:00.0000000' AS DateTime2), CAST(N'2019-03-18T00:00:00.0000000' AS DateTime2), N'Đang cầm ngân hàng.', N'30E-478.01 Đăng ký 2019-03-18 3aa209ae-bfb8-49e1-864a-b0160d50c490.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (9, 143, 321, N'30E-481.84', N'Trắng', CAST(N'2017-04-04T00:00:00.0000000' AS DateTime2), CAST(N'2017-04-04T00:00:00.0000000' AS DateTime2), NULL, N'30E-481.84 Đăng ký 2017-04-04 117a41a0-6b4f-4f96-9694-7c2455a4ab03.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (10, 147, 59, N'30E-484.49', N'Trắng', CAST(N'2017-04-04T00:00:00.0000000' AS DateTime2), CAST(N'2017-04-04T00:00:00.0000000' AS DateTime2), NULL, N'30E-484.49 Đăng ký 2017-04-04 39fd72a0-87ff-4506-96f3-14fea6063167.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (11, 154, 294, N'30E-492.00', N'Trắng', CAST(N'2017-04-21T00:00:00.0000000' AS DateTime2), CAST(N'2017-04-21T00:00:00.0000000' AS DateTime2), NULL, N'30E-492.00 Đăng ký 2017-04-21 ec3d3e97-9849-4705-96c1-dcfd0f98d991.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (12, 155, 130, N'30E-497.96', N'Trắng', CAST(N'2017-05-25T00:00:00.0000000' AS DateTime2), CAST(N'2017-05-25T00:00:00.0000000' AS DateTime2), N'Đang cầm ngân hàng.', N'30E-497.96 Đăng ký 2017-05-25 d8f9645b-47fd-457c-88ee-33c99a0925b3.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (13, 159, 322, N'30E-530.40', N'Trắng', CAST(N'2013-10-03T00:00:00.0000000' AS DateTime2), CAST(N'2017-11-08T00:00:00.0000000' AS DateTime2), N'Chắc mua lại cần kiểm tra thêm.', N'30E-530.40 Đăng ký 2017-11-08 f04b9967-8590-43dc-a884-748a055e2916.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (14, 229, 136, N'30E-988.51', N'Trắng', CAST(N'2017-10-27T00:00:00.0000000' AS DateTime2), CAST(N'2019-07-13T00:00:00.0000000' AS DateTime2), N'Chắc mua lại cần kiểm tra thêm.', N'30E-988.51 Đăng ký 2019-07-13 39a4580a-5bea-4f4f-9f13-b1fb93167917.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (15, 259, 187, N'30F-736.07', N'Trắng', CAST(N'2019-05-29T00:00:00.0000000' AS DateTime2), CAST(N'2019-05-29T00:00:00.0000000' AS DateTime2), N'Đang cầm ngân hàng.', N'30F-736.07 Đăng ký 2019-05-29 9bdb300a-47da-429b-afe4-73c473b7c6ea.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (16, 196, 323, N'30E-819.61', N'Trắng', CAST(N'2017-09-28T00:00:00.0000000' AS DateTime2), CAST(N'2017-09-28T00:00:00.0000000' AS DateTime2), NULL, N'30E-819.61 Đăng ký 2017-09-28 2af32c96-7212-4934-8846-c36ae7d14440.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (17, 197, 105, N'30E-824.55', N'Trắng', CAST(N'2017-10-19T00:00:00.0000000' AS DateTime2), CAST(N'2019-10-25T00:00:00.0000000' AS DateTime2), N'Chắc mua lại cần kiểm tra thêm.', N'30E-824.55 Đăng ký 2019-10-25 cc930acb-067f-47d2-8b5c-d0559bff3319.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (18, 186, 247, N'30E-736.61', N'Trắng', CAST(N'2017-04-14T00:00:00.0000000' AS DateTime2), CAST(N'2017-04-14T00:00:00.0000000' AS DateTime2), NULL, N'30E-736.61 Đăng ký 2017-04-14 e61714ba-77ba-4075-b646-3a4279801d78.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (19, 187, 324, N'30E-740.79', N'Trắng', CAST(N'2017-06-06T00:00:00.0000000' AS DateTime2), CAST(N'2017-06-06T00:00:00.0000000' AS DateTime2), NULL, N'30E-740.79 Đăng ký 2017-06-06 d72d633b-1491-4609-a8ca-96b5914a3bbf.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (20, 2, 16, N'17A-080.66', N'Trắng', CAST(N'2017-06-06T00:00:00.0000000' AS DateTime2), CAST(N'2017-06-06T00:00:00.0000000' AS DateTime2), NULL, N'17A-080.66 Đăng ký 2017-06-06 1878ff60-5469-44c4-9fc5-29be21b30368.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (21, 299, 120, N'90A-097.22', N'Trắng', CAST(N'2019-10-22T00:00:00.0000000' AS DateTime2), CAST(N'2019-10-22T00:00:00.0000000' AS DateTime2), NULL, N'90A-097.22 Đăng ký 2019-10-22 18b35cd3-9180-443a-991c-ded718a7a826.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (22, 24, 4, N'29A-982.17', N'Trắng', CAST(N'2013-11-23T00:00:00.0000000' AS DateTime2), CAST(N'2020-02-26T00:00:00.0000000' AS DateTime2), NULL, N'29A-982.17 Đăng ký 2020-02-26 6306f6b7-ffa3-4fc5-8837-22285ddfd1cd.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (23, 22, 326, N'29A-936.44', N'Trắng', CAST(N'2013-09-06T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-17T00:00:00.0000000' AS DateTime2), NULL, N'29A-936.44 Đăng ký 2020-06-17 5a5b2bba-0779-4c92-9e38-a043d72c7472.jpg')
INSERT [dbo].[CarRegistrations] ([CarRegistrationID], [CarID], [PeopleID], [CarPlate], [CarPlateColor], [CarDateofFirstRegistration], [CarDateRegistration], [CarRegistrationNote], [CarRegistrationImageUrl]) VALUES (24, 61, 19, N'30A-815.89', N'Trắng', CAST(N'2015-10-22T00:00:00.0000000' AS DateTime2), CAST(N'2015-10-22T00:00:00.0000000' AS DateTime2), NULL, N'30A-815.89 Đăng ký 2015-10-22 5bf08d61-c0c8-42de-b102-9807b228c8ef.jpg')
SET IDENTITY_INSERT [dbo].[CarRegistrations] OFF
GO
SET IDENTITY_INSERT [dbo].[Cars] ON 

INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (1, 2, N'G4LAGP095245', N'RNYTB51M5GC093577', N'2016', N'Việt Nam', 2, NULL, NULL, NULL, 13, N'30E-580.66', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (2, 1, N'2NRX161715', N'RL4B29F34H5015948', N'2017', N'Việt Nam', 1, N'17a08066', N'12345', NULL, 16, N'17A-080.66', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'29A-157.52', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'29A-182.70', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'29A-204.84', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'29A-237.19', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'29A-243.25', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'29A-373.97', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'29A-492.30', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'29A-502.51', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'29A-503.75', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'29A-519.48', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'29A-519.73', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'29A-528.90', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (15, 1, N'1NZ-Y545573', N'RL4BT923C9518900', N'2012', N'Việt Nam', NULL, NULL, NULL, NULL, 1, N'29A-532.95', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'29A-563.72', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'29A-586.62', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'29A-671.63', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (19, 2, N'GALADP033672', N'RNYTB51M5DC037258', N'2013', N'Việt Nam', NULL, NULL, NULL, NULL, NULL, N'29A-862.46', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'29A-917.49', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'29A-935.86', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (22, 10, N'G4HGDM705666', N'MALAN51BADM463406', N'2013', N'Ấn Độ', NULL, NULL, NULL, NULL, 326, N'29A-936.44', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'29A-960.59', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (24, 10, N'G4HGDM727641', N'MALAN51BAEM490278', N'2013', N'Ấn Độ', NULL, NULL, NULL, NULL, 4, N'29A-982.17', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'29A-984.39', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'29E-000.87', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-075.78', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-077.62', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-116.47', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-224.00', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-276.79', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-281.44', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-287.61', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-294.93', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-380.03', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-395.44', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-419.18', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (38, 1, N'2NZ7326610', N'RL4BW9F39E4001047', N'2014', N'Việt Nam', NULL, NULL, NULL, NULL, 317, N'30A-419.49', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-435.30', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-465.64', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-507.69', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-532.60', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-560.60', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-562.65', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-569.33', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-573.15', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-634.90', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-648.83', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-666.52', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (50, 10, N'G3LAEM248402', N'MALA851AAFM208340', N'2014', N'Ấn Độ', NULL, NULL, NULL, NULL, 215, N'30A-674.91', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (51, 10, N'G3LAEM259510', N'MALA851AAFM221993', N'2014', N'Ấn Độ', NULL, NULL, NULL, NULL, 10, N'30A-710.66', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-718.24', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-724.72', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-744.56', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-749.44', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-773.82', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-787.08', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-791.63', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-792.87', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-814.05', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (61, 1, N'1NZZ322534', N'RL4BT9F35F4016574', N'2015', N'Việt Nam', NULL, NULL, NULL, NULL, 19, N'30A-815.89', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-816.59', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-817.88', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-821.04', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-823.94', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-831.23', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-831.82', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-839.96', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-850.83', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-866.33', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-866.40', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-885.49', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-889.25', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-904.59', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (75, 2, N'G4LAFP092455', N'RNYTB51M5FC063420', N'2015', N'Việt Nam', NULL, NULL, NULL, NULL, 23, N'30A-909.00', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-927.00', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-930.73', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-930.74', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-972.50', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-987.69', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30A-997.17', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-005.36', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (83, 10, N'G4LAFM838772', N'G4LAFM838772', N'2015', N'Ấn Độ', NULL, NULL, NULL, NULL, 92, N'30E-005.56', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-023.56', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-036.98', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-036.99', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-040.24', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-080.11', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-086.96', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-094.14', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-095.62', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-096.88', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-097.92', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-116.08', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-134.50', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-149.72', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-165.09', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-173.23', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-209.49', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-249.42', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-270.21', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-294.43', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-348.16', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-396.29', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-397.28', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-404.10', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-415.54', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-415.58', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (109, 1, N'2NRX104767', N'RL4B29F38H5009005', N'2017', N'Việt Nam', NULL, NULL, NULL, NULL, 319, N'30E-416.61', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-420.19', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-420.61', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-421.35', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-421.90', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-423.56', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-423.92', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-424.93', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-425.95', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-426.00', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-426.53', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-427.33', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-427.72', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-429.40', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-429.42', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-429.83', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-430.80', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (126, 10, N'G4LAGM267415', N'MALA741CAHM227977', N'2016', N'Ấn Độ', NULL, NULL, NULL, NULL, 261, N'30E-431.35', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-434.83', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-436.91', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-437.65', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (130, 6, N'P520429732', N'RN2BN4AA6HC064574', N'2017', N'Việt Nam', NULL, NULL, NULL, NULL, 293, N'30E-438.57', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-439.82', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (132, 10, N'G3LAHM277486', N'MALA851AAJM609427', N'2017', N'Ấn Độ', NULL, NULL, NULL, NULL, 85, N'30E-443.29', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (133, 10, N'G4LAHM371206', N'MALA741CAHM246192', N'2017', N'Ấn Độ', NULL, NULL, NULL, NULL, NULL, N'30E-443.75', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-444.27', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-446.64', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-448.75', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-460.32', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-470.62', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (139, 11, N'G4LCEU259601', N'KMHCU41BEEU778090', N'2014', N'Hàn Quốc', NULL, NULL, NULL, NULL, 133, N'30E-478.01', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-481.02', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-481.62', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-481.71', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (143, 10, N'GALAGM299154', N'MALA841CAHM233714', N'2016', N'Ấn Độ', NULL, NULL, NULL, NULL, 321, N'30E-481.84', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (144, 10, N'G3LAGM091287', N'MALA851AAHM454923', N'2016', N'Ấn Độ', NULL, NULL, NULL, NULL, 198, N'30E-483.15', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-484.38', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-484.47', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (147, 18, N'3A92UDL6605', N'MMBSTA13AHH003097', N'2016', N'Thái Lan', NULL, NULL, NULL, NULL, 59, N'30E-484.49', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-485.58', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-486.19', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-488.24', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-490.60', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-490.63', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-491.14', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (154, 1, N'2NRX110468', N'RL4B29F38H5009845', N'2017', N'Việt Nam', NULL, NULL, NULL, NULL, 294, N'30E-492.00', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (155, 2, N'G4LAHP008064', N'RNYTB51M5HC107046', N'2017', N'Việt Nam', NULL, NULL, NULL, NULL, NULL, N'30E-497.96', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-499.29', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-503.53', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-507.78', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-530.40', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-534.16', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-571.22', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-578.22', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-596.80', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-613.47', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-630.11', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-655.02', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-662.26', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-664.72', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-668.59', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-673.10', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-677.90', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-683.65', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-693.71', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-710.21', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-711.89', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-713.36', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (178, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-714.29', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-714.44', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (180, 1, N'2NRX090283', N'RL4B29F37G5007003', N'2016', N'Việt Nam', NULL, NULL, NULL, NULL, 318, N'30E-716.85', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (181, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-721.12', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-721.17', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (183, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-721.71', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-731.77', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-734.96', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (186, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 247, N'30E-736.61', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (187, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 324, N'30E-740.79', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (188, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-741.36', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (189, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-743.81', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-745.01', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (191, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-745.16', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-747.06', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-757.91', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-761.43', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-797.54', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (196, 10, N'G4LAHM512601', N'RLUG7S1DAHN003557', N'2017', N'Việt Nam', NULL, NULL, NULL, NULL, 323, N'30E-819.61', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (197, 1, N'2NRX2211863', N'RL4B29F36H5025039', N'2017', N'Việt Nam', NULL, NULL, NULL, NULL, 105, N'30E-824.55', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-826.53', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-849.38', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-850.66', NULL)
GO
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-860.47', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-862.21', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-864.62', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-880.42', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-889.92', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-902.84', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-918.60', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-922.33', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-922.56', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-924.46', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-925.84', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (212, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-929.34', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (213, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-937.61', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-938.29', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-943.52', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-945.94', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (217, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-947.10', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-948.63', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-952.15', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-954.32', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-960.51', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (222, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-961.96', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (223, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-964.09', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-964.15', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-964.23', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (226, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-965.12', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (227, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-971.04', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30E-976.78', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (229, 1, N'2NRX218502', N'RL4B29F31H2024526', N'2017', N'Việt Nam', NULL, NULL, NULL, NULL, 136, N'30E-988.51', N'Đang cầm ngân hàng. Có thể xe mua lại cần kiểm tra thêm')
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-068.73', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-096.18', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-116.87', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-118.48', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-130.08', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-136.71', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-143.92', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-147.24', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-173.70', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-176.03', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-186.52', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-192.22', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-233.34', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-303.44', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-322.34', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (245, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-334.43', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (246, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-377.76', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-440.30', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (248, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-463.45', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-493.78', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-500.54', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (251, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-530.30', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (252, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-546.41', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-602.10', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-605.02', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 325, N'30F-637.40', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (256, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-673.63', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (257, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-685.52', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (258, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-687.54', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (259, 19, N'3NRH368062', N'MHKA4GE5VKJ002937', N'2019', N'Indonesia', NULL, NULL, NULL, NULL, 187, N'30F-736.07', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (260, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-742.85', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (261, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-758.50', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (262, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-801.11', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (263, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-836.91', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-846.17', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (265, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-850.71', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (266, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-852.20', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (267, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-865.91', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (268, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-948.97', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (269, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30F-977.53', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (270, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30G-042.68', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (271, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30G-042.70', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30G-045.56', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (273, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30G-047.48', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (274, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30G-056.98', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (275, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30G-100.76', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (276, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30G-115.87', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (277, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30G-120.85', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (278, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30G-124.52', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (279, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30G-145.11', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30G-170.15', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (281, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30G-191.63', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (282, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30G-200.45', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (283, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30G-209.27', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (284, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30G-296.42', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (285, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30G-352.58', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (286, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30G-354.72', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (287, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30G-430.24', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (288, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30G-459.61', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (289, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30G-470.26', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (290, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'30G-552.61', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (291, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'35A-109.66', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (292, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'36A-485.86', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (293, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'36A-501.17', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (294, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'88A-198.69', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (295, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'88A-268.96', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (296, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'90A-048.57', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (297, 10, N'G4LAGM267385', N'MALA741CAHM227949', N'2016', N'Ấn Độ', NULL, NULL, NULL, NULL, 263, N'90A-049.22', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (298, 11, N'G4LCJU069113', N'RLUA241BAJN009877', N'2018', N'Việt Nam', NULL, NULL, NULL, NULL, NULL, N'90A-078.63', NULL)
INSERT [dbo].[Cars] ([CarID], [CarModelID], [CarEngieNumber], [CarEngieChassisNumber], [CarManufactureYear], [CarManufactureCountry], [LocationCompanyID], [LocationUser], [LocationPass], [LocationValidUntil], [PeopleID], [CarPlate], [CarOwnerNote]) VALUES (299, 8, N'1TRA667817', N'RL4JW3EM2K3368845', N'2019', N'Việt Nam', NULL, NULL, NULL, NULL, 120, N'90A-097.22', NULL)
SET IDENTITY_INSERT [dbo].[Cars] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([ContactID], [PeopleID], [ContactNo], [LastCall], [NumberStatus], [NumberNote]) VALUES (1, 136, N'0986697279', NULL, NULL, N'KSK 2020 khóa mới chịu về')
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[LocationCompanies] ON 

INSERT [dbo].[LocationCompanies] ([LocationCompanyID], [LocationCompanyName], [LocationCompanyWeb], [LocationCompanyLogoPath]) VALUES (1, N'HC AUTOTECH', N'http://giamsattructuyen.vn/', NULL)
INSERT [dbo].[LocationCompanies] ([LocationCompanyID], [LocationCompanyName], [LocationCompanyWeb], [LocationCompanyLogoPath]) VALUES (2, N'Công ty TNHH điện tử viễn thông Bình Minh', N'http://gpsbinhminh.vn/', NULL)
SET IDENTITY_INSERT [dbo].[LocationCompanies] OFF
GO
SET IDENTITY_INSERT [dbo].[Peoples] ON 

INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (1, N'Lê Văn Dũng', N'Nghĩa Hương, Quốc Oai, Hà Nội', N'Nam', CAST(N'1983-08-13T00:00:00.0000000' AS DateTime2), N'Xóm 10, Văn Quang, Nghĩa Hương, Quốc Oai, Hà Nội', N'001083011872', CAST(N'2015-02-11T00:00:00.0000000' AS DateTime2), N'Cục cảnh sát ĐKQL Cư Trú và DLQG về dân cư', CAST(N'2030-02-11T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (2, N'Trần Xuân Thanh', N'Yên Chính, Ý Yên, Nam Định', N'Nam', CAST(N'1976-04-04T00:00:00.0000000' AS DateTime2), N'Yên Chính, Ý Yên, Nam Định', N'162556639', CAST(N'2010-01-15T00:00:00.0000000' AS DateTime2), N'Công An Tỉnh Nam Định', CAST(N'2025-01-15T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (3, N'Đỗ Quang Hùng', N'An Ninh, Tiền Hải, Thái Bình', N'Nam', CAST(N'1974-10-20T00:00:00.0000000' AS DateTime2), N'An Ninh, Tiền Hải, Thái Bình', N'151068310', CAST(N'2010-11-09T00:00:00.0000000' AS DateTime2), N'Công An Tỉnh Thái Bình', CAST(N'2025-11-09T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (4, N'Lê Văn Nam', N'Huyện Triệu Sơn, Thanh Hóa', N'Nam', CAST(N'1980-02-20T00:00:00.0000000' AS DateTime2), N'Mạch Lũng, Đại Mạch, Đông Anh Hà Nội', N'013477281', CAST(N'2011-10-14T00:00:00.0000000' AS DateTime2), N'Công An TP Hà Nội', CAST(N'2026-10-14T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (5, N'Nguyễn Quốc Kỳ', N'Vạn Kim, Mỹ Đức, Hà Nội', N'Nam', CAST(N'1971-05-30T00:00:00.0000000' AS DateTime2), N'Vạn Kim, Mỹ Đức, Hà Nội', N'001071008236', CAST(N'2016-04-19T00:00:00.0000000' AS DateTime2), N'Cục cảnh sát ĐKQL cư trú và DLQG về dân cư', CAST(N'2031-05-30T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (6, N'Phạm Hồng Mạnh', N'Hà Nội', N'Nam', CAST(N'1975-07-25T00:00:00.0000000' AS DateTime2), N'P106-Chung Cư Nhạc Viện Hà Nội, Ô Chợ Dừa, Đống Đa, Hà Nội', N'001075000211', CAST(N'2013-01-25T00:00:00.0000000' AS DateTime2), N'Cục CS QLHC về TTXH', CAST(N'2028-01-25T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (7, N'Lê Duy Thịnh', N'Văn Lâm, Hưng Yên', N'Nam', CAST(N'1963-11-27T00:00:00.0000000' AS DateTime2), N'Tổ 23C Phương Liệt, Thanh Xuân, Hà Nội', N'033063000049', CAST(N'2018-09-18T00:00:00.0000000' AS DateTime2), N'Cục cảnh sát ĐKQL cư trú và DLQG về dân cư', CAST(N'2023-09-18T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (8, N'Nguyễn Văn Linh', N'Lệ Chi, Gia Lâm, Hà Nội', N'Nam', CAST(N'1977-10-17T00:00:00.0000000' AS DateTime2), N'Sen Hồ, Lệ Chi, Gia Lâm, Hà Nội', N'001077020969', CAST(N'2014-07-22T00:00:00.0000000' AS DateTime2), N'Cục cảnh sát ĐKQL cư trú và DLQG về dân cư', CAST(N'2037-10-17T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (9, N'Từ Tất Dương', N'Xã Liên Hiệp, Huyện Phúc Thọ Hà Nội', N'Nam', CAST(N'1989-04-13T00:00:00.0000000' AS DateTime2), N'Xã Liên Hiệp, Huyện Phúc Thọ Hà Nội', N'017017296', CAST(N'2012-10-19T00:00:00.0000000' AS DateTime2), N'Công An TP Hà Nội', CAST(N'2027-10-19T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (10, N'Nguyễn Văn Thành', N'Thái Bình', N'Nam', CAST(N'1981-08-22T00:00:00.0000000' AS DateTime2), N'Số 7 Ngõ 463 Đội Cấn Vĩnh Phúc, Ba Đình, Hà Nội', N'034081002280', CAST(N'2015-07-09T00:00:00.0000000' AS DateTime2), N'Cục cảnh sát ĐKQL cư trú và DLQG về dân cư', CAST(N'2030-07-09T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (11, N'Nguyễn Xuân Huy', N'Yên Duyên, Hà Nội', N'Nam', CAST(N'1976-07-30T00:00:00.0000000' AS DateTime2), N'Yên Duyên, P Yên Sở, Hà Nội', N'012221645', CAST(N'2008-06-12T00:00:00.0000000' AS DateTime2), N'Công An TP Hà Nội', NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (12, N'Quách Huy Vinh', N'Thường Tín, Hà Nội', N'Nam', CAST(N'1965-05-26T00:00:00.0000000' AS DateTime2), N'33 Yên Thái, Hàng Gai, Hoàn Kiếm, Hà Nội', N'001065001989', CAST(N'2014-11-19T00:00:00.0000000' AS DateTime2), N'Cục cảnh sát ĐKQL cư trú và DLQG về dân cư', CAST(N'2029-11-19T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (13, N'Nguyễn Thọ Tám', N'Phú Lương, Hà Đông, Hà Nội', N'Nam', CAST(N'1978-05-03T00:00:00.0000000' AS DateTime2), N'Tổ dân phố 7, Phú Lương, Hà Đông', N'001078020008', CAST(N'2018-05-03T00:00:00.0000000' AS DateTime2), N'Cục cảnh sát ĐKQL cư trú và DLQG về dân cư', CAST(N'2018-05-03T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (14, N'Nguyễn Thị Hải Yến', N'Xuân Tảo, Bắc Từ Liêm, Hà Nội', N'Nữ', CAST(N'1964-12-14T00:00:00.0000000' AS DateTime2), N'14/42 Tổ dân phố 4, Xuân Đỉnh, Xuân Tạo, Bắc Từ Liêm, Hà Nội', N'001164002381', CAST(N'2015-01-30T00:00:00.0000000' AS DateTime2), NULL, CAST(N'2030-01-30T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (15, N'Lê Minh Duẩn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (16, N'Lưu Xuân Đăng', N'Thái Bình', NULL, CAST(N'1980-10-15T00:00:00.0000000' AS DateTime2), N'Trung Hòa, Vũ Vĩnh, Vũ Thư Thái Bình', N'34080006113', CAST(N'2017-11-05T00:00:00.0000000' AS DateTime2), N'Cục cảnh sát ĐKQL cư trú và DLQG về dân cư', CAST(N'2033-11-05T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (17, N'Nguyễn Ngọc Anh', NULL, N'Nam', CAST(N'1979-12-15T00:00:00.0000000' AS DateTime2), N'Tổ 3, Phường Ngọc Thụy, Quận Long Biên, TP Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (18, N'Hoàng Văn Phước', N'Long Biên, Hà Nội', N'Nam', CAST(N'1973-01-29T00:00:00.0000000' AS DateTime2), N'Tổ 22, Long Biên, Hà Nội', N'001073024047', NULL, NULL, CAST(N'2033-01-29T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (19, N'Nguyễn Trọng Hải', N'Thăng Bình, Quảng Nam', N'Nam', CAST(N'1965-05-28T00:00:00.0000000' AS DateTime2), N'260 Tập thể K40 Giảng Võ, Cát Linh, Đống Đa, Hà Nội', N'011038939', CAST(N'2014-01-11T00:00:00.0000000' AS DateTime2), N'Công An TP Hà Nội', CAST(N'2029-01-11T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (20, N'Nguyễn Việt Cường', N'Chí Linh, Hải Dương', N'Nam', CAST(N'1984-12-28T00:00:00.0000000' AS DateTime2), N'23B4 tập thể Bộ Nông Nghiệp Đồng Nhân, Hai Bà Trưng, Hà Nội', N'001084008782', CAST(N'2015-06-29T00:00:00.0000000' AS DateTime2), N'Cục cảnh sát ĐKQL cư trú và DLQG về dân cư', CAST(N'2030-06-29T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (21, N'Nông Văn Hoàng', NULL, N'Nam', CAST(N'1998-09-23T00:00:00.0000000' AS DateTime2), NULL, N'061099680', CAST(N'2016-02-17T00:00:00.0000000' AS DateTime2), N'Công An Tỉnh Yên Bái', CAST(N'2031-02-17T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (22, N'Đinh Bá Nam', N'Thái Bình', N'Nam', CAST(N'1972-07-11T00:00:00.0000000' AS DateTime2), N'79 Đường 18, Phúc Xá, Ba Đình, Hà Nội', N'034072000790', CAST(N'2015-01-14T00:00:00.0000000' AS DateTime2), N'Cục cảnh sát ĐKQL cư trú và DLQG về dân cư', CAST(N'2030-01-14T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (23, N'Đinh Công Thành', N'Duy Tiên, Hà Nam', N'Nam', CAST(N'1976-04-05T00:00:00.0000000' AS DateTime2), N'B18 TT Gỗ, Tổ 17, Đức Giang, Long BIên, Hà Nội', N'001076001881', CAST(N'2014-07-03T00:00:00.0000000' AS DateTime2), N'Cục cảnh sát ĐKQL cư trú và DLQG về dân cư', CAST(N'2029-07-03T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (24, N'Trần Quang Thưởng', NULL, NULL, NULL, NULL, N'034083009325', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (25, N'Bùi Đức Duy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (26, N'Bùi Huy Cường', NULL, N'Nam', NULL, NULL, N'001084008513	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (27, N'Bùi Thị Liên', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (28, N'Bùi Văn Cường', NULL, NULL, NULL, NULL, N'001090008440	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (29, N'Cao Quang Sơn', NULL, NULL, NULL, NULL, N'001078000892	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (30, N'	Cao Văn Đại	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (31, N'	Cao Văn Tỏi	', NULL, NULL, NULL, NULL, N'001086025622	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (32, N'	Cao Văn Tuấn	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (33, N'	Chu Hồng Thái	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (34, N'	Công Đức Dũng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (35, N'	Đàm Văn Liệu	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (36, N'	Đặng Thế Hùng	', NULL, NULL, NULL, NULL, N'162270953	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (37, N'	Đặng Văn Bạo	', NULL, NULL, NULL, NULL, N'001077000351	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (38, N'	Đặng Văn Việt	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (39, N'	Đào Duy Duẩn	', NULL, NULL, NULL, NULL, N'034085007828	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (40, N'	Đào Huy Tâm	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (41, N'	Đào Mạnh Hà	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (42, N'	Đào Việt Hùng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (43, N'	Định Bá Nam	', NULL, NULL, NULL, NULL, N'034072000790	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (44, N'	Đinh Công Dũng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (45, N'	Đinh Đức Trung	', NULL, NULL, NULL, NULL, N'036074000636	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (46, N'	Đinh Hiện Đại	', NULL, NULL, NULL, NULL, N'112478238	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (47, N'	Đinh Mạnh Tuấn	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (48, N'	Đinh Ngọc Long	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (49, N'	Đinh Vân Hồ	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (50, N'	Đỗ Công Án	', NULL, NULL, NULL, NULL, N'033084005595	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (51, N'	Đỗ Đức Thắng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (52, N'	Đỗ Đức Tuấn	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (53, N'	Đỗ Duy Linh	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (54, N'	Đỗ Quang Hải	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (55, N'	Đỗ Quang Hoan	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (56, N'	Đỗ Quang Hưng	', NULL, NULL, NULL, NULL, N'151068310	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (57, N'	Đỗ Quang Vinh	', NULL, NULL, NULL, NULL, N'017062000042	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (58, N'Đỗ Thế Anh', NULL, NULL, NULL, NULL, N'022078000779	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (59, N'Đỗ Trọng Tài', N'Xã Khánh Ninh, Huyện Yên Khánh, Tỉnh Ninh Bình', N'Nam', CAST(N'1984-11-03T00:00:00.0000000' AS DateTime2), N'Xã Con Gang, Huyện Đak Đoa, Gia Lai', N'231132041', CAST(N'2012-08-23T00:00:00.0000000' AS DateTime2), N'Công An Tỉnh Gia Lai', CAST(N'2027-08-23T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (60, N'	Đỗ Văn Sơn	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (61, N'	Đỗ Văn Tâm	', NULL, NULL, NULL, NULL, N'173148847	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (62, N'	Đoàn Đức Huy	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (63, N'	Đoàn Kiên Cường	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (64, N'Đoàn Văn Đại', N'Xã Đồng Hải, Huyện Tiền Hải, Thái Bình', N'Nam', CAST(N'1983-01-10T00:00:00.0000000' AS DateTime2), N'Xã Đồng Hải, Huyện Tiền Hải, Thái Bình', N'034083010399	', CAST(N'2013-03-26T00:00:00.0000000' AS DateTime2), N'Công An Tỉnh Thái Bình', CAST(N'2028-03-26T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (65, N'	Doãn Văn Hải	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (66, N'	Đoàn Văn Thắng	', NULL, NULL, NULL, NULL, N'001073002097	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (67, N'	Đông Ngọc Sơn	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (68, N'	Dương Đăng Nghĩa	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (69, N'	Dương Đức  Ngọc	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (70, N'	Dương Đức Ngọc	', NULL, NULL, NULL, NULL, N'026085006746	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (71, N'	Dương Quốc Lưu	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (72, N'	Dương Sĩ Quý	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (73, N'	Đường Văn Lực	', NULL, NULL, NULL, NULL, N'186364440	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (74, N'	Đường Văn Tính	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (75, N'	Dương Văn Vụ	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (76, N'	Giàng A Minh	', NULL, NULL, NULL, NULL, N'045191796	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (77, N'	Giàng A Sình	', NULL, NULL, NULL, NULL, N'045070709	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (78, N'	Giáp Bá Đào	', NULL, NULL, NULL, NULL, N'013296082	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (79, N'	Hoàng Gia Quyến	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (80, N'	Hoàng Lương Nghiệp Bắc	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (81, N'	Hoàng Thanh Nguyện	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (82, N'	Hoàng Thế Phưởng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (83, N'	Hoàng Tiến Dũng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (84, N'	Hoàng Trung Hiếu	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (85, N'Hoàng Trung Kiên', N'Hoàng Liệt, Hoàng Mai, Hà Nội', NULL, CAST(N'1982-09-05T00:00:00.0000000' AS DateTime2), N'Số 29 Nguyễn Đức Cảnh, Tương Mai, Hoàng Mai, Hà Nội', N'001082013497	', NULL, NULL, CAST(N'2022-09-05T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (86, N'	Kiều Đình Hùng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (87, N'Kiều Xuân Trường', N'Lại Thượng, Thạch Thất, TP Hà Nội', N'Nam', CAST(N'1986-03-27T00:00:00.0000000' AS DateTime2), N'Hoàng Xá, Lại Thượng, Thạch Thất, TP Hà Nội', N'112063514', CAST(N'2014-01-20T00:00:00.0000000' AS DateTime2), N'Công An TP Hà Nội', CAST(N'2029-01-20T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (88, N'	Lã Văn Hồng	', NULL, NULL, NULL, NULL, N'070771571	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (89, N'	Lại Duy Linh	', NULL, NULL, NULL, NULL, N'152182432	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (90, N'	Lại Duy Phong	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (91, N'	Lại Hợp Đức	', NULL, NULL, NULL, NULL, N'151862235	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (92, N'Lại Huy Cẩm', NULL, NULL, CAST(N'1978-11-09T00:00:00.0000000' AS DateTime2), N'Đội 9, Hậu Dưỡng, Kim Chung, Đông Anh Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (93, N'	Lại Văn Phương	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (94, N'	Lâm Thanh Tùng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (95, N'	Lâm Văn Định	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (96, N'	Lê Anh Tuấn	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (97, N'	Lê Đức Hạnh	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (98, N'	Lê Đức Tiến	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (99, N'	Lê Hồng Diện	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (100, N'	Lê Hữu Sơn	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (101, N'	Lê Huy Đỉnh	', NULL, NULL, NULL, NULL, N'112539413	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (102, N'	Lê Huy Đức	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (103, N'	Lê Quang Hiệp	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (104, N'	Lê Thái Đô	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (105, N'Lê Thiện Khoa', NULL, N'Nam', NULL, N'Tổ dân phố 4, Xuân Phương, Nam Từ Liêm, Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (106, N'	Lê Văn Bình	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (107, N'	Lê Văn Hoàng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (108, N'Lê Văn Liệu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (109, N'	Lê Văn Long	', NULL, NULL, NULL, NULL, N'173623299	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (110, N'	Lê Văn Phấn	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (111, N'	Lê Văn Thuyết	', NULL, NULL, NULL, NULL, N'172944485	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (112, N'	Lê Văn Vượng	', NULL, NULL, NULL, NULL, N'001079020494	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (113, N'Lê Xuân Trường', N'Nam Phong, Phú Xuyên, TP Hà Nội', N'Nam', CAST(N'1984-02-11T00:00:00.0000000' AS DateTime2), N'Nam Phong, Phú Xuyên Hà Nội', N'111859735', CAST(N'2009-06-24T00:00:00.0000000' AS DateTime2), N'Công An TP Hà Nội', CAST(N'2024-06-24T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (114, N'	Lương Tiến Dũng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (115, N'	Lương Tuấn Dũng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (116, N'	Lưu Văn Thành	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (117, N'	Mai Tiến Mạnh	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (118, N'	Nghiêm Công Minh	', NULL, NULL, NULL, NULL, N'112294736	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (119, N'	Nghiêm Văn Dũng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (120, N'Nghiêm Xuân Huy', N'Yên Duyên, Hà Nội', N'Nam', CAST(N'1976-07-30T00:00:00.0000000' AS DateTime2), N'Yên Duyên, P Yên Sở, Hà Nội', N'012221645', CAST(N'2008-06-12T00:00:00.0000000' AS DateTime2), N'Công An TP Hà Nội', CAST(N'2023-06-12T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (121, N'	Ngô Khải Đoàn	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (122, N'	Ngô Mạnh Cường	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (123, N'	Ngô Tiến Thành	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (124, N'	Ngô Trọng Tú	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (125, N'	Ngô Tuấn Anh	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (126, N'	Ngô Văn Bắc	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (127, N'	Ngô Văn Hải	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (128, N'	Ngọ Văn Tuyên	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (129, N'	Nguyễn Anh Đức	', NULL, NULL, NULL, NULL, N'001084001628	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (130, N'Nguyễn Bá Tài', N'Quảng Phú Cầu, Ứng Hòa, Hà Nội', N'Nam', CAST(N'1972-04-05T00:00:00.0000000' AS DateTime2), N'Thôn Quảng Nguyên, Quảng Phú Cầu, Ứng Hòa, Hà Nội', N'001072019266', NULL, NULL, CAST(N'2032-04-05T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (131, N'	Nguyễn Chí Công	', NULL, NULL, NULL, NULL, N'011951175	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (132, N'	Nguyễn Công Phú	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (133, N'Nguyễn Công Quân', N'Minh Sơn, Huyện Đô Lương, Nghệ An', N'Nam', CAST(N'1995-03-15T00:00:00.0000000' AS DateTime2), N'91 Bình Sơn, Chúc Sơn, Chương Mỹ, Hà Nội', N'187398411', CAST(N'2018-04-14T00:00:00.0000000' AS DateTime2), N'Công An Tỉnh Nghệ An', CAST(N'2033-04-14T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (134, N'	Nguyễn Công Thắng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (135, N'	Nguyễn Công Trọng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (136, N'Nguyễn Đà Giang', N'Trung Thành, Nông Cống, Thanh Hóa', N'Nam', CAST(N'1979-02-07T00:00:00.0000000' AS DateTime2), N'33, Ngõ 107, Tổ Dân Phố 15, Kiến Hưng, Hà Đông, Hà Nội', N'001079008094', CAST(N'2015-09-30T00:00:00.0000000' AS DateTime2), N'Cục cảnh sát ĐKQL cư trú và DLQG về dân cư', CAST(N'2030-09-30T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (137, N'	Nguyễn Đắc Long	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (138, N'	Nguyễn Đình Bình	', NULL, NULL, NULL, NULL, N'111685345	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (139, N'	Nguyễn Đình Bốn	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (140, N'	Nguyễn Đình Cường	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (141, N'	Nguyễn Đình Thuyết	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (142, N'	Nguyễn Đức Đạt	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (143, N'	Nguyễn Đức Hạnh	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (144, N'	Nguyễn Duy Anh	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (145, N'	Nguyễn Hoàng Gia	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (146, N'	Nguyễn Hồng Toản	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (147, N'Nguyễn Hùng Mạnh', N'Xuân Lộc, Thanh Thủy, Phú Thọ', N'Nam', CAST(N'1989-09-09T00:00:00.0000000' AS DateTime2), N'Xuân Lộc, Thanh Thủy, Phú Thọ', N'132007331	', CAST(N'2016-05-10T00:00:00.0000000' AS DateTime2), N'Công An Tỉnh Phú Thọ', CAST(N'2031-05-10T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (148, N'	Nguyễn Hữu Khánh	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (149, N'	Nguyễn Hữu Tài	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (150, N'	Nguyễn Huy Minh	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (151, N'	Nguyễn Kim Tiến	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (152, N'	Nguyễn Long Hiếu	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (153, N'	Nguyễn Mạnh Dư	', NULL, NULL, NULL, NULL, N'001077023834	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (154, N'	Nguyễn Mạnh Hiền	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (155, N'	Nguyễn Mạnh Hiệp	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (156, N'	Nguyễn Mạnh Hùng	', NULL, NULL, NULL, NULL, N'012254812	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (157, N'	Nguyễn Mạnh Thắng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (158, N'	Nguyễn Mạnh Tiến	', NULL, NULL, NULL, NULL, N'012779871	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (159, N'	Nguyễn Minh An	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (160, N'	Nguyễn Minh Châu	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (161, N'	Nguyễn Minh Độ	', NULL, NULL, NULL, NULL, N'013583370	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (162, N'	Nguyễn Ngọc Đức	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (163, N'	Nguyễn Ngọc Dũng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (164, N'	Nguyễn Ngọc Dương	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (165, N'	Nguyễn Ngọc Khánh	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (166, N'	Nguyễn Ngọc Luân	', NULL, NULL, NULL, NULL, N'001081008543	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (167, N'	Nguyễn Ngọc Tuấn	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (168, N'	Nguyễn Như Tân	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (169, N'	Nguyễn Như Tuấn	', NULL, NULL, NULL, NULL, N'001075012629	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (170, N'Nguyễn Phương Việt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (171, N'	Nguyễn Quang Bích	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (172, N'	Nguyễn Quang Hùng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (173, N'	Nguyễn Quang Mạnh	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (174, N'	Nguyễn Quang Minh	', NULL, NULL, NULL, NULL, N'001079000315	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (175, N'	Nguyễn Quang Tuấn	', NULL, NULL, NULL, NULL, N'001061005784	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (176, N'	Nguyễn Quốc Phi	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (177, N'	Nguyễn Quốc Thái	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (178, N'	Nguyễn Quốc Tuấn	', NULL, NULL, NULL, NULL, N'111630183	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (179, N'	Nguyễn Thanh Hải	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (180, N'	Nguyễn Thành Nam	', NULL, NULL, NULL, NULL, N'012455435	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (181, N'	Nguyễn Thanh Phúc	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (182, N'	Nguyễn Thành Trung	', NULL, NULL, NULL, NULL, N'025081000434	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (183, N'	Nguyễn Thanh Tùng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (184, N'	Nguyễn Thế Hồng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (186, N'	Nguyễn Tiến Cường	', NULL, NULL, NULL, NULL, N'001085002144	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (187, N'Nguyễn Tiến Dũng', N'Phú Châu, Ba Vì, Hà Nội', N'Nam', CAST(N'1982-06-22T00:00:00.0000000' AS DateTime2), N'Xóm 10, Phú Châu, Ba Vì Hà Nội', N'001082002827	', CAST(N'2014-07-16T00:00:00.0000000' AS DateTime2), N'Cục cảnh sát ĐKQL cư trú và DLQG về dân cư', CAST(N'2029-07-16T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (188, N'	Nguyễn Tôn Thạo	', NULL, NULL, NULL, NULL, N'013234095	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (189, N'	Nguyễn Trọng Hiếu	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (190, N'	Nguyễn Trung Sang	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (191, N'	Nguyễn Trường Giang	', NULL, NULL, NULL, NULL, N'012124274	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (192, N'	Nguyễn Trường Sơn	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (193, N'	Nguyễn Tuấn Vũ	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (194, N'	Nguyễn Tùng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (195, N'	Nguyễn Tùng Lâm	', NULL, NULL, NULL, NULL, N'011788936	', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (196, N'	Nguyễn Văn  Đông	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (197, N'	Nguyễn Văn  Toàn	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (198, N'Nguyễn Văn Chiến', NULL, N'Nam', NULL, N'Đội 13 Thôn Vài, H/Thanh, Mỹ Đức, Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (199, N'Nguyễn Văn Công', N'Hợp Thanh, Mỹ Đức Hà Nội', N'Nam', CAST(N'1991-08-24T00:00:00.0000000' AS DateTime2), N'Hợp Thanh, Mỹ Đức, Hà Nội', N'001091031399	', CAST(N'2020-03-03T00:00:00.0000000' AS DateTime2), N'Cục CS QLHC về TTXH', CAST(N'2031-08-24T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (200, N'	Nguyễn Văn Đích	', NULL, NULL, NULL, NULL, N'001083009270	', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (201, N'	Nguyễn Văn Đông	', NULL, NULL, NULL, NULL, N'30086001161', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (202, N'	Nguyễn Văn Đức	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (203, N'	Nguyễn Văn Hà	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (204, N'	Nguyễn Văn Hải	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (205, N'	Nguyễn Văn Hiệp	', NULL, NULL, NULL, NULL, N'1075012446', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (206, N'	Nguyễn Văn Hoan	', NULL, NULL, NULL, NULL, N'34082007739', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (207, N'	Nguyễn Văn Nghĩa	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (208, N'	Nguyễn Văn Nhân	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (209, N'	Nguyễn Văn Nhiều	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (210, N'	Nguyễn Văn Sơn	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (211, N'	Nguyễn Văn Tâm	', NULL, NULL, NULL, NULL, N'34082000465', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (212, N'	Nguyễn Văn Thuyên	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (213, N'	Nguyễn Văn Trường	', NULL, NULL, NULL, NULL, N'1076012490', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (214, N'	Nguyễn Việt Bắc	', NULL, NULL, NULL, NULL, N'1084007480', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (215, N'	Nguyễn Việt Hùng	', NULL, NULL, NULL, NULL, N'12110181', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (216, N'	Nguyễn Việt Thắng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (217, N'	Nguyễn Xuân Điệp	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (218, N'	Nguyễn Xuân Dũng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (219, N'	Nguyễn Xuân Giới	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (220, N'	Nguyễn Xuân Hải	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (221, N'	Nguyễn Xuân Hưng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (222, N'	Nguyễn Xuân Phong	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (223, N'	Nguyễn Xuân Tùng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (224, N'	Nhữ Đình Nam	', NULL, NULL, NULL, NULL, N'30084003550', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (225, N'	Nhữ Văn Huấn	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (226, N'	Phạm Đức Thắng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (227, N'	Phạm Gia Đức	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (228, N'	Phạm Hoài Nam	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (229, N'	Phạm Hồng Hạnh	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (230, N'	Phạm Hồng Sơn	', NULL, NULL, NULL, NULL, N'11527951', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (231, N'	Phạm Long Biên	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (232, N'	Phạm Ngọc Phúc	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (233, N'	Phạm Ngọc Thịnh	', NULL, NULL, NULL, NULL, N'34074007340', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (234, N'	Phạm Quang Huy	', NULL, NULL, NULL, NULL, N'34074000039', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (235, N'	Phạm Sơn Vũ	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (236, N'	Phạm Tuấn Đạt	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (237, N'	Phạm Văn  Huynh	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (238, N'	Phạm Văn Diễn	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (239, N'	Phạm Văn Giang	', NULL, NULL, NULL, NULL, N'162694597', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (240, N'	Phạm Văn Nghĩa	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (241, N'	Phạm Văn Thúy	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (242, N'	Phạm Văn Tiến	', NULL, NULL, NULL, NULL, N'30069000541', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (243, N'	Phạm Văn Trường	', NULL, NULL, NULL, NULL, N'35083001928', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (244, N'	Phạm Việt  Dũng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (245, N'	Phạm Việt Dũng	', NULL, NULL, NULL, NULL, N'1089000238', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (246, N'	Phan Long	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (247, N'Phan Thành Nam', N'Dịnh Vọng, Hà Nội', N'Nam', CAST(N'1970-05-04T00:00:00.0000000' AS DateTime2), N'Tổ 32 Dịch Vọng, Cầu Giấy, Hà Nội', N'011801314', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (248, N'	Phan Văn Chiến	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (249, N'	Phan Văn Hạnh	', NULL, NULL, NULL, NULL, N'183541282', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (250, N'	Phùng Gia Hải	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (251, N'	Phùng Xuân Bách	', NULL, NULL, NULL, NULL, N'112498575', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (252, N'	Quách Văn Hiêm	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (253, N'	Quách Văn Viện	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (254, N'	Tạ Anh Tuấn	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (255, N'	Tạ Văn Ngọc	', NULL, NULL, NULL, NULL, N'35091001802', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (256, N'	Tăng Thiện Tuân	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (257, N'	Tô Đình Lâm	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (258, N'	Tống Đức Tuyền	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (259, N'	Tống Văn Đại	', NULL, NULL, NULL, NULL, N'36086011570', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (260, N'	Trần Đăng Hữu	', NULL, NULL, NULL, NULL, N'1087032140', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (261, N'Trần Đăng Khoa', N'Nghĩa Lạc, Nghĩa Hưng, Nam Định', N'Nam', CAST(N'1976-08-02T00:00:00.0000000' AS DateTime2), N'85C T26 Minh Khai,Hai Bà Trưng Hà Nội', N'036076008614', NULL, NULL, CAST(N'2036-08-02T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (262, N'	Trần Đình Hải	', NULL, NULL, NULL, NULL, N'1086026731', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (263, N'	Trần Doãn Hùng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (264, N'	Trần Đức Nam	', NULL, NULL, NULL, NULL, N'37084002505', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (265, N'	Trần Đức Tâm	', NULL, NULL, NULL, NULL, N'12388144', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (266, N'	Trần Đức Tuấn	', NULL, NULL, NULL, NULL, N'11899731', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (267, N'	Trần Duy Dương	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (268, N'	Trần Hồng Quân	', NULL, NULL, NULL, NULL, N'112028132', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (269, N'	Trần Hồng Quang	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (270, N'	Trần Huy Hoàng	', NULL, NULL, NULL, NULL, N'12518290', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (271, N'	Trần Minh Anh	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (272, N'	Trần Minh Tuyến	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (273, N'	Trần Ngọc Kiên	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (274, N'Trần Ngọc Thành', N'Quảng Lãng, Ân Thi, Hưng Yên', N'Nam', CAST(N'1987-11-27T00:00:00.0000000' AS DateTime2), N'Quảng Lãng, Ân Thi, Hưng Yên', N'033087005800', NULL, NULL, CAST(N'2027-11-27T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (275, N'	Trần Ngọc Tư	', NULL, NULL, NULL, NULL, N'13582038', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (276, N'	Trần Quyết Thắng	', NULL, NULL, NULL, NULL, N'183740531', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (277, N'	Trần Trung Hiếu	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (278, N'	Trần Trung Kiên	', NULL, NULL, NULL, NULL, N'164410678', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (279, N'	Trần Văn Chiến	', NULL, NULL, NULL, NULL, N'168285609', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (280, N'	Trần Văn Nhận	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (281, N'	Trần Văn Phúc	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (282, N'	Trần Văn Tài	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (283, N'	Trần Văn Tiền	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (284, N'	Trần Văn Tĩnh	', NULL, NULL, NULL, NULL, N'35069001875', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (285, N'	Trần Văn Tuyên	', NULL, NULL, NULL, NULL, N'11783099', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (286, N'	Trần Xuân Thu	', NULL, NULL, NULL, NULL, N'1071003201', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (287, N'	Trần Xuân Trường	', NULL, NULL, NULL, NULL, N'1091000617', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (288, N'	Triệu Khắc Hòa	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (289, N'	Trịnh Cửu Long	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (290, N'	Trịnh Đình Dân	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (291, N'	Trịnh Ngọc Tú	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (292, N'	Trịnh Quang Hiếu	', NULL, NULL, NULL, NULL, N'1087011219', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (293, N'Trịnh Tuấn Anh', N'Thanh Chương, Nghệ An', N'Nam', CAST(N'1983-08-08T00:00:00.0000000' AS DateTime2), N'A7 C8 Đô Thị Đại Kim-Định Công, Hoàng Mai, Hà Nội', N'012644964', CAST(N'2010-02-04T00:00:00.0000000' AS DateTime2), N'Công An TP Hà Nội', CAST(N'2025-02-04T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (294, N'Trịnh Xuân Giang', N'Hòa Nam, Ứng Hòa, Hà Nội', N'Nam', CAST(N'1981-01-22T00:00:00.0000000' AS DateTime2), N'Xóm 6, Dư Xá Thượng, Hòa Nam, Ứng Hòa, Hà Nội', N'001081025774', NULL, NULL, CAST(N'2021-01-22T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (295, N'	Trương Ánh Dương	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (296, N'	Trương Đức Toán	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (297, N'	Trương Văn Bình	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (298, N'	Trương Văn Quỳnh	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (299, N'	Vũ Anh Quân	', NULL, NULL, NULL, NULL, N'1083004617', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (300, N'	Vũ Đình Biển	', NULL, NULL, NULL, NULL, N'3607900334', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (301, N'	Vũ Hoài Nam	', NULL, NULL, NULL, NULL, N'1082009086', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (302, N'	Vũ Hồng Tuyên	', NULL, NULL, NULL, NULL, N'1085000521', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (303, N'	Vũ Quốc Hải	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (304, N'	Vũ Thanh Tùng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (305, N'	Vũ Tiến Hùng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (306, N'	Vũ Tuấn Tú	', NULL, NULL, NULL, NULL, N'13155544', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (307, N'	Vũ Văn Cường	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (308, N'	Vũ Văn Đăng	', NULL, NULL, NULL, NULL, N'34078004937', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (309, N'	Vũ Văn Lớp	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (310, N'	Vũ Văn Minh	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (311, N'	Vũ Văn Tú	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (312, N'	Vũ Việt Dũng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (313, N'	Vũ Xuân Bồi	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (314, N'	Vương Hữu Đồng	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (315, N'	Vương Văn Thuyết	', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (316, N'	Vương Xuân Nam	', NULL, NULL, NULL, NULL, N'1095020560', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (317, N'Đào Thị Lành', NULL, N'Nữ', NULL, N'TDP Viện 3, Cổ Nhuế 2, Bắc Từ Liêm, Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (318, N'Phan Văn Thành', NULL, NULL, NULL, N'Xóm 3, Tòng Lệnh, Tòng Bạt, Ba Vì, TP Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (319, N'Hoàng Thị Hương', NULL, N'Nữ', NULL, N'346Đ.T/Phú, TT. Thường Tín, Thường Tín Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (320, N'CTCP TM và DV Phú Đông', NULL, NULL, NULL, N'488 Bạch Đằng, Chương Dương, Hoàn Kiếm, Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (321, N'Đoàn Văn Giản', NULL, N'Nam', NULL, N'P1006 CT8D Khu đô thị Dương Nội, Yên Nghĩa Hà Đông, Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (322, N'Nguyễn Mạnh Hải', NULL, N'Nam', NULL, N'TDP 4, Xuân Phương', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (323, N'Phạm Văn Đức', N'Nam Sách, Hải Dương', N'Nam', CAST(N'1985-04-10T00:00:00.0000000' AS DateTime2), N'C1416-CT3 TN Hồ Linh Đàm, Hoàng Liệt, Hoàng Mai, Hà Nội', N'030085002313', NULL, NULL, CAST(N'2025-04-10T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (324, N'Chu Thị Hương Giang', NULL, N'Nữ', NULL, N'16/6 La Thành, Lê Lợi, Sơn Tây, Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (325, N'Phạm Thị Hải Yến', NULL, N'Nữ', NULL, N'Tổ 37 Yên Hòa, Cầu Giấy, Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (326, N'Đỗ Nhữ Hoàng Nam', NULL, NULL, NULL, N'Đội 1, Tê Quả, Tam Hưng, Thanh Oai, Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Peoples] ([PeopleID], [PeopleName], [PeopleFrom], [PeopleGende], [PeopleDateOfBirth], [PeopleAddress], [PeoplePIDNumber], [PeoplePIDDate], [PeoplePIDPlace], [PeoplePIDValidUntil], [JoinDate], [PeopleImagePath]) VALUES (327, N'Lý Bá Hiên', NULL, NULL, NULL, N'Xóm Lục, Thượng Thanh, Thanh Cao, Thanh Oai, Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Peoples] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CarDrivers]  WITH CHECK ADD  CONSTRAINT [FK_CarDrivers_Cars_CarID] FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([CarID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarDrivers] CHECK CONSTRAINT [FK_CarDrivers_Cars_CarID]
GO
ALTER TABLE [dbo].[CarDrivers]  WITH CHECK ADD  CONSTRAINT [FK_CarDrivers_Peoples_PeopleID] FOREIGN KEY([PeopleID])
REFERENCES [dbo].[Peoples] ([PeopleID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarDrivers] CHECK CONSTRAINT [FK_CarDrivers_Peoples_PeopleID]
GO
ALTER TABLE [dbo].[CarInspections]  WITH CHECK ADD  CONSTRAINT [FK_CarInspections_Cars_CarID] FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([CarID])
GO
ALTER TABLE [dbo].[CarInspections] CHECK CONSTRAINT [FK_CarInspections_Cars_CarID]
GO
ALTER TABLE [dbo].[CarInsurances]  WITH CHECK ADD  CONSTRAINT [FK_CarInsurances_Cars_CarID] FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([CarID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarInsurances] CHECK CONSTRAINT [FK_CarInsurances_Cars_CarID]
GO
ALTER TABLE [dbo].[CarRegistrations]  WITH CHECK ADD  CONSTRAINT [FK_CarRegistrations_Cars_CarID] FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([CarID])
GO
ALTER TABLE [dbo].[CarRegistrations] CHECK CONSTRAINT [FK_CarRegistrations_Cars_CarID]
GO
ALTER TABLE [dbo].[CarRegistrations]  WITH CHECK ADD  CONSTRAINT [FK_CarRegistrations_Peoples_PeopleID] FOREIGN KEY([PeopleID])
REFERENCES [dbo].[Peoples] ([PeopleID])
GO
ALTER TABLE [dbo].[CarRegistrations] CHECK CONSTRAINT [FK_CarRegistrations_Peoples_PeopleID]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_CarModels_CarModelID] FOREIGN KEY([CarModelID])
REFERENCES [dbo].[CarModels] ([CarModelID])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_CarModels_CarModelID]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_LocationCompanies_LocationCompanyID] FOREIGN KEY([LocationCompanyID])
REFERENCES [dbo].[LocationCompanies] ([LocationCompanyID])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_LocationCompanies_LocationCompanyID]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Peoples_PeopleID] FOREIGN KEY([PeopleID])
REFERENCES [dbo].[Peoples] ([PeopleID])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Peoples_PeopleID]
GO
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK_Contacts_Peoples_PeopleID] FOREIGN KEY([PeopleID])
REFERENCES [dbo].[Peoples] ([PeopleID])
GO
ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK_Contacts_Peoples_PeopleID]
GO
ALTER TABLE [dbo].[DriverLicenceImages]  WITH CHECK ADD  CONSTRAINT [FK_DriverLicenceImages_Peoples_PeopleID] FOREIGN KEY([PeopleID])
REFERENCES [dbo].[Peoples] ([PeopleID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DriverLicenceImages] CHECK CONSTRAINT [FK_DriverLicenceImages_Peoples_PeopleID]
GO
ALTER TABLE [dbo].[DriverLicences]  WITH CHECK ADD  CONSTRAINT [FK_DriverLicences_Peoples_PeopleID] FOREIGN KEY([PeopleID])
REFERENCES [dbo].[Peoples] ([PeopleID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DriverLicences] CHECK CONSTRAINT [FK_DriverLicences_Peoples_PeopleID]
GO
ALTER TABLE [dbo].[PIDImages]  WITH CHECK ADD  CONSTRAINT [FK_PIDImages_Peoples_PeopleID] FOREIGN KEY([PeopleID])
REFERENCES [dbo].[Peoples] ([PeopleID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PIDImages] CHECK CONSTRAINT [FK_PIDImages_Peoples_PeopleID]
GO
