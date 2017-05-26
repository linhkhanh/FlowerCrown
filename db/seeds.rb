# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Crown.create!(
	name: 'Rose crown',
	description:
		%{<p>
			Rose crown is so beautiful and makes you more attractive.
			You must be so special in it!
			</p>},
	price: 56.45)
Crown.create!(
	name: 'Baby crown',
	description:
		%{<p>
			Baby crown is one of the most romantic crown. 
			It will bring a lovely appearance to you. 
			</p> },
	price: 71.01)