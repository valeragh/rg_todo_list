class AddOwnerIdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :owner_id, :string
    add_index :projects, :owner_id
  end
end
