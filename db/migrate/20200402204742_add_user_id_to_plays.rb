class AddUserIdToPlays < ActiveRecord::Migration[5.2]
  def change
    add_column :plays, :user_id, :integer
  end
end
