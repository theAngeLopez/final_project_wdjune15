class CreateInitiatives < ActiveRecord::Migration
  def change
    create_table :initiatives do |t|
      t.string :name
      t.text :description
      t.integer :owner_id

      t.timestamps null: false
    end
  end
end
