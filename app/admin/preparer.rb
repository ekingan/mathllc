ActiveAdmin.register Preparer do
  permit_params :first_name, :last_name, :username, :email, :phone, :street, :city,
                :state, :zip_code, :date_of_birth, :role, :license_number, :job_title
  menu priority: 1

  filter :first_name
  filter :last_name

  index do
    column :id
    column :first_name
    column :last_name
    column :email
    column :phone
    column :job_title
    actions
  end

  form do |f|
    f.inputs "Preparer Info" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :phone
      f.input :date_of_birth, as: :datepicker, datepicker_options: { dateFormat: "mm/dd/yy" }
    end
    f.inputs "Address" do
      f.input :street
      f.input :city
      f.input :state
    end
    f.inputs "Professional info" do
      f.input :license_number
      f.input :job_title
    end
    f.actions
  end
end
