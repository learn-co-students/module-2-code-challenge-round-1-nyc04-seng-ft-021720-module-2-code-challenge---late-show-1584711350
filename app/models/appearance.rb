class Appearance < ApplicationRecord

    belongs_to :episode
    belongs_to :guest

    validates :rating, numericality: {only_integer: true}
    validates :rating, inclusion: 1..5 
    validates :guest_id, uniqueness: {message: "already exists in this appearance."}

end
