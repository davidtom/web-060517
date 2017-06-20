require 'sqlite3'
require 'pry'

class Candy

  def self.columns
    {
      name: "TEXT", 
      calories: "INTEGER",
      has_milk: "BOOLEAN"
    }
  end
  def self.column_names
    self.columns.keys.map(&:to_s)
  end
  attr_accessor(*self.column_names, :id)  

  
  def self.db
    @@db = SQLite3::Database.new("candy.db")
  end
  
  
  
  def self.pluralize_class
    self.to_s.downcase.chop + "ies"
  end
  
  def self.create_table

     string = self.columns.map do |k, v|
    "#{k} #{v}"  
    end.join(", ") 
    <<-SQL
      CREATE TABLE #{self.pluralize_class} (id INTEGER PRIMARY KEY, #{string})
    SQL
    
  end
  
  
  
  def attribute_values
    Candy.column_names.map do |attribute|
      self.send(attribute)
    end
  end
  # ["twix", 80, true]
  # ["twix", 80, 1]
  
  def attribute_values_for_sql
    result = attribute_values.map do |attribute_val|
      if attribute_val == true
        1
      elsif attribute_val == false
        0
      else
        attribute_val
      end
    end
    result
  end
  
  def question_marks
    count = self.class.column_names.keys.size
    ["?"]*count.join(", ")
  end


  def insert
    has_milk_int = self.has_milk ? 1 : 0
    query = "INSERT INTO #{self.class.pluralize_class} (self.class.column_names.join(", ")) VALUES (#{self.question_marks});"

    self.class.db.execute(query, *self.attribute_values)
  end

  def self.find(id)
    query = "select * from #{self.pluralize_class} where id = #{id}"
    # self => Candy.class -> Class.db
    return_value = self.db.execute(query).first
    # [1, 'twix']
    self.new_from_row(return_value)
  end

  

  def self.all
    query = "select * from #{self.pluralize_class};"
    return_value = self.db.execute(query)
    # [[1, "snickers", 50, 1], [2, "twix", 90, 1], [3, "reeses", 100, 1]]
    return_value.map do |row_data|
      self.new_from_row(row_data)
    end
    
    
  end
  
  def self.new_from_row(row)
    obj = self.new
    obj.id = row[0]
    # [1, "twix", 80, 0]
    self.column_names.map.with_index do |column_name, idx|
      obj.send("#{column_name}=",  row[idx + 1])
    end
    obj
  end
  

  def update
    query = "UPDATE candies SET name = #{self.name}, calories = #{self.calories}, has_milk = #{self.has_milk} where id = #{self.id}"
    self.class.db.execute(query)
  end
  
  def destroy
    query = "DELETE FROM candies where id = #{self.id}"
     self.class.db.execute(query)
  end
end



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
