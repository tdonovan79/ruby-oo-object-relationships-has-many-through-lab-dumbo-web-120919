class Genre
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
    end
    @@all = []
    def self.all
        @@all
    end

    #finds all songs in genre
    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end
    #finds all artists in genre
    def artists
        Song.all.map do |song|
            if song.genre == self
                song.artist
            end
        end
    end
end