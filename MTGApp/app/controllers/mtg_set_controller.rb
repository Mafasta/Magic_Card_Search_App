class MtgSetController < ApplicationController
  before_action :authenticate_admin!

  # queries MTGApi for a specific set and persists the result to the database
  def create
  	new_set = MTG::Set.find(params[:set_code])

	set = MtgSet.create(code: new_set.code, name: new_set.name, year: new_set.release_date)
	set.save

	card_list = MTG::Card.where(set: params[:set_code]).all
	card_list.each do |card|
		new_card = MtgCard.create!(name: card.name, description: card.text, cmc: card.cmc, mtg_set_id: set.id)
	end

	redirect_to '/mtg_card'
  end
end
