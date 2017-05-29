class Preparer < ApplicationRecord
  enum role: [:admin, :preparer]
  has_many :clients
end
