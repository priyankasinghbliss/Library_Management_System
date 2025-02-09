create database LMS_Application;

use LMS_Application;

create table admin_login_tbl
(
username nvarchar(50) primary key,
password nvarchar(50),
full_name nvarchar(50)
)

select * from admin_login_tbl;

create table author_master_tbl
(
author_id nchar(10) primary key,
author_name nvarchar(50)
)

select * from author_master_tbl;

create table book_master_tbl
(
book_id nchar(10) primary key,
book_name nvarchar(max),
genre nvarchar(max),
author_name nvarchar(max),
publisher_name nvarchar(max),
publisher_date nvarchar(50),
language nvarchar(50),
edition nvarchar(max),
book_cost nchar(10),
no_of_pages nchar(10),
book_description nvarchar(max),
actual_stock nchar(10),
current_stock nchar(10),
book_img_link nvarchar(max)
)

select * from book_master_tbl;

create table publisher_master_tbl
(
publisher_id nchar(10) primary key,
publisher_name nvarchar(max)
)

select * from publisher_master_tbl;

create table book_issue_tbl
(
member_id nvarchar(50),
member_name nvarchar(50),
book_id nvarchar(50),
book_name nvarchar(50),
issue_date nvarchar(50),
due_date nvarchar(50)
)

select * from book_issue_tbl;

create table member_master_tbl
(
full_name nvarchar(50),
dob nvarchar(50),
contact_no nvarchar(50),
email nvarchar(50),
state nvarchar(50),
city nvarchar(50),
pincode nvarchar(50),
full_address nvarchar(max),
member_id nvarchar(50) primary key,
password nvarchar(50),
account_status nvarchar(50)
)

select * from member_master_tbl;

--User Login Procedure------------------------------------------------------------------

create procedure sp_UserLogin
(
@member_id [nvarchar](50),
@password [nvarchar](50)
)
as 
begin
set nocount on;
select full_name, member_id, password, account_status from member_master_tbl where member_id=@member_id and password=@password
end
go

--Admin Login Procedure-----------------------------------------------------------------

create procedure sp_AdminLogin
(
@username [nvarchar](50),
@password [nvarchar](50)
)
as 
begin
set nocount on;
select username, password, full_name from admin_login_tbl where username=@username and password=@password
end
go

--Sign Up---------------------------------------------------------------------------------

select max(member_id) as Member_ID from member_master_tbl

create procedure sp_CheckDuplicateMember
(
@member_id [nvarchar](50),
@email [nvarchar](50)
)
as 
begin
set nocount on;
select * from member_master_tbl where member_id=@member_id and email=@email 
end
go


create procedure sp_CreateAccount
(
@full_name [nvarchar](50),
@dob [nvarchar](50),
@contact_no [nvarchar](50),
@email [nvarchar](50),
@state [nvarchar](50),
@city [nvarchar](50),
@pincode [nvarchar](50),
@full_address [nvarchar](max),
@member_id [nvarchar](50),
@password [nvarchar](50),
@account_status [nvarchar](50)
)
as 
begin
insert into member_master_tbl(full_name,dob,contact_no,email,state,city,pincode,full_address,member_id,password,account_status) values (@full_name,@dob,@contact_no,@email,@state,@city,@pincode,@full_address,@member_id,@password,@account_status)
end
go

select * from member_master_tbl

