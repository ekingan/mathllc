class Preparer < ApplicationRecord
  enum role: [:admin, :preparer]
  has_many :jobs
  has_many :clients
  has_many :payments
end
