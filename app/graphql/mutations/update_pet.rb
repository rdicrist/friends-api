class Mutations::UpdatePet < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :name, String, required: false
    argument :age, String, required: false
    argument :care_instructions, String, required: false
    argument :pet_type, String, required: false
    argument :friend_id, Integer, required: false

    field :pet, Types::PetType, null: false
    field :errors, [String]

    def resolve(id:, **args)
        pet = Pet.find(id)
        if pet.update!(args)
            {pet: pet, errors: []}
        else
            {pet: nil, errors: pet.errors.full_messages} 
        end
    end
end