class Song

    attr_accessor :artist, :name, :artist_name

    @@all = []

    def initialize(name, artist=nil)
        @name = name
        @artist = artist
        @artist_name = artist_name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if @artist == nil
            nil
        else
            @artist.name
        end
    end
end