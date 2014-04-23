class Donation < ActiveRecord::Base
  # before_create :charge_card
  belongs_to :user
  belongs_to :charity

# private
#   def charge_card
#     Stripe.api_key = "sk_test_BQokikJOvBiI2HlWgH4olfQ2"
#     token = params[:stripeToken]
# begin
#   charge = Stripe::Charge.create(
#     :amount => amount,
#     :currency => "usd",
#     :card => token,
#     :description => "payinguser@example.com"
#   )
# rescue Stripe::CardError => e
#   # The card has been declined
# end
end
