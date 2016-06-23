class ActiveRecord::Base
 def self.truncate!
   connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE;")
 end
end

# Not allowed in production.
if Rails.env.in?(%(production)) && !ENV['FORCE']
 STDERR.write "That's a terrible idea, all your records will be lost!!!\n"
 exit
end

# We truncate the records so to regenerate the seed.
# Each time we seed all the items are lost and recreated.
[
 User,
 Project
].map(&:truncate!)

user1 = User.new(
first_name: "Jay",
last_name: "Gloser",
birth_date: 27.years.ago,
city: "Anaheim",
phone_number: "(321) 800-8244",
email: "user1@toto.com",
password: '12345678',
password_confirmation: '12345678'
)

project1 = Project.new(
name: "The Main Street Entrepreneur",
start_date: 8.days.from_now,
end_date: 35.days.from_now,
city: "Anaheim",
price: 12,
price_cents: 12000,
genre: "Documentary",

synopsis: "The Main Street Entrepreneur is a full length feature documentary detailing the choices made by ordinary people that have led to extraordinary outcomes, each building livelihoods doing what they love. Motivated and driven by personal aspirations, these individuals dared to take risks in pursuit of their dreams. Their journeys and the experiences they share will inspire and motivate you to choose a similar path, a path inviting you to follow your own dreams and live a life of fulfillment.",

scenario: "<div>
<p><strong>EXT. QUIET HILLS RECOVERY CENTER - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting in a wheelchair and grumpy as hell, FRANK NICHOLS (89), angrily works skeletal fingers in a vain attempt to remove a thick electronic BRACELET from his left arm.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s a damned invasion of my personal privacy is what it is.</p>

<p>&nbsp;</p>

<p>Readouts blink steadily. Frank stares at them, rapt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t want to see my heart beat.</p>

<p>&nbsp;</p>

<p>Standing behind Frank, BILL (60), Frank&rsquo;s son, places a calm hand on Frank&rsquo;s shoulder.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>BILL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You need to be monitored, Dad. Mary and I live too far away to help if something should happen. It&rsquo;s either the bracelet or a home companion. Your choice.</p>

<p>&nbsp;</p>

<p>Frank stews in his juices, then smacks the bracelet hard on the arm of his wheelchair.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. FRANK&rsquo;S HOUSE - DAY</strong></p>

<p>&nbsp;</p>

<p>A scratch at the door. The doorbell rings. More scratching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m coming, I&rsquo;m coming. Hold your horses.</p>

<p>&nbsp;</p>

<p>Relying heavily on a walker, Frank shuffles towards the door.</p>

<p>&nbsp;</p>

<p>Arthritic hands struggle with the doorknob and finally succeed. The door opens, revealing -</p>

<p>&nbsp;</p>

<p>A large, handsome, alert GERMAN SHEPARD.</p>

<p>&nbsp;</p>

<p>Frank looks at the pooch. Leans out. Looks around. Shrugs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Who rang the bell?</p>

<p>&nbsp;</p>

<p>The dog, CARL, looks up at Frank with soulful eyes.</p>
</div>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I did, Frank. My name is Carl.</p>

<p>&nbsp;</p>

<p>Frank gawks at the talking dog, then stumbles backwards. Carl follows and closes the door behind him.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. KITCHEN - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits alert while Frank nervously makes coffee.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>They didn&rsquo;t say anything about my companion being a talking dog.</p>

<p>&nbsp;</p>

<p>Carl looks Frank up and down. Says nothing.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I mean, I&rsquo;m allergic to dogs.</p>

<p>&nbsp;</p>

<p>Frank snatches a Kleenex from the counter, wipes his nose.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Don&rsquo;t worry, Frank. I&rsquo;m not a real dog. I&rsquo;m a Complex, Artificial, Realistic, Lifeform. C.A.R.L. Carl. And totally non-allergenic.</p>

<p>&nbsp;</p>

<p>Frank crumples the snot rag, sniffs the air, grimaces.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. LIVING ROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Frank scoots his walker to a comfy chair and falls into it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Rules. Gotta follow the rules. And my landlord won&rsquo;t allow Complex, Realistic, uh, dogs in his -</p>

<p>&nbsp;</p>

<p>Carl taps his head with his left paw.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s all in my noggin, Frank. Your entire portfolio. I know that you&rsquo;ve owned this home free and clear for over twenty years.</p>

<p>&nbsp;</p>

<p>Frank&rsquo;s eyes crinkle in a scowl.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>EXT. BATHROOM DOOR - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits patiently outside the bathroom door.</p>
</div>
</p>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>What about food? I can barely remember to feed myself.</p>

<p>&nbsp;</p>

<p>Carl stands on his hind legs and opens the bathroom door.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BATHROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting on the toilet, Frank jerks in surprise, letting out a SQUEAKY FART, as Carl enters.</p>

<p>&nbsp;</p>

<p>Carl remains upright as a hatch on his belly opens, revealing all sorts of high tech components.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Cold fusion powered. A little water each week and I&rsquo;m good. And between you and me, I kinda prefer toilet water. The porcelain adds a certain something -</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Do you mind? I&rsquo;m trying to, er...</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s brown eyes widen, his tail droops and he backs out, closing the door behind him.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sorry. I should have knocked.</p>

<p>&nbsp;</p>

<p>Frustrated, Frank&rsquo;s hands clench into gnarled fists. Then, his eyebrows raise with a thought.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You sound like a pretty high tech pup, alright. What if something happens to those computers and gadgets and stuff inside you? I can&rsquo;t afford those kind of repairs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Bumper to bumper warranty, Frank.</p>

<p>&nbsp;</p>

<p style='margin-left:101.0pt;'><strong>FRANK (under his breath)</strong></p>

<p style='margin-left:101.0pt;'>&nbsp;</p>

<p style='margin-left:72.0pt;'>Dang it.</p>

<p>&nbsp;</p>

<p>Frank eyes search the room for inspiration - and find it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m in no condition to take you for walkees when you need to, you know, do what I&rsquo;m doing right now.</p>
</div>
</p>

<p>&nbsp;
<div>
<p>A pause, then a knock on the door. Frank rolls his eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>For goodness sake. Come in!</p>

<p>&nbsp;</p>

<p>The door swings open slowly. Carl faces Frank, tail wagging.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m totally self contained. You don&rsquo;t have to worry about a thing. In fact, I&rsquo;ll clean up after you. Plus, I cook, do the laundry and can administer all of your necessary medications.</p>

<p>&nbsp;</p>

<p>Frank stares at Carl, words not coming, and reaches for the toilet paper. Carl gets the hint and turns to leave.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BEDROOM - NIGHT</strong></p>

<p>&nbsp;</p>

<p>Sitting on the edge of his bed, Frank pulls on a nightshirt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sounds to me like you&rsquo;re nothing more than a flea bitten nursemaid. I suppose you&rsquo;re gonna report my every move to my doctors and family, too.</p>

<p>&nbsp;</p>

<p>Carl gazes up at Frank with sad, brown doggy eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s not like that at all, Frank. I&rsquo;m here to help you. I&rsquo;ll be by your side day and night. If you need something, I&rsquo;ll fetch it.</p>

<p>&nbsp;</p>

<p>Frank looks dubious, then turns his attention to his night stand, searching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Where&rsquo;s the darned TV remote?</p>

<p>&nbsp;</p>

<p>Carl sniffs around and retrieves the remote from under the bed. He sets it gently next to Frank&rsquo;s hand.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t need a nurse maid. I don&rsquo;t need a dog, neither. I don&rsquo;t need nothin&rsquo;. Nothin&rsquo; at all.</p>

<p>&nbsp;</p>

<p>He clicks the remote. Nothing happens. Nothing at all.</p>
</div>
</p>

<p>&nbsp;
<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>
</p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>&lsquo;Cept maybe some batteries.</p>

<p>&nbsp;</p>

<p>Carl stares at the TV and blinks. The TV comes to life.</p>

<p>&nbsp;</p>

<p>Frank looks at Carl, then the TV. He smiles slightly.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Nice trick.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Thanks. But I&rsquo;m not here to do tricks, Frank.</p>

<p>&nbsp;</p>

<p>Tail wagging with joy, Carl jumps onto the bed next to Frank.</p>

<p>&nbsp;</p>

<p>He leans his muzzle in close to Frank&rsquo;s face.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m here to be your best friend.</p>

<p>&nbsp;</p>

<p>And with that, Carl licks the entire side of Frank&rsquo;s face, jumps down and curls into a furry ball next to the bed.</p>

<p>&nbsp;</p>

<p>As Frank slowly wipes the very realistic slobber from his cheek, he looks down at Carl and considers.</p>

<p>&nbsp;</p>

<p>His face softens. He reaches down and pats Carl on the head.</p>

<p>&nbsp;</p>

<p>Carl lets out a contented sigh.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I guess having a dog won&rsquo;t be so bad. Always wanted a dog, in fact.</p>

<p>&nbsp;</p>

<p>Frank looks up at the TV, which shows an informercial. He frowns.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Hey, um, Carl... would you mind switching to ESPN. The ball game&rsquo;s on in a few minutes.</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s tail wags a little as the TV channel switches over.</p>
",

number_of_participants: 5
)
project1.remote_project_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466589014/559c8fed5739986c3ddcb69a6d995f3c_original_bmhjdx.jpg'
user1.remote_user_picture_url= 'http://res.cloudinary.com/dj9tgdqp1/image/upload/v1466523566/j4wo3gvbyc9jsd57hvuo.jpg'
user1.save
project1.users << user1
project1.save

#----------------------------------------------------------------------------------------------------------------------------------

user2 = User.new(
first_name: "Zane",
last_name: "Lamprey",
birth_date: 34.years.ago,
city: "Bakersfield",
phone_number: "(321) 800-8244",
email: "user2@toto.com",
password: "12345678",
password_confirmation: "12345678"
)

project2 = Project.new(
name: "Chug",
start_date: 3.days.from_now,
end_date: 11.days.from_now,
price: 12,
price_cents: 12000,
city: "Bakersfield",
genre: "Comedy",

synopsis: "Chug is not a show about Zane chugging beer, as the title may infer. That's the clever double entendre. The chugging refers to Zane's primary mode of transportation-- trains! Chug will follow Zane's journeys as he travels the world exploring the greatest drinking destinations as well as the customs and cultures that they have inspired. Arriving by train, Zane will imbibe with the locals as he gives you a first-hand look at what it's like to drink in unique locations around the world.",

scenario: "<div>
<p><strong>EXT. QUIET HILLS RECOVERY CENTER - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting in a wheelchair and grumpy as hell, FRANK NICHOLS (89), angrily works skeletal fingers in a vain attempt to remove a thick electronic BRACELET from his left arm.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s a damned invasion of my personal privacy is what it is.</p>

<p>&nbsp;</p>

<p>Readouts blink steadily. Frank stares at them, rapt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t want to see my heart beat.</p>

<p>&nbsp;</p>

<p>Standing behind Frank, BILL (60), Frank&rsquo;s son, places a calm hand on Frank&rsquo;s shoulder.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>BILL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You need to be monitored, Dad. Mary and I live too far away to help if something should happen. It&rsquo;s either the bracelet or a home companion. Your choice.</p>

<p>&nbsp;</p>

<p>Frank stews in his juices, then smacks the bracelet hard on the arm of his wheelchair.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. FRANK&rsquo;S HOUSE - DAY</strong></p>

<p>&nbsp;</p>

<p>A scratch at the door. The doorbell rings. More scratching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m coming, I&rsquo;m coming. Hold your horses.</p>

<p>&nbsp;</p>

<p>Relying heavily on a walker, Frank shuffles towards the door.</p>

<p>&nbsp;</p>

<p>Arthritic hands struggle with the doorknob and finally succeed. The door opens, revealing -</p>

<p>&nbsp;</p>

<p>A large, handsome, alert GERMAN SHEPARD.</p>

<p>&nbsp;</p>

<p>Frank looks at the pooch. Leans out. Looks around. Shrugs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Who rang the bell?</p>

<p>&nbsp;</p>

<p>The dog, CARL, looks up at Frank with soulful eyes.</p>
</div>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I did, Frank. My name is Carl.</p>

<p>&nbsp;</p>

<p>Frank gawks at the talking dog, then stumbles backwards. Carl follows and closes the door behind him.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. KITCHEN - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits alert while Frank nervously makes coffee.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>They didn&rsquo;t say anything about my companion being a talking dog.</p>

<p>&nbsp;</p>

<p>Carl looks Frank up and down. Says nothing.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I mean, I&rsquo;m allergic to dogs.</p>

<p>&nbsp;</p>

<p>Frank snatches a Kleenex from the counter, wipes his nose.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Don&rsquo;t worry, Frank. I&rsquo;m not a real dog. I&rsquo;m a Complex, Artificial, Realistic, Lifeform. C.A.R.L. Carl. And totally non-allergenic.</p>

<p>&nbsp;</p>

<p>Frank crumples the snot rag, sniffs the air, grimaces.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. LIVING ROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Frank scoots his walker to a comfy chair and falls into it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Rules. Gotta follow the rules. And my landlord won&rsquo;t allow Complex, Realistic, uh, dogs in his -</p>

<p>&nbsp;</p>

<p>Carl taps his head with his left paw.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s all in my noggin, Frank. Your entire portfolio. I know that you&rsquo;ve owned this home free and clear for over twenty years.</p>

<p>&nbsp;</p>

<p>Frank&rsquo;s eyes crinkle in a scowl.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>EXT. BATHROOM DOOR - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits patiently outside the bathroom door.</p>
</div>
</p>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>What about food? I can barely remember to feed myself.</p>

<p>&nbsp;</p>

<p>Carl stands on his hind legs and opens the bathroom door.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BATHROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting on the toilet, Frank jerks in surprise, letting out a SQUEAKY FART, as Carl enters.</p>

<p>&nbsp;</p>

<p>Carl remains upright as a hatch on his belly opens, revealing all sorts of high tech components.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Cold fusion powered. A little water each week and I&rsquo;m good. And between you and me, I kinda prefer toilet water. The porcelain adds a certain something -</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Do you mind? I&rsquo;m trying to, er...</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s brown eyes widen, his tail droops and he backs out, closing the door behind him.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sorry. I should have knocked.</p>

<p>&nbsp;</p>

<p>Frustrated, Frank&rsquo;s hands clench into gnarled fists. Then, his eyebrows raise with a thought.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You sound like a pretty high tech pup, alright. What if something happens to those computers and gadgets and stuff inside you? I can&rsquo;t afford those kind of repairs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Bumper to bumper warranty, Frank.</p>

<p>&nbsp;</p>

<p style='margin-left:101.0pt;'><strong>FRANK (under his breath)</strong></p>

<p style='margin-left:101.0pt;'>&nbsp;</p>

<p style='margin-left:72.0pt;'>Dang it.</p>

<p>&nbsp;</p>

<p>Frank eyes search the room for inspiration - and find it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m in no condition to take you for walkees when you need to, you know, do what I&rsquo;m doing right now.</p>
</div>
</p>

<p>&nbsp;
<div>
<p>A pause, then a knock on the door. Frank rolls his eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>For goodness sake. Come in!</p>

<p>&nbsp;</p>

<p>The door swings open slowly. Carl faces Frank, tail wagging.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m totally self contained. You don&rsquo;t have to worry about a thing. In fact, I&rsquo;ll clean up after you. Plus, I cook, do the laundry and can administer all of your necessary medications.</p>

<p>&nbsp;</p>

<p>Frank stares at Carl, words not coming, and reaches for the toilet paper. Carl gets the hint and turns to leave.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BEDROOM - NIGHT</strong></p>

<p>&nbsp;</p>

<p>Sitting on the edge of his bed, Frank pulls on a nightshirt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sounds to me like you&rsquo;re nothing more than a flea bitten nursemaid. I suppose you&rsquo;re gonna report my every move to my doctors and family, too.</p>

<p>&nbsp;</p>

<p>Carl gazes up at Frank with sad, brown doggy eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s not like that at all, Frank. I&rsquo;m here to help you. I&rsquo;ll be by your side day and night. If you need something, I&rsquo;ll fetch it.</p>

<p>&nbsp;</p>

<p>Frank looks dubious, then turns his attention to his night stand, searching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Where&rsquo;s the darned TV remote?</p>

<p>&nbsp;</p>

<p>Carl sniffs around and retrieves the remote from under the bed. He sets it gently next to Frank&rsquo;s hand.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t need a nurse maid. I don&rsquo;t need a dog, neither. I don&rsquo;t need nothin&rsquo;. Nothin&rsquo; at all.</p>

<p>&nbsp;</p>

<p>He clicks the remote. Nothing happens. Nothing at all.</p>
</div>
</p>

<p>&nbsp;
<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>
</p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>&lsquo;Cept maybe some batteries.</p>

<p>&nbsp;</p>

<p>Carl stares at the TV and blinks. The TV comes to life.</p>

<p>&nbsp;</p>

<p>Frank looks at Carl, then the TV. He smiles slightly.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Nice trick.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Thanks. But I&rsquo;m not here to do tricks, Frank.</p>

<p>&nbsp;</p>

<p>Tail wagging with joy, Carl jumps onto the bed next to Frank.</p>

<p>&nbsp;</p>

<p>He leans his muzzle in close to Frank&rsquo;s face.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m here to be your best friend.</p>

<p>&nbsp;</p>

<p>And with that, Carl licks the entire side of Frank&rsquo;s face, jumps down and curls into a furry ball next to the bed.</p>

<p>&nbsp;</p>

<p>As Frank slowly wipes the very realistic slobber from his cheek, he looks down at Carl and considers.</p>

<p>&nbsp;</p>

<p>His face softens. He reaches down and pats Carl on the head.</p>

<p>&nbsp;</p>

<p>Carl lets out a contented sigh.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I guess having a dog won&rsquo;t be so bad. Always wanted a dog, in fact.</p>

<p>&nbsp;</p>

<p>Frank looks up at the TV, which shows an informercial. He frowns.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Hey, um, Carl... would you mind switching to ESPN. The ball game&rsquo;s on in a few minutes.</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s tail wags a little as the TV channel switches over.</p>
",

number_of_participants: 7
)
project2.remote_project_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466499225/CHUG_vkftdt.jpg'
user2.remote_user_picture_url= 'http://res.cloudinary.com/dj9tgdqp1/image/upload/v1466524034/11222145_10207231487968456_5608086083271334069_o_m80qjq.jpg'
user2.save
project2.users << user2
project2.save

