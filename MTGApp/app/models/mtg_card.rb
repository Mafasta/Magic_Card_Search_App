class MtgCard < ApplicationRecord
	belongs_to :mtg_set

	has_many :list_cards
	has_many :card_lists, :through => :list_cards

	def self.text_search(text)
		search_string = '%' + text + '%' unless text.blank?
		where("name LIKE ?", search_string).all
	end

	def self.cards_from_list(list_id)
		query_string = "INNER JOIN list_cards ON list_cards.mtg_card_id = mtg_cards.id WHERE list_cards.card_list_id = " + list_id.to_s
		joins(query_string)
	end
end
