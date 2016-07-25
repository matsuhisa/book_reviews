class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :login_id
      t.string :email
      t.text :comment
      t.integer :enabled

      t.timestamps null: false
    end
  end
end
