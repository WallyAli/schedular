require 'spec_helper'
require 'factory_girl'

describe Attendance do

	it 'is valid with date, time_in and time_out' do 
		expect(build(:attendance)).to be_valid
	end

	it 'is invalid without date' do 
		expect(build(:attendance, date: nil)).to have(1).errors_on(:date)
	end

	it 'is invalid without time_in' do
		expect(build(:attendance, time_in: nil)).to have(1).errors_on(:time_in)
	end

	it 'is invalid without time_out' do
		expect(build(:attendance, time_out: nil)).to have(1).errors_on(:time_out)
	end
end
