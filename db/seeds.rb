user1 = User.new(first_name: "Myriam", last_name: "Evans", birth_date: 30.years.ago, city: "Lille", phone_number: "06 12 25 35 45", email: "user1@toto.com", password: '12345678', password_confirmation: '12345678')

project1 = Project.new(name: "Build Therapy", start_date: 30.days.from_now, end_date: 65.days.from_now, city: "Lille", genre: "Documentaire", synopsis: "A presque 30 ans, Victoire la petite dernière de la célèbre famille Bonhomme, l'éternelle enfant sage de la tribu, décide enfin de s'émanciper en découvrant l'alcool, le sexe, et... sa voix. Grâce à Banjo, un chanteur de bar et d'Elvis, elle va réussir à prendre son envol en chantant l'amour avec pudeur et le sexe sans tabou, et entraîne sa mère avec elle au grand dam de son père et de son frère.",
  scenario: "En 1975, Seyolo Zantoko, médecin fraichement diplômé originaire de Kinshasa, saisit l’opportunité d’un poste de médecin de campagne dans un petit village français.
Arrivés à Marly-Gomont, Seyolo et sa famille déchantent. Les habitants ont peur, ils n’ont jamais vu de noirs de leur vie. Mais Seyolo est bien décidé à réussir son pari et va tout mettre en œuvre pour gagner la confiance des villageois...",
number_of_participants: 7)
project1.remote_project_picture_url= 'http://res.cloudinary.com/dj9tgdqp1/image/upload/v1466427534/maxresdefault_r6gxq0.jpg'
user1.save
project1.save

#----------------------------------------------------------------------------------------------------------------------------------

user2 = User.new(first_name: "Martin", last_name: "Deb", birth_date: 30.years.ago, city: "Paris", phone_number: "06 12 25 35 45", email: 'user2@toto.com', password: '12345678', password_confirmation: '12345678')

project2 = Project.new(name: "Un Amour De Jaunisse", start_date: 30.days.from_now, end_date: 65.days.from_now, city: "Paris", genre: "Action", synopsis: "A presque 30 ans, Victoire la petite dernière de la célèbre famille Bonhomme, l'éternelle enfant sage de la tribu, décide enfin de s'émanciper en découvrant l'alcool, le sexe, et... sa voix. Grâce à Banjo, un chanteur de bar et d'Elvis, elle va réussir à prendre son envol en chantant l'amour avec pudeur et le sexe sans tabou, et entraîne sa mère avec elle au grand dam de son père et de son frère.",
  scenario: "En 1975, Seyolo Zantoko, médecin fraichement diplômé originaire de Kinshasa, saisit l’opportunité d’un poste de médecin de campagne dans un petit village français.
Arrivés à Marly-Gomont, Seyolo et sa famille déchantent. Les habitants ont peur, ils n’ont jamais vu de noirs de leur vie. Mais Seyolo est bien décidé à réussir son pari et va tout mettre en œuvre pour gagner la confiance des villageois...",
number_of_participants: 10)
project2.remote_project_picture_url= 'http://res.cloudinary.com/dj9tgdqp1/image/upload/v1466423425/newbxmqkudndobnllys0.jpg'

user2.save
project2.save

#----------------------------------------------------------------------------------------------------------------------------------

user3 = User.new(first_name: "James", last_name: "Cook", birth_date: 30.years.ago, city: "Marseille", phone_number: "06 12 25 35 45", email: 'user3@toto.com', password: '12345678', password_confirmation: '12345678')
project3 = Project.new(name: "Out Of The Blue", start_date: 30.days.from_now, end_date: 65.days.from_now, city: "Marseille", genre: "Comédie", synopsis: "A presque 30 ans, Victoire la petite dernière de la célèbre famille Bonhomme, l'éternelle enfant sage de la tribu, décide enfin de s'émanciper en découvrant l'alcool, le sexe, et... sa voix. Grâce à Banjo, un chanteur de bar et d'Elvis, elle va réussir à prendre son envol en chantant l'amour avec pudeur et le sexe sans tabou, et entraîne sa mère avec elle au grand dam de son père et de son frère.",
  scenario: "En 1975, Seyolo Zantoko, médecin fraichement diplômé originaire de Kinshasa, saisit l’opportunité d’un poste de médecin de campagne dans un petit village français.
Arrivés à Marly-Gomont, Seyolo et sa famille déchantent. Les habitants ont peur, ils n’ont jamais vu de noirs de leur vie. Mais Seyolo est bien décidé à réussir son pari et va tout mettre en œuvre pour gagner la confiance des villageois...",
number_of_participants: 4)
project3.remote_project_picture_url= 'http://res.cloudinary.com/dj9tgdqp1/image/upload/v1466427759/banner_oqo0kp.jpg'

