create database TODO /* ��������� �� */

use TODO /*��������� ����� ��, � �������� ��� ��������� �������� ��������� ������*/

/*��������� ������� "�������"*/
/*id ������� - ������ �� �������� ��������, IDENTITY - ������ ����� - 1, ����� ��������� - i+1,
name_category - �� ��� char �� ���� ������ ��'� �������, �� ���� ��������� � ������,
id_task - ������ id ��������, �� ������� � ���� ��������*/
create table category
(
id_category int IDENTITY(1,1) primary key,
name_category nvarchar(MAX),
description_category nvarchar(MAX)
)

/*��������� ������� "��������"*/
/*id �������� - ������ �� �������� ��������, IDENTITY - ������ ����� - 1, ����� ��������� - i+1
name - �� ��� char �� ���� ������ ��'� ��������, �� ���� ��������� � ������,
complete - �� ��� char �� ���� ������ ���������� ��� ��, �� �������� ����������/����������, �� ������� � 3 �������
not null check - ���� ������ ������ ��������*/

create table tasks
(id_task int IDENTITY(1,1) primary key, 
name_task nvarchar(MAX),
complete char(3) not null check(complete in ('���','ͳ')),
id_category int not null foreign key (id_category) references dbo.category(id_category) on delete no action on update no action
)

select * from category
insert into category values
('ĳ�', '������ �� ����')

select * from tasks
insert into tasks values
('������ ���', '���','1')


select tasks.name_task, category.name_category
from category
join tasks on category.id_category = tasks.id_task

drop database TODO

