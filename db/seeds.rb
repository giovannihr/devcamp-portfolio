# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 Topics created"

10.times do |x|
  Blog.create!(
    title: "My Blog Post #{x}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    topic_id: Topic.last.id
  )
end

puts "10 blog post created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
      title: "Portfolio title: #{portfolio_item}",
      subtitle: "Ruby on Rails",
      body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ",
      main_image: "http://placehold.it/600x400",
      thumb_image: "http://placehold.it/350x200"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
      title: "Portfolio title: #{portfolio_item}",
      subtitle: "Angular",
      body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. ",
      main_image: "http://placehold.it/600x400",
      thumb_image: "http://placehold.it/350x200"
  )
end

puts "9 portfolio items created"

3.times do |techonology|
  Portfolio.last.technologies.create!(
    name: "Technology #{techonology}"

  )
end

puts "3 technologies created"
