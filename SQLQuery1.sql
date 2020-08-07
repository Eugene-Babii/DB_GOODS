--Create by pattern Closure Table

--Create DB
create database Goods

--Use DB
use Goods

--Create tables
create table Categories
(
	id int not null identity(1,1) primary key,
	name varchar(128) not null,
	parent_id int not null
)

create table Products
(
id int not null identity(1,1) primary key,
name varchar(128) not null,
price money not null
)

create table Product_into_categories
(
id int not null identity(1,1) primary key,
product_id int not null,
category_id int not null
)

--Fill tables
insert into Categories (name, parent_id) values ('Детские товары', 0)
insert into Categories (name, parent_id) values ('Одежда', 1)
insert into Categories (name, parent_id) values ('Обувь', 1)
insert into Categories (name, parent_id) values ('Игрушки', 1)
insert into Categories (name, parent_id) values ('Для новорожденных', 2)
insert into Categories (name, parent_id) values ('Для школьников', 2)
insert into Categories (name, parent_id) values ('Для мальчиков', 3)
insert into Categories (name, parent_id) values ('Для девочек', 3)
insert into Categories (name, parent_id) values ('Конструкаторы', 4)
insert into Categories (name, parent_id) values ('Транспорт', 4)

insert into Categories (name, parent_id) values ('Бодики', 5)
insert into Categories (name, parent_id) values ('Комбинезоны', 5)
insert into Categories (name, parent_id) values ('Пеленки', 5)
insert into Categories (name, parent_id) values ('Шапочки', 5)
insert into Categories (name, parent_id) values ('Комплекты', 5)

insert into Categories (name, parent_id) values ('Школьная форма', 6)
insert into Categories (name, parent_id) values ('Брюки', 6)
insert into Categories (name, parent_id) values ('Рубашки', 6)
insert into Categories (name, parent_id) values ('Школьная обувь', 6)

insert into Categories (name, parent_id) values ('Сандали', 7)
insert into Categories (name, parent_id) values ('Кеды', 7)
insert into Categories (name, parent_id) values ('Туфли', 7)

insert into Categories (name, parent_id) values ('Босоножки', 8)
insert into Categories (name, parent_id) values ('Туфли', 8)
insert into Categories (name, parent_id) values ('Сапоги', 8)

insert into Categories (name, parent_id) values ('Деревянные', 9)
insert into Categories (name, parent_id) values ('Металлические', 9)
insert into Categories (name, parent_id) values ('Лего', 9)

insert into Categories (name, parent_id) values ('Машинки', 10)
insert into Categories (name, parent_id) values ('Мотоциклы', 10)
insert into Categories (name, parent_id) values ('Автотреки', 10)
insert into Categories (name, parent_id) values ('Железная дорога', 10)

insert into Products (name, price) values ('Боди детский', 100)
insert into Products (name, price) values ('Комбинезон детский', 200.65)
insert into Products (name, price) values ('Пеленки для малышей', 50.4)
insert into Products (name, price) values ('Шапочка', 35)
insert into Products (name, price) values ('Комплект детский', 155.2)

insert into Products (name, price) values ('Форма школьная 1 класс', 1000)
insert into Products (name, price) values ('Брюки', 300)
insert into Products (name, price) values ('Рубашка', 200)
insert into Products (name, price) values ('Школьная обувь', 500)

insert into Products (name, price) values ('Санали', 300)
insert into Products (name, price) values ('Кеды', 200)
insert into Products (name, price) values ('Туфли', 400)

insert into Products (name, price) values ('Босоножки', 150)
insert into Products (name, price) values ('Туфли', 350)
insert into Products (name, price) values ('Сапоги', 500)

insert into Products (name, price) values ('Конструктор деревянный', 100)
insert into Products (name, price) values ('Конструктор металлический', 200)
insert into Products (name, price) values ('Конструктор Лего', 300)

insert into Products (name, price) values ('Машинка Ауди', 100)
insert into Products (name, price) values ('Мотоцикл Хонда', 120)
insert into Products (name, price) values ('Автотрек', 300)
insert into Products (name, price) values ('Железная дорога', 350)

