class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.datetime :time
      t.string :location
      t.integer :home_team_score
      t.integer :away_team_score
      t.text :description

      t.timestamps
    end
  end
end
