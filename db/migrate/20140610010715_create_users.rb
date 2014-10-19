class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :name,            null: false
      t.string  :password_digest,  null: false
      t.string  :email,            null: false
      t.integer  :store_id
      t.integer  :profile_id,      null: false
      t.integer  :manager_id
      t.timestamps
    end
  end
end
