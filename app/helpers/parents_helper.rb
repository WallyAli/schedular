module ParentsHelper
	ActionView::Helpers::NumberHelper

	def parent_full_name(parent)
		[parent.first_name, parent.last_name].join(' ')
	end

	def phone_format(phone)
		number_to_phone(phone)
	end

end
