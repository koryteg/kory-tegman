class AddStripeToCharges < ActiveRecord::Migration
  def change
    add_column :charges, :stripe_customer_token, :string
  end
end
