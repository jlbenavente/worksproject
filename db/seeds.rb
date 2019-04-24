# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  ubicacion = Location.create!(
    region:'metropolitana', 
    commune: 'puente alto', 
    city: 'santiago')

  usuario =User.create!(
    name:Faker::TvShows::GameOfThrones.character,
    last_name:Faker::TvShows::GameOfThrones.house,
    email:Faker::Internet.email,
    password: '123456',
    location: ubicacion)

  conversacion =Conversation.create!(
    name:Faker::TvShows::GameOfThrones.character,
    speaker_one:usuario,
    speaker_two:usuario)

  habilidad = Skill.create!(
    name:Faker::Job.title,
    user: usuario)

  joboffers = Joboffer.create!(
    [
      {title: 'Constructor', user: usuario, description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit quia libero velit voluptatibus qui perspiciatis', skill: habilidad, location: ubicacion, conversation: conversacion, photo: 'https://conpocaslucas.files.wordpress.com/2006/10/bachcacho1.jpg?w=420'},
      {title: 'Electricista', user: usuario, description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit quia libero velit voluptatibus qui perspiciatis', skill: habilidad, location: ubicacion, conversation: conversacion, photo: 'https://media.cnnchile.com/2018/08/imagen_principal-28292-740x400.jpg'},
      {title: 'Bailarin', user: usuario, description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit quia libero velit voluptatibus qui perspiciatis', skill: habilidad, location: ubicacion , conversation: conversacion, photo: 'http://www.quieropuroviajar.com/wp-content/uploads/2014/09/origen-cueca.jpg'},
      {title: 'Jugador de futball', user: usuario, description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit quia libero velit voluptatibus qui perspiciatis', skill: habilidad, location: ubicacion, conversation: conversacion, photo: 'https://www.eldia.com.bo/images/Noticias/12-9-25/TROMP02.jpg'},
      {title: 'subir cosas al piso 20 por escaleras', user: usuario, description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit quia libero velit voluptatibus qui perspiciatis', skill: habilidad, location: ubicacion, conversation: conversacion, photo: 'https://media.cnnchile.com/2018/09/haiti-740x430.jpg'},
      {title: 'persona que sepa Hacer un asado', user: usuario, description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit quia libero velit voluptatibus qui perspiciatis', skill: habilidad, location: ubicacion, conversation: conversacion, photo: 'https://secretosde.club/wp-content/uploads/2018/06/borrego.jpg'},
      {title: 'tarotista', user: usuario, description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit quia libero velit voluptatibus qui perspiciatis', skill: habilidad, location: ubicacion, conversation: conversacion, photo: 'https://womanwine.cl/wp/wp-content/uploads/2017/09/Terremoto.jpg'},
      {title: 'dibujante', user: usuario, description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit quia libero velit voluptatibus qui perspiciatis', skill: habilidad, location: ubicacion, conversation: conversacion, photo: 'http://cdn.plataformaurbana.cl/wp-content/uploads/2016/09/fondas-parque-ohiggins-flickr-usuario-municipalidad-de-santiago-licencia-cc-by-nc-2.0.jpg'},
      {title: 'mecanico automotriz', user: usuario, description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odit quia libero velit voluptatibus qui perspiciatis', skill: habilidad, location: ubicacion, conversation: conversacion, photo: 'http://p11.ivn.cl/portal_rodeo/site/artic/20120126/imag/foto_6867420120126085340.jpg'},
    ]
  )