class AddBirthDayToChild < ActiveRecord::Migration
  def change
    add_column :children, :birthday, :string
  end
end
