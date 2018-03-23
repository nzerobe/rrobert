class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :title
      t.text :content
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :date
      t.string :products
      t.string :unit_price
      t.string :means_of_payment
      t.string :account
      t.string :debit
      t.string :credit
      t.string :balance
      t.string :other_transactions

      t.timestamps
    end
  end
end
