class CreateSurveyImages < ActiveRecord::Migration
  def change
    create_table :survey_images do |t|
      t.string :img_url
      t.integer :tag_id
      t.integer :score

      t.timestamps null: false
    end
  end
end
