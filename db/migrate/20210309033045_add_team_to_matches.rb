class AddTeamToMatches < ActiveRecord::Migration[6.1]
  def change
    change_table(:matches) do |t|
        t.references :home_team, foreign_key: { to_table: 'teams' }
        t.references :away_team, foreign_key: { to_table: 'teams' }
    end
  end
end
