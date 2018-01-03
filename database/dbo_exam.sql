/*
Navicat SQL Server Data Transfer

Source Server         : SQLServer
Source Server Version : 130000
Source Host           : 127.0.0.1:1433
Source Database       : db_exam
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 130000
File Encoding         : 65001

Date: 2018-01-02 22:33:29
*/


-- ----------------------------
-- Table structure for t_classInfo
-- ----------------------------
DROP TABLE [dbo].[t_classInfo]
GO
CREATE TABLE [dbo].[t_classInfo] (
[cCode] varchar(20) NOT NULL ,
[cName] varchar(20) NOT NULL ,
[major] varchar(10) NOT NULL ,
[insId] int NOT NULL ,
[iecId] int NOT NULL ,
[cDate] date NOT NULL ,
[g1Num] int NULL ,
[g2Num] int NULL ,
[g3Num] int NULL ,
[csId] int NULL DEFAULT ((0)) ,
[cRemark] varchar(50) NULL 
)


GO

-- ----------------------------
-- Records of t_classInfo
-- ----------------------------

-- ----------------------------
-- Table structure for t_course
-- ----------------------------
DROP TABLE [dbo].[t_course]
GO
CREATE TABLE [dbo].[t_course] (
[csId] int NOT NULL IDENTITY(1,1) ,
[csName] varchar(20) NOT NULL ,
[stage] varchar(2) NOT NULL ,
[major] varchar(10) NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[t_course]', RESEED, 13)
GO

-- ----------------------------
-- Records of t_course
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_course] ON
GO
INSERT INTO [dbo].[t_course] ([csId], [csName], [stage], [major]) VALUES (N'1', N'计算机基础', N'G1', N'SCME')
GO
GO
INSERT INTO [dbo].[t_course] ([csId], [csName], [stage], [major]) VALUES (N'2', N'PS', N'G1', N'SCME')
GO
GO
INSERT INTO [dbo].[t_course] ([csId], [csName], [stage], [major]) VALUES (N'3', N'SQLServer', N'G1', N'SCME')
GO
GO
INSERT INTO [dbo].[t_course] ([csId], [csName], [stage], [major]) VALUES (N'4', N'Java', N'G1', N'SCME')
GO
GO
INSERT INTO [dbo].[t_course] ([csId], [csName], [stage], [major]) VALUES (N'5', N'JSP', N'G2', N'SCME')
GO
GO
INSERT INTO [dbo].[t_course] ([csId], [csName], [stage], [major]) VALUES (N'6', N'JavaScript', N'G2', N'SCME')
GO
GO
INSERT INTO [dbo].[t_course] ([csId], [csName], [stage], [major]) VALUES (N'7', N'Struts2', N'G2', N'SCME')
GO
GO
INSERT INTO [dbo].[t_course] ([csId], [csName], [stage], [major]) VALUES (N'8', N'Hibernate', N'G2', N'SCME')
GO
GO
INSERT INTO [dbo].[t_course] ([csId], [csName], [stage], [major]) VALUES (N'9', N'Spring', N'G3', N'SCME')
GO
GO
INSERT INTO [dbo].[t_course] ([csId], [csName], [stage], [major]) VALUES (N'10', N'MyBatis', N'G3', N'SCME')
GO
GO
INSERT INTO [dbo].[t_course] ([csId], [csName], [stage], [major]) VALUES (N'11', N'Liunx', N'G3', N'SCCE')
GO
GO
INSERT INTO [dbo].[t_course] ([csId], [csName], [stage], [major]) VALUES (N'12', N'QT', N'G3', N'SCCE')
GO
GO
INSERT INTO [dbo].[t_course] ([csId], [csName], [stage], [major]) VALUES (N'13', N'MySQL', N'G3', N'SCCE')
GO
GO
SET IDENTITY_INSERT [dbo].[t_course] OFF
GO

-- ----------------------------
-- Table structure for t_machineQuestion
-- ----------------------------
DROP TABLE [dbo].[t_machineQuestion]
GO
CREATE TABLE [dbo].[t_machineQuestion] (
[qId] int NOT NULL IDENTITY(1001,1) ,
[qTitle] varchar(100) NOT NULL ,
[degree] varchar(4) NOT NULL ,
[csId] int NOT NULL ,
[chapter] varchar(2) NULL 
)


GO

