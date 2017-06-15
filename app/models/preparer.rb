class Preparer < ApplicationRecord
  has_many :clients, through: :jobs
  has_many :payments, through: :jobs
  has_many :jobs
  enum role: [:admin, :preparer]
  validates_presence_of :first_name, :last_name

  def money_owed_by_math


  end

  def total_payments
    preparer.jobs.map { |job| job.payment.try[:amount] }.compact.sum
  end

  def unpaid_jobs
  end

end
