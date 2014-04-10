class SchedulesController < ApplicationController

	def index
		@schedules = Schedule.all  		 
	end

	def show
		@schedule = Schedule.find(params[:id])
		@parent = @schedule.children.parent
	end
end
