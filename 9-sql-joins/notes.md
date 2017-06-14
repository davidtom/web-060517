domain

books
authors

1. write out the relationships
author has many books
book belongs to an author

2. draw a diagram of these relationships
  UML-> Unified Modeling Language
-----        __________       ______
|  genre| -<   |  book   | >--   | author      |  
______           ______          _________

3. Write it out excel



Coding

Find all of the books written by an author id number 2
select * from books where author_id = 2;


select authors.* from books_authors join authors on books_authors.author_id = authors.id where book_id = 1
