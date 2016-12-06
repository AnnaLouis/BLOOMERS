# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#USERS
Incubation.destroy_all
Review.destroy_all
Batch.destroy_all
Candidature.destroy_all
Startup.destroy_all
Program.destroy_all
Bloomer.destroy_all
User.destroy_all

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

user6 = User.new(first_name: "Alizée", last_name: "Biscornet")
user6.email = "admin@sensecube.fr"
user6.password = "123456"
user6.startup_admin = true
user6.bloomer_admin = false
user6.admin = false
user6.save

user7 = User.new(first_name: "Hillare", last_name: "Clinton")
user7.email = "admin@comptoir.fr"
user7.password = "123456"
user7.startup_admin = true
user7.bloomer_admin = false
user7.admin = false
user7.save

user8 = User.new(first_name: "Barakc", last_name: "Obama")
user8.email = "admin@labo.fr"
user8.password = "123456"
user8.startup_admin = true
user8.bloomer_admin = false
user8.admin = false
user8.save


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
urls1 = ["http://imageshack.com/a/img923/6113/XpMsUl.jpg",
        "http://blog.upfit-services.com/wp-content/uploads/2015/10/IMG_20151012_150511.jpg",
        "https://www.ideclik.com/wp-content/uploads/2016/01/lookforward-002.jpg",
        "http://blog.upfit-services.com/wp-content/uploads/2015/10/IMG_20151012_113324.jpg"]
bloomer1.photo_urls = urls1
bloomer1.logo_url = "http://www.alloweb.org/wp-content/uploads/2016/10/incubateur_look_forward_showroomprive-1-730x250.jpg"
bloomer1.save

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
bloomer2.user = User.find_by_email("mutinerie@bloomers.fr")
bloomer2.save
urls2 = ["https://www.powwownow.fr/travailler-fute/wp-content/uploads/2016/07/espace-coworking-la-mutinerie.jpg",
        "http://www.mutinerie.org/wp-content/uploads/2012/02/Rue-de-meaux_plan-couleur_RDC_craft.jpg",
        "http://bureauflexible.fr/uploads/space_pictures/img_1438687605.jpg",
        "http://coworkinginitiatives.com/wp-content/uploads/2013/01/verri%C3%A8re.jpg",
        ]
bloomer2.photo_urls = urls2
bloomer2.logo_url = "http://www.mutinerie.org/wp-content/uploads/2016/02/pirate_mono_logo-01.png"

bloomer3 = Bloomer.new(name:"EMLYON")
bloomer3.city = "Lyon"
bloomer3.category = "Incubateur"
bloomer3.website = "http://incub.em-lyon.com/"
bloomer3.speciality = "Académique"
bloomer3.email = "emlyon@accelerateur.com"
bloomer3.address = "15 Boulevard Diderot, 75012 Paris, France"
bloomer3.twitter_account = "https://twitter.com/EMLYONIncub"
bloomer3.date_creation = Date.new(2015, 9, 1)
bloomer3.description = "Libre ensemble"
bloomer3.user = User.find_by_email("emlyon@bloomers.fr")
bloomer3.save
bloomer3.photo_urls = ["http://static.latribune.fr/full_width/570870/emlyon-paris.jpg",
        "http://www.lepoint.fr/images/2016/02/14/2965574lpw-2965625-article-jpg_3372265.jpg"]
bloomer3.logo_url = "http://incub.em-lyon.com/wp-content/uploads/2016/07/retinalogo.png"


bloomer4 = Bloomer.new(name:"La Cantine Numérique")
bloomer4.city = "Nantes"
bloomer4.category = "Coworking"
bloomer4.website = "lacantine.org"
bloomer4.speciality = "Entrepreneuriat Social"
bloomer4.email = "cantinenumérique@bloomers.fr"
bloomer4.address = "21 rue Eugène Tessier, Nantes, France"
bloomer4.twitter_account = "https://twitter.com/nantes"
bloomer4.date_creation = Date.new(2015, 9, 1)
bloomer4.description = "Libre ensemble"
bloomer4.user = User.find_by_email("cantinenumérique@bloomers.fr")
bloomer4.save

