class AddFavoriteToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :favorite, :boolean
  end
end