#----------------------------------------------------------------------------------------------------------------------------------

user3 = User.new(
first_name: "Rebecca",
last_name: "Landova",
birth_date: 24.years.ago,
city: "Fresno",
phone_number: "(321) 800-8244",
email: "user3@toto.com",
password: '12345678',
password_confirmation: '12345678'
)

project3 = Project.new(
name: "Little Witch Academia",
start_date: 8.days.from_now,
end_date: 19.days.from_now,
city: "Fresno",
price: 12,
price_cents: 12000,
genre: "Animation",

synopsis: "Little Witch Academia 2 (tentative title) is the sequel to the acclaimed animated title Little Witch Academia, and will once again be directed by Yoh Yoshinari and hand animated by Studio TRIGGER. The episode is currently planned to be about 20 minutes long, but we've come to SCREENFAMILY in the hopes that we can make it even longer and better with your help! With your support, we want to increase the length of the episode by 15 minutes and make an amazing sequel that fans will be proud of! In order to accomplish this, we're hoping to raise $150,000 with this SCREENFAMILY project.",

scenario: "<div>
<p><strong>EXT. QUIET HILLS RECOVERY CENTER - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting in a wheelchair and grumpy as hell, FRANK NICHOLS (89), angrily works skeletal fingers in a vain attempt to remove a thick electronic BRACELET from his left arm.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s a damned invasion of my personal privacy is what it is.</p>

<p>&nbsp;</p>

<p>Readouts blink steadily. Frank stares at them, rapt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t want to see my heart beat.</p>

<p>&nbsp;</p>

<p>Standing behind Frank, BILL (60), Frank&rsquo;s son, places a calm hand on Frank&rsquo;s shoulder.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>BILL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You need to be monitored, Dad. Mary and I live too far away to help if something should happen. It&rsquo;s either the bracelet or a home companion. Your choice.</p>

<p>&nbsp;</p>

<p>Frank stews in his juices, then smacks the bracelet hard on the arm of his wheelchair.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. FRANK&rsquo;S HOUSE - DAY</strong></p>

<p>&nbsp;</p>

<p>A scratch at the door. The doorbell rings. More scratching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m coming, I&rsquo;m coming. Hold your horses.</p>

<p>&nbsp;</p>

<p>Relying heavily on a walker, Frank shuffles towards the door.</p>

<p>&nbsp;</p>

<p>Arthritic hands struggle with the doorknob and finally succeed. The door opens, revealing -</p>

<p>&nbsp;</p>

<p>A large, handsome, alert GERMAN SHEPARD.</p>

<p>&nbsp;</p>

<p>Frank looks at the pooch. Leans out. Looks around. Shrugs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Who rang the bell?</p>

<p>&nbsp;</p>

<p>The dog, CARL, looks up at Frank with soulful eyes.</p>
</div>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I did, Frank. My name is Carl.</p>

<p>&nbsp;</p>

<p>Frank gawks at the talking dog, then stumbles backwards. Carl follows and closes the door behind him.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. KITCHEN - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits alert while Frank nervously makes coffee.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>They didn&rsquo;t say anything about my companion being a talking dog.</p>

<p>&nbsp;</p>

<p>Carl looks Frank up and down. Says nothing.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I mean, I&rsquo;m allergic to dogs.</p>

<p>&nbsp;</p>

<p>Frank snatches a Kleenex from the counter, wipes his nose.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Don&rsquo;t worry, Frank. I&rsquo;m not a real dog. I&rsquo;m a Complex, Artificial, Realistic, Lifeform. C.A.R.L. Carl. And totally non-allergenic.</p>

<p>&nbsp;</p>

<p>Frank crumples the snot rag, sniffs the air, grimaces.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. LIVING ROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Frank scoots his walker to a comfy chair and falls into it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Rules. Gotta follow the rules. And my landlord won&rsquo;t allow Complex, Realistic, uh, dogs in his -</p>

<p>&nbsp;</p>

<p>Carl taps his head with his left paw.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s all in my noggin, Frank. Your entire portfolio. I know that you&rsquo;ve owned this home free and clear for over twenty years.</p>

<p>&nbsp;</p>

<p>Frank&rsquo;s eyes crinkle in a scowl.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>EXT. BATHROOM DOOR - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits patiently outside the bathroom door.</p>
</div>
</p>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>What about food? I can barely remember to feed myself.</p>

<p>&nbsp;</p>

<p>Carl stands on his hind legs and opens the bathroom door.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BATHROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting on the toilet, Frank jerks in surprise, letting out a SQUEAKY FART, as Carl enters.</p>

<p>&nbsp;</p>

<p>Carl remains upright as a hatch on his belly opens, revealing all sorts of high tech components.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Cold fusion powered. A little water each week and I&rsquo;m good. And between you and me, I kinda prefer toilet water. The porcelain adds a certain something -</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Do you mind? I&rsquo;m trying to, er...</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s brown eyes widen, his tail droops and he backs out, closing the door behind him.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sorry. I should have knocked.</p>

<p>&nbsp;</p>

<p>Frustrated, Frank&rsquo;s hands clench into gnarled fists. Then, his eyebrows raise with a thought.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You sound like a pretty high tech pup, alright. What if something happens to those computers and gadgets and stuff inside you? I can&rsquo;t afford those kind of repairs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Bumper to bumper warranty, Frank.</p>

<p>&nbsp;</p>

<p style='margin-left:101.0pt;'><strong>FRANK (under his breath)</strong></p>

<p style='margin-left:101.0pt;'>&nbsp;</p>

<p style='margin-left:72.0pt;'>Dang it.</p>

<p>&nbsp;</p>

<p>Frank eyes search the room for inspiration - and find it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m in no condition to take you for walkees when you need to, you know, do what I&rsquo;m doing right now.</p>
</div>
</p>

<p>&nbsp;
<div>
<p>A pause, then a knock on the door. Frank rolls his eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>For goodness sake. Come in!</p>

<p>&nbsp;</p>

<p>The door swings open slowly. Carl faces Frank, tail wagging.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m totally self contained. You don&rsquo;t have to worry about a thing. In fact, I&rsquo;ll clean up after you. Plus, I cook, do the laundry and can administer all of your necessary medications.</p>

<p>&nbsp;</p>

<p>Frank stares at Carl, words not coming, and reaches for the toilet paper. Carl gets the hint and turns to leave.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BEDROOM - NIGHT</strong></p>

<p>&nbsp;</p>

<p>Sitting on the edge of his bed, Frank pulls on a nightshirt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sounds to me like you&rsquo;re nothing more than a flea bitten nursemaid. I suppose you&rsquo;re gonna report my every move to my doctors and family, too.</p>

<p>&nbsp;</p>

<p>Carl gazes up at Frank with sad, brown doggy eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s not like that at all, Frank. I&rsquo;m here to help you. I&rsquo;ll be by your side day and night. If you need something, I&rsquo;ll fetch it.</p>

<p>&nbsp;</p>

<p>Frank looks dubious, then turns his attention to his night stand, searching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Where&rsquo;s the darned TV remote?</p>

<p>&nbsp;</p>

<p>Carl sniffs around and retrieves the remote from under the bed. He sets it gently next to Frank&rsquo;s hand.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t need a nurse maid. I don&rsquo;t need a dog, neither. I don&rsquo;t need nothin&rsquo;. Nothin&rsquo; at all.</p>

<p>&nbsp;</p>

<p>He clicks the remote. Nothing happens. Nothing at all.</p>
</div>
</p>

<p>&nbsp;
<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>
</p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>&lsquo;Cept maybe some batteries.</p>

<p>&nbsp;</p>

<p>Carl stares at the TV and blinks. The TV comes to life.</p>

<p>&nbsp;</p>

<p>Frank looks at Carl, then the TV. He smiles slightly.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Nice trick.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Thanks. But I&rsquo;m not here to do tricks, Frank.</p>

<p>&nbsp;</p>

<p>Tail wagging with joy, Carl jumps onto the bed next to Frank.</p>

<p>&nbsp;</p>

<p>He leans his muzzle in close to Frank&rsquo;s face.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m here to be your best friend.</p>

<p>&nbsp;</p>

<p>And with that, Carl licks the entire side of Frank&rsquo;s face, jumps down and curls into a furry ball next to the bed.</p>

<p>&nbsp;</p>

<p>As Frank slowly wipes the very realistic slobber from his cheek, he looks down at Carl and considers.</p>

<p>&nbsp;</p>

<p>His face softens. He reaches down and pats Carl on the head.</p>

<p>&nbsp;</p>

<p>Carl lets out a contented sigh.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I guess having a dog won&rsquo;t be so bad. Always wanted a dog, in fact.</p>

<p>&nbsp;</p>

<p>Frank looks up at the TV, which shows an informercial. He frowns.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Hey, um, Carl... would you mind switching to ESPN. The ball game&rsquo;s on in a few minutes.</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s tail wags a little as the TV channel switches over.</p>
",

number_of_participants: 4
)
project3.remote_project_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466499229/Little.Witch.Academia.full.1921675_f0zvkp.jpg'
user3.remote_user_picture_url= 'http://res.cloudinary.com/dj9tgdqp1/image/upload/v1466524034/13086735_10154011257583654_3491722265380897872_o_hnktph.jpg'
user3.save
project3.users << user3
project3.save

#----------------------------------------------------------------------------------------------------------------------------------

user4 = User.new(
first_name: "Zach",
last_name: "Braff",
birth_date: 33.years.ago,
city: "Long Beach",
phone_number: "(321) 800-8244",
email: "user4@toto.com",
password: '12345678',
password_confirmation: '12345678'
)

project4 = Project.new(
name: "Wish I Was Here",
start_date: 2.days.from_now,
end_date: 12.days.from_now,
city: "Long Beach",
price: 12,
price_cents: 12000,
genre: "Drama",

synopsis: "'Wish I Was Here' is the story of Aidan Bloom (played by me), a struggling actor, father and husband, who at 35 is still trying to find his identity; a purpose for his life. He and his wife are barely getting by financially and Aidan passes his time by fantasizing about being the great futuristic Space-Knight he'd always dreamed he'd be as a little kid.

When his ailing father can no longer afford to pay for private school for his two kids (ages 5 and 12) and the only available public school is on its last legs, Aidan reluctantly agrees to attempt to home-school them.",

scenario: "<div>
<p><strong>EXT. QUIET HILLS RECOVERY CENTER - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting in a wheelchair and grumpy as hell, FRANK NICHOLS (89), angrily works skeletal fingers in a vain attempt to remove a thick electronic BRACELET from his left arm.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s a damned invasion of my personal privacy is what it is.</p>

<p>&nbsp;</p>

<p>Readouts blink steadily. Frank stares at them, rapt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t want to see my heart beat.</p>

<p>&nbsp;</p>

<p>Standing behind Frank, BILL (60), Frank&rsquo;s son, places a calm hand on Frank&rsquo;s shoulder.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>BILL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You need to be monitored, Dad. Mary and I live too far away to help if something should happen. It&rsquo;s either the bracelet or a home companion. Your choice.</p>

<p>&nbsp;</p>

<p>Frank stews in his juices, then smacks the bracelet hard on the arm of his wheelchair.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. FRANK&rsquo;S HOUSE - DAY</strong></p>

<p>&nbsp;</p>

<p>A scratch at the door. The doorbell rings. More scratching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m coming, I&rsquo;m coming. Hold your horses.</p>

<p>&nbsp;</p>

<p>Relying heavily on a walker, Frank shuffles towards the door.</p>

<p>&nbsp;</p>

<p>Arthritic hands struggle with the doorknob and finally succeed. The door opens, revealing -</p>

<p>&nbsp;</p>

<p>A large, handsome, alert GERMAN SHEPARD.</p>

<p>&nbsp;</p>

<p>Frank looks at the pooch. Leans out. Looks around. Shrugs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Who rang the bell?</p>

<p>&nbsp;</p>

<p>The dog, CARL, looks up at Frank with soulful eyes.</p>
</div>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I did, Frank. My name is Carl.</p>

<p>&nbsp;</p>

<p>Frank gawks at the talking dog, then stumbles backwards. Carl follows and closes the door behind him.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. KITCHEN - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits alert while Frank nervously makes coffee.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>They didn&rsquo;t say anything about my companion being a talking dog.</p>

<p>&nbsp;</p>

<p>Carl looks Frank up and down. Says nothing.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I mean, I&rsquo;m allergic to dogs.</p>

<p>&nbsp;</p>

<p>Frank snatches a Kleenex from the counter, wipes his nose.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Don&rsquo;t worry, Frank. I&rsquo;m not a real dog. I&rsquo;m a Complex, Artificial, Realistic, Lifeform. C.A.R.L. Carl. And totally non-allergenic.</p>

<p>&nbsp;</p>

<p>Frank crumples the snot rag, sniffs the air, grimaces.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. LIVING ROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Frank scoots his walker to a comfy chair and falls into it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Rules. Gotta follow the rules. And my landlord won&rsquo;t allow Complex, Realistic, uh, dogs in his -</p>

<p>&nbsp;</p>

<p>Carl taps his head with his left paw.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s all in my noggin, Frank. Your entire portfolio. I know that you&rsquo;ve owned this home free and clear for over twenty years.</p>

<p>&nbsp;</p>

<p>Frank&rsquo;s eyes crinkle in a scowl.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>EXT. BATHROOM DOOR - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits patiently outside the bathroom door.</p>
</div>
</p>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>What about food? I can barely remember to feed myself.</p>

<p>&nbsp;</p>

<p>Carl stands on his hind legs and opens the bathroom door.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BATHROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting on the toilet, Frank jerks in surprise, letting out a SQUEAKY FART, as Carl enters.</p>

<p>&nbsp;</p>

<p>Carl remains upright as a hatch on his belly opens, revealing all sorts of high tech components.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Cold fusion powered. A little water each week and I&rsquo;m good. And between you and me, I kinda prefer toilet water. The porcelain adds a certain something -</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Do you mind? I&rsquo;m trying to, er...</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s brown eyes widen, his tail droops and he backs out, closing the door behind him.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sorry. I should have knocked.</p>

<p>&nbsp;</p>

<p>Frustrated, Frank&rsquo;s hands clench into gnarled fists. Then, his eyebrows raise with a thought.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You sound like a pretty high tech pup, alright. What if something happens to those computers and gadgets and stuff inside you? I can&rsquo;t afford those kind of repairs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Bumper to bumper warranty, Frank.</p>

<p>&nbsp;</p>

<p style='margin-left:101.0pt;'><strong>FRANK (under his breath)</strong></p>

<p style='margin-left:101.0pt;'>&nbsp;</p>

<p style='margin-left:72.0pt;'>Dang it.</p>

<p>&nbsp;</p>

<p>Frank eyes search the room for inspiration - and find it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m in no condition to take you for walkees when you need to, you know, do what I&rsquo;m doing right now.</p>
</div>
</p>

<p>&nbsp;
<div>
<p>A pause, then a knock on the door. Frank rolls his eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>For goodness sake. Come in!</p>

<p>&nbsp;</p>

<p>The door swings open slowly. Carl faces Frank, tail wagging.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m totally self contained. You don&rsquo;t have to worry about a thing. In fact, I&rsquo;ll clean up after you. Plus, I cook, do the laundry and can administer all of your necessary medications.</p>

<p>&nbsp;</p>

<p>Frank stares at Carl, words not coming, and reaches for the toilet paper. Carl gets the hint and turns to leave.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BEDROOM - NIGHT</strong></p>

<p>&nbsp;</p>

<p>Sitting on the edge of his bed, Frank pulls on a nightshirt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sounds to me like you&rsquo;re nothing more than a flea bitten nursemaid. I suppose you&rsquo;re gonna report my every move to my doctors and family, too.</p>

<p>&nbsp;</p>

<p>Carl gazes up at Frank with sad, brown doggy eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s not like that at all, Frank. I&rsquo;m here to help you. I&rsquo;ll be by your side day and night. If you need something, I&rsquo;ll fetch it.</p>

<p>&nbsp;</p>

<p>Frank looks dubious, then turns his attention to his night stand, searching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Where&rsquo;s the darned TV remote?</p>

<p>&nbsp;</p>

<p>Carl sniffs around and retrieves the remote from under the bed. He sets it gently next to Frank&rsquo;s hand.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t need a nurse maid. I don&rsquo;t need a dog, neither. I don&rsquo;t need nothin&rsquo;. Nothin&rsquo; at all.</p>

<p>&nbsp;</p>

<p>He clicks the remote. Nothing happens. Nothing at all.</p>
</div>
</p>

<p>&nbsp;
<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>
</p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>&lsquo;Cept maybe some batteries.</p>

<p>&nbsp;</p>

<p>Carl stares at the TV and blinks. The TV comes to life.</p>

<p>&nbsp;</p>

<p>Frank looks at Carl, then the TV. He smiles slightly.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Nice trick.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Thanks. But I&rsquo;m not here to do tricks, Frank.</p>

<p>&nbsp;</p>

<p>Tail wagging with joy, Carl jumps onto the bed next to Frank.</p>

<p>&nbsp;</p>

<p>He leans his muzzle in close to Frank&rsquo;s face.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m here to be your best friend.</p>

<p>&nbsp;</p>

<p>And with that, Carl licks the entire side of Frank&rsquo;s face, jumps down and curls into a furry ball next to the bed.</p>

<p>&nbsp;</p>

<p>As Frank slowly wipes the very realistic slobber from his cheek, he looks down at Carl and considers.</p>

<p>&nbsp;</p>

<p>His face softens. He reaches down and pats Carl on the head.</p>

<p>&nbsp;</p>

<p>Carl lets out a contented sigh.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I guess having a dog won&rsquo;t be so bad. Always wanted a dog, in fact.</p>

<p>&nbsp;</p>

<p>Frank looks up at the TV, which shows an informercial. He frowns.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Hey, um, Carl... would you mind switching to ESPN. The ball game&rsquo;s on in a few minutes.</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s tail wags a little as the TV channel switches over.</p>
",

number_of_participants: 5
)
project4.remote_project_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466499225/maxdogmovie_p9l4tq.jpg'
user4.remote_user_picture_url= 'http://res.cloudinary.com/dj9tgdqp1/image/upload/v1466523525/gzeedhgu9vcfw4yblfyr.jpg'
user4.save
project4.users << user4
project4.save

