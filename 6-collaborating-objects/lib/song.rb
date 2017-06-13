class Song


  attr_accessor :name, :artist


  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    self.class.all << self
  end

  def self.all
    @@all
  end

  def add_artist(artist)
    self.artist = artist
    # artist.songs

    @@all << self
  end

  def artist=(artist)
    @artist = artist
  end

  def artist
    @artist
  end

  def self.all

    @@all

  end
end

# song = Song.new('touch the sky')
# song.artist =
# song.artist
  #
