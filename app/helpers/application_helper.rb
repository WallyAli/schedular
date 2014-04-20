module ApplicationHelper

	def time_format(time)
	  time.strftime("%I:%M %p") unless time.blank?
	end

	def formatted_time
		Time::DATE_FORMATS[:non_military_time] = "%I:%M %p"
	end
	
end
