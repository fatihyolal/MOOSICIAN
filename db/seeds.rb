
users1 = User.create!(email: "kanyecrazy2023@gmail.com", password: "12345678",password_confirmation:"12345678" ,username:"@Kanye_crzy" ,
bio:" - All Gas No Breaks - Upcoming artist with sick beeeats too ,yoo! - Rapper/Beats",location: "Chicago,Illinois",admin:true,first_name:"Kanye",last_name:"East")

users2 = User.create!(email: "yungthugga022@gmail.com", password:"12345678", password_confirmation:"12345678",username:"@Youngthug" ,
bio:" I’m the type of person to put myself in everybody else’s shoes - Rapper", location: "Thug's World", first_name:"Young",last_name:"Thug")

users3 = User.create(email: "1future@gmail.com", password:"12345678",password_confirmation:"12345678",username:"@PLUTOHENDRIX" ,
 bio:"Purple Reign - Rapper " ,location: " Atlanta, Georgia",first_name:"FUTURE",last_name:"Hendrix")

users4 = User.create(email: "TayKeithrosssata@hotmail.com", password:"12345678",password_confirmation:"12345678", username:"@Tay_Keith" ,
bio:" - Get it done. Ain’t no excuses - Producer", location: "Memphis, TN",first_name:"Tay",last_name:"Keith")

users5 = User.create(email: "badbunny@hotmail.com", password:"12345678", password_confirmation:"12345678", username:"@BAD_Bunny" ,
bio:" - Antes de que salga el sol y hunda el acelerador - Singer", location: "Costa, Rica",first_name:"Bad",last_name:"Bunny")



chatrooms1 = Chatroom.create!
chatrooms2 = Chatroom.create
chatrooms3 = Chatroom.create
chatrooms4 = Chatroom.create
chatrooms5 = Chatroom.create

   Message.create!(content: "how you doing bro",chatroom:chatrooms1,user:users1)
   Message.create(content:"Long time noo speak",chatroom:chatrooms2,user:users2)
   Message.create(content:"yooo man ive just seen your post would love to collab",chatroom:chatrooms3,user:users3)
   Message.create(content:"heard you was looking for a collab",chatroom:chatrooms4,user:users4)
   Message.create(content:"when you next in LA bro , got a studio!",chatroom:chatrooms5,user:users5)



   posts1 = Post.create!(title: "whats on your mind moosician",
   description: "I WISH I WAS RICHER HAHAA NEW SONG OUT SOON",
   category: "rap",
   user:users1)

   posts2 = Post.create(title: "whats on your mind moosician",
   description: "New Mussiiccc droping sooon",
   category: "rap",
   user:users2)

   posts3 = Post.create(title: "whats on your mind moosician",
   description: "Leave me alone",
   category: "rap",
   user:users3)

   posts4= Post.create(title: "whats on your mind moosician",
   description: "Need a new afro beats collab who does beats",
   category: "rap",
   user:users4)

   posts5= Post.create(title: "whats on your mind moosician",
   description: "Need new talent",
   category: "jazz",
   user:users5)

   Comment.create!(content:"leet me see what i can do for you boss",user:users1,post:posts1)
   Comment.create(content:"I am a huge fan man keep it up",user:users2,post:posts1)
  Comment.create(content:"We need to link up sooon",user:users3,post:posts1)
  Comment.create(content:"check your dms",user:users4,post:posts1)
  Comment.create(content:"i always thought you should get more recognition bro",user:users5,post:posts1)



  Like.create!(user:users1,post:posts1)
  Like.create(user:users2,post:posts3)
  Like.create(user:users3,post:posts2)
  Like.create(user:users4,post:posts4)
  Like.create(user:users5,post:posts5)
