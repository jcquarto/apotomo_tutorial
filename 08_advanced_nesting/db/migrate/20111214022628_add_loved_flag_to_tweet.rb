class AddLovedFlagToTweet < ActiveRecord::Migration
  def change
    add_column :tweets, :loved, :boolean
  end
end
