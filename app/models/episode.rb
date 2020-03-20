class Episode < ApplicationRecord
	has_many :appearances
	has_many :guests, through: :appearances

	def average_rating
		self.appearances.map{|a| a.rating }.sum / (1.0 * self.appearances.count)
	end
	def number_date
		"Episode #{"%02d" % self.number} - #{self.date.strftime("%B %d, %Y")}"
	end
end
