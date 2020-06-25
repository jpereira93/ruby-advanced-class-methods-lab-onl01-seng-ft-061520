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
    song = self.create
    song.name = name
    song
end

def self.find_by_name(name)
self.all.find{|item|item.name == name}end
  # def self.new_by_name

end

def find_or_create_by_name(name)
    song = find_by_name(name)
    if song == nil
      self.create(name)
    else
      song
    end
  end
