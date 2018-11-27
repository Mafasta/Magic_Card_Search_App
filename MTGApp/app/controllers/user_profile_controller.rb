class UserProfileController < ApplicationController
	# compiles deck and favorite lists for a GeneralUser
	# @return [CardList, CardList, MtgCard, MtgCard] the user's deck and favorite lists and the corresponding mtg cards
	def show
		@deck_list = deck_list
		@favorite_list = favorite_list
		@deck = DeckListManager.new.manage_list(@deck_list.id)
		@favorites = FavoriteListManager.new.manage_list(@favorite_list.id)
	end

	private

	# @return [DeckList] the user's deck list
	def deck_list
		DeckList.where(general_user_id: params[:id]).first
	end

	# @return [FavoriteList] the user's favorite list
	def favorite_list
		FavoriteList.where(general_user_id: params[:id]).first
	end
end
