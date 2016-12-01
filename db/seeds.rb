# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# LES TROIS STYLES D'USERS

user1 = User.new(first_name: "Alizée", last_name:"Wyart")
user1.email = "alizee@bloomers.fr"
user1.password = "123456"
user1.admin = false
user1.startup_admin = true
user1.bloomer_admin = false
user1.save

user2 = User.new(first_name: "Anna", last_name:"Louis")
user2.email = "anna@bloomers.fr"
user2.password = "123456"
user2.startup_admin = false
user2.bloomer_admin = true
user2.admin = false
user2.save

user3 = User.new(first_name: "Bloom", last_name: "Her")
user3.email = "hello@bloomers.fr"
user3.password = "123456"
user3.startup_admin = true
user3.bloomer_admin = true
user3.admin = true
user3.save

# BLOOMER CREATION

bloomer1 = Bloomer.new(name:"Look Forward by Showroomprive")
bloomer1.city = "La Plaine Saint Denis"
bloomer1.category = "Incubateur"
bloomer1.website = "lookforwardproject.com"
bloomer1.speciality = "mode and retail"
bloomer1.email = "alizee.wyart@gmail.com"
bloomer1.address = "1 rue des blés, ZA La Montjoie - 93 210 La Plaine Saint Denis"
bloomer1.twitter_account = "https://twitter.com/LookForwardHub"
bloomer1.date_creation = Date.new(2015, 6, 1)
bloomer1.description = "LOOK FORWARD est la plateforme de toute innovation susceptible de revolutionner le monde de la mode et du retail. Avec les startups integrees à son incubateur, LOOK FORWARD a l’ambition de bousculer la facon de distribuer, consommer et produire la mode."
bloomer1.user = User.find_by_email("anna@bloomers.fr")
bloomer1.save

# PHOTOS
urls1 = ["http://imageshack.com/a/img923/6113/XpMsUl.jpg",
        "http://blog.upfit-services.com/wp-content/uploads/2015/10/IMG_20151012_150511.jpg",
        "https://www.ideclik.com/wp-content/uploads/2016/01/lookforward-002.jpg",
        "http://blog.upfit-services.com/wp-content/uploads/2015/10/IMG_20151012_113324.jpg"]
bloomer1.photo_urls = urls1


bloomer2 = Bloomer.new(name:"La Mutinerie")
bloomer2.city = "Paris"
bloomer2.category = "Coworking"
bloomer2.website = "lamutinerie.org"
bloomer2.speciality = "cowork"
bloomer2.email = "annalouis2@gmail.com"
bloomer2.address = "16 Villa Gaudelet, Paris"
bloomer2.twitter_account = "https://twitter.com/mutineries"
bloomer2.date_creation = Date.new(2015, 9, 1)
bloomer2.description = "Libre ensemble"
bloomer2.user = User.find_by_email("anna@bloomers.fr")
bloomer2.save!
# PHOTOS
urls2 = ["https://www.powwownow.fr/travailler-fute/wp-content/uploads/2016/07/espace-coworking-la-mutinerie.jpg",
        "http://www.mutinerie.org/wp-content/uploads/2012/02/Rue-de-meaux_plan-couleur_RDC_craft.jpg",
        "http://bureauflexible.fr/uploads/space_pictures/img_1438687605.jpg",
        "http://coworkinginitiatives.com/wp-content/uploads/2013/01/verri%C3%A8re.jpg",
        ]
bloomer2.photo_urls = urls2

# STARTUP CREATION

startup1 = Startup.new(name: "Ask Anna")
startup1.short_description = "L’app pour ne plus hésiter en cabine d’essayage"
startup1.website = "askanna.me"
startup1.twitter_account = "https://twitter.com/AskAnna_app?utm_source=nouveau%20site&utm_medium=icons&utm_campaign=icones%20RS%20twitter%20new%20site"
startup1.date_creation = Date.new(2015, 1, 1)
startup1.user = User.find_by_email("alizee@bloomers.fr")
startup1.save

startup2 = Startup.new(name: "Le Lab")
startup2.short_description = "Des chemises uniques au monde combinant style, coupe et tissu."
startup2.website = "www.lelab.cc"
startup2.twitter_account = "https://twitter.com/LeLabShirt"
startup2.date_creation = Date.new(2014, 4, 8)
startup2.user = User.find_by_email("lelab@test.fr")
startup2.save

startup3 = Startup.new(name: "Igloo")
startup3.short_description = "Les boutiques près de chez vous"
startup3.website = "www.igloo.paris"
startup3.twitter_account = "https://twitter.com/iglooparis"
startup3.date_creation = Date.new(2015, 4, 8)
startup3.user = User.find_by_email("igloo@test.fr")
startup3.save

startup4 = Startup.new(name: "De Rigueur")
startup4.short_description = "Maison française du XXIe siècle"
startup4.website = "www.derigueur.fr"
startup4.twitter_account = "https://twitter.com/derigueurfr"
startup4.date_creation = Date.new(2013, 8, 10)
startup4.user = User.find_by_email("igloo@test.fr")
startup4.save

# # PROGRAM

# program1 = Program.new(name:"Program 1")
# program1.short_description = "La Plaine Saint Denis"
# program1.price = 0
# program1.duration = "Un an"
# program1.equity = false
# program1.bloomer = bloomer1
# program1.save!

# BATCH

batch1 = Batch.new(name:"Promo 1")
batch1.batch_start = Date.new(2015,1,1)
batch1.batch_end = Date.new(2016,1,1)
batch1.program = program1
batch1.startup = startup1
batch1.save!

# CANDIDATURE

# candidature1 = Candidature.new(status:"Pending")
# candidature1.start_date = Date.new(2016,2,2)
# candidature1.end_date = Date.new(2016,12,12)
# candidature1.preselection_date = Date.new(2016,11,11)
# candidature1.startup_id = startup1
# candidature1.program_id = program1
# candidature1.save!

# REVIEW

review1 = Review.new(title:"Bien")
review1.description = "Trop bien"
review1.rating = 3
review1.bloomer_id = bloomer2
review1.startup_id = startup1
review1.save!
