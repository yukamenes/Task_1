create database TODO /* ��������� �� */

use TODO /*��������� ����� ��, � �������� ��� ��������� �������� ��������� ������*/

/*��������� ������� "��������"*/
/*id �������� - ������ �� �������� ��������, IDENTITY - ������ ����� - 1, ����� ��������� - i+1
name - �� ��� char �� ���� ������ ��'� ��������, �� ���� ��������� � ������,
complete - �� ��� char �� ���� ������ ���������� ��� ��, �� �������� ����������/����������, �� ������� � 3 �������
not null check - ���� ������ ������ ��������*/

create table tasks
(id_task int IDENTITY(1,1) primary key, 
name_task nvarchar(MAX),
complete char(3) not null check(complete in ('���','ͳ'))
)

/*��������� ������� "�������"*/
/*id ������� - ������ �� �������� ��������, IDENTITY - ������ ����� - 1, ����� ��������� - i+1,
name_category - �� ��� char �� ���� ������ ��'� �������, �� ���� ��������� � ������,
id_task - ������ id ��������, �� ������� � ���� ��������*/
create table categories
(
id_category int IDENTITY(1,1) primary key,
name_category nvarchar(MAX),
id_task int not null foreign key (id_task) references dbo.tasks(id_task) on delete cascade on update no action
)

select * from tasks
insert into tasks values
('������ ���', '���')

select * from categories
insert into categories values
('ĳ�', '1')

select tasks.name_task, categories.name_category
from categories
join tasks on tasks.id_task = categories.id_task

drop database TODO

