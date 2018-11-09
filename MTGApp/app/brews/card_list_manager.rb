class CardListManager
	def initialize
		@cards = nil
	end
	
	def fetch_list(list_id)
		@cards = ListCard.where(card_list_id: list_id).all
	end
	def filter_list(cards)
		##TODO: Format input/parameters. Implement this method
	end

	def order_list
	end

	def manage_list(list_id, cards)
		fetch_list(list_id)
		filter_list(cards)
		order_list
	end
end