class AddFieldsToChild < ActiveRecord::Migration
  def change
    add_column :children, :time_in, :Time
    add_column :children, :time_out, :Time
  end
end
