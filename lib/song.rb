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

  def slef.new_by_name(name)
    song = self.new_by_name
    song.name = name
    song

  # def self.new_by_name

end
