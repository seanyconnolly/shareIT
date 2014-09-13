class CreateHouseAccounts < ActiveRecord::Migration
  def change
    create_table :house_accounts do |t|
      t.string :name
      t.integer :building_number
      t.string :address_line1
      t.string :address_line2
      t.string :county
      t.string :country
      t.integer :tenant_id

      t.timestamps
    end
  end
end
