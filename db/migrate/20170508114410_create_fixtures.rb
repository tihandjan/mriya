class CreateFixtures < ActiveRecord::Migration[5.0]
  def change
    create_table :fixtures do |t|
      t.string :home_team
      t.string :away_team
      t.string :category
      t.string :score, default: '---'
      t.datetime :date

      t.timestamps
    end
  end
end
