class Car < ApplicationRecord

    validates :model, presence: true
    validates :brand, presence: true
    validates :color, presence: true
    validates :year, presence: true
    validates :value, presence: true
end
