class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title, null: false
      t.text :description
      t.date :completion_at , null: false
      t.integer :user_id, null: false
      t.integer :book_id, null: false

      t.timestamps null: false
    end
  end
end
