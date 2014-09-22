class AddLinkToTalents < ActiveRecord::Migration
  def change
    add_column :talents, :link, :string

  end
end
