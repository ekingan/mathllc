ActiveAdmin.register Payment do
permit_params :amount, :payment_type, :check_number

filter :amount
filter :payment_type, as: :select
filter :check_number
filter :created_at

end
