class Artist

  attr_reader :name, :years_experience, :all

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_experience
    totalexperience = 0
    self.all.each do |artist|
      totalexperience += artist.years_experience
    end
    totalexperience
  end

  def create_painting(title, price, gallery)  
    newpainting = Painting.new(title, price, self, gallery )
    newpainting
  end

  def paintings
    paintings = []
    Painting.all.each do |painting|
      if painting.artist == self
        paintings << painting
      end
    end
    paintings
  end

  def galleries
    galleries = []
    paintings.each do |painting|
      galleries << painting.gallery.name
    end
    galleries
  end

  def cities
    cities = []
    paintings.each do |painting|
      cities << painting.gallery.city
    end
    cities

  end
end
