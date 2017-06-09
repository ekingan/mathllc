class Preparer < ApplicationRecord
  has_many :clients, through: :jobs
  has_many :payments, through: :jobs
  has_many :jobs
  enum role: [:admin, :preparer]
  validates_presence_of :first_name, :last_name
end
