class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.integer :fed_form
      t.string :state_1
      t.string :state_2
      t.string :state_3
      t.string :state_4
      t.boolean :tmse
      t.boolean :portland
      t.integer :status
      t.boolean :printed
      t.boolean :scanned
      t.boolean :uploaded
      t.date :filed
      t.date :accepted_fed
      t.date :accepted_state_1
      t.date :accepted_state_2
      t.date :accepted_state_3
      t.date :accepted_state_4
      t.date :due_date
      t.text :rejected
      t.text :notes
      t.references :client, foreign_key: true
      t.references :preparer, foreign_key: true
      t.references :payment, foreign_key: true

      t.timestamps
    end
  end
end
