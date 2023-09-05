module Types
  class MutationType < Types::BaseObject
    field :create_friend, mutation: Mutations::CreateFriend
    field :delete_friend, mutation: Mutations::DeleteFriend
    field :update_friend, mutation: Mutations::UpdateFriend

    field :create_pet, mutation: Mutations::CreatePet
    field :delete_pet, mutation: Mutations::DeletePet
    field :update_pet, mutation: Mutations::UpdatePet
  end
end
