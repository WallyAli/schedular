module ApplicationHelper

	def time_format(time)
	  time.strftime('%H:%M') unless time.blank?
	end

end
