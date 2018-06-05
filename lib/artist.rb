class Artist
  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    #save
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end


  def self.find_or_create_by_name(name)
    @@all.find do |artist|
     if artist.name == name
        return artist
       else
        return self.new(name)
      end
    end
    save
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
