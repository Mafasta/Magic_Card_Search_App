class MtgCardController < ApplicationController
  before_action :authenticate_user!
  def index
  	@mtg_cards = MtgCard.where(name: params[:card_name]).all
  end
end
