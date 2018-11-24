# @author Thomas Quinn Langsfeld
# a CardList
class CardList < ApplicationRecord
	#self.abstract_class = true
	belongs_to :general_user
	has_many :list_cards
	has_many :mtg_cards, :through => :list_cards
end