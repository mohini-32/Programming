SELECT * FROM `authors`;


SELECT
books.book_id,
books.title,
books.price,
books.stock_quantity,
authors.name AS author_name,
authors.email AS author_email

FROM
    books
LEFT JOIN
    authors ON books.author_id = authors.author_id;




SELECT * FROM `customers`;



SELECT
    customer_id,
    name,
    email,
    phone
FROM
    customers;
WHERE
    customer_id = 1;

SELECT
    SUM(total_amount) AS total_sales
FROM
    orders;


SELECT
    books.title,
    SUM(order_details.quantity) AS total_sold
FROM
    order_details
JOIN
    books ON order_details.book_id =books.book_id
GROUP BY
    books.title
ORDER BY
    total_sold DESC
LIMIT 1;