
require 'pry'
class Artist 
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end 
  
  def name=(name)
    @name = name
  end 
  
  def songs 
<<<<<<< HEAD
    if(@songs == [])
      return " " 
    else 
      @songs
    end
  end 
  
  def self.all 
=======
    @songs
  end 
  
  def self.all  
>>>>>>> 42e66a69eb5e6037150ddb950defd557c60410a2
    @@all
  end 
  
  def save 
    @@all << self
  end 
  
  def add_song(song)
      @songs << song
<<<<<<< HEAD
=======
      #song.artist = self
>>>>>>> 42e66a69eb5e6037150ddb950defd557c60410a2
  end 
  
   def self.create_by_name(artist_name)
    new_artist = self.new(artist_name)
    new_artist.save 
<<<<<<< HEAD
=======
    puts "Artist:create_by_name : #{new_artist}"
    binding.pry
>>>>>>> 42e66a69eb5e6037150ddb950defd557c60410a2
    new_artist.name = artist_name
    new_artist
  end 
  
  
  def self.find_by_name(artist_name)
    @@all.detect{|artist_names| artist_names.name == artist_name}
  end 
  
  def self.find_or_create_by_name(artist_name)
    self.find_by_name(artist_name) || self.create_by_name(artist_name)
  end 
    
  def print_songs
    
    @songs.each {|song|
      puts song.name
    }
  end 
  
end 
