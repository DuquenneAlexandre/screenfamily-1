class AddReferencesToMessages < ActiveRecord::Migration
  def change
    add_reference :messages, :project, index: true, foreign_key: true
  end
end
