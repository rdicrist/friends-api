class ChangePhoneToStringInFriends < ActiveRecord::Migration[6.1]
  def change
    change_column :friends, :phone, :string
  end
end
