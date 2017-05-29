class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.integer :payment_type
      t.integer :check_number

      t.timestamps
    end
  end
end
