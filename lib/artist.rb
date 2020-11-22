class Artist
    attr_accessor :name, :songs
    @@all_songs = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs=(song)
        @songs << song
        @@all_songs << song
    end 

    def add_song(song)
        song.artist = self
        @songs << song
        @@all_songs << song
    end

    def add_song_by_name(name)
        new_song = Song.new(name)
        @songs << new_song
        @@all_songs << new_song
        new_song.artist = self
    end

    def self.song_count
        @@all_songs.uniq.size
    end
end