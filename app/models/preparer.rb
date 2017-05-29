class Preparer < ApplicationRecord
  enum role: [:admin, :preparer]
end
