class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.text :name

      t.timestamps
    end
  end
end
