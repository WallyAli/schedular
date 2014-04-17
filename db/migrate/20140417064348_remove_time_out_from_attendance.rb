class RemoveTimeOutFromAttendance < ActiveRecord::Migration
  def change
    remove_column :attendances, :time_out, :time
  end
end
