require 'faker'







#for the random startdate
t1 = Time.parse("2019-11-01 14:40:34")
t2 = Time.parse("2022-01-01 00:00:00")

5.times do |x|
  Event.create!(

    start_date: rand(t1..t2),
    duration: rand(5..100)*5,
    description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),
    location: Faker::Address.city,
    price: rand(1..1000),
    title: Faker::Book.title)
  puts "Seeding of Event nb #{x}"
end
