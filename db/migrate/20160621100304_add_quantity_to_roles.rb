class AddQuantityToRoles < ActiveRecord::Migration
  def change
    add_column :roles, :quantity, :integer
  end
end
