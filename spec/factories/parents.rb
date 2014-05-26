require 'faker'

FactoryGirl.define do
  factory :parent do
    first_name { Faker::Name.first_name }
	last_name { Faker::Name.last_name }
    address { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    zipcode { Faker::Address.zip }
    case_number { Faker::Number.number(6) }
    phone { Faker::PhoneNumber.cell_phone }
    sequence(:email) { |n| "person#{n}@example.com" }
    factory :invalid_parent do
		first_name nil
	end
  end
end
