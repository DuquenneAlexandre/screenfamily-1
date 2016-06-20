class AddPriceToProjects < ActiveRecord::Migration
  def change
  	add_monetize :projects, :price, currency: { present: false }
  end
end
