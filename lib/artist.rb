class Artist
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
    end

    @@all = []
    def self.all
        @@all
    end

    #creates new song beloning to the artist
    def new_song(song_name, song_genre)
        Song.new(song_name, self, song_genre)
    end
    #finds all songs by artist
    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end
    #lists genre of all songs, with repeats
    def genres
        Song.all.map do |song|
            if song.artist == self
                song.genre
            end
        end
    end
end