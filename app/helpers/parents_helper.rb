module ParentsHelper
	require 'date'

	def parent_full_name(parent)
		[parent.first_name, parent.last_name].join(' ')
	end

end
