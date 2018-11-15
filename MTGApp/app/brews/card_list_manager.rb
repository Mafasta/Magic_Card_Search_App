class CardListManager
	def initialize
		@cards = nil
	end
	
	def fetch_list(list_id)
		@cards = MtgCard.cards_from_list(list_id)
	end
	def filter_list(cards = nil)
		##TODO: Format input/parameters. Implement this method
	end

	def order_list
		##TODO: Format input/parameters. Implement this method
	end

	def print_list
		@cards.each do |card|
			puts card.name
		end
	end

	def manage_list(list_id, cards = nil)
		fetch_list(list_id)
		filter_list(cards)
		order_list
		print_list
	end

	private

end