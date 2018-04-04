class Vehicle < ApplicationRecord
    has_many :milage
    validates :year, :make, :model, presence: true
end
