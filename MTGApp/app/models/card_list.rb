class CardList < ApplicationRecord
	self.abstract_class = true
	belongs_to :general_user
end