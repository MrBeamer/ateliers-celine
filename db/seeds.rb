require "open-uri"

puts 'Cleaning database now...'
User.destroy_all
Workshop.destroy_all
puts 'Database clean ✅'


# Users
user = User.create!(
  artist: true,
  first_name: "Letitia",
  last_name: "Wright",
  username: "Shuri",
  email: "wright@gmx.com",
  password: "password",
  country: "Germany",
  city: "Berlin",
  state: "Berlin",
  postcode: "10179",
  street: "Dresdener Str. 114",
  phone: "00491603308134"
)

user_one = User.create!(
  artist: true,
  first_name: "Letitia",
  last_name: "Wright",
  username: "CelineC",
  email: "celine@gmx.com",
  password: "password",
  country: "Germany",
  city: "Berlin",
  state: "Berlin",
  postcode: "10179",
  street: "Dresdener Str. 114",
  phone: "00491603308134"
)

user_two = User.create!(
  artist: true,
  first_name: "Letitia",
  last_name: "Wright",
  username: "Zelda",
  email: "zelda@gmx.com",
  password: "password",
  country: "Germany",
  city: "Berlin",
  state: "Berlin",
  postcode: "10179",
  street: "Dresdener Str. 114",
  phone: "00491603308134"
)

user_three = User.create!(
  artist: true,
  first_name: "Letitia",
  last_name: "Wright",
  username: "Link12",
  email: "link@gmx.com",
  password: "password",
  country: "Germany",
  city: "Berlin",
  state: "Berlin",
  postcode: "10179",
  street: "Dresdener Str. 114",
  phone: "00491603308134"
)

user_four = User.create!(
  artist: true,
  first_name: "Letitia",
  last_name: "Wright",
  username: "GannonD0rf",
  email: "gannondorf@gmx.com",
  password: "password",
  country: "Germany",
  city: "Berlin",
  state: "Berlin",
  postcode: "10179",
  street: "Dresdener Str. 114",
  phone: "00491603308134"
)

user_five = User.create!(
  artist: true,
  first_name: "Letitia",
  last_name: "Wright",
  username: "Sheika",
  email: "sheika@gmx.com",
  password: "password",
  country: "Germany",
  city: "Berlin",
  state: "Berlin",
  postcode: "10179",
  street: "Dresdener Str. 114",
  phone: "00491603308134"
)

