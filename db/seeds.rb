#encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', cities: cities.first)

states_list = [
                ["Acre", "AC"],
                ["Alagoas", "AL"],
                ["Amapá", "AP"],
                ["Amazonas", "AM"],
                ["Bahia", "BA"],
                ["Ceará", "CE"],
                ["Distrito Federal", "DF"],
                ["Espírito Santo", "ES"],
                ["Goiás", "GO"],
                ["Maranhão", "MA"],
                ["Mato Grosso", "MT"],
                ["Mato Grosso do Sul", "MS"],
                ["Minas Gerais", "MG"],
                ["Pará", "PA"],
                ["Paraíba", "PB"],
                ["Paraná", "PR"],
                ["Pernambuco", "PE"],
                ["Piauí", "PI"],
                ["Rio de Janeiro", "RJ"],
                ["Rio Grande do Norte", "RN"],
                ["Rio Grande do Sul", "RS"],
                ["Rondônia", "RO"],
                ["Roraima", "RR"],
                ["Santa Catarina", "SC"],
                ["São Paulo", "SP"],
                ["Sergipe", "SE"],
                ["Tocantins", "TO"]
             ]

states_list.each do |name, acronym|
   State.create(name: name, acronym: acronym)
end

cities_list = [
                ["Rio de Janeiro", "RJ"],
                ["Niterói", "RJ"],
                ["São Gonçalo", "RJ"]
              ]

cities_list.each do |name, state_acronym|
  s = State.where(acronym: state_acronym).first
  s.cities.create(name: name)
end

