class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.integer :user_id
      t.integer :tag_id
      t.integer :score

      t.timestamps null: false
    end
  end
end
