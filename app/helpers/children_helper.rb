module ChildrenHelper

	def child_full_name(child)
		[child.first_name, child.last_name].join(' ')
	end

	def age(dob)
	  now = DateTime.now.to_date
	  now.year - string_to_date(dob).year - 
	  	((now.month > string_to_date(dob).month || 
	  		(now.month == string_to_date(dob).month && 
	  			now.day >= string_to_date(dob).day)) ? 0 : 1)
	end

	def string_to_date(dob)
		Date.strptime(dob, "%m/%d/%Y")
	end
end