#----------------------------------------------------------------------------------------------------------------------------------

user5 = User.new(
first_name: "Jane",
last_name: "Adams",
birth_date: 29.years.ago,
city: "Los Angeles",
phone_number: "(321) 800-8244",
email: "user5@toto.com",
password: '12345678',
password_confirmation: '12345678'
)

project5 = Project.new(
name: "For The Love Of Spock",
start_date: 3.days.from_now,
end_date: 34.days.from_now,
city: "Los Angeles",
price: 12,
price_cents: 12000,
genre: "Documentary",

synopsis: "Last year, just before Thanksgiving, I approached Leonard Nimoy about the possibility of working together on a film about Mr. Spock. I had skimmed through some of the books on the making of Star Trek and felt there was so much more to explore about the birth and evolution of Spock. And the timing seemed right, as the 50th anniversary of Star Trek: The Original Series was not that far away. He agreed that now was the right time, and that he was 100% committed to collaborating with me on this project.",

scenario: "<div>
<p><strong>EXT. QUIET HILLS RECOVERY CENTER - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting in a wheelchair and grumpy as hell, FRANK NICHOLS (89), angrily works skeletal fingers in a vain attempt to remove a thick electronic BRACELET from his left arm.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s a damned invasion of my personal privacy is what it is.</p>

<p>&nbsp;</p>

<p>Readouts blink steadily. Frank stares at them, rapt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t want to see my heart beat.</p>

<p>&nbsp;</p>

<p>Standing behind Frank, BILL (60), Frank&rsquo;s son, places a calm hand on Frank&rsquo;s shoulder.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>BILL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You need to be monitored, Dad. Mary and I live too far away to help if something should happen. It&rsquo;s either the bracelet or a home companion. Your choice.</p>

<p>&nbsp;</p>

<p>Frank stews in his juices, then smacks the bracelet hard on the arm of his wheelchair.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. FRANK&rsquo;S HOUSE - DAY</strong></p>

<p>&nbsp;</p>

<p>A scratch at the door. The doorbell rings. More scratching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m coming, I&rsquo;m coming. Hold your horses.</p>

<p>&nbsp;</p>

<p>Relying heavily on a walker, Frank shuffles towards the door.</p>

<p>&nbsp;</p>

<p>Arthritic hands struggle with the doorknob and finally succeed. The door opens, revealing -</p>

<p>&nbsp;</p>

<p>A large, handsome, alert GERMAN SHEPARD.</p>

<p>&nbsp;</p>

<p>Frank looks at the pooch. Leans out. Looks around. Shrugs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Who rang the bell?</p>

<p>&nbsp;</p>

<p>The dog, CARL, looks up at Frank with soulful eyes.</p>
</div>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I did, Frank. My name is Carl.</p>

<p>&nbsp;</p>

<p>Frank gawks at the talking dog, then stumbles backwards. Carl follows and closes the door behind him.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. KITCHEN - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits alert while Frank nervously makes coffee.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>They didn&rsquo;t say anything about my companion being a talking dog.</p>

<p>&nbsp;</p>

<p>Carl looks Frank up and down. Says nothing.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I mean, I&rsquo;m allergic to dogs.</p>

<p>&nbsp;</p>

<p>Frank snatches a Kleenex from the counter, wipes his nose.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Don&rsquo;t worry, Frank. I&rsquo;m not a real dog. I&rsquo;m a Complex, Artificial, Realistic, Lifeform. C.A.R.L. Carl. And totally non-allergenic.</p>

<p>&nbsp;</p>

<p>Frank crumples the snot rag, sniffs the air, grimaces.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. LIVING ROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Frank scoots his walker to a comfy chair and falls into it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Rules. Gotta follow the rules. And my landlord won&rsquo;t allow Complex, Realistic, uh, dogs in his -</p>

<p>&nbsp;</p>

<p>Carl taps his head with his left paw.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s all in my noggin, Frank. Your entire portfolio. I know that you&rsquo;ve owned this home free and clear for over twenty years.</p>

<p>&nbsp;</p>

<p>Frank&rsquo;s eyes crinkle in a scowl.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>EXT. BATHROOM DOOR - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits patiently outside the bathroom door.</p>
</div>
</p>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>What about food? I can barely remember to feed myself.</p>

<p>&nbsp;</p>

<p>Carl stands on his hind legs and opens the bathroom door.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BATHROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting on the toilet, Frank jerks in surprise, letting out a SQUEAKY FART, as Carl enters.</p>

<p>&nbsp;</p>

<p>Carl remains upright as a hatch on his belly opens, revealing all sorts of high tech components.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Cold fusion powered. A little water each week and I&rsquo;m good. And between you and me, I kinda prefer toilet water. The porcelain adds a certain something -</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Do you mind? I&rsquo;m trying to, er...</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s brown eyes widen, his tail droops and he backs out, closing the door behind him.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sorry. I should have knocked.</p>

<p>&nbsp;</p>

<p>Frustrated, Frank&rsquo;s hands clench into gnarled fists. Then, his eyebrows raise with a thought.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You sound like a pretty high tech pup, alright. What if something happens to those computers and gadgets and stuff inside you? I can&rsquo;t afford those kind of repairs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Bumper to bumper warranty, Frank.</p>

<p>&nbsp;</p>

<p style='margin-left:101.0pt;'><strong>FRANK (under his breath)</strong></p>

<p style='margin-left:101.0pt;'>&nbsp;</p>

<p style='margin-left:72.0pt;'>Dang it.</p>

<p>&nbsp;</p>

<p>Frank eyes search the room for inspiration - and find it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m in no condition to take you for walkees when you need to, you know, do what I&rsquo;m doing right now.</p>
</div>
</p>

<p>&nbsp;
<div>
<p>A pause, then a knock on the door. Frank rolls his eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>For goodness sake. Come in!</p>

<p>&nbsp;</p>

<p>The door swings open slowly. Carl faces Frank, tail wagging.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m totally self contained. You don&rsquo;t have to worry about a thing. In fact, I&rsquo;ll clean up after you. Plus, I cook, do the laundry and can administer all of your necessary medications.</p>

<p>&nbsp;</p>

<p>Frank stares at Carl, words not coming, and reaches for the toilet paper. Carl gets the hint and turns to leave.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BEDROOM - NIGHT</strong></p>

<p>&nbsp;</p>

<p>Sitting on the edge of his bed, Frank pulls on a nightshirt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sounds to me like you&rsquo;re nothing more than a flea bitten nursemaid. I suppose you&rsquo;re gonna report my every move to my doctors and family, too.</p>

<p>&nbsp;</p>

<p>Carl gazes up at Frank with sad, brown doggy eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s not like that at all, Frank. I&rsquo;m here to help you. I&rsquo;ll be by your side day and night. If you need something, I&rsquo;ll fetch it.</p>

<p>&nbsp;</p>

<p>Frank looks dubious, then turns his attention to his night stand, searching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Where&rsquo;s the darned TV remote?</p>

<p>&nbsp;</p>

<p>Carl sniffs around and retrieves the remote from under the bed. He sets it gently next to Frank&rsquo;s hand.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t need a nurse maid. I don&rsquo;t need a dog, neither. I don&rsquo;t need nothin&rsquo;. Nothin&rsquo; at all.</p>

<p>&nbsp;</p>

<p>He clicks the remote. Nothing happens. Nothing at all.</p>
</div>
</p>

<p>&nbsp;
<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>
</p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>&lsquo;Cept maybe some batteries.</p>

<p>&nbsp;</p>

<p>Carl stares at the TV and blinks. The TV comes to life.</p>

<p>&nbsp;</p>

<p>Frank looks at Carl, then the TV. He smiles slightly.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Nice trick.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Thanks. But I&rsquo;m not here to do tricks, Frank.</p>

<p>&nbsp;</p>

<p>Tail wagging with joy, Carl jumps onto the bed next to Frank.</p>

<p>&nbsp;</p>

<p>He leans his muzzle in close to Frank&rsquo;s face.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m here to be your best friend.</p>

<p>&nbsp;</p>

<p>And with that, Carl licks the entire side of Frank&rsquo;s face, jumps down and curls into a furry ball next to the bed.</p>

<p>&nbsp;</p>

<p>As Frank slowly wipes the very realistic slobber from his cheek, he looks down at Carl and considers.</p>

<p>&nbsp;</p>

<p>His face softens. He reaches down and pats Carl on the head.</p>

<p>&nbsp;</p>

<p>Carl lets out a contented sigh.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I guess having a dog won&rsquo;t be so bad. Always wanted a dog, in fact.</p>

<p>&nbsp;</p>

<p>Frank looks up at the TV, which shows an informercial. He frowns.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Hey, um, Carl... would you mind switching to ESPN. The ball game&rsquo;s on in a few minutes.</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s tail wags a little as the TV channel switches over.</p>
",

number_of_participants: 4
)
project5.remote_project_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466499227/for-the-love-of-spock_czjkcz.png'
user5.remote_user_picture_url= 'http://res.cloudinary.com/dj9tgdqp1/image/upload/v1466523595/pjwhgh8grg1j1aas73nh.jpg'
user5.save
project5.users << user5
project5.save

#----------------------------------------------------------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------------------------------------------------

user6 = User.new(
first_name: "Franck",
last_name: "Seto",
birth_date: 43.years.ago,
city: "Oakland",
phone_number: "(321) 800-8244",
email: "user6@toto.com",
password: '12345678',
password_confirmation: '12345678'
)

project6 = Project.new(
name: "Oakland Central Station",
start_date: 5.days.from_now,
end_date: 25.days.from_now,
city: "Oakland",
price: 12,
price_cents: 12000,
genre: "Drama",

synopsis: "Two young people from different sides of the planet meet accidentally at Oakland Central Station. Intrigued by each other, they feel like getting in contact with one another, but are struggling to find a way given today's reserved public culture until...",

scenario: "<div>
<p><strong>EXT. QUIET HILLS RECOVERY CENTER - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting in a wheelchair and grumpy as hell, FRANK NICHOLS (89), angrily works skeletal fingers in a vain attempt to remove a thick electronic BRACELET from his left arm.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s a damned invasion of my personal privacy is what it is.</p>

<p>&nbsp;</p>

<p>Readouts blink steadily. Frank stares at them, rapt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t want to see my heart beat.</p>

<p>&nbsp;</p>

<p>Standing behind Frank, BILL (60), Frank&rsquo;s son, places a calm hand on Frank&rsquo;s shoulder.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>BILL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You need to be monitored, Dad. Mary and I live too far away to help if something should happen. It&rsquo;s either the bracelet or a home companion. Your choice.</p>

<p>&nbsp;</p>

<p>Frank stews in his juices, then smacks the bracelet hard on the arm of his wheelchair.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. FRANK&rsquo;S HOUSE - DAY</strong></p>

<p>&nbsp;</p>

<p>A scratch at the door. The doorbell rings. More scratching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m coming, I&rsquo;m coming. Hold your horses.</p>

<p>&nbsp;</p>

<p>Relying heavily on a walker, Frank shuffles towards the door.</p>

<p>&nbsp;</p>

<p>Arthritic hands struggle with the doorknob and finally succeed. The door opens, revealing -</p>

<p>&nbsp;</p>

<p>A large, handsome, alert GERMAN SHEPARD.</p>

<p>&nbsp;</p>

<p>Frank looks at the pooch. Leans out. Looks around. Shrugs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Who rang the bell?</p>

<p>&nbsp;</p>

<p>The dog, CARL, looks up at Frank with soulful eyes.</p>
</div>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I did, Frank. My name is Carl.</p>

<p>&nbsp;</p>

<p>Frank gawks at the talking dog, then stumbles backwards. Carl follows and closes the door behind him.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. KITCHEN - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits alert while Frank nervously makes coffee.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>They didn&rsquo;t say anything about my companion being a talking dog.</p>

<p>&nbsp;</p>

<p>Carl looks Frank up and down. Says nothing.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I mean, I&rsquo;m allergic to dogs.</p>

<p>&nbsp;</p>

<p>Frank snatches a Kleenex from the counter, wipes his nose.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Don&rsquo;t worry, Frank. I&rsquo;m not a real dog. I&rsquo;m a Complex, Artificial, Realistic, Lifeform. C.A.R.L. Carl. And totally non-allergenic.</p>

<p>&nbsp;</p>

<p>Frank crumples the snot rag, sniffs the air, grimaces.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. LIVING ROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Frank scoots his walker to a comfy chair and falls into it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Rules. Gotta follow the rules. And my landlord won&rsquo;t allow Complex, Realistic, uh, dogs in his -</p>

<p>&nbsp;</p>

<p>Carl taps his head with his left paw.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s all in my noggin, Frank. Your entire portfolio. I know that you&rsquo;ve owned this home free and clear for over twenty years.</p>

<p>&nbsp;</p>

<p>Frank&rsquo;s eyes crinkle in a scowl.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>EXT. BATHROOM DOOR - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits patiently outside the bathroom door.</p>
</div>
</p>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>What about food? I can barely remember to feed myself.</p>

<p>&nbsp;</p>

<p>Carl stands on his hind legs and opens the bathroom door.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BATHROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting on the toilet, Frank jerks in surprise, letting out a SQUEAKY FART, as Carl enters.</p>

<p>&nbsp;</p>

<p>Carl remains upright as a hatch on his belly opens, revealing all sorts of high tech components.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Cold fusion powered. A little water each week and I&rsquo;m good. And between you and me, I kinda prefer toilet water. The porcelain adds a certain something -</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Do you mind? I&rsquo;m trying to, er...</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s brown eyes widen, his tail droops and he backs out, closing the door behind him.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sorry. I should have knocked.</p>

<p>&nbsp;</p>

<p>Frustrated, Frank&rsquo;s hands clench into gnarled fists. Then, his eyebrows raise with a thought.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You sound like a pretty high tech pup, alright. What if something happens to those computers and gadgets and stuff inside you? I can&rsquo;t afford those kind of repairs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Bumper to bumper warranty, Frank.</p>

<p>&nbsp;</p>

<p style='margin-left:101.0pt;'><strong>FRANK (under his breath)</strong></p>

<p style='margin-left:101.0pt;'>&nbsp;</p>

<p style='margin-left:72.0pt;'>Dang it.</p>

<p>&nbsp;</p>

<p>Frank eyes search the room for inspiration - and find it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m in no condition to take you for walkees when you need to, you know, do what I&rsquo;m doing right now.</p>
</div>
</p>

<p>&nbsp;
<div>
<p>A pause, then a knock on the door. Frank rolls his eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>For goodness sake. Come in!</p>

<p>&nbsp;</p>

<p>The door swings open slowly. Carl faces Frank, tail wagging.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m totally self contained. You don&rsquo;t have to worry about a thing. In fact, I&rsquo;ll clean up after you. Plus, I cook, do the laundry and can administer all of your necessary medications.</p>

<p>&nbsp;</p>

<p>Frank stares at Carl, words not coming, and reaches for the toilet paper. Carl gets the hint and turns to leave.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BEDROOM - NIGHT</strong></p>

<p>&nbsp;</p>

<p>Sitting on the edge of his bed, Frank pulls on a nightshirt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sounds to me like you&rsquo;re nothing more than a flea bitten nursemaid. I suppose you&rsquo;re gonna report my every move to my doctors and family, too.</p>

<p>&nbsp;</p>

<p>Carl gazes up at Frank with sad, brown doggy eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s not like that at all, Frank. I&rsquo;m here to help you. I&rsquo;ll be by your side day and night. If you need something, I&rsquo;ll fetch it.</p>

<p>&nbsp;</p>

<p>Frank looks dubious, then turns his attention to his night stand, searching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Where&rsquo;s the darned TV remote?</p>

<p>&nbsp;</p>

<p>Carl sniffs around and retrieves the remote from under the bed. He sets it gently next to Frank&rsquo;s hand.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t need a nurse maid. I don&rsquo;t need a dog, neither. I don&rsquo;t need nothin&rsquo;. Nothin&rsquo; at all.</p>

<p>&nbsp;</p>

<p>He clicks the remote. Nothing happens. Nothing at all.</p>
</div>
</p>

<p>&nbsp;
<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>
</p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>&lsquo;Cept maybe some batteries.</p>

<p>&nbsp;</p>

<p>Carl stares at the TV and blinks. The TV comes to life.</p>

<p>&nbsp;</p>

<p>Frank looks at Carl, then the TV. He smiles slightly.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Nice trick.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Thanks. But I&rsquo;m not here to do tricks, Frank.</p>

<p>&nbsp;</p>

<p>Tail wagging with joy, Carl jumps onto the bed next to Frank.</p>

<p>&nbsp;</p>

<p>He leans his muzzle in close to Frank&rsquo;s face.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m here to be your best friend.</p>

<p>&nbsp;</p>

<p>And with that, Carl licks the entire side of Frank&rsquo;s face, jumps down and curls into a furry ball next to the bed.</p>

<p>&nbsp;</p>

<p>As Frank slowly wipes the very realistic slobber from his cheek, he looks down at Carl and considers.</p>

<p>&nbsp;</p>

<p>His face softens. He reaches down and pats Carl on the head.</p>

<p>&nbsp;</p>

<p>Carl lets out a contented sigh.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I guess having a dog won&rsquo;t be so bad. Always wanted a dog, in fact.</p>

<p>&nbsp;</p>

<p>Frank looks up at the TV, which shows an informercial. He frowns.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Hey, um, Carl... would you mind switching to ESPN. The ball game&rsquo;s on in a few minutes.</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s tail wags a little as the TV channel switches over.</p>
",

number_of_participants: 3
)
project6.remote_project_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466589765/Copenhagen_Central_Station_pxgqvo.jpg'
user6.remote_user_picture_url= 'http://res.cloudinary.com/dj9tgdqp1/image/upload/v1466523595/pjwhgh8grg1j1aas73nh.jpg'
user6.save
project6.users << user6
project6.save

