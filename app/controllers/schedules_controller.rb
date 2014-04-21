class SchedulesController < ApplicationController

	def index
		@schedules = Schedule.all  		 
	end

	def show
		@schedule = Schedule.find(params[:id])
	end

	def new
		@schedule = Schedule.new
	end

	def create
		@schedule = Schedule.new(schedule_params)
	    respond_to do |format|
	      if @schedule.save
	        format.html { redirect_to @schedule, notice: 'Schedule was successfully created.' }
	        format.json { render action: 'show', status: :created, location: @schedule }
	      else
	        format.html { render action: 'new' }
	        format.json { render json: @schedule.errors, status: :unprocessable_entity }
	      end
	    end
	end

	private
		def schedule_params
			params.require(:schedule).permit(:name, :date)
		end
end
