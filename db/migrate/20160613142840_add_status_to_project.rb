class AddStatusToProject < ActiveRecord::Migration
  def change
    add_column :status, :boolean, default: true
  end
end
