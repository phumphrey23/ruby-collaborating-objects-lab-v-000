class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    Artist.name
  end

  def self.new_by_filename(file)
    artist_name = file.split(" - ")[0].to_s
    song_name = file.split(" - ")[1]
    song = Song.new(song_name)
    song.artist = artist_name
    song
  end

end
