class DonationsController < ApplicationController

def index
end

def new
  @donation = Donation.new
end
def create
  # Amount in cents
  @amount = 2000

  customer = Stripe::Customer.create(
    :email => 'current_user.email',
    :card  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
    redirect_to donations_path
end


private
  def donation_params
    params.require(:donation).permit(:card, :stripeToken, :number, :cvc, :user_id, :charity_id, :donation_amount)
  end
end
