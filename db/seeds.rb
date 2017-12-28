# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


admin = Admin.create email: 'admin@cjr.org.br', password: 'admincjr123'

section = Section.create name: 'header'
          Section.create name: 'about'
          Section.create name: 'services'
          Section.create name: 'portfolio'
          Section.create name: 'contact'

header = Section.find_by(name: 'header')
header.contents.create text: 'Clínica Aptidão'
header.contents.create text: 'Sobre'
header.contents.create text: 'Serviços'
header.contents.create text: 'Portfólio'
header.contents.create text: 'Contato'
