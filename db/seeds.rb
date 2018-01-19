Service# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.destroy_all
Service.destroy_all

admin = Admin.create email: 'admin@cjr.org.br', password: 'admincjr123'

habilitacao = Service.new price: 0, name: "habilitacao"
habilitacao.macro_service = habilitacao
habilitacao.save

renovacao = Service.new price: 0, name: "renovacao"
renovacao.macro_service = renovacao
renovacao.save

mudanca = Service.new price: 0, name: "mudanca"
mudanca.macro_service = mudanca
mudanca.save

adicao = Service.new price: 0, name: "adicao"
adicao.macro_service = adicao
adicao.save

instrutor = Service.new price: 0, name: "instrutor"
instrutor.macro_service = instrutor
instrutor.save

eco = Service.new price: 115, name: "Exame Clínico e Oftamológico", macro_service: habilitacao
eco.save

psico = Service.new price: 175, name: "Avaliação Psicológica", macro_service: habilitacao
psico.save

op_1_cnh = Service.new price: 58, name: "Custo Operacional", macro_service: habilitacao
op_1_cnh.save
