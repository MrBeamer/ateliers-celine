puts 'Cleaning database now...'
User.destroy_all
Workshop.destroy_all
puts 'Database clean ✅'

# Users
user = User.create!(
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
  phone: "00491603308134"
)

# Users
# michael = User.create!(
#   artist: true,
#   first_name: "Michael",
#   last_name: "Beamer",
#   username: "MBeamer",
#   email: "Michael@Beamer.com",
#   password: "password",
#   country: "Germany",
#   city: "Berlin",
#   state: "Berlin",
#   postcode: "10179",
#   street: "Dresdener Str. 114",
#   phone: "01603308134"
# )


workshop = Workshop.create!(
  name: "Cyanotype",
  workshop_description: "Dimi & Yuko have designed a unique workshop in which the poem of a famous Japanese poet Buson Yosa comes to life. Throughout the atelier, you will explore the ancient technique of Cyanotype and travel across the Japanese literature with our creative master Dimi and Yuko.",
  artist_description: "DIMI // GREECE
  Dimitri is a visual artist based in Kreuzberg (Berlin) working in the fields of photography and printing. During his studies in fine arts department in Kunstuniversität Linz, Austria, his interest in analogue photography and the interaction with painting was arising.
  YUKO // JAPAN
  After working with publishers and gaming companies for 5 years, Yukos career shifted to beeing a visual artist in Berlin. For her Cyanotype is a great way to transform a digital image into real life. Yuko is excited to share her knowledge about digital negatives and the science behind cyanotype with you.",
  origins_description: "Cyanotype is a 170 year old photographic printing process that produces prints in a distinctive dark greenish-blue. The word cyan comes from the Greek, meaning  “dark blue substance.”
  The process was invented by Sir John Herschel, a brilliant astronomer and scientist, in 1842. 
  However, Herschel did not use cyanotype for photography, but for reproducing notes. It was a family friend, the botanist Anna Atkins, who used the cyanotype printing process in 1843 to create an album of algae specimens. She created the images by placing objects directly on photosensitive paper. She is regarded as the first female photographer.",
  category: "Traditional",
  user_id: User.last.id
)

workshop = Workshop.create!(
  name: "Botanically Dyed Textiles",
  workshop_description: "This workshop will explore different dyeing techniques with a set of 3 different dye plants to showcase the main properties of botanical colours. The user will learn about extracting plant dyes, modifying them, and dyeing fabric.",
  artist_description: "Ania Zberlek is a Berlin-based artist offering natural textile products, handmade in small batches. She only works with eco inks and certified and local fibers that are dyed using regional plants.",
  origins_description: "Dyeing with plants has been traced back more than 5,000 years and originated in China. The essential process of dyeing changed little over time. Today, there is an increasing demand for the use of natural colorants, without any harmful effects on environment and aquatic ecosystem.",
  category: "Functional",
  user_id: User.last.id
)

workshop = Workshop.create!(
  name: "Tiled Block Print with Gradiation",
  workshop_description: "In this workshop, artist Silvy Albert introduces her craft with a detailed, digital workshop sharing how to create custom hand block printed silk scarves.",
  artist_description: "Ania Zberlek is a Berlin-based artist offering natural textile products, handmade in small batches. She only works with eco inks and certified and local fibers that are dyed using regional plants.",
  origins_description: "Printmaking is the age-old art form of making multiples. Each and every impression made from a printer’s block is an original piece of art, no two will be exactly the same, making this craft truly unique and handmade.",
  category: "Functional",
  user_id: User.last.id
)

workshop = Workshop.create!(
  name: "Indonesian Basket Weaving",
  workshop_description: "In this workshop, crafwoman Wayan Ketut explores multiple basket weaving techniques and a variety of natural materials to replicate the authentic art of Indonesian Basket making.",
  artist_description: "Wayan Ketut is based in Bali and has dedicated her life to support Dayak people`s will to sustain their traditions and preserve their forests for future generations.",
  origins_description: "Indonesian Basket Weaving originated in the 17th century thanks to the artisans of the Dayak Benuaq, a subtribe of Dayak who live in West Kutai, East Kalimantan, Indonesia.",
  category: "Traditional",
  user_id: User.last.id
)

workshop = Workshop.create!(
  name: "Indonesian Basket Weaving",
  workshop_description: "In this workshop, crafwoman Wayan Ketut explores multiple basket weaving techniques and a variety of natural materials to replicate the authentic art of Indonesian Basket making.",
  artist_description: "Wayan Ketut is based in Bali and has dedicated her life to support Dayak people`s will to sustain their traditions and preserve their forests for future generations.",
  origins_description: "Indonesian Basket Weaving originated in the 17th century thanks to the artisans of the Dayak Benuaq, a subtribe of Dayak who live in West Kutai, East Kalimantan, Indonesia.",
  category: "Traditional",
  user_id: User.last.id
)

workshop = Workshop.create!(
  name: "Modern Stained Glass Art",
  workshop_description: "The Workshop provides the curated tools & materials to build an in-home soldering studio.",
  artist_description: "Lisa Cohen is a stained glass artist designing unique, hand-crafted glass pieces that are both comtemporary and functional. After a move, a marriage and three children, Lauren combined her love of traditional cathedral glass art with her love of modern designs to start her own company, Szklo Glass. Her mission: to bring modernity to an age-old traditional craft.",
  origins_description: "Evidence of stained glass dates back to the Ancient Roman Empire, when craftsman began using colored glass to produce decorative wares. While few fully in-tact stained glass pieces from this period exist, the Lycurgus Cup indicates that this practice emerged as early as the 4th century. Today, contemporary stained glass artists keep the age-old art form alive. Like their 20th-century predecessors, these artists continue to come up with creative new ways to reinterpret the ancient craft.",
  category: "Comtemporary",
  user_id: User.last.id
)

workshop = Workshop.create!(
  name: "Macramé Landscape",
  workshop_description: "In this workshop, artist Laura Schimer shows us how to take macramé to the next level by focusing on dyed cotton string to embellish and build knotted landscapes using a simple combination of classic knots such as the lark’s head and square knot.",
  artist_description: "Rachel has spent years developing her skills and finding her voice in the macramé community. After some reflection and time outdoors, she found a way to combine her passions for both fiber art and nature, and her macramé landscapes were born. Rachel has devoted much time and research to her materials, including sourcing the custom dyed cotton string she uses today - the same material we are including in this kit",
  origins_description: "Macramé has made its way back into pop culture over the last several years with a modern and updated twist. It was last popularized in the 1970s when plant hangers, lampshades, and other bohemian creations joined mainstream culture and fashion.",
  category: "Comtemporary",
  user_id: User.last.id
)


puts "Complete, created #{Workshop.count} workshops."