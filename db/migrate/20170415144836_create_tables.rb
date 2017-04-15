class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :tables do |t|
      t.integer :points
      t.string :team_name
      t.references :league, foreign_key: true

      t.timestamps
    end
  end
end
