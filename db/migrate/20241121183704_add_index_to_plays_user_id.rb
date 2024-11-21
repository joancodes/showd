class AddIndexToPlaysUserId < ActiveRecord::Migration[8.0]
  def change
    add_index :plays, :user_id
  end
end