#----------------------------------------------------------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------------------------------------------------

user7 = User.new(
first_name: "Marina",
last_name: "Delana",
birth_date: 19.years.ago,
city: "Sacramento",
phone_number: "(321) 800-8244",
email: "user7@toto.com",
password: '12345678',
password_confirmation: '12345678'
)

project7 = Project.new(
name: "Do You Take This Man",
start_date: 2.days.from_now,
end_date: 19.days.from_now,
city: "Sacramento",
genre: "Drama",
price: 12,
price_cents: 12000,
synopsis: "DO YOU TAKE THIS MAN explores the different kinds of relationships we have in our lives, the different kinds of commitments we make, and ultimately what it means to be married - the ultimate commitment of choice. I wanted to tell a story about two very different people and how their differences influence and impact their relationship with each other, and with the other people in their lives, for better and for worse.",

scenario: "<div>
<p><strong>EXT. QUIET HILLS RECOVERY CENTER - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting in a wheelchair and grumpy as hell, FRANK NICHOLS (89), angrily works skeletal fingers in a vain attempt to remove a thick electronic BRACELET from his left arm.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s a damned invasion of my personal privacy is what it is.</p>

<p>&nbsp;</p>

<p>Readouts blink steadily. Frank stares at them, rapt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t want to see my heart beat.</p>

<p>&nbsp;</p>

<p>Standing behind Frank, BILL (60), Frank&rsquo;s son, places a calm hand on Frank&rsquo;s shoulder.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>BILL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You need to be monitored, Dad. Mary and I live too far away to help if something should happen. It&rsquo;s either the bracelet or a home companion. Your choice.</p>

<p>&nbsp;</p>

<p>Frank stews in his juices, then smacks the bracelet hard on the arm of his wheelchair.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. FRANK&rsquo;S HOUSE - DAY</strong></p>

<p>&nbsp;</p>

<p>A scratch at the door. The doorbell rings. More scratching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m coming, I&rsquo;m coming. Hold your horses.</p>

<p>&nbsp;</p>

<p>Relying heavily on a walker, Frank shuffles towards the door.</p>

<p>&nbsp;</p>

<p>Arthritic hands struggle with the doorknob and finally succeed. The door opens, revealing -</p>

<p>&nbsp;</p>

<p>A large, handsome, alert GERMAN SHEPARD.</p>

<p>&nbsp;</p>

<p>Frank looks at the pooch. Leans out. Looks around. Shrugs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Who rang the bell?</p>

<p>&nbsp;</p>

<p>The dog, CARL, looks up at Frank with soulful eyes.</p>
</div>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I did, Frank. My name is Carl.</p>

<p>&nbsp;</p>

<p>Frank gawks at the talking dog, then stumbles backwards. Carl follows and closes the door behind him.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. KITCHEN - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits alert while Frank nervously makes coffee.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>They didn&rsquo;t say anything about my companion being a talking dog.</p>

<p>&nbsp;</p>

<p>Carl looks Frank up and down. Says nothing.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I mean, I&rsquo;m allergic to dogs.</p>

<p>&nbsp;</p>

<p>Frank snatches a Kleenex from the counter, wipes his nose.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Don&rsquo;t worry, Frank. I&rsquo;m not a real dog. I&rsquo;m a Complex, Artificial, Realistic, Lifeform. C.A.R.L. Carl. And totally non-allergenic.</p>

<p>&nbsp;</p>

<p>Frank crumples the snot rag, sniffs the air, grimaces.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. LIVING ROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Frank scoots his walker to a comfy chair and falls into it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Rules. Gotta follow the rules. And my landlord won&rsquo;t allow Complex, Realistic, uh, dogs in his -</p>

<p>&nbsp;</p>

<p>Carl taps his head with his left paw.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s all in my noggin, Frank. Your entire portfolio. I know that you&rsquo;ve owned this home free and clear for over twenty years.</p>

<p>&nbsp;</p>

<p>Frank&rsquo;s eyes crinkle in a scowl.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>EXT. BATHROOM DOOR - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits patiently outside the bathroom door.</p>
</div>
</p>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>What about food? I can barely remember to feed myself.</p>

<p>&nbsp;</p>

<p>Carl stands on his hind legs and opens the bathroom door.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BATHROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting on the toilet, Frank jerks in surprise, letting out a SQUEAKY FART, as Carl enters.</p>

<p>&nbsp;</p>

<p>Carl remains upright as a hatch on his belly opens, revealing all sorts of high tech components.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Cold fusion powered. A little water each week and I&rsquo;m good. And between you and me, I kinda prefer toilet water. The porcelain adds a certain something -</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Do you mind? I&rsquo;m trying to, er...</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s brown eyes widen, his tail droops and he backs out, closing the door behind him.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sorry. I should have knocked.</p>

<p>&nbsp;</p>

<p>Frustrated, Frank&rsquo;s hands clench into gnarled fists. Then, his eyebrows raise with a thought.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You sound like a pretty high tech pup, alright. What if something happens to those computers and gadgets and stuff inside you? I can&rsquo;t afford those kind of repairs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Bumper to bumper warranty, Frank.</p>

<p>&nbsp;</p>

<p style='margin-left:101.0pt;'><strong>FRANK (under his breath)</strong></p>

<p style='margin-left:101.0pt;'>&nbsp;</p>

<p style='margin-left:72.0pt;'>Dang it.</p>

<p>&nbsp;</p>

<p>Frank eyes search the room for inspiration - and find it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m in no condition to take you for walkees when you need to, you know, do what I&rsquo;m doing right now.</p>
</div>
</p>

<p>&nbsp;
<div>
<p>A pause, then a knock on the door. Frank rolls his eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>For goodness sake. Come in!</p>

<p>&nbsp;</p>

<p>The door swings open slowly. Carl faces Frank, tail wagging.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m totally self contained. You don&rsquo;t have to worry about a thing. In fact, I&rsquo;ll clean up after you. Plus, I cook, do the laundry and can administer all of your necessary medications.</p>

<p>&nbsp;</p>

<p>Frank stares at Carl, words not coming, and reaches for the toilet paper. Carl gets the hint and turns to leave.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BEDROOM - NIGHT</strong></p>

<p>&nbsp;</p>

<p>Sitting on the edge of his bed, Frank pulls on a nightshirt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sounds to me like you&rsquo;re nothing more than a flea bitten nursemaid. I suppose you&rsquo;re gonna report my every move to my doctors and family, too.</p>

<p>&nbsp;</p>

<p>Carl gazes up at Frank with sad, brown doggy eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s not like that at all, Frank. I&rsquo;m here to help you. I&rsquo;ll be by your side day and night. If you need something, I&rsquo;ll fetch it.</p>

<p>&nbsp;</p>

<p>Frank looks dubious, then turns his attention to his night stand, searching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Where&rsquo;s the darned TV remote?</p>

<p>&nbsp;</p>

<p>Carl sniffs around and retrieves the remote from under the bed. He sets it gently next to Frank&rsquo;s hand.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t need a nurse maid. I don&rsquo;t need a dog, neither. I don&rsquo;t need nothin&rsquo;. Nothin&rsquo; at all.</p>

<p>&nbsp;</p>

<p>He clicks the remote. Nothing happens. Nothing at all.</p>
</div>
</p>

<p>&nbsp;
<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>
</p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>&lsquo;Cept maybe some batteries.</p>

<p>&nbsp;</p>

<p>Carl stares at the TV and blinks. The TV comes to life.</p>

<p>&nbsp;</p>

<p>Frank looks at Carl, then the TV. He smiles slightly.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Nice trick.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Thanks. But I&rsquo;m not here to do tricks, Frank.</p>

<p>&nbsp;</p>

<p>Tail wagging with joy, Carl jumps onto the bed next to Frank.</p>

<p>&nbsp;</p>

<p>He leans his muzzle in close to Frank&rsquo;s face.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m here to be your best friend.</p>

<p>&nbsp;</p>

<p>And with that, Carl licks the entire side of Frank&rsquo;s face, jumps down and curls into a furry ball next to the bed.</p>

<p>&nbsp;</p>

<p>As Frank slowly wipes the very realistic slobber from his cheek, he looks down at Carl and considers.</p>

<p>&nbsp;</p>

<p>His face softens. He reaches down and pats Carl on the head.</p>

<p>&nbsp;</p>

<p>Carl lets out a contented sigh.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I guess having a dog won&rsquo;t be so bad. Always wanted a dog, in fact.</p>

<p>&nbsp;</p>

<p>Frank looks up at the TV, which shows an informercial. He frowns.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Hey, um, Carl... would you mind switching to ESPN. The ball game&rsquo;s on in a few minutes.</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s tail wags a little as the TV channel switches over.</p>
",

number_of_participants: 6
)
project7.remote_project_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466590457/maxresdefault_4_h2cnru.jpg'
user7.remote_user_picture_url= 'http://res.cloudinary.com/dj9tgdqp1/image/upload/v1466523595/pjwhgh8grg1j1aas73nh.jpg'
user7.save
project7.users << user7
project7.save

#----------------------------------------------------------------------------------------------------------------------------------

user8 = User.new(
first_name: "Roy",
last_name: "Taylor",
birth_date: 26.years.ago,
city: "San Diego",
phone_number: "(321) 800-8244",
email: "user8@toto.com",
password: '12345678',
password_confirmation: '12345678'
)

