class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode
  
  validates :rating, :inclusion => {:in => 0..5, :message => "Value should be between 1 and 5"}
  
end
