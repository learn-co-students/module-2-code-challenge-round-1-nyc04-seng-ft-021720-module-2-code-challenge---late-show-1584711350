class Guest < ApplicationRecord
    has_many :epsiodes
    has_many :apperances, through: :epsiodes
end
