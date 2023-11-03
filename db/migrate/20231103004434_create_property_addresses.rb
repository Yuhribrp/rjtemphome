class CreatePropertyAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :property_addresses do |t|
      t.string :zip_code
      t.string :country
      t.string :state
      t.string :city
      t.string :neighborhood
      t.string :street
      t.string :complement
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
