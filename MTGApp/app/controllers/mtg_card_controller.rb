class MtgCardController < ApplicationController
  # compiles list of MtgCards and CardLists
  def index
  	@mtg_cards = MtgCard.text_search(params[:card_name])
  	@card_lists = CardList.where(general_user_id: params[:user_id]).all if params[:user_id]
  end
end
