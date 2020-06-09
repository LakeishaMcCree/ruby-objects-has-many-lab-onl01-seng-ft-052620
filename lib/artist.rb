class Artist

    attr_accessor :name

   

    def initialize(name)
        @name = name
    end
       
   def songs
    Song.all
   end

   def add_song(song)
        Song.all.each do |song|
            song.artist = self
        end
    end

    def add_song_by_name(song_name)
        s = Song.new(song_name)
        add_song(s)
    end

    def self.song_count
        Song.all.count
    end

end