module ApplicationHelper

	def time_format(time)
	  time.strftime("%I:%M %p") unless time.blank?
	end

	def day_format(day)
		day.slice(0..2)
	end
end
