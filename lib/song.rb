require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    
    @@count = 0  #class variable
    @@artists = [] #class variable
    @@genres = [] #class variable
   

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << @artist
        @@genres << @genre            
    end

    def name
        return @name
    end

    def artist
        return @artist
    end

    def self.count
        return @@count
    end

    def self.artists
        return @@artists.uniq
    end

    def self.genres
        return @@genres.uniq
    end
    
    def self.genre_count
        genre_count = {}
        @@genres.each do |i|
            if genre_count[i]
                genre_count[i] += 1 
            else
                genre_count[i] = 1             
            end
        end
        return genre_count
    end
        
    def self.artist_count
        artist_count = {}
        @@artists.each do |i|
            if artist_count[i]
                artist_count[i] += 1
            else
                artist_count[i] = 1
            end
        end
        return artist_count
    end
end