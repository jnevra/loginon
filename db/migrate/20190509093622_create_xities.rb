class CreateXities < ActiveRecord::Migration[5.2]
  def change
    create_table :xities do |t|
      t.string :city_name
      t.integer :country_id
      t.string :product_name
      t.integer :bphone
      t.text :description
      t.text :alamat
      t.integer :user_id

      t.timestamps
    end
  end
end
