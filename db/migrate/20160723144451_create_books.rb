class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.text :description
      t.string :author
      t.string :asin, null: false

      t.timestamps null: false
    end
  end
end
