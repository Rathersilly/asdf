# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i|
  person = Person.create!(name: "person #{i}",
                      email: "person#{i}@example.com")
end
Person.first.pets.create!(name: 'mittens', species: :cat)
Person.first.pets.create!(name: 'spot', species: :dog)
5.times do |i|
  sitter = Sitter.create!(name: "sitter #{i}",
                      email: "sitter#{i}@example.com")
end
5.times do |i|
  user = User.create!(name: "user #{i}",
                      email: "example#{i}@example.com",
                      password: 'asdf',
                      password_confirmation: 'asdf')
end
d = Date.tomorrow
date = DateTime.new(d.year,d.month, d.day,19,0,0,Time.zone.now.zone)
dur =3*60
unt = date.change(hour: 22)


Sit.create!(person: Person.first, sitter: Sitter.first,
            date: date, duration: dur, untiltime: unt)
                      
10.times do |i|
  post = Post.create!(user: "user #{1}",
               title: "post #{i}",
               content: "asdfsadfdstrrsgrgd")

  3.times do 
    comment = post.comments.create(user: "user X",
                       content: "this post just IS man")
    2.times do
      post.comments.create!(user: "user X",
                       content: "this comment just IS man",
                       parent: comment)
    end

  end

end

