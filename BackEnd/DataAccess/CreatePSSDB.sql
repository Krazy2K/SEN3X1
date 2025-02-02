USE [PSSDB]
GO
ALTER TABLE [dbo].[Ticket] DROP CONSTRAINT [FK_Ticket_Call]
GO
ALTER TABLE [dbo].[TechnicianSpecialization] DROP CONSTRAINT [FK_TechnicianSpecialization_Technician]
GO
ALTER TABLE [dbo].[TechnicianSpecialization] DROP CONSTRAINT [FK_TechnicianSpecialization_Specialization]
GO
ALTER TABLE [dbo].[TechnicianSchedule] DROP CONSTRAINT [FK_TechnicianSchedule_Ticket]
GO
ALTER TABLE [dbo].[TechnicianSchedule] DROP CONSTRAINT [FK_TechnicianSchedule_Technician]
GO
ALTER TABLE [dbo].[Technician] DROP CONSTRAINT [FK_Technician_Employee]
GO
ALTER TABLE [dbo].[ServicePackage] DROP CONSTRAINT [FK_ServicePackage_Services]
GO
ALTER TABLE [dbo].[ServicePackage] DROP CONSTRAINT [FK_ServicePackage_Package]
GO
ALTER TABLE [dbo].[Login] DROP CONSTRAINT [FK_Login_Employee]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_Employee_Job]
GO
ALTER TABLE [dbo].[ContractPackage] DROP CONSTRAINT [FK_ContractPackage_Package]
GO
ALTER TABLE [dbo].[ContractPackage] DROP CONSTRAINT [FK_ContractPackage_Contract]
GO
ALTER TABLE [dbo].[Contract] DROP CONSTRAINT [FK_Contract_Device]
GO
ALTER TABLE [dbo].[ClientContract] DROP CONSTRAINT [FK_ClientContract_Contract]
GO
ALTER TABLE [dbo].[ClientContract] DROP CONSTRAINT [FK_ClientContract_Client]
GO
ALTER TABLE [dbo].[ClientCall] DROP CONSTRAINT [FK_ClientCall_Client]
GO
ALTER TABLE [dbo].[ClientCall] DROP CONSTRAINT [FK_ClientCall_Call]
GO
ALTER TABLE [dbo].[Client] DROP CONSTRAINT [FK_Client_ClientType]
GO
ALTER TABLE [dbo].[Client] DROP CONSTRAINT [FK_Client_BankDetails]
GO
ALTER TABLE [dbo].[CallCenterAgent] DROP CONSTRAINT [FK_CallCenterAgent_Employee]
GO
ALTER TABLE [dbo].[Contract] DROP CONSTRAINT [DF_Contract_IsActive]
GO
/****** Object:  Index [IX_EmployeePhone]    Script Date: 27/04/2021 15:54:49 ******/
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [IX_EmployeePhone]
GO
/****** Object:  Index [IX_EmployeeEmail]    Script Date: 27/04/2021 15:54:49 ******/
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [IX_EmployeeEmail]
GO
/****** Object:  Index [IX_ClientPhone]    Script Date: 27/04/2021 15:54:49 ******/
ALTER TABLE [dbo].[Client] DROP CONSTRAINT [IX_ClientPhone]
GO
/****** Object:  Index [IX_ClientEmail]    Script Date: 27/04/2021 15:54:49 ******/
ALTER TABLE [dbo].[Client] DROP CONSTRAINT [IX_ClientEmail]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 27/04/2021 15:54:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ticket]') AND type in (N'U'))
DROP TABLE [dbo].[Ticket]
GO
/****** Object:  Table [dbo].[TechnicianSpecialization]    Script Date: 27/04/2021 15:54:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TechnicianSpecialization]') AND type in (N'U'))
DROP TABLE [dbo].[TechnicianSpecialization]
GO
/****** Object:  Table [dbo].[TechnicianSchedule]    Script Date: 27/04/2021 15:54:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TechnicianSchedule]') AND type in (N'U'))
DROP TABLE [dbo].[TechnicianSchedule]
GO
/****** Object:  Table [dbo].[Technician]    Script Date: 27/04/2021 15:54:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Technician]') AND type in (N'U'))
DROP TABLE [dbo].[Technician]
GO
/****** Object:  Table [dbo].[Specialization]    Script Date: 27/04/2021 15:54:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Specialization]') AND type in (N'U'))
DROP TABLE [dbo].[Specialization]
GO
/****** Object:  Table [dbo].[ServicePackage]    Script Date: 27/04/2021 15:54:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicePackage]') AND type in (N'U'))
DROP TABLE [dbo].[ServicePackage]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 27/04/2021 15:54:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Service]') AND type in (N'U'))
DROP TABLE [dbo].[Service]
GO
/****** Object:  Table [dbo].[Package]    Script Date: 27/04/2021 15:54:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Package]') AND type in (N'U'))
DROP TABLE [dbo].[Package]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 27/04/2021 15:54:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Login]') AND type in (N'U'))
DROP TABLE [dbo].[Login]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 27/04/2021 15:54:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Job]') AND type in (N'U'))
DROP TABLE [dbo].[Job]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 27/04/2021 15:54:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
DROP TABLE [dbo].[Employee]
GO
/****** Object:  Table [dbo].[Device]    Script Date: 27/04/2021 15:54:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Device]') AND type in (N'U'))
DROP TABLE [dbo].[Device]
GO
/****** Object:  Table [dbo].[ContractPackage]    Script Date: 27/04/2021 15:54:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContractPackage]') AND type in (N'U'))
DROP TABLE [dbo].[ContractPackage]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 27/04/2021 15:54:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contract]') AND type in (N'U'))
DROP TABLE [dbo].[Contract]
GO
/****** Object:  Table [dbo].[ClientType]    Script Date: 27/04/2021 15:54:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientType]') AND type in (N'U'))
DROP TABLE [dbo].[ClientType]
GO
/****** Object:  Table [dbo].[ClientContract]    Script Date: 27/04/2021 15:54:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientContract]') AND type in (N'U'))
DROP TABLE [dbo].[ClientContract]
GO
/****** Object:  Table [dbo].[ClientCall]    Script Date: 27/04/2021 15:54:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClientCall]') AND type in (N'U'))
DROP TABLE [dbo].[ClientCall]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 27/04/2021 15:54:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Client]') AND type in (N'U'))
DROP TABLE [dbo].[Client]
GO
/****** Object:  Table [dbo].[CallCenterAgent]    Script Date: 27/04/2021 15:54:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CallCenterAgent]') AND type in (N'U'))
DROP TABLE [dbo].[CallCenterAgent]
GO
/****** Object:  Table [dbo].[Call]    Script Date: 27/04/2021 15:54:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Call]') AND type in (N'U'))
DROP TABLE [dbo].[Call]
GO
/****** Object:  Table [dbo].[BankDetails]    Script Date: 27/04/2021 15:54:49 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BankDetails]') AND type in (N'U'))
DROP TABLE [dbo].[BankDetails]
GO
USE [master]
GO
/****** Object:  Database [PSSDB]    Script Date: 27/04/2021 15:54:49 ******/
DROP DATABASE [PSSDB]
GO
/****** Object:  Database [PSSDB]    Script Date: 27/04/2021 15:54:49 ******/
CREATE DATABASE [PSSDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PSSDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PSSDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PSSDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PSSDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PSSDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PSSDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PSSDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PSSDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PSSDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PSSDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PSSDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [PSSDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PSSDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PSSDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PSSDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PSSDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PSSDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PSSDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PSSDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PSSDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PSSDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PSSDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PSSDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PSSDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PSSDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PSSDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PSSDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PSSDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PSSDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PSSDB] SET  MULTI_USER 
GO
ALTER DATABASE [PSSDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PSSDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PSSDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PSSDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PSSDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PSSDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PSSDB] SET QUERY_STORE = OFF
GO
USE [PSSDB]
GO
/****** Object:  Table [dbo].[BankDetails]    Script Date: 27/04/2021 15:54:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankDetails](
	[BankDetailsID] [varchar](10) NOT NULL,
	[PaymentType] [varchar](40) NOT NULL,
	[BankName] [varchar](40) NOT NULL,
	[BranchNum] [varchar](40) NOT NULL,
	[AccountNum] [varchar](40) NOT NULL,
 CONSTRAINT [PK_BankDetails] PRIMARY KEY CLUSTERED 
(
	[BankDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Call]    Script Date: 27/04/2021 15:54:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Call](
	[CallID] [varchar](50) NOT NULL,
	[CallDuration] [int] NOT NULL,
	[CallDate] [date] NOT NULL,
	[EmpID] [int] NOT NULL,
 CONSTRAINT [PK_Call] PRIMARY KEY CLUSTERED 
(
	[CallID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CallCenterAgent]    Script Date: 27/04/2021 15:54:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CallCenterAgent](
	[EmpID] [int] NOT NULL,
	[SatisfactionScore] [float] NULL,
 CONSTRAINT [PK_CallCenterAgent] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 27/04/2021 15:54:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientID] [varchar](9) NOT NULL,
	[ClientName] [varchar](40) NOT NULL,
	[ClientSurname] [varchar](40) NOT NULL,
	[Phone] [nchar](10) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[StreetAddress] [varchar](40) NOT NULL,
	[UnitNumber] [nchar](10) NULL,
	[Suburb] [varchar](50) NOT NULL,
	[PostalCode] [nchar](4) NOT NULL,
	[Province] [varchar](50) NOT NULL,
	[ContractID] [varchar](12) NOT NULL,
	[ClientType] [int] NOT NULL,
	[BankDetails] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientCall]    Script Date: 27/04/2021 15:54:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientCall](
	[CallID] [varchar](50) NOT NULL,
	[ClientID] [varchar](9) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientContract]    Script Date: 27/04/2021 15:54:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientContract](
	[ClientID] [varchar](9) NOT NULL,
	[ContractID] [varchar](12) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientType]    Script Date: 27/04/2021 15:54:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientType](
	[ClientType] [int] NOT NULL,
	[ClientDescription] [varchar](100) NOT NULL,
 CONSTRAINT [PK_ClientType] PRIMARY KEY CLUSTERED 
(
	[ClientType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 27/04/2021 15:54:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[ContractID] [varchar](12) NOT NULL,
	[ContractType] [varchar](40) NOT NULL,
	[ContractDescription] [varchar](40) NOT NULL,
	[Price] [money] NOT NULL,
	[DeviceID] [varchar](5) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED 
(
	[ContractID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContractPackage]    Script Date: 27/04/2021 15:54:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractPackage](
	[ContractID] [varchar](12) NOT NULL,
	[PackageID] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Device]    Script Date: 27/04/2021 15:54:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Device](
	[DeviceID] [varchar](5) NOT NULL,
	[Manufacturer] [varchar](50) NOT NULL,
	[Model] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Device] PRIMARY KEY CLUSTERED 
(
	[DeviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 27/04/2021 15:54:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmpID] [int] NOT NULL,
	[EmpName] [varchar](50) NOT NULL,
	[EmpSurname] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[PostalAddress] [nchar](10) NOT NULL,
	[StreetName] [varchar](50) NOT NULL,
	[ApartmentNumber] [nchar](10) NULL,
	[Suburb] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[PostalCode] [nchar](10) NOT NULL,
	[Province] [varchar](50) NOT NULL,
	[DateHired] [date] NOT NULL,
	[JobID] [int] NOT NULL,
	[LeaveDays] [int] NOT NULL,
	[MaritalStatus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 27/04/2021 15:54:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[JobID] [int] NOT NULL,
	[JobName] [varchar](50) NOT NULL,
	[Salary] [float] NOT NULL,
 CONSTRAINT [PK_Job] PRIMARY KEY CLUSTERED 
(
	[JobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 27/04/2021 15:54:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[EmpID] [int] NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Package]    Script Date: 27/04/2021 15:54:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Package](
	[PackageID] [varchar](50) NOT NULL,
	[PackageName] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED 
(
	[PackageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 27/04/2021 15:54:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceID] [varchar](3) NOT NULL,
	[ServiceDescritpion] [varchar](40) NOT NULL,
	[Price] [money] NOT NULL,
	[ServiceDays] [int] NOT NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServicePackage]    Script Date: 27/04/2021 15:54:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicePackage](
	[PackageID] [varchar](50) NOT NULL,
	[ServiceID] [varchar](3) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialization]    Script Date: 27/04/2021 15:54:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialization](
	[SpecializationID] [int] NOT NULL,
	[SpecializationName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Specialization] PRIMARY KEY CLUSTERED 
(
	[SpecializationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Technician]    Script Date: 27/04/2021 15:54:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Technician](
	[EmpID] [int] NOT NULL,
	[SatisfactionScore] [float] NOT NULL,
 CONSTRAINT [PK_Technician] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TechnicianSchedule]    Script Date: 27/04/2021 15:54:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TechnicianSchedule](
	[EmpID] [int] NOT NULL,
	[TicketID] [nchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TechnicianSpecialization]    Script Date: 27/04/2021 15:54:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TechnicianSpecialization](
	[TechnicianID] [int] NOT NULL,
	[SpecializationID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 27/04/2021 15:54:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[TicketID] [nchar](100) NOT NULL,
	[CallID] [varchar](50) NOT NULL,
	[ClientSatisfaction] [float] NULL,
	[Completed] [bit] NOT NULL,
	[DateCompleted] [date] NOT NULL,
	[DateStarted] [date] NOT NULL,
	[ProblemDetails] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[TicketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpSurname], [Phone], [Email], [PostalAddress], [StreetName], [ApartmentNumber], [Suburb], [City], [PostalCode], [Province], [DateHired], [JobID], [LeaveDays], [MaritalStatus]) VALUES (0, N'John', N'Doe', N'0741234567', N'j.doe@doecorp.com', N'1354      ', N'Strasse st.', NULL, N'Vorstadt', N'Stadt', N'4456      ', N'Gauteng', CAST(N'2000-01-01' AS Date), 1, 14, N'Single')
INSERT [dbo].[Employee] ([EmpID], [EmpName], [EmpSurname], [Phone], [Email], [PostalAddress], [StreetName], [ApartmentNumber], [Suburb], [City], [PostalCode], [Province], [DateHired], [JobID], [LeaveDays], [MaritalStatus]) VALUES (1, N'Jane', N'Jameson', N'0754345628', N'j.jameson@rando.com', N'5642      ', N'Calle st.', N'5         ', N'Barrio', N'Ciudad', N'6425      ', N'Limpopo', CAST(N'2001-02-25' AS Date), 2, 16, N'Married')
GO
INSERT [dbo].[Job] ([JobID], [JobName], [Salary]) VALUES (1, N'Admin', 10)
INSERT [dbo].[Job] ([JobID], [JobName], [Salary]) VALUES (2, N'Technician', 12.55)
INSERT [dbo].[Job] ([JobID], [JobName], [Salary]) VALUES (3, N'CallCenterAgent', 9.25)
INSERT [dbo].[Job] ([JobID], [JobName], [Salary]) VALUES (4, N'Janitor', 5)
GO
INSERT [dbo].[Login] ([EmpID], [Username], [Password]) VALUES (0, N'admin', N'admin')
INSERT [dbo].[Login] ([EmpID], [Username], [Password]) VALUES (1, N'mainjane', N'qwerty')
GO
INSERT [dbo].[Specialization] ([SpecializationID], [SpecializationName]) VALUES (0, N'Printers')
INSERT [dbo].[Specialization] ([SpecializationID], [SpecializationName]) VALUES (1, N'Scanners')
INSERT [dbo].[Specialization] ([SpecializationID], [SpecializationName]) VALUES (2, N'Modems')
INSERT [dbo].[Specialization] ([SpecializationID], [SpecializationName]) VALUES (3, N'Coffee Machines')
INSERT [dbo].[Specialization] ([SpecializationID], [SpecializationName]) VALUES (4, N'MS Word')
GO
INSERT [dbo].[Technician] ([EmpID], [SatisfactionScore]) VALUES (1, 79)
GO
INSERT [dbo].[TechnicianSpecialization] ([TechnicianID], [SpecializationID]) VALUES (1, 0)
INSERT [dbo].[TechnicianSpecialization] ([TechnicianID], [SpecializationID]) VALUES (1, 2)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ClientEmail]    Script Date: 27/04/2021 15:54:49 ******/
ALTER TABLE [dbo].[Client] ADD  CONSTRAINT [IX_ClientEmail] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ClientPhone]    Script Date: 27/04/2021 15:54:49 ******/
ALTER TABLE [dbo].[Client] ADD  CONSTRAINT [IX_ClientPhone] UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_EmployeeEmail]    Script Date: 27/04/2021 15:54:49 ******/
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [IX_EmployeeEmail] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_EmployeePhone]    Script Date: 27/04/2021 15:54:49 ******/
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [IX_EmployeePhone] UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contract] ADD  CONSTRAINT [DF_Contract_IsActive]  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[CallCenterAgent]  WITH CHECK ADD  CONSTRAINT [FK_CallCenterAgent_Employee] FOREIGN KEY([EmpID])
REFERENCES [dbo].[Employee] ([EmpID])
GO
ALTER TABLE [dbo].[CallCenterAgent] CHECK CONSTRAINT [FK_CallCenterAgent_Employee]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_BankDetails] FOREIGN KEY([BankDetails])
REFERENCES [dbo].[BankDetails] ([BankDetailsID])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_BankDetails]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_ClientType] FOREIGN KEY([ClientType])
REFERENCES [dbo].[ClientType] ([ClientType])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_ClientType]
GO
ALTER TABLE [dbo].[ClientCall]  WITH CHECK ADD  CONSTRAINT [FK_ClientCall_Call] FOREIGN KEY([CallID])
REFERENCES [dbo].[Call] ([CallID])
GO
ALTER TABLE [dbo].[ClientCall] CHECK CONSTRAINT [FK_ClientCall_Call]
GO
ALTER TABLE [dbo].[ClientCall]  WITH CHECK ADD  CONSTRAINT [FK_ClientCall_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[ClientCall] CHECK CONSTRAINT [FK_ClientCall_Client]
GO
ALTER TABLE [dbo].[ClientContract]  WITH CHECK ADD  CONSTRAINT [FK_ClientContract_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[ClientContract] CHECK CONSTRAINT [FK_ClientContract_Client]
GO
ALTER TABLE [dbo].[ClientContract]  WITH CHECK ADD  CONSTRAINT [FK_ClientContract_Contract] FOREIGN KEY([ContractID])
REFERENCES [dbo].[Contract] ([ContractID])
GO
ALTER TABLE [dbo].[ClientContract] CHECK CONSTRAINT [FK_ClientContract_Contract]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Device] FOREIGN KEY([DeviceID])
REFERENCES [dbo].[Device] ([DeviceID])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Device]
GO
ALTER TABLE [dbo].[ContractPackage]  WITH CHECK ADD  CONSTRAINT [FK_ContractPackage_Contract] FOREIGN KEY([ContractID])
REFERENCES [dbo].[Contract] ([ContractID])
GO
ALTER TABLE [dbo].[ContractPackage] CHECK CONSTRAINT [FK_ContractPackage_Contract]
GO
ALTER TABLE [dbo].[ContractPackage]  WITH CHECK ADD  CONSTRAINT [FK_ContractPackage_Package] FOREIGN KEY([PackageID])
REFERENCES [dbo].[Package] ([PackageID])
GO
ALTER TABLE [dbo].[ContractPackage] CHECK CONSTRAINT [FK_ContractPackage_Package]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Job] FOREIGN KEY([JobID])
REFERENCES [dbo].[Job] ([JobID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Job]
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [FK_Login_Employee] FOREIGN KEY([EmpID])
REFERENCES [dbo].[Employee] ([EmpID])
GO
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [FK_Login_Employee]
GO
ALTER TABLE [dbo].[ServicePackage]  WITH CHECK ADD  CONSTRAINT [FK_ServicePackage_Package] FOREIGN KEY([PackageID])
REFERENCES [dbo].[Package] ([PackageID])
GO
ALTER TABLE [dbo].[ServicePackage] CHECK CONSTRAINT [FK_ServicePackage_Package]
GO
ALTER TABLE [dbo].[ServicePackage]  WITH CHECK ADD  CONSTRAINT [FK_ServicePackage_Services] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ServiceID])
GO
ALTER TABLE [dbo].[ServicePackage] CHECK CONSTRAINT [FK_ServicePackage_Services]
GO
ALTER TABLE [dbo].[Technician]  WITH CHECK ADD  CONSTRAINT [FK_Technician_Employee] FOREIGN KEY([EmpID])
REFERENCES [dbo].[Employee] ([EmpID])
GO
ALTER TABLE [dbo].[Technician] CHECK CONSTRAINT [FK_Technician_Employee]
GO
ALTER TABLE [dbo].[TechnicianSchedule]  WITH CHECK ADD  CONSTRAINT [FK_TechnicianSchedule_Technician] FOREIGN KEY([EmpID])
REFERENCES [dbo].[Technician] ([EmpID])
GO
ALTER TABLE [dbo].[TechnicianSchedule] CHECK CONSTRAINT [FK_TechnicianSchedule_Technician]
GO
ALTER TABLE [dbo].[TechnicianSchedule]  WITH CHECK ADD  CONSTRAINT [FK_TechnicianSchedule_Ticket] FOREIGN KEY([TicketID])
REFERENCES [dbo].[Ticket] ([TicketID])
GO
ALTER TABLE [dbo].[TechnicianSchedule] CHECK CONSTRAINT [FK_TechnicianSchedule_Ticket]
GO
ALTER TABLE [dbo].[TechnicianSpecialization]  WITH CHECK ADD  CONSTRAINT [FK_TechnicianSpecialization_Specialization] FOREIGN KEY([SpecializationID])
REFERENCES [dbo].[Specialization] ([SpecializationID])
GO
ALTER TABLE [dbo].[TechnicianSpecialization] CHECK CONSTRAINT [FK_TechnicianSpecialization_Specialization]
GO
ALTER TABLE [dbo].[TechnicianSpecialization]  WITH CHECK ADD  CONSTRAINT [FK_TechnicianSpecialization_Technician] FOREIGN KEY([TechnicianID])
REFERENCES [dbo].[Technician] ([EmpID])
GO
ALTER TABLE [dbo].[TechnicianSpecialization] CHECK CONSTRAINT [FK_TechnicianSpecialization_Technician]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Call] FOREIGN KEY([CallID])
REFERENCES [dbo].[Call] ([CallID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Call]
GO
USE [master]
GO
ALTER DATABASE [PSSDB] SET  READ_WRITE 
GO
