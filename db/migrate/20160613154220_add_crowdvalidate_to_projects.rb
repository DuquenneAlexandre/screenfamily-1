class AddCrowdvalidateToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :crowdvalidate, :boolean, default: true
  end
end
