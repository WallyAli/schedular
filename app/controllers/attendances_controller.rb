class AttendancesController < ApplicationController
  before_action :set_attendance, only: [:show, :edit, :update, :destroy]
  before_action :load_child, only: [:new, :create, :index]
  
  def index
    @attendances = @child.attendances
  end

  def show
  end

  def new
    @attendance = Attendance.new
  end

  def edit
  end

  def create
    @attendance = @child.attendances.new(attendance_params)
    respond_to do |format|
      if @attendance.save
        format.html { redirect_to child_path(@child), notice: 'Attendance was successfully created.' }
        format.json { render action: 'show', status: :created, location: @attendance }
      else
        format.html { render action: 'new' }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @attendance.update(attendance_params)
        format.html { redirect_to root_path, notice: 'Attendance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @attendance.destroy
    respond_to do |format|
      format.html { redirect_to child_path(@attendance.child) }
      format.json { head :no_content }
    end
  end

  def load_child
    @child = Child.find(params[:child_id])
  end

  private

    def set_attendance
      @attendance = Attendance.find(params[:id])
    end

    def attendance_params
      params.require(:attendance).permit(:time_in, :time_out, :date, 
                                          :time_zone, :child_id)
    end
end
