class ListCardController < ApplicationController
	def destroy
		@list_card = ListCard.where(mtg_card_id: params[:mtg_card][:id], card_list_id: params[:card_list][:id]).first
		@list_card.destroy!
		redirect_to '/user_profile/1'
	end
	def create
		ListCard.create!(mtg_card_id: params[:card][:id], card_list_id: params[:card_list_id])
		redirect_to '/user_profile/1'
	end
end
