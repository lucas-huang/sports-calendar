class AddMatchToTeams < ActiveRecord::Migration[6.1]
  def change
  	change_table(:teams) do |t|
        t.references :home_matches, foreign_key: { to_table: 'matches' }
        t.references :away_matches, foreign_key: { to_table: 'matches' }
    end
  end
end
