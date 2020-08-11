# class Song
#   attr_accessor :artist, :name
  
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
  
#   def artist_name=(name)
#     self.artist = Artist.find_or_create_by_name(name)
#     artist.add_song(self)
#   end

#   def self.new_by_filename(file)
#     song_info = file.chomp(".mp3").split(" - ")
#     song = Song.new(song_info[1])
#     song.artist_name = song_info[0]
#     song
#   end
  
# end
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    artist_name = file.split(" - ")[0]
    song_name = file.split(" - ")[1]
    song = Song.new(song_name)
    song.artist_name = artist_name
    song
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
  end
end 