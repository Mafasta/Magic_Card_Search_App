class CreateGeneralUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :general_users do |t|
      t.string :type
    end
  end
end
