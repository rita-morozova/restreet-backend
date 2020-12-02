# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Favorite.destroy_all
Listing.destroy_all
Wall.destroy_all
Video.destroy_all
Note.destroy_all
Favvideo.destroy_all
Art.destroy_all
Photo.destroy_all
Like.destroy_all

#TEST SEEDS

u1 = User.create(username: "rita", password_digest: "123", email: "test@test.com", name: "Rita", location: "Rio", bio:"Not much", picture:"https://media.artsper.com/artwork/904362_1_m.jpg?MjQ2MzE4MDAxNjA0NTIyMTM3")
u2 = User.create(username: "cole", password_digest: "123", email: "cole@test.com", name: "Cole", location: "Sun", bio:"Not much but much", picture:"https://media.artsper.com/artwork/904362_1_m.jpg?MjQ2MzE4MDAxNjA0NTIyMTM3")
u3 = User.create(username: "dave", password_digest: "123", email: "dave@test.com", name: "Dave", location: "Up and above", bio:"Artist", picture:"https://media.artsper.com/artwork/904362_1_m.jpg?MjQ2MzE4MDAxNjA0NTIyMTM3")
u4 = User.create(username: "moose", password_digest: "123", email: "test.com", name: "Dave", location: "Up and above", bio:"Artist", picture:"https://media.artsper.com/artwork/904362_1_m.jpg?MjQ2MzE4MDAxNjA0NTIyMTM3")

