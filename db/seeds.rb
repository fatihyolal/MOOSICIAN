# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = User.create([{ email: "kanyecrazy2023@gmail.com"}, {encrypted_password: "12345678"}, {username:"@Kanye_crzy" },
{bio:" - All Gas No Breaks - Upcoming artist with sick beeeats too ,yoo! - Rapper/Beats"},{location: "Chicago,Illinois"}]),

users = User.create([{ email: "yungthugga022@gmail.com"}, {encrypted_password:"12345678"}, {username:"@Youngthug" },
{bio:" I’m the type of person to put myself in everybody else’s shoes - Rapper"},{location: "Thug's World"}]),

users = User.create([{ email: "1future@gmail.com"}, {encrypted_password:"12345678"}, {username:"@PLUTOHENDRIX" },
{ bio:"Purple Reign - Rapper " },{location: " Atlanta, Georgia, "}]),

users = User.create([{ email: "TayKeithrosssata@hotmail.com"}, {encrypted_password:"12345678"}, {username:"@Tay_Keith" },
{bio:" - Get it done. Ain’t no excuses - Producer"}, {location: "Memphis, TN"}])

users = User.create([{ email: "Bad_Bunny@hotmail.com"}, {encrypted_password:"12345678"}, {username:"@BaDBuNNy" },
{bio:" - Antes' de que salga el sol, hunde el acelerador - Singer"}, {location: "San Jose, Costa Rica"}])

posts = Post
