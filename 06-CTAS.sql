-- CTAS (Create Table As Select)

/*Task 6: Create Summary Tables: Use CTAS to generate 
new tables based on query results - each book and total book_issued_cnt*/

CREATE TABLE book_issued_cnt AS
SELECT 
	b.isbn,
	b.book_title,
	COUNT(ist.issued_id) AS no_issued
FROM issued_status AS ist
JOIN
books AS b
ON ist.issued_book_isbn = b.isbn
GROUP BY b.isbn, b.book_title;


SELECT * FROM book_issued_cnt;