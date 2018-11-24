# @author Thomas Quinn Langsfeld
# an mtg set
class MtgSet < ApplicationRecord
	has_many :mtg_card
end
