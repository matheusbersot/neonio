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