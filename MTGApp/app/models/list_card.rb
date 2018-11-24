# @author Thomas Quinn Langsfeld
# an mtg card belonging a to a card list
class ListCard < ApplicationRecord
	belongs_to :mtg_card
	belongs_to :card_list
end