class AddPriceCentsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :price_cents, :integer
  end
end
