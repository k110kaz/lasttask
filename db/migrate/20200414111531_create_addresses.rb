class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.integer :postal_code, null: false
      t.string :prefecture, null: false
      t.string :city, null: false
      t.string :address, null: false
      t.string :building
      t.integer :phone_number
      t.references :user
      t.timestamps
    end
  end
end
