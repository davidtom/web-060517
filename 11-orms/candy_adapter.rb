require 'sqlite3'
require 'pry'

class Candy
  attr_accessor :name, :calories, :has_milk


  def self.db
    @@db = SQLite3::Database.new("candy.db")
  end


  def insert
    has_milk_int = self.has_milk ? 1 : 0
    query = "INSERT INTO candies (name, calories, has_milk) VALUES ('#{self.name}', #{self.calories}, #{has_milk_int});"

    self.class.db.execute(query)
  end

  def self.find(id)
    query = "select * from candies where id = #{id}"
    # self => Candy.class -> Class.db
    return_value = self.db.execute(query).first
    candy = Candy.new
    candy.name = return_value[1]
    candy.calories = return_value[2]
    milk_boolean =  return_value[3] == 1  ? true : false
    candy.has_milk = milk_boolean
    candy
  end

  def destroy

  end

  def self.all
    query = "select * from candies;"
    return_value = self.db.execute(query)
    binding.pry
    # [[1, "snickers", 50, 1], [2, "twix", 90, 1], [3, "reeses", 100, 1]]
    # [
    #   # <@name = "snickers", @calories=50>
    # ]

  end

  def update(attributes)
    
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

#
# # destroy
#   # destroy candy by the id
#
# def destroy(id)
#
# end
