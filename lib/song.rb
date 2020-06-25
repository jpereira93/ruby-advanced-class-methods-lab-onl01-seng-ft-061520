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
    Song = Song.new
    @all << self
    return Song
  end

  def self.new_by_name

end
end
