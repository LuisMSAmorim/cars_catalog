class Car < ApplicationRecord

    validates :name, presence: true
    validates :brand, presence: true
    validates :color, presence: true
    validates :year, presence: true
    validates :value, presence: true
end
