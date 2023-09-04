# frozen_string_literal: true

module Types
  class FriendType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :phone, Integer
    field :email, String
    field :location, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
