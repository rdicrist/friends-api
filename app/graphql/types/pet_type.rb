# frozen_string_literal: true

module Types
  class PetType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, "Name of pet"
    field :age, Integer, "Age of pet"
    field :care_instructions, String, "Care Instructions for pet"
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :friend_id, Integer, "Owner of pet", null: false 
    field :pet_type, String, "Pet type"
  end
end
