# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 12.times do |i|
#   Joboffer.create!(
#     title: Faker::Job.title,
#     description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit quia libero',
#     photo: "http://lorempixel.com/400/200/business/#{i + 1}/",
#     budget: Faker::Commerce.price.to_i,
#     user: Faker::TvShows::GameOfThrones.character,
#     skill: Faker::Job.position,
#     location: Faker::Nation.capital_city

#     )
# end

    usuario = User.create!(
    name:'jose',
    last_name:'benavente',
    email:'josebc@gmail.com',
    password: '123456')

    habilidad = Skill.create!(
    name: Faker::Job.position,
    user: usuario)

    conversacion = Conversation.create!(
    name:Faker::TvShows::GameOfThrones.character,
    speaker_one:usuario,
    speaker_two:usuario,
    joboffer: Joboffer.first)

  

    Joboffer.create!(
    [
      {title: 'Constructor', user: usuario, description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit quia libero velit voluptatibus qui perspiciatis', skill: habilidad, location: 'santiago', conversation: conversacion, photo: 'https://conpocaslucas.files.wordpress.com/2006/10/bachcacho1.jpg?w=420'}
    ]
  )