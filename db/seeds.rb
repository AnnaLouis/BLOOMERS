# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#USERS

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

user4 = User.new(first_name: "Jacques", last_name: "Michel")
user4.email = "admin@lelab.fr"
user4.password = "123456"
user4.startup_admin = true
user4.bloomer_admin = false
user4.admin = false
user4.save

user5 = User.new(first_name: "Rose", last_name: "Delpèche")
user5.email = "admin@igloo.fr"
user5.password = "123456"
user5.startup_admin = true
user5.bloomer_admin = false
user5.admin = false
user5.save

user5 = User.new(first_name: "Martin", last_name: "Berton")
user5.email = "admin@derigueur.fr"
user5.password = "123456"
user5.startup_admin = true
user5.bloomer_admin = false
user5.admin = false
user5.save



# BLOOMERS

bloomer1 = Bloomer.new(name:"Look Forward by Showroomprive")
bloomer1.city = "La Plaine Saint Denis"
bloomer1.category = "Incubateur"
bloomer1.website = "lookforwardproject.com"
bloomer1.speciality = "Mode and Retail"
bloomer1.email = "alizee.wyart@gmail.com"
bloomer1.address = "1 rue des blés, ZA La Montjoie - 93 210 La Plaine Saint Denis"
bloomer1.twitter_account = "https://twitter.com/LookForwardHub"
bloomer1.date_creation = Date.new(2015, 6, 1)
bloomer1.description = "LOOK FORWARD est la plateforme de toute innovation susceptible de révolutionner le monde de la mode et du retail. Avec les startups integrees à son incubateur, LOOK FORWARD a l’ambition de bousculer la facon de distribuer, consommer et produire la mode."
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
bloomer2.save

# PHOTOS
urls2 = ["https://www.powwownow.fr/travailler-fute/wp-content/uploads/2016/07/espace-coworking-la-mutinerie.jpg",
        "http://www.mutinerie.org/wp-content/uploads/2012/02/Rue-de-meaux_plan-couleur_RDC_craft.jpg",
        "http://bureauflexible.fr/uploads/space_pictures/img_1438687605.jpg",
        "http://coworkinginitiatives.com/wp-content/uploads/2013/01/verri%C3%A8re.jpg",
        ]
bloomer2.photo_urls = urls2

bloomer3 = Bloomer.new(name:"EMLYON")
bloomer3.city = "Lyon"
bloomer3.category = "Accélérateur"
bloomer3.website = "emlyon.com"
bloomer3.speciality = "Général"
bloomer3.email = "anna@gmail.com"
bloomer3.address = "1 place Bellecour, Lyon"
bloomer3.twitter_account = "https://twitter.com/lyon"
bloomer3.date_creation = Date.new(2015, 9, 1)
bloomer3.description = "Libre ensemble"
bloomer3.user = User.find_by_email("alizee@bloomers.fr")
bloomer3.save

bloomer4 = Bloomer.new(name:"La Cantine Numérique")
bloomer4.city = "Nantes"
bloomer4.category = "Coworking"
bloomer4.website = "lacantine.org"
bloomer4.speciality = "Entrepreneuriat Social"
bloomer4.email = "alizee@gmail.com"
bloomer4.address = "21 rue Eugène Tessier, Nantes"
bloomer4.twitter_account = "https://twitter.com/nantes"
bloomer4.date_creation = Date.new(2015, 9, 1)
bloomer4.description = "Libre ensemble"
bloomer4.user = User.find_by_email("alizee@bloomers.fr")
bloomer4.save

# PHOTOS

urls1 = ["http://imageshack.com/a/img923/6113/XpMsUl.jpg",
        "http://blog.upfit-services.com/wp-content/uploads/2015/10/IMG_20151012_150511.jpg",
        "https://www.ideclik.com/wp-content/uploads/2016/01/lookforward-002.jpg",
        "http://blog.upfit-services.com/wp-content/uploads/2015/10/IMG_20151012_113324.jpg"]
bloomer1.photo_urls = urls1

urls2 = ["https://www.powwownow.fr/travailler-fute/wp-content/uploads/2016/07/espace-coworking-la-mutinerie.jpg",
        "http://www.mutinerie.org/wp-content/uploads/2012/02/Rue-de-meaux_plan-couleur_RDC_craft.jpg",
        "http://bureauflexible.fr/uploads/space_pictures/img_1438687605.jpg",
        "http://coworkinginitiatives.com/wp-content/uploads/2013/01/verri%C3%A8re.jpg",
        ]
bloomer2.photo_urls = urls2


# PROGRAM

