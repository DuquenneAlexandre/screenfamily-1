class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :city
      t.string :project_picture
      t.string :genre
      t.text :synopsis
      t.text :scenario
      t.integer :number_of_participants
      t.integer :number_of_days_for_crowdfunding
      t.integer :goal_for_crowdfunding

      t.timestamps null: false
    end
  end
end