user3.save
project3.save

#----------------------------------------------------------------------------------------------------------------------------------

user4 = User.new(first_name: "Jason", last_name: "Birard", birth_date: 30.years.ago, city: "Lyon", phone_number: "06 12 25 35 45", email: 'user4@toto.com', password: '12345678', password_confirmation: '12345678')

project4 = Project.new(name: "Vie", start_date: 30.days.from_now, end_date: 65.days.from_now, city: "Lyon", genre: "Action", synopsis: "A presque 30 ans, Victoire la petite dernière de la célèbre famille Bonhomme, l'éternelle enfant sage de la tribu, décide enfin de s'émanciper en découvrant l'alcool, le sexe, et... sa voix. Grâce à Banjo, un chanteur de bar et d'Elvis, elle va réussir à prendre son envol en chantant l'amour avec pudeur et le sexe sans tabou, et entraîne sa mère avec elle au grand dam de son père et de son frère.",
  scenario: "En 1975, Seyolo Zantoko, médecin fraichement diplômé originaire de Kinshasa, saisit l’opportunité d’un poste de médecin de campagne dans un petit village français.
Arrivés à Marly-Gomont, Seyolo et sa famille déchantent. Les habitants ont peur, ils n’ont jamais vu de noirs de leur vie. Mais Seyolo est bien décidé à réussir son pari et va tout mettre en œuvre pour gagner la confiance des villageois...",
number_of_participants: 8)
project4.remote_project_picture_url= 'http://res.cloudinary.com/dj9tgdqp1/image/upload/v1466420162/szkngqlcsa8nmujj78nz.jpg'

user4.save
project4.save

#----------------------------------------------------------------------------------------------------------------------------------

user5 = User.new(first_name: "Nina", last_name: "Davignon", birth_date: 30.years.ago, city: "Dijon", phone_number: "06 12 25 35 45", email: 'user5@toto.com', password: '12345678', password_confirmation: '12345678')

project5 = Project.new(name: "Tango", start_date: 30.days.from_now, end_date: 65.days.from_now, city: "Dijon", genre: "Action", synopsis: "A presque 30 ans, Victoire la petite dernière de la célèbre famille Bonhomme, l'éternelle enfant sage de la tribu, décide enfin de s'émanciper en découvrant l'alcool, le sexe, et... sa voix. Grâce à Banjo, un chanteur de bar et d'Elvis, elle va réussir à prendre son envol en chantant l'amour avec pudeur et le sexe sans tabou, et entraîne sa mère avec elle au grand dam de son père et de son frère.",
  scenario: "En 1975, Seyolo Zantoko, médecin fraichement diplômé originaire de Kinshasa, saisit l’opportunité d’un poste de médecin de campagne dans un petit village français.
Arrivés à Marly-Gomont, Seyolo et sa famille déchantent. Les habitants ont peur, ils n’ont jamais vu de noirs de leur vie. Mais Seyolo est bien décidé à réussir son pari et va tout mettre en œuvre pour gagner la confiance des villageois...",
number_of_participants: 15)
project5.remote_project_picture_url= 'http://res.cloudinary.com/dj9tgdqp1/image/upload/v1466427852/ob_b9fb30_escrime-spectacle-garde-des-lys-14_xqhahc.jpg'

user5.save
project5.save

#----------------------------------------------------------------------------------------------------------------------------------

