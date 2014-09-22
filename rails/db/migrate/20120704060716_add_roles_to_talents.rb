class AddRolesToTalents < ActiveRecord::Migration
  def change
    add_column :talents, :roles, :text

  end
end
