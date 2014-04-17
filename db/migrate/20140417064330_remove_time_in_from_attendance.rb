class RemoveTimeInFromAttendance < ActiveRecord::Migration
  def change
    remove_column :attendances, :time_in, :time
  end
end