user6 = User.new(first_name: "Gabriel", last_name: "Panton", birth_date: 30.years.ago, city: "Strasbourg", phone_number: "06 12 25 35 45", email: 'user6@toto.com', password: '12345678', password_confirmation: '12345678')

project6 = Project.new(name: "Hello Daddy", start_date: 30.days.from_now, end_date: 65.days.from_now, city: "Strasbourg", genre: "Action", synopsis: "A presque 30 ans, Victoire la petite dernière de la célèbre famille Bonhomme, l'éternelle enfant sage de la tribu, décide enfin de s'émanciper en découvrant l'alcool, le sexe, et... sa voix. Grâce à Banjo, un chanteur de bar et d'Elvis, elle va réussir à prendre son envol en chantant l'amour avec pudeur et le sexe sans tabou, et entraîne sa mère avec elle au grand dam de son père et de son frère.",
  scenario: "En 1975, Seyolo Zantoko, médecin fraichement diplômé originaire de Kinshasa, saisit l’opportunité d’un poste de médecin de campagne dans un petit village français.
Arrivés à Marly-Gomont, Seyolo et sa famille déchantent. Les habitants ont peur, ils n’ont jamais vu de noirs de leur vie. Mais Seyolo est bien décidé à réussir son pari et va tout mettre en œuvre pour gagner la confiance des villageois...",
number_of_participants: 3)
project6.remote_project_picture_url= 'http://res.cloudinary.com/dj9tgdqp1/image/upload/v1466427535/maxpeoplefrthree669607_tboifm.jpg'

user6.save
project6.save

#----------------------------------------------------------------------------------------------------------------------------------

user7 = User.new(first_name: "Josh", last_name: "Hunter", birth_date: 30.years.ago, city: "Nantes", phone_number: "06 12 25 35 45", email: 'user7@toto.com', password: '12345678', password_confirmation: '12345678')

project7 = Project.new(name: "Un Homme Dangereux", start_date: 30.days.from_now, end_date: 65.days.from_now, city: "Nantes", genre: "Action", synopsis: "A presque 30 ans, Victoire la petite dernière de la célèbre famille Bonhomme, l'éternelle enfant sage de la tribu, décide enfin de s'émanciper en découvrant l'alcool, le sexe, et... sa voix. Grâce à Banjo, un chanteur de bar et d'Elvis, elle va réussir à prendre son envol en chantant l'amour avec pudeur et le sexe sans tabou, et entraîne sa mère avec elle au grand dam de son père et de son frère.",
  scenario: "En 1975, Seyolo Zantoko, médecin fraichement diplômé originaire de Kinshasa, saisit l’opportunité d’un poste de médecin de campagne dans un petit village français.
Arrivés à Marly-Gomont, Seyolo et sa famille déchantent. Les habitants ont peur, ils n’ont jamais vu de noirs de leur vie. Mais Seyolo est bien décidé à réussir son pari et va tout mettre en œuvre pour gagner la confiance des villageois...",
number_of_participants: 4)
project7.remote_project_picture_url= 'http://res.cloudinary.com/dj9tgdqp1/image/upload/v1466427534/tournage-film-1024x768_zlawxc.jpg'
user7.save
project7.save

#----------------------------------------------------------------------------------------------------------------------------------

user8 = User.new(first_name: "Sarah", last_name: "Polichon", birth_date: 30.years.ago, city: "Montpellier", phone_number: "06 12 25 35 45", email: 'user8@toto.com', password: '12345678', password_confirmation: '12345678')

