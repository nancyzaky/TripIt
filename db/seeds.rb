# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Hotel.delete_all
Room.delete_all
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
hotels = Hotel.create!([{location:"7500 E Doubletree Ranch Rd, Scottsdale, AZ 85258", image:"https://phoenix.org/wp-content/uploads/2017/06/phoenician.jpg", rating:5, lat:33.674005, long:-111.858368, city:'Arizona'},{location:"Coastal Road, Trou d'Eau Douce, Mauritius", image: "https://www.travelplusstyle.com/wp-content/uploads/2016/01/sonevajani-1880.jpg", rating:4,lat:-20.24166, long:57.78411, city:"Mauritius"}, {
      location:"57 Wireless Road, Lumpini, Pathumwan, Bangkok 10330 Thailand" , image: "https://images.pexels.com/photos/1134176/pexels-photo-1134176.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", rating: 5,lat:"13.81867", long: 100.65597, city:"Bangkok"
}, {location:"85 E Wacker Dr, Chicago, IL 60601", image: "https://images.pexels.com/photos/1334605/pexels-photo-1334605.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" , rating: 5, city: "Chicago",long:"-87.731987" , lat:"41.833768" }, {image:"https://images.pexels.com/photos/7832620/pexels-photo-7832620.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", rating:5, location:"Banjar Carik, Desa Puhu, Payangan 80572 Indonesia", city:"Bali", lat:"-8.39615", long:"115.25115"}])
      # t.string :bed
      # t.boolean :breakfast
      # t.boolean :bar
      # t.boolean :ocean_view
      # t.boolean :a_c
      # t.integer :room_id
      # t.boolean :tv
      # t.boolean :fridge
      # t.boolean :hair_dryer
features = Feature.create!([{parking:true, pool:true, gym:true, hotel_id:1},{parking:true, pool:true, gym:true, hotel_id:2} ,
 {parking:true, pool:true, gym:true, hotel_id:3}, {parking:true, pool:true, gym:true, hotel_id:4}, {parking:true, pool:true, gym:true, hotel_id:5}])


rooms= Room.create!([{price:150, description:"Single Room", hotel_id:1 }, {price:250, description:"Double room", hotel_id:1}, {price:280, description:"Queen Size room", hotel_id:1}, {price:280, description:"King Size room", hotel_id:1}, {price:350, description:"Executive Suite", hotel_id:1},

{price:120, description:"Single Room", hotel_id:2 }, {price:200, description:"Double room", hotel_id:2}, {price:230, description:"Queen Size room", hotel_id:2}, {price:260, description:"King Size room", hotel_id:2}, {price:300, description:"Executive Suite", hotel_id:2},


{price:120, description:"Single Room", hotel_id:3 }, {price:200, description:"Double room", hotel_id:3}, {price:230, description:"Queen Size room", hotel_id:3}, {price:260, description:"King Size room", hotel_id:3}, {price:300, description:"Executive Suite", hotel_id:3},


{price:120, description:"Single Room", hotel_id:4 }, {price:200, description:"Double room", hotel_id:4}, {price:230, description:"Queen Size room", hotel_id:4}, {price:260, description:"King Size room", hotel_id:4}, {price:300, description:"Executive Suite", hotel_id:4},

{price:120, description:"Single Room", hotel_id:5 }, {price:200, description:"Double room", hotel_id:5}, {price:230, description:"Queen Size room", hotel_id:5}, {price:260, description:"King Size room", hotel_id:5}, {price:300, description:"Executive Suite", hotel_id:5}


])



