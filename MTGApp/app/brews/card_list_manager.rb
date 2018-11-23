# @author Thomas Quinn Langsfeld
class CardListManager
	# Abstract Class
	# @return [NotImplementedError] the error message
	def initialize
		raise NotImplementedError.new("#{self.class.name} is an abstract class.")
	end
	
	# @param list_id [Integer] the CardList id
	# @return [MtgCard] the MtgCard list
	def fetch_list(list_id)
		@cards = MtgCard.cards_from_list(list_id)
	end

	# implemented by sublcasses
	def order_list
	end

	# @param list_id [Integer] the CardList id
	# @return [MtgCard] the ordered MtgCard list
	def manage_list(list_id)
		fetch_list(list_id)
		order_list
	end
end