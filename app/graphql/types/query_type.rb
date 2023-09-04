module Types
  class QueryType < Types::BaseObject
    # get all friends
    field :friends, [Types::FriendType], null: false
    def friends
      Friend.all 
    end 

    # get single friend
    field :friend, Types::FriendType, null: false do 
      argument :id, ID, required: true
    end
    def friend(id:)
      Friend.find(id)
    end

  end
end
