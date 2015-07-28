class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :city
      t.text :description
      t.integer :initiative_id

      t.timestamps null: false
    end
  end
end
