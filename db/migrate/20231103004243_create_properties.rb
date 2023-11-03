class CreateProperties < ActiveRecord::Migration[7.1]
  def change
    create_table :properties do |t|
      t.string :about_it
      t.boolean :available

      t.timestamps
    end
  end
end
