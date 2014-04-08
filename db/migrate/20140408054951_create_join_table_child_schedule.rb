class CreateJoinTableChildSchedule < ActiveRecord::Migration
  def change
    create_join_table :children, :schedules do |t|
       t.index [:child_id, :schedule_id]
       t.index [:schedule_id, :child_id]
    end
  end
end
