class Parent < ActiveRecord::Base
	has_many :children, :inverse_of => :parent, :dependent => :destroy
	has_many :schedules, through: :children

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :address, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :zipcode, presence: true
	validates :case_number, presence: true

	accepts_nested_attributes_for :children, allow_destroy: true
end
