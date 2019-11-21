class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
        # @songs = []
    end

    def songs
        Song.all.select { |song| song.artist == self }
    end

    def add_song(song)
        Song.all << song
        song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        Song.all << song
        song.artist = self
    end

    def self.song_count
        count = Song.all.select { |song| song.artist }
        count.uniq.size
    end
end