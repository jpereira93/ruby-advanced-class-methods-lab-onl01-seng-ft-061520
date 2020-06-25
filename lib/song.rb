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
    @@all << song
    return song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.new(name)
    #=> #<Song:0x007fd2a2989ff0 @name="The Middle">
    song
    #=> #<Song:0x007fd2a2989ff0 @name="The Middle">
    Song.all.include?(song)
end
  # def self.new_by_name

end
