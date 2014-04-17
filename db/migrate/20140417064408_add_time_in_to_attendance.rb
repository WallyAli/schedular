class AddTimeInToAttendance < ActiveRecord::Migration
  def change
    add_column :attendances, :time_in, :datetime
  end
end
