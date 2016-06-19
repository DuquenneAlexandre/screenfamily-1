class AddValuesToProjects < ActiveRecord::Migration
  def change
    rename_column :projects, :status, :disabled
    change_column :projects, :disabled, :boolean, default: false
    rename_column :projects, :crowdvalidate, :validated_for_crowdfunding
    change_column :projects, :validated_for_crowdfunding, :boolean, default: false
    add_column :projects, :inprogress, :boolean, default: false
    add_column :projects, :finished, :boolean, default: false
  end
end
