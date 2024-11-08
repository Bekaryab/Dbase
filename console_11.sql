
--Подсчет всех записей:

select count(*)
from members
where members.librarian_id> 1001;


--Подсчет всех записей, где заданное поле не равно NULL:


select count(member_id)
from members
where member_id > 1001;

select * from members;


--Только уникальные значения поля:

select count (distinct member_id)
from members
where member_id > 1004;

--Давайте подсчитаем в таблице всех работников с возрастом 23 года:

select count(*) as count
from borrowings
where book_id = 5001;

select * from borrowings;


--Давайте подсчитаем в таблице количество разных

select count(distinct book_id) as book_id
from borrowings;

--Давайте подсчитаем в таблице одновременно количество разных librarian_id и количество разных commission:

select
    COUNT(distinct librarian_id) as librarian_id,
    COUNT(distinct commission) as comm
from librarians;

select * from librarians;


--Давайте подсчитаем количество всех записей:

select count(*) as count1
from librarians;

select * from librarians;

--А теперь подсчитаем количество зарплат, не равных NULL:

select count(librarian_id) as count_librarian_id
from librarians;