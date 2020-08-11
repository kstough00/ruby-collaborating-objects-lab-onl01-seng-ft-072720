class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
    def self.new_by_filename(file_name)
    song = file_name.split(" - ")[1]
    artist = file_name.split(" - ")[0]
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end
  
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
  
#   def self.all
#     @@all << self
#   end
  
# end