bloomer5 = Bloomer.new(name: "SenseCube")
bloomer5.city = "Paris"
bloomer5.category = "Accélérateur"
bloomer5.website = "http://paris.sensecube.cc/accueil"
bloomer5.speciality = "Social"
bloomer5.email = "sensecube@gmaiL.com"
bloomer5.address = "11, rue Biscornet, 75012 Paris, France"
bloomer5.twitter_account = "https://twitter.com/"
bloomer5.date_creation = Date.new(2015, 10, 21)
bloomer5.description = "Aider les citoyens à se lancer dans l'entrepreneuriat et l'innovation sociale ne donnait de l'ampleur à leur action. "
bloomer5.user = User.find_by_email("admin@sensecube.fr")
bloomer5.save
bloomer5.logo_url = "http://paris.sensecube.cc/wp-content/uploads/sites/3/cropped-Logo-SenseCube-new.png"
bloomer5.photo_urls = ["http://mystartup.paris.fr/wp-content/uploads/2014/03/SenseCube-PauseDej.jpg",
        "http://www.makery.info/wp-content/uploads/2015/05/SenseCube-Ent%C3%AAte-2-600x400.jpg",
        "http://www.noise-laville.fr/wp-content/uploads/2015/02/13653_10153125628363793_7151976402449239440_n.jpg",
        "https://www.maddyness.com/wp-content/uploads/2015/09/sensecube-960x540.jpg"]

bloomer6 = Bloomer.new(name: "Le comptoir de l'innovation")
bloomer6.city = "Montreuil"
bloomer6.category = "Accélérateur"
bloomer6.website = "http://www.le-comptoir.co"
bloomer6.speciality = "Entrepreneuriat social et durable"
bloomer6.email = "hello@comptoir.bloom"
bloomer6.address = "104, Avenue de la Résistance, Atrium, 93100 Montreuil, France"
bloomer6.twitter_account = "https://twitter.com/LeComptoir_"
bloomer6.date_creation = Date.new(2010, 1, 1)
bloomer6.description = "Fondé par Nicolas Hazard (HEC Paris), vice-président du groupe SOS, le Comptoir de l'innovation a été créé dans le but de construire un Made in France Social. Comme l'emploi est un enjeu majeur dans une société, la création de valeur en stimulant l'activité économique et en soutenant la création d'emplois."
bloomer6.user = User.find_by_email("admin@comptoir.fr")
bloomer6.save
bloomer6.logo_url = "https://pbs.twimg.com/profile_images/760773279800066048/zhiDa_zc.jpg"
bloomer6.photo_urls = ["http://www.groupe-sos.org/media/img/actus/400/0/ateliers_dialogue.jpg",
        "http://blogs.economie.gouv.fr/les-cafes-economiques-de-bercy/wp-content/uploads/2016/05/LeComptoir_pingpong.png",
        "http://www.startup-story.fr/media/k2/items/cache/b48f2c03bbd159814922841bfb3fe7d7_S.jpg"]


bloomer7 = Bloomer.new(name: "Le Labo de l'Edition")
bloomer7.city = "Paris"
bloomer7.category = "Incubateur"
bloomer7.website = "http://labodeledition.com"
bloomer7.speciality = "Edition, Media, Industrie Créative"
bloomer7.email = "hello@labo.bloom"
bloomer7.address = "2, rue Saint Médard, 75005 Paris, France"
bloomer7.twitter_account = "https://twitter.com/labodeledition"
bloomer7.date_creation = Date.new(2011, 12, 1)
bloomer7.description = "Le labo de l'édition appartient au groupe Paris & Co. Il désire soutenir les startups et les accompagner dans le secteur des médias, de l'édition et des industries créatives afin de les relier aux acteurs du secteur traditionnel dans l'adaptation aux enjeux du numérique"
bloomer7.user = User.find_by_email("admin@labo.fr")
bloomer7.save
bloomer7.logo_url = "https://pbs.twimg.com/profile_images/796025810088038400/PL5OXWV6.jpg"
bloomer7.photo_urls = ["http://www.optionstartup.paris/wp-content/uploads/2015/09/5555-e1441543450778.jpg",
        "http://www.digitalbusinessnews.com/wp-content/uploads/2015/12/labo-edition-1-624x387.jpg",
        "http://www.ecole-estienne.paris/sites/ecole-estienne.paris/files/pictures/Evenementiel/Expo/Expolaboedition2.jpg",
        "http://www.optionstartup.paris/wp-content/uploads/2015/09/IMG_0232-e1441543419732.jpg",
        "http://www.eworky.com/Users/offer/2012-04-03_02-13-49-3236.jpg"]


# PROGRAM SHOWROOMPRIVE

program1 = Program.new(name:"Programme 1")
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

# STARTUPS DE SHOWROOMPRIVE

startup1 = Startup.new(name: "Ask Anna")
startup1.short_description = "L’app pour ne plus hésiter en cabine d’essayage"
startup1.website = "askanna.me"
startup1.twitter_account = "https://twitter.com/AskAnna_app?utm_source=nouveau%20site&utm_medium=icons&utm_campaign=icones%20RS%20twitter%20new%20site"
startup1.date_creation = Date.new(2015, 1, 1)
startup1.user = User.find_by_email("alizee@bloomers.fr")
startup1.save
startup1.logo_url = "http://laurenceourac.com/home/wp-content/uploads/2015/12/ANNA.jpg"

