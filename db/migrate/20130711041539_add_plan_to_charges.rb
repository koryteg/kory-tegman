class AddPlanToCharges < ActiveRecord::Migration
  def change
    add_column :charges, :plan, :string
  end
end
