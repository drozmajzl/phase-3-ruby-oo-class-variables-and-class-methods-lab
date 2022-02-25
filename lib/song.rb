require "pry"
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@genres << @genre
        @@artists << @artist
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
        display = Hash.new(0)
        @@genres.each do |g|
            display[g] += 1
          end
          display
    end

    def self.artist_count
        display = Hash.new(0)
        @@artists.each do |g|
            display[g] += 1
          end
          display
    end

end