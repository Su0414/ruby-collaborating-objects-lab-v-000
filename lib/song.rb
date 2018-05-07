class Song 
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name 
  end 
  
  def name=(name)
    @name = name 
  end 
  
  def artist=(artist)
    @artist = artist
  end 
  
  def artist_name=(artist_name)
    if(self.artist.nil?)
<<<<<<< HEAD
      self.artist = Artist.find_or_create_by_name(artist_name)
      
=======
      self.artist = Artist.new(artist_name)
>>>>>>> 42e66a69eb5e6037150ddb950defd557c60410a2
    else 
      self.artist.name = artist_name
    end 
  end 
  
  def self.new_by_filename(filename)
    arr1 = []
    arr1 = filename.split(" - ")
    artist_name_file = arr1[0]
    song_name = arr1[1]
<<<<<<< HEAD
    #puts song_name
=======
>>>>>>> 42e66a69eb5e6037150ddb950defd557c60410a2
    
    new_song = self.new(artist_name_file)
    new_song.name = song_name
    new_song.artist_name = artist_name_file
<<<<<<< HEAD
=======
    puts "Song: new_by_filename:  #{new_song}"
    binding.pry
>>>>>>> 42e66a69eb5e6037150ddb950defd557c60410a2
    new_song
  end 
  
  
end 