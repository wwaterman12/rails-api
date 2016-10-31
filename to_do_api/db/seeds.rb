15.times do
  Author.create({
    name: FFaker::Name.first_name
    })
end

50.times do
  Post.create({
    content: FFaker::HipsterIpsum::paragraph,
    author_id: Random.rand(1..15)
  })
end
