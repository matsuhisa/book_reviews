class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login_id, null: false
      t.string :email, null: false
      t.string :nickname, null: false
      t.text :comment
      t.integer :cooperation, default: 0, null: false
      t.integer :authorization, default: 0, null: false
      t.integer :enabled, default: 0, null: false

      t.timestamps null: false
    end
  end
end
