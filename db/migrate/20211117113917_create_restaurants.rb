class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :phone_number
      t.string :category
      t.string :address
      t.string :string

      t.timestamps
    end
  end
end
