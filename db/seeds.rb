# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# User.create(first_name: "Cole", last_name: "Robinson", email: "cole.robinson@gmail.com", password: "1234", phone: "2244355422", city: "San Jose", state: "CA")
# User.create(first_name: "Ana", last_name: "Thomas", email: "ana.thomas@gmail.com", password: "1234", phone: "5544387922", city: "Sunnyvale", state: "CA")
# User.create(first_name: "Frank", last_name: "Modic", email: "frank.modic@gmail.com", password: "1234", phone: "1234567890", city: "San Jose", state: "CA")
# User.create(first_name: "Deandre", last_name: "Harvey", email: "deandre.harvey@gmail.com", password: "1234", phone: "0987654321", city: "Sunnyvale", state: "CA")
Category.create([{name:'Appliances'},{name:'Automotive'},{name:'Books'},{name:'Music'},{name:'Clothing'},{name:'Electronics'},{name:'Kitchen'},{name:'Sports'},{name:'Camping'},{name:'Gaming'}])