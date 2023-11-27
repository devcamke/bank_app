class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.decimal :amount
      t.string :transaction_type
      t.references :bank_account, null: false, foreign_key: true
      t.string :transaction_number

      t.timestamps
    end
  end
end
