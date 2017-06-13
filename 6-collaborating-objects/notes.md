1. Describe what is happening in environment.
  what is each line doing?
  *A: bringing in the dependencies that we want/need to work with*
  Why do we need to do this?
  *A: so that we can use pry and the methods contained in the other
  ruby programs*

2. What is happening in console.rb
  *A:
  require: brings in a file that is on my computer that is a gem (which
    are stored in the $PATH variable)
  require_relative: brings in a file that is in a relative path to the
    current file*
  - what do you have access to if you run ruby console.rb
  *A: all the files brought in in environment.rb (pry, artist.rb, song.rb
    AND the code in seed.rb)*

3. Note that we have an artist class and a song class.  Describe the relationship between artists and songs.
  artist -> songs *A: Artists have songs*
  artist.songs *A: A list of the songs that the artist has sung*
  song.artist *A: The name of the artist who sang a song*
4. Build out the following
  - Artist.all
    -> should return all of the artists that have been initialized
    *done*
  - Song.all
    -> should return all of the songs that have been initialized
    *done*
  - Artist.reset
    -> should clear all of the artists from the class variable @@all in artist.  (After calling Artist.reset, Artist.all should return [])
    *done*
  - Build the following getter and setter methods
    For artist: name
    For song: name
    *done*
  - Build the following instance method
    - artist.add_song(song)
      You should pass through a *song instance* to the add_song method
      After passing through a song to the add_song() method, you should be able to call artist.songs -> [song]
      (ie it should return an array with the song you added, in the array)
      *done*
    - Bonus
      - kanye = Artist.new
      - touch_the_sky = Song.new
      - After calling  kanye.add_song(touch_the_sky)
      then, without doing anything else, if I call...
     touch_the_sky.artist -> kanye
     (it should return kanye)
