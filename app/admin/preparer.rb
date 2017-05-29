ActiveAdmin.register Preparer do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :first_name, :last_name, :username, :email, :phone, :street, :city,
              :state, :zip_code, :date_of_birth, :role, :license_number, :job_title

  index do
    column :id
    column :first_name
    column :last_name
    column :email
    column :phone
    column :job_title
  end

end