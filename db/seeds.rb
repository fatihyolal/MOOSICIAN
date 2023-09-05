# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



users = User.create!([{ email: "kanyecrazy2023@gmail.com", password: "12345678", username:"@Kanye_crzy" ,
bio:" - All Gas No Breaks - Upcoming artist with sick beeeats too ,yoo! - Rapper/Beats",location: "Chicago,Illinois",admin:true}])

users = User.create([{ email: "yungthugga022@gmail.com"}, {encrypted_password:"12345678"}, {username:"@Youngthug" },
{bio:" I’m the type of person to put myself in everybody else’s shoes - Rapper"},{location: "Thug's World"}]),

users = User.create([{ email: "1future@gmail.com"}, {encrypted_password:"12345678"}, {username:"@PLUTOHENDRIX" },
{ bio:"Purple Reign - Rapper " },{location: " Atlanta, Georgia, "}]),

users = User.create([{ email: "TayKeithrosssata@hotmail.com"}, {encrypted_password:"12345678"}, {username:"@Tay_Keith" },
{bio:" - Get it done. Ain’t no excuses - Producer"}, {location: "Memphis, TN"}])



messages = Message.create([{content:"how you doing bro"},{chatroom:chatroom.take{1}},{user:user.take{1}}])
messages = Message.create([{content:"Long time noo speak"},{chatroom:chatroom.take{1}},{user:user.take{1}}])
messages = Message.create([{content:"yooo man ive just seen your post would love to collab"},{chatroom:chatroom.take{1}},{user:user.take{1}}])
messages = Message.create([{content:"heard you was looking for a collab"},{chatroom:chatroom.take{1}},{user:user.take{1}}])
messages = Message.create([{content:"when you next in LA bro , got a studio!"},{chatroom:chatroom.take{1}},{user:user.take{1}}])




comments = Comment.create([{content:"leet me see what i can do for you boss"},{user:user.take{1}},{post:post.take{1}}])
comments = Comment.create([{content:"I am a huge fan man keep it up"},{user:user.take{1}},{post:post.take{1}}])
comments = Comment.create([{content:"We need to link up sooon"},{user:user.take{1}},{post:post.take{1}}])
comments = Comment.create([{content:"check your dms"},{user:user.take{1}},{post:post.take{1}}])
comments = Comment.create([{content:"i always thought you should get more recognition bro"},{user:user.take{1}},{post:post.take{1}}])