-- ----------------------------
-- Records of t_machineQuestion
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_machineQuestion] ON
GO
SET IDENTITY_INSERT [dbo].[t_machineQuestion] OFF
GO

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE [dbo].[t_student]
GO
CREATE TABLE [dbo].[t_student] (
[sid] varchar(20) NOT NULL ,
[sname] varchar(20) NOT NULL ,
[sex] varchar(2) NOT NULL ,
[enterSchool] varchar(4) NOT NULL ,
[cCode] varchar(20) NOT NULL ,
[photo] varchar(50) NULL ,
[birthday] varchar(20) NULL ,
[IDCard] varchar(18) NULL ,
[pOutlook] varchar(10) NULL ,
[province] varchar(20) NULL ,
[city] varchar(20) NULL ,
[tel] varchar(11) NULL ,
[address] varchar(40) NULL ,
[ptel] varchar(11) NULL ,
[pRelation] varchar(10) NULL ,
[hostelBuil] varchar(10) NULL ,
[hostelNo] varchar(10) NULL ,
[baseInfo] varchar(50) NULL ,
[eduBg] varchar(20) NULL ,
[remarks] varchar(20) NULL 
)


GO

-- ----------------------------
-- Records of t_student
-- ----------------------------

-- ----------------------------
-- Table structure for t_teacher
-- ----------------------------
DROP TABLE [dbo].[t_teacher]
GO
CREATE TABLE [dbo].[t_teacher] (
[tid] varchar(20) NOT NULL ,
[tname] varchar(20) NOT NULL ,
[sex] varchar(2) NOT NULL ,
[birthday] varchar(20) NULL ,
[education] varchar(20) NULL ,
[tel] varchar(11) NULL ,
[post] varchar(10) NOT NULL ,
[remarks] varchar(100) NULL 
)


GO

-- ----------------------------
-- Records of t_teacher
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE [dbo].[t_user]
GO
CREATE TABLE [dbo].[t_user] (
[name] varchar(20) NOT NULL ,
[pwd] varchar(20) NOT NULL ,
[role] int NOT NULL 
)


GO

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO [dbo].[t_user] ([name], [pwd], [role]) VALUES (N'admin', N'123456', N'4')
GO
GO

-- ----------------------------
-- Table structure for t_writtenQuestion
-- ----------------------------
DROP TABLE [dbo].[t_writtenQuestion]
GO
CREATE TABLE [dbo].[t_writtenQuestion] (
[qId] int NOT NULL IDENTITY(1001,1) ,
[qType] varchar(10) NOT NULL ,
[qTitle] varchar(100) NOT NULL ,
[optionA] varchar(100) NOT NULL ,
[optionB] varchar(100) NOT NULL ,
[optionC] varchar(100) NOT NULL ,
[optionD] varchar(100) NOT NULL ,
[answer] varchar(4) NULL DEFAULT ('略') ,
[degree] varchar(4) NOT NULL ,
[csId] int NOT NULL ,
[chapter] varchar(2) NULL 
)


GO

-- ----------------------------
-- Records of t_writtenQuestion
-- ----------------------------
SET IDENTITY_INSERT [dbo].[t_writtenQuestion] ON
GO
SET IDENTITY_INSERT [dbo].[t_writtenQuestion] OFF
GO

-- ----------------------------
-- Indexes structure for table t_classInfo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_classInfo
-- ----------------------------
ALTER TABLE [dbo].[t_classInfo] ADD PRIMARY KEY ([cCode])
GO

-- ----------------------------
-- Indexes structure for table t_course
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_course
-- ----------------------------
ALTER TABLE [dbo].[t_course] ADD PRIMARY KEY ([csId])
GO

-- ----------------------------
-- Indexes structure for table t_machineQuestion
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_machineQuestion
-- ----------------------------
ALTER TABLE [dbo].[t_machineQuestion] ADD PRIMARY KEY ([qId])
GO

-- ----------------------------
-- Indexes structure for table t_student
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_student
-- ----------------------------
ALTER TABLE [dbo].[t_student] ADD PRIMARY KEY ([sid])
GO

-- ----------------------------
-- Indexes structure for table t_teacher
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_teacher
-- ----------------------------
ALTER TABLE [dbo].[t_teacher] ADD PRIMARY KEY ([tid])
GO

-- ----------------------------
-- Indexes structure for table t_user
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_user
-- ----------------------------
ALTER TABLE [dbo].[t_user] ADD PRIMARY KEY ([name])
GO

-- ----------------------------
-- Indexes structure for table t_writtenQuestion
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_writtenQuestion
-- ----------------------------
ALTER TABLE [dbo].[t_writtenQuestion] ADD PRIMARY KEY ([qId])
GO
