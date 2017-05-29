ActiveAdmin.register Client do
 permit_params :first_name, :last_name, :date_of_birth, :email, :phone, :street, :city,
              :state, :zip_code, :occupation, :entity_type, :tax_year_ends, :filing_status,
              :number_of_dependents, :spouse_first_name, :spouse_last_name, :spouse_date_of_birth,
              :spouse_phone, :spouse_email, :spouse_occupation, :notes

end
