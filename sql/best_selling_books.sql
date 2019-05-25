/*
Best-Selling Books (SQL for Beginners #5) by Vladislav Trotsenko.

You work at a book store. It's the end of the month, and you need to find
out the 5 bestselling books at your store. Use a select statement to list
names, authors, and number of copies sold of the 5 books which were sold most.

books table schema

    name
    author
    copies_sold

NOTE: Your solution should use pure SQL. Ruby is used within the test cases
to do the actual testing.
*/

SELECT * FROM books ORDER BY copies_sold DESC LIMIT 5