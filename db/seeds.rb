user1 = User.new(
first_name: "Maalik",
last_name: "Maouli",
birth_date: 27.years.ago,
city: "",
phone_number: "(321) 800-8244",
email: "user1@toto.com",
password: '12345678',
password_confirmation: '12345678'
)

project1 = Project.new(
name: "Nas & Maalik",
start_date: 20.days.from_now,
end_date: 35.days.from_now,
city: "",
genre: "Romance",
synopsis: "",
scenario: "",
number_of_participants: 5
)
project1.remote_project_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466499224/naz_maalik_massimadi_3_vgqoub.jpg'
user1.save
project1.save
project1.users << user1

#----------------------------------------------------------------------------------------------------------------------------------

user2 = User.new(
first_name: "Zane",
last_name: "Lamprey",
birth_date: 34.years.ago,
city: "",
phone_number: "(321) 800-8244",
email: "user2@toto.com",
password: '12345678',
password_confirmation: '12345678'
)

project2 = Project.new(
name: "Chug",
start_date: 34.days.from_now,
end_date: 59.days.from_now,
city: "",
genre: "Comedy",
synopsis: "",
scenario: "",
number_of_participants: 7
)
project2.remote_project_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466499225/CHUG_vkftdt.jpg'
user2.save
project2.save
project2.users << user2

#----------------------------------------------------------------------------------------------------------------------------------

user3 = User.new(
first_name: "Rebecca",
last_name: "Landova",
birth_date: 24.years.ago,
city: "",
phone_number: "(321) 800-8244",
email: "user3@toto.com",
password: '12345678',
password_confirmation: '12345678'
)

project3 = Project.new(
name: "Little Witch Academia",
start_date: 19.days.from_now,
end_date: 67.days.from_now,
city: "",
genre: "Animation",
synopsis: "",
scenario: "",
number_of_participants: 4
)
project3.remote_project_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466499229/Little.Witch.Academia.full.1921675_f0zvkp.jpg'
user3.save
project3.save
project3.users << user3

#----------------------------------------------------------------------------------------------------------------------------------

user4 = User.new(
first_name: "Zach",
last_name: "Braff",
birth_date: 33.years.ago,
city: "",
phone_number: "(321) 800-8244",
email: "user4@toto.com",
password: '12345678',
password_confirmation: '12345678'
)

project4 = Project.new(
name: "Wish I Was Here",
start_date: 40.days.from_now,
end_date: 65.days.from_now,
city: "",
genre: "Drama",
synopsis: "",
scenario: "",
number_of_participants: 5
)
project4.remote_project_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466499225/maxdogmovie_p9l4tq.jpg'
user4.save
project4.save
project4.users << user4

#----------------------------------------------------------------------------------------------------------------------------------

user5 = User.new(
first_name: "Jane",
last_name: "Adams",
birth_date: 29.years.ago,
city: "",
phone_number: "(321) 800-8244",
email: "user5@toto.com",
password: '12345678',
password_confirmation: '12345678'
)

project5 = Project.new(
name: "For The Love Of Spock",
start_date: 15.days.from_now,
end_date: 45.days.from_now,
city: "",
genre: "Documentary",
synopsis: "",
scenario: "",
description: "",
number_of_participants: 4
)
project5.remote_project_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466499227/for-the-love-of-spock_czjkcz.png'
user5.save
project5.save
project5.users << user5

#----------------------------------------------------------------------------------------------------------------------------------
