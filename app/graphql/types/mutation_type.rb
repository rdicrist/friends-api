module Types
  class MutationType < Types::BaseObject
    field :create_friend, mutation: Mutations::CreateFriend
    field :delete_friend, mutation: Mutations::DeleteFriend
    field :update_friend, mutation: Mutations::UpdateFriend
  end
end
