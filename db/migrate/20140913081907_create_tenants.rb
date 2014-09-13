class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
        t.integer :house_account_id
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.boolean :account_owner
      t.boolean :bill_payer

      t.timestamps
    end
  end
end
