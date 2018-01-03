/*
创建数据库
*/
create database db_exam;
--使用数据库
use db_exam;
GO

/*
创建数据表
*/
--教师表
create table t_teacher(
	tid VARCHAR(20) PRIMARY key,--编号
	tname varchar(20) not null,--姓名
	sex varchar(2) not null,--性别
	birthday VARCHAR(20),--生日
	education varchar(20),--学历
	tel varchar(11),--手机
	post varchar(10) not null,--岗位
	remarks varchar(100)--备注
);
--学生表
create table t_student(
	sid VARCHAR(20) PRIMARY key,--编号
	sname varchar(20) not null,--姓名
	sex varchar(2) not null,--性别
	enterSchool varchar(4) not null,--入学年份
	cCode varchar(20) not null,--所属班级
	photo VARCHAR(50),--头像
	birthday varchar(20),--生日
	IDCard VARCHAR(18),--身份证号
	pOutlook VARCHAR(10),--政治面貌
	province VARCHAR(20),--省份
	city VARCHAR(20),--城市
	tel VARCHAR(11),--联系电话
	address VARCHAR(40),--家庭住址
	ptel VARCHAR(11),--家长联系电话
	pRelation VARCHAR(10),--家长与学生关系
	hostelBuil VARCHAR(10),--宿舍楼
	hostelNo VARCHAR(10),--宿舍号
	baseInfo VARCHAR(50),--基本情况
	eduBg VARCHAR(20),--教育背景
	remarks VARCHAR(20)--备注
);
--账户表
create table t_user(
	name VARCHAR(20) PRIMARY key,--账户名
	pwd VARCHAR(20) not null,--账户密码
	role int not null--角色：1（学生）；2（教师）；4（管理员）
);

--添加管理员账户
insert into t_user values ('admin','123456',4);

--班级表
create table t_classInfo(
	cCode varchar(20) primary key,	--班级代码
	cName varchar(20) not null,	--班级名称
	major varchar(10) not null,	--所属专业(SCME\SCCE)
	insId int not null,	--辅导员（teacher表外键）
	iecId int not null,	--讲师（teacher表外键）
	cDate date not null,	--开班日期
	g1Num int,	--班级人数
	g2Num int,	--班级人数
	g3Num int,	--班级人数
	csId int DEFAULT 0,	--班级状态(0:禁用，1：启用)
	cRemark varchar(50)		--备注
);

--科目表
create table t_course(
	csId int primary key identity(1,1),	--科目编号
	csName varchar(20) not null,	--科目名称
	stage varchar(2) not null,	--阶段（G1，G2，G3）
	major varchar(10) not null	--专业方向(SCME\SCCE)
);

--Java
insert into t_course values ('计算机基础','G1','SCME');
insert into t_course values ('PS','G1','SCME');
insert into t_course values ('SQLServer','G1','SCME');
insert into t_course values ('Java','G1','SCME');
insert into t_course values ('JSP','G2','SCME');
insert into t_course values ('JavaScript','G2','SCME');
insert into t_course values ('Struts2','G2','SCME');
insert into t_course values ('Hibernate','G2','SCME');
insert into t_course values ('Spring','G3','SCME');
insert into t_course values ('MyBatis','G3','SCME');
--实施测试
insert into t_course values ('Liunx','G3','SCCE');
insert into t_course values ('QT','G3','SCCE');
insert into t_course values ('MySQL','G3','SCCE');

--笔试题目表
create table t_writtenQuestion(
	qId int primary key identity(1001,1),--题目编号
	qType varchar(10) not null,--题目类型（单选、多选）
	qTitle varchar(100) not null,	--题目标题
	optionA varchar(100) not null,	--选项A
	optionB varchar(100) not null,	--选项B
	optionC varchar(100) not null,	--选项C
	optionD varchar(100) not null,	--选项D
	answer varchar(4) DEFAULT '略',	--答案
	degree varchar(4) not null,	--难易程度
	csId int not null,	--所属科目
	chapter varchar(2)--对应章节
);

--机试题目标
create table t_machineQuestion(
	qId int primary key identity(1001,1),--题目编号
	qTitle varchar(100) not null,	--题目标题
	degree varchar(4) not null,	--难易程度
	csId int not null,	--所属科目
	chapter varchar(2)--对应章节
);


