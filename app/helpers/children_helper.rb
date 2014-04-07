module ChildrenHelper

	def child_full_name(child)
		[child.first_name, child.last_name].join(' ')
	end

	def week
		%w[mon tue wed thu fri sat sun]
	end
end
