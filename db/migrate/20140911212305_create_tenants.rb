class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.integer :tenantId
      t.integer :houseAccountId
      t.string :firstName
      t.string :lastName
      t.integer :age
      t.boolean :accountOwner
      t.boolean :billPayer
      t.belongs_to :house_account
      t.timestamps
    end
  end
end
