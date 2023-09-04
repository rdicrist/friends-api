class Mutations::UpdateFriend < Mutations::BaseMutation
    argument :id, Integer, required: false
    argument :name, String, required: false
    argument :location, String, required: false
    argument :email, String, required: false
    argument :phone, String, required: false

    field :friend, Types::FriendType, null: false
    field :errors, [String]

    def resolve(id:, name:, location:, email:, phone:)
        friend = Friend.find(id)
        friend.update!(
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