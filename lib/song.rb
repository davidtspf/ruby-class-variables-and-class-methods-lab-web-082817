class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    list_of_artists = []
    list_of_artists = @@artists.uniq
  end

  def self.genres
    list_of_genres = []
    list_of_genres = @@genres.uniq
  end

  def self.genre_count
    genres_songs = {}
    @@genres.each do |a_genre|
      if genres_songs.has_key?(a_genre)
        genres_songs[a_genre] += 1
      else
        genres_songs[a_genre] = 1
      end
    end
    return genres_songs
  end

  def self.artist_count
    artists_hash = {}
    @@artists.each do |an_artist|
      if artists_hash.has_key?(an_artist)
        artists_hash[an_artist] += 1
      else
        artists_hash[an_artist] = 1
      end
    end
    return artists_hash
  end

end
