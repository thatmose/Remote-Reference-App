class CreateDebts < ActiveRecord::Migration[5.0]
  def change
    create_table :debts do |t|
      t.references :customer
      t.integer :amount_borrowed
      t.integer :amount_paid
      t.integer :interest_rate
      t.integer :loan_duration
      t.timestamps
    end
  end
end
