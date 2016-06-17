class AddContentsProfToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :contents_prof, :text
  end
end
