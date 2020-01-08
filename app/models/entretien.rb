class Entretien < ApplicationRecord
    belongs_to :moto, optional: true
    belongs_to :operation
end
