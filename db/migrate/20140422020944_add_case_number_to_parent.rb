class AddCaseNumberToParent < ActiveRecord::Migration
  def change
    add_column :parents, :case_number, :string
  end
end
