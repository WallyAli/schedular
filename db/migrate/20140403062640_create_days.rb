class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :child_id
      t.text :monday
      t.text :tuesday
      t.text :wednesday
      t.text :thursday
      t.text :friday
      t.text :saturday
      t.text :sunday

      t.timestamps
    end
  end
end
