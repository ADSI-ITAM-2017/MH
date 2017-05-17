class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :street
      t.string :number
      t.string :city
      t.string :state
      t.string :type
      t.boolean :share
      t.integer :rooms
      t.integer :price
      t.boolean :electricity
      t.boolean :water
      t.boolean :gas
      t.boolean :internet
      t.boolean :cable
      t.boolean :kitchen
      t.boolean :parking_space
      t.boolean :furnished
      t.boolean :security
      t.boolean :balcony
      t.boolean :ramps
      t.boolean :pets
      t.boolean :parties
      t.text :comment

      t.timestamps null: false
    end
  end
end
