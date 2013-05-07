class AddPositionToTalents < ActiveRecord::Migration
  def change
    add_column :talents, :position, :integer
  end
end
