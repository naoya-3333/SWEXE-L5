class ChangeDatatypeUserIdOfTweets < ActiveRecord::Migration[5.2]
  def change
    change_column :tweets, :user_id, :integer
  end
end
