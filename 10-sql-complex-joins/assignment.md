Joining tables
  - how does a join/sql work and make queries
  - inner join
  - outer join

- Complex data model
  - Bar wants to keep track of the customers that bring in the most revenue, and the bartenders that bring in the most revenue.  It also wants to keep track of the cost of each drink - which will be calculated by adding each drink's ingredients.  
  As a bonus, also consider how we would structure the tables if we want to keep track of what orders are on what receipt.
  How do we model these tables?


bart simpson ordered a milk shake (vanilla ice cream and milk) from patty
lisa simpson ordered a rootbeer float (vanilla ice cream and root beer) from moe

Remembering the relationships strategies

1. Describe the relationships
  a. start with the belongs to
  b. then do the inverse

customer
  has many bartenders
bartenders
  has many customers

drinks
  has many ingredients
ingredients
  has many drinks












I. Rules
1. if book belongs to author
   if x belongs to      y
    -> y's foreign id is on x's table

    books
    id | title |  author_id
    1    sawyer     2


    authors
    id name
    2  mark twain

2. if author has many books             
    if x has many y, then y_id cannot be on x's table
authors
id name       | hometown       |  year of birth
2  mark twain | missouri             1825

3. with a many to many relationship
  we must have a third table that connects the two entities



2. Make a visual representation

 - Unified Modeling Language
  ____
  |  course | --< [students ]
  _____


3. Translate to excel

https://docs.google.com/spreadsheets/d/1wraS2DQ50ONoWR1kVvhfj0QJiYgYSCAzaPhvaIyBDjk/edit?usp=sharing


4. Answer the following questions

A. Who are all of the customers that ordered an egg cream?
B. Which customer brings in the most revenue
C. Which bartender brings in the most revenue
D. Which drink does the bar spend the most amount to produce?
