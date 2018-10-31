class CreateMtgSets < ActiveRecord::Migration[5.1]
  def change
    create_table :mtg_sets do |t|
      t.string :code	
      t.string :name
      t.date :year
    end
  end
end
