ActiveAdmin.register Payment do
  permit_params :amount, :payment_type, :check_number

  filter :amount
  filter :payment_type, as: :select
  filter :check_number
  filter :created_at

  index do
    column :amount, :sortable => :amount do |payment|
      number_to_currency payment.amount
    end
    column :payment_type
    column :check_number
    column :created_at
    actions
  end

  form do |f|
    f.inputs "Payment Info" do
      f.input :amount
      f.input :payment_type, as: :select
      f.input :check_number
    end
    f.actions
  end
end
