# class Song
#   attr_accessor :name, :artist
  
#   def initialize(name)
#     self.name = name
#     self.artist = artist
#     @song = [] #so we can keep track of the songs
#   end
  
#   end

class Song
  attr_accessor :name, :artist, :file_name

  def initialize(name)
    @name = name
    @artist = artist
    @file_name = file_name
  end

  def self.new_by_filename(file_name)
      self.name = file_name.split(" - ")[0]
      self.artist.name = file_name.split(" - ")[1]
  end
end