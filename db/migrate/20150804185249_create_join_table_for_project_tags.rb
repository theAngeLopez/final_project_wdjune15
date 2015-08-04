class CreateJoinTableForProjectTags < ActiveRecord::Migration
  def change
  	create_table :projects_tags do |t|
      t.integer :project_id,       :null => false
      t.integer  :tag_id,        :null => false

      t.timestamps
    end
  end
end
