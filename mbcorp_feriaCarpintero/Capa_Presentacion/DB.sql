USE [master]
GO
/****** Object:  Database [DBFERIACITEMASISA]    Script Date: 20/03/2017 06:33:19 p.m. ******/
CREATE DATABASE [DBFERIACITEMASISA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbFeriaCiteMasisa', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\dbFeriaCiteMasisa.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbFeriaCiteMasisa_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\dbFeriaCiteMasisa_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DBFERIACITEMASISA] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBFERIACITEMASISA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBFERIACITEMASISA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET  MULTI_USER 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBFERIACITEMASISA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBFERIACITEMASISA] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DBFERIACITEMASISA]
GO
/****** Object:  Table [dbo].[eventoParticipante]    Script Date: 20/03/2017 06:33:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eventoParticipante](
	[codigo] [char](2) NOT NULL,
	[codParti] [char](5) NOT NULL,
	[Descripcion] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[participanteCite]    Script Date: 20/03/2017 06:33:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[participanteCite](
	[codigo] [char](5) NOT NULL,
	[apellido_pat] [varchar](50) NULL,
	[apellido_mat] [varchar](50) NULL,
	[nombres] [varchar](50) NULL,
	[fecha_nacimiento] [varchar](10) NULL,
	[estado_civ] [varchar](100) NULL,
	[dni_ce] [varchar](15) NULL,
	[sexo] [varchar](20) NULL,
	[direccion] [varchar](100) NULL,
	[ubigeo] [varchar](6) NULL,
	[tel_fijo] [varchar](13) NULL,
	[tel_mol] [varchar](16) NULL,
	[ope_movil] [varchar](50) NULL,
	[tel_fijo2] [varchar](13) NULL,
	[tel_mol2] [varchar](16) NULL,
	[ope_movil2] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[profe_ocupa] [varchar](250) NULL,
	[profocu_esp] [varchar](250) NULL,
	[redm] [varchar](10) NULL,
	[createat] [datetime] NULL,
	[updateat] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ubDepartamento]    Script Date: 20/03/2017 06:33:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ubDepartamento](
	[idDep] [char](2) NOT NULL,
	[Departamento] [varchar](50) NULL,
	[codTelef] [char](3) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ubDistrito]    Script Date: 20/03/2017 06:33:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ubDistrito](
	[idDist] [char](2) NOT NULL,
	[idProv] [char](2) NOT NULL,
	[idDep] [char](2) NOT NULL,
	[Distrito] [varchar](50) NULL,
 CONSTRAINT [PK__ubDistri__DCADBD0BEB088B39] PRIMARY KEY CLUSTERED 
(
	[idDist] ASC,
	[idProv] ASC,
	[idDep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ubProvincia]    Script Date: 20/03/2017 06:33:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ubProvincia](
	[idProv] [char](2) NOT NULL,
	[idDep] [char](2) NOT NULL,
	[Provincia] [varchar](50) NULL
) ON [PRIMARY]

GO
INSERT [dbo].[participanteCite] ([codigo], [apellido_pat], [apellido_mat], [nombres], [fecha_nacimiento], [estado_civ], [dni_ce], [sexo], [direccion], [ubigeo], [tel_fijo], [tel_mol], [ope_movil], [tel_fijo2], [tel_mol2], [ope_movil2], [email], [profe_ocupa], [profocu_esp], [redm], [createat], [updateat]) VALUES (N'P0001', N'GIRALDO', N'CASTILLO', N'NONTY', N'', N'SOLTERO', N'71338981', N'M', N'AV LIMA', N'150110', N'(001)111-1111', N'(001)999-999-999', N'MOVISTAR', N'(001)222-2222', N'(001)888-888-888', N'CLARO', N'ngiraldocastillo@gmail.com', N'ARQUITECTO DE INTERIORES(A)', N'', N'SI', CAST(N'2017-03-18T13:08:51.937' AS DateTime), CAST(N'2017-03-18T13:08:51.937' AS DateTime))
GO
INSERT [dbo].[participanteCite] ([codigo], [apellido_pat], [apellido_mat], [nombres], [fecha_nacimiento], [estado_civ], [dni_ce], [sexo], [direccion], [ubigeo], [tel_fijo], [tel_mol], [ope_movil], [tel_fijo2], [tel_mol2], [ope_movil2], [email], [profe_ocupa], [profocu_esp], [redm], [createat], [updateat]) VALUES (N'P0002', N'GIRALDO', N'VEGA', N'JUAN', N'15/12/1997', N'CASADO', N'71338981', N'M', N'AV MOLINA', N'150114', N'(001)222-2222', N'(001)988-888-888', N'MOVISTAR', N'(001)111-1111', N'(001)644-444-444', N'CLARO', N'casedfaosdfj@hotmaul.com', N'OTROS', N'PRFESOR', N'SI', CAST(N'2017-03-18T13:13:18.713' AS DateTime), CAST(N'2017-03-18T13:13:18.713' AS DateTime))
GO
INSERT [dbo].[participanteCite] ([codigo], [apellido_pat], [apellido_mat], [nombres], [fecha_nacimiento], [estado_civ], [dni_ce], [sexo], [direccion], [ubigeo], [tel_fijo], [tel_mol], [ope_movil], [tel_fijo2], [tel_mol2], [ope_movil2], [email], [profe_ocupa], [profocu_esp], [redm], [createat], [updateat]) VALUES (N'P0003', N'GIRALDO', N'VEGA', N'CARLOS', N'', N'SOLTERO', N'71345788', N'M', N'LIMA', N'110104', N'(056)252-222', N'(056)975-555-555', N'BITEL', N'(056)   -', N'(056)   -   -', N'', N'ngiraldo@yahoo.com', N'CARPINTERO', N'', N'SI', CAST(N'2017-03-20T10:33:53.973' AS DateTime), CAST(N'2017-03-20T10:33:53.973' AS DateTime))
GO
INSERT [dbo].[participanteCite] ([codigo], [apellido_pat], [apellido_mat], [nombres], [fecha_nacimiento], [estado_civ], [dni_ce], [sexo], [direccion], [ubigeo], [tel_fijo], [tel_mol], [ope_movil], [tel_fijo2], [tel_mol2], [ope_movil2], [email], [profe_ocupa], [profocu_esp], [redm], [createat], [updateat]) VALUES (N'P0004', N'BARRA', N'REYNOSO', N'MIGUEL', N'15/12/1885', N'CASADO', N'471234568', N'M', N'JR. ARICA S/N', N'021601', N'(043)425-157', N'(043)968-454-154', N'BITEL', N'(043)   -', N'(043)   -   -', N'', N'barrarey@san.net', N'OTROS', N'PROFESOR', N'NO', CAST(N'2017-03-20T11:09:47.757' AS DateTime), CAST(N'2017-03-20T11:09:47.757' AS DateTime))
GO
INSERT [dbo].[participanteCite] ([codigo], [apellido_pat], [apellido_mat], [nombres], [fecha_nacimiento], [estado_civ], [dni_ce], [sexo], [direccion], [ubigeo], [tel_fijo], [tel_mol], [ope_movil], [tel_fijo2], [tel_mol2], [ope_movil2], [email], [profe_ocupa], [profocu_esp], [redm], [createat], [updateat]) VALUES (N'P0005', N'PATERNO', N'PATERNO', N'NOMBRE', N'15/12/1978', N'CASADO', N'73214568', N'M', N'DIRECCION', N'150114', N'(001)111-1111', N'(001)222-222-222', N'MOVISTAR', N'(001)333-3333', N'(001)444-444-444', N'CLARO', N'correo@gmail.com', N'EBANISTA', N'', N'NO', CAST(N'2017-03-20T11:28:45.233' AS DateTime), CAST(N'2017-03-20T13:02:12.990' AS DateTime))
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'01', N'AMAZONAS', N'041')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'02', N'ANCASH', N'043')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'03', N'APURÍMAC', N'083')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'04', N'AREQUIPA', N'054')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'05', N'AYACUCHO', N'066')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'06', N'CAJAMARCA', N'076')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'07', N'CALLAO', N'001')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'08', N'CUSCO', N'084')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'09', N'HUANCAVELICA', N'067')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'10', N'HUÁNUCO', N'062')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'11', N'ICA', N'056')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'12', N'JUNÍN', N'064')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'13', N'LA LIBERTAD', N'044')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'14', N'LAMBAYEQUE', N'074')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'15', N'LIMA', N'001')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'16', N'LORETO', N'065')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'17', N'MADRE DE DIOS', N'082')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'18', N'MOQUEGUA', N'053')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'19', N'PASCO', N'063')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'20', N'PIURA', N'073')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'21', N'PUNO', N'051')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'22', N'SAN MARTÍN', N'042')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'23', N'TACNA', N'052')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'24', N'TUMBES', N'072')
GO
INSERT [dbo].[ubDepartamento] ([idDep], [Departamento], [codTelef]) VALUES (N'25', N'UCAYALI', N'061')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'01', N'CHACHAPOYAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'02', N'HUARAZ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'03', N'ABANCAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'04', N'AREQUIPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'05', N'AYACUCHO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'06', N'CAJAMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'07', N'CALLAO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'08', N'CUSCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'09', N'HUANCAVELICA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'10', N'HUANUCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'11', N'ICA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'12', N'HUANCAYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'13', N'TRUJILLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'14', N'CHICLAYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'15', N'LIMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'16', N'IQUITOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'17', N'TAMBOPATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'18', N'MOQUEGUA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'19', N'CHAUPIMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'20', N'PIURA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'21', N'PUNO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'22', N'MOYOBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'23', N'TACNA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'24', N'TUMBES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'01', N'25', N'CALLERIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'01', N'BAGUA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'02', N'AIJA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'03', N'ANDAHUAYLAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'04', N'CAMANÁ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'05', N'CANGALLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'06', N'CAJABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'08', N'ACOMAYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'09', N'ACOBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'10', N'AMBO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'11', N'CHINCHA ALTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'12', N'CONCEPCIÓN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'13', N'ASCOPE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'14', N'FERREÑAFE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'15', N'BARRANCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'16', N'YURIMAGUAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'17', N'MANU')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'18', N'OMATE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'19', N'YANAHUANCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'20', N'AYABACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'21', N'AZÁNGARO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'22', N'BELLAVISTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'23', N'CANDARAVE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'24', N'ZORRITOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'02', N'25', N'RAYMONDI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'01', N'JUMBILLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'02', N'LLAMELLIN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'03', N'ANTABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'04', N'CARAVELÍ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'05', N'SANCOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'06', N'CELENDÍN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'08', N'ANTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'09', N'LIRCAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'10', N'LA UNIÓN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'11', N'NASCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'12', N'CHANCHAMAYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'13', N'BOLÍVAR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'14', N'LAMBAYEQUE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'15', N'CAJATAMBO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'16', N'NAUTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'17', N'IÑAPARI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'18', N'ILO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'19', N'OXAPAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'20', N'HUANCABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'21', N'MACUSANI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'22', N'SAN JOSÉ DE SISA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'23', N'LOCUMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'24', N'ZARUMILLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'03', N'25', N'PADRE ABAD')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'04', N'01', N'NIEVA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'04', N'02', N'CHACAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'04', N'03', N'CHALHUANCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'04', N'04', N'APLAO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'04', N'05', N'HUANTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'04', N'06', N'CHOTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'04', N'08', N'CALCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'04', N'09', N'CASTROVIRREYNA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'04', N'10', N'HUACAYBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'04', N'11', N'PALPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'04', N'12', N'JAUJA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'04', N'13', N'CHEPEN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'04', N'15', N'CANTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'04', N'16', N'RAMÓN CASTILLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'04', N'20', N'CHULUCANAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'04', N'21', N'JULI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'04', N'22', N'SAPOSOA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'04', N'23', N'TARATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'04', N'25', N'PURUS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'05', N'01', N'LAMUD')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'05', N'02', N'CHIQUIAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'05', N'03', N'TAMBOBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'05', N'04', N'CHIVAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'05', N'05', N'SAN MIGUEL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'05', N'06', N'CONTUMAZA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'05', N'08', N'YANAOCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'05', N'09', N'CHURCAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'05', N'10', N'LLATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'05', N'11', N'PISCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'05', N'12', N'JUNIN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'05', N'13', N'JULCAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'05', N'15', N'SAN VICENTE DE CAÑETE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'05', N'16', N'REQUENA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'05', N'20', N'PAITA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'05', N'21', N'ILAVE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'05', N'22', N'LAMAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'06', N'01', N'SAN NICOLÁS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'06', N'02', N'CARHUAZ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'06', N'03', N'CHINCHEROS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'06', N'04', N'CHUQUIBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'06', N'05', N'PUQUIO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'06', N'06', N'CUTERVO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'06', N'08', N'SICUANI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'06', N'09', N'HUAYTARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'06', N'10', N'RUPA-RUPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'06', N'12', N'SATIPO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'06', N'13', N'OTUZCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'06', N'15', N'HUARAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'06', N'16', N'CONTAMANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'06', N'20', N'SULLANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'06', N'21', N'HUANCANE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'06', N'22', N'JUANJUÍ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'07', N'01', N'BAGUA GRANDE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'07', N'02', N'SAN LUIS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'07', N'03', N'CHUQUIBAMBILLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'07', N'04', N'MOLLENDO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'07', N'05', N'CORACORA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'07', N'06', N'BAMBAMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'07', N'08', N'SANTO TOMAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'07', N'09', N'PAMPAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'07', N'10', N'HUACRACHUCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'07', N'12', N'TARMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'07', N'13', N'SAN PEDRO DE LLOC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'07', N'15', N'MATUCANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'07', N'16', N'BARRANCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'07', N'20', N'PARIÑAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'07', N'21', N'LAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'07', N'22', N'PICOTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'08', N'02', N'CASMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'08', N'04', N'COTAHUASI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'08', N'05', N'PAUSA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'08', N'06', N'JAÉN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'08', N'08', N'ESPINAR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'08', N'10', N'PANAO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'08', N'12', N'LA OROYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'08', N'13', N'TAYABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'08', N'15', N'HUACHO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'08', N'16', N'PUTUMAYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'08', N'20', N'SECHURA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'08', N'21', N'AYAVIRI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'08', N'22', N'RIOJA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'09', N'02', N'CORONGO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'09', N'05', N'QUEROBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'09', N'06', N'SAN IGNACIO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'09', N'08', N'SANTA ANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'09', N'10', N'PUERTO INCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'09', N'12', N'CHUPACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'09', N'13', N'HUAMACHUCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'09', N'15', N'OYON')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'09', N'21', N'MOHO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'09', N'22', N'TARAPOTO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'10', N'02', N'HUARI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'10', N'05', N'HUANCAPI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'10', N'06', N'PEDRO GÁLVEZ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'10', N'08', N'PARURO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'10', N'10', N'JESÚS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'10', N'13', N'SANTIAGO DE CHUCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'10', N'15', N'YAUYOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'10', N'21', N'PUTINA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'10', N'22', N'TOCACHE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'11', N'02', N'HUARMEY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'11', N'05', N'VILCAS HUAMAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'11', N'06', N'SAN MIGUEL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'11', N'08', N'PAUCARTAMBO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'11', N'10', N'CHAVINILLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'11', N'13', N'CASCAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'11', N'21', N'JULIACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'12', N'02', N'CARAZ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'12', N'06', N'SAN PABLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'12', N'08', N'URCOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'12', N'13', N'VIRU')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'12', N'21', N'SANDIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'13', N'02', N'PISCOBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'13', N'06', N'SANTA CRUZ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'13', N'08', N'URUBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'13', N'21', N'YUNGUYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'14', N'02', N'OCROS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'15', N'02', N'CABANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'16', N'02', N'POMABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'17', N'02', N'RECUAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'18', N'02', N'CHIMBOTE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'19', N'02', N'SIHUAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'01', N'20', N'02', N'YUNGAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'01', N'ASUNCIÓN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'02', N'COCHABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'03', N'CHACOCHE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'04', N'ALTO SELVA ALEGRE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'05', N'ACOCRO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'06', N'ASUNCIÓN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'07', N'BELLAVISTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'08', N'CCORCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'09', N'ACOBAMBILLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'10', N'AMARILIS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'11', N'LA TINGUIÑA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'13', N'EL PORVENIR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'14', N'CHONGOYAPE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'15', N'ANCÓN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'16', N'ALTO NANAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'17', N'INAMBARI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'18', N'CARUMAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'19', N'HUACHON')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'21', N'ACORA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'22', N'CALZADA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'23', N'ALTO DE LA ALIANZA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'24', N'CORRALES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'01', N'25', N'CAMPOVERDE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'01', N'ARAMANGO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'02', N'CORIS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'03', N'ANDARAPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'04', N'JOSÉ MARÍA QUIMPER')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'05', N'CHUSCHI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'06', N'CACHACHI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'08', N'ACOPIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'09', N'ANDABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'10', N'CAYNA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'11', N'ALTO LARAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'12', N'ACO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'13', N'CHICAMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'14', N'CAÑARIS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'15', N'PARAMONGA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'16', N'BALSAPUERTO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'17', N'FITZCARRALD')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'18', N'CHOJATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'19', N'CHACAYAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'20', N'FRIAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'21', N'ACHAYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'22', N'ALTO BIAVO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'23', N'CAIRANI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'24', N'CASITAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'02', N'25', N'SEPAHUA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'01', N'CHISQUILLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'02', N'ACZO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'03', N'EL ORO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'04', N'ACARÍ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'05', N'CARAPO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'06', N'CHUMUCH')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'08', N'ANCAHUASI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'09', N'ANCHONGA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'11', N'CHANGUILLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'12', N'PERENE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'13', N'BAMBAMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'14', N'CHOCHOPE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'15', N'COPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'16', N'PARINARI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'17', N'IBERIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'18', N'EL ALGARROBAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'19', N'CHONTABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'20', N'CANCHAQUE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'21', N'AJOYANI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'22', N'AGUA BLANCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'23', N'ILABAYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'24', N'AGUAS VERDES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'03', N'25', N'IRAZOLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'04', N'01', N'EL CENEPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'04', N'02', N'ACOCHACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'04', N'03', N'CAPAYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'04', N'04', N'ANDAGUA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'04', N'05', N'AYAHUANCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'04', N'06', N'ANGUIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'04', N'08', N'COYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'04', N'09', N'ARMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'04', N'10', N'CANCHABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'04', N'11', N'LLIPATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'04', N'12', N'ACOLLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'04', N'13', N'PACANGA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'04', N'15', N'ARAHUAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'04', N'16', N'PEBAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'04', N'20', N'BUENOS AIRES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'04', N'21', N'DESAGUADERO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'04', N'22', N'ALTO SAPOSOA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'04', N'23', N'HÉROES ALBARRACÍN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'05', N'01', N'CAMPORREDONDO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'05', N'02', N'ABELARDO PARDO LEZAMETA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'05', N'03', N'COTABAMBAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'05', N'04', N'ACHOMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'05', N'05', N'ANCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'05', N'06', N'CHILETE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'05', N'08', N'CHECCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'05', N'09', N'ANCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'05', N'10', N'ARANCAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'05', N'11', N'HUANCANO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'05', N'12', N'CARHUAMAYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'05', N'13', N'CALAMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'05', N'15', N'ASIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'05', N'16', N'ALTO TAPICHE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'05', N'20', N'AMOTAPE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'05', N'21', N'CAPAZO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'05', N'22', N'ALONSO DE ALVARADO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'06', N'01', N'CHIRIMOTO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'06', N'02', N'ACOPAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'06', N'03', N'ANCO_HUALLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'06', N'04', N'ANDARAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'06', N'05', N'AUCARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'06', N'06', N'CALLAYUC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'06', N'08', N'CHECACUPE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'06', N'09', N'AYAVI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'06', N'10', N'DANIEL ALOMÍA ROBLES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'06', N'12', N'COVIRIALI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'06', N'13', N'AGALLPAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'06', N'15', N'ATAVILLOS ALTO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'06', N'16', N'INAHUAYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'06', N'20', N'BELLAVISTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'06', N'21', N'COJATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'06', N'22', N'CAMPANILLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'07', N'01', N'CAJARURO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'07', N'02', N'SAN NICOLÁS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'07', N'03', N'CURPAHUASI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'07', N'04', N'COCACHACRA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'07', N'05', N'CHUMPI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'07', N'06', N'CHUGUR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'07', N'08', N'CAPACMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'07', N'09', N'ACOSTAMBO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'07', N'10', N'CHOLON')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'07', N'12', N'ACOBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'07', N'13', N'GUADALUPE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'07', N'15', N'ANTIOQUIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'07', N'16', N'CAHUAPANAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'07', N'20', N'EL ALTO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'07', N'21', N'CABANILLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'07', N'22', N'BUENOS AIRES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'08', N'02', N'BUENA VISTA ALTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'08', N'04', N'ALCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'08', N'05', N'COLTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'08', N'06', N'BELLAVISTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'08', N'08', N'CONDOROMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'08', N'10', N'CHAGLLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'08', N'12', N'CHACAPALPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'08', N'13', N'BULDIBUYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'08', N'15', N'AMBAR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'08', N'16', N'ROSA PANDURO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'08', N'20', N'BELLAVISTA DE LA UNIÓN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'08', N'21', N'ANTAUTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'08', N'22', N'AWAJUN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'09', N'02', N'ACO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'09', N'05', N'BELÉN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'09', N'06', N'CHIRINOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'09', N'08', N'ECHARATE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'09', N'10', N'CODO DEL POZUZO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'09', N'12', N'AHUAC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'09', N'13', N'CHUGAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'09', N'15', N'ANDAJES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'09', N'21', N'CONIMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'09', N'22', N'ALBERTO LEVEAU')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'10', N'02', N'ANRA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'10', N'05', N'ALCAMENCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'10', N'06', N'CHANCAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'10', N'08', N'ACCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'10', N'10', N'BAÑOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'10', N'13', N'ANGASMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'10', N'15', N'ALIS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'10', N'21', N'ANANEA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'10', N'22', N'NUEVO PROGRESO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'11', N'02', N'COCHAPETI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'11', N'05', N'ACCOMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'11', N'06', N'BOLÍVAR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'11', N'08', N'CAICAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'11', N'10', N'CAHUAC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'11', N'13', N'LUCMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'11', N'21', N'CABANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'12', N'02', N'HUALLANCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'12', N'06', N'SAN BERNARDINO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'12', N'08', N'ANDAHUAYLILLAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'12', N'13', N'CHAO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'12', N'21', N'CUYOCUYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'13', N'02', N'CASCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'13', N'06', N'ANDABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'13', N'08', N'CHINCHERO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'13', N'21', N'ANAPIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'14', N'02', N'ACAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'15', N'02', N'BOLOGNESI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'16', N'02', N'HUAYLLAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'17', N'02', N'CATAC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'18', N'02', N'CÁCERES DEL PERÚ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'19', N'02', N'ACOBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'02', N'20', N'02', N'CASCAPARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'01', N'BALSAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'02', N'COLCABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'03', N'CIRCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'04', N'CAYMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'05', N'ACOS VINCHOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'06', N'CHETILLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'07', N'CARMEN DE LA LEGUA REYNOSO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'08', N'POROY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'09', N'ACORIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'10', N'CHINCHAO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'11', N'LOS AQUIJES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'13', N'FLORENCIA DE MORA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'14', N'ETEN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'15', N'ATE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'16', N'FERNANDO LORES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'17', N'LAS PIEDRAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'18', N'CUCHUMBAYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'19', N'HUARIACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'21', N'AMANTANI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'22', N'HABANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'23', N'CALANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'24', N'LA CRUZ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'01', N'25', N'IPARIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'01', N'COPALLIN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'02', N'HUACLLAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'03', N'CHIARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'04', N'MARIANO NICOLÁS VALCÁRCEL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'05', N'LOS MOROCHUCOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'06', N'CONDEBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'08', N'ACOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'09', N'ANTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'10', N'COLPAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'11', N'CHAVIN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'12', N'ANDAMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'13', N'CHOCOPE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'14', N'INCAHUASI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'15', N'PATIVILCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'17', N'MADRE DE DIOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'18', N'COALAQUE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'19', N'GOYLLARISQUIZGA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'20', N'JILILI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'21', N'ARAPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'22', N'BAJO BIAVO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'23', N'CAMILACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'24', N'CANOAS DE PUNTA SAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'02', N'25', N'TAHUANIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'01', N'CHURUJA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'02', N'CHACCHO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'03', N'HUAQUIRCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'04', N'ATICO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'05', N'SACSAMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'06', N'CORTEGANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'08', N'CACHIMAYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'09', N'CALLANMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'11', N'EL INGENIO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'12', N'PICHANAQUI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'13', N'CONDORMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'14', N'ILLIMO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'15', N'GORGOR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'16', N'TIGRE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'17', N'TAHUAMANU')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'18', N'PACOCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'19', N'HUANCABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'20', N'EL CARMEN DE LA FRONTERA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'21', N'AYAPATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'22', N'SAN MARTÍN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'23', N'ITE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'24', N'MATAPALO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'03', N'25', N'CURIMANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'04', N'01', N'RÍO SANTIAGO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'04', N'03', N'CARAYBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'04', N'04', N'AYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'04', N'05', N'HUAMANGUILLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'04', N'06', N'CHADIN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'04', N'08', N'LAMAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'04', N'09', N'AURAHUA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'04', N'10', N'COCHABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'04', N'11', N'RÍO GRANDE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'04', N'12', N'APATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'04', N'13', N'PUEBLO NUEVO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'04', N'15', N'HUAMANTANGA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'04', N'16', N'YAVARI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'04', N'20', N'CHALACO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'04', N'21', N'HUACULLANI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'04', N'22', N'EL ESLABÓN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'04', N'23', N'ESTIQUE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'05', N'01', N'COCABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'05', N'02', N'ANTONIO RAYMONDI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'05', N'03', N'COYLLURQUI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'05', N'04', N'CABANACONDE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'05', N'05', N'AYNA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'05', N'06', N'CUPISNIQUE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'05', N'08', N'KUNTURKANKI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'05', N'09', N'CHINCHIHUASI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'05', N'10', N'CHAVÍN DE PARIARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'05', N'11', N'HUMAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'05', N'12', N'ONDORES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'05', N'13', N'CARABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'05', N'15', N'CALANGO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'05', N'16', N'CAPELO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'05', N'20', N'ARENAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'05', N'21', N'PILCUYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'05', N'22', N'BARRANQUITA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'06', N'01', N'COCHAMAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'06', N'02', N'AMASHCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'06', N'03', N'COCHARCAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'06', N'04', N'CAYARANI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'06', N'05', N'CABANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'06', N'06', N'CHOROS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'06', N'08', N'COMBAPATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'06', N'09', N'CÓRDOVA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'06', N'10', N'HERMÍLIO VALDIZAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'06', N'12', N'LLAYLLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'06', N'15', N'ATAVILLOS BAJO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'06', N'16', N'PADRE MÁRQUEZ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'06', N'20', N'IGNACIO ESCUDERO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'06', N'21', N'HUATASANI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'06', N'22', N'HUICUNGO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'07', N'01', N'CUMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'07', N'02', N'YAUYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'07', N'03', N'GAMARRA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'07', N'04', N'DEAN VALDIVIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'07', N'05', N'CORONEL CASTAÑEDA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'07', N'06', N'HUALGAYOC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'07', N'08', N'CHAMACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'07', N'09', N'ACRAQUIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'07', N'10', N'SAN BUENAVENTURA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'07', N'12', N'HUARICOLCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'07', N'13', N'JEQUETEPEQUE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'07', N'15', N'CALLAHUANCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'07', N'16', N'MANSERICHE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'07', N'20', N'LA BREA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'07', N'21', N'CALAPUJA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'07', N'22', N'CASPISAPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'08', N'02', N'COMANDANTE NOEL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'08', N'04', N'CHARCANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'08', N'05', N'CORCULLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'08', N'06', N'CHONTALI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'08', N'08', N'COPORAQUE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'08', N'10', N'MOLINO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'08', N'12', N'HUAY-HUAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'08', N'13', N'CHILLIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'08', N'15', N'CALETA DE CARQUIN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'08', N'16', N'TENIENTE MANUEL CLAVERO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'08', N'20', N'BERNAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'08', N'21', N'CUPI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'08', N'22', N'ELÍAS SOPLIN VARGAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'09', N'02', N'BAMBAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'09', N'05', N'CHALCOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'09', N'06', N'HUARANGO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'09', N'08', N'HUAYOPATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'09', N'10', N'HONORIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'09', N'12', N'CHONGOS BAJO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'09', N'13', N'COCHORCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'09', N'15', N'CAUJUL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'09', N'21', N'HUAYRAPATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'09', N'22', N'CACATACHI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'10', N'02', N'CAJAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'10', N'05', N'APONGO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'10', N'06', N'EDUARDO VILLANUEVA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'10', N'08', N'CCAPI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'10', N'10', N'JIVIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'10', N'13', N'CACHICADAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'10', N'15', N'ALLAUCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'10', N'21', N'PEDRO VILCA APAZA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'10', N'22', N'POLVORA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'11', N'02', N'CULEBRAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'11', N'05', N'CARHUANCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'11', N'06', N'CALQUIS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'11', N'08', N'CHALLABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'11', N'10', N'CHACABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'11', N'13', N'MARMOT')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'11', N'21', N'CABANILLAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'12', N'02', N'HUATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'12', N'06', N'SAN LUIS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'12', N'08', N'CAMANTI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'12', N'13', N'GUADALUPITO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'12', N'21', N'LIMBANI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'13', N'02', N'ELEAZAR GUZMÁN BARRON')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'13', N'06', N'CATACHE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'13', N'08', N'HUAYLLABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'13', N'21', N'COPANI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'14', N'02', N'CAJAMARQUILLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'15', N'02', N'CONCHUCOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'16', N'02', N'PAROBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'17', N'02', N'COTAPARACO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'18', N'02', N'COISHCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'19', N'02', N'ALFONSO UGARTE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'03', N'20', N'02', N'MANCOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'01', N'CHETO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'02', N'HUANCHAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'03', N'CURAHUASI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'04', N'CERRO COLORADO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'05', N'CARMEN ALTO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'06', N'COSPAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'07', N'LA PERLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'08', N'SAN JERÓNIMO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'09', N'CONAYCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'10', N'CHURUBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'11', N'OCUCAJE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'12', N'CARHUACALLANGA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'13', N'HUANCHACO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'14', N'ETEN PUERTO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'15', N'BARRANCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'16', N'INDIANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'17', N'LABERINTO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'18', N'SAMEGUA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'19', N'HUAYLLAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'20', N'CASTILLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'21', N'ATUNCOLLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'22', N'JEPELACIO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'23', N'CIUDAD NUEVA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'24', N'PAMPAS DE HOSPITAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'01', N'25', N'MASISEA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'02', N'01', N'EL PARCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'02', N'02', N'LA MERCED')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'02', N'03', N'HUANCARAMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'02', N'04', N'MARISCAL CÁCERES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'02', N'05', N'MARÍA PARADO DE BELLIDO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'02', N'06', N'SITACOCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'02', N'08', N'MOSOC LLACTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'02', N'09', N'CAJA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'02', N'10', N'CONCHAMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'02', N'11', N'CHINCHA BAJA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'02', N'12', N'CHAMBARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'02', N'13', N'MAGDALENA DE CAO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'02', N'14', N'MANUEL ANTONIO MESONES MURO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'02', N'15', N'SUPE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'02', N'17', N'HUEPETUHE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'02', N'18', N'ICHUÑA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'02', N'19', N'PAUCAR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'02', N'20', N'LAGUNAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'02', N'21', N'ASILLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'02', N'22', N'HUALLAGA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'02', N'23', N'CURIBAYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'02', N'25', N'YURUA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'03', N'01', N'COROSHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'03', N'02', N'CHINGAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'03', N'03', N'JUAN ESPINOZA MEDRANO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'03', N'04', N'ATIQUIPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'03', N'05', N'SANTIAGO DE LUCANAMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'03', N'06', N'HUASMIN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'03', N'08', N'CHINCHAYPUJIO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'03', N'09', N'CCOCHACCASA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'03', N'11', N'MARCONA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'03', N'12', N'SAN LUIS DE SHUARO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'03', N'13', N'LONGOTEA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'03', N'14', N'JAYANCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'03', N'15', N'HUANCAPON')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'03', N'16', N'TROMPETEROS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'03', N'19', N'PALCAZU')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'03', N'20', N'HUARMACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'03', N'21', N'COASA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'03', N'22', N'SANTA ROSA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'03', N'24', N'PAPAYAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'03', N'25', N'NESHUYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'04', N'03', N'CHAPIMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'04', N'04', N'CHACHAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'04', N'05', N'IGUAIN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'04', N'06', N'CHIGUIRIP')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'04', N'08', N'LARES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'04', N'09', N'CAPILLAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'04', N'10', N'PINRA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'04', N'11', N'SANTA CRUZ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'04', N'12', N'ATAURA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'04', N'15', N'HUAROS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'04', N'16', N'SAN PABLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'04', N'20', N'LA MATANZA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'04', N'21', N'KELLUYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'04', N'22', N'PISCOYACU')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'04', N'23', N'ESTIQUE-PAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'05', N'01', N'COLCAMAR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'05', N'02', N'AQUIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'05', N'03', N'HAQUIRA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'05', N'04', N'CALLALLI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'05', N'05', N'CHILCAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'05', N'06', N'GUZMANGO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'05', N'08', N'LANGUI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'05', N'09', N'EL CARMEN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'05', N'10', N'JACAS GRANDE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'05', N'11', N'INDEPENDENCIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'05', N'12', N'ULCUMAYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'05', N'13', N'HUASO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'05', N'15', N'CERRO AZUL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'05', N'16', N'EMILIO SAN MARTÍN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'05', N'20', N'COLAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'05', N'21', N'SANTA ROSA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'05', N'22', N'CAYNARACHI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'06', N'01', N'HUAMBO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'06', N'02', N'ANTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'06', N'03', N'HUACCANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'06', N'04', N'CHICHAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'06', N'05', N'CARMEN SALCEDO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'06', N'06', N'CUJILLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'06', N'08', N'MARANGANI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'06', N'09', N'HUAYACUNDO ARMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'06', N'10', N'JOSÉ CRESPO Y CASTILLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'06', N'12', N'MAZAMARI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'06', N'13', N'CHARAT')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'06', N'15', N'AUCALLAMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'06', N'16', N'PAMPA HERMOSA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'06', N'20', N'LANCONES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'06', N'21', N'INCHUPALLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'06', N'22', N'PACHIZA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'07', N'01', N'EL MILAGRO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'07', N'03', N'HUAYLLATI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'07', N'04', N'ISLAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'07', N'05', N'PACAPAUSA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'07', N'08', N'COLQUEMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'07', N'09', N'AHUAYCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'07', N'12', N'HUASAHUASI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'07', N'13', N'PACASMAYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'07', N'15', N'CARAMPOMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'07', N'16', N'MORONA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'07', N'20', N'LOBITOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'07', N'21', N'NICASIO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'07', N'22', N'PILLUANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'08', N'02', N'YAUTAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'08', N'04', N'HUAYNACOTAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'08', N'05', N'LAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'08', N'06', N'COLASAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'08', N'08', N'OCORURO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'08', N'10', N'UMARI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'08', N'12', N'MARCAPOMACOCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'08', N'13', N'HUANCASPATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'08', N'15', N'CHECRAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'08', N'16', N'YAGUAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'08', N'20', N'CRISTO NOS VALGA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'08', N'21', N'LLALLI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'08', N'22', N'NUEVA CAJAMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'09', N'02', N'CUSCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'09', N'05', N'CHILCAYOC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'09', N'06', N'LA COIPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'09', N'08', N'MARANURA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'09', N'10', N'TOURNAVISTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'09', N'12', N'HUACHAC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'09', N'13', N'CURGOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'09', N'15', N'COCHAMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'09', N'21', N'TILALI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'09', N'22', N'CHAZUTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'10', N'02', N'CHAVIN DE HUANTAR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'10', N'05', N'ASQUIPATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'10', N'06', N'GREGORIO PITA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'10', N'08', N'COLCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'10', N'10', N'QUEROPALCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'10', N'13', N'MOLLEBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'10', N'15', N'AYAVIRI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'10', N'21', N'QUILCAPUNCU')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'10', N'22', N'SHUNTE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'11', N'02', N'HUAYAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'11', N'05', N'CONCEPCIÓN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'11', N'06', N'CATILLUC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'11', N'08', N'COLQUEPATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'11', N'10', N'APARICIO POMARES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'11', N'13', N'SAYAPULLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'11', N'21', N'CARACOTO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'12', N'02', N'HUAYLAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'12', N'06', N'TUMBADEN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'12', N'08', N'CCARHUAYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'12', N'21', N'PATAMBUCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'13', N'02', N'FIDEL OLIVAS ESCUDERO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'13', N'06', N'CHANCAYBAÑOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'13', N'08', N'MACHUPICCHU')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'13', N'21', N'CUTURAPI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'14', N'02', N'CARHUAPAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'15', N'02', N'HUACASCHUQUE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'16', N'02', N'QUINUABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'17', N'02', N'HUAYLLAPAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'18', N'02', N'MACATE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'19', N'02', N'CASHAPAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'04', N'20', N'02', N'MATACOTO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'01', N'CHILIQUIN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'02', N'INDEPENDENCIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'03', N'HUANIPACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'04', N'CHARACATO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'05', N'CHIARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'06', N'ENCAÑADA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'07', N'LA PUNTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'08', N'SAN SEBASTIAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'09', N'CUENCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'10', N'MARGOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'11', N'PACHACUTEC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'12', N'CHACAPAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'13', N'LA ESPERANZA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'14', N'JOSÉ LEONARDO ORTIZ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'15', N'BREÑA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'16', N'LAS AMAZONAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'18', N'SAN CRISTÓBAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'19', N'NINACACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'20', N'ATACAOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'21', N'CAPACHICA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'22', N'SORITOR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'23', N'INCLAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'24', N'SAN JACINTO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'01', N'25', N'YARINACOCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'02', N'01', N'IMAZA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'02', N'02', N'SUCCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'02', N'03', N'HUANCARAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'02', N'04', N'NICOLÁS DE PIEROLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'02', N'05', N'PARAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'02', N'08', N'POMACANCHI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'02', N'09', N'MARCAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'02', N'10', N'HUACAR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'02', N'11', N'EL CARMEN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'02', N'12', N'COCHAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'02', N'13', N'PAIJAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'02', N'14', N'PITIPO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'02', N'15', N'SUPE PUERTO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'02', N'16', N'JEBEROS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'02', N'18', N'LA CAPILLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'02', N'19', N'SAN PEDRO DE PILLAO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'02', N'20', N'MONTERO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'02', N'21', N'CAMINACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'02', N'22', N'SAN PABLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'02', N'23', N'HUANUARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'03', N'01', N'CUISPES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'03', N'02', N'MIRGAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'03', N'03', N'OROPESA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'03', N'04', N'BELLA UNIÓN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'03', N'06', N'JORGE CHÁVEZ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'03', N'08', N'HUAROCONDO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'03', N'09', N'CHINCHO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'03', N'11', N'VISTA ALEGRE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'03', N'12', N'SAN RAMÓN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'03', N'13', N'UCHUMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'03', N'14', N'MOCHUMI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'03', N'15', N'MANAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'03', N'16', N'URARINAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'03', N'19', N'POZUZO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'03', N'20', N'LALAQUIZ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'03', N'21', N'CORANI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'03', N'22', N'SHATOJA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'03', N'25', N'ALEXANDER VON HUMBOLDT')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'04', N'03', N'COLCABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'04', N'04', N'CHILCAYMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'04', N'05', N'LURICOCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'04', N'06', N'CHIMBAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'04', N'08', N'PISAC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'04', N'09', N'CHUPAMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'04', N'11', N'TIBILLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'04', N'12', N'CANCHAYLLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'04', N'15', N'LACHAQUI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'04', N'20', N'MORROPON')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'04', N'21', N'PISACOMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'04', N'22', N'SACANCHE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'04', N'23', N'SITAJARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'05', N'01', N'CONILA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'05', N'02', N'CAJACAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'05', N'03', N'MARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'05', N'04', N'CAYLLOMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'05', N'05', N'CHUNGUI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'05', N'06', N'SAN BENITO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'05', N'08', N'LAYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'05', N'09', N'LA MERCED')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'05', N'10', N'JIRCAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'05', N'11', N'PARACAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'05', N'15', N'CHILCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'05', N'16', N'MAQUIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'05', N'20', N'LA HUACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'05', N'21', N'CONDURIRI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'05', N'22', N'CUÑUMBUQUI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'06', N'01', N'LIMABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'06', N'02', N'ATAQUERO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'06', N'03', N'OCOBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'06', N'04', N'IRAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'06', N'05', N'CHAVIÑA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'06', N'06', N'LA RAMADA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'06', N'08', N'PITUMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'06', N'09', N'LARAMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'06', N'10', N'LUYANDO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'06', N'12', N'PAMPA HERMOSA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'06', N'13', N'HUARANCHAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'06', N'15', N'CHANCAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'06', N'16', N'SARAYACU')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'06', N'20', N'MARCAVELICA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'06', N'21', N'PUSI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'06', N'22', N'PAJARILLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'07', N'01', N'JAMALCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'07', N'03', N'MAMARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'07', N'04', N'MEJIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'07', N'05', N'PULLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'07', N'08', N'LIVITACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'07', N'09', N'COLCABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'07', N'12', N'LA UNIÓN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'07', N'13', N'SAN JOSÉ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'07', N'15', N'CHICLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'07', N'16', N'PASTAZA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'07', N'20', N'LOS ORGANOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'07', N'21', N'OCUVIRI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'07', N'22', N'PUCACACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'08', N'04', N'PAMPAMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'08', N'05', N'MARCABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'08', N'06', N'HUABAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'08', N'08', N'PALLPATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'08', N'12', N'MOROCOCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'08', N'13', N'HUAYLILLAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'08', N'15', N'HUALMAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'08', N'20', N'VICE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'08', N'21', N'MACARI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'08', N'22', N'PARDO MIGUEL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'09', N'02', N'LA PAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'09', N'05', N'HUACAÑA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'09', N'06', N'NAMBALLE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'09', N'08', N'OCOBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'09', N'10', N'YUYAPICHIS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'09', N'12', N'HUAMANCACA CHICO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'09', N'13', N'MARCABAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'09', N'15', N'NAVAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'09', N'22', N'CHIPURANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'10', N'02', N'HUACACHI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'10', N'05', N'CANARIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'10', N'06', N'ICHOCAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'10', N'08', N'HUANOQUITE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'10', N'10', N'RONDOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'10', N'13', N'MOLLEPATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'10', N'15', N'AZÁNGARO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'10', N'21', N'SINA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'10', N'22', N'UCHIZA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'11', N'02', N'MALVAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'11', N'05', N'HUAMBALPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'11', N'06', N'EL PRADO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'11', N'08', N'HUANCARANI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'11', N'10', N'JACAS CHICO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'12', N'02', N'MATO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'12', N'08', N'CCATCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'12', N'21', N'PHARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'13', N'02', N'LLAMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'13', N'06', N'LA ESPERANZA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'13', N'08', N'MARAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'13', N'21', N'OLLARAYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'14', N'02', N'COCHAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'15', N'02', N'HUANDOVAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'17', N'02', N'LLACLLIN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'18', N'02', N'MORO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'19', N'02', N'CHINGALPO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'05', N'20', N'02', N'QUILLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'01', N'CHUQUIBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'02', N'JANGAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'03', N'LAMBRAMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'04', N'CHIGUATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'05', N'OCROS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'06', N'JESÚS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'07', N'VENTANILLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'08', N'SANTIAGO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'09', N'HUACHOCOLPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'10', N'QUISQUI (KICHKI)')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'11', N'PARCONA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'12', N'CHICCHE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'13', N'LAREDO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'14', N'LA VICTORIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'15', N'CARABAYLLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'16', N'MAZAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'18', N'TORATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'19', N'PALLANCHACRA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'21', N'CHUCUITO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'22', N'YANTALO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'23', N'PACHIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'24', N'SAN JUAN DE LA VIRGEN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'01', N'25', N'NUEVA REQUENA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'02', N'01', N'LA PECA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'02', N'03', N'HUAYANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'02', N'04', N'OCOÑA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'02', N'05', N'TOTOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'02', N'08', N'RONDOCAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'02', N'09', N'PAUCARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'02', N'10', N'SAN FRANCISCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'02', N'11', N'GROCIO PRADO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'02', N'12', N'COMAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'02', N'13', N'RÁZURI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'02', N'14', N'PUEBLO NUEVO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'02', N'16', N'LAGUNAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'02', N'18', N'LLOQUE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'02', N'19', N'SANTA ANA DE TUSI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'02', N'20', N'PACAIPAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'02', N'21', N'CHUPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'02', N'22', N'SAN RAFAEL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'02', N'23', N'QUILAHUANI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'03', N'01', N'FLORIDA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'03', N'02', N'SAN JUAN DE RONTOY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'03', N'03', N'PACHACONAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'03', N'04', N'CAHUACHO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'03', N'06', N'JOSÉ GÁLVEZ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'03', N'08', N'LIMATAMBO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'03', N'09', N'CONGALLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'03', N'12', N'VITOC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'03', N'13', N'UCUNCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'03', N'14', N'MORROPE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'03', N'19', N'PUERTO BERMÚDEZ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'03', N'20', N'SAN MIGUEL DE EL FAIQUE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'03', N'21', N'CRUCERO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'04', N'03', N'COTARUSE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'04', N'04', N'CHOCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'04', N'05', N'SANTILLANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'04', N'06', N'CHOROPAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'04', N'08', N'SAN SALVADOR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'04', N'09', N'COCAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'04', N'12', N'CURICACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'04', N'15', N'SAN BUENAVENTURA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'04', N'20', N'SALITRAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'04', N'21', N'POMATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'04', N'22', N'TINGO DE SAPOSOA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'04', N'23', N'SUSAPAYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'05', N'01', N'INGUILPATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'05', N'02', N'CANIS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'05', N'03', N'CHALLHUAHUACHO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'05', N'04', N'COPORAQUE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'05', N'05', N'LUIS CARRANZA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'05', N'06', N'SANTA CRUZ DE TOLEDO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'05', N'08', N'PAMPAMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'05', N'09', N'LOCROJA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'05', N'10', N'MIRAFLORES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'05', N'11', N'SAN ANDRÉS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'05', N'15', N'COAYLLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'05', N'16', N'PUINAHUA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'05', N'20', N'TAMARINDO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'05', N'22', N'PINTO RECODO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'06', N'01', N'LONGAR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'06', N'02', N'MARCARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'06', N'03', N'ONGOY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'06', N'04', N'RÍO GRANDE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'06', N'05', N'CHIPAO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'06', N'06', N'PIMPINGOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'06', N'08', N'SAN PABLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'06', N'09', N'OCOYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'06', N'10', N'MARIANO DAMASO BERAUN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'06', N'12', N'PANGOA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'06', N'13', N'LA CUESTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'06', N'15', N'IHUARI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'06', N'16', N'VARGAS GUERRA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'06', N'20', N'MIGUEL CHECA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'06', N'21', N'ROSASPATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'07', N'01', N'LONYA GRANDE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'07', N'03', N'MICAELA BASTIDAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'07', N'04', N'PUNTA DE BOMBÓN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'07', N'05', N'PUYUSCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'07', N'08', N'LLUSCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'07', N'09', N'DANIEL HERNÁNDEZ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'07', N'12', N'PALCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'07', N'15', N'CUENCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'07', N'16', N'ANDOAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'07', N'20', N'MANCORA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'07', N'21', N'PALCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'07', N'22', N'SAN CRISTÓBAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'08', N'04', N'PUYCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'08', N'05', N'OYOLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'08', N'06', N'LAS PIRIAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'08', N'08', N'PICHIGUA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'08', N'12', N'PACCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'08', N'13', N'HUAYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'08', N'15', N'HUAURA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'08', N'20', N'RINCONADA LLICUAR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'08', N'21', N'NUÑOA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'08', N'22', N'POSIC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'09', N'02', N'YANAC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'09', N'05', N'MORCOLLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'09', N'06', N'SAN JOSÉ DE LOURDES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'09', N'08', N'QUELLOUNO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'09', N'12', N'SAN JUAN DE ISCOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'09', N'13', N'SANAGORAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'09', N'15', N'PACHANGARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'09', N'22', N'EL PORVENIR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'10', N'02', N'HUACCHIS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'10', N'05', N'CAYARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'10', N'06', N'JOSÉ MANUEL QUIROZ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'10', N'08', N'OMACHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'10', N'10', N'SAN FRANCISCO DE ASÍS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'10', N'13', N'QUIRUVILCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'10', N'15', N'CACRA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'11', N'05', N'INDEPENDENCIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'11', N'06', N'LA FLORIDA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'11', N'08', N'KOSÑIPATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'11', N'10', N'OBAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'12', N'02', N'PAMPAROMAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'12', N'08', N'CUSIPATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'12', N'21', N'QUIACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'13', N'02', N'LLUMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'13', N'06', N'NINABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'13', N'08', N'OLLANTAYTAMBO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'13', N'21', N'TINICACHI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'14', N'02', N'CONGAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'15', N'02', N'LACABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'17', N'02', N'MARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'18', N'02', N'NEPEÑA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'19', N'02', N'HUAYLLABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'06', N'20', N'02', N'RANRAHIRCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'01', N'01', N'GRANADA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'01', N'02', N'LA LIBERTAD')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'01', N'03', N'PICHIRHUA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'01', N'04', N'JACOBO HUNTER')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'01', N'05', N'PACAYCASA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'01', N'06', N'LLACANORA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'01', N'07', N'MI PERÚ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'01', N'08', N'SAYLLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'01', N'09', N'HUAYLLAHUARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'01', N'10', N'SAN FRANCISCO DE CAYRAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'01', N'11', N'PUEBLO NUEVO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'01', N'12', N'CHILCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'01', N'13', N'MOCHE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'01', N'14', N'LAGUNAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'01', N'15', N'CHACLACAYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'01', N'16', N'NAPO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'01', N'19', N'PAUCARTAMBO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'01', N'20', N'CURA MORI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'01', N'21', N'COATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'01', N'23', N'PALCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'01', N'25', N'MANANTAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'02', N'03', N'KISHUARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'02', N'04', N'QUILCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'02', N'08', N'SANGARARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'02', N'09', N'POMACOCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'02', N'10', N'SAN RAFAEL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'02', N'11', N'PUEBLO NUEVO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'02', N'12', N'HEROÍNAS TOLEDO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'02', N'13', N'SANTIAGO DE CAO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'02', N'18', N'MATALAQUE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'02', N'19', N'TAPUC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'02', N'20', N'PAIMAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'02', N'21', N'JOSÉ DOMINGO CHOQUEHUANCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'03', N'01', N'JAZAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'03', N'03', N'SABAINO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'03', N'04', N'CHALA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'03', N'06', N'MIGUEL IGLESIAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'03', N'08', N'MOLLEPATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'03', N'09', N'HUANCA-HUANCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'03', N'10', N'CHUQUIS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'03', N'14', N'MOTUPE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'03', N'19', N'VILLA RICA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'03', N'20', N'SONDOR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'03', N'21', N'ITUATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'04', N'03', N'HUAYLLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'04', N'04', N'HUANCARQUI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'04', N'05', N'SIVIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'04', N'06', N'COCHABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'04', N'08', N'TARAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'04', N'09', N'HUACHOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'04', N'12', N'EL MANTARO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'04', N'15', N'SANTA ROSA DE QUIVES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'04', N'20', N'SAN JUAN DE BIGOTE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'04', N'21', N'ZEPITA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'04', N'23', N'TARUCACHI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'05', N'01', N'LONGUITA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'05', N'02', N'COLQUIOC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'05', N'04', N'HUAMBO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'05', N'05', N'SANTA ROSA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'05', N'06', N'TANTARICA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'05', N'08', N'QUEHUE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'05', N'09', N'PAUCARBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'05', N'10', N'MONZÓN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'05', N'11', N'SAN CLEMENTE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'05', N'15', N'IMPERIAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'05', N'16', N'SAQUENA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'05', N'20', N'VICHAYAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'05', N'22', N'RUMISAPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'06', N'01', N'MARISCAL BENAVIDES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'06', N'02', N'PARIAHUANCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'06', N'03', N'URANMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'06', N'04', N'SALAMANCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'06', N'05', N'HUAC-HUAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'06', N'06', N'QUEROCOTILLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'06', N'08', N'SAN PEDRO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'06', N'09', N'PILPICHACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'06', N'12', N'RÍO NEGRO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'06', N'15', N'LAMPIAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'06', N'20', N'QUERECOTILLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'06', N'21', N'TARACO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'07', N'01', N'YAMON')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'07', N'03', N'PATAYPAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'07', N'05', N'SAN FRANCISCO DE RAVACAYCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'07', N'08', N'QUIÑOTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'07', N'09', N'HUACHOCOLPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'07', N'12', N'PALCAMAYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'07', N'15', N'HUACHUPAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'07', N'21', N'PARATIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'07', N'22', N'SAN HILARIÓN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'08', N'04', N'QUECHUALLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'08', N'05', N'PARARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'08', N'06', N'POMAHUACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'08', N'08', N'SUYCKUTAMBO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'08', N'12', N'SANTA BÁRBARA DE CARHUACAYAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'08', N'13', N'ONGON')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'08', N'15', N'LEONCIO PRADO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'08', N'21', N'ORURILLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'08', N'22', N'SAN FERNANDO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'09', N'02', N'YUPAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'09', N'05', N'PAICO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'09', N'06', N'TABACONAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'09', N'08', N'KIMBIRI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'09', N'12', N'SAN JUAN DE JARPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'09', N'13', N'SARIN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'09', N'22', N'HUIMBAYOC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'10', N'02', N'HUACHIS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'10', N'05', N'COLCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'10', N'06', N'JOSÉ SABOGAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'10', N'08', N'PACCARITAMBO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'10', N'10', N'SAN MIGUEL DE CAURI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'10', N'13', N'SANTA CRUZ DE CHUCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'10', N'15', N'CARANIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'11', N'05', N'SAURAMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'11', N'06', N'LLAPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'11', N'10', N'PAMPAMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'12', N'02', N'PUEBLO LIBRE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'12', N'08', N'HUARO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'12', N'21', N'SAN JUAN DEL ORO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'13', N'02', N'LUCMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'13', N'06', N'PULAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'13', N'08', N'YUCAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'13', N'21', N'UNICACHI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'14', N'02', N'LLIPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'15', N'02', N'LLAPO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'17', N'02', N'PAMPAS CHICO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'18', N'02', N'SAMANCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'19', N'02', N'QUICHES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'07', N'20', N'02', N'SHUPLUY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'01', N'01', N'HUANCAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'01', N'02', N'OLLEROS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'01', N'03', N'SAN PEDRO DE CACHORA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'01', N'04', N'LA JOYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'01', N'05', N'QUINUA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'01', N'06', N'LOS BAÑOS DEL INCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'01', N'08', N'WANCHAQ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'01', N'09', N'IZCUCHACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'01', N'10', N'SAN PEDRO DE CHAULAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'01', N'11', N'SALAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'01', N'12', N'CHONGOS ALTO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'01', N'13', N'POROTO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'01', N'14', N'MONSEFU')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'01', N'15', N'CHORRILLOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'01', N'16', N'PUNCHANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'01', N'19', N'SAN FRANCISCO DE ASÍS DE YARUSYACAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'01', N'20', N'EL TALLAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'01', N'21', N'HUATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'01', N'23', N'POCOLLAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'02', N'03', N'PACOBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'02', N'04', N'SAMUEL PASTOR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'02', N'09', N'ROSARIO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'02', N'10', N'TOMAY KICHWA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'02', N'11', N'SAN JUAN DE YANAC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'02', N'12', N'MANZANARES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'02', N'13', N'CASA GRANDE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'02', N'18', N'PUQUINA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'02', N'19', N'VILCABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'02', N'20', N'SAPILLICA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'02', N'21', N'MUÑANI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'03', N'01', N'RECTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'03', N'04', N'CHAPARRA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'03', N'06', N'OXAMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'03', N'08', N'PUCYURA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'03', N'09', N'HUAYLLAY GRANDE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'03', N'14', N'OLMOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'03', N'19', N'CONSTITUCIÓN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'03', N'20', N'SONDORILLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'03', N'21', N'OLLACHEA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'04', N'03', N'JUSTO APU SAHUARAURA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'04', N'04', N'MACHAGUAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'04', N'05', N'LLOCHEGUA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'04', N'06', N'CONCHAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'04', N'08', N'YANATILE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'04', N'09', N'HUAMATAMBO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'04', N'12', N'HUAMALI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'04', N'20', N'SANTA CATALINA DE MOSSA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'04', N'23', N'TICACO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'05', N'01', N'LONYA CHICO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'05', N'02', N'HUALLANCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'05', N'04', N'HUANCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'05', N'05', N'TAMBO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'05', N'06', N'YONAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'05', N'08', N'TUPAC AMARU')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'05', N'09', N'SAN MIGUEL DE MAYOCC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'05', N'10', N'PUNCHAO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'05', N'11', N'TUPAC AMARU INCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'05', N'15', N'LUNAHUANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'05', N'16', N'SOPLIN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'05', N'22', N'SAN ROQUE DE CUMBAZA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'06', N'01', N'MILPUC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'06', N'02', N'SAN MIGUEL DE ACO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'06', N'03', N'RANRACANCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'06', N'04', N'YANAQUIHUA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'06', N'05', N'LARAMATE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'06', N'06', N'SAN ANDRÉS DE CUTERVO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'06', N'08', N'TINTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'06', N'09', N'QUERCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'06', N'12', N'RÍO TAMBO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'06', N'13', N'MACHE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'06', N'15', N'PACARAOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'06', N'20', N'SALITRAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'06', N'21', N'VILQUE CHICO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'07', N'03', N'PROGRESO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'07', N'05', N'UPAHUACHO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'07', N'08', N'VELILLE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'07', N'12', N'SAN PEDRO DE CAJAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'07', N'15', N'HUANZA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'07', N'21', N'PUCARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'07', N'22', N'SHAMBOYACU')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'08', N'04', N'SAYLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'08', N'05', N'SAN JAVIER DE ALPABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'08', N'06', N'PUCARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'08', N'08', N'ALTO PICHIGUA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'08', N'12', N'SANTA ROSA DE SACCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'08', N'13', N'PARCOY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'08', N'15', N'PACCHO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'08', N'21', N'SANTA ROSA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'08', N'22', N'YORONGOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'09', N'05', N'SAN PEDRO DE LARCAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'09', N'08', N'SANTA TERESA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'09', N'12', N'TRES DE DICIEMBRE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'09', N'13', N'SARTIMBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'09', N'22', N'JUAN GUERRA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'10', N'02', N'HUANTAR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'10', N'05', N'HUAMANQUIQUIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'10', N'08', N'PILLPINTO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'10', N'13', N'SITABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'10', N'15', N'CATAHUASI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'11', N'05', N'VISCHONGO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'11', N'06', N'NANCHOC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'11', N'10', N'CHORAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'12', N'02', N'SANTA CRUZ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'12', N'08', N'LUCRE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'12', N'21', N'YANAHUAYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'13', N'02', N'MUSGA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'13', N'06', N'SAUCEPAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'14', N'02', N'SAN CRISTÓBAL DE RAJAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'15', N'02', N'PALLASCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'17', N'02', N'PARARIN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'18', N'02', N'SANTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'19', N'02', N'RAGASH')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'08', N'20', N'02', N'YANAMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'01', N'01', N'LA JALCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'01', N'02', N'PAMPAS GRANDE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'01', N'03', N'TAMBURCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'01', N'04', N'MARIANO MELGAR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'01', N'05', N'SAN JOSÉ DE TICLLAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'01', N'06', N'MAGDALENA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'01', N'09', N'LARIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'01', N'10', N'SANTA MARÍA DEL VALLE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'01', N'11', N'SAN JOSÉ DE LOS MOLINOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'01', N'13', N'SALAVERRY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'01', N'14', N'NUEVA ARICA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'01', N'15', N'CIENEGUILLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'01', N'19', N'SIMON BOLÍVAR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'01', N'20', N'LA ARENA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'01', N'21', N'MAÑAZO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'01', N'23', N'SAMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'02', N'03', N'PACUCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'02', N'11', N'SAN PEDRO DE HUACARPANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'02', N'12', N'MARISCAL CASTILLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'02', N'18', N'QUINISTAQUILLAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'02', N'20', N'SICCHEZ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'02', N'21', N'POTONI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'03', N'01', N'SAN CARLOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'03', N'04', N'HUANUHUANU')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'03', N'06', N'SOROCHUCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'03', N'08', N'ZURITE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'03', N'09', N'JULCAMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'03', N'14', N'PACORA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'03', N'21', N'SAN GABAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'04', N'03', N'LUCRE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'04', N'04', N'ORCOPAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'04', N'05', N'CANAYRE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'04', N'06', N'HUAMBOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'04', N'09', N'MOLLEPAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'04', N'12', N'HUARIPAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'04', N'20', N'SANTO DOMINGO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'05', N'01', N'LUYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'05', N'02', N'HUASTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'05', N'04', N'ICHUPAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'05', N'05', N'SAMUGARI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'05', N'09', N'SAN PEDRO DE CORIS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'05', N'10', N'PUÑOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'05', N'15', N'MALA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'05', N'16', N'TAPICHE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'05', N'22', N'SHANAO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'06', N'01', N'OMIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'06', N'02', N'SHILLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'06', N'05', N'LEONCIO PRADO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'06', N'06', N'SAN JUAN DE CUTERVO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'06', N'09', N'QUITO-ARMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'06', N'12', N'VIZCATAN DEL ENE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'06', N'15', N'SAN MIGUEL DE ACOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'07', N'03', N'SAN ANTONIO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'07', N'09', N'HUARIBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'07', N'12', N'TAPO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'07', N'15', N'HUAROCHIRI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'07', N'21', N'SANTA LUCIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'07', N'22', N'TINGO DE PONASA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'08', N'04', N'TAURIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'08', N'05', N'SAN JOSÉ DE USHUA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'08', N'06', N'SALLIQUE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'08', N'12', N'SUITUCANCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'08', N'13', N'PATAZ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'08', N'15', N'SANTA LEONOR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'08', N'21', N'UMACHIRI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'08', N'22', N'YURACYACU')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'09', N'05', N'SAN SALVADOR DE QUIJE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'09', N'08', N'VILCABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'09', N'12', N'YANACANCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'09', N'22', N'LA BANDA DE SHILCAYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'10', N'02', N'MASIN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'10', N'05', N'HUANCARAYLLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'10', N'08', N'YAURISQUE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'10', N'15', N'CHOCOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'11', N'06', N'NIEPOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'12', N'02', N'SANTO TORIBIO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'12', N'08', N'MARCAPATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'12', N'21', N'ALTO INAMBARI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'13', N'06', N'SEXI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'14', N'02', N'SAN PEDRO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'15', N'02', N'PAMPAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'17', N'02', N'TAPACOCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'18', N'02', N'NUEVO CHIMBOTE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'09', N'19', N'02', N'SAN JUAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'01', N'01', N'LEIMEBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'01', N'02', N'PARIACOTO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'01', N'04', N'MIRAFLORES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'01', N'05', N'SAN JUAN BAUTISTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'01', N'06', N'MATARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'01', N'09', N'MANTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'01', N'10', N'YARUMAYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'01', N'11', N'SAN JUAN BAUTISTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'01', N'13', N'SIMBAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'01', N'14', N'OYOTUN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'01', N'15', N'COMAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'01', N'16', N'TORRES CAUSANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'01', N'19', N'TICLACAYAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'01', N'20', N'LA UNIÓN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'01', N'21', N'PAUCARCOLLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'01', N'23', N'CORONEL GREGORIO ALBARRACÍN LANCHIPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'02', N'03', N'PAMPACHIRI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'02', N'11', N'SUNAMPE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'02', N'12', N'MATAHUASI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'02', N'16', N'SANTA CRUZ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'02', N'18', N'UBINAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'02', N'20', N'SUYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'02', N'21', N'SAMAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'03', N'01', N'SHIPASBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'03', N'04', N'JAQUI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'03', N'06', N'SUCRE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'03', N'09', N'SAN ANTONIO DE ANTAPARCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'03', N'14', N'SALAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'03', N'21', N'USICAYOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'04', N'03', N'POCOHUANCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'04', N'04', N'PAMPACOLCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'04', N'05', N'UCHURACCAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'04', N'06', N'LAJAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'04', N'09', N'SAN JUAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'04', N'12', N'HUERTAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'04', N'20', N'YAMANGO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'05', N'01', N'LUYA VIEJO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'05', N'02', N'HUAYLLACAYAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'05', N'04', N'LARI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'05', N'05', N'ANCHIHUAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'05', N'09', N'PACHAMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'05', N'10', N'SINGA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'05', N'15', N'NUEVO IMPERIAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'05', N'16', N'JENARO HERRERA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'05', N'22', N'TABALOSOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'06', N'01', N'SANTA ROSA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'06', N'02', N'TINCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'06', N'05', N'LLAUTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'06', N'06', N'SAN LUIS DE LUCMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'06', N'09', N'SAN ANTONIO DE CUSICANCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'06', N'13', N'PARANDAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'06', N'15', N'SANTA CRUZ DE ANDAMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'07', N'03', N'SANTA ROSA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'07', N'09', N'ÑAHUIMPUQUIO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'07', N'15', N'LAHUAYTAMBO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'07', N'21', N'VILAVILA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'07', N'22', N'TRES UNIDOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'08', N'04', N'TOMEPAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'08', N'05', N'SARA SARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'08', N'06', N'SAN FELIPE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'08', N'12', N'YAULI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'08', N'13', N'PIAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'08', N'15', N'SANTA MARÍA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'09', N'05', N'SANTIAGO DE PAUCARAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'09', N'08', N'PICHARI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'09', N'22', N'MORALES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'10', N'02', N'PAUCAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'10', N'05', N'HUAYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'10', N'15', N'COCHAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'11', N'06', N'SAN GREGORIO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'12', N'02', N'YURACMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'12', N'08', N'OCONGATE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'12', N'21', N'SAN PEDRO DE PUTINA PUNCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'13', N'06', N'UTICYACU')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'14', N'02', N'SANTIAGO DE CHILCAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'15', N'02', N'SANTA ROSA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'17', N'02', N'TICAPAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'10', N'19', N'02', N'SICSIBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'01', N'01', N'LEVANTO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'01', N'02', N'PIRA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'01', N'04', N'MOLLEBAYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'01', N'05', N'SANTIAGO DE PISCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'01', N'06', N'NAMORA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'01', N'09', N'MARISCAL CÁCERES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'01', N'10', N'PILLCO MARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'01', N'11', N'SANTIAGO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'01', N'12', N'CHUPURO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'01', N'13', N'VICTOR LARCO HERRERA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'01', N'14', N'PICSI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'01', N'15', N'EL AGUSTINO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'01', N'19', N'TINYAHUARCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'01', N'20', N'LAS LOMAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'01', N'21', N'PICHACANI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'02', N'03', N'POMACOCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'02', N'11', N'TAMBO DE MORA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'02', N'12', N'MITO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'02', N'16', N'TENIENTE CESAR LÓPEZ ROJAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'02', N'18', N'YUNGA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'02', N'21', N'SAN ANTON')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'03', N'01', N'VALERA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'03', N'04', N'LOMAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'03', N'06', N'UTCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'03', N'09', N'SANTO TOMAS DE PATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'03', N'10', N'MARÍAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'03', N'14', N'SAN JOSÉ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'04', N'03', N'SAN JUAN DE CHACÑA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'04', N'04', N'TIPAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'04', N'05', N'PUCACOLPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'04', N'06', N'LLAMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'04', N'09', N'SANTA ANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'04', N'12', N'JANJAILLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'05', N'01', N'MARÍA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'05', N'02', N'LA PRIMAVERA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'05', N'04', N'LLUTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'05', N'09', N'COSME')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'05', N'10', N'TANTAMAYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'05', N'15', N'PACARAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'05', N'16', N'YAQUERANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'05', N'22', N'ZAPATERO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'06', N'01', N'TOTORA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'06', N'02', N'YUNGAR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'06', N'05', N'LUCANAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'06', N'06', N'SANTA CRUZ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'06', N'09', N'SAN FRANCISCO DE SANGAYAICO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'06', N'13', N'SALPO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'06', N'15', N'SUMBILCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'07', N'03', N'TURPAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'07', N'09', N'PAZOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'07', N'15', N'LANGA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'08', N'04', N'TORO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'08', N'06', N'SAN JOSÉ DEL ALTO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'08', N'13', N'SANTIAGO DE CHALLAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'08', N'15', N'SAYAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'09', N'05', N'SORAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'09', N'08', N'INKAWASI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'09', N'22', N'PAPAPLAYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'10', N'02', N'PONTO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'10', N'05', N'SARHUA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'10', N'15', N'COLONIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'11', N'06', N'SAN SILVESTRE DE COCHAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'12', N'08', N'OROPESA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'13', N'06', N'YAUYUCAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'11', N'15', N'02', N'TAUCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'01', N'01', N'MAGDALENA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'01', N'02', N'TARICA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'01', N'04', N'PAUCARPATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'01', N'05', N'SOCOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'01', N'06', N'SAN JUAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'01', N'09', N'MOYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'01', N'10', N'YACUS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'01', N'11', N'SUBTANJALLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'01', N'12', N'COLCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'01', N'14', N'PIMENTEL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'01', N'15', N'INDEPENDENCIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'01', N'16', N'BELÉN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'01', N'19', N'VICCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'01', N'21', N'PLATERIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'02', N'03', N'SAN ANTONIO DE CACHI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'02', N'12', N'NUEVE DE JULIO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'02', N'21', N'SAN JOSÉ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'03', N'01', N'YAMBRASBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'03', N'04', N'QUICACHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'03', N'06', N'LA LIBERTAD DE PALLAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'03', N'09', N'SECCLLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'03', N'14', N'TUCUME')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'04', N'03', N'SAÑAYCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'04', N'04', N'UÑON')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'04', N'06', N'MIRACOSTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'04', N'09', N'TANTARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'04', N'12', N'JULCÁN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'05', N'01', N'OCALLI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'05', N'02', N'MANGAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'05', N'04', N'MACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'05', N'15', N'QUILMANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'06', N'01', N'VISTA ALEGRE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'06', N'05', N'OCAÑA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'06', N'06', N'SANTO DOMINGO DE LA CAPILLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'06', N'09', N'SAN ISIDRO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'06', N'15', N'VEINTISIETE DE NOVIEMBRE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'07', N'03', N'VILCABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'07', N'15', N'LARAOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'08', N'06', N'SANTA ROSA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'08', N'13', N'TAURIJA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'08', N'15', N'VEGUETA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'09', N'08', N'VILLA VIRGEN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'09', N'22', N'SAN ANTONIO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'10', N'02', N'RAHUAPAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'10', N'05', N'VILCANCHOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'10', N'15', N'HONGOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'11', N'06', N'TONGOD')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'12', N'12', N'08', N'QUIQUIJANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'01', N'01', N'MARISCAL CASTILLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'01', N'04', N'POCSI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'01', N'05', N'TAMBILLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'01', N'09', N'NUEVO OCCORO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'01', N'11', N'TATE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'01', N'12', N'CULLHUAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'01', N'14', N'REQUE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'01', N'15', N'JESÚS MARÍA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'01', N'16', N'SAN JUAN BAUTISTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'01', N'19', N'YANACANCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'01', N'21', N'SAN ANTONIO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'02', N'03', N'SAN JERÓNIMO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'02', N'12', N'ORCOTUNA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'02', N'21', N'SAN JUAN DE SALINAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'03', N'04', N'YAUCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'03', N'10', N'PACHAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'04', N'03', N'SORAYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'04', N'04', N'URACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'04', N'06', N'PACCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'04', N'09', N'TICRAPO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'04', N'12', N'LEONOR ORDÓÑEZ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'05', N'01', N'OCUMAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'05', N'02', N'PACLLON')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'05', N'04', N'MADRIGAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'05', N'15', N'SAN ANTONIO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'06', N'05', N'OTOCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'06', N'06', N'SANTO TOMAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'06', N'09', N'SANTIAGO DE CHOCORVOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'06', N'13', N'SINSICAP')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'07', N'03', N'VIRUNDO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'07', N'09', N'QUISHUAR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'07', N'15', N'MARIATANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'08', N'13', N'URPAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'09', N'08', N'VILLA KINTIARINA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'09', N'22', N'SAUCE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'10', N'02', N'RAPAYAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'10', N'15', N'HUAMPARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'13', N'11', N'06', N'UNIÓN AGUA BLANCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'01', N'01', N'MOLINOPAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'01', N'04', N'POLOBAYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'01', N'05', N'VINCHOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'01', N'09', N'PALCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'01', N'11', N'YAUCA DEL ROSARIO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'01', N'12', N'EL TAMBO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'01', N'14', N'SANTA ROSA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'01', N'15', N'LA MOLINA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'01', N'20', N'TAMBO GRANDE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'01', N'21', N'TIQUILLACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'02', N'03', N'SAN MIGUEL DE CHACCRAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'02', N'12', N'SAN JOSÉ DE QUERO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'02', N'21', N'SANTIAGO DE PUPUJA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'04', N'03', N'TAPAIRIHUA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'04', N'04', N'VIRACO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'04', N'06', N'PION')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'04', N'12', N'LLOCLLAPAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'05', N'01', N'PISUQUIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'05', N'02', N'SAN MIGUEL DE CORPANQUI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'05', N'04', N'SAN ANTONIO DE CHUCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'05', N'15', N'SAN LUIS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'06', N'05', N'SAISA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'06', N'06', N'SOCOTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'06', N'09', N'SANTIAGO DE QUIRAHUARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'06', N'13', N'USQUIL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'07', N'03', N'CURASCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'07', N'09', N'SALCABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'07', N'15', N'RICARDO PALMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'09', N'22', N'SHAPAJA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'10', N'02', N'SAN MARCOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'14', N'10', N'15', N'HUANCAYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'01', N'01', N'MONTEVIDEO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'01', N'04', N'QUEQUEÑA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'01', N'05', N'JESÚS NAZARENO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'01', N'09', N'PILCHACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'01', N'14', N'SAÑA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'01', N'15', N'LA VICTORIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'01', N'20', N'VEINTISEIS DE OCTUBRE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'01', N'21', N'VILQUE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'02', N'03', N'SANTA MARÍA DE CHICMO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'02', N'12', N'SANTA ROSA DE OCOPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'02', N'21', N'TIRAPATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'04', N'03', N'TINTAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'04', N'06', N'QUEROCOTO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'04', N'12', N'MARCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'05', N'01', N'PROVIDENCIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'05', N'02', N'TICLLOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'05', N'04', N'SIBAYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'05', N'15', N'SANTA CRUZ DE FLORES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'06', N'05', N'SAN CRISTÓBAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'06', N'06', N'TORIBIO CASANOVA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'06', N'09', N'SANTO DOMINGO DE CAPILLAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'07', N'09', N'SALCAHUASI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'07', N'15', N'SAN ANDRÉS DE TUPICOCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'10', N'02', N'SAN PEDRO DE CHANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'15', N'10', N'15', N'HUANGASCAR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'16', N'01', N'01', N'OLLEROS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'16', N'01', N'04', N'SABANDIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'16', N'01', N'05', N'ANDRÉS AVELINO CÁCERES DORREGARAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'16', N'01', N'09', N'VILCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'16', N'01', N'12', N'HUACRAPUQUIO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'16', N'01', N'14', N'CAYALTI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'16', N'01', N'15', N'LINCE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'16', N'02', N'03', N'TALAVERA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'16', N'03', N'10', N'QUIVILLA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'16', N'04', N'03', N'TORAYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'16', N'04', N'06', N'SAN JUAN DE LICUPIS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'16', N'04', N'12', N'MASMA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'16', N'05', N'01', N'SAN CRISTÓBAL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'16', N'05', N'04', N'TAPAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'16', N'05', N'15', N'ZÚÑIGA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'16', N'06', N'05', N'SAN JUAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'16', N'06', N'09', N'TAMBO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'16', N'07', N'09', N'SAN MARCOS DE ROCCHAC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'16', N'07', N'15', N'SAN ANTONIO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'16', N'10', N'02', N'UCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'16', N'10', N'15', N'HUANTAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'17', N'01', N'01', N'QUINJALCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'17', N'01', N'04', N'SACHACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'17', N'01', N'09', N'YAULI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'17', N'01', N'12', N'HUALHUAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'17', N'01', N'14', N'PATAPO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'17', N'01', N'15', N'LOS OLIVOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'17', N'02', N'03', N'TUMAY HUARACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'17', N'03', N'10', N'RIPAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'17', N'04', N'03', N'YANACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'17', N'04', N'06', N'TACABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'17', N'04', N'12', N'MASMA CHICCHE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'17', N'05', N'01', N'SAN FRANCISCO DE YESO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'17', N'05', N'04', N'TISCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'17', N'06', N'05', N'SAN PEDRO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'17', N'07', N'09', N'SURCUBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'17', N'07', N'15', N'SAN BARTOLOMÉ')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'17', N'10', N'15', N'HUAÑEC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'18', N'01', N'01', N'SAN FRANCISCO DE DAGUAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'18', N'01', N'04', N'SAN JUAN DE SIGUAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'18', N'01', N'09', N'ASCENSIÓN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'18', N'01', N'14', N'POMALCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'18', N'01', N'15', N'LURIGANCHO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'18', N'02', N'03', N'TURPO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'18', N'04', N'06', N'TOCMOCHE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'18', N'04', N'12', N'MOLINOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'18', N'05', N'01', N'SAN JERÓNIMO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'18', N'05', N'04', N'TUTI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'18', N'06', N'05', N'SAN PEDRO DE PALCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'18', N'07', N'09', N'TINTAY PUNCU')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'18', N'07', N'15', N'SAN DAMIAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'18', N'10', N'15', N'LARAOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'19', N'01', N'01', N'SAN ISIDRO DE MAINO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'19', N'01', N'04', N'SAN JUAN DE TARUCANI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'19', N'01', N'09', N'HUANDO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'19', N'01', N'12', N'HUANCAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'19', N'01', N'14', N'PUCALA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'19', N'01', N'15', N'LURIN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'19', N'02', N'03', N'KAQUIABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'19', N'04', N'06', N'CHALAMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'19', N'04', N'12', N'MONOBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'19', N'05', N'01', N'SAN JUAN DE LOPECANCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'19', N'05', N'04', N'YANQUE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'19', N'06', N'05', N'SANCOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'19', N'07', N'09', N'QUICHUAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'19', N'07', N'15', N'SAN JUAN DE IRIS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'19', N'10', N'15', N'LINCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'20', N'01', N'01', N'SOLOCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'20', N'01', N'04', N'SANTA ISABEL DE SIGUAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'20', N'01', N'12', N'HUASICANCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'20', N'01', N'14', N'TUMAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'20', N'01', N'15', N'MAGDALENA DEL MAR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'20', N'02', N'03', N'JOSÉ MARÍA ARGUEDAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'20', N'04', N'12', N'MUQUI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'20', N'05', N'01', N'SANTA CATALINA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'20', N'05', N'04', N'MAJES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'20', N'06', N'05', N'SANTA ANA DE HUAYCAHUACHO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'20', N'07', N'09', N'ANDAYMARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'20', N'07', N'15', N'SAN JUAN DE TANTARANCHE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'20', N'10', N'15', N'MADEAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'21', N'01', N'01', N'SONCHE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'21', N'01', N'04', N'SANTA RITA DE SIGUAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'21', N'01', N'12', N'HUAYUCACHI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'21', N'01', N'15', N'PUEBLO LIBRE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'21', N'03', N'10', N'SHUNQUI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'21', N'04', N'12', N'MUQUIYAUYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'21', N'05', N'01', N'SANTO TOMAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'21', N'06', N'05', N'SANTA LUCIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'21', N'07', N'15', N'SAN LORENZO DE QUINTI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'21', N'10', N'15', N'MIRAFLORES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'22', N'01', N'04', N'SOCABAYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'22', N'01', N'12', N'INGENIO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'22', N'01', N'15', N'MIRAFLORES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'22', N'03', N'10', N'SILLAPATA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'22', N'04', N'12', N'PACA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'22', N'05', N'01', N'TINGO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'22', N'07', N'15', N'SAN MATEO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'22', N'10', N'15', N'OMAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'23', N'01', N'04', N'TIABAYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'23', N'01', N'15', N'PACHACAMAC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'23', N'03', N'10', N'YANAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'23', N'04', N'12', N'PACCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'23', N'05', N'01', N'TRITA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'23', N'07', N'15', N'SAN MATEO DE OTAO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'23', N'10', N'15', N'PUTINZA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'24', N'01', N'04', N'UCHUMAYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'24', N'01', N'12', N'PARIAHUANCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'24', N'01', N'15', N'PUCUSANA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'24', N'04', N'12', N'PANCAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'24', N'07', N'15', N'SAN PEDRO DE CASTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'24', N'10', N'15', N'QUINCHES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'25', N'01', N'04', N'VITOR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'25', N'01', N'12', N'PILCOMAYO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'25', N'01', N'15', N'PUENTE PIEDRA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'25', N'04', N'12', N'PARCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'25', N'07', N'15', N'SAN PEDRO DE HUANCAYRE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'25', N'10', N'15', N'QUINOCAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'26', N'01', N'04', N'YANAHUARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'26', N'01', N'12', N'PUCARA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'26', N'01', N'15', N'PUNTA HERMOSA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'26', N'04', N'12', N'POMACANCHA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'26', N'07', N'15', N'SANGALLAYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'26', N'10', N'15', N'SAN JOAQUÍN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'27', N'01', N'04', N'YARABAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'27', N'01', N'12', N'QUICHUAY')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'27', N'01', N'15', N'PUNTA NEGRA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'27', N'04', N'12', N'RICRAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'27', N'07', N'15', N'SANTA CRUZ DE COCACHACRA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'27', N'10', N'15', N'SAN PEDRO DE PILAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'28', N'01', N'04', N'YURA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'28', N'01', N'12', N'QUILCAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'28', N'01', N'15', N'RÍMAC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'28', N'04', N'12', N'SAN LORENZO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'28', N'07', N'15', N'SANTA EULALIA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'28', N'10', N'15', N'TANTA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'29', N'01', N'04', N'JOSÉ LUIS BUSTAMANTE Y RIVERO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'29', N'01', N'12', N'SAN AGUSTÍN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'29', N'01', N'15', N'SAN BARTOLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'29', N'04', N'12', N'SAN PEDRO DE CHUNAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'29', N'07', N'15', N'SANTIAGO DE ANCHUCAYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'29', N'10', N'15', N'TAURIPAMPA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'30', N'01', N'12', N'SAN JERÓNIMO DE TUNAN')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'30', N'01', N'15', N'SAN BORJA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'30', N'04', N'12', N'SAUSA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'30', N'07', N'15', N'SANTIAGO DE TUNA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'30', N'10', N'15', N'TOMAS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'31', N'01', N'15', N'SAN ISIDRO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'31', N'04', N'12', N'SINCOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'31', N'07', N'15', N'SANTO DOMINGO DE LOS OLLEROS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'31', N'10', N'15', N'TUPE')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'32', N'01', N'12', N'SAÑO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'32', N'01', N'15', N'SAN JUAN DE LURIGANCHO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'32', N'04', N'12', N'TUNAN MARCA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'32', N'07', N'15', N'SURCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'32', N'10', N'15', N'VIÑAC')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'33', N'01', N'12', N'SAPALLANGA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'33', N'01', N'15', N'SAN JUAN DE MIRAFLORES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'33', N'04', N'12', N'YAULI')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'33', N'10', N'15', N'VITIS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'34', N'01', N'12', N'SICAYA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'34', N'01', N'15', N'SAN LUIS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'34', N'04', N'12', N'YAUYOS')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'35', N'01', N'12', N'SANTO DOMINGO DE ACOBAMBA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'35', N'01', N'15', N'SAN MARTÍN DE PORRES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'36', N'01', N'12', N'VIQUES')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'36', N'01', N'15', N'SAN MIGUEL')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'37', N'01', N'15', N'SANTA ANITA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'38', N'01', N'15', N'SANTA MARÍA DEL MAR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'39', N'01', N'15', N'SANTA ROSA')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'40', N'01', N'15', N'SANTIAGO DE SURCO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'41', N'01', N'15', N'SURQUILLO')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'42', N'01', N'15', N'VILLA EL SALVADOR')
GO
INSERT [dbo].[ubDistrito] ([idDist], [idProv], [idDep], [Distrito]) VALUES (N'43', N'01', N'15', N'VILLA MARÍA DEL TRIUNFO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'01', N'CHACHAPOYAS')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'01', N'BAGUA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'01', N'BONGARÁ')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'04', N'01', N'CONDORCANQUI')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'05', N'01', N'LUYA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'06', N'01', N'RODRÍGUEZ DE MENDOZA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'07', N'01', N'UTCUBAMBA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'02', N'HUARAZ')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'02', N'AIJA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'02', N'ANTONIO RAYMONDI')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'04', N'02', N'ASUNCIÓN')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'05', N'02', N'BOLOGNESI')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'06', N'02', N'CARHUAZ')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'07', N'02', N'CARLOS FERMÍN FITZCARRALD')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'08', N'02', N'CASMA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'09', N'02', N'CORONGO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'10', N'02', N'HUARI')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'11', N'02', N'HUARMEY')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'12', N'02', N'HUAYLAS')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'13', N'02', N'MARISCAL LUZURIAGA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'14', N'02', N'OCROS')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'15', N'02', N'PALLASCA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'16', N'02', N'POMABAMBA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'17', N'02', N'RECUAY')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'18', N'02', N'SANTA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'19', N'02', N'SIHUAS')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'20', N'02', N'YUNGAY')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'03', N'ABANCAY')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'03', N'ANDAHUAYLAS')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'03', N'ANTABAMBA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'04', N'03', N'AYMARAES')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'05', N'03', N'COTABAMBAS')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'06', N'03', N'CHINCHEROS')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'07', N'03', N'GRAU')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'04', N'AREQUIPA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'04', N'CAMANÁ')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'04', N'CARAVELÍ')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'04', N'04', N'CASTILLA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'05', N'04', N'CAYLLOMA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'06', N'04', N'CONDESUYOS')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'07', N'04', N'ISLAY')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'08', N'04', N'LA UNIÒN')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'05', N'HUAMANGA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'05', N'CANGALLO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'05', N'HUANCA SANCOS')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'04', N'05', N'HUANTA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'05', N'05', N'LA MAR')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'06', N'05', N'LUCANAS')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'07', N'05', N'PARINACOCHAS')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'08', N'05', N'PÀUCAR DEL SARA SARA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'09', N'05', N'SUCRE')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'10', N'05', N'VÍCTOR FAJARDO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'11', N'05', N'VILCAS HUAMÁN')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'06', N'CAJAMARCA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'06', N'CAJABAMBA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'06', N'CELENDÍN')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'04', N'06', N'CHOTA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'05', N'06', N'CONTUMAZÁ')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'06', N'06', N'CUTERVO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'07', N'06', N'HUALGAYOC')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'08', N'06', N'JAÉN')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'09', N'06', N'SAN IGNACIO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'10', N'06', N'SAN MARCOS')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'11', N'06', N'SAN MIGUEL')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'12', N'06', N'SAN PABLO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'13', N'06', N'SANTA CRUZ')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'07', N'PROV. CONST. DEL CALLAO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'08', N'CUSCO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'08', N'ACOMAYO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'08', N'ANTA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'04', N'08', N'CALCA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'05', N'08', N'CANAS')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'06', N'08', N'CANCHIS')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'07', N'08', N'CHUMBIVILCAS')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'08', N'08', N'ESPINAR')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'09', N'08', N'LA CONVENCIÓN')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'10', N'08', N'PARURO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'11', N'08', N'PAUCARTAMBO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'12', N'08', N'QUISPICANCHI')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'13', N'08', N'URUBAMBA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'09', N'HUANCAVELICA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'09', N'ACOBAMBA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'09', N'ANGARAES')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'04', N'09', N'CASTROVIRREYNA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'05', N'09', N'CHURCAMPA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'06', N'09', N'HUAYTARÁ')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'07', N'09', N'TAYACAJA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'10', N'HUÁNUCO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'10', N'AMBO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'10', N'DOS DE MAYO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'04', N'10', N'HUACAYBAMBA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'05', N'10', N'HUAMALÍES')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'06', N'10', N'LEONCIO PRADO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'07', N'10', N'MARAÑÓN')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'08', N'10', N'PACHITEA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'09', N'10', N'PUERTO INCA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'10', N'10', N'LAURICOCHA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'11', N'10', N'YAROWILCA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'11', N'ICA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'11', N'CHINCHA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'11', N'NAZCA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'04', N'11', N'PALPA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'05', N'11', N'PISCO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'12', N'HUANCAYO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'12', N'CONCEPCIÓN')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'12', N'CHANCHAMAYO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'04', N'12', N'JAUJA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'05', N'12', N'JUNÍN')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'06', N'12', N'SATIPO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'07', N'12', N'TARMA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'08', N'12', N'YAULI')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'09', N'12', N'CHUPACA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'13', N'TRUJILLO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'13', N'ASCOPE')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'13', N'BOLÍVAR')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'04', N'13', N'CHEPÉN')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'05', N'13', N'JULCÁN')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'06', N'13', N'OTUZCO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'07', N'13', N'PACASMAYO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'08', N'13', N'PATAZ')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'09', N'13', N'SÁNCHEZ CARRIÓN')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'10', N'13', N'SANTIAGO DE CHUCO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'11', N'13', N'GRAN CHIMÚ')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'12', N'13', N'VIRÚ')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'14', N'CHICLAYO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'14', N'FERREÑAFE')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'14', N'LAMBAYEQUE')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'15', N'LIMA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'15', N'BARRANCA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'15', N'CAJATAMBO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'04', N'15', N'CANTA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'05', N'15', N'CAÑETE')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'06', N'15', N'HUARAL')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'07', N'15', N'HUAROCHIRÍ')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'08', N'15', N'HUAURA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'09', N'15', N'OYÓN')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'10', N'15', N'YAUYOS')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'16', N'MAYNAS')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'16', N'ALTO AMAZONAS')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'16', N'LORETO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'04', N'16', N'MARISCAL RAMÓN CASTILLA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'05', N'16', N'REQUENA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'06', N'16', N'UCAYALI')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'07', N'16', N'DATEM DEL MARAÑÓN')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'08', N'16', N'PUTUMAYO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'17', N'TAMBOPATA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'17', N'MANU')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'17', N'TAHUAMANU')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'18', N'MARISCAL NIETO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'18', N'GENERAL SÁNCHEZ CERRO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'18', N'ILO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'19', N'PASCO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'19', N'DANIEL ALCIDES CARRIÓN')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'19', N'OXAPAMPA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'20', N'PIURA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'20', N'AYABACA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'20', N'HUANCABAMBA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'04', N'20', N'MORROPÓN')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'05', N'20', N'PAITA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'06', N'20', N'SULLANA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'07', N'20', N'TALARA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'08', N'20', N'SECHURA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'21', N'PUNO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'21', N'AZÁNGARO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'21', N'CARABAYA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'04', N'21', N'CHUCUITO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'05', N'21', N'EL COLLAO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'06', N'21', N'HUANCANÉ')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'07', N'21', N'LAMPA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'08', N'21', N'MELGAR')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'09', N'21', N'MOHO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'10', N'21', N'SAN ANTONIO DE PUTINA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'11', N'21', N'SAN ROMÁN')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'12', N'21', N'SANDIA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'13', N'21', N'YUNGUYO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'22', N'MOYOBAMBA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'22', N'BELLAVISTA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'22', N'EL DORADO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'04', N'22', N'HUALLAGA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'05', N'22', N'LAMAS')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'06', N'22', N'MARISCAL CÁCERES')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'07', N'22', N'PICOTA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'08', N'22', N'RIOJA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'09', N'22', N'SAN MARTÍN')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'10', N'22', N'TOCACHE')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'23', N'TACNA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'23', N'CANDARAVE')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'23', N'JORGE BASADRE')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'04', N'23', N'TARATA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'24', N'TUMBES')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'24', N'CONTRALMIRANTE VILLAR')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'24', N'ZARUMILLA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'01', N'25', N'CORONEL PORTILLO')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'02', N'25', N'ATALAYA')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'03', N'25', N'PADRE ABAD')
GO
INSERT [dbo].[ubProvincia] ([idProv], [idDep], [Provincia]) VALUES (N'04', N'25', N'PURÚS')
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__particip__A0E340E877C96753]    Script Date: 20/03/2017 06:33:20 p.m. ******/
ALTER TABLE [dbo].[participanteCite] ADD UNIQUE NONCLUSTERED 
(
	[apellido_pat] ASC,
	[apellido_mat] ASC,
	[nombres] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[participanteCite] ADD  DEFAULT ('') FOR [dni_ce]
GO
/****** Object:  StoredProcedure [dbo].[uspParticipanteCiteInsert]    Script Date: 20/03/2017 06:33:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[uspParticipanteCiteInsert]
  @codigo AS varchar(13),
  @apePat AS varchar(50),
  @apeMat AS varchar(50),
  @nom AS varchar(50),
  @fecN AS varchar(10),
  @estC AS varchar(20),
  @dnice AS varchar(15),
  @sex AS varchar(20),
  @dir AS varchar(100),
  @ubi AS char(6),
  @telF AS varchar(13),
  @telM AS varchar(16),
  @opeM AS varchar(50),
  @telF2 AS varchar(13),
  @telM2 AS varchar(16),
  @opeM2 AS varchar(50),
  @email AS varchar(100),
  @prof AS varchar(50),
  @profEsp AS varchar(100),
  @redm AS varchar(10)
AS
BEGIN
DECLARE @fecha DATETIME
SET @fecha=GETDATE()
	BEGIN
		INSERT INTO participanteCite
		(codigo, apellido_pat , apellido_mat, nombres, fecha_nacimiento, estado_civ, dni_ce, sexo, direccion, ubigeo, tel_fijo, tel_mol, ope_movil, tel_fijo2, tel_mol2, ope_movil2, email, profe_ocupa, profocu_esp, redm, createat, updateat)
		VALUES (@codigo, @apePat, @apeMat, @nom, @fecN, @estC, @dnice, @sex, @dir, @ubi, @telF, @telM, @opeM, @telF2, @telM2, @opeM2, @email, @prof, @profEsp, @redm, @fecha ,@fecha)

	END
END



GO
/****** Object:  StoredProcedure [dbo].[uspParticipanteCiteUpdate]    Script Date: 20/03/2017 06:33:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[uspParticipanteCiteUpdate]
  @codigo AS varchar(13),
  @apePat AS varchar(50),
  @apeMat AS varchar(50),
  @nom AS varchar(50),
  @fecN AS varchar(10),
  @estC AS varchar(20),
  @dnice AS varchar(15),
  @sex AS varchar(20),
  @dir AS varchar(100),
  @ubi AS char(6),
  @telF AS varchar(13),
  @telM AS varchar(16),
  @opeM AS varchar(50),
  @telF2 AS varchar(13),
  @telM2 AS varchar(16),
  @opeM2 AS varchar(50),
  @email AS varchar(100),
  @prof AS varchar(50),
  @profEsp AS varchar(100),
  @redm AS varchar(10)
AS
BEGIN
DECLARE @fecha DATETIME
SET @fecha=GETDATE()
	BEGIN
	UPDATE [dbo].[participanteCite] SET 
       [apellido_pat] = @apePat
      ,[apellido_mat] = @apePat
      ,[nombres] = @nom
      ,[fecha_nacimiento] = @fecN
      ,[estado_civ] = @estC
      ,[dni_ce] = @dnice
      ,[sexo] = @sex
      ,[direccion] = @dir
      ,[ubigeo] = @ubi
      ,[tel_fijo] = @telF
      ,[tel_mol] = @telM
      ,[ope_movil] = @opeM
      ,[tel_fijo2] = @telF2
      ,[tel_mol2] = @telM2
      ,[ope_movil2] = @opeM2
      ,[email] = @email
      ,[profe_ocupa] = @prof
      ,[profocu_esp] = @profEsp
      ,[redm] = @redm
      ,[updateat] = @fecha
	   WHERE [codigo]=@codigo

	END
END



GO
/****** Object:  StoredProcedure [dbo].[uspParticipanteCodigo]    Script Date: 20/03/2017 06:33:20 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[uspParticipanteCodigo]
AS 
DECLARE @codigo CHAR(5)
SET @codigo=(SELECT MAX([codigo]) FROM [participanteCite])
SET @codigo='P'+RIGHT('0000'+LTRIM(RIGHT(ISNULL(@codigo,'0000'),4)+1),4)
SELECT @codigo

GO
USE [master]
GO
ALTER DATABASE [DBFERIACITEMASISA] SET  READ_WRITE 
GO