project8 = Project.new(
name: "The Replacement",
start_date: 40.days.from_now,
end_date: 70.days.from_now,
city: "San Diego",
genre: "Sci-Fi",
price: 12,
price_cents: 12000,
synopsis: "The Replacement is a dark comedy set in a future where growing your own clones is as common as getting a new outfit. But sometimes your flawless clones make you feel like a loser. Simply put, it's a comedic take on social progress moving faster than anyone is prepared for.",

scenario: "<div>
<p><strong>EXT. QUIET HILLS RECOVERY CENTER - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting in a wheelchair and grumpy as hell, FRANK NICHOLS (89), angrily works skeletal fingers in a vain attempt to remove a thick electronic BRACELET from his left arm.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s a damned invasion of my personal privacy is what it is.</p>

<p>&nbsp;</p>

<p>Readouts blink steadily. Frank stares at them, rapt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t want to see my heart beat.</p>

<p>&nbsp;</p>

<p>Standing behind Frank, BILL (60), Frank&rsquo;s son, places a calm hand on Frank&rsquo;s shoulder.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>BILL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You need to be monitored, Dad. Mary and I live too far away to help if something should happen. It&rsquo;s either the bracelet or a home companion. Your choice.</p>

<p>&nbsp;</p>

<p>Frank stews in his juices, then smacks the bracelet hard on the arm of his wheelchair.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. FRANK&rsquo;S HOUSE - DAY</strong></p>

<p>&nbsp;</p>

<p>A scratch at the door. The doorbell rings. More scratching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m coming, I&rsquo;m coming. Hold your horses.</p>

<p>&nbsp;</p>

<p>Relying heavily on a walker, Frank shuffles towards the door.</p>

<p>&nbsp;</p>

<p>Arthritic hands struggle with the doorknob and finally succeed. The door opens, revealing -</p>

<p>&nbsp;</p>

<p>A large, handsome, alert GERMAN SHEPARD.</p>

<p>&nbsp;</p>

<p>Frank looks at the pooch. Leans out. Looks around. Shrugs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Who rang the bell?</p>

<p>&nbsp;</p>

<p>The dog, CARL, looks up at Frank with soulful eyes.</p>
</div>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I did, Frank. My name is Carl.</p>

<p>&nbsp;</p>

<p>Frank gawks at the talking dog, then stumbles backwards. Carl follows and closes the door behind him.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. KITCHEN - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits alert while Frank nervously makes coffee.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>They didn&rsquo;t say anything about my companion being a talking dog.</p>

<p>&nbsp;</p>

<p>Carl looks Frank up and down. Says nothing.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I mean, I&rsquo;m allergic to dogs.</p>

<p>&nbsp;</p>

<p>Frank snatches a Kleenex from the counter, wipes his nose.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Don&rsquo;t worry, Frank. I&rsquo;m not a real dog. I&rsquo;m a Complex, Artificial, Realistic, Lifeform. C.A.R.L. Carl. And totally non-allergenic.</p>

<p>&nbsp;</p>

<p>Frank crumples the snot rag, sniffs the air, grimaces.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. LIVING ROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Frank scoots his walker to a comfy chair and falls into it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Rules. Gotta follow the rules. And my landlord won&rsquo;t allow Complex, Realistic, uh, dogs in his -</p>

<p>&nbsp;</p>

<p>Carl taps his head with his left paw.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s all in my noggin, Frank. Your entire portfolio. I know that you&rsquo;ve owned this home free and clear for over twenty years.</p>

<p>&nbsp;</p>

<p>Frank&rsquo;s eyes crinkle in a scowl.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>EXT. BATHROOM DOOR - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits patiently outside the bathroom door.</p>
</div>
</p>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>What about food? I can barely remember to feed myself.</p>

<p>&nbsp;</p>

<p>Carl stands on his hind legs and opens the bathroom door.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BATHROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting on the toilet, Frank jerks in surprise, letting out a SQUEAKY FART, as Carl enters.</p>

<p>&nbsp;</p>

<p>Carl remains upright as a hatch on his belly opens, revealing all sorts of high tech components.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Cold fusion powered. A little water each week and I&rsquo;m good. And between you and me, I kinda prefer toilet water. The porcelain adds a certain something -</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Do you mind? I&rsquo;m trying to, er...</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s brown eyes widen, his tail droops and he backs out, closing the door behind him.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sorry. I should have knocked.</p>

<p>&nbsp;</p>

<p>Frustrated, Frank&rsquo;s hands clench into gnarled fists. Then, his eyebrows raise with a thought.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You sound like a pretty high tech pup, alright. What if something happens to those computers and gadgets and stuff inside you? I can&rsquo;t afford those kind of repairs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Bumper to bumper warranty, Frank.</p>

<p>&nbsp;</p>

<p style='margin-left:101.0pt;'><strong>FRANK (under his breath)</strong></p>

<p style='margin-left:101.0pt;'>&nbsp;</p>

<p style='margin-left:72.0pt;'>Dang it.</p>

<p>&nbsp;</p>

<p>Frank eyes search the room for inspiration - and find it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m in no condition to take you for walkees when you need to, you know, do what I&rsquo;m doing right now.</p>
</div>
</p>

<p>&nbsp;
<div>
<p>A pause, then a knock on the door. Frank rolls his eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>For goodness sake. Come in!</p>

<p>&nbsp;</p>

<p>The door swings open slowly. Carl faces Frank, tail wagging.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m totally self contained. You don&rsquo;t have to worry about a thing. In fact, I&rsquo;ll clean up after you. Plus, I cook, do the laundry and can administer all of your necessary medications.</p>

<p>&nbsp;</p>

<p>Frank stares at Carl, words not coming, and reaches for the toilet paper. Carl gets the hint and turns to leave.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BEDROOM - NIGHT</strong></p>

<p>&nbsp;</p>

<p>Sitting on the edge of his bed, Frank pulls on a nightshirt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sounds to me like you&rsquo;re nothing more than a flea bitten nursemaid. I suppose you&rsquo;re gonna report my every move to my doctors and family, too.</p>

<p>&nbsp;</p>

<p>Carl gazes up at Frank with sad, brown doggy eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s not like that at all, Frank. I&rsquo;m here to help you. I&rsquo;ll be by your side day and night. If you need something, I&rsquo;ll fetch it.</p>

<p>&nbsp;</p>

<p>Frank looks dubious, then turns his attention to his night stand, searching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Where&rsquo;s the darned TV remote?</p>

<p>&nbsp;</p>

<p>Carl sniffs around and retrieves the remote from under the bed. He sets it gently next to Frank&rsquo;s hand.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t need a nurse maid. I don&rsquo;t need a dog, neither. I don&rsquo;t need nothin&rsquo;. Nothin&rsquo; at all.</p>

<p>&nbsp;</p>

<p>He clicks the remote. Nothing happens. Nothing at all.</p>
</div>
</p>

<p>&nbsp;
<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>
</p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>&lsquo;Cept maybe some batteries.</p>

<p>&nbsp;</p>

<p>Carl stares at the TV and blinks. The TV comes to life.</p>

<p>&nbsp;</p>

<p>Frank looks at Carl, then the TV. He smiles slightly.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Nice trick.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Thanks. But I&rsquo;m not here to do tricks, Frank.</p>

<p>&nbsp;</p>

<p>Tail wagging with joy, Carl jumps onto the bed next to Frank.</p>

<p>&nbsp;</p>

<p>He leans his muzzle in close to Frank&rsquo;s face.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m here to be your best friend.</p>

<p>&nbsp;</p>

<p>And with that, Carl licks the entire side of Frank&rsquo;s face, jumps down and curls into a furry ball next to the bed.</p>

<p>&nbsp;</p>

<p>As Frank slowly wipes the very realistic slobber from his cheek, he looks down at Carl and considers.</p>

<p>&nbsp;</p>

<p>His face softens. He reaches down and pats Carl on the head.</p>

<p>&nbsp;</p>

<p>Carl lets out a contented sigh.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I guess having a dog won&rsquo;t be so bad. Always wanted a dog, in fact.</p>

<p>&nbsp;</p>

<p>Frank looks up at the TV, which shows an informercial. He frowns.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Hey, um, Carl... would you mind switching to ESPN. The ball game&rsquo;s on in a few minutes.</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s tail wags a little as the TV channel switches over.</p>
",

number_of_participants: 11
)
project8.remote_project_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466590791/Capture_d_e%CC%81cran_2016-06-22_a%CC%80_12.17.59_zpsunj.png'
user8.remote_user_picture_url= 'http://res.cloudinary.com/dj9tgdqp1/image/upload/v1466523595/pjwhgh8grg1j1aas73nh.jpg'
user8.save
project8.users << user8
project8.save

#----------------------------------------------------------------------------------------------------------------------------------

user9 = User.new(
first_name: "Cassy",
last_name: "Mayne",
birth_date: 38.years.ago,
city: "San Francisco",
phone_number: "(321) 800-8244",
email: "user9@toto.com",
password: '12345678',
password_confirmation: '12345678'
)

project9 = Project.new(
name: "Muck",
start_date: 5.days.from_now,
end_date: 18.days.from_now,
city: "San Francisco",
genre: "Horror",
price: 12,
price_cents: 12000,
synopsis: "They’re not sluggish zombies, weepy vampires, cartoonishly macho werewolves, or ghosts bitter at a life misspent. They don’t lurk in your nightmares or inside your television, and they aren’t alien clowns in the storm drain under your sleepy East coast town.",

scenario: "<div>
<p><strong>EXT. QUIET HILLS RECOVERY CENTER - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting in a wheelchair and grumpy as hell, FRANK NICHOLS (89), angrily works skeletal fingers in a vain attempt to remove a thick electronic BRACELET from his left arm.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s a damned invasion of my personal privacy is what it is.</p>

<p>&nbsp;</p>

<p>Readouts blink steadily. Frank stares at them, rapt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t want to see my heart beat.</p>

<p>&nbsp;</p>

<p>Standing behind Frank, BILL (60), Frank&rsquo;s son, places a calm hand on Frank&rsquo;s shoulder.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>BILL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You need to be monitored, Dad. Mary and I live too far away to help if something should happen. It&rsquo;s either the bracelet or a home companion. Your choice.</p>

<p>&nbsp;</p>

<p>Frank stews in his juices, then smacks the bracelet hard on the arm of his wheelchair.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. FRANK&rsquo;S HOUSE - DAY</strong></p>

<p>&nbsp;</p>

<p>A scratch at the door. The doorbell rings. More scratching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m coming, I&rsquo;m coming. Hold your horses.</p>

<p>&nbsp;</p>

<p>Relying heavily on a walker, Frank shuffles towards the door.</p>

<p>&nbsp;</p>

<p>Arthritic hands struggle with the doorknob and finally succeed. The door opens, revealing -</p>

<p>&nbsp;</p>

<p>A large, handsome, alert GERMAN SHEPARD.</p>

<p>&nbsp;</p>

<p>Frank looks at the pooch. Leans out. Looks around. Shrugs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Who rang the bell?</p>

<p>&nbsp;</p>

<p>The dog, CARL, looks up at Frank with soulful eyes.</p>
</div>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I did, Frank. My name is Carl.</p>

<p>&nbsp;</p>

<p>Frank gawks at the talking dog, then stumbles backwards. Carl follows and closes the door behind him.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. KITCHEN - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits alert while Frank nervously makes coffee.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>They didn&rsquo;t say anything about my companion being a talking dog.</p>

<p>&nbsp;</p>

<p>Carl looks Frank up and down. Says nothing.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I mean, I&rsquo;m allergic to dogs.</p>

<p>&nbsp;</p>

<p>Frank snatches a Kleenex from the counter, wipes his nose.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Don&rsquo;t worry, Frank. I&rsquo;m not a real dog. I&rsquo;m a Complex, Artificial, Realistic, Lifeform. C.A.R.L. Carl. And totally non-allergenic.</p>

<p>&nbsp;</p>

<p>Frank crumples the snot rag, sniffs the air, grimaces.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. LIVING ROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Frank scoots his walker to a comfy chair and falls into it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Rules. Gotta follow the rules. And my landlord won&rsquo;t allow Complex, Realistic, uh, dogs in his -</p>

<p>&nbsp;</p>

<p>Carl taps his head with his left paw.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s all in my noggin, Frank. Your entire portfolio. I know that you&rsquo;ve owned this home free and clear for over twenty years.</p>

<p>&nbsp;</p>

<p>Frank&rsquo;s eyes crinkle in a scowl.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>EXT. BATHROOM DOOR - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits patiently outside the bathroom door.</p>
</div>
</p>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>What about food? I can barely remember to feed myself.</p>

<p>&nbsp;</p>

<p>Carl stands on his hind legs and opens the bathroom door.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BATHROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting on the toilet, Frank jerks in surprise, letting out a SQUEAKY FART, as Carl enters.</p>

<p>&nbsp;</p>

<p>Carl remains upright as a hatch on his belly opens, revealing all sorts of high tech components.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Cold fusion powered. A little water each week and I&rsquo;m good. And between you and me, I kinda prefer toilet water. The porcelain adds a certain something -</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Do you mind? I&rsquo;m trying to, er...</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s brown eyes widen, his tail droops and he backs out, closing the door behind him.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sorry. I should have knocked.</p>

<p>&nbsp;</p>

<p>Frustrated, Frank&rsquo;s hands clench into gnarled fists. Then, his eyebrows raise with a thought.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You sound like a pretty high tech pup, alright. What if something happens to those computers and gadgets and stuff inside you? I can&rsquo;t afford those kind of repairs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Bumper to bumper warranty, Frank.</p>

<p>&nbsp;</p>

<p style='margin-left:101.0pt;'><strong>FRANK (under his breath)</strong></p>

<p style='margin-left:101.0pt;'>&nbsp;</p>

<p style='margin-left:72.0pt;'>Dang it.</p>

<p>&nbsp;</p>

<p>Frank eyes search the room for inspiration - and find it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m in no condition to take you for walkees when you need to, you know, do what I&rsquo;m doing right now.</p>
</div>
</p>

<p>&nbsp;
<div>
<p>A pause, then a knock on the door. Frank rolls his eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>For goodness sake. Come in!</p>

<p>&nbsp;</p>

<p>The door swings open slowly. Carl faces Frank, tail wagging.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m totally self contained. You don&rsquo;t have to worry about a thing. In fact, I&rsquo;ll clean up after you. Plus, I cook, do the laundry and can administer all of your necessary medications.</p>

<p>&nbsp;</p>

<p>Frank stares at Carl, words not coming, and reaches for the toilet paper. Carl gets the hint and turns to leave.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BEDROOM - NIGHT</strong></p>

<p>&nbsp;</p>

<p>Sitting on the edge of his bed, Frank pulls on a nightshirt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sounds to me like you&rsquo;re nothing more than a flea bitten nursemaid. I suppose you&rsquo;re gonna report my every move to my doctors and family, too.</p>

<p>&nbsp;</p>

<p>Carl gazes up at Frank with sad, brown doggy eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s not like that at all, Frank. I&rsquo;m here to help you. I&rsquo;ll be by your side day and night. If you need something, I&rsquo;ll fetch it.</p>

<p>&nbsp;</p>

<p>Frank looks dubious, then turns his attention to his night stand, searching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Where&rsquo;s the darned TV remote?</p>

<p>&nbsp;</p>

<p>Carl sniffs around and retrieves the remote from under the bed. He sets it gently next to Frank&rsquo;s hand.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t need a nurse maid. I don&rsquo;t need a dog, neither. I don&rsquo;t need nothin&rsquo;. Nothin&rsquo; at all.</p>

<p>&nbsp;</p>

<p>He clicks the remote. Nothing happens. Nothing at all.</p>
</div>
</p>

<p>&nbsp;
<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>
</p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>&lsquo;Cept maybe some batteries.</p>

<p>&nbsp;</p>

<p>Carl stares at the TV and blinks. The TV comes to life.</p>

<p>&nbsp;</p>

<p>Frank looks at Carl, then the TV. He smiles slightly.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Nice trick.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Thanks. But I&rsquo;m not here to do tricks, Frank.</p>

<p>&nbsp;</p>

<p>Tail wagging with joy, Carl jumps onto the bed next to Frank.</p>

<p>&nbsp;</p>

<p>He leans his muzzle in close to Frank&rsquo;s face.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m here to be your best friend.</p>

<p>&nbsp;</p>

<p>And with that, Carl licks the entire side of Frank&rsquo;s face, jumps down and curls into a furry ball next to the bed.</p>

<p>&nbsp;</p>

<p>As Frank slowly wipes the very realistic slobber from his cheek, he looks down at Carl and considers.</p>

<p>&nbsp;</p>

<p>His face softens. He reaches down and pats Carl on the head.</p>

<p>&nbsp;</p>

<p>Carl lets out a contented sigh.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I guess having a dog won&rsquo;t be so bad. Always wanted a dog, in fact.</p>

<p>&nbsp;</p>

<p>Frank looks up at the TV, which shows an informercial. He frowns.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Hey, um, Carl... would you mind switching to ESPN. The ball game&rsquo;s on in a few minutes.</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s tail wags a little as the TV channel switches over.</p>
",

number_of_participants: 5
)
project9.remote_project_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466592522/Capture_d_e%CC%81cran_2016-06-22_a%CC%80_12.39.49_t1lg3c.png'
user9.remote_user_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466592522/Capture_d_e%CC%81cran_2016-06-22_a%CC%80_12.39.49_t1lg3c.png'
user9.save
project9.users << user9
project9.save

#----------------------------------------------------------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------------------------------------------------

user10 = User.new(
first_name: "James",
last_name: "Hock",
birth_date: 57.years.ago,
city: "San Jose",
phone_number: "(321) 800-8244",
email: "user10@toto.com",
password: '12345678',
password_confirmation: '12345678'
)

