class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :name
      t.string :account_number
      t.integer :frequency
      t.string :house_account_id
      t.double :bill_amount

      t.timestamps
    end
  end
end
