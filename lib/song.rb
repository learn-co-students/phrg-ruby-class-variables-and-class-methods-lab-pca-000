require 'pry'

class Song

  attr_accessor :song_name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(song_name, artist, genre)
    @song_name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
   end

  def name
    @song_name
  end

  def artist
    @artist
  end

  def genre
    @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    new_hash = Hash.new(0)
      @@genres.each do |v|
      new_hash[v] += 1
    end
    new_hash.each do |k, v|
      "#{k} #{v}"
    end
  end

  def self.artist_count
    new_hash = Hash.new(0)
      @@artists.each do |v|
      new_hash[v] += 1
    end
    new_hash.each do |k, v|
      "#{k} #{v}"
    end
  end
end