project10 = Project.new(
name: "Roche Musique: Inside The Wave",
start_date: 6.days.from_now,
end_date: 19.days.from_now,
city: "San Jose",
genre: "Documentary",
price: 12,
price_cents: 12000,
synopsis: "In Paris and all around the world, artists, friends and label team converge to spend some precious moments that makes Roche Musique a unique experience.

To share those moments with our fans, we met 4 young talented producers keen to live new experiences too.",

scenario: "<div>
<p><strong>EXT. QUIET HILLS RECOVERY CENTER - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting in a wheelchair and grumpy as hell, FRANK NICHOLS (89), angrily works skeletal fingers in a vain attempt to remove a thick electronic BRACELET from his left arm.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s a damned invasion of my personal privacy is what it is.</p>

<p>&nbsp;</p>

<p>Readouts blink steadily. Frank stares at them, rapt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t want to see my heart beat.</p>

<p>&nbsp;</p>

<p>Standing behind Frank, BILL (60), Frank&rsquo;s son, places a calm hand on Frank&rsquo;s shoulder.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>BILL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You need to be monitored, Dad. Mary and I live too far away to help if something should happen. It&rsquo;s either the bracelet or a home companion. Your choice.</p>

<p>&nbsp;</p>

<p>Frank stews in his juices, then smacks the bracelet hard on the arm of his wheelchair.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. FRANK&rsquo;S HOUSE - DAY</strong></p>

<p>&nbsp;</p>

<p>A scratch at the door. The doorbell rings. More scratching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m coming, I&rsquo;m coming. Hold your horses.</p>

<p>&nbsp;</p>

<p>Relying heavily on a walker, Frank shuffles towards the door.</p>

<p>&nbsp;</p>

<p>Arthritic hands struggle with the doorknob and finally succeed. The door opens, revealing -</p>

<p>&nbsp;</p>

<p>A large, handsome, alert GERMAN SHEPARD.</p>

<p>&nbsp;</p>

<p>Frank looks at the pooch. Leans out. Looks around. Shrugs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Who rang the bell?</p>

<p>&nbsp;</p>

<p>The dog, CARL, looks up at Frank with soulful eyes.</p>
</div>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I did, Frank. My name is Carl.</p>

<p>&nbsp;</p>

<p>Frank gawks at the talking dog, then stumbles backwards. Carl follows and closes the door behind him.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. KITCHEN - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits alert while Frank nervously makes coffee.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>They didn&rsquo;t say anything about my companion being a talking dog.</p>

<p>&nbsp;</p>

<p>Carl looks Frank up and down. Says nothing.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I mean, I&rsquo;m allergic to dogs.</p>

<p>&nbsp;</p>

<p>Frank snatches a Kleenex from the counter, wipes his nose.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Don&rsquo;t worry, Frank. I&rsquo;m not a real dog. I&rsquo;m a Complex, Artificial, Realistic, Lifeform. C.A.R.L. Carl. And totally non-allergenic.</p>

<p>&nbsp;</p>

<p>Frank crumples the snot rag, sniffs the air, grimaces.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. LIVING ROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Frank scoots his walker to a comfy chair and falls into it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Rules. Gotta follow the rules. And my landlord won&rsquo;t allow Complex, Realistic, uh, dogs in his -</p>

<p>&nbsp;</p>

<p>Carl taps his head with his left paw.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s all in my noggin, Frank. Your entire portfolio. I know that you&rsquo;ve owned this home free and clear for over twenty years.</p>

<p>&nbsp;</p>

<p>Frank&rsquo;s eyes crinkle in a scowl.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>EXT. BATHROOM DOOR - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits patiently outside the bathroom door.</p>
</div>
</p>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>What about food? I can barely remember to feed myself.</p>

<p>&nbsp;</p>

<p>Carl stands on his hind legs and opens the bathroom door.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BATHROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting on the toilet, Frank jerks in surprise, letting out a SQUEAKY FART, as Carl enters.</p>

<p>&nbsp;</p>

<p>Carl remains upright as a hatch on his belly opens, revealing all sorts of high tech components.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Cold fusion powered. A little water each week and I&rsquo;m good. And between you and me, I kinda prefer toilet water. The porcelain adds a certain something -</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Do you mind? I&rsquo;m trying to, er...</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s brown eyes widen, his tail droops and he backs out, closing the door behind him.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sorry. I should have knocked.</p>

<p>&nbsp;</p>

<p>Frustrated, Frank&rsquo;s hands clench into gnarled fists. Then, his eyebrows raise with a thought.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You sound like a pretty high tech pup, alright. What if something happens to those computers and gadgets and stuff inside you? I can&rsquo;t afford those kind of repairs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Bumper to bumper warranty, Frank.</p>

<p>&nbsp;</p>

<p style='margin-left:101.0pt;'><strong>FRANK (under his breath)</strong></p>

<p style='margin-left:101.0pt;'>&nbsp;</p>

<p style='margin-left:72.0pt;'>Dang it.</p>

<p>&nbsp;</p>

<p>Frank eyes search the room for inspiration - and find it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m in no condition to take you for walkees when you need to, you know, do what I&rsquo;m doing right now.</p>
</div>
</p>

<p>&nbsp;
<div>
<p>A pause, then a knock on the door. Frank rolls his eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>For goodness sake. Come in!</p>

<p>&nbsp;</p>

<p>The door swings open slowly. Carl faces Frank, tail wagging.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m totally self contained. You don&rsquo;t have to worry about a thing. In fact, I&rsquo;ll clean up after you. Plus, I cook, do the laundry and can administer all of your necessary medications.</p>

<p>&nbsp;</p>

<p>Frank stares at Carl, words not coming, and reaches for the toilet paper. Carl gets the hint and turns to leave.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BEDROOM - NIGHT</strong></p>

<p>&nbsp;</p>

<p>Sitting on the edge of his bed, Frank pulls on a nightshirt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sounds to me like you&rsquo;re nothing more than a flea bitten nursemaid. I suppose you&rsquo;re gonna report my every move to my doctors and family, too.</p>

<p>&nbsp;</p>

<p>Carl gazes up at Frank with sad, brown doggy eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s not like that at all, Frank. I&rsquo;m here to help you. I&rsquo;ll be by your side day and night. If you need something, I&rsquo;ll fetch it.</p>

<p>&nbsp;</p>

<p>Frank looks dubious, then turns his attention to his night stand, searching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Where&rsquo;s the darned TV remote?</p>

<p>&nbsp;</p>

<p>Carl sniffs around and retrieves the remote from under the bed. He sets it gently next to Frank&rsquo;s hand.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t need a nurse maid. I don&rsquo;t need a dog, neither. I don&rsquo;t need nothin&rsquo;. Nothin&rsquo; at all.</p>

<p>&nbsp;</p>

<p>He clicks the remote. Nothing happens. Nothing at all.</p>
</div>
</p>

<p>&nbsp;
<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>
</p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>&lsquo;Cept maybe some batteries.</p>

<p>&nbsp;</p>

<p>Carl stares at the TV and blinks. The TV comes to life.</p>

<p>&nbsp;</p>

<p>Frank looks at Carl, then the TV. He smiles slightly.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Nice trick.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Thanks. But I&rsquo;m not here to do tricks, Frank.</p>

<p>&nbsp;</p>

<p>Tail wagging with joy, Carl jumps onto the bed next to Frank.</p>

<p>&nbsp;</p>

<p>He leans his muzzle in close to Frank&rsquo;s face.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m here to be your best friend.</p>

<p>&nbsp;</p>

<p>And with that, Carl licks the entire side of Frank&rsquo;s face, jumps down and curls into a furry ball next to the bed.</p>

<p>&nbsp;</p>

<p>As Frank slowly wipes the very realistic slobber from his cheek, he looks down at Carl and considers.</p>

<p>&nbsp;</p>

<p>His face softens. He reaches down and pats Carl on the head.</p>

<p>&nbsp;</p>

<p>Carl lets out a contented sigh.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I guess having a dog won&rsquo;t be so bad. Always wanted a dog, in fact.</p>

<p>&nbsp;</p>

<p>Frank looks up at the TV, which shows an informercial. He frowns.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Hey, um, Carl... would you mind switching to ESPN. The ball game&rsquo;s on in a few minutes.</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s tail wags a little as the TV channel switches over.</p>
",

number_of_participants: 8
)
project10.remote_project_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466611008/header-logo-rm-31-tt-width-604-height-403-crop-0-bgcolor-000000-nozoom_default-1-lazyload-0_dzlx4q.jpg'
user10.remote_user_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466592522/Capture_d_e%CC%81cran_2016-06-22_a%CC%80_12.39.49_t1lg3c.png'
user10.save
project10.users << user10
project10.save

#----------------------------------------------------------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------------------------------------------------

user11 = User.new(
first_name: "Paul",
last_name: "Ottman",
birth_date: 20.years.ago,
city: "Anaheim",
phone_number: "(321) 800-8244",
email: "user11@toto.com",
password: '12345678',
password_confirmation: '12345678'
)

project11 = Project.new(
name: "Darkness Reigns",
start_date: 4.days.from_now,
end_date: 27.days.from_now,
city: "Anaheim",
genre: "Horror",
price: 12,
price_cents: 12000,
synopsis: "Darkness Reigns is a feature film about a filmmaker, Daniel Whitaker, who always thought he would hit it big in Hollywood, but was never able to fulfill his dream.  Instead, he's been relegated to shooting behind the scenes documentaries for other filmmakers.  But that all changes when he captures footage of unfathomable evil while shooting on the set of a horror film -- inside a reportedly haunted location -- where suddenly the entire crew, including the film's star, Casper Van Dien, is brutally attacked in front of the unblinking lens of Daniel's camera.",

scenario: "<div>
<p><strong>EXT. QUIET HILLS RECOVERY CENTER - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting in a wheelchair and grumpy as hell, FRANK NICHOLS (89), angrily works skeletal fingers in a vain attempt to remove a thick electronic BRACELET from his left arm.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s a damned invasion of my personal privacy is what it is.</p>

<p>&nbsp;</p>

<p>Readouts blink steadily. Frank stares at them, rapt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t want to see my heart beat.</p>

<p>&nbsp;</p>

<p>Standing behind Frank, BILL (60), Frank&rsquo;s son, places a calm hand on Frank&rsquo;s shoulder.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>BILL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You need to be monitored, Dad. Mary and I live too far away to help if something should happen. It&rsquo;s either the bracelet or a home companion. Your choice.</p>

<p>&nbsp;</p>

<p>Frank stews in his juices, then smacks the bracelet hard on the arm of his wheelchair.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. FRANK&rsquo;S HOUSE - DAY</strong></p>

<p>&nbsp;</p>

<p>A scratch at the door. The doorbell rings. More scratching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m coming, I&rsquo;m coming. Hold your horses.</p>

<p>&nbsp;</p>

<p>Relying heavily on a walker, Frank shuffles towards the door.</p>

<p>&nbsp;</p>

<p>Arthritic hands struggle with the doorknob and finally succeed. The door opens, revealing -</p>

<p>&nbsp;</p>

<p>A large, handsome, alert GERMAN SHEPARD.</p>

<p>&nbsp;</p>

<p>Frank looks at the pooch. Leans out. Looks around. Shrugs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Who rang the bell?</p>

<p>&nbsp;</p>

<p>The dog, CARL, looks up at Frank with soulful eyes.</p>
</div>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I did, Frank. My name is Carl.</p>

<p>&nbsp;</p>

<p>Frank gawks at the talking dog, then stumbles backwards. Carl follows and closes the door behind him.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. KITCHEN - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits alert while Frank nervously makes coffee.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>They didn&rsquo;t say anything about my companion being a talking dog.</p>

<p>&nbsp;</p>

<p>Carl looks Frank up and down. Says nothing.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I mean, I&rsquo;m allergic to dogs.</p>

<p>&nbsp;</p>

<p>Frank snatches a Kleenex from the counter, wipes his nose.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Don&rsquo;t worry, Frank. I&rsquo;m not a real dog. I&rsquo;m a Complex, Artificial, Realistic, Lifeform. C.A.R.L. Carl. And totally non-allergenic.</p>

<p>&nbsp;</p>

<p>Frank crumples the snot rag, sniffs the air, grimaces.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. LIVING ROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Frank scoots his walker to a comfy chair and falls into it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Rules. Gotta follow the rules. And my landlord won&rsquo;t allow Complex, Realistic, uh, dogs in his -</p>

<p>&nbsp;</p>

<p>Carl taps his head with his left paw.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s all in my noggin, Frank. Your entire portfolio. I know that you&rsquo;ve owned this home free and clear for over twenty years.</p>

<p>&nbsp;</p>

<p>Frank&rsquo;s eyes crinkle in a scowl.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>EXT. BATHROOM DOOR - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits patiently outside the bathroom door.</p>
</div>
</p>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>What about food? I can barely remember to feed myself.</p>

<p>&nbsp;</p>

<p>Carl stands on his hind legs and opens the bathroom door.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BATHROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting on the toilet, Frank jerks in surprise, letting out a SQUEAKY FART, as Carl enters.</p>

<p>&nbsp;</p>

<p>Carl remains upright as a hatch on his belly opens, revealing all sorts of high tech components.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Cold fusion powered. A little water each week and I&rsquo;m good. And between you and me, I kinda prefer toilet water. The porcelain adds a certain something -</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Do you mind? I&rsquo;m trying to, er...</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s brown eyes widen, his tail droops and he backs out, closing the door behind him.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sorry. I should have knocked.</p>

<p>&nbsp;</p>

<p>Frustrated, Frank&rsquo;s hands clench into gnarled fists. Then, his eyebrows raise with a thought.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You sound like a pretty high tech pup, alright. What if something happens to those computers and gadgets and stuff inside you? I can&rsquo;t afford those kind of repairs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Bumper to bumper warranty, Frank.</p>

<p>&nbsp;</p>

<p style='margin-left:101.0pt;'><strong>FRANK (under his breath)</strong></p>

<p style='margin-left:101.0pt;'>&nbsp;</p>

<p style='margin-left:72.0pt;'>Dang it.</p>

<p>&nbsp;</p>

<p>Frank eyes search the room for inspiration - and find it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m in no condition to take you for walkees when you need to, you know, do what I&rsquo;m doing right now.</p>
</div>
</p>

<p>&nbsp;
<div>
<p>A pause, then a knock on the door. Frank rolls his eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>For goodness sake. Come in!</p>

<p>&nbsp;</p>

<p>The door swings open slowly. Carl faces Frank, tail wagging.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m totally self contained. You don&rsquo;t have to worry about a thing. In fact, I&rsquo;ll clean up after you. Plus, I cook, do the laundry and can administer all of your necessary medications.</p>

<p>&nbsp;</p>

<p>Frank stares at Carl, words not coming, and reaches for the toilet paper. Carl gets the hint and turns to leave.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BEDROOM - NIGHT</strong></p>

<p>&nbsp;</p>

<p>Sitting on the edge of his bed, Frank pulls on a nightshirt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sounds to me like you&rsquo;re nothing more than a flea bitten nursemaid. I suppose you&rsquo;re gonna report my every move to my doctors and family, too.</p>

<p>&nbsp;</p>

<p>Carl gazes up at Frank with sad, brown doggy eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s not like that at all, Frank. I&rsquo;m here to help you. I&rsquo;ll be by your side day and night. If you need something, I&rsquo;ll fetch it.</p>

<p>&nbsp;</p>

<p>Frank looks dubious, then turns his attention to his night stand, searching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Where&rsquo;s the darned TV remote?</p>

<p>&nbsp;</p>

<p>Carl sniffs around and retrieves the remote from under the bed. He sets it gently next to Frank&rsquo;s hand.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t need a nurse maid. I don&rsquo;t need a dog, neither. I don&rsquo;t need nothin&rsquo;. Nothin&rsquo; at all.</p>

<p>&nbsp;</p>

<p>He clicks the remote. Nothing happens. Nothing at all.</p>
</div>
</p>

<p>&nbsp;
<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>
</p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>&lsquo;Cept maybe some batteries.</p>

<p>&nbsp;</p>

<p>Carl stares at the TV and blinks. The TV comes to life.</p>

<p>&nbsp;</p>

<p>Frank looks at Carl, then the TV. He smiles slightly.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Nice trick.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Thanks. But I&rsquo;m not here to do tricks, Frank.</p>

<p>&nbsp;</p>

<p>Tail wagging with joy, Carl jumps onto the bed next to Frank.</p>

<p>&nbsp;</p>

<p>He leans his muzzle in close to Frank&rsquo;s face.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m here to be your best friend.</p>

<p>&nbsp;</p>

<p>And with that, Carl licks the entire side of Frank&rsquo;s face, jumps down and curls into a furry ball next to the bed.</p>

<p>&nbsp;</p>

<p>As Frank slowly wipes the very realistic slobber from his cheek, he looks down at Carl and considers.</p>

<p>&nbsp;</p>

<p>His face softens. He reaches down and pats Carl on the head.</p>

<p>&nbsp;</p>

<p>Carl lets out a contented sigh.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I guess having a dog won&rsquo;t be so bad. Always wanted a dog, in fact.</p>

<p>&nbsp;</p>

<p>Frank looks up at the TV, which shows an informercial. He frowns.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Hey, um, Carl... would you mind switching to ESPN. The ball game&rsquo;s on in a few minutes.</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s tail wags a little as the TV channel switches over.</p>
",

number_of_participants: 3
)
project11.remote_project_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466611243/Capture_d_e%CC%81cran_2016-06-22_a%CC%80_18.00.06_wb8nmn.png'
user11.remote_user_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466592522/Capture_d_e%CC%81cran_2016-06-22_a%CC%80_12.39.49_t1lg3c.png'
user11.save
project11.users << user11
project11.save

#----------------------------------------------------------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------------------------------------------------

user12 = User.new(
first_name: "Amanda",
last_name: "Tekel",
birth_date: 33.years.ago,
city: "Bakersfield",
phone_number: "(321) 800-8244",
email: "user12@toto.com",
password: '12345678',
password_confirmation: '12345678'
)

