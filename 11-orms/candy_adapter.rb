require 'sqlite3'
require 'pry'

class Candy
  attr_accessor :name, :calories, :has_milk
  def self.db
    @@db = SQLite3::Database.new("candy.db")
  end


  def insert
    db.execute("INSERT INTO candies (name, calories, has_milk) VALUES ('snickers', 50, 1);")
  end
end

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
