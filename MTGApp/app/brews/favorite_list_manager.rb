# @author Thomas Quinn Langsfeld
class FavoriteListManager < CardListManager
	def initialize
	end

	# orders the MtgCard favorite list in alphabetical order
	# @return [MtgCard] the MtgCard favorite list
	def order_list
		@cards = @cards.order(:name)
	end
end