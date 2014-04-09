class AddFieldsToParent < ActiveRecord::Migration
  def change
    add_column :parents, :city, :string
    add_column :parents, :state, :string
    add_column :parents, :zipcode, :varchar
  end
end
