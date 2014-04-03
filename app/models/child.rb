class Child < ActiveRecord::Base

	belongs_to :parent

	validates_presence_of :first_name
	validates_presence_of :last_name

	has_many :days
	accepts_nested_attributes_for :days, allow_destroy: true, 
								  :reject_if => :all_blank
end
