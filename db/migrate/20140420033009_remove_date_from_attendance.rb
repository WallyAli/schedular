class RemoveDateFromAttendance < ActiveRecord::Migration
  def change
    remove_column :attendances, :date, :date
  end
end
