class FavoriteListManager < CardListManager
	def order_list
		@cards = @cards.order(:name)
	end
end