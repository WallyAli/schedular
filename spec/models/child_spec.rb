require 'spec_helper'
require 'factory_girl'

describe Child do 

	it 'is valid with first_name, last_name, birthday, and gender' do
		@parent = create(:parent)
		child = @parent.children.create(first_name: 'wali', last_name: 'ali',
							            birthday: "03/04/2006", gender: 'male')
		expect(child).to be_valid
	end

	it 'is invalid without first_name' do
		expect(build(:child, first_name: nil)).to have(1).errors_on(:first_name)
	end

	it 'is invalid without last_name' do 
		expect(build(:child, last_name: nil)).to have(1).errors_on(:last_name)
	end

	it 'is invalid without birthday' do
		expect(build(:child, birthday: nil)).to have(1).errors_on(:birthday)
	end

	it 'is invalid without gender' do
		expect(build(:child, gender: nil)).to have(1).errors_on(:gender)
	end

	before(:each) do 
    	@parent = Parent.new
  	end

	it "requires a parent_id, not just a parent object" do
		child = Child.new
	    child.parent = @parent
	    Child.instance_eval("validates_presence_of :parent_id")
	    child.valid?.should == false
	end

	it "is not valid without a parent" do
	    child = Child.new
	    child.parent = @parent
	    Child.instance_eval("validates_presence_of :parent")
	    child.valid?.should == false
	    child.save.should == false
	end
end