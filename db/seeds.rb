# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Workshop.destroy_all

# Users
michael = User.create!(
  artist: true,
  first_name: "Michael",
  last_name: "Beamer",
  username: "MBeamer",
  email: "Michael@Beamer.com",
  password: "password",
  country: "Germany",
  city: "Berlin",
  state: "Berlin",
  postcode: "10179",
  street: "Dresdener Str. 114",
  phone: "01603308134"
)

workshop = Workshop.create!(
  name: "Cyanotype",
  workshop_description: "Dimi & Yuko have designed a unique workshop in which the poem of a famous Japanese poet Buson Yosa comes to life. Throughout the atelier, you will explore the ancient technique of Cyanotype and travel across the Japanese literature with our creative master Dimi and Yuko.",
  artist_description: "DIMI // GREECE
  Dimitri is a visual artist based in Kreuzberg  (Berlin) working in the fields of photography and printing. During his studies in fine arts department in Kunstuniversität Linz, Austria, his interest in analogue photography and the interaction with painting was arising.
  YUKO // JAPAN
  After working with publishers and gaming companies for 5 years, Yukos career shifted to beeing a visual artist in Berlin. For her Cyanotype is a great way to transform a digital image into real life. Yuko is excited to share her knowledge about digital negatives and the science behind cyanotype with you.",
  origins_description: "Cyanotype is a 170 year old photographic printing process that produces prints in a distinctive dark greenish-blue. The word cyan comes from the Greek, meaning  “dark blue substance.”
  The process was invented by Sir John Herschel, a brilliant astronomer and scientist, in 1842. 
  However, Herschel did not use cyanotype for photography, but for reproducing notes. It was a family friend, the botanist Anna Atkins, who used the cyanotype printing process in 1843 to create an album of algae specimens. She created the images by placing objects directly on photosensitive paper. She is regarded as the first female photographer.",
  category: "traditional"
)
