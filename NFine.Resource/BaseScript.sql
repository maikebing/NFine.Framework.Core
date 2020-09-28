USE [master]
GO
CREATE DATABASE [NFine_Code]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NFine_Code', FILENAME = N'D:\data\NFine_Code.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NFine_Code_log', FILENAME = N'D:\data\NFine_Code_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NFine_Code].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NFine_Code] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NFine_Code] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NFine_Code] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NFine_Code] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NFine_Code] SET ARITHABORT OFF 
GO
ALTER DATABASE [NFine_Code] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NFine_Code] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NFine_Code] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NFine_Code] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NFine_Code] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NFine_Code] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NFine_Code] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NFine_Code] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NFine_Code] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NFine_Code] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NFine_Code] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NFine_Code] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NFine_Code] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NFine_Code] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NFine_Code] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NFine_Code] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NFine_Code] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NFine_Code] SET RECOVERY FULL 
GO
ALTER DATABASE [NFine_Code] SET  MULTI_USER 
GO
ALTER DATABASE [NFine_Code] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NFine_Code] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NFine_Code] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NFine_Code] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NFine_Code] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'NFine_Code', N'ON'
GO
USE [NFine_Code]
GO
/****** Object:  Table [dbo].[Sys_Area]    Script Date: 2019/5/16 9:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Area](
	[F_Id] [varchar](50) NOT NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_Layers] [int] NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_SimpleSpelling] [varchar](50) NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](50) NULL,
	[F_CreatorUserName] [varchar](50) NOT NULL DEFAULT ('��������Ա'),
	[F_DeleteUserName] [varchar](50) NULL,
	[F_LastModifyUserName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_DbBackup]    Script Date: 2019/5/16 9:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_DbBackup](
	[F_Id] [varchar](50) NOT NULL,
	[F_BackupType] [varchar](50) NULL,
	[F_DbName] [varchar](50) NULL,
	[F_FileName] [varchar](50) NULL,
	[F_FileSize] [varchar](50) NULL,
	[F_FilePath] [varchar](500) NULL,
	[F_BackupTime] [datetime] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
	[F_CreatorUserName] [varchar](50) NOT NULL,
	[F_DeleteUserName] [varchar](50) NULL,
	[F_LastModifyUserName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_FilterIP]    Script Date: 2019/5/16 9:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_FilterIP](
	[F_Id] [varchar](50) NOT NULL,
	[F_Type] [bit] NULL,
	[F_StartIP] [varchar](50) NULL,
	[F_EndIP] [varchar](50) NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
	[F_CreatorUserName] [varchar](50) NOT NULL,
	[F_DeleteUserName] [varchar](50) NULL,
	[F_LastModifyUserName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Items]    Script Date: 2019/5/16 9:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Items](
	[F_Id] [varchar](50) NOT NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_IsTree] [bit] NULL,
	[F_Layers] [int] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](50) NULL,
	[F_CreatorUserName] [varchar](50) NOT NULL DEFAULT ('��������Ա'),
	[F_DeleteUserName] [varchar](50) NULL,
	[F_LastModifyUserName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_ItemsDetail]    Script Date: 2019/5/16 9:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_ItemsDetail](
	[F_Id] [varchar](50) NOT NULL,
	[F_ItemId] [varchar](50) NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_ItemCode] [varchar](50) NULL,
	[F_ItemName] [varchar](50) NULL,
	[F_SimpleSpelling] [varchar](500) NULL,
	[F_IsDefault] [bit] NULL,
	[F_Layers] [int] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](50) NULL,
	[F_CreatorUserName] [varchar](50) NOT NULL DEFAULT ('��������Ա'),
	[F_DeleteUserName] [varchar](50) NULL,
	[F_LastModifyUserName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Log]    Script Date: 2019/5/16 9:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Log](
	[F_Id] [varchar](50) NOT NULL,
	[F_Date] [datetime] NULL,
	[F_Account] [varchar](50) NULL,
	[F_NickName] [varchar](50) NULL,
	[F_Type] [varchar](50) NULL,
	[F_IPAddress] [varchar](50) NULL,
	[F_IPAddressName] [varchar](50) NULL,
	[F_ModuleId] [varchar](50) NULL,
	[F_ModuleName] [varchar](50) NULL,
	[F_Result] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_CreatorUserName] [varchar](50) NOT NULL DEFAULT ('��������Ա')
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Module]    Script Date: 2019/5/16 9:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Module](
	[F_Id] [varchar](50) NOT NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_Layers] [int] NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_Icon] [varchar](50) NULL,
	[F_UrlAddress] [varchar](500) NULL,
	[F_Target] [varchar](50) NULL,
	[F_IsMenu] [bit] NULL,
	[F_IsExpand] [bit] NULL,
	[F_IsPublic] [bit] NULL,
	[F_AllowEdit] [bit] NULL,
	[F_AllowDelete] [bit] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](50) NULL,
	[F_CreatorUserName] [varchar](50) NOT NULL DEFAULT ('��������Ա'),
	[F_DeleteUserName] [varchar](50) NULL,
	[F_LastModifyUserName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_ModuleButton]    Script Date: 2019/5/16 9:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_ModuleButton](
	[F_Id] [varchar](50) NOT NULL,
	[F_ModuleId] [varchar](50) NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_Layers] [int] NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_Icon] [varchar](50) NULL,
	[F_Location] [int] NULL,
	[F_JsEvent] [varchar](50) NULL,
	[F_UrlAddress] [varchar](500) NULL,
	[F_Split] [bit] NULL,
	[F_IsPublic] [bit] NULL,
	[F_AllowEdit] [bit] NULL,
	[F_AllowDelete] [bit] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](50) NULL,
	[F_CreatorUserName] [varchar](50) NOT NULL DEFAULT ('��������Ա'),
	[F_DeleteUserName] [varchar](50) NULL,
	[F_LastModifyUserName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_ModuleForm]    Script Date: 2019/5/16 9:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_ModuleForm](
	[F_Id] [varchar](50) NOT NULL,
	[F_ModuleId] [varchar](50) NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_FormJson] [varchar](max) NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
	[F_CreatorUserName] [varchar](50) NOT NULL,
	[F_DeleteUserName] [varchar](50) NULL,
	[F_LastModifyUserName] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_ModuleFormInstance]    Script Date: 2019/5/16 9:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_ModuleFormInstance](
	[F_Id] [varchar](50) NOT NULL,
	[F_FormId] [varchar](50) NOT NULL,
	[F_ObjectId] [varchar](50) NULL,
	[F_InstanceJson] [varchar](max) NULL,
	[F_SortCode] [int] NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_CreatorUserName] [varchar](50) NOT NULL,
	[F_DeleteUserName] [varchar](50) NULL,
	[F_LastModifyUserName] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_NewsInfo]    Script Date: 2019/5/16 9:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_NewsInfo](
	[F_Id] [varchar](50) NOT NULL,
	[F_CreatorUserId] [varchar](50) NOT NULL,
	[F_CreatorTime] [datetime] NOT NULL,
	[F_CreatorUserName] [varchar](50) NOT NULL,
	[F_DeleteMark] [bit] NOT NULL,
	[F_DeleteUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserName] [varchar](50) NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserName] [varchar](50) NULL,
	[F_Title] [varchar](200) NOT NULL,
	[F_Spokesman] [varchar](50) NOT NULL,
	[F_Content] [text] NULL,
	[F_Status] [bit] NULL,
	[F_Type] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Organize]    Script Date: 2019/5/16 9:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Organize](
	[F_Id] [varchar](50) NOT NULL,
	[F_ParentId] [varchar](50) NULL,
	[F_Layers] [int] NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_ShortName] [varchar](50) NULL,
	[F_CategoryId] [varchar](50) NULL,
	[F_ManagerId] [varchar](50) NULL,
	[F_TelePhone] [varchar](20) NULL,
	[F_MobilePhone] [varchar](20) NULL,
	[F_WeChat] [varchar](50) NULL,
	[F_Fax] [varchar](20) NULL,
	[F_Email] [varchar](50) NULL,
	[F_AreaId] [varchar](50) NULL,
	[F_Address] [varchar](500) NULL,
	[F_AllowEdit] [bit] NULL,
	[F_AllowDelete] [bit] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
	[F_CreatorUserName] [varchar](50) NOT NULL DEFAULT ('��������Ա'),
	[F_DeleteUserName] [varchar](50) NULL,
	[F_LastModifyUserName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_Role]    Script Date: 2019/5/16 9:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Role](
	[F_Id] [varchar](50) NOT NULL,
	[F_OrganizeId] [varchar](50) NULL,
	[F_Category] [int] NULL,
	[F_EnCode] [varchar](50) NULL,
	[F_FullName] [varchar](50) NULL,
	[F_Type] [varchar](50) NULL,
	[F_AllowEdit] [bit] NULL,
	[F_AllowDelete] [bit] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
	[F_CreatorUserName] [varchar](50) NOT NULL DEFAULT ('��������Ա'),
	[F_DeleteUserName] [varchar](50) NULL,
	[F_LastModifyUserName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_RoleAuthorize]    Script Date: 2019/5/16 9:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_RoleAuthorize](
	[F_Id] [varchar](50) NOT NULL,
	[F_ItemType] [int] NULL,
	[F_ItemId] [varchar](50) NULL,
	[F_ObjectType] [int] NULL,
	[F_ObjectId] [varchar](50) NULL,
	[F_SortCode] [int] NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_CreatorUserName] [varchar](50) NOT NULL DEFAULT ('��������Ա'),
	[F_DeleteUserName] [varchar](50) NULL,
	[F_LastModifyUserName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_User]    Script Date: 2019/5/16 9:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_User](
	[F_Id] [varchar](50) NOT NULL,
	[F_Account] [varchar](50) NULL,
	[F_RealName] [varchar](50) NULL,
	[F_NickName] [varchar](50) NULL,
	[F_HeadIcon] [varchar](50) NULL,
	[F_Gender] [bit] NULL,
	[F_Birthday] [datetime] NULL,
	[F_MobilePhone] [varchar](20) NULL,
	[F_Email] [varchar](50) NULL,
	[F_WeChat] [varchar](50) NULL,
	[F_ManagerId] [varchar](50) NULL,
	[F_SecurityLevel] [int] NULL,
	[F_Signature] [varchar](500) NULL,
	[F_OrganizeId] [varchar](50) NULL,
	[F_DepartmentId] [varchar](500) NULL,
	[F_RoleId] [varchar](500) NULL,
	[F_DutyId] [varchar](500) NULL,
	[F_IsAdministrator] [bit] NULL,
	[F_SortCode] [int] NULL,
	[F_DeleteMark] [bit] NULL,
	[F_EnabledMark] [bit] NULL,
	[F_Description] [varchar](500) NULL,
	[F_CreatorTime] [datetime] NULL,
	[F_CreatorUserId] [varchar](50) NULL,
	[F_LastModifyTime] [datetime] NULL,
	[F_LastModifyUserId] [varchar](50) NULL,
	[F_DeleteTime] [datetime] NULL,
	[F_DeleteUserId] [varchar](500) NULL,
	[F_CreatorUserName] [varchar](50) NOT NULL DEFAULT ('��������Ա'),
	[F_DeleteUserName] [varchar](50) NULL,
	[F_LastModifyUserName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_UserLogOn]    Script Date: 2019/5/16 9:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_UserLogOn](
	[F_Id] [varchar](50) NOT NULL,
	[F_UserId] [varchar](50) NULL,
	[F_UserPassword] [varchar](50) NULL,
	[F_UserSecretkey] [varchar](50) NULL,
	[F_AllowStartTime] [datetime] NULL,
	[F_AllowEndTime] [datetime] NULL,
	[F_LockStartDate] [datetime] NULL,
	[F_LockEndDate] [datetime] NULL,
	[F_FirstVisitTime] [datetime] NULL,
	[F_PreviousVisitTime] [datetime] NULL,
	[F_LastVisitTime] [datetime] NULL,
	[F_ChangePasswordDate] [datetime] NULL,
	[F_MultiUserLogin] [bit] NULL,
	[F_LogOnCount] [int] NULL,
	[F_UserOnLine] [bit] NULL,
	[F_Question] [varchar](50) NULL,
	[F_AnswerQuestion] [varchar](500) NULL,
	[F_CheckIPAddress] [bit] NULL,
	[F_Language] [varchar](50) NULL,
	[F_Theme] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'120100', N'120000', 2, N'120100', N'�����', N'tjs', 120100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'130100', N'130000', 2, N'130100', N'ʯ��ׯ��', N'sjzs', 130100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'130200', N'130000', 2, N'130200', N'��ɽ��', N'tss', 130200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'130300', N'130000', 2, N'130300', N'�ػʵ���', N'qhds', 130300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'130400', N'130000', 2, N'130400', N'������', N'hds', 130400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'130500', N'130000', 2, N'130500', N'��̨��', N'xts', 130500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'130600', N'130000', 2, N'130600', N'������', N'bds', 130600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'130700', N'130000', 2, N'130700', N'�żҿ���', N'zjks', 130700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'130800', N'130000', 2, N'130800', N'�е���', N'cds', 130800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'130900', N'130000', 2, N'130900', N'������', N'czs', 130900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'131000', N'130000', 2, N'131000', N'�ȷ���', N'lfs', 131000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'131100', N'130000', 2, N'131100', N'��ˮ��', N'hss', 131100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'140100', N'140000', 2, N'140100', N'̫ԭ��', N'tys', 140100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'140200', N'140000', 2, N'140200', N'��ͬ��', N'dts', 140200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'140300', N'140000', 2, N'140300', N'��Ȫ��', N'yqs', 140300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'140400', N'140000', 2, N'140400', N'������', N'czs', 140400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'140500', N'140000', 2, N'140500', N'������', N'jcs', 140500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'140600', N'140000', 2, N'140600', N'˷����', N'szs', 140600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'140700', N'140000', 2, N'140700', N'������', N'jzs', 140700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'140800', N'140000', 2, N'140800', N'�˳���', N'ycs', 140800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'140900', N'140000', 2, N'140900', N'������', N'xzs', 140900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'141000', N'140000', 2, N'141000', N'�ٷ���', N'lfs', 141000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'141100', N'140000', 2, N'141100', N'������', N'lls', 141100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'150100', N'150000', 2, N'150100', N'���ͺ�����', N'hhhts', 150100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'150200', N'150000', 2, N'150200', N'��ͷ��', N'bts', 150200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'150300', N'150000', 2, N'150300', N'�ں���', N'whs', 150300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'150400', N'150000', 2, N'150400', N'�����', N'cfs', 150400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'150500', N'150000', 2, N'150500', N'ͨ����', N'tls', 150500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'150600', N'150000', 2, N'150600', N'������˹��', N'eedss', 150600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'150700', N'150000', 2, N'150700', N'���ױ�����', N'hlbes', 150700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'150800', N'150000', 2, N'150800', N'�����׶���', N'bynes', 150800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'340400', N'340000', 2, N'340400', N'������', N'hns', 340400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'340500', N'340000', 2, N'340500', N'��ɽ��', N'mass', 340500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'340600', N'340000', 2, N'340600', N'������', N'hbs', 340600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'340700', N'340000', 2, N'340700', N'ͭ����', N'tls', 340700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'340800', N'340000', 2, N'340800', N'������', N'aqs', 340800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'341000', N'340000', 2, N'341000', N'��ɽ��', N'hss', 341000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'341100', N'340000', 2, N'341100', N'������', N'czs', 341100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'341200', N'340000', 2, N'341200', N'������', N'fys', 341200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'341300', N'340000', 2, N'341300', N'������', N'szs', 341300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'341500', N'340000', 2, N'341500', N'������', N'las', 341500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'341600', N'340000', 2, N'341600', N'������', N'bzs', 341600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'341700', N'340000', 2, N'341700', N'������', N'czs', 341700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'341800', N'340000', 2, N'341800', N'������', N'xcs', 341800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'350100', N'350000', 2, N'350100', N'������', N'fzs', 350100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'350200', N'350000', 2, N'350200', N'������', N'xms', 350200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'350300', N'350000', 2, N'350300', N'������', N'pts', 350300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'350400', N'350000', 2, N'350400', N'������', N'sms', 350400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'350500', N'350000', 2, N'350500', N'Ȫ����', N'qzs', 350500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'350600', N'350000', 2, N'350600', N'������', N'zzs', 350600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'350700', N'350000', 2, N'350700', N'��ƽ��', N'nps', 350700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'350800', N'350000', 2, N'350800', N'������', N'lys', 350800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'350900', N'350000', 2, N'350900', N'������', N'nds', 350900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'360100', N'360000', 2, N'360100', N'�ϲ���', N'ncs', 360100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'360200', N'360000', 2, N'360200', N'��������', N'jdzs', 360200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'360300', N'360000', 2, N'360300', N'Ƽ����', N'pxs', 360300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'360400', N'360000', 2, N'360400', N'�Ž���', N'jjs', 360400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'360500', N'360000', 2, N'360500', N'������', N'xys', 360500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'360600', N'360000', 2, N'360600', N'ӥ̶��', N'yts', 360600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'360700', N'360000', 2, N'360700', N'������', N'gzs', 360700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'360800', N'360000', 2, N'360800', N'������', N'jas', 360800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'360900', N'360000', 2, N'360900', N'�˴���', N'ycs', 360900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'361000', N'360000', 2, N'361000', N'������', N'fzs', 361000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'361100', N'360000', 2, N'361100', N'������', N'srs', 361100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'370100', N'370000', 2, N'370100', N'������', N'jns', 370100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'370200', N'370000', 2, N'370200', N'�ൺ��', N'qds', 370200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'370300', N'370000', 2, N'370300', N'�Ͳ���', N'zbs', 370300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'370400', N'370000', 2, N'370400', N'��ׯ��', N'zzs', 370400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'370500', N'370000', 2, N'370500', N'��Ӫ��', N'dys', 370500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'370600', N'370000', 2, N'370600', N'��̨��', N'yts', 370600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'370700', N'370000', 2, N'370700', N'Ϋ����', N'wfs', 370700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'370800', N'370000', 2, N'370800', N'������', N'jns', 370800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'370900', N'370000', 2, N'370900', N'̩����', N'tas', 370900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'371000', N'370000', 2, N'371000', N'������', N'whs', 371000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'371100', N'370000', 2, N'371100', N'������', N'rzs', 371100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'371200', N'370000', 2, N'371200', N'������', N'lws', 371200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'371300', N'370000', 2, N'371300', N'������', N'lys', 371300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'371400', N'370000', 2, N'371400', N'������', N'dzs', 371400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'371500', N'370000', 2, N'371500', N'�ĳ���', N'lcs', 371500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'371600', N'370000', 2, N'371600', N'������', N'bzs', 371600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'371700', N'370000', 2, N'371700', N'������', N'hzs', 371700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'410100', N'410000', 2, N'410100', N'֣����', N'zzs', 410100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'410200', N'410000', 2, N'410200', N'������', N'kfs', 410200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'410300', N'410000', 2, N'410300', N'������', N'lys', 410300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'410400', N'410000', 2, N'410400', N'ƽ��ɽ��', N'pdss', 410400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'410500', N'410000', 2, N'410500', N'������', N'ays', 410500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'410600', N'410000', 2, N'410600', N'�ױ���', N'hbs', 410600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'410700', N'410000', 2, N'410700', N'������', N'xxs', 410700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'410800', N'410000', 2, N'410800', N'������', N'jzs', 410800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'410881', N'410000', 2, N'410881', N'��Դ��', N'jys', 410881, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'410900', N'410000', 2, N'410900', N'�����', N'pys', 410900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'411000', N'410000', 2, N'411000', N'�����', N'xcs', 411000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'411100', N'410000', 2, N'411100', N'�����', N'lhs', 411100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'411200', N'410000', 2, N'411200', N'����Ͽ��', N'smxs', 411200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'411300', N'410000', 2, N'411300', N'������', N'nys', 411300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'411400', N'410000', 2, N'411400', N'������', N'sqs', 411400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'411500', N'410000', 2, N'411500', N'������', N'xys', 411500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'411600', N'410000', 2, N'411600', N'�ܿ���', N'zks', 411600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'152200', N'150000', 2, N'152200', N'�˰���', N'xam', 152200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'152500', N'150000', 2, N'152500', N'���ֹ�����', N'xlglm', 152500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'152900', N'150000', 2, N'152900', N'��������', N'alsm', 152900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'210100', N'210000', 2, N'210100', N'������', N'sys', 210100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'210200', N'210000', 2, N'210200', N'������', N'dls', 210200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'210300', N'210000', 2, N'210300', N'��ɽ��', N'ass', 210300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'210400', N'210000', 2, N'210400', N'��˳��', N'fss', 210400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'210500', N'210000', 2, N'210500', N'��Ϫ��', N'bxs', 210500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'210600', N'210000', 2, N'210600', N'������', N'dds', 210600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'210700', N'210000', 2, N'210700', N'������', N'jzs', 210700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'210800', N'210000', 2, N'210800', N'Ӫ����', N'yks', 210800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'210900', N'210000', 2, N'210900', N'������', N'fxs', 210900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'211000', N'210000', 2, N'211000', N'������', N'lys', 211000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'211100', N'210000', 2, N'211100', N'�̽���', N'pjs', 211100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'211200', N'210000', 2, N'211200', N'������', N'tls', 211200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'211300', N'210000', 2, N'211300', N'������', N'zys', 211300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'211400', N'210000', 2, N'211400', N'��«����', N'hlds', 211400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'220100', N'220000', 2, N'220100', N'������', N'zcs', 220100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'220200', N'220000', 2, N'220200', N'������', N'jls', 220200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'220300', N'220000', 2, N'220300', N'��ƽ��', N'sps', 220300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'220400', N'220000', 2, N'220400', N'��Դ��', N'lys', 220400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'220500', N'220000', 2, N'220500', N'ͨ����', N'ths', 220500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'220600', N'220000', 2, N'220600', N'��ɽ��', N'bss', 220600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'220700', N'220000', 2, N'220700', N'��ԭ��', N'sys', 220700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'220800', N'220000', 2, N'220800', N'�׳���', N'bcs', 220800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'222400', N'220000', 2, N'222400', N'�ӱ߳�����������', N'ybzxzzzz', 222400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'230100', N'230000', 2, N'230100', N'��������', N'hebs', 230100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'230200', N'230000', 2, N'230200', N'���������', N'qqhes', 230200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'230300', N'230000', 2, N'230300', N'������', N'jxs', 230300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'230400', N'230000', 2, N'230400', N'�׸���', N'hgs', 230400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'230500', N'230000', 2, N'230500', N'˫Ѽɽ��', N'syss', 230500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'230600', N'230000', 2, N'230600', N'������', N'dqs', 230600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'230700', N'230000', 2, N'230700', N'������', N'ycs', 230700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'230800', N'230000', 2, N'230800', N'��ľ˹��', N'jmss', 230800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'230900', N'230000', 2, N'230900', N'��̨����', N'qths', 230900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'231000', N'230000', 2, N'231000', N'ĵ������', N'mdjs', 231000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'231100', N'230000', 2, N'231100', N'�ں���', N'hhs', 231100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'231200', N'230000', 2, N'231200', N'�绯��', N'shs', 231200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'232700', N'230000', 2, N'232700', N'���˰������', N'dxaldq', 232700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'310100', N'310000', 2, N'310100', N'�Ϻ���', N'shs', 310100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'320100', N'320000', 2, N'320100', N'�Ͼ���', N'njs', 320100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'320200', N'320000', 2, N'320200', N'������', N'wxs', 320200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'320300', N'320000', 2, N'320300', N'������', N'xzs', 320300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'320400', N'320000', 2, N'320400', N'������', N'czs', 320400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'320500', N'320000', 2, N'320500', N'������', N'szs', 320500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'320600', N'320000', 2, N'320600', N'��ͨ��', N'nts', 320600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'320700', N'320000', 2, N'320700', N'���Ƹ���', N'lygs', 320700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'320800', N'320000', 2, N'320800', N'������', N'has', 320800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'320900', N'320000', 2, N'320900', N'�γ���', N'ycs', 320900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'321000', N'320000', 2, N'321000', N'������', N'yzs', 321000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'321100', N'320000', 2, N'321100', N'����', N'zjs', 321100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'321200', N'320000', 2, N'321200', N'̩����', N'tzs', 321200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'321300', N'320000', 2, N'321300', N'��Ǩ��', N'sqs', 321300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'330100', N'330000', 2, N'330100', N'������', N'hzs', 330100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'330200', N'330000', 2, N'330200', N'������', N'nbs', 330200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'330300', N'330000', 2, N'330300', N'������', N'wzs', 330300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'330400', N'330000', 2, N'330400', N'������', N'jxs', 330400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'330500', N'330000', 2, N'330500', N'������', N'hzs', 330500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'330600', N'330000', 2, N'330600', N'������', N'sxs', 330600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'330700', N'330000', 2, N'330700', N'����', N'jhs', 330700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'330800', N'330000', 2, N'330800', N'������', N'qzs', 330800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'330900', N'330000', 2, N'330900', N'��ɽ��', N'zss', 330900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'331000', N'330000', 2, N'331000', N'̨����', N'tzs', 331000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'331100', N'330000', 2, N'331100', N'��ˮ��', N'lss', 331100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'340100', N'340000', 2, N'340100', N'�Ϸ���', N'hfs', 340100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'340200', N'340000', 2, N'340200', N'�ߺ���', N'whs', 340200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'420100', N'420000', 2, N'420100', N'�人��', N'whs', 420100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'420200', N'420000', 2, N'420200', N'��ʯ��', N'hss', 420200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'420300', N'420000', 2, N'420300', N'ʮ����', N'sys', 420300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'420500', N'420000', 2, N'420500', N'�˲���', N'ycs', 420500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'420600', N'420000', 2, N'420600', N'������', N'xys', 420600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'420700', N'420000', 2, N'420700', N'������', N'ezs', 420700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'420800', N'420000', 2, N'420800', N'������', N'jms', 420800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'420900', N'420000', 2, N'420900', N'Т����', N'xgs', 420900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'421000', N'420000', 2, N'421000', N'������', N'jzs', 421000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'421100', N'420000', 2, N'421100', N'�Ƹ���', N'hgs', 421100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'421200', N'420000', 2, N'421200', N'������', N'xns', 421200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'421300', N'420000', 2, N'421300', N'������', N'szs', 421300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'422800', N'420000', 2, N'422800', N'��ʩ����������������', N'estjzmzzzz', 422800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'430100', N'430000', 2, N'430100', N'��ɳ��', N'zss', 430100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'430200', N'430000', 2, N'430200', N'������', N'zzs', 430200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'430300', N'430000', 2, N'430300', N'��̶��', N'xts', 430300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'430400', N'430000', 2, N'430400', N'������', N'hys', 430400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'430500', N'430000', 2, N'430500', N'������', N'sys', 430500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'430600', N'430000', 2, N'430600', N'������', N'yys', 430600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'430700', N'430000', 2, N'430700', N'������', N'cds', 430700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'430800', N'430000', 2, N'430800', N'�żҽ���', N'zjjs', 430800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'430900', N'430000', 2, N'430900', N'������', N'yys', 430900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'431000', N'430000', 2, N'431000', N'������', N'czs', 431000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'431100', N'430000', 2, N'431100', N'������', N'yzs', 431100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'431200', N'430000', 2, N'431200', N'������', N'hhs', 431200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'431300', N'430000', 2, N'431300', N'¦����', N'lds', 431300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'433100', N'430000', 2, N'433100', N'��������������������', N'xxtjzmzzzz', 433100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'440100', N'440000', 2, N'440100', N'������', N'gzs', 440100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'440200', N'440000', 2, N'440200', N'�ع���', N'sgs', 440200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'440300', N'440000', 2, N'440300', N'������', N'szs', 440300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'440400', N'440000', 2, N'440400', N'�麣��', N'zhs', 440400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'440500', N'440000', 2, N'440500', N'��ͷ��', N'sts', 440500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'440600', N'440000', 2, N'440600', N'��ɽ��', N'fss', 440600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'440700', N'440000', 2, N'440700', N'������', N'jms', 440700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'440800', N'440000', 2, N'440800', N'տ����', N'zjs', 440800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'440900', N'440000', 2, N'440900', N'ï����', N'mms', 440900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'441200', N'440000', 2, N'441200', N'������', N'zqs', 441200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'441300', N'440000', 2, N'441300', N'������', N'hzs', 441300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'441400', N'440000', 2, N'441400', N'÷����', N'mzs', 441400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'441500', N'440000', 2, N'441500', N'��β��', N'sws', 441500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'441600', N'440000', 2, N'441600', N'��Դ��', N'hys', 441600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'441700', N'440000', 2, N'441700', N'������', N'yjs', 441700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'441800', N'440000', 2, N'441800', N'��Զ��', N'qys', 441800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'445100', N'440000', 2, N'445100', N'������', N'czs', 445100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'445200', N'440000', 2, N'445200', N'������', N'jys', 445200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'445300', N'440000', 2, N'445300', N'�Ƹ���', N'yfs', 445300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'450100', N'450000', 2, N'450100', N'������', N'nns', 450100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'450200', N'450000', 2, N'450200', N'������', N'lzs', 450200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'450300', N'450000', 2, N'450300', N'������', N'gls', 450300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'450400', N'450000', 2, N'450400', N'������', N'wzs', 450400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'450500', N'450000', 2, N'450500', N'������', N'bhs', 450500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'450600', N'450000', 2, N'450600', N'���Ǹ���', N'fcgs', 450600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'450700', N'450000', 2, N'450700', N'������', N'qzs', 450700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'450800', N'450000', 2, N'450800', N'�����', N'ggs', 450800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'450900', N'450000', 2, N'450900', N'������', N'yls', 450900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'451000', N'450000', 2, N'451000', N'��ɫ��', N'bss', 451000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'451100', N'450000', 2, N'451100', N'������', N'hzs', 451100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'451200', N'450000', 2, N'451200', N'�ӳ���', N'hcs', 451200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'451300', N'450000', 2, N'451300', N'������', N'lbs', 451300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'451400', N'450000', 2, N'451400', N'������', N'czs', 451400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'460100', N'460000', 2, N'460100', N'������', N'hks', 460100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'500100', N'500000', 2, N'500100', N'������', N'zqs', 500100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'510100', N'510000', 2, N'510100', N'�ɶ���', N'cds', 510100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'510300', N'510000', 2, N'510300', N'�Թ���', N'zgs', 510300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'510400', N'510000', 2, N'510400', N'��֦����', N'pzhs', 510400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'510500', N'510000', 2, N'510500', N'������', N'lzs', 510500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'510700', N'510000', 2, N'510700', N'������', N'mys', 510700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'510800', N'510000', 2, N'510800', N'��Ԫ��', N'gys', 510800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'510900', N'510000', 2, N'510900', N'������', N'sns', 510900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'511000', N'510000', 2, N'511000', N'�ڽ���', N'njs', 511000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'511100', N'510000', 2, N'511100', N'��ɽ��', N'yss', 511100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'511300', N'510000', 2, N'511300', N'�ϳ���', N'ncs', 511300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'511400', N'510000', 2, N'511400', N'üɽ��', N'mss', 511400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'511500', N'510000', 2, N'511500', N'�˱���', N'ybs', 511500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'511600', N'510000', 2, N'511600', N'�㰲��', N'gas', 511600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'511700', N'510000', 2, N'511700', N'������', N'dzs', 511700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'511800', N'510000', 2, N'511800', N'�Ű���', N'yas', 511800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'511900', N'510000', 2, N'511900', N'������', N'bzs', 511900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'512000', N'510000', 2, N'512000', N'������', N'zys', 512000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'513200', N'510000', 2, N'513200', N'���Ӳ���Ǽ��������', N'abzzqzzzz', 513200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'513300', N'510000', 2, N'513300', N'���β���������', N'gzzzzzz', 513300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'513400', N'510000', 2, N'513400', N'��ɽ����������', N'lsyzzzz', 513400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'520100', N'520000', 2, N'520100', N'������', N'gys', 520100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'520200', N'520000', 2, N'520200', N'����ˮ��', N'lpss', 520200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'520300', N'520000', 2, N'520300', N'������', N'zys', 520300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'520400', N'520000', 2, N'520400', N'��˳��', N'ass', 520400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'522200', N'520000', 2, N'522200', N'ͭ����', N'trs', 522200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'522300', N'520000', 2, N'522300', N'ǭ���ϲ���������������', N'qxnbyzmzzzz', 522300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'522400', N'520000', 2, N'522400', N'�Ͻ���', N'bjs', 522400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'522600', N'520000', 2, N'522600', N'ǭ�������嶱��������', N'qdnmztzzzz', 522600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'522700', N'520000', 2, N'522700', N'ǭ�ϲ���������������', N'qnbyzmzzzz', 522700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'530100', N'530000', 2, N'530100', N'������', N'kms', 530100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'530300', N'530000', 2, N'530300', N'������', N'qjs', 530300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'530400', N'530000', 2, N'530400', N'��Ϫ��', N'yxs', 530400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'530500', N'530000', 2, N'530500', N'��ɽ��', N'bss', 530500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'530600', N'530000', 2, N'530600', N'��ͨ��', N'zts', 530600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'530700', N'530000', 2, N'530700', N'������', N'ljs', 530700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'530800', N'530000', 2, N'530800', N'�ն���', N'pes', 530800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'530900', N'530000', 2, N'530900', N'�ٲ���', N'lcs', 530900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'532300', N'530000', 2, N'532300', N'��������������', N'cxyzzzz', 532300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'532500', N'530000', 2, N'532500', N'��ӹ���������������', N'hhhnzyzzzz', 532500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'532600', N'530000', 2, N'532600', N'��ɽ׳������������', N'wszzmzzzz', 532600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'532800', N'530000', 2, N'532800', N'��˫���ɴ���������', N'xsbndzzzz', 532800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'532900', N'530000', 2, N'532900', N'�������������', N'dlbzzzz', 532900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'533100', N'530000', 2, N'533100', N'�º���徰����������', N'dhdzjpzzzz', 533100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'533300', N'530000', 2, N'533300', N'ŭ��������������', N'njlszzzz', 533300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'533400', N'530000', 2, N'533400', N'�������������', N'dqzzzzz', 533400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'540100', N'540000', 2, N'540100', N'������', N'lss', 540100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'542100', N'540000', 2, N'542100', N'��������', N'cddq', 542100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'542200', N'540000', 2, N'542200', N'ɽ�ϵ���', N'sndq', 542200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'542300', N'540000', 2, N'542300', N'�տ������', N'rkzdq', 542300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'542400', N'540000', 2, N'542400', N'��������', N'nqdq', 542400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'542500', N'540000', 2, N'542500', N'�������', N'aldq', 542500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'542600', N'540000', 2, N'542600', N'��֥����', N'lzdq', 542600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'610100', N'610000', 2, N'610100', N'������', N'xas', 610100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'610200', N'610000', 2, N'610200', N'ͭ����', N'tcs', 610200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'610300', N'610000', 2, N'610300', N'������', N'bjs', 610300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'610400', N'610000', 2, N'610400', N'������', N'xys', 610400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'610500', N'610000', 2, N'610500', N'μ����', N'wns', 610500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'610600', N'610000', 2, N'610600', N'�Ӱ���', N'yas', 610600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'610700', N'610000', 2, N'610700', N'������', N'hzs', 610700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'610800', N'610000', 2, N'610800', N'������', N'yls', 610800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'610900', N'610000', 2, N'610900', N'������', N'aks', 610900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'611000', N'610000', 2, N'611000', N'������', N'sls', 611000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'620100', N'620000', 2, N'620100', N'������', N'lzs', 620100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'620200', N'620000', 2, N'620200', N'��������', N'jygs', 620200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'620300', N'620000', 2, N'620300', N'�����', N'jcs', 620300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'620400', N'620000', 2, N'620400', N'������', N'bys', 620400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'620500', N'620000', 2, N'620500', N'��ˮ��', N'tss', 620500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'110000', N'0', 1, N'110000', N'����', N'bj', 110000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'120000', N'0', 1, N'120000', N'���', N'tj', 120000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'130000', N'0', 1, N'130000', N'�ӱ�ʡ', N'hbs', 130000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'140000', N'0', 1, N'140000', N'ɽ��ʡ', N'sxs', 140000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'150000', N'0', 1, N'150000', N'���ɹ�������', N'nmgzzq', 150000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'210000', N'0', 1, N'210000', N'����ʡ', N'lns', 210000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'220000', N'0', 1, N'220000', N'����ʡ', N'jls', 220000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'230000', N'0', 1, N'230000', N'������ʡ', N'hljs', 230000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'310000', N'0', 1, N'310000', N'�Ϻ�', N'sh', 310000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'320000', N'0', 1, N'320000', N'����ʡ', N'jss', 320000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'330000', N'0', 1, N'330000', N'�㽭ʡ', N'zjs', 330000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'340000', N'0', 1, N'340000', N'����ʡ', N'ahs', 340000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'350000', N'0', 1, N'350000', N'����ʡ', N'fjs', 350000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'360000', N'0', 1, N'360000', N'����ʡ', N'jxs', 360000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'370000', N'0', 1, N'370000', N'ɽ��ʡ', N'sds', 370000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'410000', N'0', 1, N'410000', N'����ʡ', N'hns', 410000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'420000', N'0', 1, N'420000', N'����ʡ', N'hbs', 420000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'430000', N'0', 1, N'430000', N'����ʡ', N'hns', 430000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'440000', N'0', 1, N'440000', N'�㶫ʡ', N'gds', 440000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'450000', N'0', 1, N'450000', N'����׳��������', N'gxzzzzq', 450000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'460000', N'0', 1, N'460000', N'����ʡ', N'hns', 460000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'500000', N'0', 1, N'500000', N'����', N'zq', 500000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'510000', N'0', 1, N'510000', N'�Ĵ�ʡ', N'scs', 510000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'520000', N'0', 1, N'520000', N'����ʡ', N'gzs', 520000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'530000', N'0', 1, N'530000', N'����ʡ', N'yns', 530000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'540000', N'0', 1, N'540000', N'����������', N'xzzzq', 540000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'610000', N'0', 1, N'610000', N'����ʡ', N'sxs', 610000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'620000', N'0', 1, N'620000', N'����ʡ', N'gss', 620000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'630000', N'0', 1, N'630000', N'�ຣʡ', N'qhs', 630000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'640000', N'0', 1, N'640000', N'���Ļ���������', N'nxhzzzq', 640000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'650000', N'0', 1, N'650000', N'�½�ά���������', N'xjwwezzq', 650000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'810000', N'0', 1, N'810000', N'����ر�������', N'xgtbxzq', 810000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'820000', N'0', 1, N'820000', N'�����ر�������', N'amtbxzq', 820000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'830000', N'0', 1, N'830000', N'̨��ʡ', N'tws', 830000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'150900', N'150000', 2, N'150900', N'�����첼��', N'wlcbs', 150900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'340300', N'340000', 2, N'340300', N'������', N'bbs', 340300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'411700', N'410000', 2, N'411700', N'פ�����', N'zmds', 411700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'510600', N'510000', 2, N'510600', N'������', N'dys', 510600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'620600', N'620000', 2, N'620600', N'������', N'wws', 620600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'620700', N'620000', 2, N'620700', N'��Ҵ��', N'zys', 620700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'620800', N'620000', 2, N'620800', N'ƽ����', N'pls', 620800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'620900', N'620000', 2, N'620900', N'��Ȫ��', N'jqs', 620900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'621000', N'620000', 2, N'621000', N'������', N'qys', 621000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'621100', N'620000', 2, N'621100', N'������', N'dxs', 621100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'621200', N'620000', 2, N'621200', N'¤����', N'lns', 621200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'622900', N'620000', 2, N'622900', N'���Ļ���������', N'lxhzzzz', 622900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'623000', N'620000', 2, N'623000', N'���ϲ���������', N'gnzzzzz', 623000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'630100', N'630000', 2, N'630100', N'������', N'xns', 630100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'632100', N'630000', 2, N'632100', N'������', N'hds', 632100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'632200', N'630000', 2, N'632200', N'��������������', N'hbzzzzz', 632200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'632300', N'630000', 2, N'632300', N'���ϲ���������', N'hnzzzzz', 632300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'632500', N'630000', 2, N'632500', N'���ϲ���������', N'hnzzzzz', 632500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'632600', N'630000', 2, N'632600', N'�������������', N'glzzzzz', 632600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'632700', N'630000', 2, N'632700', N'��������������', N'yszzzzz', 632700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'632800', N'630000', 2, N'632800', N'�����ɹ������������', N'hxmgzzzzzz', 632800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'640100', N'640000', 2, N'640100', N'������', N'ycs', 640100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'640200', N'640000', 2, N'640200', N'ʯ��ɽ��', N'szss', 640200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'640300', N'640000', 2, N'640300', N'������', N'wzs', 640300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'640400', N'640000', 2, N'640400', N'��ԭ��', N'gys', 640400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'640500', N'640000', 2, N'640500', N'������', N'zws', 640500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'650100', N'650000', 2, N'650100', N'��³ľ����', N'wlmqs', 650100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'650200', N'650000', 2, N'650200', N'����������', N'klmys', 650200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'652100', N'650000', 2, N'652100', N'��³������', N'tlfdq', 652100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'652200', N'650000', 2, N'652200', N'���ܵ���', N'hmdq', 652200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'652300', N'650000', 2, N'652300', N'��������������', N'cjhzzzz', 652300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'652700', N'650000', 2, N'652700', N'���������ɹ�������', N'betlmgzzz', 652700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'652800', N'650000', 2, N'652800', N'���������ɹ�������', N'byglmgzzz', 652800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'652900', N'650000', 2, N'652900', N'�����յ���', N'aksdq', 652900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'653000', N'650000', 2, N'653000', N'�������տ¶�����������', N'kzlskekzzzz', 653000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'653100', N'650000', 2, N'653100', N'��ʲ����', N'ksdq', 653100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'653200', N'650000', 2, N'653200', N'�������', N'htdq', 653200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'654000', N'650000', 2, N'654000', N'���������������', N'ylhskzzz', 654000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'654200', N'650000', 2, N'654200', N'���ǵ���', N'tcdq', 654200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'654300', N'650000', 2, N'654300', N'����̩����', N'altdq', 654300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'810100', N'810000', 2, N'810100', N'��۵�', N'xgd', 810100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'810200', N'810000', 2, N'810200', N'����', N'jl', 810200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'810300', N'810000', 2, N'810300', N'�½�', N'xj', 810300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'820100', N'820000', 2, N'820100', N'���Ű뵺', N'ambd', 820100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'820300', N'820000', 2, N'820300', N'·����', N'lhd', 820300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'820400', N'820000', 2, N'820400', N'���е�', N'dzd', 820400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'830100', N'830000', 2, N'830100', N'̨����', N'tbs', 830100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'830200', N'830000', 2, N'830200', N'������', N'gxs', 830200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'830300', N'830000', 2, N'830300', N'̨����', N'tns', 830300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'830400', N'830000', 2, N'830400', N'̨����', N'tzs', 830400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'830500', N'830000', 2, N'830500', N'��Ͷ��', N'ntx', 830500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'830600', N'830000', 2, N'830600', N'��¡��', N'jls', 830600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'830700', N'830000', 2, N'830700', N'������', N'xzs', 830700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'830800', N'830000', 2, N'830800', N'������', N'jys', 830800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'830900', N'830000', 2, N'830900', N'������', N'ylx', 830900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'831000', N'830000', 2, N'831000', N'������', N'xzx', 831000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'831100', N'830000', 2, N'831100', N'��԰��', N'tyx', 831100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'831200', N'830000', 2, N'831200', N'������', N'mlx', 831200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'831300', N'830000', 2, N'831300', N'�û���', N'zhx', 831300, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'831400', N'830000', 2, N'831400', N'������', N'jyx', 831400, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'831500', N'830000', 2, N'831500', N'������', N'ylx', 831500, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'831600', N'830000', 2, N'831600', N'������', N'pdx', 831600, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'831700', N'830000', 2, N'831700', N'̨����', N'tdx', 831700, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'831800', N'830000', 2, N'831800', N'������', N'hlx', 831800, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'831900', N'830000', 2, N'831900', N'�����', N'phx', 831900, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'832000', N'830000', 2, N'832000', N'�±���', N'xbs', 832000, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'832100', N'830000', 2, N'832100', N'̨����', N'tzx', 832100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'832200', N'830000', 2, N'832200', N'������', N'ljx', 832200, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Area] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_SimpleSpelling], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'110100', N'110000', 2, N'110100', N'������', N'bjs', 110100, NULL, 1, NULL, CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'0', N'Sys_Items', N'ͨ���ֵ�', 0, 1, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'OrganizeCategory', N'��������', 0, 2, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'RoleType', N'��ɫ����', 0, 2, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'DbType', N'���ݿ�����', 0, 2, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'9a7079bd-0660-4549-9c2d-db5e8616619f', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'DbLogType', N'ϵͳ��־', NULL, NULL, 16, NULL, 1, NULL, CAST(N'2016-07-19 17:09:45.977' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'AuditState', N'���״̬', 0, 2, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'2748F35F-4EE2-417C-A907-3453146AAF67', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'Certificate', N'֤������', 0, 2, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'00F76465-DBBA-484A-B75C-E81DEE9313E6', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'Education', N'ѧ��', 0, 2, 8, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'FA7537E2-1C64-4431-84BF-66158DD63269', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'101', N'����', 0, 2, 12, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'8CEB2F71-026C-4FA6-9A61-378127AE7320', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'102', N'����', 0, 2, 13, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'15023A4E-4856-44EB-BE71-36A106E2AA59', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'103', N'����', 0, 2, 14, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'BDD797C3-2323-4868-9A63-C8CC3437AEAA', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'104', N'�Ա�', 0, 2, 15, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Items] ([F_Id], [F_ParentId], [F_EnCode], [F_FullName], [F_IsTree], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'80231beb-db60-4d94-b3bc-fae9305c6892', N'77070117-3F1A-41BA-BF81-B8B85BF10D5E', N'NewsType', N'��������', NULL, NULL, 15, NULL, 1, NULL, CAST(N'2018-03-31 17:19:32.517' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'B97BD7F5-B212-40C1-A1F7-DD9A2E63EEF2', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, N'Group', N'����', NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'2C3715AC-16F7-48FC-AB40-B0931DB1E729', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, N'Area', N'����', NULL, NULL, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'D082BDB9-5C34-49BF-BD51-4E85D7BFF646', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, N'Company', N'��˾', NULL, NULL, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'2B540AC5-6E64-4688-BB60-E0C01DFA982C', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, N'SubCompany', N'�ӹ�˾', NULL, NULL, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'A64EBB80-6A24-48AF-A10E-B6A532C32CA6', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, N'Department', N'����', NULL, NULL, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'D1F439B9-D80E-4547-9EF0-163391854AB5', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, N'SubDepartment', N'�Ӳ���', NULL, NULL, NULL, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'19EE595A-E775-409D-A48F-B33CF9F262C7', N'9EB4602B-BF9A-4710-9D80-C73CE89BEC5D', NULL, N'WorkGroup', N'С��', NULL, 0, NULL, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'e5079bae-a8c0-4209-9019-6a2b4a3a7dac', N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', NULL, N'1', N'ϵͳ��ɫ', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, CAST(N'2018-03-31 16:41:44.277' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'04aba88d-f09b-46c6-bd90-a38471399b0e', N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', NULL, N'2', N'ҵ���ɫ', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'cc6daa5c-a71c-4b2c-9a98-336bc3ee13c8', N'D94E4DC1-C2FD-4D19-9D5D-3886D39900CE', NULL, N'3', N'������ɫ', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'7a6d1bc4-3ec7-4c57-be9b-b4c97d60d5f6', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, N'1', N'�ݸ�', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'ce340c73-5048-4940-b86e-e3b3d53fdb2c', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, N'2', N'�ύ', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'41053517-215d-4e11-81cd-367c0e9578d7', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, N'3', N'ͨ��', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'e1979a4f-7fc1-42b9-a0e2-52d7059e8fb9', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, N'4', N'����', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'63acf96d-6115-4d76-a994-438f59419aad', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, N'5', N'�˻�', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'8b7b38bf-07c5-4f71-a853-41c5add4a94e', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, N'6', N'���', NULL, 0, NULL, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'49b68663-ad01-4c43-b084-f98e3e23fee8', N'954AB9A1-9928-4C6D-820A-FC1CDC85CDE0', NULL, N'7', N'����', NULL, 0, NULL, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'fa6c1873-888c-4b70-a2cc-59fccbb22078', N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04', NULL, N'SqlServer', N'SqlServer', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'27e85cb8-04e7-447b-911d-dd1e97dfab83', N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04', NULL, N'Oracle', N'Oracle', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'34a642b2-44d4-485f-b3fc-6cce24f68b0f', N'0DF5B725-5FB8-487F-B0E4-BC563A77EB04', NULL, N'MySql', N'MySql', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'1950efdf-8685-4341-8d2c-ac85ac7addd0', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'1', N'Сѧ', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'433511a9-78bd-41a0-ab25-e4d4b3423055', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'2', N'����', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'acb128a6-ff63-4e25-b1e8-0a336ed3ab18', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'3', N'����', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'a4974810-d88d-4d54-82cc-fd779875478f', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'4', N'��ר', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'486a82e3-1950-425e-b2ce-b5d98f33016a', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'5', N'��ר', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'34222d46-e0c6-446e-8150-dbefc47a1d5f', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'6', N'����', NULL, 0, NULL, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'3f280e2b-92f6-466c-8cc3-d7c8ff48cc8d', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'7', N'˶ʿ', NULL, 0, NULL, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'930b8de2-049f-4753-b9fd-87f484911ee4', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'8', N'��ʿ', NULL, 0, NULL, 8, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'355ad7a4-c4f8-4bd3-9c72-ff07983da0f0', N'00F76465-DBBA-484A-B75C-E81DEE9313E6', NULL, N'9', N'����', NULL, 0, NULL, 9, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'5d6def0e-e2a7-48eb-b43c-cc3631f60dd7', N'BDD797C3-2323-4868-9A63-C8CC3437AEAA', NULL, N'1', N'��', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'822baf7c-abdb-4257-9b78-1f550806f544', N'BDD797C3-2323-4868-9A63-C8CC3437AEAA', NULL, N'0', N'Ů', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'738edf2a-d59f-4992-97ef-d847db23bcb8', N'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, N'1', N'�ѻ�', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'a7c4aba2-a891-4558-9b0a-bd7a1100a645', N'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, N'2', N'δ��', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'f9609400-7caf-49af-ae3c-7671a9292fb3', N'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, N'3', N'����', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'a6f271f9-8653-4c5c-86cf-4cd00324b3c3', N'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, N'4', N'ɥż', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'7c1135be-0148-43eb-ae49-62a1e16ebbe3', N'FA7537E2-1C64-4431-84BF-66158DD63269', NULL, N'5', N'����', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'582e0b66-2ee9-4885-9f0c-3ce3ebf96e12', N'8CEB2F71-026C-4FA6-9A61-378127AE7320', NULL, N'1', N'����', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'de2167f3-40fe-4bf7-b8cb-5b1c554bad7a', N'8CEB2F71-026C-4FA6-9A61-378127AE7320', NULL, N'2', N'δ��', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'9b6a2225-6138-4cf2-9845-1bbecdf9b3ed', N'8CEB2F71-026C-4FA6-9A61-378127AE7320', NULL, N'3', N'����', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'49300258-1227-4b85-b6a2-e948dbbe57a4', N'15023A4E-4856-44EB-BE71-36A106E2AA59', NULL, N'����', N'����', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'd69cb819-2bb3-4e1d-9917-33b9a439233d', N'2748F35F-4EE2-417C-A907-3453146AAF67', NULL, N'1', N'���֤', NULL, 0, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'4c2f2428-2e00-4336-b9ce-5a61f24193f6', N'2748F35F-4EE2-417C-A907-3453146AAF67', NULL, N'2', N'ʿ��֤', NULL, 0, NULL, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'48c4e0f5-f570-4601-8946-6078762db3bf', N'2748F35F-4EE2-417C-A907-3453146AAF67', NULL, N'3', N'����֤', NULL, 0, NULL, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'0096ad81-4317-486e-9144-a6a02999ff19', N'2748F35F-4EE2-417C-A907-3453146AAF67', NULL, N'4', N'����', NULL, 0, NULL, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'ace2d5e8-56d4-4c8b-8409-34bc272df404', N'2748F35F-4EE2-417C-A907-3453146AAF67', NULL, N'5', N'����', NULL, 0, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'795f2695-497a-4f5e-ab1d-706095c1edb9', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Other', N'����', NULL, 0, NULL, 0, NULL, 1, NULL, CAST(N'2016-07-19 17:10:33.007' AS DateTime), NULL, CAST(N'2016-07-19 18:20:09.773' AS DateTime), NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'643209c8-931b-4641-9e04-b8bdd11800af', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Login', N'��¼', NULL, 0, NULL, 1, NULL, 1, NULL, CAST(N'2016-07-19 17:10:39.943' AS DateTime), NULL, CAST(N'2016-07-19 18:20:17.000' AS DateTime), NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'3c884a03-4f34-4150-b134-966387f1de2a', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Exit', N'�˳�', NULL, 0, NULL, 2, NULL, 1, NULL, CAST(N'2016-07-19 17:10:49.840' AS DateTime), NULL, CAST(N'2016-07-19 18:20:23.017' AS DateTime), NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'ccc8e274-75da-4eb8-bed0-69008ab7c41c', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Visit', N'����', NULL, 0, NULL, 3, NULL, 1, NULL, CAST(N'2016-07-19 17:10:55.123' AS DateTime), NULL, CAST(N'2016-07-19 18:20:29.293' AS DateTime), NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'e545061c-93fd-4ca2-ab29-b43db9db798b', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Create', N'����', NULL, 0, NULL, 4, NULL, 1, NULL, CAST(N'2016-07-19 17:11:03.397' AS DateTime), NULL, CAST(N'2016-07-19 18:20:35.897' AS DateTime), NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'a13ccf0d-ac8f-44ac-a522-4a54edf1f0fa', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Delete', N'ɾ��', NULL, 0, NULL, 5, NULL, 1, NULL, CAST(N'2016-07-19 17:11:09.173' AS DateTime), NULL, CAST(N'2016-07-19 18:20:43.070' AS DateTime), NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'392f88a8-02c2-49eb-8aed-b2acf474272a', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Update', N'�޸�', NULL, 0, NULL, 6, NULL, 1, NULL, CAST(N'2016-07-19 17:11:14.407' AS DateTime), NULL, CAST(N'2016-07-19 18:20:49.043' AS DateTime), NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'24e39617-f04e-4f6f-9209-ad71e870e7c6', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Submit', N'�ύ', NULL, 0, NULL, 7, NULL, 1, NULL, CAST(N'2016-07-19 17:11:19.540' AS DateTime), NULL, CAST(N'2016-07-19 18:20:54.710' AS DateTime), NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'7fc8fa11-4acf-409a-a771-aaf1eb81e814', N'9a7079bd-0660-4549-9c2d-db5e8616619f', NULL, N'Exception', N'�쳣', NULL, 0, NULL, 8, NULL, 1, NULL, CAST(N'2016-07-19 17:11:25.400' AS DateTime), NULL, CAST(N'2016-07-19 18:21:01.443' AS DateTime), NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'080bc9c5-2cdf-4a59-9f95-e6b2f3fc807b', N'80231beb-db60-4d94-b3bc-fae9305c6892', NULL, N'1', N'����', NULL, 1, NULL, 1, NULL, 1, NULL, CAST(N'2018-03-31 17:20:19.160' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(N'2018-04-09 17:28:42.583' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'6e0f86f2-6661-4234-baca-f007b9f40d08', N'80231beb-db60-4d94-b3bc-fae9305c6892', NULL, N'2', N'��ҵ�Ļ�', NULL, 0, NULL, 2, NULL, 1, NULL, CAST(N'2018-03-31 17:21:26.623' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(N'2018-04-09 17:28:48.007' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_ItemsDetail] ([F_Id], [F_ItemId], [F_ParentId], [F_ItemCode], [F_ItemName], [F_SimpleSpelling], [F_IsDefault], [F_Layers], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'3a4d43e5-6714-419b-a03a-d17828406d0f', N'80231beb-db60-4d94-b3bc-fae9305c6892', NULL, N'3', N'֪ͨ', NULL, 0, NULL, 3, NULL, 1, NULL, CAST(N'2018-03-31 17:23:48.610' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(N'2018-04-09 17:28:52.620' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'8d506220-3694-4877-ba40-2fcb108883f2', CAST(N'2016-07-26 09:40:28.970' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-07-26 09:40:29.210' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'daa0254e-381a-4d15-a051-788a9d31f5f1', CAST(N'2016-07-26 11:44:07.237' AS DateTime), N'admin', N'��������Ա', N'Exit', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��ȫ�˳�ϵͳ', CAST(N'2016-07-26 11:44:07.530' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'1af7414a-5ce3-4a3a-b937-db4fd45349e4', CAST(N'2016-07-26 11:44:16.157' AS DateTime), N'1010', N'�����', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-07-26 11:44:16.353' AS DateTime), N'6903ab9d-20cd-44c4-a380-09f229366e1f', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'bd83b3c1-ff1c-4da1-813f-e5183d62271c', CAST(N'2016-07-26 13:58:05.557' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-07-26 13:58:07.767' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'bf57fda2-656e-47d4-a11e-4a94c041b5a4', CAST(N'2016-07-26 13:59:12.297' AS DateTime), N'admin', N'��������Ա', N'Exit', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��ȫ�˳�ϵͳ', CAST(N'2016-07-26 13:59:12.487' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'399f2844-15f9-4a03-8af6-88afb4deea3c', CAST(N'2016-07-26 13:59:20.477' AS DateTime), N'1010', N'1010', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2016-07-26 13:59:21.467' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'3b5ac284-6cae-41c6-9728-7baed0e04e2e', CAST(N'2016-07-26 13:59:26.690' AS DateTime), N'1010', N'�����', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-07-26 13:59:26.910' AS DateTime), N'6903ab9d-20cd-44c4-a380-09f229366e1f', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'140d26c9-5210-443a-9c27-926c525a7043', CAST(N'2016-07-26 14:35:53.583' AS DateTime), N'1010', N'�����', N'Exit', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��ȫ�˳�ϵͳ', CAST(N'2016-07-26 14:35:53.833' AS DateTime), N'6903ab9d-20cd-44c4-a380-09f229366e1f', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'a1f7e069-2d53-4fa5-b5f6-6ed5456c4c49', CAST(N'2016-07-26 14:36:04.177' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-07-26 14:36:04.480' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'8ce34a97-2d6c-49a0-9917-46d0ce28f109', CAST(N'2016-07-26 15:38:06.550' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-07-26 15:38:06.767' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'c4f2f41e-24ab-4990-a410-8a97f8d28a6c', CAST(N'2016-07-27 09:21:51.900' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-07-27 09:21:52.120' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'50a1606a-e447-4e30-ac55-598e15e2ef17', CAST(N'2016-07-27 14:49:53.830' AS DateTime), N'admin', N'admin', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2016-07-27 14:49:57.657' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'c808ca13-db6a-457a-934c-906593aa4c82', CAST(N'2016-07-27 14:51:04.287' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-07-27 14:51:04.530' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'47a5b8a2-7202-41b7-b579-0829119a5963', CAST(N'2016-07-27 15:32:24.890' AS DateTime), N'11', N'11', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2016-07-27 15:32:25.683' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'666430b7-4ba9-4f01-8652-cec61e122612', CAST(N'2016-07-27 17:33:03.297' AS DateTime), N'1010', N'1010', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2016-07-27 17:33:04.110' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'59574150-5a6a-4aa9-aadc-0778e679624e', CAST(N'2016-07-27 17:33:29.963' AS DateTime), N'1010', N'�����', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-07-27 17:33:30.180' AS DateTime), N'6903ab9d-20cd-44c4-a380-09f229366e1f', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'027df934-1d3b-491d-a986-197998aeb108', CAST(N'2016-07-28 11:00:49.017' AS DateTime), N'admin', N'admin', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2016-07-28 11:00:49.933' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'54e6c128-4cc9-41dd-8048-f90024f30722', CAST(N'2016-07-28 11:01:16.917' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-07-28 11:01:18.167' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'c85da717-2d15-45b4-ad4f-1dd91053e71f', CAST(N'2016-07-28 11:59:54.873' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-07-28 11:59:55.113' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'f3ec0624-9484-4c8c-abad-b37328b1acea', CAST(N'2016-07-28 14:42:33.857' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-07-28 14:42:34.097' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'178c149d-dd35-4e4a-b067-e9f764b8fd0a', CAST(N'2016-07-28 15:29:48.037' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-07-28 15:29:48.243' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'c1c946e3-06cf-4fe8-8db0-43b346d0ce7b', CAST(N'2016-07-28 16:31:07.133' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-07-28 16:31:07.327' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'a7bee54f-26db-4c6f-a7df-bf1588046fe2', CAST(N'2016-07-29 11:43:19.437' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-07-29 11:43:19.660' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'20e55b31-0ebf-402e-b017-b05656b7f736', CAST(N'2016-07-29 11:51:45.033' AS DateTime), N'admin', N'admin', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2016-07-29 11:51:45.273' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'0601f1be-1828-4da8-bd3b-8bd650609f77', CAST(N'2016-07-29 11:51:51.543' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-07-29 11:51:51.730' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'4069e54e-0b54-48c6-873e-d040a78e273f', CAST(N'2016-08-01 09:21:17.747' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-01 09:21:17.967' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'f04d33c6-52b3-4dad-8ff7-f94ba4a5cc3b', CAST(N'2016-08-01 10:45:18.737' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-01 10:45:18.970' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'b2e62a09-835d-45ac-b724-f9d92050bb18', CAST(N'2016-08-01 11:34:21.630' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-01 11:34:21.860' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'2e0ce39b-d07a-418c-be28-ac60b1689261', CAST(N'2016-08-01 14:08:25.727' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-01 14:08:25.953' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'0b8c1d55-c34a-48e0-963d-345c4fd87a2c', CAST(N'2016-08-01 15:31:50.397' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-01 15:31:50.707' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'3e49d705-8bec-4a23-bb55-07d48150c0ed', CAST(N'2016-08-01 16:37:32.857' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-01 16:37:33.207' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'4ba02c37-2f70-4ffc-b543-56a21c1566a1', CAST(N'2016-08-01 17:39:11.053' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-01 17:39:11.427' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'4f2043b3-beb2-4fd8-ae36-7e4c203ca3d4', CAST(N'2016-08-01 19:27:43.550' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-01 19:27:43.910' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'ddf6a75c-920b-4ae2-9ae9-1f3c34cee1b2', CAST(N'2016-08-01 23:07:46.680' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-01 23:07:48.987' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'2635f787-a71c-40d3-ae14-6030cf017df7', CAST(N'2016-08-02 09:16:14.530' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-02 09:16:19.777' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'ebf1465f-852b-44f9-bd01-39c96e3c59b3', CAST(N'2016-08-02 16:16:34.943' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-02 16:16:35.143' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'b8ec2d1e-a5f1-4de9-8bba-487a100d3d9c', CAST(N'2016-08-02 22:41:59.383' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-02 22:41:59.607' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'65bb9c29-109e-4bbb-b1a8-ff6cbabe3070', CAST(N'2016-08-03 09:14:34.237' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-03 09:14:35.217' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'75b69900-aace-474c-9851-4d31abdbf9e3', CAST(N'2016-08-03 09:43:44.057' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-03 09:43:44.273' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'ded0976f-6419-46e5-b951-1db0e250e5e4', CAST(N'2016-08-03 13:52:10.780' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-03 13:52:11.000' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'8f213bc7-9a99-4485-92e9-48c84c345159', CAST(N'2016-08-03 14:56:32.827' AS DateTime), N'admin', N'admin', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2016-08-03 14:56:33.513' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'4f616240-5613-499b-b06c-6f35a79a5dc1', CAST(N'2016-08-03 14:58:27.350' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-03 14:58:30.947' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'ad0e7547-796f-4999-a590-a85ba1fd94ca', CAST(N'2016-07-25 17:37:55.277' AS DateTime), N'1010', N'�����', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-07-25 17:37:55.467' AS DateTime), N'6903ab9d-20cd-44c4-a380-09f229366e1f', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'8f050437-5b07-4e20-b223-c6c28ddd1a10', CAST(N'2016-08-03 15:12:10.577' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-03 15:12:10.777' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'4afbdfa9-a639-41f5-9ee7-2a447a4c82f1', CAST(N'2016-08-03 16:55:19.677' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-03 16:55:19.897' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'fb3ca457-5889-4a19-9bfb-0fb5f270275a', CAST(N'2016-08-03 17:24:20.653' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-03 17:24:20.873' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'51dab93c-cc01-44a2-83bd-5bc02d900659', CAST(N'2016-08-03 17:53:26.910' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-03 17:53:27.137' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'af760450-5e6b-4a02-95cd-441d2b58d71e', CAST(N'2016-08-03 22:56:15.563' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-03 22:56:15.800' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'fd9bdf4c-643c-4fa2-bc65-9b487f89f33c', CAST(N'2016-08-04 17:23:20.523' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-04 17:23:20.753' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'79f282e7-93b0-48ee-8d2f-2fd658b95393', CAST(N'2016-08-05 16:35:28.267' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-05 16:35:28.487' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'2b314b02-fc92-44f6-bbde-262d21a801eb', CAST(N'2016-08-05 23:38:10.187' AS DateTime), N'admin', N'admin', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2016-08-05 23:38:11.127' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'0f970678-f504-4e82-b17d-e053936e4be6', CAST(N'2016-08-05 23:38:30.997' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-05 23:38:31.227' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'5caaf40e-b2ca-41a0-8c7e-e63d853327dc', CAST(N'2016-08-07 13:54:32.537' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-07 13:54:32.767' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'1857f26a-f794-487a-9082-4c38999fce93', CAST(N'2016-08-07 13:58:01.067' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-07 13:58:01.267' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'cc96267d-d96f-4da3-8af6-ff9d1e325fe2', CAST(N'2016-08-08 15:19:44.463' AS DateTime), N'admin', N'admin', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2016-08-08 15:19:45.777' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'd5f87bc4-0664-4e16-8296-cde87b6998f1', CAST(N'2016-08-08 15:20:00.987' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-08 15:20:01.200' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'e6399380-6c32-43a4-9961-620ecb02d357', CAST(N'2016-08-08 16:24:22.407' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-08 16:24:22.623' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'6abf9b7a-5e6c-49c5-b57c-d66919e1b3fc', CAST(N'2016-08-08 16:38:08.837' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-08 16:38:09.070' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'43a97eeb-5551-4fd9-b47c-ae6d9205d405', CAST(N'2016-08-09 15:12:58.850' AS DateTime), N'admin', N'admin', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2016-08-09 15:13:01.887' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'ad7572dc-711b-4e58-b585-008622a660be', CAST(N'2016-08-09 15:13:22.267' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-09 15:13:22.497' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'651c6b3f-9014-4fdb-b98c-20041caa59bc', CAST(N'2016-08-09 17:45:06.730' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-09 17:45:12.417' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'054de494-b7a1-4ce7-83f7-c8a9c5d28b74', CAST(N'2016-08-10 10:03:13.697' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-10 10:03:13.947' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'a350a669-965a-4d16-b02c-4216efdf7454', CAST(N'2016-08-10 10:30:24.043' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-10 10:30:24.240' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'76013c76-e53e-49ef-a30d-751a74d8320d', CAST(N'2016-08-10 14:11:51.163' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-10 14:11:51.380' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'c96cc2cc-cae4-40ac-a616-a711286a154a', CAST(N'2016-08-10 18:08:54.013' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-10 18:08:54.240' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'b866efe6-e1c0-4caa-ae30-89809f648e4f', CAST(N'2016-08-12 10:11:47.523' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-12 10:11:47.743' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'de104d66-de2b-43ed-812a-556ed1885cb8', CAST(N'2016-08-12 10:28:02.660' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-12 10:28:02.917' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'922bf293-c03d-4dc7-8216-e59e7ec234b4', CAST(N'2016-08-12 10:32:45.743' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-12 10:32:45.960' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'3b1881a7-8693-4628-87c3-da31c3d0cda0', CAST(N'2016-08-12 10:37:14.557' AS DateTime), N'admin', N'admin', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2016-08-12 10:37:15.443' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'c2d23920-7c7c-4b89-9199-af89046d0642', CAST(N'2016-08-12 10:41:37.417' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-12 10:41:37.720' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'1da960da-0905-4fff-aaaf-938904291cce', CAST(N'2016-08-12 11:19:50.390' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-12 11:19:50.610' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'797acebe-9b59-48ec-9218-5179d5bd0099', CAST(N'2016-08-12 13:28:43.623' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-12 13:28:43.843' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'c63d5565-88a8-4b6d-adda-963feb22fcaf', CAST(N'2016-08-12 13:55:11.033' AS DateTime), N'System', N'System', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ��˻������ڣ�����������', CAST(N'2016-08-12 13:55:11.610' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'3bd97970-6f29-4be4-ac3c-c8ada98d953a', CAST(N'2016-08-12 13:55:20.937' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-12 13:55:21.130' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'f59c9a1d-d5cf-4b11-a2ff-75580a6b2a76', CAST(N'2016-08-12 15:44:34.537' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-12 15:44:34.633' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'3d49e69c-e3d5-4d86-8bf7-187e8ffd92f9', CAST(N'2016-08-12 17:54:24.143' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-12 17:54:24.233' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'fa4f8115-2999-42e0-b773-328cdda47a61', CAST(N'2016-08-12 18:02:43.120' AS DateTime), N'admin', N'��������Ա', N'Exit', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��ȫ�˳�ϵͳ', CAST(N'2016-08-12 18:02:43.260' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'77732c5c-a8f3-4c29-8916-14f6a0f443b2', CAST(N'2016-08-12 18:18:29.217' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-12 18:18:29.553' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'7be702ba-7442-4447-be5d-d5161c310526', CAST(N'2016-08-12 18:18:41.647' AS DateTime), N'admin', N'��������Ա', N'Exit', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��ȫ�˳�ϵͳ', CAST(N'2016-08-12 18:18:41.950' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'79c111e7-22bf-4e0f-9f8d-52334b6bfb75', CAST(N'2016-08-12 18:18:54.210' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-12 18:18:54.510' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'3a9d5646-f406-4e38-b7d1-a1c9dd0da452', CAST(N'2016-08-15 10:38:48.380' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-15 10:38:48.477' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'2a5aae0a-3115-4005-8780-a3fc2ab5214d', CAST(N'2016-08-15 11:32:42.717' AS DateTime), N'admin', N'admin', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2016-08-15 11:32:43.337' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'e0f2f493-f01b-43b3-ac52-352ae6641121', CAST(N'2016-08-15 11:57:56.817' AS DateTime), N'admin', N'admin', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2016-08-15 11:57:57.003' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'6265b9ee-e4b1-4d68-809a-f61c5153879e', CAST(N'2016-08-15 11:58:28.050' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-15 11:58:28.123' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'301aa067-cc90-4d21-8971-f8c8b5704699', CAST(N'2016-08-15 23:45:39.443' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-15 23:45:39.577' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'e8f4dc3d-4647-4508-af36-6759f29b2fad', CAST(N'2016-08-16 09:14:59.187' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-16 09:14:59.287' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'66102d61-8116-4013-ae09-2ab7c28222be', CAST(N'2016-08-16 10:35:23.023' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2016-08-16 10:35:23.133' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'f6b97cc2-5aad-4ace-bd17-216604648f5f', CAST(N'2018-03-15 17:58:52.817' AS DateTime), N'admin', N'admin', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2018-03-15 17:58:53.230' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'7149cefb-15c0-4616-a812-c23fbd47b1c8', CAST(N'2018-03-15 18:05:08.840' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-15 18:05:09.040' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'eb13237c-728d-41de-b8b1-09b13b67d67a', CAST(N'2018-03-17 21:39:03.510' AS DateTime), N'admin', N'admin', N'Login', N'117.81.192.182', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2018-03-17 21:39:03.970' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'25883a2c-cd72-420d-9f38-2ded580a727b', CAST(N'2018-03-17 21:39:14.577' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-17 21:39:14.897' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'5cb88fad-2182-4a05-b758-bdcb14d7b00d', CAST(N'2018-03-19 11:26:43.887' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-19 11:26:44.283' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'7c2d6f4e-7af6-4d56-bee4-fe3afc1a84a5', CAST(N'2018-03-19 06:16:11.987' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-19 06:16:12.183' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'acae15e8-6220-44f3-a91a-3b018a8dd5e7', CAST(N'2018-03-19 06:25:50.487' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-19 06:25:50.697' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'3c3b15dd-787a-4f17-80bb-8e38b8e7ab14', CAST(N'2018-03-22 15:08:34.583' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-22 15:08:34.770' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'6099890a-e671-4fbb-a827-7db1b0c9abe3', CAST(N'2018-03-22 16:52:47.073' AS DateTime), N'admin', N'admin', N'Login', N'117.81.192.182', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2018-03-22 16:52:47.630' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'45b259eb-1ee0-43f8-b580-5d6f09c2fcce', CAST(N'2018-03-22 16:52:53.437' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-22 16:52:53.713' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'a0fe2a50-f04c-47fb-a42d-cfe261430511', CAST(N'2018-03-23 15:20:39.427' AS DateTime), N'admin', N'admin', N'Login', N'117.81.192.182', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2018-03-23 15:20:39.927' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'ec9e55eb-ab52-41f2-8d46-e3f6b73ae522', CAST(N'2018-03-23 15:20:45.553' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-23 15:20:45.753' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'b64598bc-1c51-433d-b4f3-4e929bc91a99', CAST(N'2018-03-23 17:43:20.967' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-23 17:43:21.177' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'10ebe5b4-ceed-4fee-8b52-157a514abd7c', CAST(N'2018-03-26 10:53:18.533' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-26 10:53:18.743' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'd9d9718b-e832-475f-931d-749b861a2e88', CAST(N'2018-03-26 13:31:46.580' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-26 13:31:46.767' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'b4a23733-e521-4d60-aaaf-8437ba5c6b98', CAST(N'2018-03-27 17:55:35.107' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-27 17:55:35.313' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'fc4034a8-7d11-4c33-8ea4-7eccf4f742d5', CAST(N'2018-03-28 10:11:05.173' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-28 10:11:05.390' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'71cf653e-0f51-48a0-83fe-945fa17530dd', CAST(N'2018-03-28 11:02:55.757' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-28 11:02:55.967' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'a2bcdedd-d9c7-4d26-8423-27aa71086a45', CAST(N'2018-03-28 11:06:27.717' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-28 11:06:27.917' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'9253ddcd-dc04-4e1f-aed0-19b5bdc401ad', CAST(N'2018-03-28 15:14:07.937' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-28 15:14:08.163' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'df8840a3-8c08-477a-a676-ca0782525507', CAST(N'2018-03-28 15:58:35.467' AS DateTime), N'admin', N'admin', N'Login', NULL, N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2018-03-28 15:58:35.800' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'3a6f7a0d-5628-4ded-b3ad-24d934bc13bf', CAST(N'2018-03-28 15:58:42.590' AS DateTime), N'admin', N'��������Ա', N'Login', NULL, N'', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-28 15:58:42.773' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'bc68106b-edab-4a53-9f76-91eb9640e8e3', CAST(N'2018-03-28 16:02:54.790' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-28 16:02:55.243' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'ab49e663-4959-46e2-95c8-0a675b8273c8', CAST(N'2018-03-28 16:05:45.400' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-28 16:05:45.603' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'e98d97de-4738-4389-9016-e84e03a92299', CAST(N'2018-03-29 11:26:11.797' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-29 11:26:12.113' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'17edd52b-f7f0-4494-ad16-09021699270e', CAST(N'2018-03-31 10:04:22.940' AS DateTime), N'admin', N'admin', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����� ''F_CreatorUserName'' ��Ч��
���� ''F_DeleteUserName'' ��Ч��
���� ''F_LastModifyUserName'' ��Ч��', CAST(N'2018-03-31 10:04:23.293' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'033db49e-6cfa-4b73-a395-59074fe3f931', CAST(N'2018-03-31 10:14:34.523' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-31 10:14:34.693' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'a65016cb-2be4-4991-ae1d-f0f38157882e', CAST(N'2018-03-31 16:10:31.033' AS DateTime), N'admin', N'admin', N'Login', N'127.0.0.1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2018-03-31 16:10:31.407' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'733c0d48-458a-4684-9c11-d674dd64bb35', CAST(N'2018-03-31 16:10:36.890' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-31 16:10:37.170' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'922ab082-d1ee-4b2b-9126-947e4b6d69ce', CAST(N'2018-04-09 17:06:43.480' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-04-09 17:06:43.657' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'116c13bc-24e6-4864-a046-c5219cce6378', CAST(N'2018-04-10 09:49:32.677' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-04-10 09:49:32.850' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'dcfa1cd2-424e-48e6-a7ab-bb708e40c515', CAST(N'2018-04-10 13:51:55.273' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-04-10 13:51:55.443' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'989a86ea-190b-4108-b1e1-6a2f77e11d0a', CAST(N'2018-04-10 15:45:29.447' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-04-10 15:45:30.407' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'fa28c2cb-8de9-4556-ac0b-b372746a0e2d', CAST(N'2018-04-12 20:13:42.047' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-04-12 20:13:42.210' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'f80c49e5-5bba-4d1d-9897-092254c5237c', CAST(N'2018-04-12 20:48:37.737' AS DateTime), N'admin', N'��������Ա', N'Login', N'192.168.102.50', N'���ؾ�����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-04-12 20:48:37.900' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'63784fc4-19d6-4a49-aad5-26cd275808e9', CAST(N'2018-06-20 16:24:09.740' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-06-20 16:24:09.923' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'edb09dcd-49e3-43cd-9ffa-df842a4bd349', CAST(N'2018-06-27 15:34:40.013' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-06-27 15:34:40.233' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'8d56f6cc-f99a-4854-b1a3-46a4baf5b0e2', CAST(N'2018-06-27 16:33:05.153' AS DateTime), N'admin', N'admin', N'Login', N'127.0.0.1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2018-06-27 16:33:05.877' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'034a2e53-8bfa-421e-b52c-b41b542d3f0f', CAST(N'2018-06-27 16:34:07.453' AS DateTime), N'admin', N'admin', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2018-06-27 16:34:07.793' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'9ff64bdd-47d6-4f26-8d2e-245907d24970', CAST(N'2018-06-27 16:34:25.187' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-06-27 16:34:25.493' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'f782be5d-ec91-4136-a1c8-e84a2af643cb', CAST(N'2018-06-27 17:47:37.913' AS DateTime), N'admin', N'��������Ա', N'Exit', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��ȫ�˳�ϵͳ', CAST(N'2018-06-27 17:47:38.240' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'1fe5414f-3b42-4a63-9c92-0a4df582a4d9', CAST(N'2018-06-27 17:47:45.313' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-06-27 17:47:45.527' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'5286e31f-afca-4166-95da-8f9d2089f26d', CAST(N'2018-09-05 16:32:31.230' AS DateTime), N'admin', N'admin', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2018-09-05 16:32:31.590' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'cc03fd33-b9fc-45bb-b38b-fdb73d60f671', CAST(N'2018-09-05 16:32:43.240' AS DateTime), N'admin', N'admin', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2018-09-05 16:32:43.433' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'8e0d1b49-39d3-40c3-9cd3-903e13992f4f', CAST(N'2018-03-16 13:34:46.460' AS DateTime), N'admin', N'admin', N'Login', N'117.81.192.182', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2018-03-16 13:34:46.667' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'51de8d94-171f-489b-b848-fc5866c8cab2', CAST(N'2018-03-16 13:34:53.260' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-16 13:34:53.453' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'a235abcd-ac32-4d52-b549-79b1b938903c', CAST(N'2018-04-10 12:58:20.223' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-04-10 12:58:20.393' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'7dbafa6f-5e9e-4570-8ede-e39fff3e9255', CAST(N'2018-06-27 16:26:01.087' AS DateTime), N'admin', N'admin', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2018-06-27 16:26:01.410' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'31bc1cda-9c16-4314-ba61-d9bf1b5ae696', CAST(N'2018-09-05 16:32:54.547' AS DateTime), N'admin', N'admin', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2018-09-05 16:32:54.923' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'f22a15fa-4914-4490-b27b-6518f1931799', CAST(N'2018-09-05 16:33:04.507' AS DateTime), N'admin', N'admin', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2018-09-05 16:33:04.700' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'f9f44f45-2a62-4288-a4c1-ef9930eece09', CAST(N'2018-09-05 16:33:16.927' AS DateTime), N'admin', N'admin', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2018-09-05 16:33:17.103' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'44432349-4e30-480b-8b05-6cf62aec2b1a', CAST(N'2018-09-05 16:33:28.680' AS DateTime), N'admin', N'admin', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2018-09-05 16:33:28.870' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'eebb2ced-ef9e-494f-a296-ecb776035640', CAST(N'2018-09-05 16:33:48.230' AS DateTime), N'admin', N'admin', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2018-09-05 16:33:48.483' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'35c5ba88-b3cd-40cb-a740-0306c7a03ed8', CAST(N'2018-09-05 16:34:02.090' AS DateTime), N'admin', N'admin', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2018-09-05 16:34:02.310' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'0e8c2d86-40a6-4a7e-b6f9-5b400196e944', CAST(N'2018-09-05 16:34:56.363' AS DateTime), N'admin', N'admin', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2018-09-05 16:34:57.863' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'e6cc7377-2cac-4f8d-9f32-784eab7715cb', CAST(N'2018-09-05 16:37:33.940' AS DateTime), N'admin', N'admin', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2018-09-05 16:37:37.373' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'd144b8be-d17b-44d7-9504-5c8e4f448258', CAST(N'2018-09-05 16:37:54.287' AS DateTime), N'admin', N'��������Ա', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-09-05 16:37:55.457' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'ded9b63a-1de5-45c8-821d-53f148d8c8ce', CAST(N'2018-11-09 13:35:10.907' AS DateTime), N'admin', N'��������Ա', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-11-09 13:35:11.413' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'37021add-1183-4b95-8feb-0ba8e716e409', CAST(N'2019-03-29 13:51:25.973' AS DateTime), N'admin', N'admin', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2019-03-29 13:51:32.363' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'ebbaaf92-5e83-471c-83df-a395d2ff15b2', CAST(N'2019-03-29 13:51:40.600' AS DateTime), N'admin', N'admin', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2019-03-29 13:51:40.777' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'301e9753-f7b7-42b7-a8b6-8ba826f1ca92', CAST(N'2019-03-29 13:51:49.893' AS DateTime), N'admin', N'admin', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2019-03-29 13:51:50.097' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'0212efc4-525f-44bc-8e3e-6667bb1702fe', CAST(N'2019-03-29 13:52:02.467' AS DateTime), N'admin', N'��������Ա', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2019-03-29 13:52:02.637' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'c597cad9-b155-4180-be19-0ef499e1a556', CAST(N'2019-04-03 13:43:18.797' AS DateTime), N'admin', N'��������Ա', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2019-04-03 13:43:18.980' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'eb3cbcf2-71ac-4a51-8613-5199e36c9e5b', CAST(N'2019-05-06 20:08:51.780' AS DateTime), N'admin', N'��������Ա', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2019-05-06 20:08:52.337' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'b17e389f-b57a-40fe-98fc-0e0718e5a227', CAST(N'2019-05-07 09:48:45.523' AS DateTime), N'admin', N'��������Ա', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2019-05-07 09:48:45.980' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'e394a64d-05cc-4fa8-b2f1-95f64d9566d6', CAST(N'2019-05-07 13:33:49.697' AS DateTime), N'admin', N'��������Ա', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2019-05-07 13:33:49.883' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'9dfc13d9-dcfc-4c1e-a2b4-c5ab547c6148', CAST(N'2019-05-07 13:51:50.160' AS DateTime), N'13003184088', N'13003184088', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ��˻������ڣ�����������', CAST(N'2019-05-07 13:51:50.473' AS DateTime), N'13003184088', N'13003184088')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'6d20f400-c600-4c70-b00d-c6c7914fc5b6', CAST(N'2019-05-07 13:52:02.507' AS DateTime), N'1021', N'1021', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2019-05-07 13:52:02.740' AS DateTime), N'1021', N'1021')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'780fd13e-bb76-49e2-9cbb-41ba964c4989', CAST(N'2019-05-07 13:52:12.920' AS DateTime), N'1021', N'1021', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2019-05-07 13:52:13.107' AS DateTime), N'1021', N'1021')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'bdc8c632-6f6f-419e-9510-5458ec046a3d', CAST(N'2019-05-07 13:52:20.653' AS DateTime), N'1021', N'1021', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2019-05-07 13:52:20.847' AS DateTime), N'1021', N'1021')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'8dd7fe9c-0626-4e26-9f45-76eb20a281cb', CAST(N'2019-05-07 13:52:49.683' AS DateTime), N'��ɺɺ', N'��ɺɺ', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ��˻������ڣ�����������', CAST(N'2019-05-07 13:52:49.853' AS DateTime), N'��ɺɺ', N'��ɺɺ')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'3a90b514-f1dd-4fc5-a8f3-f48176726dbe', CAST(N'2019-05-07 13:52:57.917' AS DateTime), N'1021', N'1021', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2019-05-07 13:52:58.093' AS DateTime), N'1021', N'1021')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'd39660e1-b25b-4d68-bd38-7611a6a1a9cf', CAST(N'2019-05-07 14:04:27.457' AS DateTime), N'1021', N'1021', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2019-05-07 14:04:28.033' AS DateTime), N'1021', N'1021')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'ef181b70-1070-4681-b5bc-293b7223589d', CAST(N'2019-05-07 14:10:40.863' AS DateTime), N'1021', N'1021', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2019-05-07 14:10:41.480' AS DateTime), N'1021', N'1021')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'8a26595d-7d92-4247-9267-92233e11da35', CAST(N'2019-05-07 14:18:14.563' AS DateTime), N'1021', N'1021', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2019-05-07 14:18:15.263' AS DateTime), N'1021', N'1021')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'e6b16583-6b68-4e0f-8aa0-de492ab16e54', CAST(N'2019-05-07 14:25:59.537' AS DateTime), N'1021', N'1021', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2019-05-07 14:25:59.890' AS DateTime), N'1021', N'1021')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'9b5ce07e-f674-4f67-b0e3-3e3b50da802a', CAST(N'2019-05-07 14:26:51.570' AS DateTime), N'1021', N'1021', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2019-05-07 14:26:52.267' AS DateTime), N'1021', N'1021')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'119a142d-b23e-42c5-9178-90b87c13737c', CAST(N'2019-05-07 15:17:42.983' AS DateTime), N'admin', N'admin', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ�key �����ڴ����� "24"-"24".
Parameter name: key', CAST(N'2019-05-07 15:17:43.390' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'af6a0d0e-fe70-4c22-8666-f6da6ec87f9d', CAST(N'2019-05-07 15:20:53.743' AS DateTime), N'admin', N'admin', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2019-05-07 15:20:53.980' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'62d1c54b-9eec-4153-b745-bb53b09f772f', CAST(N'2019-05-07 15:22:12.473' AS DateTime), N'admin', N'admin', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ�key �����ڴ����� "24"-"24".
Parameter name: key', CAST(N'2019-05-07 15:22:12.673' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'd7dd267d-9d34-4e61-a8b5-6eb58a308cd2', CAST(N'2019-05-07 15:25:33.800' AS DateTime), N'admin', N'admin', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2019-05-07 15:25:34.760' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'fa85905b-43ad-45ba-a53c-44567d557499', CAST(N'2019-05-10 11:24:42.543' AS DateTime), N'admin', N'��������Ա', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2019-05-10 11:24:43.057' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'1a801fbe-6c6d-4866-b68d-f1e425e0c3fb', CAST(N'2019-05-10 13:01:39.727' AS DateTime), N'admin', N'��������Ա', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2019-05-10 13:01:39.997' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'1c72e383-5be6-4728-b1e8-4f548c7060a0', CAST(N'2019-05-13 10:03:21.197' AS DateTime), N'admin', N'��������Ա', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2019-05-13 10:03:21.367' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'a11b0617-0af3-4933-8b84-9d6d6594d36e', CAST(N'2019-05-13 10:50:15.577' AS DateTime), N'admin', N'��������Ա', N'Exit', N'::1', N'', NULL, N'ϵͳ��¼', 1, N'��ȫ�˳�ϵͳ', CAST(N'2019-05-13 10:50:15.927' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'a1ef240e-c27d-4140-8b23-9ae8f0fef65c', CAST(N'2019-05-13 10:50:27.197' AS DateTime), N'0513', N'����', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2019-05-13 10:50:27.387' AS DateTime), N'4d94761c-a598-4e47-9dd4-55e1cf8aaa03', N'����')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'd35d3e88-421a-4be1-9738-5d83c14e65d5', CAST(N'2019-05-13 10:50:35.377' AS DateTime), N'0513', N'����', N'Exit', N'::1', N'', NULL, N'ϵͳ��¼', 1, N'��ȫ�˳�ϵͳ', CAST(N'2019-05-13 10:50:35.550' AS DateTime), N'4d94761c-a598-4e47-9dd4-55e1cf8aaa03', N'����')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'f151c88e-58e5-4462-9a80-0b4013e8969a', CAST(N'2019-05-13 13:15:07.560' AS DateTime), N'admin', N'��������Ա', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2019-05-13 13:15:07.723' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'4d425092-965e-471e-b054-f91f7ae0d760', CAST(N'2018-03-23 10:01:00.217' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-23 10:01:00.413' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'2d341999-ea7f-4fbe-b440-b4d652e5bc9b', CAST(N'2018-03-23 16:38:27.753' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-23 16:38:27.990' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'ba252656-d0f5-437e-aa9a-a703a6031b58', CAST(N'2018-03-27 11:10:38.867' AS DateTime), N'admin', N'��������Ա', N'Login', N'117.81.192.182', N'����ʡ������ ����', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-27 11:10:39.077' AS DateTime), NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'fed61f09-b685-446b-bdd0-88f54ac7c6d9', CAST(N'2018-04-09 17:57:06.263' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-04-09 17:57:06.443' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'e73c8e38-f107-4915-9b87-9cc92b6898c7', CAST(N'2019-05-10 13:53:21.920' AS DateTime), N'admin', N'��������Ա', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2019-05-10 13:53:22.113' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'9fc601d7-391e-43c0-b576-0b0639c382ef', CAST(N'2018-03-31 10:11:05.793' AS DateTime), N'admin', N'admin', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����� ''F_CreatorUserName'' ��Ч��
���� ''F_DeleteUserName'' ��Ч��
���� ''F_LastModifyUserName'' ��Ч��', CAST(N'2018-03-31 10:11:06.053' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'fb96d6ec-43de-4541-826c-d53782bb3785', CAST(N'2018-03-31 12:59:52.067' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-31 12:59:52.367' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'3632e1f7-3a31-4a09-acbd-0b59e11bf616', CAST(N'2018-03-31 14:03:38.773' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-03-31 14:03:38.973' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'65b8db77-7b89-4321-a1bd-1b54746c83f4', CAST(N'2018-04-09 19:04:16.003' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-04-09 19:04:16.173' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'c67b9f36-7d4d-409d-97c9-9d344b5460f5', CAST(N'2018-04-09 19:22:17.033' AS DateTime), N'admin', N'��������Ա', N'Exit', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��ȫ�˳�ϵͳ', CAST(N'2018-04-09 19:22:17.423' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'439c7afd-20af-4fc9-9786-59e1399b5ac6', CAST(N'2018-04-09 19:22:26.417' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-04-09 19:22:26.597' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'2e8a96b2-2e64-4f93-a9c3-e8bfee6552fc', CAST(N'2019-05-07 14:16:40.437' AS DateTime), N'1021', N'1021', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2019-05-07 14:16:40.740' AS DateTime), N'1021', N'1021')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'16f3ad78-bb26-4bc9-b199-6741dbe7ab5c', CAST(N'2019-05-07 14:16:52.080' AS DateTime), N'1021', N'1021', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2019-05-07 14:16:52.293' AS DateTime), N'1021', N'1021')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'a86d7478-dab1-4290-b70c-6a4ff608425c', CAST(N'2018-06-27 16:29:53.873' AS DateTime), N'admin', N'admin', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2018-06-27 16:29:54.217' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'994b936e-3c88-437d-b1a5-63c7e6361823', CAST(N'2018-06-27 16:30:02.267' AS DateTime), N'admin', N'admin', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2018-06-27 16:30:02.580' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'dfae48e5-0e9a-4704-9ba4-22afca239ee6', CAST(N'2018-06-27 16:31:42.323' AS DateTime), N'admin', N'admin', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2018-06-27 16:31:42.527' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'57db54e0-fa8c-4639-af6c-a02f716bbac7', CAST(N'2018-06-27 17:14:42.090' AS DateTime), N'admin', N'��������Ա', N'Exit', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��ȫ�˳�ϵͳ', CAST(N'2018-06-27 17:14:42.413' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'770e5451-0f14-4ecf-8f02-91e3e9d90148', CAST(N'2018-06-27 17:14:48.713' AS DateTime), N'admin', N'admin', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2018-06-27 17:14:48.930' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'488fdc63-fffb-4911-9eea-2c2075ce4383', CAST(N'2018-06-27 17:14:57.787' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-06-27 17:14:58.003' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'c8217ee1-f5f1-4b79-bdc9-0d3687d3ee55', CAST(N'2018-06-27 17:15:02.437' AS DateTime), N'admin', N'��������Ա', N'Exit', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��ȫ�˳�ϵͳ', CAST(N'2018-06-27 17:15:02.657' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'002079b1-868d-4d53-9b73-95f1ff6c3ffc', CAST(N'2018-06-27 17:15:08.267' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-06-27 17:15:08.497' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'39c497d5-5ab8-4d9a-97a7-fb5e9cb478c7', CAST(N'2018-06-27 17:15:23.447' AS DateTime), N'admin', N'��������Ա', N'Exit', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��ȫ�˳�ϵͳ', CAST(N'2018-06-27 17:15:24.047' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'a4f9e04c-3bf7-4582-9f3b-a420f678e539', CAST(N'2018-06-27 17:16:33.083' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-06-27 17:16:36.313' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'f301e9eb-a207-4d2c-8c54-f65c9ee32c88', CAST(N'2018-06-27 17:16:48.883' AS DateTime), N'admin', N'��������Ա', N'Exit', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��ȫ�˳�ϵͳ', CAST(N'2018-06-27 17:16:49.137' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'68b7c63f-07e9-410b-b1aa-256958914f92', CAST(N'2018-06-27 17:19:12.867' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-06-27 17:19:13.020' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'd24812e7-636f-42ee-98e2-b833666c74bb', CAST(N'2018-06-27 17:19:26.627' AS DateTime), N'admin', N'��������Ա', N'Exit', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��ȫ�˳�ϵͳ', CAST(N'2018-06-27 17:19:26.803' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'089a22ea-f73c-4272-ade6-b9a3b6e08447', CAST(N'2018-06-27 17:20:58.483' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-06-27 17:20:58.643' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'e1b9f6e8-5c80-4ac2-8fe8-d11361558c9b', CAST(N'2018-06-27 17:21:20.027' AS DateTime), N'admin', N'��������Ա', N'Exit', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��ȫ�˳�ϵͳ', CAST(N'2018-06-27 17:21:20.197' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'074537d0-117a-4fdf-b403-468df805dbe8', CAST(N'2018-06-27 17:23:09.597' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-06-27 17:23:09.770' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'0492e71e-2896-4993-8c01-4a5d8c32fb96', CAST(N'2018-06-27 17:23:21.603' AS DateTime), N'admin', N'��������Ա', N'Exit', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��ȫ�˳�ϵͳ', CAST(N'2018-06-27 17:23:21.807' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'86be410e-1278-4c00-8e0a-5dfa9a5c369a', CAST(N'2018-06-27 17:24:17.347' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-06-27 17:24:17.513' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'c51058d7-f0e8-4968-83ba-fce0f860d8d3', CAST(N'2018-06-27 17:24:27.817' AS DateTime), N'admin', N'��������Ա', N'Exit', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��ȫ�˳�ϵͳ', CAST(N'2018-06-27 17:24:27.977' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'936d3a8d-9953-4854-b35e-3d4965496698', CAST(N'2018-06-27 17:25:06.987' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-06-27 17:25:07.147' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'fcca8874-7d4f-4b87-9f04-2cadeb1ccff4', CAST(N'2018-06-27 17:30:03.330' AS DateTime), N'admin', N'��������Ա', N'Exit', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��ȫ�˳�ϵͳ', CAST(N'2018-06-27 17:30:03.580' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'61536f39-acae-4297-846c-e9797b7c4c1d', CAST(N'2018-06-27 17:31:08.980' AS DateTime), N'admin', N'��������Ա', N'Login', N'127.0.0.1', N'������ַ', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2018-06-27 17:31:09.227' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'b139f10a-f9f3-410b-80a9-b098d6fff930', CAST(N'2019-05-07 14:01:40.023' AS DateTime), N'1021', N'1021', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ���֤���������������', CAST(N'2019-05-07 14:01:40.347' AS DateTime), N'1021', N'1021')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'a773fe57-f4c3-4cf7-9377-21a9539bd9b0', CAST(N'2019-05-07 14:01:46.107' AS DateTime), N'1021', N'1021', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2019-05-07 14:01:46.323' AS DateTime), N'1021', N'1021')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'a435a344-a6cf-4870-bbcb-b4afb4344e0b', CAST(N'2019-05-07 14:02:02.733' AS DateTime), N'1021', N'1021', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2019-05-07 14:02:02.920' AS DateTime), N'1021', N'1021')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'a325aaff-fb6d-47e5-8cc4-0ee7bddfa161', CAST(N'2019-05-07 15:28:59.507' AS DateTime), N'1021', N'��ɺɺ', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2019-05-07 15:28:59.740' AS DateTime), N'547be453-cbdc-44d1-a6e5-9852cb044e4a', N'��ɺɺ')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'e28a5f21-c87e-4711-805b-90e6e4ab8126', CAST(N'2019-05-07 15:29:59.850' AS DateTime), N'1021', N'��ɺɺ', N'Exit', N'::1', N'', NULL, N'ϵͳ��¼', 1, N'��ȫ�˳�ϵͳ', CAST(N'2019-05-07 15:30:00.060' AS DateTime), N'547be453-cbdc-44d1-a6e5-9852cb044e4a', N'��ɺɺ')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'13839d21-e9ab-4bd8-9f5f-167f0d6b8b22', CAST(N'2019-05-07 15:30:09.447' AS DateTime), N'1021', N'1021', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2019-05-07 15:30:09.617' AS DateTime), N'1021', N'1021')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'9e5e51b4-cbc1-4990-bc33-529dd874393b', CAST(N'2019-05-07 15:30:20.340' AS DateTime), N'1021', N'��ɺɺ', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2019-05-07 15:30:20.517' AS DateTime), N'547be453-cbdc-44d1-a6e5-9852cb044e4a', N'��ɺɺ')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'f785e971-b946-4c66-92b1-244e3f528bfe', CAST(N'2019-05-13 10:39:33.403' AS DateTime), N'admin', N'admin', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 0, N'��¼ʧ�ܣ����벻��ȷ������������', CAST(N'2019-05-13 10:39:33.643' AS DateTime), N'admin', N'admin')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'bd70ffc2-b722-4bc1-aee2-9586cdead837', CAST(N'2019-05-13 10:40:59.183' AS DateTime), N'admin', N'��������Ա', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2019-05-13 10:40:59.377' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'641556a7-4dc9-4e88-8b65-2defad610c92', CAST(N'2019-05-07 15:27:09.383' AS DateTime), N'admin', N'��������Ա', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2019-05-07 15:27:09.573' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Log] ([F_Id], [F_Date], [F_Account], [F_NickName], [F_Type], [F_IPAddress], [F_IPAddressName], [F_ModuleId], [F_ModuleName], [F_Result], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName]) VALUES (N'a95c2d88-f28b-4991-863f-2e4d5df6984c', CAST(N'2019-05-16 09:53:53.283' AS DateTime), N'admin', N'��������Ա', N'Login', N'::1', N'', NULL, N'ϵͳ��¼', 1, N'��¼�ɹ�', CAST(N'2019-05-16 09:53:53.720' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա')
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'e72c75d0-3a69-41ad-b220-13c9a62ec788', N'73FD1267-79BA-4E23-A152-744AF73117E9', NULL, NULL, N'���ݱ���', NULL, N'/SystemSecurity/DbBackup/Index', N'iframe', 1, 0, 0, 0, 0, 1, NULL, 1, NULL, CAST(N'2016-07-17 22:05:07.437' AS DateTime), NULL, CAST(N'2018-03-27 18:19:26.230' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'462027E0-0848-41DD-BCC3-025DCAE65555', N'0', 1, NULL, N'ϵͳ����', N'fa fa-gears', NULL, N'expand', 0, 1, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-22 15:46:46.367' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'73FD1267-79BA-4E23-A152-744AF73117E9', N'0', 1, NULL, N'ϵͳ��ȫ', N'fa fa-desktop', NULL, N'expand', 0, 1, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-22 15:46:56.033' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', N'0', 1, NULL, N'ͳ�Ʊ���', N'fa fa-bar-chart-o', N'fa fa-bar-chart-o', N'expand', 0, 1, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-22 15:47:10.230' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'9F56840F-DF92-4936-A48C-8F65A39291A2', N'0', 1, NULL, N'����ʾ��', N'fa fa-tags', NULL, N'expand', 0, 1, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-22 15:47:23.333' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'a3a4742d-ca39-42ec-b95a-8552a6fae579', N'73FD1267-79BA-4E23-A152-744AF73117E9', NULL, NULL, N'���ʿ���', NULL, N'/SystemSecurity/FilterIP/Index', N'iframe', 1, 0, 0, 0, 0, 2, NULL, 1, NULL, CAST(N'2016-07-17 22:06:10.507' AS DateTime), NULL, CAST(N'2016-07-20 16:16:02.657' AS DateTime), NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, NULL, N'ϵͳ�˵�', NULL, N'/SystemManage/Module/Index', N'iframe', 1, 0, 0, 0, 0, 7, 0, 1, N'����', NULL, NULL, CAST(N'2016-07-27 10:50:09.107' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'38CA5A66-C993-4410-AF95-50489B22939C', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, NULL, N'�û�����', NULL, N'/SystemManage/User/Index', N'iframe', 1, 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-14 16:22:47.337' AS DateTime), NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, NULL, N'��������', NULL, N'/SystemManage/Organize/Index', N'iframe', 1, 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-15 22:21:04.660' AS DateTime), NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, NULL, N'��ɫ����', NULL, N'/SystemManage/Role/Index', N'iframe', 1, 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-14 16:22:35.367' AS DateTime), NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'337A4661-99A5-4E5E-B028-861CACAF9917', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, NULL, N'�������', NULL, N'/SystemManage/Area/Index', N'iframe', 1, 0, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-14 16:21:47.247' AS DateTime), NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, NULL, N'�����ֵ�', NULL, N'/SystemManage/ItemsData/Index', N'iframe', 1, 0, 0, 0, 0, 6, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-15 22:26:07.150' AS DateTime), NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'F298F868-B689-4982-8C8B-9268CBF0308D', N'462027E0-0848-41DD-BCC3-025DCAE65555', 2, NULL, N'��λ����', NULL, N'/SystemManage/Duty/Index', N'iframe', 1, 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-14 16:22:41.070' AS DateTime), NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'96EE855E-8CD2-47FC-A51D-127C131C9FB9', N'73FD1267-79BA-4E23-A152-744AF73117E9', 2, NULL, N'ϵͳ��־', NULL, N'/SystemSecurity/Log/Index', N'iframe', 1, 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-20 16:16:19.387' AS DateTime), NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'df9920e0-ba33-4e36-a911-ef08c6ea77ea', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', NULL, NULL, N'��ͼ', NULL, N'/ReportManage/Highcharts/Sample7', N'iframe', 1, 0, 0, 0, 0, 12, NULL, 1, NULL, CAST(N'2016-07-20 17:13:32.760' AS DateTime), NULL, CAST(N'2016-07-22 15:45:37.577' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'3A95BBC6-CB5B-4438-869F-5F7B738E2568', NULL, NULL, NULL, N'ɢ��ͼ', NULL, NULL, N'iframe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8', N'73FD1267-79BA-4E23-A152-744AF73117E9', 2, NULL, N'���������', NULL, N'/SystemSecurity/ServerMonitoring/Index', N'iframe', 1, 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-20 16:16:38.257' AS DateTime), NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'F2DAD50B-95DF-48F7-8638-BA503B539143', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', 2, NULL, N'����ͼ', NULL, N'/ReportManage/Highcharts/Sample1', N'iframe', 1, 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-22 15:47:43.697' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'0EDF1DDB-CA17-4D08-AA25-914FE4E13324', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', 2, NULL, N'����ͼ', NULL, N'/ReportManage/Highcharts/Sample2', N'iframe', 1, 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-22 15:45:07.103' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'AD4BC418-B66E-48C7-BC13-81590056CD15', NULL, NULL, NULL, N'����ͼ', NULL, NULL, N'iframe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'C3D12056-D906-4D8B-8B9C-954942742BDE', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', 2, NULL, N'���ͼ', NULL, N'/ReportManage/Highcharts/Sample3', N'iframe', 1, 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-22 15:45:12.907' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'B3BF41E1-0299-4EFE-BA76-A7377AC81B38', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', 2, NULL, N'��״ͼ', NULL, N'/ReportManage/Highcharts/Sample4', N'iframe', 1, 0, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-22 15:45:19.150' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'85FAF4F4-9CBE-4904-94B3-2B930CA49F0C', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', 2, NULL, N'�ۺϱ���1', NULL, N'/ReportManage/Highcharts/Sample14', N'iframe', 1, 0, 0, 0, 0, 21, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-22 15:46:22.233' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'6BBC3562-1051-4246-98B0-9F37CAC40DC8', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', 2, NULL, N'�ۺϱ���2', NULL, N'/ReportManage/Highcharts/Sample15', N'iframe', 1, 0, 0, 0, 0, 22, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-22 15:48:05.083' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'822E2523-5105-4AE0-BF48-62459D3641F6', N'9F56840F-DF92-4936-A48C-8F65A39291A2', 2, NULL, N'�ⲿ�ʼ�', NULL, N'/ExampleManage/SendMail/Index', N'iframe', 1, 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(N'2016-08-01 18:25:45.977' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'7B959522-BE45-4747-B89D-592C7F3987A5', N'9F56840F-DF92-4936-A48C-8F65A39291A2', 2, NULL, N'���Ź���', NULL, N'/ExampleManage/SendMessages/Index', N'iframe', 1, 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(N'2016-08-01 23:08:35.903' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'AF34B824-439E-4365-99CC-C1D30514D869', N'9F56840F-DF92-4936-A48C-8F65A39291A2', 2, NULL, N'��ά������', NULL, N'/ExampleManage/BarCode/Index', N'iframe', 1, 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(N'2016-08-01 23:19:23.797' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'D2ECB516-4CB7-49B1-B536-504382115DD2', N'9F56840F-DF92-4936-A48C-8F65A39291A2', 2, NULL, N'��ӡ����', NULL, N'/ExampleManage/Print/Index', N'iframe', 1, 0, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, CAST(N'2016-08-03 14:24:30.223' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'39E97B05-7B6F-4069-9972-6F9643BC3042', N'9F56840F-DF92-4936-A48C-8F65A39291A2', 2, NULL, N'����ǩ��', NULL, N'/ExampleManage/Signet/Index', N'iframe', 1, 0, 0, 0, 0, 6, 0, 1, NULL, NULL, NULL, CAST(N'2016-08-02 22:42:36.513' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'91425AF9-F762-43AF-B784-107D23FFDC85', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', NULL, NULL, N'ģ��ʱ��', NULL, N'/ReportManage/Highcharts/Sample5', N'iframe', 1, 0, 0, 0, 0, 11, NULL, 0, NULL, NULL, NULL, CAST(N'2016-07-22 15:45:25.667' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'7858E329-16FC-49F4-93A1-11E2E7EF2998', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', NULL, NULL, N'�Ǳ���', NULL, N'/ReportManage/Highcharts/Sample6', N'iframe', 1, 0, 0, 0, 0, 12, NULL, 0, NULL, NULL, NULL, CAST(N'2016-07-22 15:45:31.763' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'163DA347-887C-4C91-8298-EB00FFBFEC84', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', NULL, NULL, N'�״�ͼ', NULL, N'/ReportManage/Highcharts/Sample8', N'iframe', 1, 0, 0, 0, 0, 13, NULL, 0, NULL, NULL, NULL, CAST(N'2016-07-22 15:45:43.433' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'1F14A1ED-B22E-4E4A-BF10-6CF018507E76', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', NULL, NULL, N'����ͼ', NULL, N'/ReportManage/Highcharts/Sample9', N'iframe', 1, 0, 0, 0, 0, 14, NULL, 0, NULL, NULL, NULL, CAST(N'2016-07-22 15:45:50.133' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'FE04386D-1307-4E34-8DFB-B56D9FEC78CE', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', NULL, NULL, N'õ��ͼ', NULL, N'/ReportManage/Highcharts/Sample10', N'iframe', 1, 0, 0, 0, 0, 15, NULL, 0, NULL, NULL, NULL, CAST(N'2016-07-22 15:45:56.740' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'54E9D12D-C039-4F01-A6FE-810A147D31D5', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', NULL, NULL, N'©��ͼ', NULL, N'/ReportManage/Highcharts/Sample11', N'iframe', 1, 0, 0, 0, 0, 16, NULL, 0, NULL, NULL, NULL, CAST(N'2016-07-22 15:46:03.633' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'ACDBD633-99A0-4BEF-B67C-3A5B41E7C1FD', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', NULL, NULL, N'����ͼ', NULL, N'/ReportManage/Highcharts/Sample12', N'iframe', 1, 0, 0, 0, 0, 17, NULL, 0, NULL, NULL, NULL, CAST(N'2016-07-22 15:46:09.343' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'A33ADBFC-089B-4981-BFAB-08178052EE36', N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', NULL, NULL, N'����ͼ', NULL, N'/ReportManage/Highcharts/Sample13', N'iframe', 1, 0, 0, 0, 0, 18, NULL, 0, NULL, NULL, NULL, CAST(N'2016-07-22 15:46:15.683' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Module] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_UrlAddress], [F_Target], [F_IsMenu], [F_IsExpand], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'4221ee8a-1773-4a6b-9f3d-0e9581ad684b', N'462027E0-0848-41DD-BCC3-025DCAE65555', NULL, NULL, N'������Ϣ', NULL, N'/SystemManage/RichText/List', N'iframe', 1, 0, 1, 0, 0, 9, NULL, 1, NULL, CAST(N'2018-03-31 10:20:58.547' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(N'2018-03-31 14:14:10.783' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'9FD543DB-C5BB-4789-ACFF-C5865AFB032C', N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'0', 1, N'NF-add', N'�����˵�', NULL, 1, N'btn_add()', N'/SystemManage/Module/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 15:41:08.927' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'E29FCBA7-F848-4A8B-BC41-A3C668A9005D', N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'0', 1, N'NF-edit', N'�޸Ĳ˵�', NULL, 2, N'btn_edit()', N'/SystemManage/Module/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 15:41:02.887' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'85F5212F-E321-4124-B155-9374AA5D9C10', N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'0', 1, N'NF-delete', N'ɾ���˵�', NULL, 2, N'btn_delete()', N'/SystemManage/Module/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 15:41:15.713' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'D4FCAFED-7640-449E-80B7-622DDACD5012', N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'0', 1, N'NF-Details', N'�鿴�˵�', NULL, 2, N'btn_details()', N'/SystemManage/Module/Details', 1, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 15:41:27.617' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'FD3D073C-4F88-467A-AE3B-CDD060952CE6', N'64A1C550-2C61-4A8C-833D-ACD0C012260F', N'0', 1, N'NF-modulebutton', N'��ť����', NULL, 2, N'btn_modulebutton()', N'/SystemManage/ModuleButton/Index', 0, 0, NULL, NULL, 5, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'4bb19533-8e81-419b-86a1-7ee56bf1dd45', N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B', N'0', 1, N'NF-delete', N'ɾ������', NULL, 2, N'btn_delete()', N'/SystemManage/Organize/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'709a4a7b-4d98-462d-b47c-351ef11db06f', N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B', N'0', 1, N'NF-Details', N'�鿴����', NULL, 2, N'btn_details()', N'/SystemManage/Organize/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'91be873e-ccb7-434f-9a3b-d312d6d5798a', N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B', N'0', 1, N'NF-edit', N'�޸Ļ���', NULL, 2, N'btn_edit()', N'/SystemManage/Organize/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'cd65e50a-0bea-45a9-b82e-f2eacdbd209e', N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B', N'0', 1, N'NF-add', N'�½�����', NULL, 1, N'btn_add()', N'/SystemManage/Organize/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'239077ff-13e1-4720-84e1-67b6f0276979', N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', N'0', 1, N'NF-delete', N'ɾ����ɫ', NULL, 2, N'btn_delete()', N'/SystemManage/Role/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'5d708d9d-6ebe-40ea-8589-e3efce9e74ec', N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', N'0', 1, N'NF-add', N'�½���ɫ', NULL, 1, N'btn_add()', N'/SystemManage/Role/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'f93763ff-51a1-478d-9585-3c86084c54f3', N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', N'0', 1, N'NF-Details', N'�鿴��ɫ', NULL, 2, N'btn_details()', N'/SystemManage/Role/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'ffffe7f8-900c-413a-9970-bee7d6599cce', N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', N'0', 1, N'NF-edit', N'�޸Ľ�ɫ', NULL, 2, N'btn_edit()', N'/SystemManage/Role/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'13c9a15f-c50d-4f09-8344-fd0050f70086', N'F298F868-B689-4982-8C8B-9268CBF0308D', N'0', 1, N'NF-add', N'�½���λ', NULL, 1, N'btn_add()', N'/SystemManage/Duty/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'88f7b3a8-fd6d-4f8e-a861-11405f434868', N'F298F868-B689-4982-8C8B-9268CBF0308D', N'0', 1, N'NF-Details', N'�鿴��λ', NULL, 2, N'btn_details()', N'/SystemManage/Duty/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'8a9993af-69b2-4d8a-85b3-337745a1f428', N'F298F868-B689-4982-8C8B-9268CBF0308D', N'0', 1, N'NF-delete', N'ɾ����λ', NULL, 2, N'btn_delete()', N'/SystemManage/Duty/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'e75e4efc-d461-4334-a764-56992fec38e6', N'F298F868-B689-4982-8C8B-9268CBF0308D', N'0', 1, N'NF-edit', N'�޸ĸ�λ', NULL, 2, N'btn_edit()', N'/SystemManage/Duty/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'14617a4f-bfef-4bc2-b943-d18d3ff8d22f', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', 1, N'NF-delete', N'ɾ���û�', NULL, 2, N'btn_delete()', N'/SystemManage/User/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 14:16:13.873' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'4727adf7-5525-4c8c-9de5-39e49c268349', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', 1, N'NF-edit', N'�޸��û�', NULL, 2, N'btn_edit()', N'/SystemManage/User/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 14:16:01.533' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'74eecdfb-3bee-405d-be07-27a78219c179', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', 1, N'NF-add', N'�½��û�', NULL, 1, N'btn_add()', N'/SystemManage/User/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 14:15:42.960' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'abfdff21-8ebf-4024-8555-401b4df6acd9', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', 1, N'NF-Details', N'�鿴�û�', NULL, 2, N'btn_details()', N'/SystemManage/User/Details', 1, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 15:29:10.283' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'38e39592-6e86-42fb-8f72-adea0c82cbc1', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', NULL, N'NF-revisepassword', N'��������', NULL, 2, N'btn_revisepassword()', N'/SystemManage/User/RevisePassword', 1, 0, 0, 0, 5, NULL, 1, NULL, CAST(N'2016-07-25 14:18:19.940' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'15362a59-b242-494a-bc6e-413b4a63580e', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', NULL, N'NF-disabled', N'����', NULL, 2, N'btn_disabled()', N'/SystemManage/User/DisabledAccount', 0, 0, 0, 0, 6, NULL, 1, NULL, CAST(N'2016-07-25 15:25:54.480' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', CAST(N'2016-07-25 15:28:33.027' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'2a8f5342-5eb7-491c-a1a9-a2631d8eb5d6', N'38CA5A66-C993-4410-AF95-50489B22939C', N'0', NULL, N'NF-enabled', N'����', NULL, 2, N'btn_enabled()', N'/SystemManage/User/EnabledAccount', 0, 0, 0, 0, 7, NULL, 1, NULL, CAST(N'2016-07-25 15:28:08.717' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'48afe7b3-e158-4256-b50c-cd0ee7c6dcc9', N'337A4661-99A5-4E5E-B028-861CACAF9917', N'0', 1, N'NF-add', N'�½�����', NULL, 1, N'btn_add()', N'/SystemManage/Area/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 15:32:26.770' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'89d7a69d-b953-4ce2-9294-db4f50f2a157', N'337A4661-99A5-4E5E-B028-861CACAF9917', N'0', 1, N'NF-edit', N'�޸�����', NULL, 2, N'btn_edit()', N'/SystemManage/Area/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 15:32:42.033' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'8c7013a9-3682-4367-8bc6-c77ca89f346b', N'337A4661-99A5-4E5E-B028-861CACAF9917', N'0', 1, N'NF-delete', N'ɾ������', NULL, 2, N'btn_delete()', N'/SystemManage/Area/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 15:32:53.930' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'0d777b07-041a-4205-a393-d1a009aaafc7', N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', N'0', 1, N'NF-edit', N'�޸��ֵ�', NULL, 2, N'btn_edit()', N'/SystemManage/ItemsData/Form', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 15:37:42.730' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'104bcc01-0cfd-433f-87f4-29a8a3efb313', N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', N'0', 1, N'NF-add', N'�½��ֵ�', NULL, 1, N'btn_add()', N'/SystemManage/ItemsData/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 15:37:35.087' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'1ee1c46b-e767-4532-8636-936ea4c12003', N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', N'0', 1, N'NF-delete', N'ɾ���ֵ�', NULL, 2, N'btn_delete()', N'/SystemManage/ItemsData/DeleteForm', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 15:37:53.170' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'82f162cb-beb9-4a79-8924-cd1860e26e2e', N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', N'0', 1, N'NF-Details', N'�鿴�ֵ�', NULL, 2, N'btn_details()', N'/SystemManage/ItemsData/Details', 0, 0, 0, 0, 5, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 15:37:59.990' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'4b876abc-1b85-47b0-abc7-96e313b18ed8', N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', N'0', NULL, N'NF-itemstype', N'�������', NULL, 1, N'btn_itemstype()', N'/SystemManage/ItemsType/Index', 0, 0, 0, 0, 2, NULL, 1, NULL, CAST(N'2016-07-25 15:36:21.290' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'0f0596f6-aa50-4df0-ad8e-af867cb4a9de', N'e72c75d0-3a69-41ad-b220-13c9a62ec788', N'0', 1, N'NF-delete', N'ɾ������', NULL, 2, N'btn_delete()', N'/SystemSecurity/DbBackup/DeleteForm', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 15:47:47.153' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'41862743-f703-4b6d-be54-08d253eb0ebc', N'e72c75d0-3a69-41ad-b220-13c9a62ec788', N'0', 1, N'NF-add', N'�½�����', NULL, 1, N'btn_add()', N'/SystemSecurity/DbBackup/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 15:43:15.573' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'aed66cfb-d78e-43d4-9987-c714546be7eb', N'e72c75d0-3a69-41ad-b220-13c9a62ec788', N'0', 1, N'NF-download', N'���ر���', NULL, 2, N'btn_download()', N'/SystemSecurity/DbBackup/DownloadBackup', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 15:48:17.050' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'329c0326-ce68-4a24-904d-aade67a90fc7', N'a3a4742d-ca39-42ec-b95a-8552a6fae579', N'0', 1, N'NF-Details', N'�鿴����', NULL, 2, N'btn_details()', N'/SystemSecurity/FilterIP/Details', 0, 0, 0, 0, 4, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 15:58:04.263' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'8379135e-5b13-4236-bfb1-9289e6129034', N'a3a4742d-ca39-42ec-b95a-8552a6fae579', N'0', 1, N'NF-delete', N'ɾ������', NULL, 2, N'btn_delete()', N'/SystemSecurity/FilterIP/DeleteForm', 0, 0, 0, 0, 3, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 15:57:57.220' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'aaf58c1b-4af2-4e5f-a3e4-c48e86378191', N'a3a4742d-ca39-42ec-b95a-8552a6fae579', N'0', 1, N'NF-edit', N'�޸Ĳ���', NULL, 2, N'btn_edit()', N'/SystemSecurity/FilterIP/Form', 0, 0, 0, 0, 2, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 15:57:49.760' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'd4074121-0d4f-465e-ad37-409bbe15bf8a', N'a3a4742d-ca39-42ec-b95a-8552a6fae579', N'0', 1, N'NF-add', N'�½�����', NULL, 1, N'btn_add()', N'/SystemSecurity/FilterIP/Form', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 15:57:40.880' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'3a35c662-a356-45e4-953d-00ebd981cad6', N'96EE855E-8CD2-47FC-A51D-127C131C9FB9', N'0', 1, N'NF-removelog', N'�����־', NULL, 1, N'btn_removeLog()', N'/SystemSecurity/Log/RemoveLog', 0, 0, 0, 0, 1, 0, 1, NULL, NULL, NULL, CAST(N'2016-07-25 16:03:12.927' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'ca3c6345-312c-43c3-9230-668369a932e6', N'4221ee8a-1773-4a6b-9f3d-0e9581ad684b', N'0', NULL, N'NF-add', N'����', NULL, 1, N'btn_add', NULL, 0, 0, 0, 0, 1, NULL, 1, NULL, CAST(N'2018-03-31 14:21:17.190' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'17a261b3-620a-4f79-aa96-b7bb21fdbe90', N'4221ee8a-1773-4a6b-9f3d-0e9581ad684b', N'0', NULL, N'NF-edit', N'�༭', NULL, 2, N'btn_edit()', NULL, 0, 0, 0, 0, 2, NULL, 1, NULL, CAST(N'2018-03-31 15:29:23.710' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_ModuleButton] ([F_Id], [F_ModuleId], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_Icon], [F_Location], [F_JsEvent], [F_UrlAddress], [F_Split], [F_IsPublic], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'd3b3f159-0f21-4bb1-a288-3236b9c6882f', N'4221ee8a-1773-4a6b-9f3d-0e9581ad684b', N'0', NULL, N'NF-delete', N'ɾ��', NULL, 2, N'btn_delete()', NULL, 0, 0, 0, 0, 3, NULL, 1, NULL, CAST(N'2018-03-31 15:30:17.033' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Organize] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_ShortName], [F_CategoryId], [F_ManagerId], [F_TelePhone], [F_MobilePhone], [F_WeChat], [F_Fax], [F_Email], [F_AreaId], [F_Address], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'5AB270C0-5D33-4203-A54F-4552699FDA3C', N'0', 1, N'Company', N'�Ϻ���Ьó�����޹�˾', NULL, N'Company', N'����', NULL, NULL, NULL, NULL, NULL, NULL, N'�Ϻ����ɽ���', NULL, NULL, 1, 0, 1, NULL, CAST(N'2016-06-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Organize] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_ShortName], [F_CategoryId], [F_ManagerId], [F_TelePhone], [F_MobilePhone], [F_WeChat], [F_Fax], [F_Email], [F_AreaId], [F_Address], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'80E10CD5-7591-40B8-A005-BCDE1B961E76', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'Administration', N'������', NULL, N'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 1, NULL, CAST(N'2016-06-10 00:00:00.000' AS DateTime), NULL, CAST(N'2018-03-31 16:50:19.267' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Organize] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_ShortName], [F_CategoryId], [F_ManagerId], [F_TelePhone], [F_MobilePhone], [F_WeChat], [F_Fax], [F_Email], [F_AreaId], [F_Address], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'5B417E2B-4B96-4F37-8BAA-10E5A812D05E', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'Market', N'�г���', NULL, N'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, NULL, CAST(N'2016-06-10 00:00:00.000' AS DateTime), NULL, CAST(N'2019-05-07 15:51:16.177' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, N'��������Ա')
GO
INSERT [dbo].[Sys_Organize] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_ShortName], [F_CategoryId], [F_ManagerId], [F_TelePhone], [F_MobilePhone], [F_WeChat], [F_Fax], [F_Email], [F_AreaId], [F_Address], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'F02A66CA-3D8B-491B-8A17-C9ACA3E3B5DD', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'Financial', N'����', NULL, N'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 0, 1, NULL, CAST(N'2016-06-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Organize] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_ShortName], [F_CategoryId], [F_ManagerId], [F_TelePhone], [F_MobilePhone], [F_WeChat], [F_Fax], [F_Email], [F_AreaId], [F_Address], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'554C61CE-6AE0-44EB-B33D-A462BE7EB3E1', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'Ministry', N'������', NULL, N'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 0, 1, NULL, CAST(N'2016-06-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Organize] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_ShortName], [F_CategoryId], [F_ManagerId], [F_TelePhone], [F_MobilePhone], [F_WeChat], [F_Fax], [F_Email], [F_AreaId], [F_Address], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'BD830AEF-0A2E-4228-ACF8-8843C39D41D8', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'Purchase', N'�ɹ���', NULL, N'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 0, 1, NULL, CAST(N'2016-06-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Organize] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_ShortName], [F_CategoryId], [F_ManagerId], [F_TelePhone], [F_MobilePhone], [F_WeChat], [F_Fax], [F_Email], [F_AreaId], [F_Address], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'253EDA1F-F158-4F3F-A778-B7E538E052A2', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'Manufacturing', N'������', NULL, N'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 0, 1, NULL, CAST(N'2016-06-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Organize] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_ShortName], [F_CategoryId], [F_ManagerId], [F_TelePhone], [F_MobilePhone], [F_WeChat], [F_Fax], [F_Email], [F_AreaId], [F_Address], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'DFA2FB91-C909-44A3-9282-BF946102E1C9', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'HumanResourse', N'���²�', NULL, N'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 0, 1, NULL, CAST(N'2016-06-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Organize] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_ShortName], [F_CategoryId], [F_ManagerId], [F_TelePhone], [F_MobilePhone], [F_WeChat], [F_Fax], [F_Email], [F_AreaId], [F_Address], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'59703D6A-0EC9-4762-824F-A8D9E62E93D2', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'Sales', N'Ӫ����', NULL, N'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 0, 1, NULL, CAST(N'2016-06-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Organize] ([F_Id], [F_ParentId], [F_Layers], [F_EnCode], [F_FullName], [F_ShortName], [F_CategoryId], [F_ManagerId], [F_TelePhone], [F_MobilePhone], [F_WeChat], [F_Fax], [F_Email], [F_AreaId], [F_Address], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'10a17b81-9971-4b48-925a-65e6d9a97e09', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', NULL, N'00102', N'���Բ���', NULL, N'Department', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, CAST(N'2019-05-10 13:33:49.367' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'administrators', N'��������Ա', N'1', 1, 1, 1, 0, 1, NULL, CAST(N'2016-07-10 00:00:00.000' AS DateTime), NULL, CAST(N'2016-07-24 00:04:00.020' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'4B2140D3-E61D-488E-ADF6-FF0EBCBC5D2C', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'system', N'ϵͳ����Ա', N'1', 0, 0, 2, 0, 1, NULL, CAST(N'2016-07-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'42C44AC0-27FA-482D-B5E3-8F9B38B80A6A', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'configuration', N'ϵͳ����Ա', N'2', 0, 0, 3, 0, 1, NULL, CAST(N'2016-07-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'7A9CF301-FCDF-4BC9-A52B-A7D4FAE2D344', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'developer', N'ϵͳ������Ա', N'2', 0, 0, 4, 0, 1, NULL, CAST(N'2016-07-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'2691AB91-3010-465F-8D92-60A97425A45E', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'innerStaff', N'�ڲ�Ա��', N'2', 0, 0, 5, 0, 1, NULL, CAST(N'2016-07-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'41652BB4-E2DC-420E-AA8A-8C92784B76E3', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'archvist', N'��������Ա', N'2', 0, 0, 6, 0, 1, NULL, CAST(N'2016-07-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'531F7D18-C49F-4F4F-A920-0074FCB52078', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'guest', N'�ÿ���Ա', N'2', 0, 0, 7, 0, 1, NULL, CAST(N'2016-07-10 00:00:00.000' AS DateTime), NULL, CAST(N'2016-07-24 15:43:29.727' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'2DA8390B-61A4-4E6C-A6E7-8F6794C7EDCE', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'tester', N'������Ա', N'2', 0, 0, 8, 0, 1, NULL, CAST(N'2016-07-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'07A8E061-AE47-49C9-8310-F055F35FF44B', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'services', N'�ͷ���Ա', N'2', 0, 0, 9, 0, 1, NULL, CAST(N'2016-07-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'AADB479E-9F87-49B1-AE2D-5DA6FECA3F8E', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'implement', N'ʵʩ��Ա', N'2', 0, 0, 10, 0, 1, NULL, CAST(N'2016-07-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'E5EA792F-915D-44BC-9F4F-EEDB26DE5DFD', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'IPQC', N'����Ѳ��Ա', N'2', 0, 0, 11, 0, 1, NULL, CAST(N'2016-07-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'8683CB17-5F9D-4A99-A233-A18C4D1CF95B', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'businessPersonnel', N'ҵ����Ա', N'2', 0, 0, 12, 0, 1, NULL, CAST(N'2016-07-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'F68956A9-9C53-4C08-AFE8-8A4755FE2B8F', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'inventory', N'������Ա', N'2', 0, 0, 13, 0, 1, NULL, CAST(N'2016-07-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'F9421969-D85C-4E4C-927F-CCFB18388A59', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'contracts', N'��ͬרԱ', N'2', 0, 0, 14, 0, 1, NULL, CAST(N'2016-07-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'59CEAE05-0FD4-4FD3-A755-A1DFA3803D2B', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'consumer', N'�ͻ�ά��Ա', N'2', 0, 0, 15, 0, 1, NULL, CAST(N'2016-07-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'23ED024E-0AAA-4C8D-9216-D1AB93348D26', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'employee', N'Ա��', NULL, 0, 0, 1, 0, 1, NULL, CAST(N'2016-07-12 00:00:00.000' AS DateTime), NULL, CAST(N'2016-07-18 15:18:56.970' AS DateTime), NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'D335A5B8-7DED-495C-B8FC-EE933FB30779', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'charge', N'����', NULL, 0, 0, 2, 0, 1, NULL, CAST(N'2016-07-12 00:00:00.000' AS DateTime), NULL, CAST(N'2016-07-18 15:17:22.790' AS DateTime), NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'0052A230-EA7B-4F3A-A1C9-1611FF26481A', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'manager', N'����', NULL, NULL, NULL, 3, 0, 1, NULL, CAST(N'2016-07-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'CEEA79E8-2E19-4294-8447-13247053DE04', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'director', N'�ܼ�', NULL, NULL, NULL, 4, 0, 1, NULL, CAST(N'2016-07-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'EA56E457-5024-49AF-9410-D5D71D24F14B', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'vicegeneral', N'���ܾ���', NULL, NULL, NULL, 5, 0, 1, NULL, CAST(N'2016-07-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'796E9C6A-8432-4BA6-8CF6-EFFAB6F2098C', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'general', N'�ܾ���', NULL, NULL, NULL, 6, 0, 1, NULL, CAST(N'2016-07-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'91E09653-D3DE-416A-BF6C-E91E60B4B4CF', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'chairman', N'����', NULL, NULL, NULL, 7, 0, 1, NULL, CAST(N'2016-07-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'C609D4D6-81F7-4647-BF2F-81BD4CED2C19', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'fileattache', N'����רԱ', NULL, NULL, NULL, 8, 0, 1, NULL, CAST(N'2016-07-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'F03EA699-9A0A-4EE9-9D33-27B9A7DFF09B', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'engineer', N'�߼�����ʦ', NULL, NULL, NULL, 9, 0, 1, NULL, CAST(N'2016-07-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'0CD2A952-2EE0-4CAF-9757-617D5075745B', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'president', N'���³�', NULL, NULL, NULL, 10, 0, 1, NULL, CAST(N'2016-07-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'B2624F67-E092-461A-AAAD-13592A9429D9', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'10018', N'��������', NULL, NULL, NULL, 11, 0, 1, NULL, CAST(N'2016-07-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'3263446A-D303-4C42-B436-6F46BF7CE86A', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'10019', N'�ܲ�', NULL, NULL, NULL, 12, 0, 1, NULL, CAST(N'2016-07-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'CB116AA3-88CC-4CF7-B0BC-7C55EC502183', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'10020', N'��ϯִ�й�', NULL, NULL, NULL, 13, 0, 1, NULL, CAST(N'2016-07-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'7E2639BA-02B9-417A-9AAA-CF6DCF8487E0', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'10022', N'����ԴרԱ', NULL, NULL, NULL, 14, 0, 1, NULL, CAST(N'2016-07-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'2B3406F9-B7FF-4D23-BC61-D8EEB6C88D5B', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'10023', N'��ҵ����', NULL, NULL, NULL, 15, 0, 1, NULL, CAST(N'2016-07-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'05691457-5284-4FEE-8D7E-C35141F3FF39', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'10024', N'�ܾ�������', NULL, NULL, NULL, 16, 0, 1, NULL, CAST(N'2016-07-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'3A2FD4D7-E73C-44E4-8AED-B6EE5980779E', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 2, N'10025', N'���þ���', NULL, NULL, NULL, 17, 0, 1, NULL, CAST(N'2016-07-12 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_Role] ([F_Id], [F_OrganizeId], [F_Category], [F_EnCode], [F_FullName], [F_Type], [F_AllowEdit], [F_AllowDelete], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'ef117917-a806-4654-83d8-94f4aea02340', N'5AB270C0-5D33-4203-A54F-4552699FDA3C', 1, N'00102', N'���Խ�ɫ', N'1', 0, 0, 10, 1, 1, NULL, CAST(N'2019-05-10 13:39:33.177' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'ccfcea25-cab8-42e7-aee3-61663d89ba93', 2, N'91be873e-ccb7-434f-9a3b-d312d6d5798a', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.030' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'cd061505-61fe-4a4e-a612-41952ba33e3b', 1, N'163DA347-887C-4C91-8298-EB00FFBFEC84', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.087' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'd4cd5d85-c730-4bd9-9d62-3233056fa7f3', 2, N'E29FCBA7-F848-4A8B-BC41-A3C668A9005D', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.057' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'da24baba-479c-4017-acee-569b1fa0ce1a', 1, N'54E9D12D-C039-4F01-A6FE-810A147D31D5', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.090' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'e7095efa-4793-44f0-8edb-57e21d4aeea2', 1, N'64A1C550-2C61-4A8C-833D-ACD0C012260F', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.053' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'ea573da4-7921-40db-bf8f-447ef980ee31', 1, N'85FAF4F4-9CBE-4904-94B3-2B930CA49F0C', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.097' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'eb7aabf3-801e-4751-85e9-8972faec4452', 1, N'AF34B824-439E-4365-99CC-C1D30514D869', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.107' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'ebff5f54-bbe5-482a-a763-d6fcce17b655', 2, N'5d708d9d-6ebe-40ea-8589-e3efce9e74ec', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.037' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'f5dc517b-f045-41ba-bae0-f7053a89c6c9', 2, N'f93763ff-51a1-478d-9585-3c86084c54f3', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.040' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'f929d1f3-2485-4d0b-8253-ff778dd30add', 2, N'cd65e50a-0bea-45a9-b82e-f2eacdbd209e', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.030' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'fcf8d653-fe9a-4e8f-81d5-f4af1119bbbf', 1, N'F2DAD50B-95DF-48F7-8638-BA503B539143', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.073' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'04d23b62-8401-4e50-8279-aaeb66377daa', 2, N'FD3D073C-4F88-467A-AE3B-CDD060952CE6', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'0f7b0b1b-d925-45d5-adf9-55044a7f4c19', 2, N'5d708d9d-6ebe-40ea-8589-e3efce9e74ec', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'1afefe4f-c76d-488b-b165-e797b017c216', 2, N'e75e4efc-d461-4334-a764-56992fec38e6', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'22ddf57d-739d-4da0-b2a7-752459f110a6', 2, N'8a9993af-69b2-4d8a-85b3-337745a1f428', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'244823d7-6b36-4cf9-b63d-c749e91061ae', 2, N'48afe7b3-e158-4256-b50c-cd0ee7c6dcc9', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'250a92b7-a549-4a35-b007-82f90dcf5622', 2, N'104bcc01-0cfd-433f-87f4-29a8a3efb313', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'2af34ef2-522e-4ea3-a8df-668b57e3b4e3', 1, N'337A4661-99A5-4E5E-B028-861CACAF9917', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'2e467fc2-2e71-45c7-ad7c-fad5eb956adf', 2, N'cd65e50a-0bea-45a9-b82e-f2eacdbd209e', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'32119cfa-864e-4bf9-945b-2d76dad0a31c', 2, N'f93763ff-51a1-478d-9585-3c86084c54f3', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'379e90a9-5628-47e0-8314-da3e0c550fb3', 2, N'88f7b3a8-fd6d-4f8e-a861-11405f434868', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'37b242db-cd74-400f-964b-96d72bd651c6', 2, N'1ee1c46b-e767-4532-8636-936ea4c12003', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'3ec593df-c492-4270-9aef-e75d521171da', 2, N'14617a4f-bfef-4bc2-b943-d18d3ff8d22f', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'41105b53-4315-442c-bb7f-9b9204355351', 2, N'4727adf7-5525-4c8c-9de5-39e49c268349', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'4ff4e45a-9ed6-4c79-be52-ae6d07d77b3a', 2, N'8c7013a9-3682-4367-8bc6-c77ca89f346b', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'52cce008-0755-4a75-9fdf-6425f74f62b0', 2, N'89d7a69d-b953-4ce2-9294-db4f50f2a157', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'53967381-3765-4bff-ad74-6aa1c9d03596', 2, N'D4FCAFED-7640-449E-80B7-622DDACD5012', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'64f6b88c-7510-4e83-956e-d2d6c163200a', 1, N'F298F868-B689-4982-8C8B-9268CBF0308D', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'68905347-8abf-4f99-bacd-8d3045b06e2b', 2, N'4b876abc-1b85-47b0-abc7-96e313b18ed8', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'6d4f5a20-98b2-40c5-8352-80b15af1b360', 2, N'239077ff-13e1-4720-84e1-67b6f0276979', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'700916e8-3488-45f2-b407-6f30df9b9123', 2, N'B6A9473D-DAA7-4574-9231-13D9E631D379', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'7535204c-60ce-4114-bb12-430a5975b363', 2, N'38e39592-6e86-42fb-8f72-adea0c82cbc1', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'77eafdea-c1e3-4e36-9d70-cdaa7b5200d4', 1, N'38CA5A66-C993-4410-AF95-50489B22939C', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'790dc854-bdbf-4ff0-8cea-2ffffcbe98ed', 2, N'E29FCBA7-F848-4A8B-BC41-A3C668A9005D', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'848319d7-89f3-4ef9-b9fc-fcd99eddf632', 2, N'4bb19533-8e81-419b-86a1-7ee56bf1dd45', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'94fa7a37-986f-4534-87bc-b66bcf7246d0', 1, N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'997a0c17-7de7-4eb3-9adb-c4900b310948', 2, N'74eecdfb-3bee-405d-be07-27a78219c179', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'a06b6fb1-f68a-4856-9e41-44ec8a642139', 2, N'85F5212F-E321-4124-B155-9374AA5D9C10', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'aa5d1775-d95b-4f07-8c2b-7a9820876dc0', 2, N'709a4a7b-4d98-462d-b47c-351ef11db06f', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'af617592-755c-4a6b-99ac-3d1ba457d760', 2, N'91be873e-ccb7-434f-9a3b-d312d6d5798a', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'c0a099cf-8ea2-4193-bd66-403f35ac3e42', 1, N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'c5c51f2e-4f7d-4aa9-9b90-b0ad1679771d', 2, N'13c9a15f-c50d-4f09-8344-fd0050f70086', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'cbf03b03-096a-4eb3-9983-81637429e51b', 2, N'82f162cb-beb9-4a79-8924-cd1860e26e2e', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'd5f8dc31-4c8d-41a5-8154-9c855553793a', 2, N'ffffe7f8-900c-413a-9970-bee7d6599cce', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'd71845b3-c39b-4a99-a523-f7a93f3ac038', 2, N'abfdff21-8ebf-4024-8555-401b4df6acd9', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'e1a1c00f-e10e-4589-8144-797f38efcd80', 2, N'0d777b07-041a-4205-a393-d1a009aaafc7', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'b52fbff2-78d5-475d-84ca-6d9ed11d3cc6', NULL, N'', 1, N'4B2140D3-E61D-488E-ADF6-FF0EBCBC5D2C', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'e61a0833-aa73-4e15-9c03-83b8089e6bd8', 2, N'9FD543DB-C5BB-4789-ACFF-C5865AFB032C', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'e6c1e0a7-aaaa-4adb-b95d-353134a484c6', 1, N'64A1C550-2C61-4A8C-833D-ACD0C012260F', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'eae52f23-db61-4997-82e0-437978517f6a', 1, N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'f5c3d009-3d00-4be1-822c-feba6c89ae0a', 1, N'462027E0-0848-41DD-BCC3-025DCAE65555', 1, N'531F7D18-C49F-4F4F-A920-0074FCB52078', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'1fd4ae2a-24fd-49e3-8007-5cc987cd05c0', NULL, N'', 1, N'42C44AC0-27FA-482D-B5E3-8F9B38B80A6A', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'df6839d3-60c4-447d-9d48-c75d26d77a7b', NULL, N'', 1, N'7A9CF301-FCDF-4BC9-A52B-A7D4FAE2D344', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'2bf9d1bd-510f-463a-9555-4ab8357bfb08', NULL, N'', 1, N'2691AB91-3010-465F-8D92-60A97425A45E', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'f8a6180a-ee18-41f4-b28e-d7e4c5a36045', NULL, N'', 1, N'41652BB4-E2DC-420E-AA8A-8C92784B76E3', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'cf6bf931-ae94-4820-92de-4f80590c615d', NULL, N'', 1, N'2DA8390B-61A4-4E6C-A6E7-8F6794C7EDCE', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'93e3474f-a8c9-4b0e-bf42-1571e9f4e6b8', NULL, N'', 1, N'07A8E061-AE47-49C9-8310-F055F35FF44B', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'fbc0b434-f261-47eb-94c8-0c450dd56cc4', NULL, N'', 1, N'AADB479E-9F87-49B1-AE2D-5DA6FECA3F8E', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'4552cc48-1bf9-4bbe-b1e1-f9e91add7055', NULL, N'', 1, N'E5EA792F-915D-44BC-9F4F-EEDB26DE5DFD', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'df6281cb-6ad9-4d4b-aff2-ba6f266c1dd3', NULL, N'', 1, N'8683CB17-5F9D-4A99-A233-A18C4D1CF95B', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'06a71015-42f4-4f16-ad9e-88e0665f7504', NULL, N'', 1, N'F68956A9-9C53-4C08-AFE8-8A4755FE2B8F', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'bb544273-6e31-4235-b507-3f0ffbfded28', NULL, N'', 1, N'F9421969-D85C-4E4C-927F-CCFB18388A59', NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'8f29bc95-94f6-4bbd-b64a-61b40e79b76a', 1, N'462027E0-0848-41DD-BCC3-025DCAE65555', 1, N'59CEAE05-0FD4-4FD3-A755-A1DFA3803D2B', NULL, CAST(N'2019-05-07 17:46:53.357' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'0000da5b-6305-4b23-b1db-1f55a66daca8', 2, N'FD3D073C-4F88-467A-AE3B-CDD060952CE6', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.060' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'06011f83-df9a-4d5d-bb6f-0b948574256c', 1, N'73FD1267-79BA-4E23-A152-744AF73117E9', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.063' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'12cc8ed7-d769-48cc-ab3c-866466462e70', 1, N'96EE855E-8CD2-47FC-A51D-127C131C9FB9', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.070' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'15b2279f-7082-421e-a6a3-9abd5bca8303', 1, N'337A4661-99A5-4E5E-B028-861CACAF9917', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.050' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'166e6255-d5cc-4718-b257-771398b4132b', 2, N'13c9a15f-c50d-4f09-8344-fd0050f70086', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.043' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'1822a1c4-5a49-4742-a937-b63e4f9bd826', 1, N'FE04386D-1307-4E34-8DFB-B56D9FEC78CE', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.090' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'1a81232c-037a-4af8-b2cf-55e19fce1582', 2, N'239077ff-13e1-4720-84e1-67b6f0276979', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.040' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'1dbe5bcb-3907-49d4-93d9-0d41cc539a1d', 1, N'423A200B-FA5F-4B29-B7B7-A3F5474B725F', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.053' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'1e2c7104-1731-4519-81ac-3594f78bf8dd', 1, N'9F56840F-DF92-4936-A48C-8F65A39291A2', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.100' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'2078f57a-454a-48c8-9fee-122df8f5786e', 1, N'7B959522-BE45-4747-B89D-592C7F3987A5', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.107' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'237da469-8831-45bf-bb78-0e7ca06f33d7', 1, N'38CA5A66-C993-4410-AF95-50489B22939C', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.050' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'243814e8-2279-4749-b84a-4e0c269d2910', 2, N'709a4a7b-4d98-462d-b47c-351ef11db06f', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.033' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'2c069a5e-8785-49b3-a6e7-355dbad2e89f', 1, N'39E97B05-7B6F-4069-9972-6F9643BC3042', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.113' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'3115d827-1419-48ab-88fa-c9b56be6df86', 1, N'822E2523-5105-4AE0-BF48-62459D3641F6', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.103' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'335e819a-866c-409d-8233-3449481b0460', 2, N'D4FCAFED-7640-449E-80B7-622DDACD5012', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.060' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'34b49233-b13b-4a6f-bc98-3000bf6b75ee', 1, N'91425AF9-F762-43AF-B784-107D23FFDC85', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.080' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'35753609-e0d7-4829-9685-6cafe02c7ca7', 1, N'462027E0-0848-41DD-BCC3-025DCAE65555', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.027' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'3f21e866-1f79-4cac-9f8e-91a0cb1014ce', 2, N'85F5212F-E321-4124-B155-9374AA5D9C10', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.057' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'43ad8ba2-3258-40ce-a121-a4c4c1af0871', 1, N'a3a4742d-ca39-42ec-b95a-8552a6fae579', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.067' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'474417c9-51de-40e9-b2dc-59d169f0bf12', 1, N'ABA7DA44-A291-4A25-9BDC-C310CF1C931C', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.100' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'4d0ba76b-dbb0-4e4f-b83e-92df13bf702a', 2, N'ffffe7f8-900c-413a-9970-bee7d6599cce', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.037' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'4d26e4ba-cf4f-4783-a4bd-84e1f2f9ecb3', 1, N'51174D27-3001-4CCF-AAB2-0AA2A6CEAA50', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.073' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'5324f369-ce2d-47cc-a3c5-cf4f690a7914', 1, N'D2ECB516-4CB7-49B1-B536-504382115DD2', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.110' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'577c000a-2997-4915-aa24-412c4acfbb38', 1, N'6BBC3562-1051-4246-98B0-9F37CAC40DC8', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.097' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'5ae6902f-0520-4000-a495-6db64d3ff469', 1, N'C3D12056-D906-4D8B-8B9C-954942742BDE', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.077' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'6e725406-22c9-4c19-8f85-054f97ee20f4', 1, N'49F61713-C1E4-420E-BEEC-0B4DBC2D7DE8', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.070' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'6e83c40f-c7fc-4b96-86aa-b17485a2d8ca', 1, N'91A6CFAD-B2F9-4294-BDAE-76DECF412C6C', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.033' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'766067c0-ebef-43f6-b49b-a7261634ff05', 2, N'88f7b3a8-fd6d-4f8e-a861-11405f434868', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.047' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'77699534-4f0b-44f0-a6d2-3953334be95a', 1, N'A33ADBFC-089B-4981-BFAB-08178052EE36', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.093' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'844841a3-a465-4bba-816e-920dbdca9715', 1, N'0EDF1DDB-CA17-4D08-AA25-914FE4E13324', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.077' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'8e81b948-313c-4d2c-b752-92a83197b7e6', 1, N'e72c75d0-3a69-41ad-b220-13c9a62ec788', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.067' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'90a522bb-5e94-48d7-be44-e4180ee7bc3d', 1, N'df9920e0-ba33-4e36-a911-ef08c6ea77ea', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.083' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'90a63c30-1c20-4f47-9cd8-d9bcc44e10d9', 1, N'F298F868-B689-4982-8C8B-9268CBF0308D', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.043' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'94a7787a-6659-49cc-a902-7ea63231c177', 2, N'4bb19533-8e81-419b-86a1-7ee56bf1dd45', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.030' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'9c9cfbd1-525a-4f02-a765-30a72c771e23', 2, N'B6A9473D-DAA7-4574-9231-13D9E631D379', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.063' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'cfd39525-3e36-4dbe-96ac-60af629ede89', 1, N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B', 1, N'59CEAE05-0FD4-4FD3-A755-A1DFA3803D2B', NULL, CAST(N'2019-05-07 17:46:53.357' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'9cc97a78-d8ca-45bd-aad5-efbeef4a4c8a', 2, N'8a9993af-69b2-4d8a-85b3-337745a1f428', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.047' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'9fef22f9-1962-4cd0-84a6-ba85b9ce29c1', 1, N'B3BF41E1-0299-4EFE-BA76-A7377AC81B38', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.080' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'a8b2ff07-7af6-4e6a-8b9a-5785a25afe8c', 1, N'1F14A1ED-B22E-4E4A-BF10-6CF018507E76', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.087' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'a8cf8cde-db46-4f5e-a3b2-883aef62ff7f', 1, N'252229DB-35CA-47AE-BDAE-C9903ED5BA7B', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.027' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'b10ca258-bd85-403c-aded-95b546fecaea', 1, N'ACDBD633-99A0-4BEF-B67C-3A5B41E7C1FD', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.093' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'c0257ed1-eae3-4260-9633-0f53b0e3d106', 2, N'9FD543DB-C5BB-4789-ACFF-C5865AFB032C', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.057' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'c2e04783-a45a-449d-9f7f-83d6a855ec22', 1, N'7858E329-16FC-49F4-93A1-11E2E7EF2998', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.083' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'c2e7dba8-b103-4c63-a597-136110a89c7b', 2, N'e75e4efc-d461-4334-a764-56992fec38e6', 1, N'F0A2B36F-35A7-4660-B46C-D4AB796591EB', NULL, CAST(N'2016-07-24 00:04:00.047' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'fa36bd5d-3bdc-4613-888f-4d2345f8c61e', 2, N'cd65e50a-0bea-45a9-b82e-f2eacdbd209e', 1, N'59CEAE05-0FD4-4FD3-A755-A1DFA3803D2B', NULL, CAST(N'2019-05-07 17:46:53.357' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_RoleAuthorize] ([F_Id], [F_ItemType], [F_ItemId], [F_ObjectType], [F_ObjectId], [F_SortCode], [F_CreatorTime], [F_CreatorUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'1b594b5e-5b37-49ba-9a0c-febaeccf55b9', 2, N'91be873e-ccb7-434f-9a3b-d312d6d5798a', 1, N'59CEAE05-0FD4-4FD3-A755-A1DFA3803D2B', NULL, CAST(N'2019-05-07 17:46:53.357' AS DateTime), N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_User] ([F_Id], [F_Account], [F_RealName], [F_NickName], [F_HeadIcon], [F_Gender], [F_Birthday], [F_MobilePhone], [F_Email], [F_WeChat], [F_ManagerId], [F_SecurityLevel], [F_Signature], [F_OrganizeId], [F_DepartmentId], [F_RoleId], [F_DutyId], [F_IsAdministrator], [F_SortCode], [F_DeleteMark], [F_EnabledMark], [F_Description], [F_CreatorTime], [F_CreatorUserId], [F_LastModifyTime], [F_LastModifyUserId], [F_DeleteTime], [F_DeleteUserId], [F_CreatorUserName], [F_DeleteUserName], [F_LastModifyUserName]) VALUES (N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'admin', N'��������Ա', N'��������Ա', NULL, 1, NULL, N'13600000000', NULL, NULL, NULL, NULL, NULL, N'5AB270C0-5D33-4203-A54F-4552699FDA3C', N'554C61CE-6AE0-44EB-B33D-A462BE7EB3E1', NULL, NULL, 0, NULL, 0, 1, N'ϵͳ�����˻�', CAST(N'2016-07-20 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, N'��������Ա', NULL, NULL)
GO
INSERT [dbo].[Sys_UserLogOn] ([F_Id], [F_UserId], [F_UserPassword], [F_UserSecretkey], [F_AllowStartTime], [F_AllowEndTime], [F_LockStartDate], [F_LockEndDate], [F_FirstVisitTime], [F_PreviousVisitTime], [F_LastVisitTime], [F_ChangePasswordDate], [F_MultiUserLogin], [F_LogOnCount], [F_UserOnLine], [F_Question], [F_AnswerQuestion], [F_CheckIPAddress], [F_Language], [F_Theme]) VALUES (N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', N'98026d60f381f401a36025b8a5352503', N'rxCqVl2a7kPMBqkTgtLx2qLx', NULL, NULL, NULL, NULL, NULL, CAST(N'2019-05-13 13:15:06.000' AS DateTime), CAST(N'2019-05-16 09:53:52.423' AS DateTime), CAST(N'2018-06-27 17:47:37.857' AS DateTime), NULL, 168, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_SYS_AREA]    Script Date: 2019/5/16 9:56:43 ******/
ALTER TABLE [dbo].[Sys_Area] ADD  CONSTRAINT [PK_SYS_AREA] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_SYS_DBBACKUP]    Script Date: 2019/5/16 9:56:43 ******/
ALTER TABLE [dbo].[Sys_DbBackup] ADD  CONSTRAINT [PK_SYS_DBBACKUP] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_SYS_FILTERIP]    Script Date: 2019/5/16 9:56:43 ******/
ALTER TABLE [dbo].[Sys_FilterIP] ADD  CONSTRAINT [PK_SYS_FILTERIP] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_SYS_ITEMS]    Script Date: 2019/5/16 9:56:43 ******/
ALTER TABLE [dbo].[Sys_Items] ADD  CONSTRAINT [PK_SYS_ITEMS] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_SYS_ITEMDETAIL]    Script Date: 2019/5/16 9:56:43 ******/
ALTER TABLE [dbo].[Sys_ItemsDetail] ADD  CONSTRAINT [PK_SYS_ITEMDETAIL] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_SYS_LOG]    Script Date: 2019/5/16 9:56:43 ******/
ALTER TABLE [dbo].[Sys_Log] ADD  CONSTRAINT [PK_SYS_LOG] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_SYS_MODULE]    Script Date: 2019/5/16 9:56:43 ******/
ALTER TABLE [dbo].[Sys_Module] ADD  CONSTRAINT [PK_SYS_MODULE] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_SYS_MODULEBUTTON]    Script Date: 2019/5/16 9:56:43 ******/
ALTER TABLE [dbo].[Sys_ModuleButton] ADD  CONSTRAINT [PK_SYS_MODULEBUTTON] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_SYS_MODULEFORM]    Script Date: 2019/5/16 9:56:43 ******/
ALTER TABLE [dbo].[Sys_ModuleForm] ADD  CONSTRAINT [PK_SYS_MODULEFORM] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_SYS_MODULEFORMINSTANCE]    Script Date: 2019/5/16 9:56:43 ******/
ALTER TABLE [dbo].[Sys_ModuleFormInstance] ADD  CONSTRAINT [PK_SYS_MODULEFORMINSTANCE] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_SYS_ORGANIZE]    Script Date: 2019/5/16 9:56:43 ******/
ALTER TABLE [dbo].[Sys_Organize] ADD  CONSTRAINT [PK_SYS_ORGANIZE] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_SYS_ROLE]    Script Date: 2019/5/16 9:56:43 ******/
ALTER TABLE [dbo].[Sys_Role] ADD  CONSTRAINT [PK_SYS_ROLE] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_SYS_ROLEAUTHORIZE]    Script Date: 2019/5/16 9:56:43 ******/
ALTER TABLE [dbo].[Sys_RoleAuthorize] ADD  CONSTRAINT [PK_SYS_ROLEAUTHORIZE] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_SYS_USER]    Script Date: 2019/5/16 9:56:43 ******/
ALTER TABLE [dbo].[Sys_User] ADD  CONSTRAINT [PK_SYS_USER] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_SYS_USERLOGON]    Script Date: 2019/5/16 9:56:43 ******/
ALTER TABLE [dbo].[Sys_UserLogOn] ADD  CONSTRAINT [PK_SYS_USERLOGON] PRIMARY KEY NONCLUSTERED 
(
	[F_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sys_DbBackup] ADD  DEFAULT ('��������Ա') FOR [F_CreatorUserName]
GO
ALTER TABLE [dbo].[Sys_FilterIP] ADD  DEFAULT ('��������Ա') FOR [F_CreatorUserName]
GO
ALTER TABLE [dbo].[Sys_ModuleForm] ADD  DEFAULT ('��������Ա') FOR [F_CreatorUserName]
GO
ALTER TABLE [dbo].[Sys_ModuleFormInstance] ADD  DEFAULT ('��������Ա') FOR [F_CreatorUserName]
GO
ALTER TABLE [dbo].[T_NewsInfo] ADD  DEFAULT ((0)) FOR [F_DeleteMark]
GO
ALTER TABLE [dbo].[T_NewsInfo] ADD  DEFAULT ((0)) FOR [F_Status]
GO
ALTER TABLE [dbo].[T_NewsInfo] ADD  DEFAULT ((1)) FOR [F_Type]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'F_ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'F_Layers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'F_EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'F_FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ƴ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'F_SimpleSpelling'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'F_SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ����־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'F_DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ч��־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'F_EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'F_Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'F_LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸��û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'F_LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'F_DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ���û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area', @level2type=N'COLUMN',@level2name=N'F_DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Area'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'F_BackupType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ݿ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'F_DbName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'F_FileName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ���С' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'F_FileSize'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ļ�·��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'F_FilePath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'F_BackupTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'F_SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ����־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'F_DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ч��־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'F_EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'F_Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'F_LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸��û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'F_LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'F_DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ���û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup', @level2type=N'COLUMN',@level2name=N'F_DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ݿⱸ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_DbBackup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'F_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʼIP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'F_StartIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'F_EndIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'F_SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ����־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'F_DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ч��־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'F_EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'F_Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'F_LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸��û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'F_LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'F_DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ���û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP', @level2type=N'COLUMN',@level2name=N'F_DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_FilterIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'F_ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'F_EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'F_FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'F_IsTree'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'F_Layers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'F_SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ����־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'F_DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ч��־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'F_EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'F_Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'F_LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸��û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'F_LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'F_DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ���û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items', @level2type=N'COLUMN',@level2name=N'F_DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Items'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϸ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'F_ItemId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'F_ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'F_ItemCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'F_ItemName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ƴ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'F_SimpleSpelling'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ĭ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'F_IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'F_Layers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'F_SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ����־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'F_DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ч��־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'F_EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'F_Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'F_LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸��û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'F_LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'F_DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ���û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail', @level2type=N'COLUMN',@level2name=N'F_DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѡ����ϸ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ItemsDetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��־����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'F_Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'F_Account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'F_NickName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'F_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'F_IPAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP���ڳ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'F_IPAddressName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϵͳģ��Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'F_ModuleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϵͳģ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'F_ModuleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'F_Result'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'F_Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϵͳ��־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Log'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_Layers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_Icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_UrlAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ŀ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_Target'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˵�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_IsMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'չ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_IsExpand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_IsPublic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����༭' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_AllowEdit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ɾ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_AllowDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ����־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ч��־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸��û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ���û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module', @level2type=N'COLUMN',@level2name=N'F_DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϵͳģ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Module'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ť����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_ModuleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_Layers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_Icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'λ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_Location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�¼�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_JsEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_UrlAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ֿ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_Split'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_IsPublic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����༭' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_AllowEdit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ɾ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_AllowDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ����־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ч��־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸��û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ���û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton', @level2type=N'COLUMN',@level2name=N'F_DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ�鰴ť' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleButton'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleForm', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleForm', @level2type=N'COLUMN',@level2name=N'F_ModuleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleForm', @level2type=N'COLUMN',@level2name=N'F_EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleForm', @level2type=N'COLUMN',@level2name=N'F_FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���ؼ�Json' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleForm', @level2type=N'COLUMN',@level2name=N'F_FormJson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleForm', @level2type=N'COLUMN',@level2name=N'F_SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ����־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleForm', @level2type=N'COLUMN',@level2name=N'F_DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ч��־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleForm', @level2type=N'COLUMN',@level2name=N'F_EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleForm', @level2type=N'COLUMN',@level2name=N'F_Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleForm', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleForm', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleForm', @level2type=N'COLUMN',@level2name=N'F_LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸��û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleForm', @level2type=N'COLUMN',@level2name=N'F_LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleForm', @level2type=N'COLUMN',@level2name=N'F_DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ���û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleForm', @level2type=N'COLUMN',@level2name=N'F_DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleForm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʵ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleFormInstance', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleFormInstance', @level2type=N'COLUMN',@level2name=N'F_FormId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleFormInstance', @level2type=N'COLUMN',@level2name=N'F_ObjectId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ʵ��Json' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleFormInstance', @level2type=N'COLUMN',@level2name=N'F_InstanceJson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleFormInstance', @level2type=N'COLUMN',@level2name=N'F_SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleFormInstance', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleFormInstance', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ģ���ʵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_ModuleFormInstance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֯����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_Layers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_ShortName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_CategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_ManagerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_TelePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ֻ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_MobilePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'΢��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_WeChat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_Fax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_AreaId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����༭' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_AllowEdit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ɾ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_AllowDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ����־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ч��־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸��û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ���û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize', @level2type=N'COLUMN',@level2name=N'F_DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֯��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Organize'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֯����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'F_OrganizeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����:1-��ɫ2-��λ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'F_Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'F_EnCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'F_FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'F_Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����༭' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'F_AllowEdit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ɾ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'F_AllowDelete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'F_SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ����־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'F_DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ч��־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'F_EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'F_Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'F_LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸��û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'F_LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'F_DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ���û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role', @level2type=N'COLUMN',@level2name=N'F_DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Role'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ��Ȩ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����1-ģ��2-��ť3-�б�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN',@level2name=N'F_ItemType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ŀ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN',@level2name=N'F_ItemId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������1-��ɫ2-����-3�û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN',@level2name=N'F_ObjectType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN',@level2name=N'F_ObjectId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN',@level2name=N'F_SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_RoleAuthorize', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ��Ȩ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_RoleAuthorize'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˻�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_Account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_RealName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�س�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_NickName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͷ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_HeadIcon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ա�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_Gender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_Birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ֻ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_MobilePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'΢��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_WeChat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_ManagerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ȫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_SecurityLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ǩ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_Signature'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֯����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_OrganizeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_DepartmentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_RoleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��λ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_DutyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ����Ա' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_IsAdministrator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_SortCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ����־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_DeleteMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��Ч��־' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_EnabledMark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_CreatorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_CreatorUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_LastModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸��û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_LastModifyUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ��ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_DeleteTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ɾ���û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User', @level2type=N'COLUMN',@level2name=N'F_DeleteUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_User'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û���¼����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'F_Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'F_UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'F_UserPassword'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û���Կ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'F_UserSecretkey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����¼ʱ�俪ʼ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'F_AllowStartTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����¼ʱ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'F_AllowEndTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͣ�û���ʼ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'F_LockStartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ͣ�û���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'F_LockEndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��һ�η���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'F_FirstVisitTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��һ�η���ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'F_PreviousVisitTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'F_LastVisitTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸���������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'F_ChangePasswordDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ͬʱ�ж��û���¼' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'F_MultiUserLogin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��¼����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'F_LogOnCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����״̬' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'F_UserOnLine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʾ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'F_Question'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʾ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'F_AnswerQuestion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'F_CheckIPAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϵͳ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'F_Language'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ϵͳ��ʽ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn', @level2type=N'COLUMN',@level2name=N'F_Theme'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û���¼��Ϣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_UserLogOn'
GO
USE [master]
GO
ALTER DATABASE [NFine_Code] SET  READ_WRITE 
GO
