class RemoveBirthDayFromChild < ActiveRecord::Migration
  def change
    remove_column :children, :birthday, :date
  end
end
