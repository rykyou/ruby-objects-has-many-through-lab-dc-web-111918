class Artist 
  attr_reader :name
  attr_accessor :artist
  
  @@all = []
  
  def self.all 
    @@all 
  end
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def new_song(name, genre)
    Song.new(name)
    song.genre = genre
    song.artist = self
  end 
end 