ActiveAdmin.register Client do
    permit_params :first_name, :last_name, :company, :date_of_birth, :email, :phone, :street, :city,
                :state, :zip_code, :occupation, :entity_type, :tax_year_ends, :filing_status,
                :number_of_dependents, :spouse_first_name, :spouse_last_name, :spouse_date_of_birth,
                :spouse_phone, :spouse_email, :spouse_occupation, :notes
    menu priority: 2

# filter :first_name
# filter :last_name
# filter :email
# filter :phone
# filter :city
# filter :state
# filter :occupation
# filter :entity_type, as: :select
# filter :tax_year_ends
# filter :filing_status, as: :select
# filter :spouse_first_name
# filter :spouse_last_name
#
# action_item only: [:show] do
#   link_to "New Job", admin_job_path(client)
# end

index do
  column :id
  column :last_name
  column :first_name
  column :email
  column :phone
  column :entity_type
  column :spouse_first_name
  actions
end

# show do
#   attributes_table do
#     row :first_name
#     row :last_name
#     row :date_of_birth, as: :datepicker, datepicker_options: { dateFormat: "mm/dd/yy" }
#     row :email
#     row :phone
#     row :city
#     row :state
#     row :zip_code
#     row :occupation
#     row :entity_type, as: :select
#     row :tax_year_ends, as: :datepicker, datepicker_options: { dateFormat: "mm/dd" }
#     row :filing_status, as: :select
#     row :number_of_dependents
#
#     row :spouse_first_name
#     row :spouse_last_name
#     row :spouse_date_of_birth, as: :datepicker, datepicker_options: { dateFormat: "mm/dd/yy" }
#     row :spouse_phone
#     row :spouse_email
#     row :spouse_occupation
#
#
#     row :notes
#   end
# end
#
  form do |f|
    f.inputs "Taxpayer Info" do
      f.input :first_name
      f.input :last_name
      f.input :date_of_birth, as: :datepicker, datepicker_options: { dateFormat: "mm/dd/yy" }
      f.input :email
      f.input :phone
      f.input :city
      f.input :state
      f.input :zip_code
      f.input :occupation
      f.input :entity_type, as: :select
      f.input :tax_year_ends, as: :datepicker, datepicker_options: { dateFormat: "mm/dd" }
      f.input :filing_status, as: :select
      f.input :number_of_dependents
    end
    f.inputs "Spouse Info" do
      f.input :spouse_first_name
      f.input :spouse_last_name
      f.input :spouse_date_of_birth, as: :datepicker, datepicker_options: { dateFormat: "mm/dd/yy" }
      f.input :spouse_phone
      f.input :spouse_email
      f.input :spouse_occupation
    end
    f.inputs "Notes" do
      f.input :notes
    end
    f.actions
  end

end
