# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

items = Item.create([{name: 'Umbrella', price: 5},{name: 'Phone', price: 100},{name: 'Watch', price: 20},{name: 'Bottle', price: 5},{name: 'Car', price: 50},{name: 'TV', price: 40},{name: 'DVD', price: 20}])
categories = MainCategory.create([{name: 'Appliances'},{name: 'Furniture'},{name: 'Camping'},{name: 'Clothing'},{name: 'Books'},{name: 'Gaming'},{name: 'Electronics'},{name: 'Autos / Bikes'}])
users = User.create([{first_name:'Arya', email:'arya@gmail.com'},{first_name:'Cole', email:'cole@gmail.com'},{first_name:'Nazim', email:'nazim@gmail.com'},{first_name:'Ana', email:'ana@gmail.com'},{first_name:'Jon', email:'jon@snow.com'}])
sub_categories = SubCategory.create([{name: 'Basketball', main_category_id:'1'},{name: 'Football', main_category_id:'1'},{name: 'Baseball', main_category_id:'1'},{name: 'Other', main_category_id:'1'},{name: 'Chairs', main_category_id:'2'},{name: 'Lamps', main_category_id:'2'},{name: 'Entertainment Console', main_category_id:'2'},{name: 'Sofas', main_category_id:'2'},{name: 'Other', main_category_id:'2'},{name: 'Shirts', main_category_id:'3'},{name: 'Pants', main_category_id:'3'},{name: 'Suits', main_category_id:'3'},{name: 'Blouses', main_category_id:'3'},{name: 'Dresses', main_category_id:'3'},{name: 'Other', main_category_id:'3'},])