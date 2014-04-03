module ParentsHelper

	def setup_parent(parent)
		parent.children ||= Child.new
	    3.times {parent.children.build}
	    parent
    end
end
