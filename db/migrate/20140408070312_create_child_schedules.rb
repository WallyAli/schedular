class CreateChildSchedules < ActiveRecord::Migration
  def change
    create_table :child_schedules do |t|

      t.timestamps
    end
  end
end
