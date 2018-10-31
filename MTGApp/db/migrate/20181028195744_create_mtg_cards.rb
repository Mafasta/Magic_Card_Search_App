class CreateMtgCards < ActiveRecord::Migration[5.1]
  def change
    create_table :mtg_cards do |t|
      t.string :name
      t.text :description
      t.references :mtg_set, foreign_key: true
    end
  end
end
