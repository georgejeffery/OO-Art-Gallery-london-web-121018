class Gallery

  attr_reader :name, :city, :all

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    paintings = []
    Painting.all.each do |painting|
      if painting.gallery == self
        paintings << painting
      end
    end
    paintings
  end

  def artists
    artists = []
    paintings.each do |painting|
      artists << painting.artist
    end
    artists
  end
    
  def artist_names
    names = []
    artists.each do |artist|
      names << artist.name
    end
    names
  end

  def most_expensive_painting
    paintings.max_by{|painting| painting.price}
  end

end
