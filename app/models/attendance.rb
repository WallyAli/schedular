class Attendance < ActiveRecord::Base

	belongs_to :child

	validates :date, presence: true
	validates :time_in, presence: true
	validates :time_out, presence: true

end
