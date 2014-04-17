class AddTimeOutToAttendance < ActiveRecord::Migration
  def change
    add_column :attendances, :time_out, :datetime
  end
end
