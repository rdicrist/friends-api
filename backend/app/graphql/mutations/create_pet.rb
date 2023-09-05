class Mutations::CreatePet < Mutations::BaseMutation
    argument :name, String, required: true
    argument :age, String, required: true
    argument :care_instructions, String, required: true
    argument :pet_type, String, required: true
    argument :friend_id, Integer, required: true

    field :pet, Types::PetType, null: false
    field :errors, [String]

    def resolve(name:, age:, care_instructions:, pet_type:, friend_id:)
        pet = Pet.new(
            name: name,
            age: age,
            care_instructions: care_instructions,
            pet_type: pet_type,
            friend_id: friend_id
        )
        if pet.save!
            {pet: pet, errors: []}
        else
            {pet: nil, errors: pet.errors.full_messages} 
        end
    end
end