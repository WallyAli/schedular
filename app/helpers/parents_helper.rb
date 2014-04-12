module ParentsHelper

	def parent_full_name(parent)
		[parent.first_name, parent.last_name].join(' ')
	end
end
