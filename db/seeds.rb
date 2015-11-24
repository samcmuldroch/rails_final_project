# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
3.times do |n|
  name  = Faker::Name.name
  email = name.gsub(/\s/,'_') + "@example.com"  # < same issue with name

  # etc
  Group.create(name: name)
  User.create(name: name, email: name, birthday: name, animal: name)
  Reminder.create(text: name, time: name)
end
