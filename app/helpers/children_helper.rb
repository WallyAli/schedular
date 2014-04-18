module ChildrenHelper

	def child_full_name(child)
		[child.first_name, child.last_name].join(' ')
	end

  def age(dob)
    now = DateTime.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end

end
