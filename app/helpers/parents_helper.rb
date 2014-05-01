module ParentsHelper
	ActionView::Helpers::NumberHelper

	def parent_full_name(parent)
		[parent.first_name, parent.last_name].join(' ')
	end

	def phone_format(phone)
		number_to_phone(phone)
	end

	def error_count(parent)
		errors_array = []
		errors_array << parent.errors.count
		parent.children.each do |child|
			errors_array << child.errors.count
		end
		errors_array.reduce(:+)
	end

end

