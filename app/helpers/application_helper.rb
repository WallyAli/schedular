module ApplicationHelper

	def time_format(time)
	  time.strftime("%I:%M %p") unless time.blank?
	end

end
