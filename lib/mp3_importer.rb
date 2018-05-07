require 'pry'
class MP3Importer
  
  attr_accessor :path 
  
  def initialize(test_music_path) 
    @path = test_music_path
  end 
  
  
  def files 
    
    all_files = Dir["#{@path}/*.mp3"]
<<<<<<< HEAD
=======
    
   
>>>>>>> 42e66a69eb5e6037150ddb950defd557c60410a2
    all_files.map do |file_name|
      if !File.directory? file_name
         file_name.split("/").pop
      end 
    end 
  end 
  
  def import
<<<<<<< HEAD
   self.files.each{ |file_name|
      Song.new_by_filename(file_name)
    }
    
   
  end 
=======
    self.files.each{ |file_name|
      add_new_song = Song.new_by_filename(file_name)
      add_new_song.save
     binding.pry
    }
    end 
>>>>>>> 42e66a69eb5e6037150ddb950defd557c60410a2
  
  
end 
