class ChildSchedule < ActiveRecord::Base
	belongs_to :child 
	belongs_to :schedule 
end
