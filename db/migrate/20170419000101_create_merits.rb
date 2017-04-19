class CreateMerits < ActiveRecord::Migration[5.0]
  def change
    create_table :merits do |t|
      t.string :merit
      t.references :coach, foreign_key: true

      t.timestamps
    end
  end
end
