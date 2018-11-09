class ListCard < ActiveRecord::Migration[5.1]
  def change
  	create_table :list_cards do |t|
  	  t.belongs_to :mtg_card, index: true
  	  t.belongs_to :card_list, index: true
  	end
  end
end
