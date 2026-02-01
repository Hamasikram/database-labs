-- Lab 1: Analytical Queries
-- Author: Hammas Khan

-- Query 1: Books rated 4.5 or higher
SELECT title, author, rating 
FROM books_read 
WHERE rating >= 4.5 
ORDER BY rating DESC;

-- Query 2: Count books by category
SELECT category, COUNT(*) as book_count 
FROM books_read 
GROUP BY category 
ORDER BY book_count DESC;

-- Query 3: Average pages
SELECT AVG(pages) as average_pages 
FROM books_read;

-- Query 4: Machine Learning books
SELECT title, author, pages, rating 
FROM books_read 
WHERE category = 'Machine Learning';

-- Query 5: Total pages read
SELECT SUM(pages) as total_pages_read 
FROM books_read;

