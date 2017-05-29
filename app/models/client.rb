class Client < ApplicationRecord
  enum entity_type: [:individual, :partnership, :s_corp, :c_corp, :non_profit, :trust, :estate]
  enum filing_status: [:single, :mfj, :mfs, :hoh, :widow]
  has_one :preparer
end
