class Child < ActiveRecord::Base

	belongs_to :parent, inverse_of: :children, touch: true
	
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :birthday, presence: true
	validates :gender, presence: true
	validates :parent, presence: true
	
	has_and_belongs_to_many :schedules
	accepts_nested_attributes_for :schedules, allow_destroy: true

	has_many :attendances, :dependent => :destroy
	
end
