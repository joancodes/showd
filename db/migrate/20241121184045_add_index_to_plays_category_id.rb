class AddIndexToPlaysCategoryId < ActiveRecord::Migration[8.0]
  def change
    add_index :reviews, :user_id
  end
end
