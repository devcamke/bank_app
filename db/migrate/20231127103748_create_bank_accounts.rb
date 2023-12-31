class CreateBankAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :bank_accounts do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :balance
      t.string :account_number

      t.timestamps
    end
  end
end
