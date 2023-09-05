class Mutations::DeletePet < Mutations::BaseMutation
    argument :id, ID, required: true

    field :success, String, null: false
    field :errors, [String]

    def resolve(id:)
        pet = Pet.find(id)
        if pet.destroy!
            {success: "True", errors: []}
        else
            {success: "False", errors: pet.errors.full_messages}
        end
    end
end