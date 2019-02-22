require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    self.all << song
    song
  end

  def self.new_by_name(name)
    song = Song.new
    song.name = name
    # self.all << song
    song
  end

  def self.create_by_name(name)
    song = Song.new
    song.name = name
    self.all << song
    song
  end

  def self.find_by_name(name)
    self.all.find {|s| s.name == name}
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def self.alphabetical
    # songlist = self.all
    sortedSongList = self.all.sort {|a, b| a.name <=> b.name}
    binding.pry
    self.all.sort {|song_a, song_b| song_a.name <=> song_b.name}
    # binding.pry
    # songlist.sort {|a.name, b.name|}
  end
end
