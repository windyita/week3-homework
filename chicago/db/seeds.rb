# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Place.delete_all
Review.delete_all

[{:title => "Grant Park", :photo_url => "http://media.timeout.com/images/100896791/750/422/image.jpg", :admission_price => 0, :description => "Spanning 319 acres of lakefront property, Chicago's \"front yard\" is filled with notable landmarks like the Millennium Park, Buckingham Fountain, the Art Institute and Museum Campus."},
 {:title => "Navy Pier", :photo_url => "http://media.timeout.com/images/100905037/750/422/image.jpg", :admission_price => 0, :description => "This tourist hot spot features shops, eateries, an IMAX cinema and a bevy of sightseeing boat tours."},
 {:title => "Museum of Contemporary Art", :photo_url => "http://media.timeout.com/images/100897365/750/422/image.jpg", :admission_price => 1200, :description => "The Museum of Contemporary Art houses one of the largest collections of modern art in the nation and frequently hosts major touring exhibits."},
 {:title => "360 Chicago", :photo_url => "http://media.timeout.com/images/101468999/750/422/image.jpg", :admission_price => 1900, :description => "Formerly known as the John Hancock Observatory, 360 Chicago offers dining, sights and an interactive tour far above the city streets."},
 {:title => "Lincoln Park Zoo", :photo_url => "http://media.timeout.com/images/100892533/750/422/image.jpg", :admission_price => 0, :description => "See some 1,200 animals, from apes to zebras, at the oldest and one of only a few free zoos left in the country."}
].each do |place|
  p = Place.new
  p.title = place[:title]
  p.photo_url = place[:photo_url]
  p.admission_price = place[:admission_price]
  p.description = place[:description]
  p.save
end