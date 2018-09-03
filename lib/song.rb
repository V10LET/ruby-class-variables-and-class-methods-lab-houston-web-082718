require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    unless @@artists.include?(artist)
      @@artists << artist 
    end
    
    @@genres << genre
  end
  
  def self.count
    @@count
  end

  def self.genres
    @@genres
  end
binding.pry 
  def self.artists
    @@artists
  end 
end