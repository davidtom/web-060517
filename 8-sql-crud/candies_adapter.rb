require "sqlite3"
require "pry"

def db
  @db ||= SQLite3::Database.new("candy.db")
  # @db || db = SQLite3::Database.new("candy.db")

  # if @db
  #   @db
  # else
  #   @db = SQLite3::Database.new("candy.db")
  # end
end

#create table
def new_table
  db.execute("CREATE TABLE candies (id INTEGER PRIMARY KEY, name TEXT, calories INTEGER, has_milk BOOLEAN);")
end

#create
def create(candy_name, calories, has_milk)
  # binding.pry
  values = [candy_name, calories, has_milk]
  query = "INSERT INTO candies (name, calories, has_milk) VALUES (?, ?, ?)"
  # binding.pry
  db.execute(query, values)
  # db.execute("INSERT INTO candies (name, calories, has_milk) VALUES (#{candy_name},
  # #{calories}, #{has_milk});")
end

#index
def index
  db.execute("SELECT * FROM candies;")
end

#show
def show(id)
  #show one candy, by the id
end

#update the candy
def update(id, attributes)

end

#destroy
def destroy()

end


# new_table(db)
create('M&Ms', 150, 1)
# puts index.inspect
