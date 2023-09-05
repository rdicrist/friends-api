class Friend < ApplicationRecord
    has_many :pets, dependent: :destroy

    validates :name, length: { minimum: 2 }
    validates :location, length: { minimum: 2 }
    validates :email, length: { minimum: 2 }
    validates :phone, length: { minimum: 9 }
end
