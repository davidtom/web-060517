require_relative './candy_adapter.rb'

def reload!
  load './candy_adapter.rb'
end

Pry.start