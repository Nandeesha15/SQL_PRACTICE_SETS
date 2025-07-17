# Write your MySQL query statement below
SELECT 
    lb.book_id,
    lb.title,
    lb.author,
    lb.genre,
    lb.publication_year,
    br.current_borrowers
FROM library_books lb
JOIN (
    SELECT 
        book_id, 
        COUNT(*) AS current_borrowers
    FROM borrowing_records
    WHERE return_date IS NULL
    GROUP BY book_id
) br ON lb.book_id = br.book_id
WHERE br.current_borrowers = lb.total_copies
ORDER BY br.current_borrowers DESC, lb.title ASC;

