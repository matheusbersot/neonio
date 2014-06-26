class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :name, null: false
      t.integer :city_id, null: false
      t.timestamps
    end
  end
end
