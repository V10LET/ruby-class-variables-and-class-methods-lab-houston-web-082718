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
  
  def self.artists
    uniq_artists = []
   
    for artist in @@artists
      unless uniq_artists.include?(artist)
        uniq_artists << artist
      end
    end
    
    uniq_artists
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    for genre in @@genres
      
    end
  end
end