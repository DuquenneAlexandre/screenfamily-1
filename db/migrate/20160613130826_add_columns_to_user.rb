class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birth_date, :date
    add_column :users, :city, :string
    add_column :users, :user_picture, :string
    add_column :users, :phone_number, :string
  end
end
