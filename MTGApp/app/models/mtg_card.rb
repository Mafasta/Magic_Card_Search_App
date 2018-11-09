class MtgCard < ApplicationRecord
	belongs_to :mtg_set

	has_many :list_cards
	has_many :card_lists, :through => :list_cards

	def self.text_search(text)
		search_string = '%' + text + '%' unless text.blank?
		where("name LIKE ?", search_string)
	end
end
