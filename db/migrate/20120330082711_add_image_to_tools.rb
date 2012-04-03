class AddImageToTools < ActiveRecord::Migration
  def change
    add_column :tools, :image, :string

  end
end
