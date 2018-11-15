class DeckListManager < CardListManager
	def order_list
		@cards = @cards.order(:cmc)
	end
end