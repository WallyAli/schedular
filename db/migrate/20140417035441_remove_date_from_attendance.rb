class RemoveDateFromAttendance < ActiveRecord::Migration
  def change
    remove_column :attendances, :date, :string
  end
end
