class ChangeImageColumnInProjectsToImageUrl < ActiveRecord::Migration
  def change
    rename_column :projects, :image, :img_url
  end
end
