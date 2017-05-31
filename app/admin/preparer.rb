ActiveAdmin.register Preparer do
  permit_params :first_name, :last_name, :username, :email, :phone, :street, :city,
                :state, :zip_code, :date_of_birth, :role, :license_number, :job_title
  menu priority: 1
end
