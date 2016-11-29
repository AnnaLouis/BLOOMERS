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

# STARTUP CREATION

startup1 = Startup.new(name: "Ask Anna")
startup1.short_description = "L’app pour ne plus hésiter en cabine d’essayage"
startup1.website = "askanna.me"
startup1.twitter_account = "https://twitter.com/AskAnna_app?utm_source=nouveau%20site&utm_medium=icons&utm_campaign=icones%20RS%20twitter%20new%20site"
startup1.date_creation = Date.new(2015, 1, 1)
startup1.user = User.find_by_email("alizee@bloomers.fr")
startup1.save

# BLOOMER CREATION

bloomer1 = Bloomer.new(name:"Look Forward by Showroomprive")
bloomer1.city = "La Plaine Saint Denis"
bloomer1.country = "France"
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

bloomer2 = Bloomer.new(name:"La Mutinerie")
bloomer2.city = "Paris"
bloomer2.country = "France"
bloomer2.category = "Coworking"
bloomer2.website = "lamutinerie.org"
bloomer2.speciality = "cowork"
bloomer2.email = "annalouis2@gmail.com"
bloomer2.address = "16 Villa Gaudelet, Paris"
bloomer2.twitter_account = "https://twitter.com/mutineries"
bloomer2.date_creation = Date.new(2015, 9, 1)
bloomer2.description = "Libre ensemble"
bloomer2.user = User.find_by_email("anna@bloomers.fr")
bloomer2.save

# PROGRAM

# program1 = Program.new(name:"Program 1")
# program1.short_description = "La Plaine Saint Denis"
# program1.price = 0
# program1.duration = "Un an"
# program1.equity = false
# program1.bloomer = bloomer1
# program1.save!

# BATCH
# batch1 = Batch.new(name:"Promo 1")
# batch1.batch_start = Date.new(2015,1,1)
# batch1.batch_end = Date.new(2016,1,1)
# batch1.program = program1
# batch1.startup = startup1
# batch1.save!

