
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

--Пример BETWEEN

--Следующая инструкция SQL выбирает все продукты с ценой от 10 до 20:

select * from members
where librarian_id between 2001 and 2003;

select * from members;

--Чтобы отобразить продукты вне диапазона предыдущего примера, используйте NOT BETWEEN:

select * from members
where librarian_id not between 2001 and 2003;


--В следующей инструкции SQL выбираются все продукты с ценой от 10 до 20. Кроме того, не показывайте продукты с категорией ID 1,2 или 3:
select * from members
where librarian_id between 2003 and 2005
and not member_id in (1004, 1006, 1007);

select * from members;


--Пример - использование условия BETWEEN со значениями даты

select * from borrowings
where return_date between '2021-05-20' and '2023-05-20';

select * from borrowings;




--AVG
--средный значение
select avg(member_id)
from members;

--mинимум число
select min(member_id)
from members;





--LIKE

select member_name
from members
where member_name LIKE 'A%';

--Следующая инструкция SQL выбирает всех клиентов с именем клиента, оканчивающимся на "a":
select member_name
from members
where member_name like '%h';

select * from members;







--JOIN
--Join — оператор, который используют, чтобы объединять строки из двух или более таблиц на основе связующего столбца между ними.
select members.member_id, borrowings.borrowing_id
from members
join borrowings on members.member_id = borrowings.member_id;




-- SELECT members.member_name, borrowings.return_date, librarians.city — выбираем имя участника (member_name), дату возврата (return_date) и город библиотекаря (city).
--
-- FROM members — начинаем с таблицы members.
--
-- JOIN borrowings ON members.member_id = borrowings.member_id — соединяем таблицу members с borrowings по member_id, чтобы получить данные о выдачах для каждого члена библиотеки.
--
-- JOIN librarians ON librarians.librarian_id = borrowings.librarian_id — соединяем таблицу librarians с borrowings по librarian_id, чтобы получить информацию о библиотекаре, который выдал книгу.
select members.member_name, borrowings.return_date, librarians.city
from members
join borrowings on members.member_id = borrowings.member_id
join librarians on librarians.librarian_id = borrowings.librarian_id;
