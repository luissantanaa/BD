--A
--SELECT * FROM authors;

--B
--SELECT au_fname,au_lname,phone FROM authors;

--C
--SELECT au_fname,au_lname,phone FROM authors
--ORDER BY au_fname, au_lname ASC;

--D
--SELECT au_fname as first_name,au_lname as last_name,phone as telephone, state FROM authors
--ORDER BY first_name, last_name ASC;

--E
--SELECT au_fname as first_name,au_lname as last_name,phone, state as number FROM authors
--WHERE state='CA' AND au_lname != 'Ringer'
--ORDER BY first_name, last_name ASC;

--F
--SELECT pub_name FROM publishers
--WHERE pub_name LIKE '%Bo%'

--G
--SELECT pub_name FROM publishers,titles
--WHERE type = 'Business'

--H
--SELECT P.pub_name,SUM(ytd_sales) FROM publishers AS P INNER JOIN titles as T ON P.pub_id = T.pub_id
--GROUP BY P.pub_name

--I
--SELECT T.title, SUM(qty) AS QTY
--FROM publishers AS P JOIN titles AS T ON P.pub_id=T.pub_id JOIN sales AS S ON t.title_id=S.title_id 
--GROUP BY T.title

--J
--SELECT T.title 
--FROM stores AS ST JOIN sales AS SA ON ST.stor_id=SA.stor_id JOIN titles AS T ON T.title_id=SA.title_id
--WHERE ST.stor_name='Bookbeat'

