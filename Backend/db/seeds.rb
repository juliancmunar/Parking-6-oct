# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

TiposDeCupo.create(tipo_de_cupo: 'Motos')
TiposDeCupo.create(tipo_de_cupo: 'Bicicleta')
TiposDeCupo.create(tipo_de_cupo: 'Carros')

Role.create(descripcion: 'Administrador')
Role.create(descripcion: 'Usuario')
Role.create(descripcion: 'Mixto')

Usuario.create(calificacion: '5',nombres: 'Julian',apellidos: 'Munar',email: 'juliancmunar@gmail.com',telefono: '1234',password: 'password',role_id:'2')