Listing.create(lat: 47.6228, lng: -122.332112, address: "11 street", zipcode: 23456, description: 'Brick Wall', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_kR5a0NayXASSmXM-09UpzbXjQnGvPYXnwQ&usqp=CAU', user_id: 1, adopted: true)
Listing.create(lat: 47.610668, lng: -122.341309, address: "12 street", zipcode: 23456, description: 'Wall with the view', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_kR5a0NayXASSmXM-09UpzbXjQnGvPYXnwQ&usqp=CAU',  user_id: 2, adopted: true)
Listing.create(lat: 47.608518, lng: -122.340603, address: "13 street", zipcode: 23456, description: 'Central Location', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_kR5a0NayXASSmXM-09UpzbXjQnGvPYXnwQ&usqp=CAU', user_id: 1, adopted: true)
Listing.create(lat: 47.605676, lng: -122.333440, address: "14 street", zipcode: 23456, description: "Children's Art Needed!", photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_kR5a0NayXASSmXM-09UpzbXjQnGvPYXnwQ&usqp=CAU', user_id: 2, adopted: false)
Listing.create(lat: 49.605676, lng: -121.333440, address: "19 street", zipcode: 23456, description: "We wanna something edgy", photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_kR5a0NayXASSmXM-09UpzbXjQnGvPYXnwQ&usqp=CAU', user_id: 2, adopted: false)
Listing.create(lat: 48.605676, lng: -122.453440, address: "14 street", zipcode: 23456, description: "I like minimalizzzm", photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_kR5a0NayXASSmXM-09UpzbXjQnGvPYXnwQ&usqp=CAU', user_id: 2, adopted: false)


Wall.create(listing_id: 1, user_id: 2)
Wall.create(listing_id: 2, user_id: 1)
Wall.create(listing_id: 3, user_id: 3)
# Wall.create(listing_id: 4, user_id: 1)
# Wall.create(listing_id: 5, user_id: 1)
# Wall.create(listing_id: 6, user_id: 3)



Art.create(name: "Warhol (art dealer)", artist: "Le Closier", year: 2020, image_url: "https://media.artsper.com/artwork/904362_1_m.jpg?MjQ2MzE4MDAxNjA0NTIyMTM3")
Art.create(name: "Kiss police", artist: "PyB", year: 2019, image_url: "https://media.artsper.com/artwork/903693_1_m.jpg?MjQ2MTMwOTgxNjA0NDkzMDg3")
Art.create(name: "The Looks 3", artist: "Marian Williams", year: 2019, image_url: "https://media.artsper.com/artwork/900504_1_m.jpg?MjQ1NDQwMzIxNjA0MzEzNzAz")
Art.create(name: "Spray Art", artist: "Speedy Graphito", year: 2014, image_url: "https://media.artsper.com/artwork/909876_1_m.jpg?MjQ3NTA3NDcxNjA0OTU1MjMy")
Art.create(name: "Figure 2", artist: "Alex Reagan", year: 2019, image_url: "https://media.artsper.com/artwork/785166_1_m.jpg?MTk1ODk3OTMxNjAwOTAxODc4")
Art.create(name: "Instagator", artist: "Sara Pope", year: 2020, image_url: "https://media.artsper.com/artwork/825684_1_m.jpg?MjA0NzQ0MzMxNjAwMjAyNjUw")
Art.create(name: "Victoria's Secret", artist: "Roman Reznitsky", year: 2017, image_url: "https://media.artsper.com/artwork/695220_1_m.jpg?MTc2ODg3NzExNjAxMjE1OTc0")
Art.create(name: "Cerf Pop Art", artist: "Max Rovira", year: 2018, image_url: "https://media.artsper.com/artwork/435228_1_m.jpg?MTIyNzI2NzMxNjAxMzc5NjI")
Art.create(name: "Tong Story", artist: "Christian Guy'", year: 2002, image_url: "https://media.artsper.com/artwork/203119_1_m.jpg?NjExNTQxNDE2MDA5MTg4NDI=")
Art.create(name: "L'heure des petits plaisir", artist: "Cinz", year: 2018, image_url: "https://media.artsper.com/artwork/641649_1_m.jpg?MTY1NzQ5NDkxNjAxNTA4NTA5")

Favorite.create(user_id: 1, art_id: 5)
Favorite.create(user_id: 1, art_id: 6)
Favorite.create(user_id: 1, art_id: 8)
Favorite.create(user_id: 2, art_id: 1)

Video.create(name: 'Basic Street art technique' , description: 'To paint freely and as well as you can, you need good can control. In this video I show you a few tips that you can try to improve your technique.' , url:'https://www.youtube.com/watch?v=xGz6SvxtJwo')
Video.create(name:'How to be a Street Artist with Apexer', description: 'In this episode of Art School, Apexer explains the foundation of lettering and demonstrates the progression of writing in a tag style, to a more three-dimensional form, to fully abstracting letterforms. He also explains the connection between street art sketching and spray painting.', url:'https://www.youtube.com/watch?v=qV2OTD5fMvk')
Video.create(name:'Street art lesson part 1 // The basics', description: 'Welcome to my Graffiti and street art course, a 10 based lessons tutorial brought to you to learn everything you need to know to paint beautiful murals!', url:'https://www.youtube.com/watch?v=A1VNLRwTNNg')
Video.create(name:'Graffiti lessons ep1 - Basics', description: "Hello everyone I'm Tony from 139ART Studiohere are some basics of drawing graffiti sketches.", url:'https://www.youtube.com/watch?v=2CSi5I9_2jA')
Video.create(name: 'BEGINNER SPRAY PAINT ART TUTORIAL', description:'I look forward to sharing this great medium with you all and helping you to improve your spray paint art with spray paint tutorials, tips and tricks, time-lapse videos and some advice on how to profit from your art.', url: 'https://www.youtube.com/watch?v=nNoEQrgyAZk')
Video.create(name:'How to paint pop art/streetart', description:'a mixture of pop art, street art, wheat paste, spray paint', url:'https://www.youtube.com/watch?v=sFp9v8P-fRA')
Video.create(name:'Online street art workshop with graffiti artist Kurtis | GetYourGuide', description: "Join GetYourGuide’s online street art workshop with a graffiti artist. GetYourGuide offers incredible tours, activities, and attractions around the world. And while the world stays home, we’re bringing them to you online. Express your inner artist and create your very own urban masterpiece with our street art guide, Kurtis. He’ll show you how to make cool at-home graffiti by bringing his uber cool Berlin class into your home.", url:'https://www.youtube.com/watch?v=7Ln7P9BjBsU')
Video.create(name:"How to Draw a Monster | Graffiti Art", description:"Hi, I'm Paes 164. Now I am going to show you how to do a character. Once again, getting your base wall color down, I feel that black is a great color to start a character with, that way you kind of build up off your shadows. So I'm just going to do a little goofy little monster, something I might typically replace my E of my graffiti piece, so it'd be P-A, graffiti monster, S still representing my E.", url:"https://www.youtube.com/watch?v=iarSZjbkufk")
Video.create(name:"How To Graffiti Pieces: Everything You Need To Know!", description:"Premium version includes 7 chapters of information + 5 practice pieces and 3 half name pieces for you to practice what you learned in today's video.", url:"https://www.youtube.com/watch?v=ALvLLOHFfog")
Video.create(name:"How to Graffiti TAGS and Basics", description:"How to do Graffiti. This graffiti tutorial is focused on basics and roots of graffiti culture and mainly on TAGS.Caligraphy Or Handstyle. ", url:"https://www.youtube.com/watch?v=YIa6yIrYRJA")
Video.create(name:"GRAFFITI INSPIRED / SPRAY PAINT / STENCIL / POP ART PAINTING | Beks", description:"In this video I make a painting inspired by graffiti's with my painting techniques. I used spray paint, acrylic paint, fluorescent colors, stencils, and a lot of masking tape. The canvas frame measures 80x80cm (32 x32)", url: 'https://www.youtube.com/watch?v=RHS6q26D6G0')
Video.create(name:"How To Paint Pop Art Painting with Abstract Painting Background | Lola", description:"In this new video demonstration, I realize this time a portrait in a style Pop Art. The background of this portrait is made in the manner of an abstract painting. As you will see I played again with transparency.", url:"https://www.youtube.com/watch?v=EzDUFCmhN9Y")
Video.create(name:"Galaxy SPRAY PAINT ART", description:"Hi guys! Thank you for watching this Galaxy SPRAY PAINT ART. In this spray painting i decided to paint this galaxy art over three Canvases.I hope you will enjoy watching this spray paint art, If so please consider subscribing to my channel, and don't forget to hit the bell so you know when i upload new video's and please LIKE and SHARE the video it'll be much appreciated. Follow me on Instagram and Facebook:  @Jon Barber Art", url:"https://www.youtube.com/watch?v=tOr76KRsXV0")
Video.create(name: "How to paint CREATIVE with ACRYLIC Paints BONKER BRAINS Streetart STYLE", description: false, url:"https://www.youtube.com/watch?v=E2TzDc59hzA")
Video.create(name: "Street Art Painting Demo / Layered Acrylic Graffiti Art / How-To Masking Tape Painting", description: "Abstract acrylic painting demonstration on canvas, street art graffiti style 12 x 16, using catalyst wedge, palette knife, spray paint, stencils, and brushes", url:"https://www.youtube.com/watch?v=Agvr4wQ45yk")
Video.create(name:"10 GRAFFITI Tips", description:"I decided to give you 10 basic tips for graffiti and street art. They should show you how do do graffiti or how to start with street art. I hope these advices will help you to improve your painting style ", url:"https://www.youtube.com/watch?v=ofSvAqiv0ss")
Video.create(name:"How to Paint a Street Art Mural! 💯 The Top 10 Tips & Tools (From an Expert! ✅) - Episode N° 6", description:"Here's my 10 tips and tools on how to paint a street art mural", url:"youtube.com/watch?v=nW3-rRWE_vI")
Video.create(name:"How to paint tiny STREET ART Canvas", description:"In this video I'm showing how to paint a tiny canvas with spray paint and stencils.", url:"https://www.youtube.com/watch?v=kn7i7HyZ5Cg")
Video.create(name:"No Pressure?! Painting a Mural for a Huge Company - Full Process", description: false, url:"https://www.youtube.com/watch?v=aLg2BS7xibE")
Video.create(name:"How to do 3D Street Art", description:"Here's the making of a 3-D work. This one was done for Chembur Festival. On till 15th Feb 2015.", url:"https://www.youtube.com/watch?v=SXfFhFZ6nH8")
Video.create(name:"Pop Art / Street Art Textured Relief Painting With Stencils | Beks#3", description:"A Pop Art series of paintings inspired by street art themes.", url:"https://www.youtube.com/watch?v=HCFrclT4aWk")
Video.create(name:"POP ART Acrylic PAINTING for Beginners | Step by Step", description:"Come and learn how easy it is to paint this great colorful pop art painting! Easy painting tutorial in acrylics for beginners.", url:"https://www.youtube.com/watch?v=I-KHup0-6l4")
Video.create(name:"How to paint, money style Pop Art!", description:"In this video, we're making Beverly Hills style pop art. This art style is really popular and can be found in most Los Angeles art galleries. It combines street art and Disney/Warner bros characters in high contrast colors to really pop!", url:"https://www.youtube.com/watch?v=LCgcCRjgU7c")
Video.create(name:"Artist Vlog | Painting Rihanna", description:"Hey y'all! Welcome back to my studio! In this video I'll be showing you my full process as I create this pop art portrait of Rihanna using acrylic paints on canvas. Enjoy!", url:"https://www.youtube.com/watch?v=nVctBR72VnI")
Video.create(name:"Pop Art Donut STEP-BY-STEP Painting Tutorial for Beginners | FREE Art Lesson | Painting With RED", description:"Learn how to paint this fun Pop Art Donut in this step-by-step tutorial! The perfect art project for beginner painters!", url:"https://www.youtube.com/watch?v=yLe6V_8jUMQ")
Video.create(name:"Paper Mache Pop Art Painting | Acrylic Painting Art Ideas on Canvas", description: false, url:"https://www.youtube.com/watch?v=Ugl6ZyxQINI")
Video.create(name:"HOW TO DRAW AND PAINT POP ART", description: false, url:"https://www.youtube.com/watch?v=LaRIhA0GGB8")
Video.create(name:"Pop Art Painting of a Lego / Street Art / Abstract Art | Noa", description: false, url:"https://www.youtube.com/watch?v=XI3thM8gfS0&t=1s")
Video.create(name:"Pop Art Painting Tutorial WOMAN SUNGLASSES. How to paint in acrylics step by step", description:"Come and learn how easy it is to paint this great Pop Art painting of a woman with mirror sunglasses. Easy painting tutorial in acrylics for beginners", url:"https://www.youtube.com/watch?v=cOt0nwIo5b8")
Video.create(name:"Bubble Gum Girl Pop Art on Newspaper Canvas | Acrylic Painting Tutorial", description:"Queen Bees! This week, we are taking the newspaper paper mache canvas we made and adding some super cool and fun pop art!", url:"https://www.youtube.com/watch?v=iK62WJBx4LI")
Video.create(name:"POP ART Acrylic Painting for Beginners", description:"This video shows how you can paint colorful pop art painting on canvas , also covers how to fix a mistake. This art is one of the most significant art movements of the twentieth century", url:"https://www.youtube.com/watch?v=wGdOhS5o7Jo")
Video.create(name:"New! Street Art!", description:"Bianca Burrows and Jason Collab in a mixed media street art styled piece", url:"https://www.youtube.com/watch?v=7JR6L1qLAeU")

Favvideo.create(video_id: 1, user_id:1)
Favvideo.create(video_id: 2, user_id:1)
Favvideo.create(video_id: 3, user_id:2)
Favvideo.create(video_id: 4, user_id:1)

Photo.create(user_id: u1.id, username: u1.username, image:"https://blvcks.com/wp-content/uploads/2017/09/o4j_Hmqy2-g.jpg", count: 20, liked: true)
Photo.create(user_id: u1.id, username: u2.username, image:"https://cdn-images.farfetch-contents.com/12/56/27/14/12562714_11933138_300.jpg", count: 95, liked: true )
Photo.create(user_id: u2.id, username: u3.username, image: "https://images.timberland.com/is/image/timberland/10061024-HERO?wid=720&hei=720&fit=constrain,1&qlt=85,1&op_usm=1,1,6,0", count:10, liked: false)

Like.create(user_id: u1.id, photo_id: 1)
Like.create(user_id: u1.id, photo_id: 2)
Like.create(user_id: u2.id, photo_id: 1)

Note.create(user_id: 1, video_id: 1, content: 'Prepare a big piece of paper')
Note.create(user_id: 1, video_id: 1, content: 'Cut it in shape of heart')
Note.create(user_id: 1, video_id: 1, content: 'Paint yellow')
Note.create(user_id: 1, video_id: 2, content: 'Boring stuff')
Note.create(user_id: 1, video_id: 2, content: 'Min 4 quite interesting')
Note.create(user_id: 2, video_id: 1, content: 'BBBB I know better')