district_list = [
    ["Abolição","Rio de Janeiro", "RJ"],
    ["Acari","Rio de Janeiro", "RJ"],
    ["Água Santa","Rio de Janeiro", "RJ"],
    ["Alto da Boa Vista","Rio de Janeiro", "RJ"],
    ["Anchieta","Rio de Janeiro", "RJ"],
    ["Andaraí","Rio de Janeiro", "RJ"],
    ["Anil","Rio de Janeiro", "RJ"],
    ["Bancários","Rio de Janeiro", "RJ"],
    ["Bangu","Rio de Janeiro", "RJ"],
    ["Barra da Tijuca","Rio de Janeiro", "RJ"],
    ["Barra de Guaratiba","Rio de Janeiro", "RJ"],
    ["Barros Filho","Rio de Janeiro", "RJ"],
    ["Benfica","Rio de Janeiro", "RJ"],
    ["Bento Ribeiro","Rio de Janeiro", "RJ"],
    ["Bonsucesso","Rio de Janeiro", "RJ"],
    ["Botafogo","Rio de Janeiro", "RJ"],
    ["Brás de Pina","Rio de Janeiro", "RJ"],
    ["Cachambi","Rio de Janeiro", "RJ"],
    ["Cacuia","Rio de Janeiro", "RJ"],
    ["Caju","Rio de Janeiro", "RJ"],
    ["Camorim","Rio de Janeiro", "RJ"],
    ["Campinho","Rio de Janeiro", "RJ"],
    ["Campo dos Afonsos","Rio de Janeiro", "RJ"],
    ["Campo Grande","Rio de Janeiro", "RJ"],
    ["Cascadura","Rio de Janeiro", "RJ"],
    ["Catete","Rio de Janeiro", "RJ"],
    ["Catumbi","Rio de Janeiro", "RJ"],
    ["Cavalcanti","Rio de Janeiro", "RJ"],
    ["Centro","Rio de Janeiro", "RJ"],
    ["Cidade de Deus","Rio de Janeiro", "RJ"],
    ["Cidade Nova","Rio de Janeiro", "RJ"],
    ["Cidade Universitária","Rio de Janeiro", "RJ"],
    ["Cocotá","Rio de Janeiro", "RJ"],
    ["Coelho Neto","Rio de Janeiro", "RJ"],
    ["Colégio","Rio de Janeiro", "RJ"],
    ["Complexo do Alemão","Rio de Janeiro", "RJ"],
    ["Copacabana","Rio de Janeiro", "RJ"],
    ["Cordovil","Rio de Janeiro", "RJ"],
    ["Cosme Velho","Rio de Janeiro", "RJ"],
    ["Cosmos","Rio de Janeiro", "RJ"],
    ["Costa Barros","Rio de Janeiro", "RJ"],
    ["Curicica","Rio de Janeiro", "RJ"],
    ["Del Castilho","Rio de Janeiro", "RJ"],
    ["Deodoro","Rio de Janeiro", "RJ"],
    ["Encantado","Rio de Janeiro", "RJ"],
    ["Engenheiro Leal","Rio de Janeiro", "RJ"],
    ["Engenho da Rainha","Rio de Janeiro", "RJ"],
    ["Engenho de Dentro","Rio de Janeiro", "RJ"],
    ["Engenho Novo","Rio de Janeiro", "RJ"],
    ["Estácio","Rio de Janeiro", "RJ"],
    ["Flamengo","Rio de Janeiro", "RJ"],
    ["Freguesia (Ilha do Governador)","Rio de Janeiro", "RJ"],
    ["Freguesia (Jacarepaguá)","Rio de Janeiro", "RJ"],
    ["Galeão","Rio de Janeiro", "RJ"],
    ["Gamboa","Rio de Janeiro", "RJ"],
    ["Gardênia Azul","Rio de Janeiro", "RJ"],
    ["Gávea","Rio de Janeiro", "RJ"],
    ["Gericinó","Rio de Janeiro", "RJ"],
    ["Glória","Rio de Janeiro", "RJ"],
    ["Grajaú","Rio de Janeiro", "RJ"],
    ["Grumari","Rio de Janeiro", "RJ"],
    ["Guadalupe","Rio de Janeiro", "RJ"],
    ["Guaratiba","Rio de Janeiro", "RJ"],
    ["Higienópolis","Rio de Janeiro", "RJ"],
    ["Honório Gurgel","Rio de Janeiro", "RJ"],
    ["Humaitá","Rio de Janeiro", "RJ"],
    ["Inhaúma","Rio de Janeiro", "RJ"],
    ["Inhoaíba","Rio de Janeiro", "RJ"],
    ["Ipanema","Rio de Janeiro", "RJ"],
    ["Irajá","Rio de Janeiro", "RJ"],
    ["Itanhangá","Rio de Janeiro", "RJ"],
    ["Jacaré","Rio de Janeiro", "RJ"],
    ["Jacarepaguá","Rio de Janeiro", "RJ"],
    ["Jacarezinho","Rio de Janeiro", "RJ"],
    ["Jardim América","Rio de Janeiro", "RJ"],
    ["Jardim Botânico","Rio de Janeiro", "RJ"],
    ["Jardim Carioca","Rio de Janeiro", "RJ"],
    ["Jardim Guanabara","Rio de Janeiro", "RJ"],
    ["Jardim Sulacap","Rio de Janeiro", "RJ"],
    ["Joá","Rio de Janeiro", "RJ"],
    ["Lagoa","Rio de Janeiro", "RJ"],
    ["Lapa","Rio de Janeiro", "RJ"],
    ["Laranjeiras","Rio de Janeiro", "RJ"],
    ["Leblon","Rio de Janeiro", "RJ"],
    ["Leme","Rio de Janeiro", "RJ"],
    ["Lins de Vasconcelos","Rio de Janeiro", "RJ"],
    ["Madureira","Rio de Janeiro", "RJ"],
    ["Magalhães Bastos","Rio de Janeiro", "RJ"],
    ["Mangueira","Rio de Janeiro", "RJ"],
    ["Manguinhos","Rio de Janeiro", "RJ"],
    ["Maracanã","Rio de Janeiro", "RJ"],
    ["Maré","Rio de Janeiro", "RJ"],
    ["Marechal Hermes","Rio de Janeiro", "RJ"],
    ["Maria da Graça","Rio de Janeiro", "RJ"],
    ["Méier","Rio de Janeiro", "RJ"],
    ["Moneró","Rio de Janeiro", "RJ"],
    ["Olaria","Rio de Janeiro", "RJ"],
    ["Oswaldo Cruz","Rio de Janeiro", "RJ"],
    ["Paciência","Rio de Janeiro", "RJ"],
    ["Padre Miguel","Rio de Janeiro", "RJ"],
    ["Paquetá","Rio de Janeiro", "RJ"],
    ["Parada de Lucas","Rio de Janeiro", "RJ"],
    ["Parque Anchieta","Rio de Janeiro", "RJ"],
    ["Parque Columbia","Rio de Janeiro", "RJ"],
    ["Pavuna","Rio de Janeiro", "RJ"],
    ["Pechincha","Rio de Janeiro", "RJ"],
    ["Pedra de Guaratiba","Rio de Janeiro", "RJ"],
    ["Penha","Rio de Janeiro", "RJ"],
    ["Penha Circular","Rio de Janeiro", "RJ"],
    ["Piedade","Rio de Janeiro", "RJ"],
    ["Pilares","Rio de Janeiro", "RJ"],
    ["Pitangueiras","Rio de Janeiro", "RJ"],
    ["Portuguesa","Rio de Janeiro", "RJ"],
    ["Praça da Bandeira","Rio de Janeiro", "RJ"],
    ["Praça Seca","Rio de Janeiro", "RJ"],
    ["Praia da Bandeira","Rio de Janeiro", "RJ"],
    ["Quintino Bocaiúva","Rio de Janeiro", "RJ"],
    ["Ramos","Rio de Janeiro", "RJ"],
    ["Realengo","Rio de Janeiro", "RJ"],
    ["Recreio dos Bandeirantes","Rio de Janeiro", "RJ"],
    ["Riachuelo","Rio de Janeiro", "RJ"],
    ["Ribeira","Rio de Janeiro", "RJ"],
    ["Ricardo de Albuquerque","Rio de Janeiro", "RJ"],
    ["Rio Comprido","Rio de Janeiro", "RJ"],
    ["Rocha","Rio de Janeiro", "RJ"],
    ["Rocha Miranda","Rio de Janeiro", "RJ"],
    ["Rocinha","Rio de Janeiro", "RJ"],
    ["Sampaio","Rio de Janeiro", "RJ"],
    ["Santa Cruz","Rio de Janeiro", "RJ"],
    ["Santa Teresa","Rio de Janeiro", "RJ"],
    ["Santíssimo","Rio de Janeiro", "RJ"],
    ["Santo Cristo","Rio de Janeiro", "RJ"],
    ["São Conrado","Rio de Janeiro", "RJ"],
    ["São Cristóvão","Rio de Janeiro", "RJ"],
    ["São Francisco Xavier","Rio de Janeiro", "RJ"],
    ["Saúde","Rio de Janeiro", "RJ"],
    ["Senador Camará","Rio de Janeiro", "RJ"],
    ["Senador Vasconcelos","Rio de Janeiro", "RJ"],
    ["Sepetiba","Rio de Janeiro", "RJ"],
    ["Tanque","Rio de Janeiro", "RJ"],
    ["Taquara","Rio de Janeiro", "RJ"],
    ["Tauá","Rio de Janeiro", "RJ"],
    ["Tijuca","Rio de Janeiro", "RJ"],
    ["Todos os Santos","Rio de Janeiro", "RJ"],
    ["Tomás Coelho","Rio de Janeiro", "RJ"],
    ["Turiaçu","Rio de Janeiro", "RJ"],
    ["Urca","Rio de Janeiro", "RJ"],
    ["Vargem Grande","Rio de Janeiro", "RJ"],
    ["Vargem Pequena","Rio de Janeiro", "RJ"],
    ["Vasco da Gama","Rio de Janeiro", "RJ"],
    ["Vaz Lobo","Rio de Janeiro", "RJ"],
    ["Vicente de Carvalho","Rio de Janeiro", "RJ"],
    ["Vidigal","Rio de Janeiro", "RJ"],
    ["Vigário Geral","Rio de Janeiro", "RJ"],
    ["Vila Cosmos","Rio de Janeiro", "RJ"],
    ["Vila da Penha","Rio de Janeiro", "RJ"],
    ["Vila Isabel","Rio de Janeiro", "RJ"],
    ["Vila Militar","Rio de Janeiro", "RJ"],
    ["Vila Valqueire","Rio de Janeiro", "RJ"],
    ["Vista Alegre","Rio de Janeiro", "RJ"],
    ["Zumbi","Rio de Janeiro", "RJ"],

    ["Boa Viagem","Niterói", "RJ"],
    ["Cachoeiras","Niterói", "RJ"],
    ["Centro","Niterói", "RJ"],
    ["Charitas","Niterói", "RJ"],
    ["Fátima","Niterói", "RJ"],
    ["Gragoatá","Niterói", "RJ"],
    ["Icaraí","Niterói", "RJ"],
    ["Ingá","Niterói", "RJ"],
    ["Jurujuba","Niterói", "RJ"],
    ["Morro do Estado","Niterói", "RJ"],
    ["Pé Pequeno","Niterói", "RJ"],
    ["Ponta D'Areia","Niterói", "RJ"],
    ["Santa Rosa","Niterói", "RJ"],
    ["São Domingos","Niterói", "RJ"],
    ["São Francisco","Niterói", "RJ"],
    ["Viradouro","Niterói", "RJ"],
    ["Vital Brazil","Niterói", "RJ"],
    ["Baldeador","Niterói", "RJ"],
    ["Barreto","Niterói", "RJ"],
    ["Caramujo","Niterói", "RJ"],
    ["Cubango","Niterói", "RJ"],
    ["Engenhoca","Niterói", "RJ"],
    ["Fonseca","Niterói", "RJ"],
    ["Ilha da Conceição","Niterói", "RJ"],
    ["Santa Bárbara","Niterói", "RJ"],
    ["Santana","Niterói", "RJ"],
    ["São Lourenço","Niterói", "RJ"],
    ["Tenente Jardim","Niterói", "RJ"],
    ["Viçoso Jardim","Niterói", "RJ"],
    ["Badu","Niterói", "RJ"],
    ["Cantagalo","Niterói", "RJ"],
    ["Ititioca","Niterói", "RJ"],
    ["Largo da Batalha","Niterói", "RJ"],
    ["Maceió","Niterói", "RJ"],
    ["Maria Paula","Niterói", "RJ"],
    ["Matapaca","Niterói", "RJ"],
    ["Sapê","Niterói", "RJ"],
    ["Vila Progresso","Niterói", "RJ"],
    ["Muriqui","Niterói", "RJ"],
    ["Rio do Ouro","Niterói", "RJ"],
    ["Várzea das Moças","Niterói", "RJ"],
    ["Cafubá","Niterói", "RJ"],
    ["Camboinhas","Niterói", "RJ"],
    ["Engenho do Mato","Niterói", "RJ"],
    ["Itacoatiara","Niterói", "RJ"],
    ["Itaipu","Niterói", "RJ"],
    ["Jacaré","Niterói", "RJ"],
    ["Jardim Imbuí","Niterói", "RJ"],
    ["Maravista","Niterói", "RJ"],
    ["Piratininga","Niterói", "RJ"],
    ["Santo Antônio","Niterói", "RJ"],
    ["Serra Grande","Niterói", "RJ"],


    ["Palmeira","São Gonçalo", "RJ"],
    ["Itaoca","São Gonçalo", "RJ"],
    ["Fazenda dos Mineiros","São Gonçalo", "RJ"],
    ["Porto do Rosa","São Gonçalo", "RJ"],
    ["Boaçu","São Gonçalo", "RJ"],
    ["Zé Garoto","São Gonçalo", "RJ"],
    ["Brasilânda","São Gonçalo", "RJ"],
    ["Rosane","São Gonçalo", "RJ"],
    ["Vila Lara","São Gonçalo", "RJ"],
    ["Centro (Rodo de S.G.)","São Gonçalo", "RJ"],
    ["Rocha","São Gonçalo", "RJ"],
    ["Lindo Parque","São Gonçalo", "RJ"],
    ["Tribobó","São Gonçalo", "RJ"],
    ["Colubandê","São Gonçalo", "RJ"],
    ["Mutondo","São Gonçalo", "RJ"],
    ["Galo Branco","São Gonçalo", "RJ"],
    ["Estrela do Norte","São Gonçalo", "RJ"],
    ["São Miguel","São Gonçalo", "RJ"],
    ["Mutuá","São Gonçalo", "RJ"],
    ["Mutuaguaçu","São Gonçalo", "RJ"],
    ["Mutuapira","São Gonçalo", "RJ"],
    ["Cruzeiro do Sul","São Gonçalo", "RJ"],
    ["Antonina","São Gonçalo", "RJ"],
    ["Nova Cidade","São Gonçalo", "RJ"],
    ["Trindade","São Gonçalo", "RJ"],
    ["Luiz Caçador","São Gonçalo", "RJ"],
    ["Recanto das Acácias","São Gonçalo", "RJ"],
    ["Itaúna","São Gonçalo", "RJ"],
    ["Salgueiro","São Gonçalo", "RJ"],
    ["Alcântara","São Gonçalo", "RJ"],
    ["Almerinda","São Gonçalo", "RJ"],
    ["Jardim Nova República","São Gonçalo", "RJ"],
    ["Arsenal","São Gonçalo", "RJ"],
    ["Maria Paula","São Gonçalo", "RJ"],
    ["Arrastão","São Gonçalo", "RJ"],
    ["Anaia Pequeno","São Gonçalo", "RJ"],
    ["Joquei","São Gonçalo", "RJ"],
    ["Coelho","São Gonçalo", "RJ"],
    ["Amendoeira","São Gonçalo", "RJ"],
    ["Jardim Amendoeira","São Gonçalo", "RJ"],
    ["Vila Candoza","São Gonçalo", "RJ"],
    ["Anaia Grande","São Gonçalo", "RJ"],
    ["Ipiíba","São Gonçalo", "RJ"],
    ["Engenho do Roçado","São Gonçalo", "RJ"],
    ["Rio do Ouro","São Gonçalo", "RJ"],
    ["Várzea das Moças","São Gonçalo", "RJ"],
    ["Santa Isabel","São Gonçalo", "RJ"],
    ["Eliane","São Gonçalo", "RJ"],
    ["Ieda","São Gonçalo", "RJ"],
    ["Sacramento","São Gonçalo", "RJ"],
    ["Jardim Catarina","São Gonçalo", "RJ"],
    ["Raul Veiga","São Gonçalo", "RJ"],
    ["Vila Três","São Gonçalo", "RJ"],
    ["Laranjal","São Gonçalo", "RJ"],
    ["Santa Luzia","São Gonçalo", "RJ"],
    ["Bom Retiro","São Gonçalo", "RJ"],
    ["Gebara","São Gonçalo", "RJ"],
    ["Vista Alegre","São Gonçalo", "RJ"],
    ["Lagoinha","São Gonçalo", "RJ"],
    ["Miriambi","São Gonçalo", "RJ"],
    ["Tiradentes","São Gonçalo", "RJ"],
    ["Pacheco","São Gonçalo", "RJ"],
    ["Barracão","São Gonçalo", "RJ"],
    ["Guarani","São Gonçalo", "RJ"],
    ["Monjolo","São Gonçalo", "RJ"],
    ["Marambaia","São Gonçalo", "RJ"],
    ["Largo da Idéia","São Gonçalo", "RJ"],
    ["Guaxindiba","São Gonçalo", "RJ"],
    ["Boa Vista","São Gonçalo", "RJ"],
    ["Porto da Pedra","São Gonçalo", "RJ"],
    ["Porto Novo","São Gonçalo", "RJ"],
    ["Gradim","São Gonçalo", "RJ"],
    ["Porto Velho","São Gonçalo", "RJ"],
    ["Neves","São Gonçalo", "RJ"],
    ["Vila Lage","São Gonçalo", "RJ"],
    ["Porto da Madama","São Gonçalo", "RJ"],
    ["Paraíso","São Gonçalo", "RJ"],
    ["Patronato","São Gonçalo", "RJ"],
    ["Mangueira","São Gonçalo", "RJ"],
    ["Parada 40","São Gonçalo", "RJ"],
    ["Camarão","São Gonçalo", "RJ"],
    ["Venda da Cruz","São Gonçalo", "RJ"],
    ["Convanca","São Gonçalo", "RJ"],
    ["Santa Catarina","São Gonçalo", "RJ"],
    ["Barro Vermelho","São Gonçalo", "RJ"],
    ["Pita","São Gonçalo", "RJ"],
    ["Zumbi","São Gonçalo", "RJ"],
    ["Tenente Jardim","São Gonçalo", "RJ"],
    ["Morro do Castro","São Gonçalo", "RJ"],
    ["Engenho Pequeno","São Gonçalo", "RJ"],
    ["Novo México","São Gonçalo", "RJ"]
]

district_list.each do |name, city_name, state_acronym|
  s = State.where(acronym: state_acronym).first
  c = s.cities.where(name: city_name).first
  c.districts.create(name: name)
end

profiles_list = [ "ADM_SISTEMA", "ADM_LOJA", "ADM_VENDEDOR"]
profiles_list.each do |name|
  s = Profile.create(name: name)
end

admin_list =  [
                [ "matheusbersot", "12345678", "12345678", "a@a.com", Profile::STORE_ADMIN_PROFILE]
              ]
admin_list.each do |name, password, password_confirmation, email, profile |
  s = User.create(name: name, password: password, password_confirmation: password_confirmation, email: email)
  s.profile_id = profile
  s.save!
end