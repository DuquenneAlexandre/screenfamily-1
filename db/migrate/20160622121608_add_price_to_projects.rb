class AddPriceToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :price, :integer
  end
end
