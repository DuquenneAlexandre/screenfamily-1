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
synopsis: "KERWIN JOHNSON, JR (Naz) makes his feature film acting debut in Naz & Maalik. Inspired by his experience working on Naz & Maalik and various shorts, he aspires to grow as an actor and eventually perfect his craft.

CURTISS COOK, JR (Maalik) is a New York-based actor making his feature film debut in Naz & Maalik. He starred in the 2013 short film Amateur, which was a Vimeo Staff Pick and featured on Jay-Z's Life + Times YouTube channel. He also starred in Salt Cathedrals' Holy Soul music video, which became another Vimeo Staff Pick. He has two other movies slated to come out later in 2015.",
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
synopsis: "CHUG! is the latest travel show from Zane Lamprey! All Kickstarter backers of $25 or more will receive a digital download of the entire season! Not one episode, but six (or more)! When this show is funded, backers will get a new half-hour episode every week for six weeks! With your pledge, you're not donating. You're pre-buying six amazing episodes.

If you liked Three Sheets, Zane's previous show that aired on MojoHD, Fine Living Network, Travel and Spike, the you're going to LOVE "Chug"!

Chug is not a show about Zane chugging beer, as the title may infer. That's the clever double entendre. The chugging refers to Zane's primary mode of transportation-- trains! Chug will follow Zane's journeys as he travels the world exploring the greatest drinking destinations as well as the customs and cultures that they have inspired. Arriving by train, Zane will imbibe with the locals as he gives you a first-hand look at what it's like to drink in unique locations around the world.",
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
synopsis: "Little Witch Academia 2 (tentative title) is the sequel to the acclaimed animated title Little Witch Academia, and will once again be directed by Yoh Yoshinari and hand animated by Studio TRIGGER. The episode is currently planned to be about 20 minutes long, but we've come to Kickstarter in the hopes that we can make it even longer and better with your help! With your support, we want to increase the length of the episode by 15 minutes and make an amazing sequel that fans will be proud of! In order to accomplish this, we're hoping to raise $150,000 with this Kickstarter project.",
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
synopsis: "Zach? What is this?

I was about to sign a typical financing deal in order to get the money to make Wish I Was Here, my follow up to “Garden State.” It would have involved making a lot of sacrifices I think would have ultimately hurt the film. I’ve been a backer for several projects on Kickstarter and thought the concept was fascinating and revolutionary for artists and innovators of all kinds. But I didn't imagine it could work on larger-scale projects. I was wrong.

After I saw the incredible way “Veronica Mars” fans rallied around Kristen Bell and her show’s creator Rob Thomas, I couldn’t help but think (like I'm sure so many other independent filmmakers did) maybe there is a new way to finance smaller, personal films that didn’t involve signing away all your artistic control.

Financing an independent film the traditional way often means having to give away your right to “the final cut,” casting choices, location choices and cutting down your script to make it shoot-able on the cheapest budget possible.

What if there is a different way?",
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
synopsis: "How It Started

Last year, just before Thanksgiving, I approached my dad, Leonard Nimoy, about the possibility of working together on a film about Mr. Spock. I had skimmed through some of the books on the making of Star Trek and felt there was so much more to explore about the birth and evolution of Spock. And the timing seemed right, as the 50th anniversary of Star Trek: The Original Series was not that far away. Dad agreed that now was the right time, and that he was 100% committed to collaborating with me on this project. He also reminded me that we were (then) just days away from the 50th anniversary of the start of production on “The Cage,” the original pilot for Star Trek in which Dad first appeared as Mr. Spock.

Please participate in my Kickstarter campaign and help me complete a project that was important to my dad and has become extremely important to me.

Thanks again for your time and consideration.
",
scenario: "",
description: "",
number_of_participants: 4
)
project5.remote_project_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466499227/for-the-love-of-spock_czjkcz.png'
user5.save
project5.save
project5.users << user5

#----------------------------------------------------------------------------------------------------------------------------------
