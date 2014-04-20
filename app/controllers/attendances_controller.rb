class AttendancesController < ApplicationController
  before_action :set_attendance, only: [:show, :edit, :update, :destroy]
  

  # GET /attendances
  # GET /attendances.json
  def index
    @child = Child.find(params[:child_id])
    @attendances = @child.attendances
    @attendances_by_date = @attendances.group_by(&:date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  # GET /attendances/1
  # GET /attendances/1.json
  def show
  end

  # GET /attendances/new
  def new
    @child = Child.find(params[:child_id])
    @attendance = Attendance.new
  end

  # GET /attendances/1/edit
  def edit
  end

  # POST /attendances
  # POST /attendances.json
  def create
    @child = Child.find(params[:child_id])
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

  # PATCH/PUT /attendances/1
  # PATCH/PUT /attendances/1.json
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

  # DELETE /attendances/1
  # DELETE /attendances/1.json
  def destroy
    @attendance.destroy
    respond_to do |format|
      format.html { redirect_to parents_path }
      format.json { head :no_content }
    end
  end

  def load_child
    @child = Child.find(params[:child_id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendance
      @attendance = Attendance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attendance_params
      params.require(:attendance).permit(:time_in, :time_out, :date, 
                                          :time_zone, :child_id)
    end
end