project12 = Project.new(
name: "AutoQuartz",
start_date: 4.days.from_now,
end_date: 19.days.from_now,
city: "Bakersfield",
genre: "Action",
price: 12,
price_cents: 12000,
synopsis: "At night, a man escapes the depths of the Quartz mine he works in by climbing up its cliff, his body camouflaged with sparkly patterns.",

scenario: "<div>
<p><strong>EXT. QUIET HILLS RECOVERY CENTER - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting in a wheelchair and grumpy as hell, FRANK NICHOLS (89), angrily works skeletal fingers in a vain attempt to remove a thick electronic BRACELET from his left arm.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s a damned invasion of my personal privacy is what it is.</p>

<p>&nbsp;</p>

<p>Readouts blink steadily. Frank stares at them, rapt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t want to see my heart beat.</p>

<p>&nbsp;</p>

<p>Standing behind Frank, BILL (60), Frank&rsquo;s son, places a calm hand on Frank&rsquo;s shoulder.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>BILL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You need to be monitored, Dad. Mary and I live too far away to help if something should happen. It&rsquo;s either the bracelet or a home companion. Your choice.</p>

<p>&nbsp;</p>

<p>Frank stews in his juices, then smacks the bracelet hard on the arm of his wheelchair.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. FRANK&rsquo;S HOUSE - DAY</strong></p>

<p>&nbsp;</p>

<p>A scratch at the door. The doorbell rings. More scratching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m coming, I&rsquo;m coming. Hold your horses.</p>

<p>&nbsp;</p>

<p>Relying heavily on a walker, Frank shuffles towards the door.</p>

<p>&nbsp;</p>

<p>Arthritic hands struggle with the doorknob and finally succeed. The door opens, revealing -</p>

<p>&nbsp;</p>

<p>A large, handsome, alert GERMAN SHEPARD.</p>

<p>&nbsp;</p>

<p>Frank looks at the pooch. Leans out. Looks around. Shrugs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Who rang the bell?</p>

<p>&nbsp;</p>

<p>The dog, CARL, looks up at Frank with soulful eyes.</p>
</div>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I did, Frank. My name is Carl.</p>

<p>&nbsp;</p>

<p>Frank gawks at the talking dog, then stumbles backwards. Carl follows and closes the door behind him.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. KITCHEN - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits alert while Frank nervously makes coffee.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>They didn&rsquo;t say anything about my companion being a talking dog.</p>

<p>&nbsp;</p>

<p>Carl looks Frank up and down. Says nothing.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I mean, I&rsquo;m allergic to dogs.</p>

<p>&nbsp;</p>

<p>Frank snatches a Kleenex from the counter, wipes his nose.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Don&rsquo;t worry, Frank. I&rsquo;m not a real dog. I&rsquo;m a Complex, Artificial, Realistic, Lifeform. C.A.R.L. Carl. And totally non-allergenic.</p>

<p>&nbsp;</p>

<p>Frank crumples the snot rag, sniffs the air, grimaces.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. LIVING ROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Frank scoots his walker to a comfy chair and falls into it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Rules. Gotta follow the rules. And my landlord won&rsquo;t allow Complex, Realistic, uh, dogs in his -</p>

<p>&nbsp;</p>

<p>Carl taps his head with his left paw.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s all in my noggin, Frank. Your entire portfolio. I know that you&rsquo;ve owned this home free and clear for over twenty years.</p>

<p>&nbsp;</p>

<p>Frank&rsquo;s eyes crinkle in a scowl.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>EXT. BATHROOM DOOR - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits patiently outside the bathroom door.</p>
</div>
</p>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>What about food? I can barely remember to feed myself.</p>

<p>&nbsp;</p>

<p>Carl stands on his hind legs and opens the bathroom door.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BATHROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting on the toilet, Frank jerks in surprise, letting out a SQUEAKY FART, as Carl enters.</p>

<p>&nbsp;</p>

<p>Carl remains upright as a hatch on his belly opens, revealing all sorts of high tech components.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Cold fusion powered. A little water each week and I&rsquo;m good. And between you and me, I kinda prefer toilet water. The porcelain adds a certain something -</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Do you mind? I&rsquo;m trying to, er...</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s brown eyes widen, his tail droops and he backs out, closing the door behind him.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sorry. I should have knocked.</p>

<p>&nbsp;</p>

<p>Frustrated, Frank&rsquo;s hands clench into gnarled fists. Then, his eyebrows raise with a thought.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You sound like a pretty high tech pup, alright. What if something happens to those computers and gadgets and stuff inside you? I can&rsquo;t afford those kind of repairs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Bumper to bumper warranty, Frank.</p>

<p>&nbsp;</p>

<p style='margin-left:101.0pt;'><strong>FRANK (under his breath)</strong></p>

<p style='margin-left:101.0pt;'>&nbsp;</p>

<p style='margin-left:72.0pt;'>Dang it.</p>

<p>&nbsp;</p>

<p>Frank eyes search the room for inspiration - and find it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m in no condition to take you for walkees when you need to, you know, do what I&rsquo;m doing right now.</p>
</div>
</p>

<p>&nbsp;
<div>
<p>A pause, then a knock on the door. Frank rolls his eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>For goodness sake. Come in!</p>

<p>&nbsp;</p>

<p>The door swings open slowly. Carl faces Frank, tail wagging.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m totally self contained. You don&rsquo;t have to worry about a thing. In fact, I&rsquo;ll clean up after you. Plus, I cook, do the laundry and can administer all of your necessary medications.</p>

<p>&nbsp;</p>

<p>Frank stares at Carl, words not coming, and reaches for the toilet paper. Carl gets the hint and turns to leave.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BEDROOM - NIGHT</strong></p>

<p>&nbsp;</p>

<p>Sitting on the edge of his bed, Frank pulls on a nightshirt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sounds to me like you&rsquo;re nothing more than a flea bitten nursemaid. I suppose you&rsquo;re gonna report my every move to my doctors and family, too.</p>

<p>&nbsp;</p>

<p>Carl gazes up at Frank with sad, brown doggy eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s not like that at all, Frank. I&rsquo;m here to help you. I&rsquo;ll be by your side day and night. If you need something, I&rsquo;ll fetch it.</p>

<p>&nbsp;</p>

<p>Frank looks dubious, then turns his attention to his night stand, searching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Where&rsquo;s the darned TV remote?</p>

<p>&nbsp;</p>

<p>Carl sniffs around and retrieves the remote from under the bed. He sets it gently next to Frank&rsquo;s hand.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t need a nurse maid. I don&rsquo;t need a dog, neither. I don&rsquo;t need nothin&rsquo;. Nothin&rsquo; at all.</p>

<p>&nbsp;</p>

<p>He clicks the remote. Nothing happens. Nothing at all.</p>
</div>
</p>

<p>&nbsp;
<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>
</p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>&lsquo;Cept maybe some batteries.</p>

<p>&nbsp;</p>

<p>Carl stares at the TV and blinks. The TV comes to life.</p>

<p>&nbsp;</p>

<p>Frank looks at Carl, then the TV. He smiles slightly.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Nice trick.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Thanks. But I&rsquo;m not here to do tricks, Frank.</p>

<p>&nbsp;</p>

<p>Tail wagging with joy, Carl jumps onto the bed next to Frank.</p>

<p>&nbsp;</p>

<p>He leans his muzzle in close to Frank&rsquo;s face.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m here to be your best friend.</p>

<p>&nbsp;</p>

<p>And with that, Carl licks the entire side of Frank&rsquo;s face, jumps down and curls into a furry ball next to the bed.</p>

<p>&nbsp;</p>

<p>As Frank slowly wipes the very realistic slobber from his cheek, he looks down at Carl and considers.</p>

<p>&nbsp;</p>

<p>His face softens. He reaches down and pats Carl on the head.</p>

<p>&nbsp;</p>

<p>Carl lets out a contented sigh.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I guess having a dog won&rsquo;t be so bad. Always wanted a dog, in fact.</p>

<p>&nbsp;</p>

<p>Frank looks up at the TV, which shows an informercial. He frowns.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Hey, um, Carl... would you mind switching to ESPN. The ball game&rsquo;s on in a few minutes.</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s tail wags a little as the TV channel switches over.</p>
",

number_of_participants: 9
)
project12.remote_project_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466612930/24a9a4039c272c1cab0053c044e1cf5b_original_rxfoml.png'
user12.remote_user_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466592522/Capture_d_e%CC%81cran_2016-06-22_a%CC%80_12.39.49_t1lg3c.png'
user12.save
project12.users << user12
project12.save

#----------------------------------------------------------------------------------------------------------------------------------

user13 = User.new(
first_name: "Evan",
last_name: "Connors",
birth_date: 37.years.ago,
city: "Fresno",
phone_number: "(321) 800-8244",
email: "user13@toto.com",
password: '12345678',
password_confirmation: '12345678'
)

project13 = Project.new(
name: "Novela: An Animated Short Film",
start_date: 10.days.from_now,
end_date: 40.days.from_now,
city: "Fresno",
genre: "Animation",
price: 12,
price_cents: 12000,
synopsis: "The film tells the story of Julia, a woman who realizes her life is not like the life of Jasmine Rose, her favorite soap opera protagonist. In an effort to “fix” herself, Julia tries to be more like the woman on the screen.",

scenario: "<div>
<p><strong>EXT. QUIET HILLS RECOVERY CENTER - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting in a wheelchair and grumpy as hell, FRANK NICHOLS (89), angrily works skeletal fingers in a vain attempt to remove a thick electronic BRACELET from his left arm.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s a damned invasion of my personal privacy is what it is.</p>

<p>&nbsp;</p>

<p>Readouts blink steadily. Frank stares at them, rapt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t want to see my heart beat.</p>

<p>&nbsp;</p>

<p>Standing behind Frank, BILL (60), Frank&rsquo;s son, places a calm hand on Frank&rsquo;s shoulder.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>BILL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You need to be monitored, Dad. Mary and I live too far away to help if something should happen. It&rsquo;s either the bracelet or a home companion. Your choice.</p>

<p>&nbsp;</p>

<p>Frank stews in his juices, then smacks the bracelet hard on the arm of his wheelchair.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. FRANK&rsquo;S HOUSE - DAY</strong></p>

<p>&nbsp;</p>

<p>A scratch at the door. The doorbell rings. More scratching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m coming, I&rsquo;m coming. Hold your horses.</p>

<p>&nbsp;</p>

<p>Relying heavily on a walker, Frank shuffles towards the door.</p>

<p>&nbsp;</p>

<p>Arthritic hands struggle with the doorknob and finally succeed. The door opens, revealing -</p>

<p>&nbsp;</p>

<p>A large, handsome, alert GERMAN SHEPARD.</p>

<p>&nbsp;</p>

<p>Frank looks at the pooch. Leans out. Looks around. Shrugs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Who rang the bell?</p>

<p>&nbsp;</p>

<p>The dog, CARL, looks up at Frank with soulful eyes.</p>
</div>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I did, Frank. My name is Carl.</p>

<p>&nbsp;</p>

<p>Frank gawks at the talking dog, then stumbles backwards. Carl follows and closes the door behind him.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. KITCHEN - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits alert while Frank nervously makes coffee.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>They didn&rsquo;t say anything about my companion being a talking dog.</p>

<p>&nbsp;</p>

<p>Carl looks Frank up and down. Says nothing.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I mean, I&rsquo;m allergic to dogs.</p>

<p>&nbsp;</p>

<p>Frank snatches a Kleenex from the counter, wipes his nose.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Don&rsquo;t worry, Frank. I&rsquo;m not a real dog. I&rsquo;m a Complex, Artificial, Realistic, Lifeform. C.A.R.L. Carl. And totally non-allergenic.</p>

<p>&nbsp;</p>

<p>Frank crumples the snot rag, sniffs the air, grimaces.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. LIVING ROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Frank scoots his walker to a comfy chair and falls into it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Rules. Gotta follow the rules. And my landlord won&rsquo;t allow Complex, Realistic, uh, dogs in his -</p>

<p>&nbsp;</p>

<p>Carl taps his head with his left paw.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s all in my noggin, Frank. Your entire portfolio. I know that you&rsquo;ve owned this home free and clear for over twenty years.</p>

<p>&nbsp;</p>

<p>Frank&rsquo;s eyes crinkle in a scowl.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>EXT. BATHROOM DOOR - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits patiently outside the bathroom door.</p>
</div>
</p>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>What about food? I can barely remember to feed myself.</p>

<p>&nbsp;</p>

<p>Carl stands on his hind legs and opens the bathroom door.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BATHROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting on the toilet, Frank jerks in surprise, letting out a SQUEAKY FART, as Carl enters.</p>

<p>&nbsp;</p>

<p>Carl remains upright as a hatch on his belly opens, revealing all sorts of high tech components.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Cold fusion powered. A little water each week and I&rsquo;m good. And between you and me, I kinda prefer toilet water. The porcelain adds a certain something -</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Do you mind? I&rsquo;m trying to, er...</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s brown eyes widen, his tail droops and he backs out, closing the door behind him.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sorry. I should have knocked.</p>

<p>&nbsp;</p>

<p>Frustrated, Frank&rsquo;s hands clench into gnarled fists. Then, his eyebrows raise with a thought.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You sound like a pretty high tech pup, alright. What if something happens to those computers and gadgets and stuff inside you? I can&rsquo;t afford those kind of repairs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Bumper to bumper warranty, Frank.</p>

<p>&nbsp;</p>

<p style='margin-left:101.0pt;'><strong>FRANK (under his breath)</strong></p>

<p style='margin-left:101.0pt;'>&nbsp;</p>

<p style='margin-left:72.0pt;'>Dang it.</p>

<p>&nbsp;</p>

<p>Frank eyes search the room for inspiration - and find it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m in no condition to take you for walkees when you need to, you know, do what I&rsquo;m doing right now.</p>
</div>
</p>

<p>&nbsp;
<div>
<p>A pause, then a knock on the door. Frank rolls his eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>For goodness sake. Come in!</p>

<p>&nbsp;</p>

<p>The door swings open slowly. Carl faces Frank, tail wagging.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m totally self contained. You don&rsquo;t have to worry about a thing. In fact, I&rsquo;ll clean up after you. Plus, I cook, do the laundry and can administer all of your necessary medications.</p>

<p>&nbsp;</p>

<p>Frank stares at Carl, words not coming, and reaches for the toilet paper. Carl gets the hint and turns to leave.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BEDROOM - NIGHT</strong></p>

<p>&nbsp;</p>

<p>Sitting on the edge of his bed, Frank pulls on a nightshirt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sounds to me like you&rsquo;re nothing more than a flea bitten nursemaid. I suppose you&rsquo;re gonna report my every move to my doctors and family, too.</p>

<p>&nbsp;</p>

<p>Carl gazes up at Frank with sad, brown doggy eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s not like that at all, Frank. I&rsquo;m here to help you. I&rsquo;ll be by your side day and night. If you need something, I&rsquo;ll fetch it.</p>

<p>&nbsp;</p>

<p>Frank looks dubious, then turns his attention to his night stand, searching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Where&rsquo;s the darned TV remote?</p>

<p>&nbsp;</p>

<p>Carl sniffs around and retrieves the remote from under the bed. He sets it gently next to Frank&rsquo;s hand.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t need a nurse maid. I don&rsquo;t need a dog, neither. I don&rsquo;t need nothin&rsquo;. Nothin&rsquo; at all.</p>

<p>&nbsp;</p>

<p>He clicks the remote. Nothing happens. Nothing at all.</p>
</div>
</p>

<p>&nbsp;
<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>
</p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>&lsquo;Cept maybe some batteries.</p>

<p>&nbsp;</p>

<p>Carl stares at the TV and blinks. The TV comes to life.</p>

<p>&nbsp;</p>

<p>Frank looks at Carl, then the TV. He smiles slightly.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Nice trick.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Thanks. But I&rsquo;m not here to do tricks, Frank.</p>

<p>&nbsp;</p>

<p>Tail wagging with joy, Carl jumps onto the bed next to Frank.</p>

<p>&nbsp;</p>

<p>He leans his muzzle in close to Frank&rsquo;s face.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m here to be your best friend.</p>

<p>&nbsp;</p>

<p>And with that, Carl licks the entire side of Frank&rsquo;s face, jumps down and curls into a furry ball next to the bed.</p>

<p>&nbsp;</p>

<p>As Frank slowly wipes the very realistic slobber from his cheek, he looks down at Carl and considers.</p>

<p>&nbsp;</p>

<p>His face softens. He reaches down and pats Carl on the head.</p>

<p>&nbsp;</p>

<p>Carl lets out a contented sigh.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I guess having a dog won&rsquo;t be so bad. Always wanted a dog, in fact.</p>

<p>&nbsp;</p>

<p>Frank looks up at the TV, which shows an informercial. He frowns.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Hey, um, Carl... would you mind switching to ESPN. The ball game&rsquo;s on in a few minutes.</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s tail wags a little as the TV channel switches over.</p>
",

number_of_participants: 6
)
project13.remote_project_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466613560/966cf00de95b807f0733d7e954e4af52_original_qx4gdr.jpg'
user13.remote_user_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466592522/Capture_d_e%CC%81cran_2016-06-22_a%CC%80_12.39.49_t1lg3c.png'
user13.save
project13.users << user13
project13.save

#----------------------------------------------------------------------------------------------------------------------------------

user14 = User.new(
first_name: "Evan",
last_name: "Connors",
birth_date: 21.years.ago,
city: "Long Beach",
phone_number: "(321) 800-8244",
email: "user14@toto.com",
password: '12345678',
password_confirmation: '12345678'
)

