# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
3.times do |n|
  name  = Faker::Name.name
  group = Faker:Company.name
  email = name.gsub(/\s/,'_') + "@example.com"  # < same issue with name
  animal_list =["kangaroo", "greyhound", "cat", "fish", "bird", "dolphin"]
  animal = animal_list[rand(animalU_list.size)]
  reminder_list = ["birthday, exam, holiday, vacation, project"]
  text = reminder_list[rand(reminder_list.size)]
  time = Faker::Time.forward(30, :all)
  birthday = Faker::Date.backward(9125)

  # etc
  Group.create(name: group) 


  User.create(name: name, email: email, animal: animal, birthday:birthday)

  Reminder.create(text:text, time:time)
end 