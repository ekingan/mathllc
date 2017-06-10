class Payment < ApplicationRecord
  belongs_to :job
  enum payment_type: [:check, :cash, :square, :paypal, :stripe, :trade, :other]
  validates_presence_of :amount

  def new
    @payment = Payment.new
    @job = params[job_id]
  end

  def create
    @job = Job.find(params[:job_id])
    @payment = @job.payment.create(payment_params)
  end

  private
  def payment_params
    params.require(:payment).permit(:amount, :payment_type, :check_number)
  end
end
