require_relative 'environment.rb'
require_relative 'seed.rb'

def reload!
  load './environment.rb'
end


kanye = Artist.new("kanye")
touch_the_sky = Song.new("touch the sky")
kanye.add_song(touch_the_sky)
touch_the_sky.add_artist(kanye) #additional functionality added by me: kanye should get this song
puts touch_the_sky.artist
puts kanye.songs
=======
# kanye = Artist.new('kanye')
# song = Song.new('touch the skye')
# song.artist = kanye
# kanye.songs - >
#   [<>]


Pry.start
