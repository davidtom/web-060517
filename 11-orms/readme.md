Working with the codebase

Migrations
  What belongs in a migration - what's it concerned with.
     - Code we run one time to alter the structure of our tables.

  How do we write and execute a migration
    1. create a migration file
    2. write some of the code to say what this migration will do
    3. run this migration file
    4. enjoy.
  Conventions - what are the conventions

  1. Create

1. Think about naming the relations
Book belongs to an author
author has many books

2. Write out some excel file

3. Where do the foreign ids belongs
 - If the first model belongs to the second model
  that second model must have its foreign id on the first model.
 - if the first model has many of the second model, that means the second model cannot have its foreign id on the first model.
 - many to many then neither the first nor the second can have the related foreign id, and we must have a third table.


Associations
  in memory vs in the database
  1. belongs to
     assigning the relationship
     retrieving the data
  2. has many
  - mass assignment
