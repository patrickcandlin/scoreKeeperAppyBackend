class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.float :player_ability_rating
      t.string :sex

      t.timestamps
    end
  end
end
