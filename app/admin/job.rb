ActiveAdmin.register Job do
  permit_params :fed_form, :primary_state, :second_state, :third_state, :tmse, :portland, :status,
              :printed, :scanned, :uploaded, :filed, :ack_fed, :ack_primary_state,
              :ack_second_state, :ack_third_state, :due_date, :rejected,
              :notes, :preparer, :client, :client_id, :preparer_id, :payment_id, preparer_attributes: [:first_name, :id],
              client_attributes: [:last_name, :id]

  menu priority: 3

  index do
    column :id
    column :fed_form
    column :status
    column :printed
    column :scanned
    column :uploaded
    column :filed
    column "Fed Accepted", :accepted_fed
    column "State Accepted", :accepted_state_1
    column :rejected
    actions
  end

  form do |f|
    f.semantic_errors
    f.inputs "Preparer Info" do
      f.semantic_fields_for :preparer do |prep|
        prep.input :first_name, label: "Preparer", as: :select, collection: Preparer.all.map(&:first_name)
      end
    end
    f.inputs "Client Info" do
      f.semantic_fields_for :client do |c|
        c.input :last_name, label: "Client", as: :select, collection: Client.all.map(&:last_name)
      end
    end
    f.inputs "Job Info" do
      f.input :fed_form
      f.input :primary_state
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
