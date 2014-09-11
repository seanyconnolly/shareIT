class CreateSuperusers < ActiveRecord::Migration
  def change
    create_table :superusers do |t|
      t.string :username_s
      t.string :password

      t.timestamps
    end
  end
end
