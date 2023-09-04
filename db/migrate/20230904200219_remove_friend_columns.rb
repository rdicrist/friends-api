class RemoveFriendColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :friends, :twitter
  end
end
