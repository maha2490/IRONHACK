# db/seeds.rb


concertA = Concert.create(artist: "Fleetwood Mac", venue: "American Airlines Arena", 
						  city_state: "Miami, FL", price: 85, date: Time.now + 2.months, 
						  description: "The legendary band Fleetwood Mac brings its magic to the Magic City" )
concertB = Concert.create(artist: "Jose Gonzales", venue: "Sound Vibe Lounge" , 
						  city_state: "New York, NY" , price: 30 , date: Time.now + 3.weeks, 
						  description: "Easy singer-songwriter, Gonzales is fresh off his European tour and plays again in the States." )
concertC = Concert.create(artist: "Brothers Osborne" , venue: "The Electric Cowboy", 
						  city_state: "Knoxville, TN", price: 45, date: Time.now + 3.months, 
						  description: "Brother band plays a rockin set for some afterhours grooves." )
concertD = Concert.create(artist: "Blake Shelton", venue: "Appalachain Fairgrounds", 
							city_state: "Bristol, TN", price: 50, date: Time.now + 2.weeks, 
							description: "Appalachain Fair kicks off their concert series with headliner Blake Shelton")
concertE = Concert.create(artist: "Spice Girls", venue: "Madison Square Garden", 
							city_state: "New York, NY", price: 107, date: Time.now - 2.weeks, 
							description: "Colors of the world, spice up your life")