class AddColumnsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :contact_name, :string
    add_column :projects, :email, :string
    add_column :projects, :phone_number, :string
  end
end
