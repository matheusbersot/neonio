class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.integer :user_id,        null: false
      t.string  :name,           null: false
      t.string  :cnpj,           null: false
      t.string  :telephone1,     null: false
      t.string  :telephone2
      t.string  :telephone3
      t.string  :street_address, null: false
      t.integer :number_address, null: false
      t.string  :complement,     null: false
      t.string  :zip_code,       null: false
      t.integer :state_id,       null: false
      t.integer :city_id,        null: false
      t.integer :district_id,    null: false
      t.timestamps
    end
  end
end
