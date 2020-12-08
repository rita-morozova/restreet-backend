# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
# Favorite.destroy_all
Listing.destroy_all
# Wall.destroy_all
Video.destroy_all
# Note.destroy_all
# Favvideo.destroy_all
Art.destroy_all
# Photo.destroy_all
# Like.destroy_all

#TEST SEEDS

u1 = User.create(username: "Iren", password_digest: "123", email: "iren@gmail.com", name: "Rita", location: "Rio", bio:"Not much", picture:"https://media.artsper.com/artwork/904362_1_m.jpg?MjQ2MzE4MDAxNjA0NTIyMTM3")


Listing.create(lat: 47.60442558349617, lng: -122.32429296318571, address: "325 9th Ave, Seattle, WA", zipcode: 98104, description: 'Make our patients happier', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_kR5a0NayXASSmXM-09UpzbXjQnGvPYXnwQ&usqp=CAU', user_id: 1, adopted: true)
Listing.create(lat: 47.61914294602053, lng: -122.34429196808595, address: "620 Denny Way, Seattle, WA", zipcode: 98109, description: 'Local Gas Station', photo: 'https://images.unsplash.com/photo-1549416616-cb2d6597c806?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8Z2FzJTIwc3RhdGlvbiUyMHdhbGx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',  user_id: 1, adopted: false)


# Wall.create(listing_id: 1, user_id: 2)
# Wall.create(listing_id: 2, user_id: 1)
# Wall.create(listing_id: 3, user_id: 3)
# Wall.create(listing_id: 4, user_id: 1)
# Wall.create(listing_id: 5, user_id: 1)
# Wall.create(listing_id: 6, user_id: 3)



Art.create(name: "Warhol (art dealer)", artist: "Le Closier", year: 2020, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606942143/arts/904362_1_m_cmsqes.jpg")
Art.create(name: "Kiss police", artist: "PyB", year: 2019, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606946102/arts/903693_1_m_oreiy1.jpg")
Art.create(name: "The Looks 3", artist: "Marian Williams", year: 2019, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606946134/arts/900504_1_m_g70ouo.jpg")
Art.create(name: "Spray Art", artist: "Speedy Graphito", year: 2014, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606946165/arts/909876_1_m_pvbf5w.jpg")
Art.create(name: "Figure 2", artist: "Alex Reagan", year: 2019, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606946209/arts/785166_1_m_s6ky88.jpg")
Art.create(name: "Instagator", artist: "Sara Pope", year: 2020, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606946250/arts/825684_1_m_qx2hut.jpg")
Art.create(name: "Victoria's Secret", artist: "Roman Reznitsky", year: 2017, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606946281/arts/695220_1_m_o41xqh.jpg")
Art.create(name: "Cerf Pop Art", artist: "Max Rovira", year: 2018, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606946322/arts/435228_1_m_sytyvr.jpg")
Art.create(name: "Tong Story", artist: "Christian Guy'", year: 2002, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606946362/arts/203119_1_m_qr9p23.jpg")
Art.create(name: "L'heure des petits plaisir", artist: "Cinz", year: 2018, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606946408/arts/641649_1_m_n76qji.jpg")
Art.create(name: "Untitled (1988)", artist: "Keith Haring", year: 1989 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606946969/arts/9004512052_1598824450_xrcmss.jpg")
Art.create(name: "'Marilyn (Announcement)", artist: "Andy Warhol", year: 1981 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606947140/arts/1577236423_1582770237_x5qqn1.jpg")
Art.create(name: "Dollar Sign, Yellow", artist: "Andy Warhol", year: 1981 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606947213/arts/1850403211_1605238495_klskxh.jpg")
Art.create(name: "Sunday B. Morning", artist: "Andy Warhol", year: 1970, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606947322/arts/9992511788_1605238718_pqfegt.jpg")
Art.create(name: "Femme a La Chaise Sure", artist: "Pablo Picasso", year: 1973 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606947381/arts/8190886631_1582089446_fdyow2.jpg")
Art.create(name: "L' Alesienne", artist: "Pablo Picasso", year: 1982 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606947447/arts/4023371728_1605238622_pw1f57.jpg")
Art.create(name: "Abstraktes Bild", artist: "Gerhard Richter", year: "Unknown Year", image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606947516/arts/Gerhard-Richter-a640_xmatzu.jpg")
Art.create(name: "Rythme #1", artist: 'Robert Delaunay', year: "Unknown Year" , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606947578/arts/sonia-delaunay2a640_wazix8.jpg")
Art.create(name: "Composition II in Red, Blue, and Yellow", artist: "Piet Mondrian", year: 1930, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606947640/arts/Piet_Mondriaan_1930_-_Mondrian_Composition_II_in_Red_Blue_and_Yellow_x8hmvf.png")
Art.create(name: "Presenting the Past", artist: "KAWS", year: 2014 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606947700/arts/presenting-the-past-kaw-25-1571819764-250-6e6_ebxfd1.jpg")
Art.create(name: "Target", artist: "Jasper Johns", year: 1961, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606947773/arts/default_gfa2ql.jpg")
Art.create(name: "No Name", artist: "Perry", year: 2015, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606947866/arts/Graffiti_6_8001_kxezpq.jpg")
Art.create(name: "Untitled IV", artist: "Hermann Nitsch", year: 2019 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606947942/arts/untitled-iv-hni-39-1570444905-48-bd2_g6uzwk.jpg")
Art.create(name: "Small Sun 2", artist: "Ugo Rondinone", year: 2019, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606947997/arts/small-sun-2-uro-50-1571308781-50-2be_huwzhg.jpg")
Art.create(name: "You Should Know I Know", artist: "KAWS", year: 2015, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606948046/arts/you-should-know-i-know-kaw-25-1571819956-250-7e7_vxhfdm.jpg")
Art.create(name: "Woman in the Sun", artist: "James Rosenquist", year: 1991 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606948111/arts/woman-in-the-sun-jro-00-1571822546-60-fcd_kbow9r.jpg")
Art.create(name: "Untitled Shit", artist: "David Shrigley", year: 2012 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606948171/arts/untitled-shit-dsh-00-1573462558-100-f13_vzmykj.jpg")
Art.create(name: "Ellsworth Kelly", artist: "Mallarmé Suite: Green", year: 1992 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606948233/arts/mallarme-suite-green-eke-00-1574163384-40-ab4_cashfl.jpg")
Art.create(name: "Eight Colorful Inside Jobs: Magenta", artist: "John Baldessari", year: 2017 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606948306/arts/john-baldessari-eight-colorful-inside-jobs-magenta-jba-50-1574243380-50-65d_krp92l.jpg")
Art.create(name: "Stonehenge (With Two Persons) ", artist: "John Baldessari", year: 2005, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606948503/arts/stonehenge-with-two-persons-violet-jba-00-1574425647-60-593_vgzwy8.jpg")
Art.create(name: "Stonehenge (With Two Persons) Orange", artist: "John Baldessari", year: 2005 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606948386/arts/stonehenge-with-two-persons-orange-jba-00-1574425457-60-d71_vrm5zi.jpg")
Art.create(name: "Poids de la lune III", artist: "Etel Adnan", year: 2019, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606948581/arts/poids-de-la-lune-iii-ead-75-1575449299-35-e57_rmmkio.jpg")
Art.create(name: "MMA-1", artist: "Josef Albers", year: 1970 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606948651/arts/mma-1-jal-01-1575548534-100-f4f_sikspx.jpg")
Art.create(name: "October 3 (Yellow)", artist: "John Zurier", year: 2017, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606948715/arts/october-3-yellow-jzu-03-1580982681-12-ddd_qqgovu.jpg")
Art.create(name: "Formes", artist: "Henri Matisse", year: 1947, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606948775/arts/formes-hma-35-1581071575-270-031_hbbvx6.jpg")
Art.create(name: "Our Unfinished Revolution: Animals", artist: "Alexander Calder", year: 1976 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606948854/arts/our-unfinished-revolution-grey-elipse-aca-82-1583844953-175-498_tutzdm.jpg")
Art.create(name: "Focus", artist: "Osvaldo Mariscotti", year: 2020 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606948912/arts/focus-oma-77-1585213818-55-ca1_znsnqy.jpg")
Art.create(name: "Step By Step", artist: "Osvaldo Mariscotti", year: 2018, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606948973/arts/step-by-step-oma-77-1585214690-55-a11_ks2l3h.jpg")
Art.create(name: "Color Twist", artist: "Osvaldo Mariscotti", year: 2018, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606949034/arts/color-twist-oma-77-1585214827-55-b39_ucjss8.jpg")
Art.create(name: "Untitled (Red OM18-0302)", artist: "Osvaldo Mariscotti", year: 2018 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606949108/arts/untitled-red-om18-0302-oma-01-1585214963-40-e44_euoyqq.jpg")
Art.create(name: "Power Of Sun", artist: "Etel Adnan", year: 2017 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606949183/arts/etel-adnan-power-of-sun-ead-68-1509009921-35-ff6_jj3l5f.jpg")
Art.create(name: "Coup de dés", artist: "Etel Adnan", year: 2018 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606949235/arts/coup-de-des-ead-76-1587117433-35-010_dbaqqc.jpg")
Art.create(name: "Aten Reign", artist: "James Turrell", year: 2015 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606949291/arts/aten-reign-jtu-51-1587379888-30-0f4_mdqsvt.jpg")
Art.create(name: "Red Trumpet", artist: "Donald Sultan", year: 2008 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606949351/arts/red-trumpet-dsu-52-1587380571-50-3a3_ziwx3v.jpg")
Art.create(name: "Ohne Titel (II)", artist: "Günther Förg", year: 2000 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606949528/arts/ohne-titel-ii-gfo-02-1588158641-40-eb7_z5xf6x.jpg")
Art.create(name: "Imperfect Print, from: Imperfect Series", artist: "Roy Lichtenstein", year: 1988 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606949605/arts/imperfect-print-from-imperfect-series-rli-28-1597677610-45-421_o7irzh.jpg")
Art.create(name: "Untitled #3 (from the Pasadena Box)", artist: "Sam Francis", year: 1963, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606949668/arts/untitled-3-from-the-pasadena-box-sfr-10-1602502412-100-94a_nbed8m.jpg")
Art.create(name: "No Name", artist: "Banksy", year: 'Unknown Year', image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606949722/arts/file-20190114-43517-nxelsb.jpg_puddtg.jpg")
Art.create(name: "Soixante dit stop", artist: "Yves Rizza", year: 2016 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606949781/arts/51736_1_m_wtgssx.jpg")
Art.create(name: "No Name", artist: "Gleo", year: 2017, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606949834/arts/24127169_114386096013896_506597487121793024_n-1024x1024_qsule5.jpg")
Art.create(name: "Carita", artist: "Virginia Benedicto", year: 2017, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606949879/arts/283456_1_m_ep9e4c.jpg")
Art.create(name: "What's all the excitement about", artist: "John Joseph Hanright", year: 2020, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606949946/arts/898656_1_m_vkxtkr.jpg")
Art.create(name: "Superman Recycling", artist: "Max L", year: 2019 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606949992/arts/899877_1_m_c164qs.jpg")
Art.create(name: "Melograno", artist: "Kobra & Walsh", year: "Unknown Year", image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606950053/arts/907359_1_m_j0hqid.jpg")
Art.create(name: "Pop Tart", artist: "D*Face", year: 'Unknown Year', image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606950092/arts/Urban-Art-DFace-Pop-Tart-Marilyn-Monroe_djpwdp.jpg")
Art.create(name: "Dream But Don’t Sleep", artist: "Blek Le Rat", year: 'Unknown Year' , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606950218/arts/Urban-Art-Blek-Le-Rat-Dream-Bu-Dont-Sleep_wbrb7z.jpg")
Art.create(name: "Homeless in Paris", artist: "Blek Le Rat", year: 'Unknown Year', image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606950286/arts/Urban-Art-Blek-Le-Rat-Homeless-In-Paris_qfcuxd.jpg")
Art.create(name: "No Name", artist: "Mr. Brainwash", year: 'Unknown Year', image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606950329/arts/urban-mr-brainwash_vhkczj.png")
Art.create(name: "Kaleidoscope", artist: "MadC", year: 2016, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606950504/arts/124876_1_m_ufhgjv.jpg")
Art.create(name: "No Name", artist: "Banksy", year: 'Unknown Year', image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606950384/arts/urban-banksy_ow331m.png")
Art.create(name: "Ironbank", artist: "Alessandro Rabatti", year: 2015, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1606950579/arts/269230_1_m_jpsfro.jpg")
Art.create(name: 'Faces 1 & 2' , artist: "Hush" , year: 2019 , image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1607383643/arts/865767_1_m_y06ikq.jpg")
Art.create(name: "90's Galore",  artist: "MadC" , year: 2019, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1607383786/arts/668742_1_m_plbc02.jpg")
Art.create(name: 'Marilyn Monroe, I' , artist: 'James Rosenquist', year: 1962, image_url: "https://res.cloudinary.com/diexi8g0j/image/upload/v1607383941/arts/James-Rosenquist.-Marilyn-Monore-I-303x395_anbpkb.jpg")



# Favorite.create(user_id: 1, art_id: 5)
# Favorite.create(user_id: 1, art_id: 6)
# Favorite.create(user_id: 1, art_id: 8)
# Favorite.create(user_id: 2, art_id: 1)

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
Video.create(name: "How to paint CREATIVE with ACRYLIC Paints BONKER BRAINS Streetart STYLE", description: "Author didn't provide description", url:"https://www.youtube.com/watch?v=E2TzDc59hzA")
Video.create(name: "Street Art Painting Demo / Layered Acrylic Graffiti Art / How-To Masking Tape Painting", description: "Abstract acrylic painting demonstration on canvas, street art graffiti style 12 x 16, using catalyst wedge, palette knife, spray paint, stencils, and brushes", url:"https://www.youtube.com/watch?v=Agvr4wQ45yk")
Video.create(name:"10 GRAFFITI Tips", description:"I decided to give you 10 basic tips for graffiti and street art. They should show you how do do graffiti or how to start with street art. I hope these advices will help you to improve your painting style ", url:"https://www.youtube.com/watch?v=ofSvAqiv0ss")
Video.create(name:"How to paint tiny STREET ART Canvas", description:"In this video I'm showing how to paint a tiny canvas with spray paint and stencils.", url:"https://www.youtube.com/watch?v=kn7i7HyZ5Cg")
Video.create(name:"No Pressure?! Painting a Mural for a Huge Company - Full Process", description: "Author didn't provide description", url:"https://www.youtube.com/watch?v=aLg2BS7xibE")
Video.create(name:"How to do 3D Street Art", description:"Here's the making of a 3-D work. This one was done for Chembur Festival. On till 15th Feb 2015.", url:"https://www.youtube.com/watch?v=SXfFhFZ6nH8")
Video.create(name:"Pop Art / Street Art Textured Relief Painting With Stencils | Beks#3", description:"A Pop Art series of paintings inspired by street art themes.", url:"https://www.youtube.com/watch?v=HCFrclT4aWk")
Video.create(name:"POP ART Acrylic PAINTING for Beginners | Step by Step", description:"Come and learn how easy it is to paint this great colorful pop art painting! Easy painting tutorial in acrylics for beginners.", url:"https://www.youtube.com/watch?v=I-KHup0-6l4")
Video.create(name:"How to paint, money style Pop Art!", description:"In this video, we're making Beverly Hills style pop art. This art style is really popular and can be found in most Los Angeles art galleries. It combines street art and Disney/Warner bros characters in high contrast colors to really pop!", url:"https://www.youtube.com/watch?v=LCgcCRjgU7c")
Video.create(name:"Artist Vlog | Painting Rihanna", description:"Hey y'all! Welcome back to my studio! In this video I'll be showing you my full process as I create this pop art portrait of Rihanna using acrylic paints on canvas. Enjoy!", url:"https://www.youtube.com/watch?v=nVctBR72VnI")
Video.create(name:"Pop Art Donut STEP-BY-STEP Painting Tutorial for Beginners | FREE Art Lesson | Painting With RED", description:"Learn how to paint this fun Pop Art Donut in this step-by-step tutorial! The perfect art project for beginner painters!", url:"https://www.youtube.com/watch?v=yLe6V_8jUMQ")
Video.create(name:"Paper Mache Pop Art Painting | Acrylic Painting Art Ideas on Canvas", description: "Author didn't provide description", url:"https://www.youtube.com/watch?v=Ugl6ZyxQINI")
Video.create(name:"HOW TO DRAW AND PAINT POP ART", description: "Author didn't provide description", url:"https://www.youtube.com/watch?v=LaRIhA0GGB8")
Video.create(name:"Pop Art Painting of a Lego / Street Art / Abstract Art | Noa", description: "Author didn't provide description", url:"https://www.youtube.com/watch?v=XI3thM8gfS0&t=1s")
Video.create(name:"Pop Art Painting Tutorial WOMAN SUNGLASSES. How to paint in acrylics step by step", description:"Come and learn how easy it is to paint this great Pop Art painting of a woman with mirror sunglasses. Easy painting tutorial in acrylics for beginners", url:"https://www.youtube.com/watch?v=cOt0nwIo5b8")
Video.create(name:"Bubble Gum Girl Pop Art on Newspaper Canvas | Acrylic Painting Tutorial", description:"Queen Bees! This week, we are taking the newspaper paper mache canvas we made and adding some super cool and fun pop art!", url:"https://www.youtube.com/watch?v=iK62WJBx4LI")
Video.create(name:"POP ART Acrylic Painting for Beginners", description:"This video shows how you can paint colorful pop art painting on canvas , also covers how to fix a mistake. This art is one of the most significant art movements of the twentieth century", url:"https://www.youtube.com/watch?v=wGdOhS5o7Jo")
Video.create(name:"New! Street Art!", description:"Bianca Burrows and Jason Collab in a mixed media street art styled piece", url:"https://www.youtube.com/watch?v=7JR6L1qLAeU")

# Favvideo.create(video_id: 1, user_id:1)
# Favvideo.create(video_id: 2, user_id:1)
# Favvideo.create(video_id: 3, user_id:2)
# Favvideo.create(video_id: 4, user_id:1)

# Photo.create(user_id: u1.id, username: u1.username, image:"https://blvcks.com/wp-content/uploads/2017/09/o4j_Hmqy2-g.jpg")
# Photo.create(user_id: u1.id, username: u2.username, image:"https://cdn-images.farfetch-contents.com/12/56/27/14/12562714_11933138_300.jpg" )
# Photo.create(user_id: u2.id, username: u3.username, image: "https://images.timberland.com/is/image/timberland/10061024-HERO?wid=720&hei=720&fit=constrain,1&qlt=85,1&op_usm=1,1,6,0")

# Like.create(user_id: u1.id, photo_id: 1)
# Like.create(user_id: u1.id, photo_id: 2)
# Like.create(user_id: u2.id, photo_id: 1)

# Note.create(user_id: 1, video_id: 1, content: 'Prepare a big piece of paper')
# Note.create(user_id: 1, video_id: 1, content: 'Cut it in shape of heart')
# Note.create(user_id: 1, video_id: 1, content: 'Paint yellow')
# Note.create(user_id: 1, video_id: 2, content: 'Boring stuff')
# Note.create(user_id: 1, video_id: 2, content: 'Min 4 quite interesting')
# Note.create(user_id: 2, video_id: 1, content: 'BBBB I know better')