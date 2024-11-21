class AddIndexToReviewsPlayId < ActiveRecord::Migration[8.0]
  def change
    add_index :reviews, :play_id
  end
end
