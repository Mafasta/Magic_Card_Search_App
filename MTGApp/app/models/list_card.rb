class ListCard < ApplicationRecord
	belongs_to :mtg_card
	belongs_to :card_list
end