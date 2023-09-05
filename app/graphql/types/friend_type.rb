# frozen_string_literal: true

module Types
  class FriendType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, "Name of friend"
    field :phone, String, "Phone Number of friend"
    field :email, String, "Email of friend"
    field :location, String, "Location of friend's house"
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :pets, [Types::PetType], "List of pets for this friend"
    def pets 
      Pet.where(friend: object).all
    end

  end
end
