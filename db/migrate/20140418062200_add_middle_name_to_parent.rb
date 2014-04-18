class AddMiddleNameToParent < ActiveRecord::Migration
  def change
    add_column :parents, :middle_name, :string
  end
end
