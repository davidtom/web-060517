class Character
  attr_reader(:movie, :name)
  @@all = []
  # @name = []

  def initialize(name)

    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def movie_title
    binding.pry
    self.movie.name
  end


  def greeting
    "hi my name is #{self.name}"
  end

  def movie=(movie)

    @movie = movie
  end

  def name=(name)

    @name = name
  end

  # def movie
  #   @movie
  # end

  # def self.name
  #   @name
  # end
end

# Character.new
  # 1. <character>
  # 2. <character>.initialize
