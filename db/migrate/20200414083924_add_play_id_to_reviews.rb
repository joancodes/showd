class AddPlayIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :play_id, :integer
  end
end
