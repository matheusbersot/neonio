class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :login,          null: false
      t.string  :passwordSHA1,   null: false
      t.string  :email,          null: false
      t.string  :company_name,   null: false
      t.string  :cnpj,           null: false
      t.string  :telephone1,     null: false
      t.string  :telephone2
      t.string  :telephone3
      t.string  :street_address, null: false
      t.integer :number_address, null: false
      t.string  :complement,     null: false
      t.string  :district,       null: false
      t.string  :city_id,        null: false
      t.string  :state_id,       null: false
      t.string  :zip_code,       null: false
      t.boolean :active,         null: false
      t.timestamps
    end
  end
end
