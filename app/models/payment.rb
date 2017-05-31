class Payment < ApplicationRecord
  belongs_to :job
  belongs_to :client
  enum payment_type: [:check, :cash, :square, :paypal, :stripe, :trade, :other]
end
