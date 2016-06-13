# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

screen_user = User.new(first_name: "Myriam", last_name: "Evans", birth_date: "12 juin 1982", city: "Lille", phone_number: "06/12/25/35/45")
screen_user.save
screen_project = Project.new(name: "Build Therapy", start_date: "27 juin 2016", end_date: "12 fevrier 2017", city: "Lille", genre: "Documentaire", synopsis: "A presque 30 ans, Victoire la petite dernière de la célèbre famille Bonhomme, l'éternelle enfant sage de la tribu, décide enfin de s'émanciper en découvrant l'alcool, le sexe, et... sa voix. Grâce à Banjo, un chanteur de bar et d'Elvis, elle va réussir à prendre son envol en chantant l'amour avec pudeur et le sexe sans tabou, et entraîne sa mère avec elle au grand dam de son père et de son frère.", 
  scenario: "Suite à un rarissime accident, Paul Sneijder ouvre les yeux sur la réalité de sa vie de « cadre supérieur » à Montréal : son travail ne l’intéresse plus, sa femme l’agace et le trompe, ses deux fils le méprisent…

Comment continuer à vivre dans ces conditions ? En commençant par changer de métier : promeneur de chiens par exemple ! 

Ses proches accepteront-ils ce changement qui le transformera en homme libre ?", 
number_of_participants: 7, number_of_days_crowdfunding: 123, goal: 12000)
screen_project.save

screen_user2 = User.new(first_name: "Martin", last_name: "Deb", birth_date: "12 juin 1982", city: "Lille", phone_number: "06/12/25/35/45")
screen_user2.save
screen_project2 = Project.new(name: "Schocking Tree", start_date: "27 aout 2016", end_date: "12 mars 2017", city: "Lille", genre: "Action", synopsis: "A presque 30 ans, Victoire la petite dernière de la célèbre famille Bonhomme, l'éternelle enfant sage de la tribu, décide enfin de s'émanciper en découvrant l'alcool, le sexe, et... sa voix. Grâce à Banjo, un chanteur de bar et d'Elvis, elle va réussir à prendre son envol en chantant l'amour avec pudeur et le sexe sans tabou, et entraîne sa mère avec elle au grand dam de son père et de son frère.", 
  scenario: "En 1975, Seyolo Zantoko, médecin fraichement diplômé originaire de Kinshasa, saisit l’opportunité d’un poste de médecin de campagne dans un petit village français. 
Arrivés à Marly-Gomont, Seyolo et sa famille déchantent. Les habitants ont peur, ils n’ont jamais vu de noirs de leur vie. Mais Seyolo est bien décidé à réussir son pari et va tout mettre en œuvre pour gagner la confiance des villageois...", 
number_of_participants: 10, number_of_days_crowdfunding: 160, goal: 18000)
screen_project2.save

screen_user3 = User.new(first_name: "Martin", last_name: "Deb", birth_date: "12 juin 1982", city: "Lille", phone_number: "06/12/25/35/45")
screen_user3.save
screen_project3 = Project.new(name: "Schocking Tree", start_date: "27 aout 2016", end_date: "12 mars 2017", city: "Lille", genre: "Action", synopsis: "A presque 30 ans, Victoire la petite dernière de la célèbre famille Bonhomme, l'éternelle enfant sage de la tribu, décide enfin de s'émanciper en découvrant l'alcool, le sexe, et... sa voix. Grâce à Banjo, un chanteur de bar et d'Elvis, elle va réussir à prendre son envol en chantant l'amour avec pudeur et le sexe sans tabou, et entraîne sa mère avec elle au grand dam de son père et de son frère.", 
  scenario: "En 1975, Seyolo Zantoko, médecin fraichement diplômé originaire de Kinshasa, saisit l’opportunité d’un poste de médecin de campagne dans un petit village français. 
Arrivés à Marly-Gomont, Seyolo et sa famille déchantent. Les habitants ont peur, ils n’ont jamais vu de noirs de leur vie. Mais Seyolo est bien décidé à réussir son pari et va tout mettre en œuvre pour gagner la confiance des villageois...", 
number_of_participants: 10, number_of_days_crowdfunding: 160, goal: 18000)
screen_project3.save

screen_user4 = User.new(first_name: "Martin", last_name: "Deb", birth_date: "12 juin 1982", city: "Lille", phone_number: "06/12/25/35/45")
screen_user4.save
screen_project4 = Project.new(name: "Schocking Tree", start_date: "27 aout 2016", end_date: "12 mars 2017", city: "Lille", genre: "Action", synopsis: "A presque 30 ans, Victoire la petite dernière de la célèbre famille Bonhomme, l'éternelle enfant sage de la tribu, décide enfin de s'émanciper en découvrant l'alcool, le sexe, et... sa voix. Grâce à Banjo, un chanteur de bar et d'Elvis, elle va réussir à prendre son envol en chantant l'amour avec pudeur et le sexe sans tabou, et entraîne sa mère avec elle au grand dam de son père et de son frère.", 
  scenario: "En 1975, Seyolo Zantoko, médecin fraichement diplômé originaire de Kinshasa, saisit l’opportunité d’un poste de médecin de campagne dans un petit village français. 
Arrivés à Marly-Gomont, Seyolo et sa famille déchantent. Les habitants ont peur, ils n’ont jamais vu de noirs de leur vie. Mais Seyolo est bien décidé à réussir son pari et va tout mettre en œuvre pour gagner la confiance des villageois...", 
number_of_participants: 10, number_of_days_crowdfunding: 160, goal: 18000)
screen_project4.save