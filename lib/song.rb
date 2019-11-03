class Song
  
  attr_accessor :name, :artist, :genre
  
  @@artists = []
  @@genres = []
  @@count = 0
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
  @@count +=1
  
  # add the genre of the song being created to the @@genres array.
    # All genres should be added to the array
  @@artists << @artist
  @@genres << @genre
  
  end

  def self.count
    @@count
  end 

  def self.genres
    @@genres.uniq
  end  
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
      genre_hash = {}
      
      #iterate over the @@genres array
      @@genres.each do |genre| 
        
        #check to see if the hash already contains a key of a particular genre
        if genre_hash[genre]
          genre_hash[genre] +=1 
        else
          #populate a hash with the key/value pairs
          genre_hash[genre] = 1
        end
        
      end
      
      #return the new hash with the new organized info
    genre_hash
  end 
  
  
end