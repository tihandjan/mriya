class CreatePartnerships < ActiveRecord::Migration[5.0]
  def change
    create_table :partnerships do |t|
      t.references :team, foreign_key: true
      t.references :coach, foreign_key: true

      t.timestamps
    end
  end
end
