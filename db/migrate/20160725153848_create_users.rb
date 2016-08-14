class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login_id, null: false, unique: true
      t.string :nickname, null: false
      t.string :user_image_url
      t.text :comment
      t.integer :authorization, default: 1, null: false
      t.integer :enabled, default: 1, null: false

      t.timestamps null: false
    end
  end
end
