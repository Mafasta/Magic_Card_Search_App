class MtgCardController < ApplicationController
  def index
  	@mtg_cards = MtgCard.text_search(params[:card_name])
  	@card_lists = CardList.all
  end
end