startup2 = Startup.new(name: "Le Lab")
startup2.short_description = "Des chemises uniques au monde combinant style, coupe et tissu."
startup2.website = "www.lelab.cc"
startup2.twitter_account = "https://twitter.com/LeLabShirt"
startup2.date_creation = Date.new(2014, 4, 8)
startup2.user = User.find_by_email("admin@lelab.fr")
startup2.team = "Trois EMLyon et deux Wagons."
startup2.your_problem = "En finir avec le mal-logement"
startup2.your_solution = "Des logements par milliers"
startup2.your_market = "1 000 000 de sans abris"
startup2.phone_number = "0606066556"
startup2.save
startup2.logo_url = "http://modelab.fr/wp-content/uploads/2015/11/Logo-Lelab.png"

startup3 = Startup.new(name: "Igloo")
startup3.short_description = "Les boutiques près de chez vous"
startup3.website = "www.igloo.paris"
startup3.twitter_account = "https://twitter.com/iglooparis"
startup3.date_creation = Date.new(2015, 4, 8)
startup3.user = User.find_by_email("admin@igloo.fr")
startup3.save
startup3.logo_url = "http://startuponly.com/pp/146/703/698/d3acbf1247867657_400.png"


startup4 = Startup.new(name: "De Rigeur")
startup4.short_description = "Maison française du XXIe siècle"
startup4.website = "www.derigueur.fr"
startup4.twitter_account = "https://twitter.com/derigueurfr"
startup4.date_creation = Date.new(2013, 8, 10)
startup4.user = User.find_by_email("admin@derigueur.fr")
startup4.save
startup4.logo_url = "http://entreprendre.univ-lyon3.fr/wp-content/uploads/2015/08/logo-derigueur.png"

startup5 = Startup.new(name: "Zipline")
startup5.short_description = "The Future of Healthcare is Out for Delivery"
startup5.website = "http://flyzipline.com/product/"
startup5.twitter_account = "https://twitter.com/zipline"
startup5.date_creation = Date.new(2013, 8, 8)
startup5.user = User.find_by_email("admin@zipline.fr")
startup5.save
startup5.logo_url = "https://www.linkedin.com/company/zipline-international-inc-?trk=company_logo"

# BATCHS DE SHOWROOMPRIVE

batch1 = Batch.new(name:"Promo 1")
batch1.batch_start = Date.new(2016,1,1)
batch1.batch_end = Date.new(2016,12,31)
batch1.program = program1
batch1.save

batch2 = Batch.new(name: "Promo 2")
batch2.batch_start = Date.new(2017,1,1)
batch2.batch_end = Date.new(2017,12,31)
batch2.program = program1
batch2.save


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


# PROGRAMS LABO EDITION

program1 = Program.new(name:"Incubation")
program1.short_description = "Accompagnement et soutien des startups qui innovent dans le secteur de l'édition"
program1.description = "Plus d'info online. Description blablabla."
program1.price = 1000
program1.duration = "12 mois"
program1.equity = false
program1.individual_coaching = "Validation du Business Model, réalisation d'un prototype en R&D, accompagnement pour les premières ventes, aides juridiques et publiques"
program1.collective_coachin = "<h4>Ateliers d'écriture</h4><p>initiation à l'écriture à travers des formats innovants et de nouvelles solutions technologiques</p><h4>Meetups & Tables Rondes</h4><p>Rencontres et débats réunissant professionnels du secteur et nouveaux acteurs de l'édition numérique autour de sujets d'actualité</p>"
program1.ecosystem = "<p>Des partenaires traditionnels comme innovant dans le milieu de l'édition : CNL (Centre National du livre), SNE (Syndicat national de l'édition), ELS, SOfia...</p>"
program1.advantages = "Validation du Business Model, réalisation d'un prototype en R&D, accompagnement pour les premières ventes, aides juridiques et publiques"
program1.selection_criterias = "Startups motivées qui désirent révolutionner l'accès aux produits et services dans le secteur de l'édition"
program1.bloomer = bloomer7
program1.candidature_open = Date.new(2016,11,1)
program1.candidature_close = Date.new(2016,12,31)
program1.save

#REVIEW

review1 = Review.new(title:"Bien")
review1.description = "C'est un super incubateur"
review1.rating = 3
review1.bloomer = bloomer2
review1.user = user1
review1.save

# CANDIDATURE

candidature1 = Candidature.new(status:"new")
candidature1.question_incubation = "Lookforward me parait être un incubateur idéal pour mon domaine et pour l'accompagnement unique qu'il propose"
candidature1.startup = startup1
candidature1.program = program1
candidature1.save
