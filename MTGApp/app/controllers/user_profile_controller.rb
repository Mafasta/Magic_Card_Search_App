class UserProfileController < ApplicationController
	# compiles deck and favorite lists for a GeneralUser
	def show
		@deck_list = DeckList.where(general_user_id: params[:id]).first
		@favorite_list = FavoriteList.where(general_user_id: params[:id]).first
		@deck = DeckListManager.new.manage_list(@deck_list.id)
		@favorites = FavoriteListManager.new.manage_list(@favorite_list.id)
	end
end
