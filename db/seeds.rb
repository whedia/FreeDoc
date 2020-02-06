# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

nbpatient = 50
nbcity = 20
nbdoctor = 5
patients = []
cities = []
doctors = []

nbcity.times do |x|
  city = City.create(name: Faker::Address.city)
  cities << city
  puts "Seeding City nb#{x}"
end

#Creation de 5 patient
nbpatient.times do |x|
  patient = Patient.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city_id: cities[rand(0..nbcity-1)].id)
    patients << patient
  puts "Seeding Patient nb#{x}"
end

nbdoctor.times do |x|
  doctor = Doctor.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    zip_code: Faker::Address.zip_code,
    city: cities[rand(0..nbcity-1)])
    doctors << doctor
  puts "Seeding Doctor nb#{x}"
end




=begin
d1 = Doctor.create(first_name: "Jean", last_name: "Lasalle", zip_code: "yoyo")
d2 = Doctor.create(first_name: "John", last_name: "Rambo", zip_code: "yoya")

p1 = Patient.create(first_name: "Rocky", last_name: "Balboa")
p2 = Patient.create(first_name: "Johnny", last_name: "Depp")

c1 = City.create(name: "New-York")
c2 = City.create(name: "Las Vegas")

s1 = Speciality.create(name: "gynécologue")
s1 = Speciality.create(name: "urologue")

a1 = Appointment.create(date: "2018-09-23T12:30:00+00:00")
a1 = Appointment.create(date: "2019-07-02T09:00:00+00:00")

j1 = Job.create(name: "one")
j2 = Job.create(name: "two")

puts "Deux docteurs, deux patients et deux villes ont été créés"
=end