insert into Product_into_categories (product_id, category_id) values (1, 11)
insert into Product_into_categories (product_id, category_id) values (2, 12)
insert into Product_into_categories (product_id, category_id) values (3, 13)
insert into Product_into_categories (product_id, category_id) values (4, 14)
insert into Product_into_categories (product_id, category_id) values (5, 15)

insert into Product_into_categories (product_id, category_id) values (6, 16)
insert into Product_into_categories (product_id, category_id) values (7, 17)
insert into Product_into_categories (product_id, category_id) values (8, 18)
insert into Product_into_categories (product_id, category_id) values (9, 19)

insert into Product_into_categories (product_id, category_id) values (10, 20)
insert into Product_into_categories (product_id, category_id) values (10, 19)
insert into Product_into_categories (product_id, category_id) values (11, 21)
insert into Product_into_categories (product_id, category_id) values (11, 19)
insert into Product_into_categories (product_id, category_id) values (12, 21)
insert into Product_into_categories (product_id, category_id) values (12, 19)

insert into Product_into_categories (product_id, category_id) values (13, 22)
insert into Product_into_categories (product_id, category_id) values (13, 19)
insert into Product_into_categories (product_id, category_id) values (14, 24)
insert into Product_into_categories (product_id, category_id) values (14, 19)
insert into Product_into_categories (product_id, category_id) values (15, 25)
insert into Product_into_categories (product_id, category_id) values (15, 19)

insert into Product_into_categories (product_id, category_id) values (16, 26)
insert into Product_into_categories (product_id, category_id) values (17, 27)
insert into Product_into_categories (product_id, category_id) values (18, 28)

insert into Product_into_categories (product_id, category_id) values (19, 29)
insert into Product_into_categories (product_id, category_id) values (19, 26)
insert into Product_into_categories (product_id, category_id) values (20, 30)
insert into Product_into_categories (product_id, category_id) values (20, 27)
insert into Product_into_categories (product_id, category_id) values (21, 31)
insert into Product_into_categories (product_id, category_id) values (22, 32)
insert into Product_into_categories (product_id, category_id) values (22, 28)

--Queries
	
--a. Для заданного списка товаров получить названия всех категорий, в которых представлены товары; 
	select distinct Categories.name from Categories
	left join Product_into_categories ON Product_into_categories.category_id=Categories.id
	where Product_into_categories.product_id in (10,11,22)

--b. Для заданной категории получить список предложений всех товаров из этой категории и ее дочерних категорий;	
	select Products.id, Products.name from Products 
	LEFT JOIN Product_into_categories on Product_into_categories.product_id = Products.id 
	where Product_into_categories.category_id = 27
	union
		select Products.id, Products.name from Products
		left join Product_into_categories on Product_into_categories.product_id = Products.id
		where Product_into_categories.category_id IN(select id from Categories where parent_id = 27)

--c. Для заданного списка категорий получить количество предложений товаров в каждой категории;
	select category_id, COUNT(product_id) product_count from Product_into_categories
	where category_id in(11, 19, 20) group by category_id

--d. Для заданного списка категорий получить общее количество уникальных предложений товара;
	select SUM(product_count) product_sum from (
		select Product_into_categories.category_id, COUNT(product_id) product_count from Product_into_categories
		where Product_into_categories.category_id in(11, 19, 20) 
		and Product_into_categories.product_id not in (
			select temp.product_id from Product_into_categories temp
			where temp.category_id IN(11, 19, 20) AND temp.category_id != Product_into_categories.category_id
		)
		group by category_id
	) t1

--e. Для заданной категории получить ее полный путь в дереве (breadcrumb, «хлебные крошки»).






--function breadcrumb($id){
--		$q = mysql_query('select id, name, parent_id from Categories where id = "'.$id.'"');
--		$cat = mysql_fetch_assoc($q);
--		if($cat['parent_id'] != 0){
--			return breadcrumb($cat['id'])." -> ".$cat['name'];
--		}else{
--			return $cat['name'];
--		}
--	}



