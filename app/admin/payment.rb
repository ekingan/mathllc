ActiveAdmin.register Payment do
	permit_params :client_attributes, :job_attributes, :amount, :payment_type, :check_number

	form do |f|
    f.semantic_errors *f.object.errors.keys
		f.inputs "Job" do
			f.input :job_id
		end
		f.inputs "Payment Info" do
			f.input :amount
			f.input :payment_type
			f.input :check_number
		end
		f.actions
	end

end
