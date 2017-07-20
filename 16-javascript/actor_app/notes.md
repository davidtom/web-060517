does too much
  feedback loop
  inspect at the lowest level of abstraction
    html
    sql

a lot of magic
  super abstract
  when something breaks
  better_errors
  binding_of_caller
    dig around - call some methods

1. on the index page
Make a form, that when I search it, should print out for me all of the actor's names that matched
And when I do not search the form, renders to me all of the actors
get '/actors'


2. build out a resource for characters
  think of the associations
  new, create, edit, update, show, index

3. characters nested form
  use form_for
    actor_name
    on edit - show the actor name

    on create/update, should update the actor name
      Do not use any of rails's nested form helpers
        X accepts_nested_attributes_for
  how form_for works

What is this instance variable
