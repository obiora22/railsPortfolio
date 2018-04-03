# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do |i| 
  title = "Blog #{i + 1}"
  body = Faker::Lorem.paragraph
  Blog.create!({title: title, body: body, status: 0})
end 

Skill.create!({title: "Rails", proficiency_percent: 50}) 
Skill.create!({title: "JavaScript", proficiency_percent: 70}) 
Skill.create!({title: "CSS", proficiency_percent: 60}) 
Skill.create!({title: "ReactJS", proficiency_percent: 50}) 
Skill.create!({title: "HTML", proficiency_percent: 60}) 

9.times do |i|
  Portfolio.create!(
    title: "Portfolio #{i}",
    subtitle: "Subtitle #{i}",
    body: Faker::Lorem.paragraph,
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"
  )
end 