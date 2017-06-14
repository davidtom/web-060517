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
    has_milk_int = self.has_milk 1:0
    #set up query to insert into table
    query = "INSERT INTO candies (name, calories, has_milk) VALUES (?, ?, ?;"
    #access Candy class (this is an instance method), and access the db (class attribute)
    self.class.db.execute(query, [self.name, self.calories, self.has_milk])
  end

  def self.find(id)


  end

end

twix = Candy.new()
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
