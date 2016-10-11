class RemoveRolesMaskFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :roles_mask
  end
end
