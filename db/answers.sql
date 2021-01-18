/*pt-2*/
SELECT * FROM public.customers WHERE country='Germany'

UPDATE public.customers SET country='United Kingdom' WHERE country='UK'

DELETE FROM public.customers WHERE fax is null

INSERT INTO customers VALUES ('1', 'company name', 'drita', 'drita', 'prizren, kosovo', 'prizren', NULL, '20000', 'kosovo', '(49) 123-123', '(49) 111-222');
INSERT INTO customers VALUES ('2', 'company name', 'drita2', 'drita2', 'prizren, kosovo', 'prizren', NULL, '20000', 'kosovo', '(49) 123-123', '(49) 111-222');
INSERT INTO customers VALUES ('3', 'company name', 'user3', 'user3', 'prizren, kosovo', 'prizren', NULL, '20000', 'kosovo', '(49) 123-123', '(49) 111-222');
INSERT INTO customers VALUES ('4', 'company name', 'user4', 'user4', 'prizren, kosovo', 'prizren', NULL, '20000', 'kosovo', '(49) 123-123', '(49) 111-222');
INSERT INTO customers VALUES ('5', 'company name', 'user5', 'user5', 'prizren, kosovo', 'prizren', NULL, '20000', 'kosovo', '(49) 123-123', '(49) 111-222');

select * from public.customers where contact_title='Sales Representative'

update public.customers set company_name='Linkedin' where customer_id='BOTTM'

select * from public.customers where region is null and country='USA'

delete from public.customers where postal_code='1734'

select * from public.customers where contact_title='Owner'

select company_name, contact_name, contact_title from public.customers where country='Brazil'

select contact_name as name, contact_title as title from public.customers where country='Finland'

delete from public.customers where city='Lyon'

UPDATE public.customers SET region='Unknown' WHERE region is null

/*pt-3*/

CREATE TABLE IF NOT EXISTS author(
	id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(50),
	img VARCHAR(50)
)

CREATE TABLE IF NOT EXISTS articles(
	id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	headline VARCHAR(150) NOT NULL,
	subhead VARCHAR(150) NOT NULL,
	content TEXT NOT NULL,
	createdAt DATE NOT NULL,
	updatedAt DATE NOT NULL
)

CREATE TABLE IF NOT EXISTS category(
	id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(50),
	img VARCHAR(50)
)

CREATE TABLE IF NOT EXISTS review(
	id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	text VARCHAR(400),
	author VARCHAR(50)
)
