jQuery ->
  Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'))
  donation.setupForm()

donation =
  setupForm: ->
    $('#new_donation').submit ->
      $('input[type=submit]').attr('disabled', true)
      donation.processCard()

  processCard: ->
    card =
      number: $('#number').val()
      cvc: $('#cvc').val()
      expMonth: $('#exp_month').val()
      expYear: $('#exp_year').val()
    Stripe.createToken(card, donation.handleStripeResponse)

  handleStripeResponse: (status, response) ->
    if status == 200
      alert(response.id)
    else
         alert(response.error.message)
