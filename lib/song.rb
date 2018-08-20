class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    a_name, song_name, genre = filename.gsub(".mp3","").split("-")
    song = Song.new(song_name.strip)
    song.artist_name = a_name.strip
    song
  end
end
