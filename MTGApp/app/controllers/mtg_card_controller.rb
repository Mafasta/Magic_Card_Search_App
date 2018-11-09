class MtgCardController < ApplicationController
  def index
  	@mtg_cards = MtgCard.text_search(params[:card_name])
  end
end
