	/*==============================================================*/
	/* DBMS name:      Microsoft SQL Server 2008                    */
	/* Created on:     19/11/2023 4:25:58 CH                        */
	/*==============================================================*/


	if exists (select 1
	   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
	   where r.fkeyid = object_id('"BO MON"') and o.name = 'FK_BO MON_QUAN LY_KHOA')
	alter table "BO MON"
	   drop constraint "FK_BO MON_QUAN LY_KHOA"
	go

	if exists (select 1
	   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
	   where r.fkeyid = object_id('Co') and o.name = 'FK_CO_CO_SINH VIE')
	alter table Co
	   drop constraint "FK_CO_CO_SINH VIE"
	go

	if exists (select 1
	   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
	   where r.fkeyid = object_id('Co') and o.name = 'FK_CO_CO2_CHUC VU')
	alter table Co
	   drop constraint "FK_CO_CO2_CHUC VU"
	go

	if exists (select 1
	   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
	   where r.fkeyid = object_id('Co') and o.name = 'FK_CO_CO3_TO CHUC')
	alter table Co
	   drop constraint "FK_CO_CO3_TO CHUC"
	go

	if exists (select 1
	   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
	   where r.fkeyid = object_id('LOP') and o.name = 'FK_LOP_QUAN_BO MON')
	alter table LOP
	   drop constraint "FK_LOP_QUAN_BO MON"
	go

	if exists (select 1
	   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
	   where r.fkeyid = object_id('"SINH VIEN"') and o.name = 'FK_SINH VIE_TRONG_LOP')
	alter table "SINH VIEN"
	   drop constraint "FK_SINH VIE_TRONG_LOP"
	go

	if exists (select 1
	   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
	   where r.fkeyid = object_id('"Tham gia hoat dong"') and o.name = 'FK_THAM GIA_THAM GIA _SINH VIE')
	alter table "Tham gia hoat dong"
	   drop constraint "FK_THAM GIA_THAM GIA _SINH VIE"
	go

	if exists (select 1
	   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
	   where r.fkeyid = object_id('"Tham gia hoat dong"') and o.name = 'FK_THAM GIA_THAM GIA _HOAT DON')
	alter table "Tham gia hoat dong"
	   drop constraint "FK_THAM GIA_THAM GIA _HOAT DON"
	go

	if exists (select 1
	   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
	   where r.fkeyid = object_id('"Tham gia hoat dong"') and o.name = 'FK_THAM GIA_THAM GIA _HINH THU')
	alter table "Tham gia hoat dong"
	   drop constraint "FK_THAM GIA_THAM GIA _HINH THU"
	go

	if exists (select 1
	   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
	   where r.fkeyid = object_id('"Tham gia hoat dong"') and o.name = 'FK_THAM GIA_THAM GIA _VAI TRO')
	alter table "Tham gia hoat dong"
	   drop constraint "FK_THAM GIA_THAM GIA _VAI TRO"
	go

	if exists (select 1
	   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
	   where r.fkeyid = object_id('"Thong bao"') and o.name = 'FK_THONG BA_THONG BAO_TO CHUC')
	alter table "Thong bao"
	   drop constraint "FK_THONG BA_THONG BAO_TO CHUC"
	go

	if exists (select 1
	   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
	   where r.fkeyid = object_id('"Thong bao"') and o.name = 'FK_THONG BA_THONG BAO_HOAT DON')
	alter table "Thong bao"
	   drop constraint "FK_THONG BA_THONG BAO_HOAT DON"
	go

	if exists (select 1
	   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
	   where r.fkeyid = object_id('"Vao to chuc"') and o.name = 'FK_VAO TO C_THAM GIA _SINH VIE')
	alter table "Vao to chuc"
	   drop constraint "FK_VAO TO C_THAM GIA _SINH VIE"
	go

	if exists (select 1
	   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
	   where r.fkeyid = object_id('"Vao to chuc"') and o.name = 'FK_VAO TO C_THAM GIA _TO CHUC')
	alter table "Vao to chuc"
	   drop constraint "FK_VAO TO C_THAM GIA _TO CHUC"
	go

	if exists (select 1
	   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
	   where r.fkeyid = object_id('"Vao to chuc"') and o.name = 'FK_VAO TO C_THAM GIA _PHIEU DA')
	alter table "Vao to chuc"
	   drop constraint "FK_VAO TO C_THAM GIA _PHIEU DA"
	go

	if exists (select 1
				from  sysindexes
			   where  id    = object_id('"BO MON"')
				and   name  = 'Quan ly_FK'
				and   indid > 0
				and   indid < 255)
	   drop index "BO MON"."Quan ly_FK"
	go

	if exists (select 1
				from  sysobjects
			   where  id = object_id('"BO MON"')
				and   type = 'U')
	   drop table "BO MON"
	go

	if exists (select 1
				from  sysobjects
			   where  id = object_id('"CHUC VU"')
				and   type = 'U')
	   drop table "CHUC VU"
	go

	if exists (select 1
				from  sysindexes
			   where  id    = object_id('Co')
				and   name  = 'Co3_FK'
				and   indid > 0
				and   indid < 255)
	   drop index Co.Co3_FK
	go

	if exists (select 1
				from  sysindexes
			   where  id    = object_id('Co')
				and   name  = 'Co2_FK'
				and   indid > 0
				and   indid < 255)
	   drop index Co.Co2_FK
	go

	if exists (select 1
				from  sysindexes
			   where  id    = object_id('Co')
				and   name  = 'Co_FK'
				and   indid > 0
				and   indid < 255)
	   drop index Co.Co_FK
	go

	if exists (select 1
				from  sysobjects
			   where  id = object_id('Co')
				and   type = 'U')
	   drop table Co
	go

	if exists (select 1
				from  sysobjects
			   where  id = object_id('"HINH THUC DIEM DANH"')
				and   type = 'U')
	   drop table "HINH THUC DIEM DANH"
	go

	if exists (select 1
				from  sysobjects
			   where  id = object_id('"HOAT DONG"')
				and   type = 'U')
	   drop table "HOAT DONG"
	go

	if exists (select 1
				from  sysobjects
			   where  id = object_id('KHOA')
				and   type = 'U')
	   drop table KHOA
	go

	if exists (select 1
				from  sysindexes
			   where  id    = object_id('LOP')
				and   name  = 'Quan_FK'
				and   indid > 0
				and   indid < 255)
	   drop index LOP.Quan_FK
	go

	if exists (select 1
				from  sysobjects
			   where  id = object_id('LOP')
				and   type = 'U')
	   drop table LOP
	go

	if exists (select 1
				from  sysobjects
			   where  id = object_id('"PHIEU DANG KY"')
				and   type = 'U')
	   drop table "PHIEU DANG KY"
	go

	if exists (select 1
				from  sysindexes
			   where  id    = object_id('"SINH VIEN"')
				and   name  = 'Trong_FK'
				and   indid > 0
				and   indid < 255)
	   drop index "SINH VIEN".Trong_FK
	go

	if exists (select 1
				from  sysobjects
			   where  id = object_id('"SINH VIEN"')
				and   type = 'U')
	   drop table "SINH VIEN"
	go

	if exists (select 1
				from  sysobjects
			   where  id = object_id('"TO CHUC"')
				and   type = 'U')
	   drop table "TO CHUC"
	go

	if exists (select 1
				from  sysindexes
			   where  id    = object_id('"Tham gia hoat dong"')
				and   name  = 'Tham gia h 4_FK'
				and   indid > 0
				and   indid < 255)
	   drop index "Tham gia hoat dong"."Tham gia h 4_FK"
	go

	if exists (select 1
				from  sysindexes
			   where  id    = object_id('"Tham gia hoat dong"')
				and   name  = 'Tham gia h 3_FK'
				and   indid > 0
				and   indid < 255)
	   drop index "Tham gia hoat dong"."Tham gia h 3_FK"
	go

	if exists (select 1
				from  sysindexes
			   where  id    = object_id('"Tham gia hoat dong"')
				and   name  = 'Tham gia h 2_FK'
				and   indid > 0
				and   indid < 255)
	   drop index "Tham gia hoat dong"."Tham gia h 2_FK"
	go

	if exists (select 1
				from  sysindexes
			   where  id    = object_id('"Tham gia hoat dong"')
				and   name  = 'Tham gia h _FK'
				and   indid > 0
				and   indid < 255)
	   drop index "Tham gia hoat dong"."Tham gia h _FK"
	go

	if exists (select 1
				from  sysobjects
			   where  id = object_id('"Tham gia hoat dong"')
				and   type = 'U')
	   drop table "Tham gia hoat dong"
	go

	if exists (select 1
				from  sysindexes
			   where  id    = object_id('"Thong bao"')
				and   name  = 'Thong bao2_FK'
				and   indid > 0
				and   indid < 255)
	   drop index "Thong bao"."Thong bao2_FK"
	go

	if exists (select 1
				from  sysindexes
			   where  id    = object_id('"Thong bao"')
				and   name  = 'Thong bao_FK'
				and   indid > 0
				and   indid < 255)
	   drop index "Thong bao"."Thong bao_FK"
	go

	if exists (select 1
				from  sysobjects
			   where  id = object_id('"Thong bao"')
				and   type = 'U')
	   drop table "Thong bao"
	go

	if exists (select 1
				from  sysobjects
			   where  id = object_id('"VAI TRO"')
				and   type = 'U')
	   drop table "VAI TRO"
	go

	if exists (select 1
				from  sysindexes
			   where  id    = object_id('"Vao to chuc"')
				and   name  = 'Tham gia tc3_FK'
				and   indid > 0
				and   indid < 255)
	   drop index "Vao to chuc"."Tham gia tc3_FK"
	go

	if exists (select 1
				from  sysindexes
			   where  id    = object_id('"Vao to chuc"')
				and   name  = 'Tham gia tc2_FK'
				and   indid > 0
				and   indid < 255)
	   drop index "Vao to chuc"."Tham gia tc2_FK"
	go

	if exists (select 1
				from  sysindexes
			   where  id    = object_id('"Vao to chuc"')
				and   name  = 'Tham gia tc_FK'
				and   indid > 0
				and   indid < 255)
	   drop index "Vao to chuc"."Tham gia tc_FK"
	go

	if exists (select 1
				from  sysobjects
			   where  id = object_id('"Vao to chuc"')
				and   type = 'U')
	   drop table "Vao to chuc"
	go

	/*==============================================================*/
	/* Table: "BO MON"                                              */
	/*==============================================================*/
	create table "BO MON" (
	   "Ma bo mon"          varchar(10)          not null,
	   "Ma khoa"            varchar(10)          not null,
	   "Ten Bo Mon"         nvarchar(30)         null,
	   constraint "PK_BO MON" primary key nonclustered ("Ma bo mon")
	)
	go
	insert [BO MON]
	values (1, 1, N'Y Đa Khoa');
	insert [BO MON]
	values (2, 1, N'Dược');
	insert [BO MON]
	values (3, 1, N'Điều Dưỡng');
	insert [BO MON]
	values (4, 1, N'Xét Nghiệm');
	insert [BO MON]
	values (5, 1, N'Y Tế Công Cộng');
	insert [BO MON]
	values (6, 2, N'Ngôn Ngữ Anh');
	insert [BO MON]
	values (7, 2, N'Ngôn Ngữ Trung Quốc');
	insert [BO MON]
	values (8, 3, N'Công Nghệ Thông Tin');
	insert [BO MON]
	values (9, 3, N'Cơ Khí - Động Lực');
	insert [BO MON]
	values (10, 3, N'Điện - Điện Tử');
	insert [BO MON]
	values (11, 3, N'Xây Dựng');
	insert [BO MON]
	values (12, 4, N'Chăn Nuôi Thú Y');
	insert [BO MON]
	values (13, 4, N'Nông Nghiệp');
	insert [BO MON]
	values (14, 4, N'Thủy Sản');
	insert [BO MON]
	values (15, 5, N'Giáo Dục Mầm Non');
	insert [BO MON]
	values (16, 5, N'Giáo Dục Tiểu Học');
	insert [BO MON]
	values (17, 5, N'Sư Phạm Ngữ Văn');
	insert [BO MON]
	values (18, 5, N'Sư Phạm Tiếng Khmer');
	insert [BO MON]
	values (19, 5, N'Quản Lý Thể Dục Thể Thao');
	select *
	from [BO MON]

	/*==============================================================*/
	/* Index: "Quan ly_FK"                                          */
	/*==============================================================*/
	create index "Quan ly_FK" on "BO MON" (
	"Ma khoa" ASC
	)
	go

	/*==============================================================*/
	/* Table: "CHUC VU"                                             */
	/*==============================================================*/
	create table "CHUC VU" (
	   "Ma chuc vu"         varchar(10)          not null,
	   "Ten chuc vu"        nvarchar(30)          null,
	   constraint "PK_CHUC VU" primary key nonclustered ("Ma chuc vu")
	)
	go
	insert [CHUC VU]
	values (1, N'Trưởng Đoàn');
	insert [CHUC VU]
	values (2, N'Phó Đoàn');
	insert [CHUC VU]
	values (3, N'Trưởng Hội');
	insert [CHUC VU]
	values (4, N'Phó Hội');
	insert [CHUC VU]
	values (5, N'Chủ Nhiệm clb');
	insert [CHUC VU]
	values (6, N'Phó Chủ Nhiệm clb');
	insert [CHUC VU]
	values (7, N'Ủy Viên');
	insert [CHUC VU]
	values (8, N'Thành Viên');
	delete [CHUC VU]
	select *
	from [CHUC VU]

	/*==============================================================*/
	/* Table: Co                                                    */
	/*==============================================================*/
	create table Co (
	   "Ma sv"              varchar(10)          not null,
	   "Ma chuc vu"         varchar(10)          not null,
	   "Ma to chuc"         varchar(10)          not null,
	   "Thoi gian bd"       datetime             null,
	   "Thoi gian kt"       datetime             null,
	   constraint PK_CO primary key ("Ma sv", "Ma chuc vu", "Ma to chuc")
	)
	go
	insert Co
	values (116021206,1,1,'2023-08-01','2024-08-01');
	insert Co
	values (118721002,2,1,'2023-08-01','2024-08-01');
	insert Co
	values (110421161,7,1,'2023-08-01','2024-08-01');
	insert Co
	values (114321280,3,2,'2023-08-01','2024-08-01');
	insert Co
	values (112122086,7,2,'2023-08-01','2024-08-01');
	insert Co
	values (112121142,4,3,'2023-08-01','2024-08-01');
	insert Co
	values (117521002,8,3,'2023-08-01','2024-08-01');
	insert Co
	values (115321107,7,4,'2023-08-01','2024-08-01');
	insert Co
	values (115423165,8,4,'2023-08-01','2024-08-01');
	insert Co
	values (115222002,5,5,'2023-08-01','2024-08-01');
	insert Co
	values (115621009,6,5,'2023-08-01','2024-08-01');
	insert Co
	values (111821041,7,5,'2023-08-01','2024-08-01');
	insert Co
	values (118020075,8,5,'2023-08-01','2024-08-01');
	insert Co
	values (111722039,6,6,'2023-08-01','2024-08-01');
	insert Co
	values (111322132,8,6,'2023-08-01','2024-08-01');
	insert Co
	values (110321037,5,7,'2023-08-01','2024-08-01');
	insert Co
	values (116222017,8,7,'2023-08-01','2024-08-01');
	insert Co
	values (114221117,5,8,'2023-08-01','2024-08-01');
	insert Co
	values (117822034,6,8,'2023-08-01','2024-08-01');
	insert Co
	values (113722013,7,8,'2023-08-01','2024-08-01');
	

	/*==============================================================*/
	/* Index: Co_FK                                                 */
	/*==============================================================*/
	create index Co_FK on Co (
	"Ma sv" ASC
	)
	go

	/*==============================================================*/
	/* Index: Co2_FK                                                */
	/*==============================================================*/
	create index Co2_FK on Co (
	"Ma chuc vu" ASC
	)
	go

	/*==============================================================*/
	/* Index: Co3_FK                                                */
	/*==============================================================*/
	create index Co3_FK on Co (
	"Ma to chuc" ASC
	)
	go

	/*==============================================================*/
	/* Table: "HINH THUC DIEM DANH"                                 */
	/*==============================================================*/
	create table "HINH THUC DIEM DANH" (
	   "Ma ht"              varchar(10)          not null,
	   "Ten ht"             nvarchar(30)          null,
	   constraint "PK_HINH THUC DIEM DANH" primary key nonclustered ("Ma ht")
	)
	go
	insert [HINH THUC DIEM DANH]
	values (1, N'Ký Tên');
	insert [HINH THUC DIEM DANH]
	values (2, N'Hình Ảnh');
	insert [HINH THUC DIEM DANH]
	values (3, N'Mã QR');
	insert [HINH THUC DIEM DANH]
	values (4, N'Mã do người điểm danh cấp');
	select*
	from [HINH THUC DIEM DANH]

	/*==============================================================*/
	/* Table: "HOAT DONG"                                           */
	/*==============================================================*/
	create table "HOAT DONG" (
	   "Ma hd"              varchar(10)          not null,
	   "Ten hd"             nvarchar(30)          null,
	   "So luong"           numeric(5)           null,
	   "Quyen loi"          nvarchar(50)          null,
	   "Dia Diem"           nvarchar(50)          null,
	   "Trang phuc"         nvarchar(30)          null,
	   constraint "PK_HOAT DONG" primary key nonclustered ("Ma hd")
	)
	go
	insert [HOAT DONG]
	values (1, N'Quyên Góp', null, N'Cộng 2 điểm rèn luyện', null, N'Tự do');
	insert [HOAT DONG]
	values (2, N'Về Nguồn', null, N'Cộng 3 điểm rèn luyện', N'Đền thờ Bác', N'Áo đòan bỏ áo vào quần');
	insert [HOAT DONG]
	values (3, N'Cổ Vũ Bóng Đá', null, N'Cộng 2 điểm rèn luyện', N'Sân Banh Trường Đại Học', N'Tự do');
	insert [HOAT DONG]
	values (4, N'Cổ Vũ Bóng Chuyền', null, N'Cộng 2 điểm rèn luyện', N'Sân Ký Túc Xá', N'Tự Do');
	insert [HOAT DONG]
	values (5, N'Công Trình Thanh Niên', 100, N'Cộng 1 điểm rèn luyện', N'Khuôn Viên Khoa', N'Tự do');
	insert [HOAT DONG]
	values (6, N'Công Tác Xã Hội', null, N'Cộng 5 điểm rèn luyện', N'Các Huyện, Xã', N'Áo đòan bỏ áo vào quần');
	insert [HOAT DONG]
	values (7, N'Chương Trình Giao Lưu', null, N'Cộng 2 điểm rèn luyện', N'Hội Trường', N'Tự do');
	insert [HOAT DONG]
	values (8, N'Trồng cây', 100, N'Cộng 2 điểm rèn luyện', N'Các Huyện, Xã', N'Áo đòan bỏ áo vào quần');
	insert [HOAT DONG]
	values (9, N'Cuộc Thi', null, N'Cộng 2 điểm rèn luyện', N'Hội Trường', N'Tự do');
	insert [HOAT DONG]
	values (10, N'Thư Ký', 30, N'Cộng 2 điểm rèn luyện', N'Sân tổ chức', N'Áo đòan, trắng bỏ áo vào quần');
	select *
	from [HOAT DONG]

	/*==============================================================*/
	/* Table: KHOA                                                  */
	/*==============================================================*/
	create table KHOA (
	   "Ma khoa"            varchar(10)          not null,
	   "Ten khoa"           nvarchar(30)         null,
	   constraint PK_KHOA primary key nonclustered ("Ma khoa")
	)
	go
	insert KHOA
	values (1, N'Khoa Y Dược');
	insert KHOA
	values (2, N'Khoa Ngọai Ngữ');
	insert KHOA
	values (3, N'Khoa Kỹ thuật và Công nghệ');
	insert KHOA
	values (4, N'Khoa Nông nghiệp – Thủy sản');
	insert KHOA
	values (5, N'Khoa Sư Phạm');
	alter table KHOA
	alter column [Ten khoa] nvarchar(30) null;
	select *
	from KHOA

	/*==============================================================*/
	/* Table: LOP                                                   */
	/*==============================================================*/
	create table LOP (
	   "Ma lop"             varchar(10)          not null,
	   "Ma bo mon"          varchar(10)          not null,
	   "Ten lop"            nvarchar(30)         null,
	   constraint PK_LOP primary key nonclustered ("Ma lop")
	)
	go
	insert LOP
	values ('DAYK', 1, N'Y Đa Khoa');
	insert LOP
	values ('DAD', 2, N'Dược');
	insert LOP
	values ('DADD', 3, N'Điều Dưỡng');
	insert LOP
	values ('DAXYH', 4, N'Xét Nghiệm Hình Ảnh Y Học');
	insert LOP
	values ('DAYTC', 5, N'Y Tế Công Cộng');
	insert LOP
	values ('DANNA', 6, N'Ngôn Ngữ Anh');
	insert LOP
	values ('DANNTQ', 7, N'Ngôn Ngữ Trung Quốc');
	insert LOP
	values ('DATT', 8, N'Công Nghệ Thông Tin');
	insert LOP
	values ('DACK', 9, N'Cơ Khí');
	insert LOP
	values ('DACNOT', 9, N'Công Nghệ Ô Tô');
	insert LOP
	values ('DADT', 10, N'Điện Tử');
	insert LOP
	values ('DAKD', 10, N'Kỹ Thuật Điện');
	insert LOP
	values ('DADHT', 10, N'Điện Hệ Thống');
	insert LOP
	values ('DAXD', 11, N'Xây Dựng');
	insert LOP
	values ('DATY', 12, N'Thú Y');
	insert LOP
	values ('DAN', 13, N'Nông Nghiệp');
	insert LOP
	values ('DATS', 14, N'Thủy Sản');
	insert LOP
	values ('DACNTP', 14, N'Công Nghệ Thực Phẩm');
	insert LOP
	values ('DAMN', 15, N'Mầm Non');
	insert LOP
	values ('DATH', 16, N'Tiểu Học');
	insert LOP
	values ('DASNV', 17, N'Sư Phạm Ngữ Văn');
	insert LOP
	values ('DASPTK', 18, N'Sư Phạm Tiếng Khmer');
	insert LOP
	values ('DAQLTD', 19, N'Quản Lý Thể Dục Thể Thao');
	
	update LOP 
	set [Ten lop] =  N'Sư Phạm Tiếng Khmer'
	where [Ma lop] = 'DASPTK';
	
	select *
	from LOP

	/*==============================================================*/
	/* Index: Quan_FK                                               */
	/*==============================================================*/
	create index Quan_FK on LOP (
	"Ma bo mon" ASC
	)
	go

	/*==============================================================*/
	/* Table: "PHIEU DANG KY"                                       */
	/*==============================================================*/
	create table "PHIEU DANG KY" (
	   "Ma phieu"           varchar(10)          not null,
	   constraint "PK_PHIEU DANG KY" primary key nonclustered ("Ma phieu")
	)
	go
	insert [PHIEU DANG KY]
	values ('PDK');

	/*==============================================================*/
	/* Table: "SINH VIEN"                                           */
	/*==============================================================*/
	create table "SINH VIEN" (
	   "Ma sv"              varchar(10)          not null,
	   "Ma lop"             varchar(10)          not null,
	   "Ten sv"             nvarchar(30)         null,
	   "Ngay sinh"          datetime             null,
	   Sdt                  numeric(10)          null,
	   "Phai"               nvarchar(3)          null,
	   constraint "PK_SINH VIEN" primary key nonclustered ("Ma sv")
	)
	go
	insert [SINH VIEN]
	values (116021206,'DAYK', N'Trần Nhật Quang', '2003-11-10', null, 'Nam');
	insert [SINH VIEN]
	values (118721002,'DANNTQ', N'Võ Thị Mộng Cầm', '2003/04/09', null, N'Nữ');
	insert [SINH VIEN]
	values (110421161,'DANNA', N'Trương Gia Mẫn', '2003-06-07', null, 'Nam');
	insert [SINH VIEN]
	values (114321280,'DATH', N'Lê Kim Ngân', '2003-05-13', null, N'Nữ');
	insert [SINH VIEN]
	values (112122086 ,'DAKD', N'Trần Công Minh', '2003-04-18', null, 'Nam');
	insert [SINH VIEN]
	values (112121142 ,'DADHT', N'Nguyễn Thành Lộc', null, null, 'Nam');
	insert [SINH VIEN]
	values (117521002,'DATT', N'Giang Quốc Huy', '2003-08-25', null, 'Nam');
	insert [SINH VIEN]
	values (115321107,'DAXYH', N'Từ Nguyễn Xuân Trúc', null, null, N'Nữ');
	insert [SINH VIEN]
	values (115423165,'DADD', N'Nguyễn Thị Bé Thơ', null, null, N'Nữ');
	insert [SINH VIEN]
	values (115222002,'DADT', N'Lê Quốc Dương', null, null, 'Nam');
	insert [SINH VIEN]
	values (115621009,'DAD', N'Trương Tuyết Thảo',null,null, N'Nữ');
	insert [SINH VIEN]
	values (111821041,'DACK', N'Trần Gia Bảo',null,null, 'Nam');
	insert [SINH VIEN]
	values (118020075,'DACNOT', N'Đỗ Minh Trung',null,null, 'Nam');
	insert [SINH VIEN]
	values (111722039,'DAXD', N'Huỳnh Ngọc Như Ý',null,null, N'Nữ');
	insert [SINH VIEN]
	values (111322132,'DATY', N'Trần Mạnh Thường',null,null, 'Nam');
	insert [SINH VIEN]
	values (110321037,'DATS', N'Lâm Minh Phát',null,null, 'Nam');
	insert [SINH VIEN]
	values (116222017,'DACNTP', N'Hồ Thị Yến Nhi',null,null, N'Nữ');
	insert [SINH VIEN]
	values (114221117,'DAMN', N'Nguyễn Thị Mộng Kiều',null,null, N'Nữ');
	insert [SINH VIEN]
	values (117822034,'DAQLTD', N'Huỳnh Thị Yến Thư',null,null, N'Nữ');
	insert [SINH VIEN]
	values (113722013 ,'DASNV', N'Thạch Thị Thuý Hoa',null,null, N'Nữ');
	delete [SINH VIEN]
	alter table [SINH VIEN]
	alter column [Ten sv] nvarchar(30) null;
	alter table [SINH VIEN]
	alter column [Phai] nvarchar(30) null;
	select *
	from [SINH VIEN]

	/*==============================================================*/
	/* Index: Trong_FK                                              */
	/*==============================================================*/
	create index Trong_FK on "SINH VIEN" (
	"Ma lop" ASC
	)
	go

	/*==============================================================*/
	/* Table: "TO CHUC"                                             */
	/*==============================================================*/
	create table "TO CHUC" (
	   "Ma to chuc"         varchar(10)          not null,
	   "Ten to chuc"        nvarchar(30)          null,
	constraint "PK_TO CHUC" primary key nonclustered ("Ma to chuc")
	)
	go
	insert [TO CHUC]
	values (1, N'Đòan Trường');
	insert [TO CHUC]
	values (2, N'Chi Hội Thành Phố');
	insert [TO CHUC]
	values (3, N'Chi Hội Huyện Duyên Hải');
	insert [TO CHUC]
	values (4, N'Chi Hội Huyện Càng Long');
	insert [TO CHUC]
	values (5, N'Clb Hành Trình Sinh Viên');
	insert [TO CHUC]
	values (6, N'Clb Người Tốt Việc Tốt');
	insert [TO CHUC]
	values (7, N'Clb Kỹ Năng Sống');
	insert [TO CHUC]
	values (8, N'Clb Sáng Tạo');
	alter table [TO CHUC]
	alter column [Ten to chuc] nvarchar(30) null;
	update [TO CHUC] 
	set [Ten to chuc] =  N'Clb Hành Trình Sinh Viên'
	where [Ma to chuc] = 5;
	delete [TO CHUC]
	select *
	from [TO CHUC]

	/*==============================================================*/
	/* Table: "Tham gia hoat dong"                                  */
	/*==============================================================*/
	create table "Tham gia hoat dong" (
	   "Ma sv"              varchar(10)          not null,
	   "Ma hd"              varchar(10)          not null,
	   "Ma ht"              varchar(10)          not null,
	   "Ma vai tro"         varchar(10)          not null,
	   "Ngay tham gia hd"   datetime             null,
	   constraint "PK_THAM GIA HOAT DONG" primary key ("Ma sv", "Ma hd", "Ma ht", "Ma vai tro")
	)
	go
	insert [Tham gia hoat dong]
	values (116021206,1,2,9,'2023-08-05');
	insert [Tham gia hoat dong]
	values (115321107,10,1,2,'2023-11-20');
	insert [Tham gia hoat dong]
	values (116222017,8,2,9,'2023-11-25');
	insert [Tham gia hoat dong]
	values (117521002,2,1,9,'2024-04-30');
	insert [Tham gia hoat dong]
	values (118020075,5,3,9,'2023-10-05');
	insert [Tham gia hoat dong]
	values (112121142,3,3,9,'2023-11-20');
	insert [Tham gia hoat dong]
	values (115423165,4,3,9,'2023-11-20');
	insert [Tham gia hoat dong]
	values (111821041,6,2,9,'2023-11-26');
	insert [Tham gia hoat dong]
	values (111722039,7,2,9,'2023-12-03');
	insert [Tham gia hoat dong]
	values (113722013,9,2,9,'2023-11-11');
	
	insert [Tham gia hoat dong]
	values (116021206,2,1,4,'2023-11-11');
	insert [Tham gia hoat dong]
	values (116021206,3,3,2,'2023-11-11');	
	insert [Tham gia hoat dong]
	values (116021206,9,3,6,'2023-11-11');
	/*Nhap them du lieu*/
	insert [Tham gia hoat dong]
	values (116021206,2,1,4,'2023-11-11');
	insert [Tham gia hoat dong]
	values (116021206,3,3,2,'2023-11-11');	
	insert [Tham gia hoat dong]
	values (116021206,9,3,6,'2023-11-11');
	
	select*
	from [Tham gia hoat dong]

	/*==============================================================*/
	/* Index: "Tham gia h _FK"                                      */
	/*==============================================================*/
	create index "Tham gia h _FK" on "Tham gia hoat dong" (
	"Ma sv" ASC
	)
	go

	/*==============================================================*/
	/* Index: "Tham gia h 2_FK"                                     */
	/*==============================================================*/
	create index "Tham gia h 2_FK" on "Tham gia hoat dong" (
	"Ma hd" ASC
	)
	go

	/*==============================================================*/
	/* Index: "Tham gia h 3_FK"                                     */
	/*==============================================================*/
	create index "Tham gia h 3_FK" on "Tham gia hoat dong" (
	"Ma ht" ASC
	)
	go

	/*==============================================================*/
	/* Index: "Tham gia h 4_FK"                                     */
	/*==============================================================*/
	create index "Tham gia h 4_FK" on "Tham gia hoat dong" (
	"Ma vai tro" ASC
	)
	go

	/*==============================================================*/
	/* Table: "Thong bao"                                           */
	/*==============================================================*/
	create table "Thong bao" (
	   "Ma to chuc"         varchar(10)          not null,
	   "Ma hd"              varchar(10)          not null,
	   "Ngay thong bao"     datetime             null,
	   constraint "PK_THONG BAO" primary key ("Ma to chuc", "Ma hd")
	)
	go
	insert [Thong bao]
	values (5,1,'2023-08-05');
	insert [Thong bao]
	values (2,2,'2023-09-02');
	insert [Thong bao]
	values (3,3,'2023-11-20');
	insert [Thong bao]
	values (4,4,'2023-11-20');
	insert [Thong bao]
	values (5,5,'2023-10-05');
	insert [Thong bao]
	values (5,6,'2023-11-26');
	insert [Thong bao]
	values (6,7,'2023-12-03');
	insert [Thong bao]
	values (7,8,'2023-11-25');
	insert [Thong bao]
	values (8,9,'2023-11-11');
	insert [Thong bao]
	values (3,10,'2023-11-20');
	insert [Thong bao]
	values (4,10,'2023-11-20');
	insert [Thong bao]
	values (3,2,'2024-04-30');
	insert [Thong bao]
	values (4,2,'2023-09-02');
	insert [Thong bao]
	values (5,2,'2023-12-22');
	insert [Thong bao]
	values (6,2,'2023-12-22');
	

	/*==============================================================*/
	/* Index: "Thong bao_FK"                                        */
	/*==============================================================*/
	create index "Thong bao_FK" on "Thong bao" (
	"Ma to chuc" ASC
	)
	go

	/*==============================================================*/
	/* Index: "Thong bao2_FK"                                       */
	/*==============================================================*/
	create index "Thong bao2_FK" on "Thong bao" (
	"Ma hd" ASC
	)
	go

	/*==============================================================*/
	/* Table: "VAI TRO"                                             */
	/*==============================================================*/
	create table "VAI TRO" (
	   "Ma vai tro"         varchar(10)          not null,
	   "Ten vai tro"        varchar(30)          null,
	   constraint "PK_VAI TRO" primary key nonclustered ("Ma vai tro")
	)
	go
	insert [VAI TRO]
	values (1, N'Hậu Cần');
	insert [VAI TRO]
	values (2, N'Thư Ký');
	insert [VAI TRO]
	values (3, N'Vệ Sinh');
	insert [VAI TRO]
	values (4, N'Giữ Xe');
	insert [VAI TRO]
	values (5, N'Thể Thao');
	insert [VAI TRO]
	values (6, N'Văn Nghệ');
	insert [VAI TRO]
	values (7, N'Nấu Ăn');
	insert [VAI TRO]
	values (8, N'Điểm Danh');
	insert [VAI TRO]
	values (9, N'Tham Gia');
	alter table [VAI TRO]
	alter column [Ten vai tro] nvarchar(30) null;
	delete [VAI TRO]
	select *
	from [VAI TRO]

	/*==============================================================*/
	/* Table: "Vao to chuc"                                         */
	/*==============================================================*/
	create table "Vao to chuc" (
	   "Ma sv"              varchar(10)          not null,
	   "Ma to chuc"         varchar(10)          not null,
	   "Ma phieu"           varchar(10)          not null,
	   "Ngay tham gia tc"   datetime             null,
	   constraint "PK_VAO TO CHUC" primary key ("Ma sv", "Ma to chuc", "Ma phieu")
	)
	go
	insert [Vao to chuc]
	values (110321037,7,'PDK','2023-08-01');
	insert [Vao to chuc]
	values (110421161,1,'PDK','2023-08-01');
	insert [Vao to chuc]
	values (111322132,6,'PDK','2023-08-01'); 
	insert [Vao to chuc]
	values (111722039,6,'PDK','2023-08-01'); 		
	insert [Vao to chuc]
	values (111821041,5,'PDK','2023-08-01'); 
	insert [Vao to chuc]
	values (112121142,3,'PDK','2023-08-01'); 
	insert [Vao to chuc]
	values (112122086,2,'PDK','2023-08-01'); 
	insert [Vao to chuc]
	values (113722013,8,'PDK','2023-08-01'); 
	insert [Vao to chuc]
	values (114221117,8,'PDK','2023-08-01'); 
	insert [Vao to chuc]
	values (114321280,2,'PDK','2023-08-01'); 
	insert [Vao to chuc]
	values (115222002,5,'PDK','2023-08-01'); 
	insert [Vao to chuc]
	values (115321107,4,'PDK','2023-08-01'); 
	insert [Vao to chuc]
	values (115423165,4,'PDK','2023-08-01'); 
	insert [Vao to chuc]
	values (115621009,5,'PDK','2023-08-01'); 
	insert [Vao to chuc]
	values (116021206,1,'PDK','2023-08-01'); 
	insert [Vao to chuc]
	values (116222017,7,'PDK','2023-08-01'); 
	insert [Vao to chuc]
	values (117521002,3,'PDK','2023-08-01'); 
	insert [Vao to chuc]
	values (117822034,8,'PDK','2023-08-01'); 
	insert [Vao to chuc]
	values (118020075,5,'PDK','2023-08-01'); 
	insert [Vao to chuc]
	values (118721002,1,'PDK','2023-08-01'); 
	select*
	from [Vao to chuc]
	

	/*==============================================================*/
	/* Index: "Tham gia tc_FK"                                      */
	/*==============================================================*/
	create index "Tham gia tc_FK" on "Vao to chuc" (
	"Ma sv" ASC
	)
	go

	/*==============================================================*/
	/* Index: "Tham gia tc2_FK"                                     */
	/*==============================================================*/
	create index "Tham gia tc2_FK" on "Vao to chuc" (
	"Ma to chuc" ASC
	)
	go

	/*==============================================================*/
	/* Index: "Tham gia tc3_FK"                                     */
	/*==============================================================*/
	create index "Tham gia tc3_FK" on "Vao to chuc" (
	"Ma phieu" ASC
	)
	go

	alter table "BO MON"
	   add constraint "FK_BO MON_QUAN LY_KHOA" foreign key ("Ma khoa")
		  references KHOA ("Ma khoa")
	go

	alter table Co
	   add constraint "FK_CO_CO_SINH VIE" foreign key ("Ma sv")
		  references "SINH VIEN" ("Ma sv")
	go

	alter table Co
	   add constraint "FK_CO_CO2_CHUC VU" foreign key ("Ma chuc vu")
		  references "CHUC VU" ("Ma chuc vu")
	go

	alter table Co
	   add constraint "FK_CO_CO3_TO CHUC" foreign key ("Ma to chuc")
		  references "TO CHUC" ("Ma to chuc")
	go

	alter table LOP
	   add constraint "FK_LOP_QUAN_BO MON" foreign key ("Ma bo mon")
		  references "BO MON" ("Ma bo mon")
	go

	alter table "SINH VIEN"
	   add constraint "FK_SINH VIE_TRONG_LOP" foreign key ("Ma lop")
		  references LOP ("Ma lop")
	go

	alter table "Tham gia hoat dong"
	   add constraint "FK_THAM GIA_THAM GIA _SINH VIE" foreign key ("Ma sv")
		  references "SINH VIEN" ("Ma sv")
	go

	alter table "Tham gia hoat dong"
	   add constraint "FK_THAM GIA_THAM GIA _HOAT DON" foreign key ("Ma hd")
		  references "HOAT DONG" ("Ma hd")
	go

	alter table "Tham gia hoat dong"
	   add constraint "FK_THAM GIA_THAM GIA _HINH THU" foreign key ("Ma ht")
		  references "HINH THUC DIEM DANH" ("Ma ht")
	go

	alter table "Tham gia hoat dong"
	   add constraint "FK_THAM GIA_THAM GIA _VAI TRO" foreign key ("Ma vai tro")
		  references "VAI TRO" ("Ma vai tro")
	go

	alter table "Thong bao"
	   add constraint "FK_THONG BA_THONG BAO_TO CHUC" foreign key ("Ma to chuc")
		  references "TO CHUC" ("Ma to chuc")
	go

	alter table "Thong bao"
	   add constraint "FK_THONG BA_THONG BAO_HOAT DON" foreign key ("Ma hd")
		  references "HOAT DONG" ("Ma hd")
	go

	alter table "Vao to chuc"
	   add constraint "FK_VAO TO C_THAM GIA _SINH VIE" foreign key ("Ma sv")
		  references "SINH VIEN" ("Ma sv")
	go

	alter table "Vao to chuc"
	   add constraint "FK_VAO TO C_THAM GIA _TO CHUC" foreign key ("Ma to chuc")
		  references "TO CHUC" ("Ma to chuc")
	go

	alter table "Vao to chuc"
	   add constraint "FK_VAO TO C_THAM GIA _PHIEU DA" foreign key ("Ma phieu")
		  references "PHIEU DANG KY" ("Ma phieu")
	go
    select*
    from [BO MON]

    select*
    from Co
    /*Doan trg bi thu pho bi thu */
    select*
    from [CHUC VU]
    
    select*
    from [HINH THUC DIEM DANH]
    
    select*
    from [HOAT DONG]

    select*
    from KHOA

    select*
    from LOP
    
    select *
    from [PHIEU DANG KY]
    
    select *
    from [SINH VIEN]
    
    select *
    from [TO CHUC]
    
    select *
    from [Tham gia hoat dong]
	
	select *
    from [Thong bao]
    
    select *
    from [VAI TRO]
    
    select *
    from [Vao to chuc]
    
    /*Hiển thị danh sách gồm mã số sinh viên ,tên của sinh viên và tên hoạt động tham gia vào ngày 20/11/2023 */
    
    select A.[Ma sv], A.[Ten sv], C.[Ten hd], B.[Ngay tham gia hd]  
    from [SINH VIEN] as A, [Tham gia hoat dong] as B, [HOAT DONG] as C
    where A.[Ma sv] = B.[Ma sv] and B.[Ma hd] = C.[Ma hd] and B.[Ngay tham gia hd]='2023-11-20'
    
    /*Hiển thị danh sách Tổ chức tạo hoạt động về nguồn*/
    
    select A.[Ten to chuc], B.[Ten hd], C.[Ngay thong bao]
    from [TO CHUC] as A, [HOAT DONG] as B, [Thong bao] as C
    where A.[Ma to chuc]=C.[Ma to chuc] and B.[Ma hd]=C.[Ma hd] and C.[Ma hd]=2
	
	/*Hien thi danh sach sinh vien tham gia doan, hoi, clb va chuc vu gi trong to chuc*/
	
	select A.[Ma sv], A.[Ten sv], B.[Ten to chuc], D.[Ten chuc vu], C.[Ngay tham gia tc]
	from [SINH VIEN]as A, [TO CHUC] as B, [Vao to chuc] as C, [CHUC VU] as D, [Vao to chuc] as E
	where A.[Ma sv]=C.[Ma sv] and B.[Ma to chuc]=C.[Ma to chuc] and D.[Ma chuc vu]=E.[Ma to chuc] and B.[Ma to chuc]=E.[Ma to chuc]
	and A.[Ma sv]=E.[Ma sv]
	
	/*Sinh vien co vai tro gi trong hoat dong*/
	
	select A.[Ma sv],A.[Ten sv], D.[Ten hd], B.[Ten vai tro]
	from [SINH VIEN] as A, [VAI TRO] as B, [Tham gia hoat dong] as C, [HOAT DONG] as D
	where A.[Ma sv]=C.[Ma sv] and B.[Ma vai tro]=C.[Ma vai tro] and C.[Ma hd]=D.[Ma hd]
	
	/*Hoat dong duoc diem danh theo hinh thuc nao*/
	
	select A.[Ten hd], B.[Ten ht]
	from [HOAT DONG] as A, [HINH THUC DIEM DANH] as B, [Tham gia hoat dong] as C
	where A.[Ma hd]=C.[Ma hd] and B.[Ma ht]=C.[Ma ht]	
	
	/*To chuc thong bao hoat dong*/
	
	select A.[Ten to chuc], B.[Ten hd], C.[Ngay thong bao]
	from [TO CHUC] as A, [HOAT DONG] as B, [Thong bao] as C
	where A.[Ma to chuc]=C.[Ma to chuc] and B.[Ma hd]=C.[Ma hd]
	
	/*Hiển thị tổ chức mà sinh viên tham gia*/
	select A.[Ma sv], A.[Ten sv], B.[Ten to chuc]
	from [SINH VIEN] as A, [TO CHUC] as B, [Vao to chuc] as C
	where A.[Ma sv]=C.[Ma sv] and B.[Ma to chuc]=C.[Ma to chuc] 
	
	/*Hiển thị hoạt động sinh viên tham gia*/
	select A.[Ma sv], A.[Ten sv], B.[Ten hd]
	from [SINH VIEN] as A, [HOAT DONG] as B, [Tham gia hoat dong] as C
	where A.[Ma sv]=C.[Ma sv] and B.[Ma hd]=C.[Ma hd]
	
	/*Hiển thị hoạt động của các tổ chức*/
	select A.[Ten to chuc], B.[Ten hd], B.[Quyen loi], B.[Trang phuc], B.[Dia Diem]
	from [TO CHUC] as A, [HOAT DONG] as B, [Thong bao] as C  
	where A.[Ma to chuc]=C.[Ma to chuc] and B.[Ma hd]=C.[Ma hd]