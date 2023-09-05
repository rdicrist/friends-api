class Mutations::CreateFriend < Mutations::BaseMutation
    argument :name, String, required: true
    argument :location, String, required: true
    argument :email, String, required: true
    argument :phone, String, required: true

    # type Types::FriendType null: false
    field :friend, Types::FriendType, null: false
    field :errors, [String]

    def resolve(name:, location:, email:, phone:)
        friend = Friend.new(
            name: name,
            location: location,
            email: email,
            phone: phone
        )
        if friend.save!
            {friend: friend, error: []}
        else
            {friend: nil, errors: friend.errors.full_messages} 
        end
    end
end
