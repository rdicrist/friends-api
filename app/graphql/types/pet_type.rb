# frozen_string_literal: true

module Types
  class PetType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :age, Integer
    field :care_instructions, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :friend_id, Integer, null: false
  end
end
