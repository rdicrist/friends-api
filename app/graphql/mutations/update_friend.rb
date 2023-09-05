class Mutations::UpdateFriend < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :name, String, required: false
    argument :location, String, required: false
    argument :email, String, required: false
    argument :phone, String, required: false

    field :friend, Types::FriendType, null: false
    field :errors, [String]

    def resolve(id:, **args)
        friend = Friend.find(id)
        if friend.update!(args)
            {friend: friend, errors: []}
        else
            {friend: nil, errors: friend.errors.full_messages} 
        end
    end
end