class Payment < ApplicationRecord
  enum payment_type: [:check, :cash, :square, :paypal, :stripe, :trade, :other]
end
