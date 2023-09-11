require "open-uri"

Message.destroy_all
Comment.destroy_all
Like.destroy_all
Post.destroy_all
User.destroy_all


users1 = User.new(email: "kanyecrazy2023@gmail.com", password: "12345678",password_confirmation:"12345678" ,username:"Kanye_crzy" ,
bio:" - All Gas No Breaks - Upcoming artist with sick beeeats too ,yoo! - Rapper/Beats",location: "Chicago,Illinois",admin:true,first_name:"Kanye",last_name:"East")
users1.photo.attach(io: URI.open("https://imageio.forbes.com/specials-images/imageserve/5ed00f17d4a99d0006d2e738/0x0.jpg?format=jpg&crop=4666,4663,x154,y651,safe&height=416&width=416&fit=bounds"), filename: "nes1.png", content_type: "image/png")
users1.save!

users2 = User.new(email: "yungthugga022@gmail.com", password:"12345678", password_confirmation:"12345678",username:"Youngthug__01" ,
bio:" I’m the type of person to put myself in everybody else’s shoes - Rapper", location: "Thug's World", first_name:"Young",last_name:"Thug")
users2.photo.attach(io: URI.open("https://img.buzzfeed.com/buzzfeed-static/complex/images/uwr3uur8lmnj79v40c8j/young-thug-bumbershoot-suzi-pratt.jpg?output-format=jpg&output-quality=auto"), filename: "nes2.png", content_type: "image/png")
users2.save!

users3 = User.new(email: "1future@gmail.com", password:"12345678",password_confirmation:"12345678",username:"PLUTOHENDRIX" ,
bio:"Purple Reign - Rapper " ,location: " Atlanta, Georgia",first_name:"FUTURE",last_name:"Hendrix")
users3.photo.attach(io: URI.open("https://www.nme.com/wp-content/uploads/2020/05/prince-williams-future-getty-2020.jpg"), filename: "nes3.png", content_type: "image/png")
users3.save!

users4 = User.new(email: "TayKeithrosssata@hotmail.com", password:"12345678",password_confirmation:"12345678", username:"Tay_Keith" ,
bio:" - Get it done. Ain’t no excuses - Producer", location: "Memphis, TN",first_name:"Tay",last_name:"Keith")
users4.photo.attach(io: URI.open("https://www.billboard.com/wp-content/uploads/2021/02/Tay-Keith-2019-billboard-1548-1613665062.jpg"), filename: "nes4.png", content_type: "image/png")
users4.save!

users5 = User.new(email: "badbunny@hotmail.com", password:"12345678", password_confirmation:"12345678", username:"BAD_Bunny" ,
bio:" - Antes de que salga el sol y hunda el acelerador - Singer", location: "Costa, Rica",first_name:"Bad",last_name:"Bunny")
users5.photo.attach(io: URI.open("https://www.billboard.com/wp-content/uploads/2023/02/Bad-Bunny-2022-billboard-pro-1260.jpg?w=942&h=623&crop=1"), filename: "nes5.png", content_type: "image/png")
users5.save!



chatrooms1 = Chatroom.create!
chatrooms2 = Chatroom.create
chatrooms3 = Chatroom.create
chatrooms4 = Chatroom.create
chatrooms5 = Chatroom.create

   Message.create!(content: "how you doing bro",chatroom:chatrooms1,user:users1)
   Message.create!(content: "Long time noo speak",chatroom:chatrooms1,user:users2)
   Message.create!(content: "whats up",chatroom:chatrooms2,user:users3)
   Message.create!(content: "yooo man ive just seen your post would love to collab",chatroom:chatrooms2,user:users4)
   Message.create(content:"Long time noo speak",chatroom:chatrooms3,user:users1)
   Message.create(content:"yooo man ive just seen your post would love to collab",chatroom:chatrooms3,user:users3)
   Message.create(content:"heard you was looking for a collab",chatroom:chatrooms4,user:users4)
   Message.create(content:"when you next in LA bro , got a studio!",chatroom:chatrooms4,user:users5)
   Message.create(content:"You know it’s funny when it rains it pours, they got money for wars but can’t feed the poor",chatroom:chatrooms5,user:users4)
   Message.create(content:"Last name ever, first name greatest, like a sprained ankle boy, I ain’t nothin’ to play with.",chatroom:chatrooms5,user:users5)




   posts1 = Post.create!(title: "whats on your mind moosician",
   description: "I WISH I WAS RICHER - comming out soon, looking for someone to feature...",
   category: "rap",
   user:users1)

   posts2 = Post.create(title: "whats on your mind moosician",
   description: "New track droping sooon, here's a sample.",
   category: "rap",
   user:users2)

   posts3 = Post.create(title: "whats on your mind moosician",
   description: "Trap beat I made last night, what do you guys think?",
   category: "rap",
   user:users3)

   posts4= Post.create(title: "whats on your mind moosician",
   description: "Need a collab who makes beats, looking for something with a Dancehall vibe.",
   category: "rap",
   user:users4)

   posts5= Post.create(title: "whats on your mind moosician",
   description: "Wrote these lyrics for this track but can't get the mix right, any sound engineers wanna help?",
   category: "jazz",
   user:users5)

   Comment.create!(content:"leet me see what i can do for you boss",user:users1,post:posts1)
   Comment.create(content:"I am a huge fan man keep it up",user:users2,post:posts1)
  Comment.create(content:"We need to link up sooon",user:users3,post:posts1)
  Comment.create(content:"check your dms",user:users4,post:posts1)
  Comment.create(content:"I always thought you should get more recognition bro",user:users5,post:posts1)
  Comment.create(content:"We need to link up sooon",user:users3,post:posts2)
  Comment.create(content:"This is fire!",user:users4,post:posts2)
  Comment.create(content:"Would love to discuss this more, sent you a message...",user:users5,post:posts2)
  Comment.create(content:"check your dms",user:users4,post:posts3)
  Comment.create(content:"i always thought you should get more recognition bro",user:users5,post:posts3)
  Comment.create(content:"check your dms",user:users4,post:posts4)
  Comment.create(content:"i always thought you should get more recognition bro",user:users5,post:posts4)
  Comment.create(content:"We need to link up sooon",user:users3,post:posts4)
  Comment.create(content:"check your dms",user:users4,post:posts4)
  Comment.create(content:"i always thought you should get more recognition bro",user:users5,post:posts5)
  Comment.create(content:"check your dms",user:users4,post:posts5)



  Like.create!(user:users1,post:posts1)
  Like.create(user:users1,post:posts3)
  Like.create(user:users1,post:posts2)
  Like.create(user:users1,post:posts4)
  Like.create(user:users1,post:posts5)
  Like.create!(user:users2,post:posts1)
  Like.create(user:users2,post:posts3)
  Like.create(user:users2,post:posts2)
  Like.create(user:users2,post:posts4)
  Like.create(user:users2,post:posts5)
  Like.create!(user:users3,post:posts1)
  Like.create(user:users3,post:posts2)
  Like.create(user:users3,post:posts5)
  Like.create!(user:users4,post:posts1)
  Like.create(user:users4,post:posts5)
  Like.create!(user:users5,post:posts1)
