class AddPledgedToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :pledged, :integer
  end
end
