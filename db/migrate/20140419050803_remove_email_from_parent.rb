class RemoveEmailFromParent < ActiveRecord::Migration
  def change
    remove_column :parents, :email, :text
  end
end
