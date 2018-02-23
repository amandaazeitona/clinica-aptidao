# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Always purge every table in the bank before seeding
Admin.destroy_all
Service.destroy_all

admin = Admin.create email: 'admin@cjr.org.br', password: 'admincjr123'

habilitacao = Service.new price: 0, name: "1ª Habilitação"
habilitacao.macro_service = habilitacao
habilitacao.save

renovacao = Service.new price: 0, name: "Renovação de CNH (DF)"
renovacao.macro_service = renovacao
renovacao.save

renovacao = Service.new price: 0, name: "Renovação de CNH (outra UF)"
renovacao.macro_service = renovacao
renovacao.save

mudanca = Service.new price: 0, name: "Mudança de Categoria (DF)"
mudanca.macro_service = mudanca
mudanca.save

mudanca = Service.new price: 0, name: "Mudança de Categoria (outra UF)"
mudanca.macro_service = mudanca
mudanca.save

adicao = Service.new price: 0, name: "Adição de Categoria (DF)"
adicao.macro_service = adicao
adicao.save

adicao = Service.new price: 0, name: "Adição de Categoria (outra UF)"
adicao.macro_service = adicao
adicao.save

instrutor = Service.new price: 0, name: "Instrutor, Diretor e Examinador"
instrutor.macro_service = instrutor
instrutor.save

remunerada = Service.new price: 0, name: "Inclusão de Atividade Remunerada"
remunerada.macro_service = remunerada
remunerada.save

a = Service.new price: 633.08, name: "Categoria A", macro_service: habilitacao
a.save

b = Service.new price: 633.08, name: "Categoria B", macro_service: habilitacao
b.save

ab = Service.new price: 693.08, name: "Categoria AB", macro_service: habilitacao
ab.save
