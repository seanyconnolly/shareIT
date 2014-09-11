class CreateHouseAccounts < ActiveRecord::Migration
  def change
    create_table :house_accounts do |t|
      t.integer :houseAccountId
      t.string :accountName
      t.integer :buildingNumber
      t.string :addressLine1
      t.string :addressLine2
      t.string :county
      t.string :country
      t.integer :tenantId
      t.timestamps
    end
  end
end
