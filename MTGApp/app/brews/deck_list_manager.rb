# @author Thomas Quinn Langsfeld
class DeckListManager < CardListManager
	def initialize
	end

	# orders the MtgCard deck list by converted mana cost
	# @return [MtgCard] the MtgCard list
	def order_list
		@cards = @cards.order(:cmc)
	end
end