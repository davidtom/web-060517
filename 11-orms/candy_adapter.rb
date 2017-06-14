require 'sqlite3'
require 'pry'

class Candy
  attr_accessor :name, :calories, :has_milk

  #create class attribute db, which is sqlite3 database object
  def self.db
    @@db = SQLite3::Database.new("candy.db")
  end


  def insert
    #makre sure that self.has_milk is a 1 or 0, not true or false
    has_milk_int = self.has_milk ? 1 : 0
    #set up query to insert into table
    query = "INSERT INTO candies (name, calories, has_milk) VALUES (?, ?, ?);"
    #access Candy class (this is an instance method), and access the db (class attribute)
    self.class.db.execute(query, [self.name, self.calories, has_milk_int])
  end

  def self.new_candy_from_find(row)
    candy = Candy.new
    candy.name = row[1]
    candy.calories = row[2]
    # re-convert 1 or 0 into true or false
    milk_boolean =  row[3] == 1  ? true : false
    candy.has_milk = milk_boolean
    candy
  end

  def self.find(id)
    query = "select * from candies where id = ?"
    # Reminder of where we are: self => Candy.class -> Class.db

    #select query returns an array of rows, each of which are an array, so we
    # need to access the first return value to get the first row (as an array)
    row = self.db.execute(query, [id]).first
    self.new_candy_from_find(row)
  end

  def destroy
    query = "DELETE FROM candies WHERE name = ?"
    self.class.db.execute(query, [self.name])
  end

  def self.all
    #returns array of candy objects from candies table in candy.db
    query = "select * from candies;"
    rows = self.db.execute(query)

    #iterate over rows and create objects with each, adding them to an array
    rows.each_with_object([]){|row, arr| arr << self.new_candy_from_find(row)}
  end

  def self.update(id, name, calories, has_milk)
    query = "UPDATE candies SET name = ?, calories = ?, has_milk = ? WHERE id = ?"
    db.execute(query, [name, calories, has_milk, id])
  end

end

twix = Candy.new
twix.name = "twix"
twix.calories = 100
twix.has_milk = true

Pry.start

# candy = Candy.new
# candy.name = 'snickers'
# candy.calories = 80
# candy.has_milk = true
# candy.insert
#
#
# #
# # db.execute()
# # create
#
#
#
#
# # index
#
# def index
#   db.execute("select name from candies;")
# end
#
#
# # show
#
# def show(id)
#   #
# end
#  # show one candy, by the id
#
# # update the candy
# def update(id, attributes)
#   # attributes = {name: 'chocolate and peanuts', calories: 10}
# end
#
# # destroy
#   # destroy candy by the id
#
# def destroy(id)
#
# end
