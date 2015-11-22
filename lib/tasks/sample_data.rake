3.times do |n|
  name  = Faker::Name.name
  email = name.gsub(/\s/,'_') + "@example.com"  # < same issue with name

  # etc
  Group.create(name: name)
end
