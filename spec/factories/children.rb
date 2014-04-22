require 'faker'

FactoryGirl.define do
  factory :child do
    first_name { Faker::Name.first_name }
	last_name { Faker::Name.last_name }
    birthday "04/23/2013"
    gender [:male, :female]
  end
end