class CreateRetroGames < ActiveRecord::Migration[5.0]
  def change
    create_table :retro_games do |t|
      t.string :description

      t.timestamps
    end
  end
end
