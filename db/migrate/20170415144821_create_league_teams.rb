class CreateLeagueTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :league_teams do |t|
      t.string :team_name
      t.references :league, foreign_key: true

      t.timestamps
    end
  end
end
