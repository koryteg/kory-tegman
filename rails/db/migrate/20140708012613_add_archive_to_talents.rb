class AddArchiveToTalents < ActiveRecord::Migration
  def change
    add_column :talents, :archive, :boolean
  end
end
