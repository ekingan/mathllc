ActiveAdmin.register Job do
  permit_params :fed_form, :state_1, :state_2, :state_3, :state_4, :tmse, :portland, :status,
              :printed, :scanned, :uploaded, :filed, :accepted_fed, :accepted_state_1,
              :accepted_state_2, :accepted_state_3, :accepted_state_4, :due_date, :rejected,
              :notes, :client, :preparer, :payment

  index do
    column :id
    column :fed_form
    column :status
    column :printed
    column :scanned
    column :uploaded
    column :filed
    column :accepted_fed
    column :accepted_state_1
    column :rejected
  end

  form do |f|
    f.inputs "Job Info" do
      f.input :fed_form
      f.input :state_1
      f.input :tmse
      f.input :portland
      f.input :due_date, as: :datepicker, datepicker_options: { dateFormat: "mm/dd/yy" }
      # client and preparer
    end
    f.inputs "Status" do
      f.input :status
      f.input :printed
      f.input :scanned
      f.input :uploaded
      f.input :filed, as: :datepicker, datepicker_options: { dateFormat: "mm/dd/yy" }
    end
    f.inputs "Acceptances" do
      f.input :accepted_fed, as: :datepicker, datepicker_options: { dateFormat: "mm/dd/yy" }
      f.input :accepted_state_1, as: :datepicker, datepicker_options: { dateFormat: "mm/dd/yy" }
      f.input :accepted_state_2, as: :datepicker, datepicker_options: { dateFormat: "mm/dd/yy" }
      f.input :accepted_state_3, as: :datepicker, datepicker_options: { dateFormat: "mm/dd/yy" }
      f.input :accepted_state_4, as: :datepicker, datepicker_options: { dateFormat: "mm/dd/yy" }
      f.input :rejected
    end
      f.input :notes
      f.actions
  end
end
