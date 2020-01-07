class Moto < ApplicationRecord
    belongs_to :modele
    belongs_to :user
    has_many :operations
end
