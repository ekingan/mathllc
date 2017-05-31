class Preparer < ApplicationRecord
  has_many :clients
  has_many :payments
  has_many :jobs
  enum role: [:admin, :preparer]
end
