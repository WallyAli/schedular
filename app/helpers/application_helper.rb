module ApplicationHelper

	def time_format(time)
	  time.strftime("%I:%M %p") unless time.blank?
	end

	def day_format(day)
		day.slice(0..2)
	end

	def flash_class (type)
		case type
		when :notice
			"alert-success"
		when :alert
			"alert-error"
		else
			""
		end
	end
end