project14 = Project.new(
name: "Cradle",
start_date: 3.days.from_now,
end_date: 28.days.from_now,
city: "Long Beach",
genre: "Animation",
price: 12,
price_cents: 12000,
synopsis: "The film tells the story of Julia, a woman who realizes her life is not like the life of Jasmine Rose, her favorite soap opera protagonist. In an effort to “fix” herself, Julia tries to be more like the woman on the screen.",

scenario: "<div>
<p><strong>EXT. QUIET HILLS RECOVERY CENTER - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting in a wheelchair and grumpy as hell, FRANK NICHOLS (89), angrily works skeletal fingers in a vain attempt to remove a thick electronic BRACELET from his left arm.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s a damned invasion of my personal privacy is what it is.</p>

<p>&nbsp;</p>

<p>Readouts blink steadily. Frank stares at them, rapt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t want to see my heart beat.</p>

<p>&nbsp;</p>

<p>Standing behind Frank, BILL (60), Frank&rsquo;s son, places a calm hand on Frank&rsquo;s shoulder.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>BILL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You need to be monitored, Dad. Mary and I live too far away to help if something should happen. It&rsquo;s either the bracelet or a home companion. Your choice.</p>

<p>&nbsp;</p>

<p>Frank stews in his juices, then smacks the bracelet hard on the arm of his wheelchair.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. FRANK&rsquo;S HOUSE - DAY</strong></p>

<p>&nbsp;</p>

<p>A scratch at the door. The doorbell rings. More scratching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m coming, I&rsquo;m coming. Hold your horses.</p>

<p>&nbsp;</p>

<p>Relying heavily on a walker, Frank shuffles towards the door.</p>

<p>&nbsp;</p>

<p>Arthritic hands struggle with the doorknob and finally succeed. The door opens, revealing -</p>

<p>&nbsp;</p>

<p>A large, handsome, alert GERMAN SHEPARD.</p>

<p>&nbsp;</p>

<p>Frank looks at the pooch. Leans out. Looks around. Shrugs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Who rang the bell?</p>

<p>&nbsp;</p>

<p>The dog, CARL, looks up at Frank with soulful eyes.</p>
</div>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I did, Frank. My name is Carl.</p>

<p>&nbsp;</p>

<p>Frank gawks at the talking dog, then stumbles backwards. Carl follows and closes the door behind him.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. KITCHEN - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits alert while Frank nervously makes coffee.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>They didn&rsquo;t say anything about my companion being a talking dog.</p>

<p>&nbsp;</p>

<p>Carl looks Frank up and down. Says nothing.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I mean, I&rsquo;m allergic to dogs.</p>

<p>&nbsp;</p>

<p>Frank snatches a Kleenex from the counter, wipes his nose.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Don&rsquo;t worry, Frank. I&rsquo;m not a real dog. I&rsquo;m a Complex, Artificial, Realistic, Lifeform. C.A.R.L. Carl. And totally non-allergenic.</p>

<p>&nbsp;</p>

<p>Frank crumples the snot rag, sniffs the air, grimaces.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. LIVING ROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Frank scoots his walker to a comfy chair and falls into it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Rules. Gotta follow the rules. And my landlord won&rsquo;t allow Complex, Realistic, uh, dogs in his -</p>

<p>&nbsp;</p>

<p>Carl taps his head with his left paw.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s all in my noggin, Frank. Your entire portfolio. I know that you&rsquo;ve owned this home free and clear for over twenty years.</p>

<p>&nbsp;</p>

<p>Frank&rsquo;s eyes crinkle in a scowl.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>EXT. BATHROOM DOOR - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits patiently outside the bathroom door.</p>
</div>
</p>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>What about food? I can barely remember to feed myself.</p>

<p>&nbsp;</p>

<p>Carl stands on his hind legs and opens the bathroom door.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BATHROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting on the toilet, Frank jerks in surprise, letting out a SQUEAKY FART, as Carl enters.</p>

<p>&nbsp;</p>

<p>Carl remains upright as a hatch on his belly opens, revealing all sorts of high tech components.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Cold fusion powered. A little water each week and I&rsquo;m good. And between you and me, I kinda prefer toilet water. The porcelain adds a certain something -</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Do you mind? I&rsquo;m trying to, er...</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s brown eyes widen, his tail droops and he backs out, closing the door behind him.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sorry. I should have knocked.</p>

<p>&nbsp;</p>

<p>Frustrated, Frank&rsquo;s hands clench into gnarled fists. Then, his eyebrows raise with a thought.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You sound like a pretty high tech pup, alright. What if something happens to those computers and gadgets and stuff inside you? I can&rsquo;t afford those kind of repairs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Bumper to bumper warranty, Frank.</p>

<p>&nbsp;</p>

<p style='margin-left:101.0pt;'><strong>FRANK (under his breath)</strong></p>

<p style='margin-left:101.0pt;'>&nbsp;</p>

<p style='margin-left:72.0pt;'>Dang it.</p>

<p>&nbsp;</p>

<p>Frank eyes search the room for inspiration - and find it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m in no condition to take you for walkees when you need to, you know, do what I&rsquo;m doing right now.</p>
</div>
</p>

<p>&nbsp;
<div>
<p>A pause, then a knock on the door. Frank rolls his eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>For goodness sake. Come in!</p>

<p>&nbsp;</p>

<p>The door swings open slowly. Carl faces Frank, tail wagging.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m totally self contained. You don&rsquo;t have to worry about a thing. In fact, I&rsquo;ll clean up after you. Plus, I cook, do the laundry and can administer all of your necessary medications.</p>

<p>&nbsp;</p>

<p>Frank stares at Carl, words not coming, and reaches for the toilet paper. Carl gets the hint and turns to leave.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BEDROOM - NIGHT</strong></p>

<p>&nbsp;</p>

<p>Sitting on the edge of his bed, Frank pulls on a nightshirt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sounds to me like you&rsquo;re nothing more than a flea bitten nursemaid. I suppose you&rsquo;re gonna report my every move to my doctors and family, too.</p>

<p>&nbsp;</p>

<p>Carl gazes up at Frank with sad, brown doggy eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s not like that at all, Frank. I&rsquo;m here to help you. I&rsquo;ll be by your side day and night. If you need something, I&rsquo;ll fetch it.</p>

<p>&nbsp;</p>

<p>Frank looks dubious, then turns his attention to his night stand, searching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Where&rsquo;s the darned TV remote?</p>

<p>&nbsp;</p>

<p>Carl sniffs around and retrieves the remote from under the bed. He sets it gently next to Frank&rsquo;s hand.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t need a nurse maid. I don&rsquo;t need a dog, neither. I don&rsquo;t need nothin&rsquo;. Nothin&rsquo; at all.</p>

<p>&nbsp;</p>

<p>He clicks the remote. Nothing happens. Nothing at all.</p>
</div>
</p>

<p>&nbsp;
<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>
</p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>&lsquo;Cept maybe some batteries.</p>

<p>&nbsp;</p>

<p>Carl stares at the TV and blinks. The TV comes to life.</p>

<p>&nbsp;</p>

<p>Frank looks at Carl, then the TV. He smiles slightly.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Nice trick.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Thanks. But I&rsquo;m not here to do tricks, Frank.</p>

<p>&nbsp;</p>

<p>Tail wagging with joy, Carl jumps onto the bed next to Frank.</p>

<p>&nbsp;</p>

<p>He leans his muzzle in close to Frank&rsquo;s face.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m here to be your best friend.</p>

<p>&nbsp;</p>

<p>And with that, Carl licks the entire side of Frank&rsquo;s face, jumps down and curls into a furry ball next to the bed.</p>

<p>&nbsp;</p>

<p>As Frank slowly wipes the very realistic slobber from his cheek, he looks down at Carl and considers.</p>

<p>&nbsp;</p>

<p>His face softens. He reaches down and pats Carl on the head.</p>

<p>&nbsp;</p>

<p>Carl lets out a contented sigh.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I guess having a dog won&rsquo;t be so bad. Always wanted a dog, in fact.</p>

<p>&nbsp;</p>

<p>Frank looks up at the TV, which shows an informercial. He frowns.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Hey, um, Carl... would you mind switching to ESPN. The ball game&rsquo;s on in a few minutes.</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s tail wags a little as the TV channel switches over.</p>
",

number_of_participants: 4
)
project14.remote_project_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466613860/8f7ca15bb79241240f0c145ac229fa0f_original_nzzunl.png'
user14.remote_user_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466592522/Capture_d_e%CC%81cran_2016-06-22_a%CC%80_12.39.49_t1lg3c.png'
user14.save
project14.users << user14
project14.save

#----------------------------------------------------------------------------------------------------------------------------------

user15 = User.new(
first_name: "Sarah",
last_name: "Mako",
birth_date: 19.years.ago,
city: "Los Angeles",
phone_number: "(321) 800-8244",
email: "user15@toto.com",
password: '12345678',
password_confirmation: '12345678'
)

project15 = Project.new(
name: "Us Funny",
start_date: 6.days.from_now,
end_date: 24.days.from_now,
city: "Los Angeles",
genre: "Drama",
price: 12,
price_cents: 12000,
synopsis: "Jim and Julia spend their day on a wonderful date in Los Angeles; they are very much in love. Interspersed, are scenes of Jim at Julia's funeral.",

scenario: "<div>
<p><strong>EXT. QUIET HILLS RECOVERY CENTER - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting in a wheelchair and grumpy as hell, FRANK NICHOLS (89), angrily works skeletal fingers in a vain attempt to remove a thick electronic BRACELET from his left arm.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s a damned invasion of my personal privacy is what it is.</p>

<p>&nbsp;</p>

<p>Readouts blink steadily. Frank stares at them, rapt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t want to see my heart beat.</p>

<p>&nbsp;</p>

<p>Standing behind Frank, BILL (60), Frank&rsquo;s son, places a calm hand on Frank&rsquo;s shoulder.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>BILL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You need to be monitored, Dad. Mary and I live too far away to help if something should happen. It&rsquo;s either the bracelet or a home companion. Your choice.</p>

<p>&nbsp;</p>

<p>Frank stews in his juices, then smacks the bracelet hard on the arm of his wheelchair.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. FRANK&rsquo;S HOUSE - DAY</strong></p>

<p>&nbsp;</p>

<p>A scratch at the door. The doorbell rings. More scratching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m coming, I&rsquo;m coming. Hold your horses.</p>

<p>&nbsp;</p>

<p>Relying heavily on a walker, Frank shuffles towards the door.</p>

<p>&nbsp;</p>

<p>Arthritic hands struggle with the doorknob and finally succeed. The door opens, revealing -</p>

<p>&nbsp;</p>

<p>A large, handsome, alert GERMAN SHEPARD.</p>

<p>&nbsp;</p>

<p>Frank looks at the pooch. Leans out. Looks around. Shrugs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Who rang the bell?</p>

<p>&nbsp;</p>

<p>The dog, CARL, looks up at Frank with soulful eyes.</p>
</div>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I did, Frank. My name is Carl.</p>

<p>&nbsp;</p>

<p>Frank gawks at the talking dog, then stumbles backwards. Carl follows and closes the door behind him.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. KITCHEN - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits alert while Frank nervously makes coffee.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>They didn&rsquo;t say anything about my companion being a talking dog.</p>

<p>&nbsp;</p>

<p>Carl looks Frank up and down. Says nothing.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I mean, I&rsquo;m allergic to dogs.</p>

<p>&nbsp;</p>

<p>Frank snatches a Kleenex from the counter, wipes his nose.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Don&rsquo;t worry, Frank. I&rsquo;m not a real dog. I&rsquo;m a Complex, Artificial, Realistic, Lifeform. C.A.R.L. Carl. And totally non-allergenic.</p>

<p>&nbsp;</p>

<p>Frank crumples the snot rag, sniffs the air, grimaces.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. LIVING ROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Frank scoots his walker to a comfy chair and falls into it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Rules. Gotta follow the rules. And my landlord won&rsquo;t allow Complex, Realistic, uh, dogs in his -</p>

<p>&nbsp;</p>

<p>Carl taps his head with his left paw.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s all in my noggin, Frank. Your entire portfolio. I know that you&rsquo;ve owned this home free and clear for over twenty years.</p>

<p>&nbsp;</p>

<p>Frank&rsquo;s eyes crinkle in a scowl.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>EXT. BATHROOM DOOR - DAY</strong></p>

<p>&nbsp;</p>

<p>Carl sits patiently outside the bathroom door.</p>
</div>
</p>

<p>&nbsp;
<div>
<p style='margin-left:144.0pt;'><strong>FRANK (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>What about food? I can barely remember to feed myself.</p>

<p>&nbsp;</p>

<p>Carl stands on his hind legs and opens the bathroom door.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BATHROOM - DAY</strong></p>

<p>&nbsp;</p>

<p>Sitting on the toilet, Frank jerks in surprise, letting out a SQUEAKY FART, as Carl enters.</p>

<p>&nbsp;</p>

<p>Carl remains upright as a hatch on his belly opens, revealing all sorts of high tech components.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Cold fusion powered. A little water each week and I&rsquo;m good. And between you and me, I kinda prefer toilet water. The porcelain adds a certain something -</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Do you mind? I&rsquo;m trying to, er...</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s brown eyes widen, his tail droops and he backs out, closing the door behind him.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sorry. I should have knocked.</p>

<p>&nbsp;</p>

<p>Frustrated, Frank&rsquo;s hands clench into gnarled fists. Then, his eyebrows raise with a thought.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>You sound like a pretty high tech pup, alright. What if something happens to those computers and gadgets and stuff inside you? I can&rsquo;t afford those kind of repairs.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL (O.S.)</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Bumper to bumper warranty, Frank.</p>

<p>&nbsp;</p>

<p style='margin-left:101.0pt;'><strong>FRANK (under his breath)</strong></p>

<p style='margin-left:101.0pt;'>&nbsp;</p>

<p style='margin-left:72.0pt;'>Dang it.</p>

<p>&nbsp;</p>

<p>Frank eyes search the room for inspiration - and find it.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m in no condition to take you for walkees when you need to, you know, do what I&rsquo;m doing right now.</p>
</div>
</p>

<p>&nbsp;
<div>
<p>A pause, then a knock on the door. Frank rolls his eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>For goodness sake. Come in!</p>

<p>&nbsp;</p>

<p>The door swings open slowly. Carl faces Frank, tail wagging.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m totally self contained. You don&rsquo;t have to worry about a thing. In fact, I&rsquo;ll clean up after you. Plus, I cook, do the laundry and can administer all of your necessary medications.</p>

<p>&nbsp;</p>

<p>Frank stares at Carl, words not coming, and reaches for the toilet paper. Carl gets the hint and turns to leave.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>INT. BEDROOM - NIGHT</strong></p>

<p>&nbsp;</p>

<p>Sitting on the edge of his bed, Frank pulls on a nightshirt.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Sounds to me like you&rsquo;re nothing more than a flea bitten nursemaid. I suppose you&rsquo;re gonna report my every move to my doctors and family, too.</p>

<p>&nbsp;</p>

<p>Carl gazes up at Frank with sad, brown doggy eyes.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>It&rsquo;s not like that at all, Frank. I&rsquo;m here to help you. I&rsquo;ll be by your side day and night. If you need something, I&rsquo;ll fetch it.</p>

<p>&nbsp;</p>

<p>Frank looks dubious, then turns his attention to his night stand, searching.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Where&rsquo;s the darned TV remote?</p>

<p>&nbsp;</p>

<p>Carl sniffs around and retrieves the remote from under the bed. He sets it gently next to Frank&rsquo;s hand.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I don&rsquo;t need a nurse maid. I don&rsquo;t need a dog, neither. I don&rsquo;t need nothin&rsquo;. Nothin&rsquo; at all.</p>

<p>&nbsp;</p>

<p>He clicks the remote. Nothing happens. Nothing at all.</p>
</div>
</p>

<p>&nbsp;
<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>
</p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>&lsquo;Cept maybe some batteries.</p>

<p>&nbsp;</p>

<p>Carl stares at the TV and blinks. The TV comes to life.</p>

<p>&nbsp;</p>

<p>Frank looks at Carl, then the TV. He smiles slightly.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Nice trick.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Thanks. But I&rsquo;m not here to do tricks, Frank.</p>

<p>&nbsp;</p>

<p>Tail wagging with joy, Carl jumps onto the bed next to Frank.</p>

<p>&nbsp;</p>

<p>He leans his muzzle in close to Frank&rsquo;s face.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>CARL</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I&rsquo;m here to be your best friend.</p>

<p>&nbsp;</p>

<p>And with that, Carl licks the entire side of Frank&rsquo;s face, jumps down and curls into a furry ball next to the bed.</p>

<p>&nbsp;</p>

<p>As Frank slowly wipes the very realistic slobber from his cheek, he looks down at Carl and considers.</p>

<p>&nbsp;</p>

<p>His face softens. He reaches down and pats Carl on the head.</p>

<p>&nbsp;</p>

<p>Carl lets out a contented sigh.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>I guess having a dog won&rsquo;t be so bad. Always wanted a dog, in fact.</p>

<p>&nbsp;</p>

<p>Frank looks up at the TV, which shows an informercial. He frowns.</p>

<p>&nbsp;</p>

<p style='margin-left:144.0pt;'><strong>FRANK</strong></p>

<p>&nbsp;</p>

<p style='margin-left:72.0pt;'>Hey, um, Carl... would you mind switching to ESPN. The ball game&rsquo;s on in a few minutes.</p>

<p>&nbsp;</p>

<p>Carl&rsquo;s tail wags a little as the TV channel switches over.</p>
",

number_of_participants: 7
)
project15.remote_project_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466614414/1d684fc1207d41f800ec95642a9dea96_original_io1ets.jpg'
user15.remote_user_picture_url= 'http://res.cloudinary.com/dmobtdbw6/image/upload/v1466592522/Capture_d_e%CC%81cran_2016-06-22_a%CC%80_12.39.49_t1lg3c.png'
user15.save
project15.users << user15
project15.save
