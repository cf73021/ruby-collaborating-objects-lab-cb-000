require 'pry'
class Artist
attr_accessor :name
@@all_songs = []
@@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << name
  end

  def self.all
    @@all
  end

  def add_song(name)
    @songs << name
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.include?(name)
      name
    else
      new_artist = Artist.new(name)
      @@all << new_artist
      new_artist
    end
  end

  def print_songs
    @songs.each do |x|
      puts x.title
    end
  end

end
