require 'sqlite3'
db = SQLite3::Database.new("candy.db")
#
# db.execute()
# create

def create(name, calories, has_milk)
  db.execute("INSERT INTO candies (name, calories, has_milk) VALUES ('snickers', 50, 1);")
end


# index

def index
  db.execute("select name from candies;")
end


# show

def show(id)
  #
end
 # show one candy, by the id

# update the candy
def update(id, attributes)
  # attributes = {name: 'chocolate and peanuts', calories: 10}
end

# destroy
  # destroy candy by the id

def destroy(id)
  
end
