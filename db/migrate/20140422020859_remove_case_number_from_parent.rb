class RemoveCaseNumberFromParent < ActiveRecord::Migration
  def change
    remove_column :parents, :case_number, :integer
  end
end
