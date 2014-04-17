class AddTimeZoneToAttendance < ActiveRecord::Migration
  def change
    add_column :attendances, :time_zone, :string
  end
end
