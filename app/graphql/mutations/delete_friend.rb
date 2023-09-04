class Mutations::DeleteFriend < Mutations::BaseMutation
    # argument :id, Integer, required: true
    argument :id, ID, required: true

    field :success, String, null: false
    field :errors, [String]

    def resolve(id:)
        friend = Friend.find(id)
        if friend.destroy!
            {success: "True", errors: []}
        else
            {success: "False", errors: friend.errors.full_messages} 
        end
    end
end