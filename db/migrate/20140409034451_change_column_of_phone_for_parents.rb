class ChangeColumnOfPhoneForParents < ActiveRecord::Migration
  def change
  	change_column :parents, :phone, :bigint
  end
end
