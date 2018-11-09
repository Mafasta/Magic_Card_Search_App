class CardList < ActiveRecord::Migration[5.1]
  def change
  	create_table :card_lists do |t|
  	  t.string :type
  	  t.references :general_user, foreign_key: true
  	end
  end
end
