# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    
    require 'faker'
	
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    date = Time.at(rand * Time.now.to_i).strftime('%m/%d/%Y')
    address = Faker::Address.street_address
    city = Faker::Address.city
    state = Faker::Address.state 
    zipcode = Faker::Address.zip


    50.times do 
		parent = Parent.create(first_name: first_name, last_name: last_name, 
				address: address, city: city, state: state, zipcode: zipcode )

		4.times do 
		    Child.create(first_name: first_name, last_name: last_name, birthday: date, parent_id: parent.id)
		end
	end