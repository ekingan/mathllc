class Payment < ApplicationRecord
  enum payment_type: [:check, :cash, :square, :paypal, :stripe, :trade, :other]
  has_one :preparer, through: :job
  has_one :job
  has_one :client, through: :job
end
