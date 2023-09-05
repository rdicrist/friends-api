# frozen_string_literal: true

module Types
  class PetType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, "Name of pet"
    field :age, Integer, "Age of pet"
    field :care_instructions, String, "Care Instructions for pet"
    field :pet_type, String, "Pet type"
    field :friend_id, Integer, "ID of owner of pet", null: false 
    field :friend, Types::FriendType, "Owner of pet"

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
