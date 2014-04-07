class Day < ActiveRecord::Base
	belongs_to :child

	def week
		%w[mon tue wed thu fri sat sun]
	end
end
