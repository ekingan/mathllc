ActiveAdmin.register Job do
permit_params :fed_form, :state_1, :state_2, :state_3, :state_4, :tmse, :portland, :status,
              :printed, :scanned, :uploaded, :filed, :accepted_fed, :accepted_state_1,
              :accepted_state_2, :accepted_state_3, :accepted_state_4, :due_date, :rejected,
              :notes, :client, :preparer, :payment


end
