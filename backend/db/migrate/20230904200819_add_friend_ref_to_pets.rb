class AddFriendRefToPets < ActiveRecord::Migration[6.1]
  def change
    add_reference :pets, :friend, null: false, foreign_key: true
  end
end
