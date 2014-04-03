class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :first_name
      t.string :last_name
      t.text :address
      t.integer :phone

      t.timestamps
    end
  end
end
