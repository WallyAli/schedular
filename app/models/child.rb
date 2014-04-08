class Child < ActiveRecord::Base

	belongs_to :parent
	validates_presence_of :first_name
	validates_presence_of :last_name

	has_and_belongs_to_many :schedules
	accepts_nested_attributes_for :schedules, allow_destroy: true
end
