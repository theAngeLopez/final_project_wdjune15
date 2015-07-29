class ChangeTagTypeColumnToCategory < ActiveRecord::Migration
  def change
    rename_column :tags, :type, :category
  end
end