program1 = Program.new(name:"Incubation")
program1.short_description = "1 an au coeur de Showroomprive"
program1.description = "Plus d'info online. Description blablabla."
program1.price = 0
program1.duration = "Un an"
program1.equity = false
program1.individual_coaching = "<h4>EXPERTISE</h4><p>FORFAIT 20 H avec les experts de Showroomprivé (au choix parmi les 1000 employés).</p><h4>MENTORING</h4><p>- Interne : 1 membre du board (1 rdv/mois) pour aider aux décisions managériales<br>- Externe : personnalité influente du réseau (TBC)</p>"
program1.collective_coachin = "<h4>25 ATELIERS VALUE BOOST</h4><p>1h de conférence, 1h de Q/R</p><h4>PROGRAMME ALUMNI</h4><p>: TBC</p>"
program1.ecosystem = "<p>Partage du réseau de Showroomprivé : 1,4M visiteurs uniques, 25 M clients,  1 500 marques. <br>Mise en valeur auprès des collaborateurs au travers d’une newsletter <br>Mise en contact avec Business Angels & Banques <br>Réseau de Thierry Petit </p>"
program1.advantages = "<h4>EN NATURE :</h4> <p>Services à tarifs négociés : taux avantageux chez SG, Colissimo, Service juridique, page chez SMGO</p><h4>HERBERGEMENT </h4><p>An offert : 6postes/startup Showroom<br>Shooting photo et vidéo avec mannequin</p>"
program1.selection_criterias = "<h4>TEAM DE CHOC</h4> <p>Passion, pragmatisme, envie de grandir et de prospérer</p> <h4>POTENTIEL INTERNATIONAL</h4> <p>Démontrer la scalabilité</p> <h4>ADN DIGITAL, MODE OU RETAIL</h4> <p>Ambition de révolutionner la façon de distribution, consommer et produire la mode</p> <h4>FIABILITE </h4> <p>Proof of concept</p>"
program1.bloomer = bloomer1
program1.candidature_open = Date.new(2016,11,1)
program1.candidature_close = Date.new(2016,12,31)
program1.save

# STARTUP CREATION

startup1 = Startup.new(name: "Ask Anna")
startup1.short_description = "L’app pour ne plus hésiter en cabine d’essayage"
startup1.website = "askanna.me"
startup1.twitter_account = "https://twitter.com/AskAnna_app?utm_source=nouveau%20site&utm_medium=icons&utm_campaign=icones%20RS%20twitter%20new%20site"
startup1.date_creation = Date.new(2015, 1, 1)
startup1.user = User.find_by_email("alizee@bloomers.fr")
startup1.save

# LOGO
startup1.logo_url = "http://laurenceourac.com/home/wp-content/uploads/2015/12/ANNA.jpg"

startup2 = Startup.new(name: "Le Lab")
startup2.short_description = "Des chemises uniques au monde combinant style, coupe et tissu."
startup2.website = "www.lelab.cc"
startup2.twitter_account = "https://twitter.com/LeLabShirt"
startup2.date_creation = Date.new(2014, 4, 8)
startup2.user = User.find_by_email("admin@lelab.fr")
startup2.save

# LOGO
startup2.logo_url = "http://modelab.fr/wp-content/uploads/2015/11/Logo-Lelab.png"

startup3 = Startup.new(name: "Igloo")
startup3.short_description = "Les boutiques près de chez vous"
startup3.website = "www.igloo.paris"
startup3.twitter_account = "https://twitter.com/iglooparis"
startup3.date_creation = Date.new(2015, 4, 8)
startup3.user = User.find_by_email("admin@igloo.fr")
startup3.save

# LOGO
startup3.logo_url = "http://startuponly.com/pp/146/703/698/d3acbf1247867657_400.png"

startup4 = Startup.new(name: "De Rigueur")
startup4.short_description = "Maison française du XXIe siècle"
startup4.website = "www.derigueur.fr"
startup4.twitter_account = "https://twitter.com/derigueurfr"
startup4.date_creation = Date.new(2013, 8, 10)
startup4.user = User.find_by_email("admin@derigueur.fr")
startup4.save

#LOGO
startup4.logo_url = "http://entreprendre.univ-lyon3.fr/wp-content/uploads/2015/08/logo-derigueur.png"

# BATCH

batch1 = Batch.new(name:"Promo 1")
batch1.batch_start = Date.new(2017,1,1)
batch1.batch_end = Date.new(2018,1,1)
batch1.program = program1
batch1.save

# INCUBATION

incubation1 = Incubation.new()
incubation1.startup = startup1
incubation1.batch = batch1
incubation1.save

incubation2 = Incubation.new()
incubation2.startup = startup2
incubation2.batch = batch1
incubation2.save

incubation3 = Incubation.new()
incubation3.startup = startup3
incubation3.batch = batch1
incubation3.save

incubation4 = Incubation.new()
incubation4.startup = startup4
incubation4.batch = batch1
incubation4.save

#REVIEW

review1 = Review.new(title:"Bien")
review1.description = "Trop bien"
review1.rating = 3
review1.bloomer_id = bloomer2
review1.startup_id = startup1
review1.save!

# CANDIDATURE

candidature1 = Candidature.new(status:"Pending")
candidature1.team = "Trois EMLyon et deux Wagons."
candidature1.your_problem = "En finir avec le mal-logement"
candidature1.your_solution = "Des logements par milliers"
candidature1.your_market = "1 000 000 de sans abris"
candidature1.phone_number = "0606066556"
candidature1.question_incubation = "Un mentoring de qualité"
candidature1.startup_id = startup1
candidature1.program_id = program1
candidature1.save
