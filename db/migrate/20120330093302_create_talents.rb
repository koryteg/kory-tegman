class CreateTalents < ActiveRecord::Migration
  def change
    create_table :talents do |t|
      t.string :title
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
