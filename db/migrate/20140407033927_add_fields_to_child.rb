class AddFieldsToChild < ActiveRecord::Migration
  def change
    add_column :children, :mon, :string
    add_column :children, :tue, :string
    add_column :children, :wed, :string
    add_column :children, :thu, :string
    add_column :children, :fri, :string
    add_column :children, :sat, :string
    add_column :children, :sun, :string
  end
end
