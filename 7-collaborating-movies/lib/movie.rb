class Movie
  @@all = []

  def initialize(name)
    @name = name
    @characters = []
    @@all << self
  end

  # def self.find_all_characters(name)
  #   # [<character @name="neo">, <character @name="jack">]
  #   Character.all.select do |character|
  #     character.name == name
  #   end
  #
  # end

  def characters
    @characters
  end

  def add_character(character)
    
  end

  def characters
    # go through all of the characters
    # and see if each character's movie is speed
    Character.all.select do |character|
      character.movie == self
    end
  end


  def self.all
    @@all
  end

  def name
    binding.pry
    @name
  end
end
