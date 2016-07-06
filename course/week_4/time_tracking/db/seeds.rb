# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


projectA = Project.create(name: "Ironhack", description: "Coding bootcamp")
projectB = Project.create(name: "T Bell", description: "Fourth meal slogan")
projectC = Project.create(name:'Metro Mover', description:'Free Transportation campaign')
projectD = Project.create(name:'The Everygirl', description:'Amazing blog work')
projectE = Project.create(name:'Interior Define', description:'Space/Furniture planning')
projectF = Project.create(name:'Sesame Street', description:'Continuing Morning Programs PBS')
projectG = Project.create(name:'Publix', description:'New sub varieties release')
projectH = Project.create(name:'State of Florida', description:'End Rick Scott movement')
projectI = Project.create(name:'Neighborhood Watch', description:'Brickell Chase Homeowners work')
projectJ = Project.create(name:'Building', description:'Building.Co events')
projectK = Project.create(name:'Blackbird', description:'Happy Hour advertising')
projectL = Project.create(name:'Starlite East Motel', description:'Image revamp')

entryA = TimeEntry.create(project_id: projectB.id, hours: 1, minutes: 30, comments: "Happily taste tested", date: Time.now)
entryB = TimeEntry.create(project_id: projectI.id, hours: 0, minutes: 45, comments: "Watched out for bad guys", date: Time.now)
entryC = TimeEntry.create(project_id: projectF.id, hours: 2, minutes: 3, comments: "Played the letter I", date: Time.now)
entryD = TimeEntry.create(project_id: projectG.id, hours: 7, minutes: 20, comments: "Client research", date: Time.now)