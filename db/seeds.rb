# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


admin = Admin.create email: 'admin@cjr.org.br', password: 'admincjr123'

habilitacao = Price.create price: 100
renovacao   = Price.create price: 200
mudanca     = Price.create price: 300
adicao      = Price.create price: 400
instrutor   = Price.create price: 500
