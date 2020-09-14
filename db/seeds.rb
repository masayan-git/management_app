# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# coding: utf-8
master = Master.create!(name:'家主',email:'master@gmail.com',password:'11111111')
apartment = Apartment.create!(name:'アパルトメント太郎', room_num:'101', phone_number:'09000000000',email:'apartment@gmail.com',password:'11111111')
residence = Residence.create!(name:'レジデンス花子', room_num:'101', phone_number:'09012345678', email:'residence@gmail.com',password:'11111111')

apartment_tag = Tag.create!(name:'apartment')
residence_tag = Tag.create!(name:'residence')
all_tag = Tag.create!(name:'all')

chatroom_apartment = ChatroomApartment.create!(name:apartment.room_num,master_id:master.id,apartment_id:apartment.id)
chatroom_residence = ChatroomResidence.create!(name:residence.room_num,master_id:master.id,residence_id:apartment.id)


