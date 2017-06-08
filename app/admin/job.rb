ActiveAdmin.register Job do
  permit_params :fed_form, :primary_state, :second_state, :third_state, :tmse, :portland, :status,
              :printed, :scanned, :uploaded, :filed, :ack_fed, :ack_primary_state,
              :ack_second_state, :ack_third_state, :due_date, :rejected,
              :notes, :preparer, :client, :client_id, :preparer_id, :payment_id, preparer_attributes: [:first_name, :id],
              client_attributes: [:last_name, :id]

  menu priority: 3

  index do
    column :id
    column "Client" do |job|
      Client.find(job.client_id).last_name
    end
    column "Preparer" do |job|
      Preparer.find(job.preparer_id).first_name
    end
    column :fed_form
    column :status
    column :printed
    column :scanned
    column :uploaded
    column :filed
    column "Fed Accepted", :ack_fed
    column "State Accepted", :ack_primary_state
    column :rejected
    actions
  end

  action_item only: [:show] do
    link_to "Receive Payment", admin_payment_path(job)
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs "Preparer and Client Info" do
      f.input :preparer_id
      f.input :client_id
    end
    f.inputs "Job Info" do
      f.input :fed_form
      f.input :primary_state
      f.input :tmse
      f.input :portland
      f.input :due_date, as: :datepicker, datepicker_options: { dateFormat: "mm/dd/yy" }
    end
    f.inputs "Status" do
      f.input :status
      f.input :printed
      f.input :scanned
      f.input :uploaded
      f.input :filed, as: :datepicker, datepicker_options: { dateFormat: "mm/dd/yy" }
    end
    f.inputs "Acceptances" do
      f.input :ack_fed, as: :datepicker, datepicker_options: { dateFormat: "mm/dd/yy" }
      f.input :ack_primary_state, as: :datepicker, datepicker_options: { dateFormat: "mm/dd/yy" }
      f.input :ack_second_state, as: :datepicker, datepicker_options: { dateFormat: "mm/dd/yy" }
      f.input :ack_third_state, as: :datepicker, datepicker_options: { dateFormat: "mm/dd/yy" }
      f.input :rejected
    end
      f.input :notes
      f.actions
  end

end
