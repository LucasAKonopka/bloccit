include RandomData

15.times do 
  Topic.create!(
    name: RandomData.random_sentence,
    description: RandomData.random_paragraph
    )
end
topics = Topic.all

10.times do
  Sponsoredpost.create!(
    topic: topics.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    price: 9 
    )
end
sponsoredposts = Sponsoredpost.all

50.times do
  Post.create!(
    topic: topics.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample ,
    body: RandomData.random_paragraph
  )
end

puts "Seed finished"
puts "#{Topic.count} topics created"
puts "#{Sponsoredpost.count} sponsored posts created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
