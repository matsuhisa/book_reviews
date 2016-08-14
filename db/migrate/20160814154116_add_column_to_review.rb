class AddColumnToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :deleted_at, :timestamps
    add_column :reviews, :state, :integer, default: 1, null: false
  end
end
