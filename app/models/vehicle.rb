class Vehicle < ApplicationRecord
    has_many :milage, dependent: :destroy
    validates :year, :make, :model, presence: true
end