project8 = Project.new(name: "Meurtries", start_date: 30.days.from_now, end_date: 65.days.from_now, city: "Montpellier", genre: "Action", synopsis: "A presque 30 ans, Victoire la petite dernière de la célèbre famille Bonhomme, l'éternelle enfant sage de la tribu, décide enfin de s'émanciper en découvrant l'alcool, le sexe, et... sa voix. Grâce à Banjo, un chanteur de bar et d'Elvis, elle va réussir à prendre son envol en chantant l'amour avec pudeur et le sexe sans tabou, et entraîne sa mère avec elle au grand dam de son père et de son frère.",
  scenario: "En 1975, Seyolo Zantoko, médecin fraichement diplômé originaire de Kinshasa, saisit l’opportunité d’un poste de médecin de campagne dans un petit village français.
Arrivés à Marly-Gomont, Seyolo et sa famille déchantent. Les habitants ont peur, ils n’ont jamais vu de noirs de leur vie. Mais Seyolo est bien décidé à réussir son pari et va tout mettre en œuvre pour gagner la confiance des villageois...",
number_of_participants: 10)
project8.remote_project_picture_url= 'http://res.cloudinary.com/dj9tgdqp1/image/upload/v1466427534/312161e78f410a0f7f66b5fa9d4336de_original_laiywa.png'

user8.save
project8.save

#----------------------------------------------------------------------------------------------------------------------------------

user9 = User.new(first_name: "Maxime", last_name: "Vattel", birth_date: 30.years.ago, city: "Guingamp", phone_number: "06 12 25 35 45", email: 'user9@toto.com', password: '12345678', password_confirmation: '12345678')

project9 = Project.new(name: "Deadly Forest", start_date: 30.days.from_now, end_date: 65.days.from_now, city: "Guingamp", genre: "Action", synopsis: "A presque 30 ans, Victoire la petite dernière de la célèbre famille Bonhomme, l'éternelle enfant sage de la tribu, décide enfin de s'émanciper en découvrant l'alcool, le sexe, et... sa voix. Grâce à Banjo, un chanteur de bar et d'Elvis, elle va réussir à prendre son envol en chantant l'amour avec pudeur et le sexe sans tabou, et entraîne sa mère avec elle au grand dam de son père et de son frère.",
  scenario: "En 1975, Seyolo Zantoko, médecin fraichement diplômé originaire de Kinshasa, saisit l’opportunité d’un poste de médecin de campagne dans un petit village français.
Arrivés à Marly-Gomont, Seyolo et sa famille déchantent. Les habitants ont peur, ils n’ont jamais vu de noirs de leur vie. Mais Seyolo est bien décidé à réussir son pari et va tout mettre en œuvre pour gagner la confiance des villageois...",
number_of_participants: 7)
project9.remote_project_picture_url= 'http://res.cloudinary.com/dj9tgdqp1/image/upload/v1466427534/20272263_u8qaks.jpg'

user9.save
project9.save

#----------------------------------------------------------------------------------------------------------------------------------

user10 = User.new(first_name: "Lisa", last_name: "Antoneni", birth_date: 30.years.ago, city: "Nancy", phone_number: "06 12 25 35 45", email: 'user10@toto.com', password: '12345678', password_confirmation: '12345678')

project10 = Project.new(name: "L'Ouragan", start_date: 30.days.from_now, end_date: 65.days.from_now, city: "Nancy", genre: "Action", synopsis: "A presque 30 ans, Victoire la petite dernière de la célèbre famille Bonhomme, l'éternelle enfant sage de la tribu, décide enfin de s'émanciper en découvrant l'alcool, le sexe, et... sa voix. Grâce à Banjo, un chanteur de bar et d'Elvis, elle va réussir à prendre son envol en chantant l'amour avec pudeur et le sexe sans tabou, et entraîne sa mère avec elle au grand dam de son père et de son frère.",
  scenario: "En 1975, Seyolo Zantoko, médecin fraichement diplômé originaire de Kinshasa, saisit l’opportunité d’un poste de médecin de campagne dans un petit village français.
Arrivés à Marly-Gomont, Seyolo et sa famille déchantent. Les habitants ont peur, ils n’ont jamais vu de noirs de leur vie. Mais Seyolo est bien décidé à réussir son pari et va tout mettre en œuvre pour gagner la confiance des villageois...",
number_of_participants: 6)
project10.remote_project_picture_url= 'http://res.cloudinary.com/dj9tgdqp1/image/upload/v1466427535/108676771_o_wdwiif.jpg'

user10.save
project10.save

#----------------------------------------------------------------------------------------------------------------------------------
