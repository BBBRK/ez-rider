class Moto < ApplicationRecord
    belongs_to :modele
    belongs_to :user
    has_many :entretiens

    # mount_uploader :photo, PhotoUploader
end
