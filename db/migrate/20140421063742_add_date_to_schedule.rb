class AddDateToSchedule < ActiveRecord::Migration
  def change
    add_column :schedules, :date, :string
  end
end
