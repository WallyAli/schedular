require 'spec_helper'
require 'factory_girl'

describe Parent do
	
	it "has a valid factory" do
		expect(FactoryGirl.build(:parent)).to be_valid
	end

	it 'is valid with first_name, last_name, 
		address, city, state, phone, case_number, zipcode' do
		expect(build(:parent)).to be_valid
	end

	# it "returns a parent's full name as a string" do
	# 	parent = Parent.new(first_name: 'Abdiweli', last_name: 'Ali')
	# 	expect(parent.parent_full_name(parent)).to eq 'Abdiweli Ali'
	# end

	it 'is invalid without first_name' do
		expect(build(:parent, first_name: nil)).to have(1).errors_on(:first_name)
	end

	it 'is invalid without last_name' do
		expect(build(:parent, last_name: nil)).to have(1).errors_on(:last_name)
	end
	it 'is invalid without address' do 
		expect(build(:parent, address: nil)).to have(1).errors_on(:address)
	end

	it 'is invalid without city' do 
		expect(build(:parent, city: nil)).to have(1).errors_on(:city)
	end

	it 'is invalid without state' do 
		expect(build(:parent, state: nil)).to have(1).errors_on(:state)
	end

	it 'is invalid without zipcode' do 
		expect(build(:parent, zipcode: nil)).to have(1).errors_on(:zipcode)
	end

	it 'is invalid without case_number' do 
		expect(build(:parent, case_number: nil)).to have(1).errors_on(:case_number)
	end

	it "is invalid with a duplicate case_number" do
		create(:parent, case_number: '123456')
		expect(build(:parent, case_number: '123456')).to have(1).errors_on(:case_number)
	end
end