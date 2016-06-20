class AddTitleToTakenRoles < ActiveRecord::Migration
  def change
    add_column :taken_roles, :title, :string
  end
end
