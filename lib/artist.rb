class Artist 
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end 
  
  # def songs 
  #   Songs.all.select{ |song| song.artist == self }
  # end
  def songs 
    Song.all.select do |song|
      song.genre == self 
    end
  end 
  
  def genres 
    songs.map{ |song| song.genre }
  end 
end 