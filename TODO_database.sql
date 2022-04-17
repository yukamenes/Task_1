create database TODO /* створення БД */

use TODO /*передання назви БД, в контексті якої необхідно виконати подальший скрипт*/

/*створення таблиці "Завдання"*/
/*id завдання - зайжди має унікальне значення, IDENTITY - перший рядок - 1, кожен наступний - i+1
name - має тип char та буде містити ім'я завдання, що немає обмеження в довжині,
complete - має тип char та бути містити інформацію про те, чи завдання виконанане/невиконане, має довжину в 3 символи
not null check - поле завжди містить значення*/

create table tasks
(id_task int IDENTITY(1,1) primary key, 
name_task nvarchar(MAX),
complete char(3) not null check(complete in ('Так','Ні'))
)

/*створення таблиці "Категорії"*/
/*id категорії - зайжди має унікальне значення, IDENTITY - перший рядок - 1, кожен наступний - i+1,
name_category - має тип char та буде містити ім'я категорії, що немає обмеження в довжині,
id_task - містить id завдання, що входить в дану категорію*/
create table categories
(
id_category int IDENTITY(1,1) primary key,
name_category nvarchar(MAX),
id_task int not null foreign key (id_task) references dbo.tasks(id_task) on delete cascade on update no action
)

select * from tasks
insert into tasks values
('Попити чай', 'Так')

select * from categories
insert into categories values
('Дім', '1')

select tasks.name_task, categories.name_category
from categories
join tasks on tasks.id_task = categories.id_task

drop database TODO

