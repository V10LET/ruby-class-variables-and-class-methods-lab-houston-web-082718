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
    @@artists << artist 
    @@genres << genre
  end
  
  def self.count
    @@count
  end

  def self.genres
    @@genres
  end
  
  def self.artists
    uniq_artists = []
   
    if artist in self.artists
      !uniq_artists.include?(artist)
      uniq_artists << artist
    end
    
    uniq_artists
  end 
end