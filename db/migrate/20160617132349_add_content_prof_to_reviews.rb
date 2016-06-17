class AddContentProfToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :Content_prof, :text
  end
end
