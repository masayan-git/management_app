# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Master.create!(email:'master@gmail.com',password:'11111111',confirmed_at:Time.now)

Apartment.create!(email:'apartment@gmail.com',password:'11111111',confirmed_at:Time.now)

Residence.create!(email:'residence@gmail.com',password:'11111111',confirmed_at:Time.now)