specifics = Specific.create!([{room_id:1, bed:"Single", tv:true, fridge:true, a_c:true, hair_dryer:true, bar:false, breakfast:false, ocean_view:false}, {room_id:2, bed:"Double", tv:true, fridge:true, a_c:true, hair_dryer:true, bar:false, breakfast:false, ocean_view:false}, {room_id:3, bed:"Queen", tv:true, fridge:true, a_c:true, hair_dryer:true, bar:true, breakfast:true, ocean_view:false}, {room_id:4, bed:"King", tv:true, fridge:true, a_c:true, hair_dryer:true, bar:false, breakfast:true, ocean_view:false},{room_id:5, bed:"Executive Suite", tv:true, fridge:false, a_c:true, hair_dryer:true, bar:true, breakfast:true, ocean_view:false},


{room_id:6, bed:"Single", tv:false, fridge:false, a_c:true, hair_dryer:true, bar:false, breakfast:false, ocean_view:false}, {room_id:7, bed:"Double", tv:true, fridge:true, a_c:true, hair_dryer:true, bar:true, breakfast:true, ocean_view:true}, {room_id:8, bed:"Queen", tv:true, fridge:false, a_c:true, hair_dryer:true, bar:true, breakfast:true, ocean_view:true}, {room_id:9, bed:"King", tv:true, fridge:true, a_c:true, hair_dryer:true, bar:false, breakfast:true, ocean_view:true},{room_id:10, bed:"Executive Suite", tv:true, fridge:false, a_c:true, hair_dryer:true, bar:true, breakfast:true, ocean_view:true},



{room_id:11, bed:"Single", tv:true, fridge:false, a_c:true, hair_dryer:true, bar:true, breakfast:false, ocean_view:false}, {room_id:12, bed:"Double", tv:true, fridge:true, a_c:true, hair_dryer:true, bar:false, breakfast:false, ocean_view:true}, {room_id:13, bed:"Queen", tv:true, fridge:true, a_c:true, hair_dryer:true, bar:true, breakfast:true, ocean_view:true}, {room_id:14, bed:"King", tv:true, fridge:false, a_c:true, hair_dryer:true, bar:false, breakfast:true, ocean_view:true},{room_id:15, bed:"Executive Suite", tv:true, fridge:true, a_c:true, hair_dryer:true, bar:true, breakfast:true, ocean_view:true},


{room_id:16, bed:"Single", tv:true, fridge:true, a_c:true, hair_dryer:true, bar:false, breakfast:false, ocean_view:false}, {room_id:17, bed:"Double", tv:true, fridge:true, a_c:true, hair_dryer:true, bar:true, breakfast:false, ocean_view:false}, {room_id:18, bed:"Queen", tv:true, fridge:true, a_c:true, hair_dryer:true, bar:false, breakfast:true, ocean_view:false}, {room_id:19, bed:"King", tv:true, fridge:true, a_c:true, hair_dryer:true, bar:false, breakfast:true, ocean_view:false},{room_id:20, bed:"Executive Suite", tv:true, fridge:false, a_c:true, hair_dryer:true, bar:true, breakfast:true, ocean_view:false},


{room_id:21, bed:"Single", tv:true, fridge:true, a_c:true, hair_dryer:true, bar:true, breakfast:false, ocean_view:true}, {room_id:22, bed:"Double", tv:true, fridge:true, a_c:true, hair_dryer:true, bar:true, breakfast:false, ocean_view:true}, {room_id:23, bed:"Queen", tv:true, fridge:true, a_c:true, hair_dryer:true, bar:true, breakfast:true, ocean_view:true}, {room_id:24, bed:"King", tv:true, fridge:true, a_c:true, hair_dryer:true, bar:false, breakfast:true, ocean_view:true},{room_id:25, bed:"Executive Suite", tv:true, fridge:false, a_c:true, hair_dryer:true, bar:true, breakfast:true, ocean_view:true}

])


 views = View.create!([{hotel_id:2, url:"https://images.pexels.com/photos/4321802/pexels-photo-4321802.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"},{hotel_id:2, url:"https://images.pexels.com/photos/38238/maldives-ile-beach-sun-38238.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {hotel_id:2, url:"https://images.pexels.com/photos/2631613/pexels-photo-2631613.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"},

 {hotel_id:1,url: "https://www.mydesignweek.eu/wp-content/uploads/2018/12/7-Luxury-Hotel-Lobby-That-You-Need-To-See-5.jpg"}, {hotel_id:1,url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/d3/01/92/hyatt-regency-scottsdale.jpg?w=900&h=-1&s=1"}, {hotel_id:1,url:"https://media.istockphoto.com/photos/3d-render-of-commercial-building-interior-and-reception-picture-id909589966?k=20&m=909589966&s=612x612&w=0&h=G7SxU6eRbGTl9Anh5vKdUlJEOHAYIaMdQBlkaXujcis="},

 {hotel_id: 3, url: "https://images.pexels.com/photos/6758532/pexels-photo-6758532.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"},  {hotel_id: 3, url: "https://images.pexels.com/photos/3155666/pexels-photo-3155666.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"},  {hotel_id: 3, url: "https://images.pexels.com/photos/221457/pexels-photo-221457.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"},  {hotel_id: 3, url: "https://images.pexels.com/photos/5029310/pexels-photo-5029310.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"}, {hotel_id: 4, url: "https://images.pexels.com/photos/2507010/pexels-photo-2507010.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=700&w=1100"}, {hotel_id:3, url:"https://images.pexels.com/photos/2373201/pexels-photo-2373201.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {hotel_id:4, url:"https://images.pexels.com/photos/3209049/pexels-photo-3209049.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500" }, {hotel_id:4, url:"https://images.pexels.com/photos/3316923/pexels-photo-3316923.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {hotel_id:4, url:"https://images.pexels.com/photos/1320686/pexels-photo-1320686.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"} ,{hotel_id:4, url:"https://images.pexels.com/photos/693895/pexels-photo-693895.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {hotel_id:4, url:"https://images.pexels.com/photos/2506988/pexels-photo-2506988.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"},
 {hotel_id:5, url:"https://images.pexels.com/photos/1179156/pexels-photo-1179156.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {hotel_id:5, url:"https://images.pexels.com/photos/1268871/pexels-photo-1268871.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"},

{hotel_id:5, url:"https://images.pexels.com/photos/1287460/pexels-photo-1287460.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}
])



  pictures = Picture.create!([{url:"https://images.pexels.com/photos/775219/pexels-photo-775219.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", room_id:1}, {url:"https://images.pexels.com/photos/6186825/pexels-photo-6186825.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", room_id:1}, {url:"https://images.pexels.com/photos/3315291/pexels-photo-3315291.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", room_id:1},{url:"https://images.pexels.com/photos/2598638/pexels-photo-2598638.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",room_id:2},{url:"https://images.pexels.com/photos/2507016/pexels-photo-2507016.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", room_id:2, url:"https://images.pexels.com/photos/6636248/pexels-photo-6636248.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", room_id:2}, {url:"https://images.pexels.com/photos/6585757/pexels-photo-6585757.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", room_id:3}, {url:"https://images.pexels.com/photos/2507016/pexels-photo-2507016.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", room_id:3},

{url: "https://images.pexels.com/photos/6284232/pexels-photo-6284232.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", room_id:4}, {url:"https://images.pexels.com/photos/1454804/pexels-photo-1454804.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", room_id:4}, {url:"https://images.pexels.com/photos/6434634/pexels-photo-6434634.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",room_id:5}, {url:"https://images.pexels.com/photos/6315803/pexels-photo-6315803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260", room_id:5}, {url:"https://images.pexels.com/photos/3940733/pexels-photo-3940733.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500", room_id:6}, {room_id:6 , url:"https://images.pexels.com/photos/6301176/pexels-photo-6301176.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:7, url:"https://images.pexels.com/photos/271619/pexels-photo-271619.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:7, url:"https://images.pexels.com/photos/342800/pexels-photo-342800.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:8, url:"https://images.pexels.com/photos/237371/pexels-photo-237371.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:8, url:"https://images.pexels.com/photos/1358912/pexels-photo-1358912.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:9, url:"https://images.pexels.com/photos/262048/pexels-photo-262048.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:9, url:"https://images.pexels.com/photos/6315803/pexels-photo-6315803.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:10, url:"https://images.pexels.com/photos/6466490/pexels-photo-6466490.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:10, url:"https://images.pexels.com/photos/6585755/pexels-photo-6585755.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:11, url:"https://images.pexels.com/photos/6782567/pexels-photo-6782567.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:11, url:"https://images.pexels.com/photos/6315803/pexels-photo-6315803.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:12, url:"https://images.pexels.com/photos/6782473/pexels-photo-6782473.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:12, url:"https://images.pexels.com/photos/6933772/pexels-photo-6933772.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:13, url:"https://images.pexels.com/photos/6587825/pexels-photo-6587825.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"},{room_id:13, url:"https://images.pexels.com/photos/2134224/pexels-photo-2134224.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:14, url:"https://images.pexels.com/photos/6588581/pexels-photo-6588581.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:14, url: "https://images.pexels.com/photos/6933766/pexels-photo-6933766.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:15, url:"https://images.pexels.com/photos/6588582/pexels-photo-6588582.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:15, url: "https://images.pexels.com/photos/6538889/pexels-photo-6538889.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:16, url:"https://images.pexels.com/photos/7061675/pexels-photo-7061675.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:16, url: "https://images.pexels.com/photos/6585754/pexels-photo-6585754.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:17, url:"https://images.pexels.com/photos/6899434/pexels-photo-6899434.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:17, url:"https://images.pexels.com/photos/6585603/pexels-photo-6585603.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:18, url:"https://images.pexels.com/photos/6585612/pexels-photo-6585612.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:18, url:"https://images.pexels.com/photos/7147283/pexels-photo-7147283.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:19, url:"https://images.pexels.com/photos/6480201/pexels-photo-6480201.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:19, url:"https://images.pexels.com/photos/6032425/pexels-photo-6032425.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:20, url:"https://images.pexels.com/photos/6587902/pexels-photo-6587902.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:20, url:"https://images.pexels.com/photos/6899450/pexels-photo-6899450.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:21, url:"https://images.pexels.com/photos/7061673/pexels-photo-7061673.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:21, url:"https://images.pexels.com/photos/7031876/pexels-photo-7031876.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:22, url:"https://images.pexels.com/photos/7174399/pexels-photo-7174399.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:22, url:"https://images.pexels.com/photos/7031883/pexels-photo-7031883.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:23, url:"https://images.pexels.com/photos/5379219/pexels-photo-5379219.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:23, url:"https://images.pexels.com/photos/6585742/pexels-photo-6585742.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:24, url:"https://images.pexels.com/photos/1457845/pexels-photo-1457845.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:24, url:"https://images.pexels.com/photos/7031216/pexels-photo-7031216.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:25, url:"https://images.pexels.com/photos/7061089/pexels-photo-7061089.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}, {room_id:25, url:"https://images.pexels.com/photos/6315806/pexels-photo-6315806.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}])


  attractions = Attraction.create([{hotel_id:2, timezone:"Indian/Mauritius", name:"Papa's Dream Parasailing & Paragliding", distance:"0.19031780303723558", photo:"https://media-cdn.tripadvisor.com/media/photo-m/1280/13/e9/c7/63/aqua-love.jpg", location: "Trou d'eau Douce", lat: "-20.239809", long:"57.78628", description:"Boat Tours & Water Sports, Tours, Outdoor Activities and More."}, {hotel_id:2, timezone:"Indian/Mauritius", name:"Self-Guided Tours & Rentals", distance:"2.582910780918802", photo:"https://media-cdn.tripadvisor.com/media/photo-m/1280/18/e1/14/f1/caption.jpg", location: "Trou d'eau Douce, Coastal Road", long:"57.80241", lat: "-20.27482", description:"Please Contact the hotel for more details and bookings"},

  {hotel_id:2, photo:'https://media-cdn.tripadvisor.com/media/photo-w/08/60/84/b6/ile-aux-cerfs-golf-club.jpg', name:"Ile aux Cerfs Golf Club Aerial View", location:"Trou d'eau Douce", distance:"2.5432606940811326", timezone:"Indian/Mauritius", long:"57.799866", lat:"-20.275326", description:"From immaculate grounds to pristine golf courses, there’s plenty of space to enjoy a bike ride, tennis, or golf."},

  {hotel_id:2, photo:"https://media-cdn.tripadvisor.com/media/photo-m/1280/17/b4/19/69/agentura.jpg", name:"Vicky Boats", location:"La Pelouse,Trou d'Eau Douce, Trou d'eau Douce, Mauritius", distance:"0.4091982070790293", timezone:"Indian/Mauritius", long:"57.78963", lat:"-20.2388", description:"Our watchword at Storm Boats is to satisfy the requests of our customers and thus lead them to discover the aquatic world through our eyes."},

 {hotel_id:2, photo:"https://media-cdn.tripadvisor.com/media/photo-o/10/ea/40/9c/view-of-the-sega-bar.jpg", name:"View Of The Sega Bar", location:"Trou d'eau Douce, Mauritius, Shangri-La's Le Touessrok Resort and Spa", distance:"1.1258052357985269", timezone:"Indian/Mauritius", long:"57.79748", lat:"-20.25203", description:"View of The Sega Bar across the lagoon"},

 {hotel_id: 1, photo:"https://media-cdn.tripadvisor.com/media/photo-o/09/c6/d7/d0/pinnacle-peak-general.jpg", name:"Gift & Specialty Shops", location:"7607 W Mcdowell Rd, Scottsdale.", distance:"1.5",timezone:"America/Phoenix", long: "-111.85656" ,lat:"33.68765" , description:"Find gifts and souvenirs from a variety of amazing shops" },
 {hotel_id: 1, photo:"https://media-cdn.tripadvisor.com/media/photo-m/1280/15/7c/81/8d/sonoran-landscape-along.jpg", name:"McDowell Sonoran Preserve", location:"18333 N. Thompson Peak Pkwy, Scottsdale.", distance:"2.84",timezone:"America/Phoenix", long:"-111.85987" ,lat:"33.64848" , description:"The Scottsdale McDowell Sonoran Preserve is a large, permanently protected, sustainable desert habitat that includes an interconnected network of non-motorized, multi-use trails (hike/bike/horse) accessed from multiple trailhead locations." },

 {hotel_id: 1, photo:"https://media-cdn.tripadvisor.com/media/photo-m/1280/1a/5a/7b/c8/more-decorated-statues.jpg", name:"Market Street At DC Ranch", location:"20645 N Pima Rd, Scottsdale", distance:"3.10",timezone:"America/Phoenix", long:"-111.89153" ,lat:"33.67805" , description:"Market Street is a mixed-use neighborhood center featuring office, retail and entertainment within DC Ranch. Originally developed by DMB and designed as a rustic, small-town center, Market Street features a main street theme incorporating 15 architecturally unique buildings and a variety of distinctive restaurants, shops, office and neighborhood conveniences all intimately tied together." },
 {hotel_id:1, photo:"https://media-cdn.tripadvisor.com/media/photo-m/1280/15/f4/d2/40/pedego-electric-bikes.jpg", name:"Gear Rentals", timezone:"America/Phoenix", long:"-111.86136" , lat:"33.642334", location:"15029 N Thompson Peak Pkwy, Scottsdale", distance:"3.5", description:"We are the best place to go for electric bicycles in North Scottsdale. Whether you want to buy or rent one of our amazing electric bikes, we are excited to serve you. We are not your average bike shop. We treat our customers like friends and want to ensure they are completely happy with their experience. That is why we offer free test rides for our bicycles. We are also a full bicycle repair shop, no matter what kind of bike you have. If you are in Scottsdale or the surrounding area, stop in and see us today!"}
])