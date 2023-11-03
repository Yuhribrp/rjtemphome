class CreateUserAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :user_addresses do |t|
      t.string :zip_code
      t.string :country
      t.string :state
      t.string :city
      t.string :neighborhood
      t.string :street
      t.string :complement
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
