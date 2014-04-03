class Parent < ActiveRecord::Base
	has_many :children

	validates_presence_of :first_name
	validates_presence_of :last_name

	accepts_nested_attributes_for :children, allow_destroy: true
end
