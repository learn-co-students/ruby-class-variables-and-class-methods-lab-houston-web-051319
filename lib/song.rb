class Song
    attr_accessor :name, :artist, :genre

        @@artists = []
        @@genres = []
        @@count = 0

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
        @@count += 1
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.count
        @@count
    end

    def self.genre_count
        genre_hash = {}
        @@genres.each do |each_genre|
            if genre_hash[each_genre] == nil
                genre_hash[each_genre] = 1
            else
                genre_hash[each_genre] += 1
            end
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.each do |each_artist|
            if artist_hash[each_artist] == nil
                artist_hash[each_artist] = 1
            else
                artist_hash[each_artist] += 1
            end
        end
        artist_hash
    end


end