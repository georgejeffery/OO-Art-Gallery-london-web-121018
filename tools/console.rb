require_relative '../config/environment.rb'


vangogh = Artist.new("vangogh", 25)
picasso = Artist.new("picasso", 50)
degas = Artist.new("degas",10)

city = Gallery.new("city", "new york")
london = Gallery.new("london", "london")

monalisa = Painting.new("mona lisa", 5000, degas, city)
guernica = Painting.new("guernica", 100000, picasso, london)
doodle = Painting.new("doodle", 500, degas, city)


binding.pry

puts "Bob Ross rules."
