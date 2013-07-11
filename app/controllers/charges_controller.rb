class ChargesController < ApplicationController
	def index
		@charge = Charge.all
		respond_to do |format|
		    format.html # index.html.erb
		    format.json { render json: @charge }
		end
	end

	def new
		@charge = Charge.new
		@plan = "monthly100"
		respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: @charge }
	    end
	end

	def hosting
		@charge = Charge.new
		@plan = "hosting"
		respond_to do |format|
			format.html
			format.json { render json: @charge }
		end
	end

	def create
    	@charge = Charge.new(params[:charge])
    	if @charge.save_with_payment
		  redirect_to @charge, :notice => "Thank you for subscribing!"
		else
		  render :new
		end
	# 	token = params[:stripeToken].to_s
	# 	plan = Stripe::Plan.retrieve(
	#     	:id => "monthly100"
	#    	)

	#     customer = Stripe::Customer.create(
	#       :description => "Customer for #{params[:email]}",
	#       :email => params[:email],
	#       :card => token,
	#       :plan => "monthly100"
	#     )
	# redirect_to charges_create_path
	end
	def show


	end
	def destroy
    @charge = Charge.find(params[:id])
    @charge.destroy

    respond_to do |format|
      format.html { redirect_to charges_url }
      format.json { head :no_content }
    end
  end
end
