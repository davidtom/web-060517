# require "pry"

class Artist

  attr_accessor :name
  # attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def self.reset
    self.all.clear
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def self.find_by_name(name)
    self.all.find{|artist| artist.name == name}
  end

  def songs
    # Code from lab: probably belongs in a better named method
    # Song.all.select do |song|
    #   song.artist == self
    # end
    @songs
  end
end
