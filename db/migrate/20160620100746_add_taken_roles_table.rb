class AddTakenRolesTable < ActiveRecord::Migration
  def change
    create_table :taken_roles do |t|
      t.integer "project_id"
      t.integer "role_id"
      t.integer "user_id"

      t.timestamps null: false
    end
  end
end
