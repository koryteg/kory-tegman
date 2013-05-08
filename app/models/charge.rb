class Charge < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessor :stripe_token
  def save_with_payment
    if valid?
      customer = Stripe::Customer.create(
        description: email, 
        plan: "monthly100",
        card: stripe_token,
        email: email
        )
      self.stripe_customer_token = customer.id
      save!
    end
   rescue Stripe::InvalidRequestError => e
	  logger.error "Stripe error while creating customer: #{e.message}"
	  errors.add :base, "There was a problem with your credit card."
	  false
  end
end