file = URI.open('https://www.wiregrassmuseum.org/wp-content/uploads/2017/10/Scott-Stephens-Riverbend-scaled.jpg')
# pdf = URI.open("https://res.cloudinary.com/yileijiang/image/upload/v1606811531/qk73ftw9xpqspe526pohouyahb82.pdf")
cyanotype = Workshop.create!(
  name: "Cyanotype",
  artist_name: "Dimi & Yuko",
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
cyanotype.photo.attach(io: file, filename: 'cyanotype.jpg', content_type: 'image/jpg')
# cyanotype.pdf.attach(io: pdf, filename: 'cyanotype.pdf', content_type: 'application/pdf')

# workshop steps

cyanotype_step_one = Step.create!(
  title: "Making Cyanotype Emulsion",
  description: "The recipe we will give you will make up to 10-15 A5 size prints. The cyanotype is made out of two simple solutions, which are Solution A: 2 grams Ferric ammonium citrate (green), and Solution B: 0,8 grams Potassium ferricyanide (red) in 20 ml water that you will find inside the brown bottle. A folded piece of paper can be used as a funnel. Take your bottle with the distilled water and dissolve the chemicals into it. Stir your solution properly till the chemical is dissolved. Unused solutions can be stored separately in the brown bottle away from light, but will not last very long once they have been mixed.",
  youtube_url: "EZQDZyo63uc",
  workshop_id: cyanotype.id
)

cyanotype_step_two = Step.create!(
  title: "Application of the Emulsion on Papers",
  description: "To apply the emulsion, it's best to use the pipette and fill it with your mixed emulsion.
  Now drop the emulsion evenly on the paper so you can spread it with your brush afterwards.
  Make sure to not leave the drops onto the surface for too long since the emulsion drops sink into the paper quite fast and it can leave nasty marks on your print later.
  By using a brush you can just simply paint the chemical on your paper. The way you apply the chemical is affecting your result.
  You can choose to brush very gently or go very rough to get a more picturesque brushstroke. Make sure your working area is dimly lit.",
  youtube_url: "-mdOqI1cbrI",
  workshop_id: cyanotype.id
)

cyanotype_step_three = Step.create!(
  title: "Dry the Papers",
  description: "Once the papers are coated, leave them to dry in the dark place.
  You can also use a blow dryer to fasten the drying process. Wait at least 24 hours until fully dried and do not touch under any circumstance.
  Meanwhile, you can prepare the next steps of the workshop.
  If you use a blow-drier, Please make sure to flatten paper.",
  youtube_url: "XroD5qNl9Wk",
  workshop_id: cyanotype.id
)

cyanotype_step_four = Step.create!(
  title: "Expose Your Papers",
  description: "Put the contact frame outside for exposure.
  When you are in the season with higher sun and longer day time, you should look out for your print, because the print will be fully exposed in a few minutes \n
  During the wintertime, when the day is shorter and cloudy, you might need 4-6 hours for the exposure",
  youtube_url: "sxTjmIoU52g",
  workshop_id: cyanotype.id
)

cyanotype_step_five = Step.create!(
  title: "Develop and Rinse the Photo",
  description: "After exposing it in the sunlight you take your print out of the contact frame.
  It is sufficient to immerse the photo for a few minutes in a tray filled with tap water or just rinse it in your sink.
  When rinsing, we have to be careful that the stream of water does not run directly on the image",
  youtube_url: "LFL5-e1aknM",
  workshop_id: cyanotype.id
)

cyanotype_step_six = Step.create!(
  title: "Dry it and ENJOY Your Beautiful Creation",
  description: "Take the water out from the print with the kitchen paper towels.
  And hang your prints, let it dry naturally.
  If you want it to dry very quickly, you can also dry your paper with a blow drier",
  youtube_url: "H6Xj-Eq0Dio",
  workshop_id: cyanotype.id
)

# Workshops

file = URI.open('https://images.unsplash.com/photo-1501632865397-94246a9f1521?ixlib=rb-1.2.1&auto=format&fit=crop&w=2588&q=80')
botanically = Workshop.create!(
  name: "Botanically Dyed Textiles",
  artist_name: "Ania Zberlek",
  workshop_description: "This workshop will explore different dyeing techniques with a set of 3 different dye plants to showcase the main properties of botanical colours. The user will learn about extracting plant dyes, modifying them, and dyeing fabric.",
  artist_description: "Ania Zberlek is a Berlin-based artist offering natural textile products, handmade in small batches. She only works with eco inks and certified and local fibers that are dyed using regional plants.",
  origins_description: "Dyeing with plants has been traced back more than 5,000 years and originated in China. The essential process of dyeing changed little over time. Today, there is an increasing demand for the use of natural colorants, without any harmful effects on environment and aquatic ecosystem.",
  category: "Functional",
  user_id: User.last.id
)
botanically.photo.attach(io: file, filename: 'botanically.jpg', content_type: 'image/jpg')



file = URI.open('https://images.unsplash.com/photo-1602407069119-e0c6f1602e31?ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80')
tiled = Workshop.create!(
  name: "Tiled Block Print with Gradiation",
  artist_name: "Katsushika Oi",
  workshop_description: "In this workshop, artist Silvy Albert introduces her craft with a detailed, digital workshop sharing how to create custom hand block printed silk scarves.",
  artist_description: "Ania Zberlek is a Berlin-based artist offering natural textile products, handmade in small batches. She only works with eco inks and certified and local fibers that are dyed using regional plants.",
  origins_description: "Printmaking is the age-old art form of making multiples. Each and every impression made from a printer’s block is an original piece of art, no two will be exactly the same, making this craft truly unique and handmade.",
  category: "Functional",
  user_id: User.last.id
)
tiled.photo.attach(io: file, filename: 'tiled.jpg', content_type: 'image/jpg')


file = URI.open('https://images.unsplash.com/photo-1596626417050-39c7f6ddd2c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
basket = Workshop.create!(
  name: "Indonesian Basket Weaving",
  artist_name: "Wayan Ketut",
  workshop_description: "In this workshop, crafwoman Wayan Ketut explores multiple basket weaving techniques and a variety of natural materials to replicate the authentic art of Indonesian Basket making.",
  artist_description: "Wayan Ketut is based in Bali and has dedicated her life to support Dayak people`s will to sustain their traditions and preserve their forests for future generations.",
  origins_description: "Indonesian Basket Weaving originated in the 17th century thanks to the artisans of the Dayak Benuaq, a subtribe of Dayak who live in West Kutai, East Kalimantan, Indonesia.",
  category: "Traditional",
  user_id: User.last.id
)
basket.photo.attach(io: file, filename: 'basket.jpg', content_type: 'image/jpg')



file = URI.open('https://images.unsplash.com/photo-1595447966793-f9dd1164068b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
glass = Workshop.create!(
  name: "Modern Stained Glass Art",
  artist_name: "Lisa Cohen",
  workshop_description: "The Workshop provides the curated tools & materials to build an in-home soldering studio.",
  artist_description: "Lisa Cohen is a stained glass artist designing unique, hand-crafted glass pieces that are both comtemporary and functional. After a move, a marriage and three children, Lauren combined her love of traditional cathedral glass art with her love of modern designs to start her own company, Szklo Glass. Her mission: to bring modernity to an age-old traditional craft.",
  origins_description: "Evidence of stained glass dates back to the Ancient Roman Empire, when craftsman began using colored glass to produce decorative wares. While few fully in-tact stained glass pieces from this period exist, the Lycurgus Cup indicates that this practice emerged as early as the 4th century. Today, contemporary stained glass artists keep the age-old art form alive. Like their 20th-century predecessors, these artists continue to come up with creative new ways to reinterpret the ancient craft.",
  category: "Comtemporary",
  user_id: User.last.id
)
glass.photo.attach(io: file, filename: 'glass.jpg', content_type: 'image/jpg')



file = URI.open('https://images.unsplash.com/photo-1605123583748-4da43cec1380?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80')
landscape = Workshop.create!(
  name: "Macramé Landscape",
  artist_name: "Rachel Richards",
  workshop_description: "In this workshop, artist Laura Schimer shows us how to take macramé to the next level by focusing on dyed cotton string to embellish and build knotted landscapes using a simple combination of classic knots such as the lark’s head and square knot.",
  artist_description: "Rachel has spent years developing her skills and finding her voice in the macramé community. After some reflection and time outdoors, she found a way to combine her passions for both fiber art and nature, and her macramé landscapes were born. Rachel has devoted much time and research to her materials, including sourcing the custom dyed cotton string she uses today - the same material we are including in this kit",
  origins_description: "Macramé has made its way back into pop culture over the last several years with a modern and updated twist. It was last popularized in the 1970s when plant hangers, lampshades, and other bohemian creations joined mainstream culture and fashion.",
  category: "Comtemporary",
  user_id: User.last.id
)
landscape.photo.attach(io: file, filename: 'landscape.jpg', content_type: 'image/jpg')


# posts

file = URI.open('https://images.unsplash.com/photo-1569172122301-bc5008bc09c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
post_1 = Post.create!(
  title: "Mosaic Project",
  user_id: User.second.id,
  workshop_id: Workshop.first.id
)
post_1.photo.attach(io: file, filename: 'post_1.jpg', content_type: 'image/jpg')



file = URI.open('https://images.unsplash.com/photo-1526304760382-3591d3840148?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
post_2 = Post.create!(
  title: "Hand Painting",
  user_id: User.third.id,
  workshop_id: Workshop.first.id
)
post_2.photo.attach(io: file, filename: 'post_2.jpg', content_type: 'image/jpg')



file = URI.open('https://images.unsplash.com/photo-1552312097-8ef75595e2a2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1300&q=80')
post_3 = Post.create!(
  title: "Abstract Art on Canvas",
  user_id: User.fourth.id,
  workshop_id: Workshop.first.id
)
post_3.photo.attach(io: file, filename: 'post_3.jpg', content_type: 'image/jpg')



file = URI.open('https://images.unsplash.com/photo-1523554888454-84137e72c3ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
post_4 = Post.create!(
  title: "Opened my creative Eye",
  user_id: User.fifth.id,
  workshop_id: Workshop.first.id
)
post_4.photo.attach(io: file, filename: 'post_4.jpg', content_type: 'image/jpg')



file = URI.open('https://images.unsplash.com/photo-1556760891-018194410847?ixlib=rb-1.2.1&auto=format&fit=crop&w=1502&q=80')
post_5 = Post.create!(
  title: "Acrylic on Plates",
  user_id: User.last.id,
  workshop_id: Workshop.first.id
)
post_5.photo.attach(io: file, filename: 'post_5.jpg', content_type: 'image/jpg')


review_1 = Review.create!(
  comment: "Amazing workshop, the output was outstanding and I had so much fun with my boyfriend.",
  rating: 5,
  user_id: User.second.id,
  workshop_id: Workshop.first.id
)

review_2 = Review.create!(
  comment: "Dimi and Yuko were so inspiring, they made me travel to japan through the video. Thank you again!",
  rating: 5,
  user_id: User.third.id,
  workshop_id: Workshop.first.id
)

review_3 = Review.create!(
  comment: "Once you learn the technique is incredible how easy you can re-apply it over and over",
  rating: 4,
  user_id: User.fourth.id,
  workshop_id: Workshop.first.id
)


puts "Complete, created #{Workshop.count} workshops."
puts "Complete, created #{User.count} user."
puts "Complete, created #{Post.count} posts."
puts "Complete, created #{Review.count} reviews."
