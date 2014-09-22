class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.string :name
      t.string :stripe_token
      t.string :email
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :address_zip

      t.timestamps
    end
  end
  def self.down
    drop_table :charges
  end
end
